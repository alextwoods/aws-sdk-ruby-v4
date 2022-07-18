# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::SageMaker
  module Params

    module ActionSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionSource, context: context)
        type = Types::ActionSource.new
        type.source_uri = params[:source_uri]
        type.source_type = params[:source_type]
        type.source_id = params[:source_id]
        type
      end
    end

    module ActionSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ActionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ActionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionSummary, context: context)
        type = Types::ActionSummary.new
        type.action_arn = params[:action_arn]
        type.action_name = params[:action_name]
        type.source = ActionSource.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.action_type = params[:action_type]
        type.status = params[:status]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module AddAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddAssociationInput, context: context)
        type = Types::AddAssociationInput.new
        type.source_arn = params[:source_arn]
        type.destination_arn = params[:destination_arn]
        type.association_type = params[:association_type]
        type
      end
    end

    module AddAssociationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddAssociationOutput, context: context)
        type = Types::AddAssociationOutput.new
        type.source_arn = params[:source_arn]
        type.destination_arn = params[:destination_arn]
        type
      end
    end

    module AddTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsInput, context: context)
        type = Types::AddTagsInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module AddTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsOutput, context: context)
        type = Types::AddTagsOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module AdditionalCodeRepositoryNamesOrUrls
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AdditionalInferenceSpecificationDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdditionalInferenceSpecificationDefinition, context: context)
        type = Types::AdditionalInferenceSpecificationDefinition.new
        type.name = params[:name]
        type.description = params[:description]
        type.containers = ModelPackageContainerDefinitionList.build(params[:containers], context: "#{context}[:containers]") unless params[:containers].nil?
        type.supported_transform_instance_types = TransformInstanceTypes.build(params[:supported_transform_instance_types], context: "#{context}[:supported_transform_instance_types]") unless params[:supported_transform_instance_types].nil?
        type.supported_realtime_inference_instance_types = RealtimeInferenceInstanceTypes.build(params[:supported_realtime_inference_instance_types], context: "#{context}[:supported_realtime_inference_instance_types]") unless params[:supported_realtime_inference_instance_types].nil?
        type.supported_content_types = ContentTypes.build(params[:supported_content_types], context: "#{context}[:supported_content_types]") unless params[:supported_content_types].nil?
        type.supported_response_mime_types = ResponseMIMETypes.build(params[:supported_response_mime_types], context: "#{context}[:supported_response_mime_types]") unless params[:supported_response_mime_types].nil?
        type
      end
    end

    module AdditionalInferenceSpecifications
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AdditionalInferenceSpecificationDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AgentVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AgentVersion, context: context)
        type = Types::AgentVersion.new
        type.version = params[:version]
        type.agent_count = params[:agent_count]
        type
      end
    end

    module AgentVersions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AgentVersion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Alarm
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Alarm, context: context)
        type = Types::Alarm.new
        type.alarm_name = params[:alarm_name]
        type
      end
    end

    module AlarmList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Alarm.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AlgorithmSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlgorithmSpecification, context: context)
        type = Types::AlgorithmSpecification.new
        type.training_image = params[:training_image]
        type.algorithm_name = params[:algorithm_name]
        type.training_input_mode = params[:training_input_mode]
        type.metric_definitions = MetricDefinitionList.build(params[:metric_definitions], context: "#{context}[:metric_definitions]") unless params[:metric_definitions].nil?
        type.enable_sage_maker_metrics_time_series = params[:enable_sage_maker_metrics_time_series]
        type
      end
    end

    module AlgorithmStatusDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlgorithmStatusDetails, context: context)
        type = Types::AlgorithmStatusDetails.new
        type.validation_statuses = AlgorithmStatusItemList.build(params[:validation_statuses], context: "#{context}[:validation_statuses]") unless params[:validation_statuses].nil?
        type.image_scan_statuses = AlgorithmStatusItemList.build(params[:image_scan_statuses], context: "#{context}[:image_scan_statuses]") unless params[:image_scan_statuses].nil?
        type
      end
    end

    module AlgorithmStatusItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlgorithmStatusItem, context: context)
        type = Types::AlgorithmStatusItem.new
        type.name = params[:name]
        type.status = params[:status]
        type.failure_reason = params[:failure_reason]
        type
      end
    end

    module AlgorithmStatusItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AlgorithmStatusItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AlgorithmSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlgorithmSummary, context: context)
        type = Types::AlgorithmSummary.new
        type.algorithm_name = params[:algorithm_name]
        type.algorithm_arn = params[:algorithm_arn]
        type.algorithm_description = params[:algorithm_description]
        type.creation_time = params[:creation_time]
        type.algorithm_status = params[:algorithm_status]
        type
      end
    end

    module AlgorithmSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AlgorithmSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AlgorithmValidationProfile
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlgorithmValidationProfile, context: context)
        type = Types::AlgorithmValidationProfile.new
        type.profile_name = params[:profile_name]
        type.training_job_definition = TrainingJobDefinition.build(params[:training_job_definition], context: "#{context}[:training_job_definition]") unless params[:training_job_definition].nil?
        type.transform_job_definition = TransformJobDefinition.build(params[:transform_job_definition], context: "#{context}[:transform_job_definition]") unless params[:transform_job_definition].nil?
        type
      end
    end

    module AlgorithmValidationProfiles
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AlgorithmValidationProfile.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AlgorithmValidationSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlgorithmValidationSpecification, context: context)
        type = Types::AlgorithmValidationSpecification.new
        type.validation_role = params[:validation_role]
        type.validation_profiles = AlgorithmValidationProfiles.build(params[:validation_profiles], context: "#{context}[:validation_profiles]") unless params[:validation_profiles].nil?
        type
      end
    end

    module AnnotationConsolidationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnnotationConsolidationConfig, context: context)
        type = Types::AnnotationConsolidationConfig.new
        type.annotation_consolidation_lambda_arn = params[:annotation_consolidation_lambda_arn]
        type
      end
    end

    module AppDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppDetails, context: context)
        type = Types::AppDetails.new
        type.domain_id = params[:domain_id]
        type.user_profile_name = params[:user_profile_name]
        type.app_type = params[:app_type]
        type.app_name = params[:app_name]
        type.status = params[:status]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module AppImageConfigDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppImageConfigDetails, context: context)
        type = Types::AppImageConfigDetails.new
        type.app_image_config_arn = params[:app_image_config_arn]
        type.app_image_config_name = params[:app_image_config_name]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.kernel_gateway_image_config = KernelGatewayImageConfig.build(params[:kernel_gateway_image_config], context: "#{context}[:kernel_gateway_image_config]") unless params[:kernel_gateway_image_config].nil?
        type
      end
    end

    module AppImageConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AppImageConfigDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AppList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AppDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AppSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppSpecification, context: context)
        type = Types::AppSpecification.new
        type.image_uri = params[:image_uri]
        type.container_entrypoint = ContainerEntrypoint.build(params[:container_entrypoint], context: "#{context}[:container_entrypoint]") unless params[:container_entrypoint].nil?
        type.container_arguments = ContainerArguments.build(params[:container_arguments], context: "#{context}[:container_arguments]") unless params[:container_arguments].nil?
        type
      end
    end

    module ArtifactSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ArtifactSource, context: context)
        type = Types::ArtifactSource.new
        type.source_uri = params[:source_uri]
        type.source_types = ArtifactSourceTypes.build(params[:source_types], context: "#{context}[:source_types]") unless params[:source_types].nil?
        type
      end
    end

    module ArtifactSourceType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ArtifactSourceType, context: context)
        type = Types::ArtifactSourceType.new
        type.source_id_type = params[:source_id_type]
        type.value = params[:value]
        type
      end
    end

    module ArtifactSourceTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ArtifactSourceType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ArtifactSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ArtifactSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ArtifactSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ArtifactSummary, context: context)
        type = Types::ArtifactSummary.new
        type.artifact_arn = params[:artifact_arn]
        type.artifact_name = params[:artifact_name]
        type.source = ArtifactSource.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.artifact_type = params[:artifact_type]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module AssociateTrialComponentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateTrialComponentInput, context: context)
        type = Types::AssociateTrialComponentInput.new
        type.trial_component_name = params[:trial_component_name]
        type.trial_name = params[:trial_name]
        type
      end
    end

    module AssociateTrialComponentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateTrialComponentOutput, context: context)
        type = Types::AssociateTrialComponentOutput.new
        type.trial_component_arn = params[:trial_component_arn]
        type.trial_arn = params[:trial_arn]
        type
      end
    end

    module AssociationSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssociationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssociationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociationSummary, context: context)
        type = Types::AssociationSummary.new
        type.source_arn = params[:source_arn]
        type.destination_arn = params[:destination_arn]
        type.source_type = params[:source_type]
        type.destination_type = params[:destination_type]
        type.association_type = params[:association_type]
        type.source_name = params[:source_name]
        type.destination_name = params[:destination_name]
        type.creation_time = params[:creation_time]
        type.created_by = UserContext.build(params[:created_by], context: "#{context}[:created_by]") unless params[:created_by].nil?
        type
      end
    end

    module AsyncInferenceClientConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AsyncInferenceClientConfig, context: context)
        type = Types::AsyncInferenceClientConfig.new
        type.max_concurrent_invocations_per_instance = params[:max_concurrent_invocations_per_instance]
        type
      end
    end

    module AsyncInferenceConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AsyncInferenceConfig, context: context)
        type = Types::AsyncInferenceConfig.new
        type.client_config = AsyncInferenceClientConfig.build(params[:client_config], context: "#{context}[:client_config]") unless params[:client_config].nil?
        type.output_config = AsyncInferenceOutputConfig.build(params[:output_config], context: "#{context}[:output_config]") unless params[:output_config].nil?
        type
      end
    end

    module AsyncInferenceNotificationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AsyncInferenceNotificationConfig, context: context)
        type = Types::AsyncInferenceNotificationConfig.new
        type.success_topic = params[:success_topic]
        type.error_topic = params[:error_topic]
        type
      end
    end

    module AsyncInferenceOutputConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AsyncInferenceOutputConfig, context: context)
        type = Types::AsyncInferenceOutputConfig.new
        type.kms_key_id = params[:kms_key_id]
        type.s3_output_path = params[:s3_output_path]
        type.notification_config = AsyncInferenceNotificationConfig.build(params[:notification_config], context: "#{context}[:notification_config]") unless params[:notification_config].nil?
        type
      end
    end

    module AthenaDatasetDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AthenaDatasetDefinition, context: context)
        type = Types::AthenaDatasetDefinition.new
        type.catalog = params[:catalog]
        type.database = params[:database]
        type.query_string = params[:query_string]
        type.work_group = params[:work_group]
        type.output_s3_uri = params[:output_s3_uri]
        type.kms_key_id = params[:kms_key_id]
        type.output_format = params[:output_format]
        type.output_compression = params[:output_compression]
        type
      end
    end

    module AttributeNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AutoMLCandidate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoMLCandidate, context: context)
        type = Types::AutoMLCandidate.new
        type.candidate_name = params[:candidate_name]
        type.final_auto_ml_job_objective_metric = FinalAutoMLJobObjectiveMetric.build(params[:final_auto_ml_job_objective_metric], context: "#{context}[:final_auto_ml_job_objective_metric]") unless params[:final_auto_ml_job_objective_metric].nil?
        type.objective_status = params[:objective_status]
        type.candidate_steps = CandidateSteps.build(params[:candidate_steps], context: "#{context}[:candidate_steps]") unless params[:candidate_steps].nil?
        type.candidate_status = params[:candidate_status]
        type.inference_containers = AutoMLContainerDefinitions.build(params[:inference_containers], context: "#{context}[:inference_containers]") unless params[:inference_containers].nil?
        type.creation_time = params[:creation_time]
        type.end_time = params[:end_time]
        type.last_modified_time = params[:last_modified_time]
        type.failure_reason = params[:failure_reason]
        type.candidate_properties = CandidateProperties.build(params[:candidate_properties], context: "#{context}[:candidate_properties]") unless params[:candidate_properties].nil?
        type
      end
    end

    module AutoMLCandidateGenerationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoMLCandidateGenerationConfig, context: context)
        type = Types::AutoMLCandidateGenerationConfig.new
        type.feature_specification_s3_uri = params[:feature_specification_s3_uri]
        type
      end
    end

    module AutoMLCandidateStep
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoMLCandidateStep, context: context)
        type = Types::AutoMLCandidateStep.new
        type.candidate_step_type = params[:candidate_step_type]
        type.candidate_step_arn = params[:candidate_step_arn]
        type.candidate_step_name = params[:candidate_step_name]
        type
      end
    end

    module AutoMLCandidates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AutoMLCandidate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AutoMLChannel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoMLChannel, context: context)
        type = Types::AutoMLChannel.new
        type.data_source = AutoMLDataSource.build(params[:data_source], context: "#{context}[:data_source]") unless params[:data_source].nil?
        type.compression_type = params[:compression_type]
        type.target_attribute_name = params[:target_attribute_name]
        type.content_type = params[:content_type]
        type.channel_type = params[:channel_type]
        type
      end
    end

    module AutoMLContainerDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoMLContainerDefinition, context: context)
        type = Types::AutoMLContainerDefinition.new
        type.image = params[:image]
        type.model_data_url = params[:model_data_url]
        type.environment = EnvironmentMap.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type
      end
    end

    module AutoMLContainerDefinitions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AutoMLContainerDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AutoMLDataSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoMLDataSource, context: context)
        type = Types::AutoMLDataSource.new
        type.s3_data_source = AutoMLS3DataSource.build(params[:s3_data_source], context: "#{context}[:s3_data_source]") unless params[:s3_data_source].nil?
        type
      end
    end

    module AutoMLDataSplitConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoMLDataSplitConfig, context: context)
        type = Types::AutoMLDataSplitConfig.new
        type.validation_fraction = params[:validation_fraction]
        type
      end
    end

    module AutoMLInputDataConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AutoMLChannel.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AutoMLJobArtifacts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoMLJobArtifacts, context: context)
        type = Types::AutoMLJobArtifacts.new
        type.candidate_definition_notebook_location = params[:candidate_definition_notebook_location]
        type.data_exploration_notebook_location = params[:data_exploration_notebook_location]
        type
      end
    end

    module AutoMLJobCompletionCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoMLJobCompletionCriteria, context: context)
        type = Types::AutoMLJobCompletionCriteria.new
        type.max_candidates = params[:max_candidates]
        type.max_runtime_per_training_job_in_seconds = params[:max_runtime_per_training_job_in_seconds]
        type.max_auto_ml_job_runtime_in_seconds = params[:max_auto_ml_job_runtime_in_seconds]
        type
      end
    end

    module AutoMLJobConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoMLJobConfig, context: context)
        type = Types::AutoMLJobConfig.new
        type.completion_criteria = AutoMLJobCompletionCriteria.build(params[:completion_criteria], context: "#{context}[:completion_criteria]") unless params[:completion_criteria].nil?
        type.security_config = AutoMLSecurityConfig.build(params[:security_config], context: "#{context}[:security_config]") unless params[:security_config].nil?
        type.data_split_config = AutoMLDataSplitConfig.build(params[:data_split_config], context: "#{context}[:data_split_config]") unless params[:data_split_config].nil?
        type.candidate_generation_config = AutoMLCandidateGenerationConfig.build(params[:candidate_generation_config], context: "#{context}[:candidate_generation_config]") unless params[:candidate_generation_config].nil?
        type
      end
    end

    module AutoMLJobObjective
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoMLJobObjective, context: context)
        type = Types::AutoMLJobObjective.new
        type.metric_name = params[:metric_name]
        type
      end
    end

    module AutoMLJobSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AutoMLJobSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AutoMLJobSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoMLJobSummary, context: context)
        type = Types::AutoMLJobSummary.new
        type.auto_ml_job_name = params[:auto_ml_job_name]
        type.auto_ml_job_arn = params[:auto_ml_job_arn]
        type.auto_ml_job_status = params[:auto_ml_job_status]
        type.auto_ml_job_secondary_status = params[:auto_ml_job_secondary_status]
        type.creation_time = params[:creation_time]
        type.end_time = params[:end_time]
        type.last_modified_time = params[:last_modified_time]
        type.failure_reason = params[:failure_reason]
        type.partial_failure_reasons = AutoMLPartialFailureReasons.build(params[:partial_failure_reasons], context: "#{context}[:partial_failure_reasons]") unless params[:partial_failure_reasons].nil?
        type
      end
    end

    module AutoMLOutputDataConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoMLOutputDataConfig, context: context)
        type = Types::AutoMLOutputDataConfig.new
        type.kms_key_id = params[:kms_key_id]
        type.s3_output_path = params[:s3_output_path]
        type
      end
    end

    module AutoMLPartialFailureReason
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoMLPartialFailureReason, context: context)
        type = Types::AutoMLPartialFailureReason.new
        type.partial_failure_message = params[:partial_failure_message]
        type
      end
    end

    module AutoMLPartialFailureReasons
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AutoMLPartialFailureReason.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AutoMLS3DataSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoMLS3DataSource, context: context)
        type = Types::AutoMLS3DataSource.new
        type.s3_data_type = params[:s3_data_type]
        type.s3_uri = params[:s3_uri]
        type
      end
    end

    module AutoMLSecurityConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoMLSecurityConfig, context: context)
        type = Types::AutoMLSecurityConfig.new
        type.volume_kms_key_id = params[:volume_kms_key_id]
        type.enable_inter_container_traffic_encryption = params[:enable_inter_container_traffic_encryption]
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type
      end
    end

    module AutoRollbackConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoRollbackConfig, context: context)
        type = Types::AutoRollbackConfig.new
        type.alarms = AlarmList.build(params[:alarms], context: "#{context}[:alarms]") unless params[:alarms].nil?
        type
      end
    end

    module BatchDescribeModelPackageError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDescribeModelPackageError, context: context)
        type = Types::BatchDescribeModelPackageError.new
        type.error_code = params[:error_code]
        type.error_response = params[:error_response]
        type
      end
    end

    module BatchDescribeModelPackageErrorMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = BatchDescribeModelPackageError.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module BatchDescribeModelPackageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDescribeModelPackageInput, context: context)
        type = Types::BatchDescribeModelPackageInput.new
        type.model_package_arn_list = ModelPackageArnList.build(params[:model_package_arn_list], context: "#{context}[:model_package_arn_list]") unless params[:model_package_arn_list].nil?
        type
      end
    end

    module BatchDescribeModelPackageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDescribeModelPackageOutput, context: context)
        type = Types::BatchDescribeModelPackageOutput.new
        type.model_package_summaries = ModelPackageSummaries.build(params[:model_package_summaries], context: "#{context}[:model_package_summaries]") unless params[:model_package_summaries].nil?
        type.batch_describe_model_package_error_map = BatchDescribeModelPackageErrorMap.build(params[:batch_describe_model_package_error_map], context: "#{context}[:batch_describe_model_package_error_map]") unless params[:batch_describe_model_package_error_map].nil?
        type
      end
    end

    module BatchDescribeModelPackageSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDescribeModelPackageSummary, context: context)
        type = Types::BatchDescribeModelPackageSummary.new
        type.model_package_group_name = params[:model_package_group_name]
        type.model_package_version = params[:model_package_version]
        type.model_package_arn = params[:model_package_arn]
        type.model_package_description = params[:model_package_description]
        type.creation_time = params[:creation_time]
        type.inference_specification = InferenceSpecification.build(params[:inference_specification], context: "#{context}[:inference_specification]") unless params[:inference_specification].nil?
        type.model_package_status = params[:model_package_status]
        type.model_approval_status = params[:model_approval_status]
        type
      end
    end

    module Bias
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Bias, context: context)
        type = Types::Bias.new
        type.report = MetricsSource.build(params[:report], context: "#{context}[:report]") unless params[:report].nil?
        type.pre_training_report = MetricsSource.build(params[:pre_training_report], context: "#{context}[:pre_training_report]") unless params[:pre_training_report].nil?
        type.post_training_report = MetricsSource.build(params[:post_training_report], context: "#{context}[:post_training_report]") unless params[:post_training_report].nil?
        type
      end
    end

    module BlueGreenUpdatePolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BlueGreenUpdatePolicy, context: context)
        type = Types::BlueGreenUpdatePolicy.new
        type.traffic_routing_configuration = TrafficRoutingConfig.build(params[:traffic_routing_configuration], context: "#{context}[:traffic_routing_configuration]") unless params[:traffic_routing_configuration].nil?
        type.termination_wait_in_seconds = params[:termination_wait_in_seconds]
        type.maximum_execution_timeout_in_seconds = params[:maximum_execution_timeout_in_seconds]
        type
      end
    end

    module CacheHitResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CacheHitResult, context: context)
        type = Types::CacheHitResult.new
        type.source_pipeline_execution_arn = params[:source_pipeline_execution_arn]
        type
      end
    end

    module CallbackStepMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CallbackStepMetadata, context: context)
        type = Types::CallbackStepMetadata.new
        type.callback_token = params[:callback_token]
        type.sqs_queue_url = params[:sqs_queue_url]
        type.output_parameters = OutputParameterList.build(params[:output_parameters], context: "#{context}[:output_parameters]") unless params[:output_parameters].nil?
        type
      end
    end

    module CandidateArtifactLocations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CandidateArtifactLocations, context: context)
        type = Types::CandidateArtifactLocations.new
        type.explainability = params[:explainability]
        type.model_insights = params[:model_insights]
        type
      end
    end

    module CandidateProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CandidateProperties, context: context)
        type = Types::CandidateProperties.new
        type.candidate_artifact_locations = CandidateArtifactLocations.build(params[:candidate_artifact_locations], context: "#{context}[:candidate_artifact_locations]") unless params[:candidate_artifact_locations].nil?
        type.candidate_metrics = MetricDataList.build(params[:candidate_metrics], context: "#{context}[:candidate_metrics]") unless params[:candidate_metrics].nil?
        type
      end
    end

    module CandidateSteps
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AutoMLCandidateStep.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CapacitySize
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CapacitySize, context: context)
        type = Types::CapacitySize.new
        type.type = params[:type]
        type.value = params[:value]
        type
      end
    end

    module CaptureContentTypeHeader
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CaptureContentTypeHeader, context: context)
        type = Types::CaptureContentTypeHeader.new
        type.csv_content_types = CsvContentTypes.build(params[:csv_content_types], context: "#{context}[:csv_content_types]") unless params[:csv_content_types].nil?
        type.json_content_types = JsonContentTypes.build(params[:json_content_types], context: "#{context}[:json_content_types]") unless params[:json_content_types].nil?
        type
      end
    end

    module CaptureOption
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CaptureOption, context: context)
        type = Types::CaptureOption.new
        type.capture_mode = params[:capture_mode]
        type
      end
    end

    module CaptureOptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CaptureOption.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CategoricalParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CategoricalParameter, context: context)
        type = Types::CategoricalParameter.new
        type.name = params[:name]
        type.value = CategoricalParameterRangeValues.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type
      end
    end

    module CategoricalParameterRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CategoricalParameterRange, context: context)
        type = Types::CategoricalParameterRange.new
        type.name = params[:name]
        type.values = ParameterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module CategoricalParameterRangeSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CategoricalParameterRangeSpecification, context: context)
        type = Types::CategoricalParameterRangeSpecification.new
        type.values = ParameterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module CategoricalParameterRangeValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CategoricalParameterRanges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CategoricalParameterRange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CategoricalParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CategoricalParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Channel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Channel, context: context)
        type = Types::Channel.new
        type.channel_name = params[:channel_name]
        type.data_source = DataSource.build(params[:data_source], context: "#{context}[:data_source]") unless params[:data_source].nil?
        type.content_type = params[:content_type]
        type.compression_type = params[:compression_type]
        type.record_wrapper_type = params[:record_wrapper_type]
        type.input_mode = params[:input_mode]
        type.shuffle_config = ShuffleConfig.build(params[:shuffle_config], context: "#{context}[:shuffle_config]") unless params[:shuffle_config].nil?
        type
      end
    end

    module ChannelSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChannelSpecification, context: context)
        type = Types::ChannelSpecification.new
        type.name = params[:name]
        type.description = params[:description]
        type.is_required = params[:is_required]
        type.supported_content_types = ContentTypes.build(params[:supported_content_types], context: "#{context}[:supported_content_types]") unless params[:supported_content_types].nil?
        type.supported_compression_types = CompressionTypes.build(params[:supported_compression_types], context: "#{context}[:supported_compression_types]") unless params[:supported_compression_types].nil?
        type.supported_input_modes = InputModes.build(params[:supported_input_modes], context: "#{context}[:supported_input_modes]") unless params[:supported_input_modes].nil?
        type
      end
    end

    module ChannelSpecifications
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChannelSpecification.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CheckpointConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CheckpointConfig, context: context)
        type = Types::CheckpointConfig.new
        type.s3_uri = params[:s3_uri]
        type.local_path = params[:local_path]
        type
      end
    end

    module Cidrs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ClarifyCheckStepMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClarifyCheckStepMetadata, context: context)
        type = Types::ClarifyCheckStepMetadata.new
        type.check_type = params[:check_type]
        type.baseline_used_for_drift_check_constraints = params[:baseline_used_for_drift_check_constraints]
        type.calculated_baseline_constraints = params[:calculated_baseline_constraints]
        type.model_package_group_name = params[:model_package_group_name]
        type.violation_report = params[:violation_report]
        type.check_job_arn = params[:check_job_arn]
        type.skip_check = params[:skip_check]
        type.register_new_baseline = params[:register_new_baseline]
        type
      end
    end

    module CodeRepositorySummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeRepositorySummary, context: context)
        type = Types::CodeRepositorySummary.new
        type.code_repository_name = params[:code_repository_name]
        type.code_repository_arn = params[:code_repository_arn]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.git_config = GitConfig.build(params[:git_config], context: "#{context}[:git_config]") unless params[:git_config].nil?
        type
      end
    end

    module CodeRepositorySummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CodeRepositorySummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CognitoConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CognitoConfig, context: context)
        type = Types::CognitoConfig.new
        type.user_pool = params[:user_pool]
        type.client_id = params[:client_id]
        type
      end
    end

    module CognitoMemberDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CognitoMemberDefinition, context: context)
        type = Types::CognitoMemberDefinition.new
        type.user_pool = params[:user_pool]
        type.user_group = params[:user_group]
        type.client_id = params[:client_id]
        type
      end
    end

    module CollectionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CollectionConfiguration, context: context)
        type = Types::CollectionConfiguration.new
        type.collection_name = params[:collection_name]
        type.collection_parameters = CollectionParameters.build(params[:collection_parameters], context: "#{context}[:collection_parameters]") unless params[:collection_parameters].nil?
        type
      end
    end

    module CollectionConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CollectionConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CollectionParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module CompilationJobSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CompilationJobSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CompilationJobSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CompilationJobSummary, context: context)
        type = Types::CompilationJobSummary.new
        type.compilation_job_name = params[:compilation_job_name]
        type.compilation_job_arn = params[:compilation_job_arn]
        type.creation_time = params[:creation_time]
        type.compilation_start_time = params[:compilation_start_time]
        type.compilation_end_time = params[:compilation_end_time]
        type.compilation_target_device = params[:compilation_target_device]
        type.compilation_target_platform_os = params[:compilation_target_platform_os]
        type.compilation_target_platform_arch = params[:compilation_target_platform_arch]
        type.compilation_target_platform_accelerator = params[:compilation_target_platform_accelerator]
        type.last_modified_time = params[:last_modified_time]
        type.compilation_job_status = params[:compilation_job_status]
        type
      end
    end

    module CompressionTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConditionStepMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConditionStepMetadata, context: context)
        type = Types::ConditionStepMetadata.new
        type.outcome = params[:outcome]
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module ContainerArguments
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ContainerDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContainerDefinition, context: context)
        type = Types::ContainerDefinition.new
        type.container_hostname = params[:container_hostname]
        type.image = params[:image]
        type.image_config = ImageConfig.build(params[:image_config], context: "#{context}[:image_config]") unless params[:image_config].nil?
        type.mode = params[:mode]
        type.model_data_url = params[:model_data_url]
        type.environment = EnvironmentMap.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.model_package_name = params[:model_package_name]
        type.inference_specification_name = params[:inference_specification_name]
        type.multi_model_config = MultiModelConfig.build(params[:multi_model_config], context: "#{context}[:multi_model_config]") unless params[:multi_model_config].nil?
        type
      end
    end

    module ContainerDefinitionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ContainerDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ContainerEntrypoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ContentClassifiers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ContentTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ContextSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContextSource, context: context)
        type = Types::ContextSource.new
        type.source_uri = params[:source_uri]
        type.source_type = params[:source_type]
        type.source_id = params[:source_id]
        type
      end
    end

    module ContextSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ContextSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ContextSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContextSummary, context: context)
        type = Types::ContextSummary.new
        type.context_arn = params[:context_arn]
        type.context_name = params[:context_name]
        type.source = ContextSource.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.context_type = params[:context_type]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module ContinuousParameterRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContinuousParameterRange, context: context)
        type = Types::ContinuousParameterRange.new
        type.name = params[:name]
        type.min_value = params[:min_value]
        type.max_value = params[:max_value]
        type.scaling_type = params[:scaling_type]
        type
      end
    end

    module ContinuousParameterRangeSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContinuousParameterRangeSpecification, context: context)
        type = Types::ContinuousParameterRangeSpecification.new
        type.min_value = params[:min_value]
        type.max_value = params[:max_value]
        type
      end
    end

    module ContinuousParameterRanges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ContinuousParameterRange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateActionInput, context: context)
        type = Types::CreateActionInput.new
        type.action_name = params[:action_name]
        type.source = ActionSource.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.action_type = params[:action_type]
        type.description = params[:description]
        type.status = params[:status]
        type.properties = LineageEntityParameters.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type.metadata_properties = MetadataProperties.build(params[:metadata_properties], context: "#{context}[:metadata_properties]") unless params[:metadata_properties].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateActionOutput, context: context)
        type = Types::CreateActionOutput.new
        type.action_arn = params[:action_arn]
        type
      end
    end

    module CreateAlgorithmInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAlgorithmInput, context: context)
        type = Types::CreateAlgorithmInput.new
        type.algorithm_name = params[:algorithm_name]
        type.algorithm_description = params[:algorithm_description]
        type.training_specification = TrainingSpecification.build(params[:training_specification], context: "#{context}[:training_specification]") unless params[:training_specification].nil?
        type.inference_specification = InferenceSpecification.build(params[:inference_specification], context: "#{context}[:inference_specification]") unless params[:inference_specification].nil?
        type.validation_specification = AlgorithmValidationSpecification.build(params[:validation_specification], context: "#{context}[:validation_specification]") unless params[:validation_specification].nil?
        type.certify_for_marketplace = params[:certify_for_marketplace]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateAlgorithmOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAlgorithmOutput, context: context)
        type = Types::CreateAlgorithmOutput.new
        type.algorithm_arn = params[:algorithm_arn]
        type
      end
    end

    module CreateAppImageConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAppImageConfigInput, context: context)
        type = Types::CreateAppImageConfigInput.new
        type.app_image_config_name = params[:app_image_config_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.kernel_gateway_image_config = KernelGatewayImageConfig.build(params[:kernel_gateway_image_config], context: "#{context}[:kernel_gateway_image_config]") unless params[:kernel_gateway_image_config].nil?
        type
      end
    end

    module CreateAppImageConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAppImageConfigOutput, context: context)
        type = Types::CreateAppImageConfigOutput.new
        type.app_image_config_arn = params[:app_image_config_arn]
        type
      end
    end

    module CreateAppInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAppInput, context: context)
        type = Types::CreateAppInput.new
        type.domain_id = params[:domain_id]
        type.user_profile_name = params[:user_profile_name]
        type.app_type = params[:app_type]
        type.app_name = params[:app_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.resource_spec = ResourceSpec.build(params[:resource_spec], context: "#{context}[:resource_spec]") unless params[:resource_spec].nil?
        type
      end
    end

    module CreateAppOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAppOutput, context: context)
        type = Types::CreateAppOutput.new
        type.app_arn = params[:app_arn]
        type
      end
    end

    module CreateArtifactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateArtifactInput, context: context)
        type = Types::CreateArtifactInput.new
        type.artifact_name = params[:artifact_name]
        type.source = ArtifactSource.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.artifact_type = params[:artifact_type]
        type.properties = LineageEntityParameters.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type.metadata_properties = MetadataProperties.build(params[:metadata_properties], context: "#{context}[:metadata_properties]") unless params[:metadata_properties].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateArtifactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateArtifactOutput, context: context)
        type = Types::CreateArtifactOutput.new
        type.artifact_arn = params[:artifact_arn]
        type
      end
    end

    module CreateAutoMLJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAutoMLJobInput, context: context)
        type = Types::CreateAutoMLJobInput.new
        type.auto_ml_job_name = params[:auto_ml_job_name]
        type.input_data_config = AutoMLInputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = AutoMLOutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.problem_type = params[:problem_type]
        type.auto_ml_job_objective = AutoMLJobObjective.build(params[:auto_ml_job_objective], context: "#{context}[:auto_ml_job_objective]") unless params[:auto_ml_job_objective].nil?
        type.auto_ml_job_config = AutoMLJobConfig.build(params[:auto_ml_job_config], context: "#{context}[:auto_ml_job_config]") unless params[:auto_ml_job_config].nil?
        type.role_arn = params[:role_arn]
        type.generate_candidate_definitions_only = params[:generate_candidate_definitions_only]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.model_deploy_config = ModelDeployConfig.build(params[:model_deploy_config], context: "#{context}[:model_deploy_config]") unless params[:model_deploy_config].nil?
        type
      end
    end

    module CreateAutoMLJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAutoMLJobOutput, context: context)
        type = Types::CreateAutoMLJobOutput.new
        type.auto_ml_job_arn = params[:auto_ml_job_arn]
        type
      end
    end

    module CreateCodeRepositoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCodeRepositoryInput, context: context)
        type = Types::CreateCodeRepositoryInput.new
        type.code_repository_name = params[:code_repository_name]
        type.git_config = GitConfig.build(params[:git_config], context: "#{context}[:git_config]") unless params[:git_config].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateCodeRepositoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCodeRepositoryOutput, context: context)
        type = Types::CreateCodeRepositoryOutput.new
        type.code_repository_arn = params[:code_repository_arn]
        type
      end
    end

    module CreateCompilationJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCompilationJobInput, context: context)
        type = Types::CreateCompilationJobInput.new
        type.compilation_job_name = params[:compilation_job_name]
        type.role_arn = params[:role_arn]
        type.model_package_version_arn = params[:model_package_version_arn]
        type.input_config = InputConfig.build(params[:input_config], context: "#{context}[:input_config]") unless params[:input_config].nil?
        type.output_config = OutputConfig.build(params[:output_config], context: "#{context}[:output_config]") unless params[:output_config].nil?
        type.vpc_config = NeoVpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.stopping_condition = StoppingCondition.build(params[:stopping_condition], context: "#{context}[:stopping_condition]") unless params[:stopping_condition].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateCompilationJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCompilationJobOutput, context: context)
        type = Types::CreateCompilationJobOutput.new
        type.compilation_job_arn = params[:compilation_job_arn]
        type
      end
    end

    module CreateContextInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateContextInput, context: context)
        type = Types::CreateContextInput.new
        type.context_name = params[:context_name]
        type.source = ContextSource.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.context_type = params[:context_type]
        type.description = params[:description]
        type.properties = LineageEntityParameters.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateContextOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateContextOutput, context: context)
        type = Types::CreateContextOutput.new
        type.context_arn = params[:context_arn]
        type
      end
    end

    module CreateDataQualityJobDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataQualityJobDefinitionInput, context: context)
        type = Types::CreateDataQualityJobDefinitionInput.new
        type.job_definition_name = params[:job_definition_name]
        type.data_quality_baseline_config = DataQualityBaselineConfig.build(params[:data_quality_baseline_config], context: "#{context}[:data_quality_baseline_config]") unless params[:data_quality_baseline_config].nil?
        type.data_quality_app_specification = DataQualityAppSpecification.build(params[:data_quality_app_specification], context: "#{context}[:data_quality_app_specification]") unless params[:data_quality_app_specification].nil?
        type.data_quality_job_input = DataQualityJobInput.build(params[:data_quality_job_input], context: "#{context}[:data_quality_job_input]") unless params[:data_quality_job_input].nil?
        type.data_quality_job_output_config = MonitoringOutputConfig.build(params[:data_quality_job_output_config], context: "#{context}[:data_quality_job_output_config]") unless params[:data_quality_job_output_config].nil?
        type.job_resources = MonitoringResources.build(params[:job_resources], context: "#{context}[:job_resources]") unless params[:job_resources].nil?
        type.network_config = MonitoringNetworkConfig.build(params[:network_config], context: "#{context}[:network_config]") unless params[:network_config].nil?
        type.role_arn = params[:role_arn]
        type.stopping_condition = MonitoringStoppingCondition.build(params[:stopping_condition], context: "#{context}[:stopping_condition]") unless params[:stopping_condition].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDataQualityJobDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataQualityJobDefinitionOutput, context: context)
        type = Types::CreateDataQualityJobDefinitionOutput.new
        type.job_definition_arn = params[:job_definition_arn]
        type
      end
    end

    module CreateDeviceFleetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeviceFleetInput, context: context)
        type = Types::CreateDeviceFleetInput.new
        type.device_fleet_name = params[:device_fleet_name]
        type.role_arn = params[:role_arn]
        type.description = params[:description]
        type.output_config = EdgeOutputConfig.build(params[:output_config], context: "#{context}[:output_config]") unless params[:output_config].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.enable_iot_role_alias = params[:enable_iot_role_alias]
        type
      end
    end

    module CreateDeviceFleetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeviceFleetOutput, context: context)
        type = Types::CreateDeviceFleetOutput.new
        type
      end
    end

    module CreateDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDomainInput, context: context)
        type = Types::CreateDomainInput.new
        type.domain_name = params[:domain_name]
        type.auth_mode = params[:auth_mode]
        type.default_user_settings = UserSettings.build(params[:default_user_settings], context: "#{context}[:default_user_settings]") unless params[:default_user_settings].nil?
        type.subnet_ids = Subnets.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.vpc_id = params[:vpc_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.app_network_access_type = params[:app_network_access_type]
        type.home_efs_file_system_kms_key_id = params[:home_efs_file_system_kms_key_id]
        type.kms_key_id = params[:kms_key_id]
        type.app_security_group_management = params[:app_security_group_management]
        type.domain_settings = DomainSettings.build(params[:domain_settings], context: "#{context}[:domain_settings]") unless params[:domain_settings].nil?
        type
      end
    end

    module CreateDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDomainOutput, context: context)
        type = Types::CreateDomainOutput.new
        type.domain_arn = params[:domain_arn]
        type.url = params[:url]
        type
      end
    end

    module CreateEdgePackagingJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEdgePackagingJobInput, context: context)
        type = Types::CreateEdgePackagingJobInput.new
        type.edge_packaging_job_name = params[:edge_packaging_job_name]
        type.compilation_job_name = params[:compilation_job_name]
        type.model_name = params[:model_name]
        type.model_version = params[:model_version]
        type.role_arn = params[:role_arn]
        type.output_config = EdgeOutputConfig.build(params[:output_config], context: "#{context}[:output_config]") unless params[:output_config].nil?
        type.resource_key = params[:resource_key]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateEdgePackagingJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEdgePackagingJobOutput, context: context)
        type = Types::CreateEdgePackagingJobOutput.new
        type
      end
    end

    module CreateEndpointConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEndpointConfigInput, context: context)
        type = Types::CreateEndpointConfigInput.new
        type.endpoint_config_name = params[:endpoint_config_name]
        type.production_variants = ProductionVariantList.build(params[:production_variants], context: "#{context}[:production_variants]") unless params[:production_variants].nil?
        type.data_capture_config = DataCaptureConfig.build(params[:data_capture_config], context: "#{context}[:data_capture_config]") unless params[:data_capture_config].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.kms_key_id = params[:kms_key_id]
        type.async_inference_config = AsyncInferenceConfig.build(params[:async_inference_config], context: "#{context}[:async_inference_config]") unless params[:async_inference_config].nil?
        type
      end
    end

    module CreateEndpointConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEndpointConfigOutput, context: context)
        type = Types::CreateEndpointConfigOutput.new
        type.endpoint_config_arn = params[:endpoint_config_arn]
        type
      end
    end

    module CreateEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEndpointInput, context: context)
        type = Types::CreateEndpointInput.new
        type.endpoint_name = params[:endpoint_name]
        type.endpoint_config_name = params[:endpoint_config_name]
        type.deployment_config = DeploymentConfig.build(params[:deployment_config], context: "#{context}[:deployment_config]") unless params[:deployment_config].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEndpointOutput, context: context)
        type = Types::CreateEndpointOutput.new
        type.endpoint_arn = params[:endpoint_arn]
        type
      end
    end

    module CreateExperimentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateExperimentInput, context: context)
        type = Types::CreateExperimentInput.new
        type.experiment_name = params[:experiment_name]
        type.display_name = params[:display_name]
        type.description = params[:description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateExperimentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateExperimentOutput, context: context)
        type = Types::CreateExperimentOutput.new
        type.experiment_arn = params[:experiment_arn]
        type
      end
    end

    module CreateFeatureGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFeatureGroupInput, context: context)
        type = Types::CreateFeatureGroupInput.new
        type.feature_group_name = params[:feature_group_name]
        type.record_identifier_feature_name = params[:record_identifier_feature_name]
        type.event_time_feature_name = params[:event_time_feature_name]
        type.feature_definitions = FeatureDefinitions.build(params[:feature_definitions], context: "#{context}[:feature_definitions]") unless params[:feature_definitions].nil?
        type.online_store_config = OnlineStoreConfig.build(params[:online_store_config], context: "#{context}[:online_store_config]") unless params[:online_store_config].nil?
        type.offline_store_config = OfflineStoreConfig.build(params[:offline_store_config], context: "#{context}[:offline_store_config]") unless params[:offline_store_config].nil?
        type.role_arn = params[:role_arn]
        type.description = params[:description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateFeatureGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFeatureGroupOutput, context: context)
        type = Types::CreateFeatureGroupOutput.new
        type.feature_group_arn = params[:feature_group_arn]
        type
      end
    end

    module CreateFlowDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFlowDefinitionInput, context: context)
        type = Types::CreateFlowDefinitionInput.new
        type.flow_definition_name = params[:flow_definition_name]
        type.human_loop_request_source = HumanLoopRequestSource.build(params[:human_loop_request_source], context: "#{context}[:human_loop_request_source]") unless params[:human_loop_request_source].nil?
        type.human_loop_activation_config = HumanLoopActivationConfig.build(params[:human_loop_activation_config], context: "#{context}[:human_loop_activation_config]") unless params[:human_loop_activation_config].nil?
        type.human_loop_config = HumanLoopConfig.build(params[:human_loop_config], context: "#{context}[:human_loop_config]") unless params[:human_loop_config].nil?
        type.output_config = FlowDefinitionOutputConfig.build(params[:output_config], context: "#{context}[:output_config]") unless params[:output_config].nil?
        type.role_arn = params[:role_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateFlowDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFlowDefinitionOutput, context: context)
        type = Types::CreateFlowDefinitionOutput.new
        type.flow_definition_arn = params[:flow_definition_arn]
        type
      end
    end

    module CreateHumanTaskUiInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHumanTaskUiInput, context: context)
        type = Types::CreateHumanTaskUiInput.new
        type.human_task_ui_name = params[:human_task_ui_name]
        type.ui_template = UiTemplate.build(params[:ui_template], context: "#{context}[:ui_template]") unless params[:ui_template].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateHumanTaskUiOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHumanTaskUiOutput, context: context)
        type = Types::CreateHumanTaskUiOutput.new
        type.human_task_ui_arn = params[:human_task_ui_arn]
        type
      end
    end

    module CreateHyperParameterTuningJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHyperParameterTuningJobInput, context: context)
        type = Types::CreateHyperParameterTuningJobInput.new
        type.hyper_parameter_tuning_job_name = params[:hyper_parameter_tuning_job_name]
        type.hyper_parameter_tuning_job_config = HyperParameterTuningJobConfig.build(params[:hyper_parameter_tuning_job_config], context: "#{context}[:hyper_parameter_tuning_job_config]") unless params[:hyper_parameter_tuning_job_config].nil?
        type.training_job_definition = HyperParameterTrainingJobDefinition.build(params[:training_job_definition], context: "#{context}[:training_job_definition]") unless params[:training_job_definition].nil?
        type.training_job_definitions = HyperParameterTrainingJobDefinitions.build(params[:training_job_definitions], context: "#{context}[:training_job_definitions]") unless params[:training_job_definitions].nil?
        type.warm_start_config = HyperParameterTuningJobWarmStartConfig.build(params[:warm_start_config], context: "#{context}[:warm_start_config]") unless params[:warm_start_config].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateHyperParameterTuningJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHyperParameterTuningJobOutput, context: context)
        type = Types::CreateHyperParameterTuningJobOutput.new
        type.hyper_parameter_tuning_job_arn = params[:hyper_parameter_tuning_job_arn]
        type
      end
    end

    module CreateImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateImageInput, context: context)
        type = Types::CreateImageInput.new
        type.description = params[:description]
        type.display_name = params[:display_name]
        type.image_name = params[:image_name]
        type.role_arn = params[:role_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateImageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateImageOutput, context: context)
        type = Types::CreateImageOutput.new
        type.image_arn = params[:image_arn]
        type
      end
    end

    module CreateImageVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateImageVersionInput, context: context)
        type = Types::CreateImageVersionInput.new
        type.base_image = params[:base_image]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.image_name = params[:image_name]
        type
      end
    end

    module CreateImageVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateImageVersionOutput, context: context)
        type = Types::CreateImageVersionOutput.new
        type.image_version_arn = params[:image_version_arn]
        type
      end
    end

    module CreateInferenceRecommendationsJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInferenceRecommendationsJobInput, context: context)
        type = Types::CreateInferenceRecommendationsJobInput.new
        type.job_name = params[:job_name]
        type.job_type = params[:job_type]
        type.role_arn = params[:role_arn]
        type.input_config = RecommendationJobInputConfig.build(params[:input_config], context: "#{context}[:input_config]") unless params[:input_config].nil?
        type.job_description = params[:job_description]
        type.stopping_conditions = RecommendationJobStoppingConditions.build(params[:stopping_conditions], context: "#{context}[:stopping_conditions]") unless params[:stopping_conditions].nil?
        type.output_config = RecommendationJobOutputConfig.build(params[:output_config], context: "#{context}[:output_config]") unless params[:output_config].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateInferenceRecommendationsJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateInferenceRecommendationsJobOutput, context: context)
        type = Types::CreateInferenceRecommendationsJobOutput.new
        type.job_arn = params[:job_arn]
        type
      end
    end

    module CreateLabelingJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLabelingJobInput, context: context)
        type = Types::CreateLabelingJobInput.new
        type.labeling_job_name = params[:labeling_job_name]
        type.label_attribute_name = params[:label_attribute_name]
        type.input_config = LabelingJobInputConfig.build(params[:input_config], context: "#{context}[:input_config]") unless params[:input_config].nil?
        type.output_config = LabelingJobOutputConfig.build(params[:output_config], context: "#{context}[:output_config]") unless params[:output_config].nil?
        type.role_arn = params[:role_arn]
        type.label_category_config_s3_uri = params[:label_category_config_s3_uri]
        type.stopping_conditions = LabelingJobStoppingConditions.build(params[:stopping_conditions], context: "#{context}[:stopping_conditions]") unless params[:stopping_conditions].nil?
        type.labeling_job_algorithms_config = LabelingJobAlgorithmsConfig.build(params[:labeling_job_algorithms_config], context: "#{context}[:labeling_job_algorithms_config]") unless params[:labeling_job_algorithms_config].nil?
        type.human_task_config = HumanTaskConfig.build(params[:human_task_config], context: "#{context}[:human_task_config]") unless params[:human_task_config].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateLabelingJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLabelingJobOutput, context: context)
        type = Types::CreateLabelingJobOutput.new
        type.labeling_job_arn = params[:labeling_job_arn]
        type
      end
    end

    module CreateModelBiasJobDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateModelBiasJobDefinitionInput, context: context)
        type = Types::CreateModelBiasJobDefinitionInput.new
        type.job_definition_name = params[:job_definition_name]
        type.model_bias_baseline_config = ModelBiasBaselineConfig.build(params[:model_bias_baseline_config], context: "#{context}[:model_bias_baseline_config]") unless params[:model_bias_baseline_config].nil?
        type.model_bias_app_specification = ModelBiasAppSpecification.build(params[:model_bias_app_specification], context: "#{context}[:model_bias_app_specification]") unless params[:model_bias_app_specification].nil?
        type.model_bias_job_input = ModelBiasJobInput.build(params[:model_bias_job_input], context: "#{context}[:model_bias_job_input]") unless params[:model_bias_job_input].nil?
        type.model_bias_job_output_config = MonitoringOutputConfig.build(params[:model_bias_job_output_config], context: "#{context}[:model_bias_job_output_config]") unless params[:model_bias_job_output_config].nil?
        type.job_resources = MonitoringResources.build(params[:job_resources], context: "#{context}[:job_resources]") unless params[:job_resources].nil?
        type.network_config = MonitoringNetworkConfig.build(params[:network_config], context: "#{context}[:network_config]") unless params[:network_config].nil?
        type.role_arn = params[:role_arn]
        type.stopping_condition = MonitoringStoppingCondition.build(params[:stopping_condition], context: "#{context}[:stopping_condition]") unless params[:stopping_condition].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateModelBiasJobDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateModelBiasJobDefinitionOutput, context: context)
        type = Types::CreateModelBiasJobDefinitionOutput.new
        type.job_definition_arn = params[:job_definition_arn]
        type
      end
    end

    module CreateModelExplainabilityJobDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateModelExplainabilityJobDefinitionInput, context: context)
        type = Types::CreateModelExplainabilityJobDefinitionInput.new
        type.job_definition_name = params[:job_definition_name]
        type.model_explainability_baseline_config = ModelExplainabilityBaselineConfig.build(params[:model_explainability_baseline_config], context: "#{context}[:model_explainability_baseline_config]") unless params[:model_explainability_baseline_config].nil?
        type.model_explainability_app_specification = ModelExplainabilityAppSpecification.build(params[:model_explainability_app_specification], context: "#{context}[:model_explainability_app_specification]") unless params[:model_explainability_app_specification].nil?
        type.model_explainability_job_input = ModelExplainabilityJobInput.build(params[:model_explainability_job_input], context: "#{context}[:model_explainability_job_input]") unless params[:model_explainability_job_input].nil?
        type.model_explainability_job_output_config = MonitoringOutputConfig.build(params[:model_explainability_job_output_config], context: "#{context}[:model_explainability_job_output_config]") unless params[:model_explainability_job_output_config].nil?
        type.job_resources = MonitoringResources.build(params[:job_resources], context: "#{context}[:job_resources]") unless params[:job_resources].nil?
        type.network_config = MonitoringNetworkConfig.build(params[:network_config], context: "#{context}[:network_config]") unless params[:network_config].nil?
        type.role_arn = params[:role_arn]
        type.stopping_condition = MonitoringStoppingCondition.build(params[:stopping_condition], context: "#{context}[:stopping_condition]") unless params[:stopping_condition].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateModelExplainabilityJobDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateModelExplainabilityJobDefinitionOutput, context: context)
        type = Types::CreateModelExplainabilityJobDefinitionOutput.new
        type.job_definition_arn = params[:job_definition_arn]
        type
      end
    end

    module CreateModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateModelInput, context: context)
        type = Types::CreateModelInput.new
        type.model_name = params[:model_name]
        type.primary_container = ContainerDefinition.build(params[:primary_container], context: "#{context}[:primary_container]") unless params[:primary_container].nil?
        type.containers = ContainerDefinitionList.build(params[:containers], context: "#{context}[:containers]") unless params[:containers].nil?
        type.inference_execution_config = InferenceExecutionConfig.build(params[:inference_execution_config], context: "#{context}[:inference_execution_config]") unless params[:inference_execution_config].nil?
        type.execution_role_arn = params[:execution_role_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.enable_network_isolation = params[:enable_network_isolation]
        type
      end
    end

    module CreateModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateModelOutput, context: context)
        type = Types::CreateModelOutput.new
        type.model_arn = params[:model_arn]
        type
      end
    end

    module CreateModelPackageGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateModelPackageGroupInput, context: context)
        type = Types::CreateModelPackageGroupInput.new
        type.model_package_group_name = params[:model_package_group_name]
        type.model_package_group_description = params[:model_package_group_description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateModelPackageGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateModelPackageGroupOutput, context: context)
        type = Types::CreateModelPackageGroupOutput.new
        type.model_package_group_arn = params[:model_package_group_arn]
        type
      end
    end

    module CreateModelPackageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateModelPackageInput, context: context)
        type = Types::CreateModelPackageInput.new
        type.model_package_name = params[:model_package_name]
        type.model_package_group_name = params[:model_package_group_name]
        type.model_package_description = params[:model_package_description]
        type.inference_specification = InferenceSpecification.build(params[:inference_specification], context: "#{context}[:inference_specification]") unless params[:inference_specification].nil?
        type.validation_specification = ModelPackageValidationSpecification.build(params[:validation_specification], context: "#{context}[:validation_specification]") unless params[:validation_specification].nil?
        type.source_algorithm_specification = SourceAlgorithmSpecification.build(params[:source_algorithm_specification], context: "#{context}[:source_algorithm_specification]") unless params[:source_algorithm_specification].nil?
        type.certify_for_marketplace = params[:certify_for_marketplace]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.model_approval_status = params[:model_approval_status]
        type.metadata_properties = MetadataProperties.build(params[:metadata_properties], context: "#{context}[:metadata_properties]") unless params[:metadata_properties].nil?
        type.model_metrics = ModelMetrics.build(params[:model_metrics], context: "#{context}[:model_metrics]") unless params[:model_metrics].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.customer_metadata_properties = CustomerMetadataMap.build(params[:customer_metadata_properties], context: "#{context}[:customer_metadata_properties]") unless params[:customer_metadata_properties].nil?
        type.drift_check_baselines = DriftCheckBaselines.build(params[:drift_check_baselines], context: "#{context}[:drift_check_baselines]") unless params[:drift_check_baselines].nil?
        type.domain = params[:domain]
        type.task = params[:task]
        type.sample_payload_url = params[:sample_payload_url]
        type.additional_inference_specifications = AdditionalInferenceSpecifications.build(params[:additional_inference_specifications], context: "#{context}[:additional_inference_specifications]") unless params[:additional_inference_specifications].nil?
        type
      end
    end

    module CreateModelPackageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateModelPackageOutput, context: context)
        type = Types::CreateModelPackageOutput.new
        type.model_package_arn = params[:model_package_arn]
        type
      end
    end

    module CreateModelQualityJobDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateModelQualityJobDefinitionInput, context: context)
        type = Types::CreateModelQualityJobDefinitionInput.new
        type.job_definition_name = params[:job_definition_name]
        type.model_quality_baseline_config = ModelQualityBaselineConfig.build(params[:model_quality_baseline_config], context: "#{context}[:model_quality_baseline_config]") unless params[:model_quality_baseline_config].nil?
        type.model_quality_app_specification = ModelQualityAppSpecification.build(params[:model_quality_app_specification], context: "#{context}[:model_quality_app_specification]") unless params[:model_quality_app_specification].nil?
        type.model_quality_job_input = ModelQualityJobInput.build(params[:model_quality_job_input], context: "#{context}[:model_quality_job_input]") unless params[:model_quality_job_input].nil?
        type.model_quality_job_output_config = MonitoringOutputConfig.build(params[:model_quality_job_output_config], context: "#{context}[:model_quality_job_output_config]") unless params[:model_quality_job_output_config].nil?
        type.job_resources = MonitoringResources.build(params[:job_resources], context: "#{context}[:job_resources]") unless params[:job_resources].nil?
        type.network_config = MonitoringNetworkConfig.build(params[:network_config], context: "#{context}[:network_config]") unless params[:network_config].nil?
        type.role_arn = params[:role_arn]
        type.stopping_condition = MonitoringStoppingCondition.build(params[:stopping_condition], context: "#{context}[:stopping_condition]") unless params[:stopping_condition].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateModelQualityJobDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateModelQualityJobDefinitionOutput, context: context)
        type = Types::CreateModelQualityJobDefinitionOutput.new
        type.job_definition_arn = params[:job_definition_arn]
        type
      end
    end

    module CreateMonitoringScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMonitoringScheduleInput, context: context)
        type = Types::CreateMonitoringScheduleInput.new
        type.monitoring_schedule_name = params[:monitoring_schedule_name]
        type.monitoring_schedule_config = MonitoringScheduleConfig.build(params[:monitoring_schedule_config], context: "#{context}[:monitoring_schedule_config]") unless params[:monitoring_schedule_config].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateMonitoringScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMonitoringScheduleOutput, context: context)
        type = Types::CreateMonitoringScheduleOutput.new
        type.monitoring_schedule_arn = params[:monitoring_schedule_arn]
        type
      end
    end

    module CreateNotebookInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNotebookInstanceInput, context: context)
        type = Types::CreateNotebookInstanceInput.new
        type.notebook_instance_name = params[:notebook_instance_name]
        type.instance_type = params[:instance_type]
        type.subnet_id = params[:subnet_id]
        type.security_group_ids = SecurityGroupIds.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.role_arn = params[:role_arn]
        type.kms_key_id = params[:kms_key_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.lifecycle_config_name = params[:lifecycle_config_name]
        type.direct_internet_access = params[:direct_internet_access]
        type.volume_size_in_gb = params[:volume_size_in_gb]
        type.accelerator_types = NotebookInstanceAcceleratorTypes.build(params[:accelerator_types], context: "#{context}[:accelerator_types]") unless params[:accelerator_types].nil?
        type.default_code_repository = params[:default_code_repository]
        type.additional_code_repositories = AdditionalCodeRepositoryNamesOrUrls.build(params[:additional_code_repositories], context: "#{context}[:additional_code_repositories]") unless params[:additional_code_repositories].nil?
        type.root_access = params[:root_access]
        type.platform_identifier = params[:platform_identifier]
        type.instance_metadata_service_configuration = InstanceMetadataServiceConfiguration.build(params[:instance_metadata_service_configuration], context: "#{context}[:instance_metadata_service_configuration]") unless params[:instance_metadata_service_configuration].nil?
        type
      end
    end

    module CreateNotebookInstanceLifecycleConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNotebookInstanceLifecycleConfigInput, context: context)
        type = Types::CreateNotebookInstanceLifecycleConfigInput.new
        type.notebook_instance_lifecycle_config_name = params[:notebook_instance_lifecycle_config_name]
        type.on_create = NotebookInstanceLifecycleConfigList.build(params[:on_create], context: "#{context}[:on_create]") unless params[:on_create].nil?
        type.on_start = NotebookInstanceLifecycleConfigList.build(params[:on_start], context: "#{context}[:on_start]") unless params[:on_start].nil?
        type
      end
    end

    module CreateNotebookInstanceLifecycleConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNotebookInstanceLifecycleConfigOutput, context: context)
        type = Types::CreateNotebookInstanceLifecycleConfigOutput.new
        type.notebook_instance_lifecycle_config_arn = params[:notebook_instance_lifecycle_config_arn]
        type
      end
    end

    module CreateNotebookInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNotebookInstanceOutput, context: context)
        type = Types::CreateNotebookInstanceOutput.new
        type.notebook_instance_arn = params[:notebook_instance_arn]
        type
      end
    end

    module CreatePipelineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePipelineInput, context: context)
        type = Types::CreatePipelineInput.new
        type.pipeline_name = params[:pipeline_name]
        type.pipeline_display_name = params[:pipeline_display_name]
        type.pipeline_definition = params[:pipeline_definition]
        type.pipeline_definition_s3_location = PipelineDefinitionS3Location.build(params[:pipeline_definition_s3_location], context: "#{context}[:pipeline_definition_s3_location]") unless params[:pipeline_definition_s3_location].nil?
        type.pipeline_description = params[:pipeline_description]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.role_arn = params[:role_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.parallelism_configuration = ParallelismConfiguration.build(params[:parallelism_configuration], context: "#{context}[:parallelism_configuration]") unless params[:parallelism_configuration].nil?
        type
      end
    end

    module CreatePipelineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePipelineOutput, context: context)
        type = Types::CreatePipelineOutput.new
        type.pipeline_arn = params[:pipeline_arn]
        type
      end
    end

    module CreatePresignedDomainUrlInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePresignedDomainUrlInput, context: context)
        type = Types::CreatePresignedDomainUrlInput.new
        type.domain_id = params[:domain_id]
        type.user_profile_name = params[:user_profile_name]
        type.session_expiration_duration_in_seconds = params[:session_expiration_duration_in_seconds]
        type.expires_in_seconds = params[:expires_in_seconds]
        type
      end
    end

    module CreatePresignedDomainUrlOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePresignedDomainUrlOutput, context: context)
        type = Types::CreatePresignedDomainUrlOutput.new
        type.authorized_url = params[:authorized_url]
        type
      end
    end

    module CreatePresignedNotebookInstanceUrlInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePresignedNotebookInstanceUrlInput, context: context)
        type = Types::CreatePresignedNotebookInstanceUrlInput.new
        type.notebook_instance_name = params[:notebook_instance_name]
        type.session_expiration_duration_in_seconds = params[:session_expiration_duration_in_seconds]
        type
      end
    end

    module CreatePresignedNotebookInstanceUrlOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePresignedNotebookInstanceUrlOutput, context: context)
        type = Types::CreatePresignedNotebookInstanceUrlOutput.new
        type.authorized_url = params[:authorized_url]
        type
      end
    end

    module CreateProcessingJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProcessingJobInput, context: context)
        type = Types::CreateProcessingJobInput.new
        type.processing_inputs = ProcessingInputs.build(params[:processing_inputs], context: "#{context}[:processing_inputs]") unless params[:processing_inputs].nil?
        type.processing_output_config = ProcessingOutputConfig.build(params[:processing_output_config], context: "#{context}[:processing_output_config]") unless params[:processing_output_config].nil?
        type.processing_job_name = params[:processing_job_name]
        type.processing_resources = ProcessingResources.build(params[:processing_resources], context: "#{context}[:processing_resources]") unless params[:processing_resources].nil?
        type.stopping_condition = ProcessingStoppingCondition.build(params[:stopping_condition], context: "#{context}[:stopping_condition]") unless params[:stopping_condition].nil?
        type.app_specification = AppSpecification.build(params[:app_specification], context: "#{context}[:app_specification]") unless params[:app_specification].nil?
        type.environment = ProcessingEnvironmentMap.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.network_config = NetworkConfig.build(params[:network_config], context: "#{context}[:network_config]") unless params[:network_config].nil?
        type.role_arn = params[:role_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.experiment_config = ExperimentConfig.build(params[:experiment_config], context: "#{context}[:experiment_config]") unless params[:experiment_config].nil?
        type
      end
    end

    module CreateProcessingJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProcessingJobOutput, context: context)
        type = Types::CreateProcessingJobOutput.new
        type.processing_job_arn = params[:processing_job_arn]
        type
      end
    end

    module CreateProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProjectInput, context: context)
        type = Types::CreateProjectInput.new
        type.project_name = params[:project_name]
        type.project_description = params[:project_description]
        type.service_catalog_provisioning_details = ServiceCatalogProvisioningDetails.build(params[:service_catalog_provisioning_details], context: "#{context}[:service_catalog_provisioning_details]") unless params[:service_catalog_provisioning_details].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProjectOutput, context: context)
        type = Types::CreateProjectOutput.new
        type.project_arn = params[:project_arn]
        type.project_id = params[:project_id]
        type
      end
    end

    module CreateStudioLifecycleConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStudioLifecycleConfigInput, context: context)
        type = Types::CreateStudioLifecycleConfigInput.new
        type.studio_lifecycle_config_name = params[:studio_lifecycle_config_name]
        type.studio_lifecycle_config_content = params[:studio_lifecycle_config_content]
        type.studio_lifecycle_config_app_type = params[:studio_lifecycle_config_app_type]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateStudioLifecycleConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStudioLifecycleConfigOutput, context: context)
        type = Types::CreateStudioLifecycleConfigOutput.new
        type.studio_lifecycle_config_arn = params[:studio_lifecycle_config_arn]
        type
      end
    end

    module CreateTrainingJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTrainingJobInput, context: context)
        type = Types::CreateTrainingJobInput.new
        type.training_job_name = params[:training_job_name]
        type.hyper_parameters = HyperParameters.build(params[:hyper_parameters], context: "#{context}[:hyper_parameters]") unless params[:hyper_parameters].nil?
        type.algorithm_specification = AlgorithmSpecification.build(params[:algorithm_specification], context: "#{context}[:algorithm_specification]") unless params[:algorithm_specification].nil?
        type.role_arn = params[:role_arn]
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.resource_config = ResourceConfig.build(params[:resource_config], context: "#{context}[:resource_config]") unless params[:resource_config].nil?
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.stopping_condition = StoppingCondition.build(params[:stopping_condition], context: "#{context}[:stopping_condition]") unless params[:stopping_condition].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.enable_network_isolation = params[:enable_network_isolation]
        type.enable_inter_container_traffic_encryption = params[:enable_inter_container_traffic_encryption]
        type.enable_managed_spot_training = params[:enable_managed_spot_training]
        type.checkpoint_config = CheckpointConfig.build(params[:checkpoint_config], context: "#{context}[:checkpoint_config]") unless params[:checkpoint_config].nil?
        type.debug_hook_config = DebugHookConfig.build(params[:debug_hook_config], context: "#{context}[:debug_hook_config]") unless params[:debug_hook_config].nil?
        type.debug_rule_configurations = DebugRuleConfigurations.build(params[:debug_rule_configurations], context: "#{context}[:debug_rule_configurations]") unless params[:debug_rule_configurations].nil?
        type.tensor_board_output_config = TensorBoardOutputConfig.build(params[:tensor_board_output_config], context: "#{context}[:tensor_board_output_config]") unless params[:tensor_board_output_config].nil?
        type.experiment_config = ExperimentConfig.build(params[:experiment_config], context: "#{context}[:experiment_config]") unless params[:experiment_config].nil?
        type.profiler_config = ProfilerConfig.build(params[:profiler_config], context: "#{context}[:profiler_config]") unless params[:profiler_config].nil?
        type.profiler_rule_configurations = ProfilerRuleConfigurations.build(params[:profiler_rule_configurations], context: "#{context}[:profiler_rule_configurations]") unless params[:profiler_rule_configurations].nil?
        type.environment = TrainingEnvironmentMap.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.retry_strategy = RetryStrategy.build(params[:retry_strategy], context: "#{context}[:retry_strategy]") unless params[:retry_strategy].nil?
        type
      end
    end

    module CreateTrainingJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTrainingJobOutput, context: context)
        type = Types::CreateTrainingJobOutput.new
        type.training_job_arn = params[:training_job_arn]
        type
      end
    end

    module CreateTransformJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTransformJobInput, context: context)
        type = Types::CreateTransformJobInput.new
        type.transform_job_name = params[:transform_job_name]
        type.model_name = params[:model_name]
        type.max_concurrent_transforms = params[:max_concurrent_transforms]
        type.model_client_config = ModelClientConfig.build(params[:model_client_config], context: "#{context}[:model_client_config]") unless params[:model_client_config].nil?
        type.max_payload_in_mb = params[:max_payload_in_mb]
        type.batch_strategy = params[:batch_strategy]
        type.environment = TransformEnvironmentMap.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.transform_input = TransformInput.build(params[:transform_input], context: "#{context}[:transform_input]") unless params[:transform_input].nil?
        type.transform_output = TransformOutput.build(params[:transform_output], context: "#{context}[:transform_output]") unless params[:transform_output].nil?
        type.transform_resources = TransformResources.build(params[:transform_resources], context: "#{context}[:transform_resources]") unless params[:transform_resources].nil?
        type.data_processing = DataProcessing.build(params[:data_processing], context: "#{context}[:data_processing]") unless params[:data_processing].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.experiment_config = ExperimentConfig.build(params[:experiment_config], context: "#{context}[:experiment_config]") unless params[:experiment_config].nil?
        type
      end
    end

    module CreateTransformJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTransformJobOutput, context: context)
        type = Types::CreateTransformJobOutput.new
        type.transform_job_arn = params[:transform_job_arn]
        type
      end
    end

    module CreateTrialComponentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTrialComponentInput, context: context)
        type = Types::CreateTrialComponentInput.new
        type.trial_component_name = params[:trial_component_name]
        type.display_name = params[:display_name]
        type.status = TrialComponentStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.parameters = TrialComponentParameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.input_artifacts = TrialComponentArtifacts.build(params[:input_artifacts], context: "#{context}[:input_artifacts]") unless params[:input_artifacts].nil?
        type.output_artifacts = TrialComponentArtifacts.build(params[:output_artifacts], context: "#{context}[:output_artifacts]") unless params[:output_artifacts].nil?
        type.metadata_properties = MetadataProperties.build(params[:metadata_properties], context: "#{context}[:metadata_properties]") unless params[:metadata_properties].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateTrialComponentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTrialComponentOutput, context: context)
        type = Types::CreateTrialComponentOutput.new
        type.trial_component_arn = params[:trial_component_arn]
        type
      end
    end

    module CreateTrialInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTrialInput, context: context)
        type = Types::CreateTrialInput.new
        type.trial_name = params[:trial_name]
        type.display_name = params[:display_name]
        type.experiment_name = params[:experiment_name]
        type.metadata_properties = MetadataProperties.build(params[:metadata_properties], context: "#{context}[:metadata_properties]") unless params[:metadata_properties].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateTrialOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTrialOutput, context: context)
        type = Types::CreateTrialOutput.new
        type.trial_arn = params[:trial_arn]
        type
      end
    end

    module CreateUserProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserProfileInput, context: context)
        type = Types::CreateUserProfileInput.new
        type.domain_id = params[:domain_id]
        type.user_profile_name = params[:user_profile_name]
        type.single_sign_on_user_identifier = params[:single_sign_on_user_identifier]
        type.single_sign_on_user_value = params[:single_sign_on_user_value]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.user_settings = UserSettings.build(params[:user_settings], context: "#{context}[:user_settings]") unless params[:user_settings].nil?
        type
      end
    end

    module CreateUserProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserProfileOutput, context: context)
        type = Types::CreateUserProfileOutput.new
        type.user_profile_arn = params[:user_profile_arn]
        type
      end
    end

    module CreateWorkforceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorkforceInput, context: context)
        type = Types::CreateWorkforceInput.new
        type.cognito_config = CognitoConfig.build(params[:cognito_config], context: "#{context}[:cognito_config]") unless params[:cognito_config].nil?
        type.oidc_config = OidcConfig.build(params[:oidc_config], context: "#{context}[:oidc_config]") unless params[:oidc_config].nil?
        type.source_ip_config = SourceIpConfig.build(params[:source_ip_config], context: "#{context}[:source_ip_config]") unless params[:source_ip_config].nil?
        type.workforce_name = params[:workforce_name]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateWorkforceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorkforceOutput, context: context)
        type = Types::CreateWorkforceOutput.new
        type.workforce_arn = params[:workforce_arn]
        type
      end
    end

    module CreateWorkteamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorkteamInput, context: context)
        type = Types::CreateWorkteamInput.new
        type.workteam_name = params[:workteam_name]
        type.workforce_name = params[:workforce_name]
        type.member_definitions = MemberDefinitions.build(params[:member_definitions], context: "#{context}[:member_definitions]") unless params[:member_definitions].nil?
        type.description = params[:description]
        type.notification_configuration = NotificationConfiguration.build(params[:notification_configuration], context: "#{context}[:notification_configuration]") unless params[:notification_configuration].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateWorkteamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorkteamOutput, context: context)
        type = Types::CreateWorkteamOutput.new
        type.workteam_arn = params[:workteam_arn]
        type
      end
    end

    module CsvContentTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CustomImage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomImage, context: context)
        type = Types::CustomImage.new
        type.image_name = params[:image_name]
        type.image_version_number = params[:image_version_number]
        type.app_image_config_name = params[:app_image_config_name]
        type
      end
    end

    module CustomImages
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CustomImage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CustomerMetadataKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CustomerMetadataMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module DataCaptureConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataCaptureConfig, context: context)
        type = Types::DataCaptureConfig.new
        type.enable_capture = params[:enable_capture]
        type.initial_sampling_percentage = params[:initial_sampling_percentage]
        type.destination_s3_uri = params[:destination_s3_uri]
        type.kms_key_id = params[:kms_key_id]
        type.capture_options = CaptureOptionList.build(params[:capture_options], context: "#{context}[:capture_options]") unless params[:capture_options].nil?
        type.capture_content_type_header = CaptureContentTypeHeader.build(params[:capture_content_type_header], context: "#{context}[:capture_content_type_header]") unless params[:capture_content_type_header].nil?
        type
      end
    end

    module DataCaptureConfigSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataCaptureConfigSummary, context: context)
        type = Types::DataCaptureConfigSummary.new
        type.enable_capture = params[:enable_capture]
        type.capture_status = params[:capture_status]
        type.current_sampling_percentage = params[:current_sampling_percentage]
        type.destination_s3_uri = params[:destination_s3_uri]
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module DataCatalogConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataCatalogConfig, context: context)
        type = Types::DataCatalogConfig.new
        type.table_name = params[:table_name]
        type.catalog = params[:catalog]
        type.database = params[:database]
        type
      end
    end

    module DataProcessing
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataProcessing, context: context)
        type = Types::DataProcessing.new
        type.input_filter = params[:input_filter]
        type.output_filter = params[:output_filter]
        type.join_source = params[:join_source]
        type
      end
    end

    module DataQualityAppSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataQualityAppSpecification, context: context)
        type = Types::DataQualityAppSpecification.new
        type.image_uri = params[:image_uri]
        type.container_entrypoint = ContainerEntrypoint.build(params[:container_entrypoint], context: "#{context}[:container_entrypoint]") unless params[:container_entrypoint].nil?
        type.container_arguments = MonitoringContainerArguments.build(params[:container_arguments], context: "#{context}[:container_arguments]") unless params[:container_arguments].nil?
        type.record_preprocessor_source_uri = params[:record_preprocessor_source_uri]
        type.post_analytics_processor_source_uri = params[:post_analytics_processor_source_uri]
        type.environment = MonitoringEnvironmentMap.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type
      end
    end

    module DataQualityBaselineConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataQualityBaselineConfig, context: context)
        type = Types::DataQualityBaselineConfig.new
        type.baselining_job_name = params[:baselining_job_name]
        type.constraints_resource = MonitoringConstraintsResource.build(params[:constraints_resource], context: "#{context}[:constraints_resource]") unless params[:constraints_resource].nil?
        type.statistics_resource = MonitoringStatisticsResource.build(params[:statistics_resource], context: "#{context}[:statistics_resource]") unless params[:statistics_resource].nil?
        type
      end
    end

    module DataQualityJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataQualityJobInput, context: context)
        type = Types::DataQualityJobInput.new
        type.endpoint_input = EndpointInput.build(params[:endpoint_input], context: "#{context}[:endpoint_input]") unless params[:endpoint_input].nil?
        type
      end
    end

    module DataSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSource, context: context)
        type = Types::DataSource.new
        type.s3_data_source = S3DataSource.build(params[:s3_data_source], context: "#{context}[:s3_data_source]") unless params[:s3_data_source].nil?
        type.file_system_data_source = FileSystemDataSource.build(params[:file_system_data_source], context: "#{context}[:file_system_data_source]") unless params[:file_system_data_source].nil?
        type
      end
    end

    module DatasetDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetDefinition, context: context)
        type = Types::DatasetDefinition.new
        type.athena_dataset_definition = AthenaDatasetDefinition.build(params[:athena_dataset_definition], context: "#{context}[:athena_dataset_definition]") unless params[:athena_dataset_definition].nil?
        type.redshift_dataset_definition = RedshiftDatasetDefinition.build(params[:redshift_dataset_definition], context: "#{context}[:redshift_dataset_definition]") unless params[:redshift_dataset_definition].nil?
        type.local_path = params[:local_path]
        type.data_distribution_type = params[:data_distribution_type]
        type.input_mode = params[:input_mode]
        type
      end
    end

    module DebugHookConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DebugHookConfig, context: context)
        type = Types::DebugHookConfig.new
        type.local_path = params[:local_path]
        type.s3_output_path = params[:s3_output_path]
        type.hook_parameters = HookParameters.build(params[:hook_parameters], context: "#{context}[:hook_parameters]") unless params[:hook_parameters].nil?
        type.collection_configurations = CollectionConfigurations.build(params[:collection_configurations], context: "#{context}[:collection_configurations]") unless params[:collection_configurations].nil?
        type
      end
    end

    module DebugRuleConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DebugRuleConfiguration, context: context)
        type = Types::DebugRuleConfiguration.new
        type.rule_configuration_name = params[:rule_configuration_name]
        type.local_path = params[:local_path]
        type.s3_output_path = params[:s3_output_path]
        type.rule_evaluator_image = params[:rule_evaluator_image]
        type.instance_type = params[:instance_type]
        type.volume_size_in_gb = params[:volume_size_in_gb]
        type.rule_parameters = RuleParameters.build(params[:rule_parameters], context: "#{context}[:rule_parameters]") unless params[:rule_parameters].nil?
        type
      end
    end

    module DebugRuleConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DebugRuleConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DebugRuleEvaluationStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DebugRuleEvaluationStatus, context: context)
        type = Types::DebugRuleEvaluationStatus.new
        type.rule_configuration_name = params[:rule_configuration_name]
        type.rule_evaluation_job_arn = params[:rule_evaluation_job_arn]
        type.rule_evaluation_status = params[:rule_evaluation_status]
        type.status_details = params[:status_details]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module DebugRuleEvaluationStatuses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DebugRuleEvaluationStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteActionInput, context: context)
        type = Types::DeleteActionInput.new
        type.action_name = params[:action_name]
        type
      end
    end

    module DeleteActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteActionOutput, context: context)
        type = Types::DeleteActionOutput.new
        type.action_arn = params[:action_arn]
        type
      end
    end

    module DeleteAlgorithmInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAlgorithmInput, context: context)
        type = Types::DeleteAlgorithmInput.new
        type.algorithm_name = params[:algorithm_name]
        type
      end
    end

    module DeleteAlgorithmOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAlgorithmOutput, context: context)
        type = Types::DeleteAlgorithmOutput.new
        type
      end
    end

    module DeleteAppImageConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppImageConfigInput, context: context)
        type = Types::DeleteAppImageConfigInput.new
        type.app_image_config_name = params[:app_image_config_name]
        type
      end
    end

    module DeleteAppImageConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppImageConfigOutput, context: context)
        type = Types::DeleteAppImageConfigOutput.new
        type
      end
    end

    module DeleteAppInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppInput, context: context)
        type = Types::DeleteAppInput.new
        type.domain_id = params[:domain_id]
        type.user_profile_name = params[:user_profile_name]
        type.app_type = params[:app_type]
        type.app_name = params[:app_name]
        type
      end
    end

    module DeleteAppOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAppOutput, context: context)
        type = Types::DeleteAppOutput.new
        type
      end
    end

    module DeleteArtifactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteArtifactInput, context: context)
        type = Types::DeleteArtifactInput.new
        type.artifact_arn = params[:artifact_arn]
        type.source = ArtifactSource.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type
      end
    end

    module DeleteArtifactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteArtifactOutput, context: context)
        type = Types::DeleteArtifactOutput.new
        type.artifact_arn = params[:artifact_arn]
        type
      end
    end

    module DeleteAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAssociationInput, context: context)
        type = Types::DeleteAssociationInput.new
        type.source_arn = params[:source_arn]
        type.destination_arn = params[:destination_arn]
        type
      end
    end

    module DeleteAssociationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAssociationOutput, context: context)
        type = Types::DeleteAssociationOutput.new
        type.source_arn = params[:source_arn]
        type.destination_arn = params[:destination_arn]
        type
      end
    end

    module DeleteCodeRepositoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCodeRepositoryInput, context: context)
        type = Types::DeleteCodeRepositoryInput.new
        type.code_repository_name = params[:code_repository_name]
        type
      end
    end

    module DeleteCodeRepositoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCodeRepositoryOutput, context: context)
        type = Types::DeleteCodeRepositoryOutput.new
        type
      end
    end

    module DeleteContextInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteContextInput, context: context)
        type = Types::DeleteContextInput.new
        type.context_name = params[:context_name]
        type
      end
    end

    module DeleteContextOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteContextOutput, context: context)
        type = Types::DeleteContextOutput.new
        type.context_arn = params[:context_arn]
        type
      end
    end

    module DeleteDataQualityJobDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDataQualityJobDefinitionInput, context: context)
        type = Types::DeleteDataQualityJobDefinitionInput.new
        type.job_definition_name = params[:job_definition_name]
        type
      end
    end

    module DeleteDataQualityJobDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDataQualityJobDefinitionOutput, context: context)
        type = Types::DeleteDataQualityJobDefinitionOutput.new
        type
      end
    end

    module DeleteDeviceFleetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDeviceFleetInput, context: context)
        type = Types::DeleteDeviceFleetInput.new
        type.device_fleet_name = params[:device_fleet_name]
        type
      end
    end

    module DeleteDeviceFleetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDeviceFleetOutput, context: context)
        type = Types::DeleteDeviceFleetOutput.new
        type
      end
    end

    module DeleteDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDomainInput, context: context)
        type = Types::DeleteDomainInput.new
        type.domain_id = params[:domain_id]
        type.retention_policy = RetentionPolicy.build(params[:retention_policy], context: "#{context}[:retention_policy]") unless params[:retention_policy].nil?
        type
      end
    end

    module DeleteDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDomainOutput, context: context)
        type = Types::DeleteDomainOutput.new
        type
      end
    end

    module DeleteEndpointConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEndpointConfigInput, context: context)
        type = Types::DeleteEndpointConfigInput.new
        type.endpoint_config_name = params[:endpoint_config_name]
        type
      end
    end

    module DeleteEndpointConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEndpointConfigOutput, context: context)
        type = Types::DeleteEndpointConfigOutput.new
        type
      end
    end

    module DeleteEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEndpointInput, context: context)
        type = Types::DeleteEndpointInput.new
        type.endpoint_name = params[:endpoint_name]
        type
      end
    end

    module DeleteEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEndpointOutput, context: context)
        type = Types::DeleteEndpointOutput.new
        type
      end
    end

    module DeleteExperimentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteExperimentInput, context: context)
        type = Types::DeleteExperimentInput.new
        type.experiment_name = params[:experiment_name]
        type
      end
    end

    module DeleteExperimentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteExperimentOutput, context: context)
        type = Types::DeleteExperimentOutput.new
        type.experiment_arn = params[:experiment_arn]
        type
      end
    end

    module DeleteFeatureGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFeatureGroupInput, context: context)
        type = Types::DeleteFeatureGroupInput.new
        type.feature_group_name = params[:feature_group_name]
        type
      end
    end

    module DeleteFeatureGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFeatureGroupOutput, context: context)
        type = Types::DeleteFeatureGroupOutput.new
        type
      end
    end

    module DeleteFlowDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFlowDefinitionInput, context: context)
        type = Types::DeleteFlowDefinitionInput.new
        type.flow_definition_name = params[:flow_definition_name]
        type
      end
    end

    module DeleteFlowDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFlowDefinitionOutput, context: context)
        type = Types::DeleteFlowDefinitionOutput.new
        type
      end
    end

    module DeleteHumanTaskUiInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteHumanTaskUiInput, context: context)
        type = Types::DeleteHumanTaskUiInput.new
        type.human_task_ui_name = params[:human_task_ui_name]
        type
      end
    end

    module DeleteHumanTaskUiOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteHumanTaskUiOutput, context: context)
        type = Types::DeleteHumanTaskUiOutput.new
        type
      end
    end

    module DeleteImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteImageInput, context: context)
        type = Types::DeleteImageInput.new
        type.image_name = params[:image_name]
        type
      end
    end

    module DeleteImageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteImageOutput, context: context)
        type = Types::DeleteImageOutput.new
        type
      end
    end

    module DeleteImageVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteImageVersionInput, context: context)
        type = Types::DeleteImageVersionInput.new
        type.image_name = params[:image_name]
        type.version = params[:version]
        type
      end
    end

    module DeleteImageVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteImageVersionOutput, context: context)
        type = Types::DeleteImageVersionOutput.new
        type
      end
    end

    module DeleteModelBiasJobDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteModelBiasJobDefinitionInput, context: context)
        type = Types::DeleteModelBiasJobDefinitionInput.new
        type.job_definition_name = params[:job_definition_name]
        type
      end
    end

    module DeleteModelBiasJobDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteModelBiasJobDefinitionOutput, context: context)
        type = Types::DeleteModelBiasJobDefinitionOutput.new
        type
      end
    end

    module DeleteModelExplainabilityJobDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteModelExplainabilityJobDefinitionInput, context: context)
        type = Types::DeleteModelExplainabilityJobDefinitionInput.new
        type.job_definition_name = params[:job_definition_name]
        type
      end
    end

    module DeleteModelExplainabilityJobDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteModelExplainabilityJobDefinitionOutput, context: context)
        type = Types::DeleteModelExplainabilityJobDefinitionOutput.new
        type
      end
    end

    module DeleteModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteModelInput, context: context)
        type = Types::DeleteModelInput.new
        type.model_name = params[:model_name]
        type
      end
    end

    module DeleteModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteModelOutput, context: context)
        type = Types::DeleteModelOutput.new
        type
      end
    end

    module DeleteModelPackageGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteModelPackageGroupInput, context: context)
        type = Types::DeleteModelPackageGroupInput.new
        type.model_package_group_name = params[:model_package_group_name]
        type
      end
    end

    module DeleteModelPackageGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteModelPackageGroupOutput, context: context)
        type = Types::DeleteModelPackageGroupOutput.new
        type
      end
    end

    module DeleteModelPackageGroupPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteModelPackageGroupPolicyInput, context: context)
        type = Types::DeleteModelPackageGroupPolicyInput.new
        type.model_package_group_name = params[:model_package_group_name]
        type
      end
    end

    module DeleteModelPackageGroupPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteModelPackageGroupPolicyOutput, context: context)
        type = Types::DeleteModelPackageGroupPolicyOutput.new
        type
      end
    end

    module DeleteModelPackageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteModelPackageInput, context: context)
        type = Types::DeleteModelPackageInput.new
        type.model_package_name = params[:model_package_name]
        type
      end
    end

    module DeleteModelPackageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteModelPackageOutput, context: context)
        type = Types::DeleteModelPackageOutput.new
        type
      end
    end

    module DeleteModelQualityJobDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteModelQualityJobDefinitionInput, context: context)
        type = Types::DeleteModelQualityJobDefinitionInput.new
        type.job_definition_name = params[:job_definition_name]
        type
      end
    end

    module DeleteModelQualityJobDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteModelQualityJobDefinitionOutput, context: context)
        type = Types::DeleteModelQualityJobDefinitionOutput.new
        type
      end
    end

    module DeleteMonitoringScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMonitoringScheduleInput, context: context)
        type = Types::DeleteMonitoringScheduleInput.new
        type.monitoring_schedule_name = params[:monitoring_schedule_name]
        type
      end
    end

    module DeleteMonitoringScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMonitoringScheduleOutput, context: context)
        type = Types::DeleteMonitoringScheduleOutput.new
        type
      end
    end

    module DeleteNotebookInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNotebookInstanceInput, context: context)
        type = Types::DeleteNotebookInstanceInput.new
        type.notebook_instance_name = params[:notebook_instance_name]
        type
      end
    end

    module DeleteNotebookInstanceLifecycleConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNotebookInstanceLifecycleConfigInput, context: context)
        type = Types::DeleteNotebookInstanceLifecycleConfigInput.new
        type.notebook_instance_lifecycle_config_name = params[:notebook_instance_lifecycle_config_name]
        type
      end
    end

    module DeleteNotebookInstanceLifecycleConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNotebookInstanceLifecycleConfigOutput, context: context)
        type = Types::DeleteNotebookInstanceLifecycleConfigOutput.new
        type
      end
    end

    module DeleteNotebookInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNotebookInstanceOutput, context: context)
        type = Types::DeleteNotebookInstanceOutput.new
        type
      end
    end

    module DeletePipelineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePipelineInput, context: context)
        type = Types::DeletePipelineInput.new
        type.pipeline_name = params[:pipeline_name]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type
      end
    end

    module DeletePipelineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePipelineOutput, context: context)
        type = Types::DeletePipelineOutput.new
        type.pipeline_arn = params[:pipeline_arn]
        type
      end
    end

    module DeleteProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProjectInput, context: context)
        type = Types::DeleteProjectInput.new
        type.project_name = params[:project_name]
        type
      end
    end

    module DeleteProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProjectOutput, context: context)
        type = Types::DeleteProjectOutput.new
        type
      end
    end

    module DeleteStudioLifecycleConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStudioLifecycleConfigInput, context: context)
        type = Types::DeleteStudioLifecycleConfigInput.new
        type.studio_lifecycle_config_name = params[:studio_lifecycle_config_name]
        type
      end
    end

    module DeleteStudioLifecycleConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStudioLifecycleConfigOutput, context: context)
        type = Types::DeleteStudioLifecycleConfigOutput.new
        type
      end
    end

    module DeleteTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTagsInput, context: context)
        type = Types::DeleteTagsInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module DeleteTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTagsOutput, context: context)
        type = Types::DeleteTagsOutput.new
        type
      end
    end

    module DeleteTrialComponentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTrialComponentInput, context: context)
        type = Types::DeleteTrialComponentInput.new
        type.trial_component_name = params[:trial_component_name]
        type
      end
    end

    module DeleteTrialComponentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTrialComponentOutput, context: context)
        type = Types::DeleteTrialComponentOutput.new
        type.trial_component_arn = params[:trial_component_arn]
        type
      end
    end

    module DeleteTrialInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTrialInput, context: context)
        type = Types::DeleteTrialInput.new
        type.trial_name = params[:trial_name]
        type
      end
    end

    module DeleteTrialOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTrialOutput, context: context)
        type = Types::DeleteTrialOutput.new
        type.trial_arn = params[:trial_arn]
        type
      end
    end

    module DeleteUserProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserProfileInput, context: context)
        type = Types::DeleteUserProfileInput.new
        type.domain_id = params[:domain_id]
        type.user_profile_name = params[:user_profile_name]
        type
      end
    end

    module DeleteUserProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserProfileOutput, context: context)
        type = Types::DeleteUserProfileOutput.new
        type
      end
    end

    module DeleteWorkforceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWorkforceInput, context: context)
        type = Types::DeleteWorkforceInput.new
        type.workforce_name = params[:workforce_name]
        type
      end
    end

    module DeleteWorkforceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWorkforceOutput, context: context)
        type = Types::DeleteWorkforceOutput.new
        type
      end
    end

    module DeleteWorkteamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWorkteamInput, context: context)
        type = Types::DeleteWorkteamInput.new
        type.workteam_name = params[:workteam_name]
        type
      end
    end

    module DeleteWorkteamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWorkteamOutput, context: context)
        type = Types::DeleteWorkteamOutput.new
        type.success = params[:success]
        type
      end
    end

    module DeployedImage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeployedImage, context: context)
        type = Types::DeployedImage.new
        type.specified_image = params[:specified_image]
        type.resolved_image = params[:resolved_image]
        type.resolution_time = params[:resolution_time]
        type
      end
    end

    module DeployedImages
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeployedImage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeploymentConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentConfig, context: context)
        type = Types::DeploymentConfig.new
        type.blue_green_update_policy = BlueGreenUpdatePolicy.build(params[:blue_green_update_policy], context: "#{context}[:blue_green_update_policy]") unless params[:blue_green_update_policy].nil?
        type.auto_rollback_configuration = AutoRollbackConfig.build(params[:auto_rollback_configuration], context: "#{context}[:auto_rollback_configuration]") unless params[:auto_rollback_configuration].nil?
        type
      end
    end

    module DeregisterDevicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterDevicesInput, context: context)
        type = Types::DeregisterDevicesInput.new
        type.device_fleet_name = params[:device_fleet_name]
        type.device_names = DeviceNames.build(params[:device_names], context: "#{context}[:device_names]") unless params[:device_names].nil?
        type
      end
    end

    module DeregisterDevicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterDevicesOutput, context: context)
        type = Types::DeregisterDevicesOutput.new
        type
      end
    end

    module DescribeActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeActionInput, context: context)
        type = Types::DescribeActionInput.new
        type.action_name = params[:action_name]
        type
      end
    end

    module DescribeActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeActionOutput, context: context)
        type = Types::DescribeActionOutput.new
        type.action_name = params[:action_name]
        type.action_arn = params[:action_arn]
        type.source = ActionSource.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.action_type = params[:action_type]
        type.description = params[:description]
        type.status = params[:status]
        type.properties = LineageEntityParameters.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type.creation_time = params[:creation_time]
        type.created_by = UserContext.build(params[:created_by], context: "#{context}[:created_by]") unless params[:created_by].nil?
        type.last_modified_time = params[:last_modified_time]
        type.last_modified_by = UserContext.build(params[:last_modified_by], context: "#{context}[:last_modified_by]") unless params[:last_modified_by].nil?
        type.metadata_properties = MetadataProperties.build(params[:metadata_properties], context: "#{context}[:metadata_properties]") unless params[:metadata_properties].nil?
        type.lineage_group_arn = params[:lineage_group_arn]
        type
      end
    end

    module DescribeAlgorithmInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAlgorithmInput, context: context)
        type = Types::DescribeAlgorithmInput.new
        type.algorithm_name = params[:algorithm_name]
        type
      end
    end

    module DescribeAlgorithmOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAlgorithmOutput, context: context)
        type = Types::DescribeAlgorithmOutput.new
        type.algorithm_name = params[:algorithm_name]
        type.algorithm_arn = params[:algorithm_arn]
        type.algorithm_description = params[:algorithm_description]
        type.creation_time = params[:creation_time]
        type.training_specification = TrainingSpecification.build(params[:training_specification], context: "#{context}[:training_specification]") unless params[:training_specification].nil?
        type.inference_specification = InferenceSpecification.build(params[:inference_specification], context: "#{context}[:inference_specification]") unless params[:inference_specification].nil?
        type.validation_specification = AlgorithmValidationSpecification.build(params[:validation_specification], context: "#{context}[:validation_specification]") unless params[:validation_specification].nil?
        type.algorithm_status = params[:algorithm_status]
        type.algorithm_status_details = AlgorithmStatusDetails.build(params[:algorithm_status_details], context: "#{context}[:algorithm_status_details]") unless params[:algorithm_status_details].nil?
        type.product_id = params[:product_id]
        type.certify_for_marketplace = params[:certify_for_marketplace]
        type
      end
    end

    module DescribeAppImageConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAppImageConfigInput, context: context)
        type = Types::DescribeAppImageConfigInput.new
        type.app_image_config_name = params[:app_image_config_name]
        type
      end
    end

    module DescribeAppImageConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAppImageConfigOutput, context: context)
        type = Types::DescribeAppImageConfigOutput.new
        type.app_image_config_arn = params[:app_image_config_arn]
        type.app_image_config_name = params[:app_image_config_name]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.kernel_gateway_image_config = KernelGatewayImageConfig.build(params[:kernel_gateway_image_config], context: "#{context}[:kernel_gateway_image_config]") unless params[:kernel_gateway_image_config].nil?
        type
      end
    end

    module DescribeAppInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAppInput, context: context)
        type = Types::DescribeAppInput.new
        type.domain_id = params[:domain_id]
        type.user_profile_name = params[:user_profile_name]
        type.app_type = params[:app_type]
        type.app_name = params[:app_name]
        type
      end
    end

    module DescribeAppOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAppOutput, context: context)
        type = Types::DescribeAppOutput.new
        type.app_arn = params[:app_arn]
        type.app_type = params[:app_type]
        type.app_name = params[:app_name]
        type.domain_id = params[:domain_id]
        type.user_profile_name = params[:user_profile_name]
        type.status = params[:status]
        type.last_health_check_timestamp = params[:last_health_check_timestamp]
        type.last_user_activity_timestamp = params[:last_user_activity_timestamp]
        type.creation_time = params[:creation_time]
        type.failure_reason = params[:failure_reason]
        type.resource_spec = ResourceSpec.build(params[:resource_spec], context: "#{context}[:resource_spec]") unless params[:resource_spec].nil?
        type
      end
    end

    module DescribeArtifactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeArtifactInput, context: context)
        type = Types::DescribeArtifactInput.new
        type.artifact_arn = params[:artifact_arn]
        type
      end
    end

    module DescribeArtifactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeArtifactOutput, context: context)
        type = Types::DescribeArtifactOutput.new
        type.artifact_name = params[:artifact_name]
        type.artifact_arn = params[:artifact_arn]
        type.source = ArtifactSource.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.artifact_type = params[:artifact_type]
        type.properties = LineageEntityParameters.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type.creation_time = params[:creation_time]
        type.created_by = UserContext.build(params[:created_by], context: "#{context}[:created_by]") unless params[:created_by].nil?
        type.last_modified_time = params[:last_modified_time]
        type.last_modified_by = UserContext.build(params[:last_modified_by], context: "#{context}[:last_modified_by]") unless params[:last_modified_by].nil?
        type.metadata_properties = MetadataProperties.build(params[:metadata_properties], context: "#{context}[:metadata_properties]") unless params[:metadata_properties].nil?
        type.lineage_group_arn = params[:lineage_group_arn]
        type
      end
    end

    module DescribeAutoMLJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAutoMLJobInput, context: context)
        type = Types::DescribeAutoMLJobInput.new
        type.auto_ml_job_name = params[:auto_ml_job_name]
        type
      end
    end

    module DescribeAutoMLJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAutoMLJobOutput, context: context)
        type = Types::DescribeAutoMLJobOutput.new
        type.auto_ml_job_name = params[:auto_ml_job_name]
        type.auto_ml_job_arn = params[:auto_ml_job_arn]
        type.input_data_config = AutoMLInputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = AutoMLOutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.role_arn = params[:role_arn]
        type.auto_ml_job_objective = AutoMLJobObjective.build(params[:auto_ml_job_objective], context: "#{context}[:auto_ml_job_objective]") unless params[:auto_ml_job_objective].nil?
        type.problem_type = params[:problem_type]
        type.auto_ml_job_config = AutoMLJobConfig.build(params[:auto_ml_job_config], context: "#{context}[:auto_ml_job_config]") unless params[:auto_ml_job_config].nil?
        type.creation_time = params[:creation_time]
        type.end_time = params[:end_time]
        type.last_modified_time = params[:last_modified_time]
        type.failure_reason = params[:failure_reason]
        type.partial_failure_reasons = AutoMLPartialFailureReasons.build(params[:partial_failure_reasons], context: "#{context}[:partial_failure_reasons]") unless params[:partial_failure_reasons].nil?
        type.best_candidate = AutoMLCandidate.build(params[:best_candidate], context: "#{context}[:best_candidate]") unless params[:best_candidate].nil?
        type.auto_ml_job_status = params[:auto_ml_job_status]
        type.auto_ml_job_secondary_status = params[:auto_ml_job_secondary_status]
        type.generate_candidate_definitions_only = params[:generate_candidate_definitions_only]
        type.auto_ml_job_artifacts = AutoMLJobArtifacts.build(params[:auto_ml_job_artifacts], context: "#{context}[:auto_ml_job_artifacts]") unless params[:auto_ml_job_artifacts].nil?
        type.resolved_attributes = ResolvedAttributes.build(params[:resolved_attributes], context: "#{context}[:resolved_attributes]") unless params[:resolved_attributes].nil?
        type.model_deploy_config = ModelDeployConfig.build(params[:model_deploy_config], context: "#{context}[:model_deploy_config]") unless params[:model_deploy_config].nil?
        type.model_deploy_result = ModelDeployResult.build(params[:model_deploy_result], context: "#{context}[:model_deploy_result]") unless params[:model_deploy_result].nil?
        type
      end
    end

    module DescribeCodeRepositoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCodeRepositoryInput, context: context)
        type = Types::DescribeCodeRepositoryInput.new
        type.code_repository_name = params[:code_repository_name]
        type
      end
    end

    module DescribeCodeRepositoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCodeRepositoryOutput, context: context)
        type = Types::DescribeCodeRepositoryOutput.new
        type.code_repository_name = params[:code_repository_name]
        type.code_repository_arn = params[:code_repository_arn]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.git_config = GitConfig.build(params[:git_config], context: "#{context}[:git_config]") unless params[:git_config].nil?
        type
      end
    end

    module DescribeCompilationJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCompilationJobInput, context: context)
        type = Types::DescribeCompilationJobInput.new
        type.compilation_job_name = params[:compilation_job_name]
        type
      end
    end

    module DescribeCompilationJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCompilationJobOutput, context: context)
        type = Types::DescribeCompilationJobOutput.new
        type.compilation_job_name = params[:compilation_job_name]
        type.compilation_job_arn = params[:compilation_job_arn]
        type.compilation_job_status = params[:compilation_job_status]
        type.compilation_start_time = params[:compilation_start_time]
        type.compilation_end_time = params[:compilation_end_time]
        type.stopping_condition = StoppingCondition.build(params[:stopping_condition], context: "#{context}[:stopping_condition]") unless params[:stopping_condition].nil?
        type.inference_image = params[:inference_image]
        type.model_package_version_arn = params[:model_package_version_arn]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.failure_reason = params[:failure_reason]
        type.model_artifacts = ModelArtifacts.build(params[:model_artifacts], context: "#{context}[:model_artifacts]") unless params[:model_artifacts].nil?
        type.model_digests = ModelDigests.build(params[:model_digests], context: "#{context}[:model_digests]") unless params[:model_digests].nil?
        type.role_arn = params[:role_arn]
        type.input_config = InputConfig.build(params[:input_config], context: "#{context}[:input_config]") unless params[:input_config].nil?
        type.output_config = OutputConfig.build(params[:output_config], context: "#{context}[:output_config]") unless params[:output_config].nil?
        type.vpc_config = NeoVpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type
      end
    end

    module DescribeContextInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeContextInput, context: context)
        type = Types::DescribeContextInput.new
        type.context_name = params[:context_name]
        type
      end
    end

    module DescribeContextOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeContextOutput, context: context)
        type = Types::DescribeContextOutput.new
        type.context_name = params[:context_name]
        type.context_arn = params[:context_arn]
        type.source = ContextSource.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.context_type = params[:context_type]
        type.description = params[:description]
        type.properties = LineageEntityParameters.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type.creation_time = params[:creation_time]
        type.created_by = UserContext.build(params[:created_by], context: "#{context}[:created_by]") unless params[:created_by].nil?
        type.last_modified_time = params[:last_modified_time]
        type.last_modified_by = UserContext.build(params[:last_modified_by], context: "#{context}[:last_modified_by]") unless params[:last_modified_by].nil?
        type.lineage_group_arn = params[:lineage_group_arn]
        type
      end
    end

    module DescribeDataQualityJobDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDataQualityJobDefinitionInput, context: context)
        type = Types::DescribeDataQualityJobDefinitionInput.new
        type.job_definition_name = params[:job_definition_name]
        type
      end
    end

    module DescribeDataQualityJobDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDataQualityJobDefinitionOutput, context: context)
        type = Types::DescribeDataQualityJobDefinitionOutput.new
        type.job_definition_arn = params[:job_definition_arn]
        type.job_definition_name = params[:job_definition_name]
        type.creation_time = params[:creation_time]
        type.data_quality_baseline_config = DataQualityBaselineConfig.build(params[:data_quality_baseline_config], context: "#{context}[:data_quality_baseline_config]") unless params[:data_quality_baseline_config].nil?
        type.data_quality_app_specification = DataQualityAppSpecification.build(params[:data_quality_app_specification], context: "#{context}[:data_quality_app_specification]") unless params[:data_quality_app_specification].nil?
        type.data_quality_job_input = DataQualityJobInput.build(params[:data_quality_job_input], context: "#{context}[:data_quality_job_input]") unless params[:data_quality_job_input].nil?
        type.data_quality_job_output_config = MonitoringOutputConfig.build(params[:data_quality_job_output_config], context: "#{context}[:data_quality_job_output_config]") unless params[:data_quality_job_output_config].nil?
        type.job_resources = MonitoringResources.build(params[:job_resources], context: "#{context}[:job_resources]") unless params[:job_resources].nil?
        type.network_config = MonitoringNetworkConfig.build(params[:network_config], context: "#{context}[:network_config]") unless params[:network_config].nil?
        type.role_arn = params[:role_arn]
        type.stopping_condition = MonitoringStoppingCondition.build(params[:stopping_condition], context: "#{context}[:stopping_condition]") unless params[:stopping_condition].nil?
        type
      end
    end

    module DescribeDeviceFleetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDeviceFleetInput, context: context)
        type = Types::DescribeDeviceFleetInput.new
        type.device_fleet_name = params[:device_fleet_name]
        type
      end
    end

    module DescribeDeviceFleetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDeviceFleetOutput, context: context)
        type = Types::DescribeDeviceFleetOutput.new
        type.device_fleet_name = params[:device_fleet_name]
        type.device_fleet_arn = params[:device_fleet_arn]
        type.output_config = EdgeOutputConfig.build(params[:output_config], context: "#{context}[:output_config]") unless params[:output_config].nil?
        type.description = params[:description]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.role_arn = params[:role_arn]
        type.iot_role_alias = params[:iot_role_alias]
        type
      end
    end

    module DescribeDeviceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDeviceInput, context: context)
        type = Types::DescribeDeviceInput.new
        type.next_token = params[:next_token]
        type.device_name = params[:device_name]
        type.device_fleet_name = params[:device_fleet_name]
        type
      end
    end

    module DescribeDeviceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDeviceOutput, context: context)
        type = Types::DescribeDeviceOutput.new
        type.device_arn = params[:device_arn]
        type.device_name = params[:device_name]
        type.description = params[:description]
        type.device_fleet_name = params[:device_fleet_name]
        type.iot_thing_name = params[:iot_thing_name]
        type.registration_time = params[:registration_time]
        type.latest_heartbeat = params[:latest_heartbeat]
        type.models = EdgeModels.build(params[:models], context: "#{context}[:models]") unless params[:models].nil?
        type.max_models = params[:max_models]
        type.next_token = params[:next_token]
        type.agent_version = params[:agent_version]
        type
      end
    end

    module DescribeDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDomainInput, context: context)
        type = Types::DescribeDomainInput.new
        type.domain_id = params[:domain_id]
        type
      end
    end

    module DescribeDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDomainOutput, context: context)
        type = Types::DescribeDomainOutput.new
        type.domain_arn = params[:domain_arn]
        type.domain_id = params[:domain_id]
        type.domain_name = params[:domain_name]
        type.home_efs_file_system_id = params[:home_efs_file_system_id]
        type.single_sign_on_managed_application_instance_id = params[:single_sign_on_managed_application_instance_id]
        type.status = params[:status]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.failure_reason = params[:failure_reason]
        type.auth_mode = params[:auth_mode]
        type.default_user_settings = UserSettings.build(params[:default_user_settings], context: "#{context}[:default_user_settings]") unless params[:default_user_settings].nil?
        type.app_network_access_type = params[:app_network_access_type]
        type.home_efs_file_system_kms_key_id = params[:home_efs_file_system_kms_key_id]
        type.subnet_ids = Subnets.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.url = params[:url]
        type.vpc_id = params[:vpc_id]
        type.kms_key_id = params[:kms_key_id]
        type.domain_settings = DomainSettings.build(params[:domain_settings], context: "#{context}[:domain_settings]") unless params[:domain_settings].nil?
        type.app_security_group_management = params[:app_security_group_management]
        type.security_group_id_for_domain_boundary = params[:security_group_id_for_domain_boundary]
        type
      end
    end

    module DescribeEdgePackagingJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEdgePackagingJobInput, context: context)
        type = Types::DescribeEdgePackagingJobInput.new
        type.edge_packaging_job_name = params[:edge_packaging_job_name]
        type
      end
    end

    module DescribeEdgePackagingJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEdgePackagingJobOutput, context: context)
        type = Types::DescribeEdgePackagingJobOutput.new
        type.edge_packaging_job_arn = params[:edge_packaging_job_arn]
        type.edge_packaging_job_name = params[:edge_packaging_job_name]
        type.compilation_job_name = params[:compilation_job_name]
        type.model_name = params[:model_name]
        type.model_version = params[:model_version]
        type.role_arn = params[:role_arn]
        type.output_config = EdgeOutputConfig.build(params[:output_config], context: "#{context}[:output_config]") unless params[:output_config].nil?
        type.resource_key = params[:resource_key]
        type.edge_packaging_job_status = params[:edge_packaging_job_status]
        type.edge_packaging_job_status_message = params[:edge_packaging_job_status_message]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.model_artifact = params[:model_artifact]
        type.model_signature = params[:model_signature]
        type.preset_deployment_output = EdgePresetDeploymentOutput.build(params[:preset_deployment_output], context: "#{context}[:preset_deployment_output]") unless params[:preset_deployment_output].nil?
        type
      end
    end

    module DescribeEndpointConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEndpointConfigInput, context: context)
        type = Types::DescribeEndpointConfigInput.new
        type.endpoint_config_name = params[:endpoint_config_name]
        type
      end
    end

    module DescribeEndpointConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEndpointConfigOutput, context: context)
        type = Types::DescribeEndpointConfigOutput.new
        type.endpoint_config_name = params[:endpoint_config_name]
        type.endpoint_config_arn = params[:endpoint_config_arn]
        type.production_variants = ProductionVariantList.build(params[:production_variants], context: "#{context}[:production_variants]") unless params[:production_variants].nil?
        type.data_capture_config = DataCaptureConfig.build(params[:data_capture_config], context: "#{context}[:data_capture_config]") unless params[:data_capture_config].nil?
        type.kms_key_id = params[:kms_key_id]
        type.creation_time = params[:creation_time]
        type.async_inference_config = AsyncInferenceConfig.build(params[:async_inference_config], context: "#{context}[:async_inference_config]") unless params[:async_inference_config].nil?
        type
      end
    end

    module DescribeEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEndpointInput, context: context)
        type = Types::DescribeEndpointInput.new
        type.endpoint_name = params[:endpoint_name]
        type
      end
    end

    module DescribeEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEndpointOutput, context: context)
        type = Types::DescribeEndpointOutput.new
        type.endpoint_name = params[:endpoint_name]
        type.endpoint_arn = params[:endpoint_arn]
        type.endpoint_config_name = params[:endpoint_config_name]
        type.production_variants = ProductionVariantSummaryList.build(params[:production_variants], context: "#{context}[:production_variants]") unless params[:production_variants].nil?
        type.data_capture_config = DataCaptureConfigSummary.build(params[:data_capture_config], context: "#{context}[:data_capture_config]") unless params[:data_capture_config].nil?
        type.endpoint_status = params[:endpoint_status]
        type.failure_reason = params[:failure_reason]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.last_deployment_config = DeploymentConfig.build(params[:last_deployment_config], context: "#{context}[:last_deployment_config]") unless params[:last_deployment_config].nil?
        type.async_inference_config = AsyncInferenceConfig.build(params[:async_inference_config], context: "#{context}[:async_inference_config]") unless params[:async_inference_config].nil?
        type.pending_deployment_summary = PendingDeploymentSummary.build(params[:pending_deployment_summary], context: "#{context}[:pending_deployment_summary]") unless params[:pending_deployment_summary].nil?
        type
      end
    end

    module DescribeExperimentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeExperimentInput, context: context)
        type = Types::DescribeExperimentInput.new
        type.experiment_name = params[:experiment_name]
        type
      end
    end

    module DescribeExperimentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeExperimentOutput, context: context)
        type = Types::DescribeExperimentOutput.new
        type.experiment_name = params[:experiment_name]
        type.experiment_arn = params[:experiment_arn]
        type.display_name = params[:display_name]
        type.source = ExperimentSource.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.description = params[:description]
        type.creation_time = params[:creation_time]
        type.created_by = UserContext.build(params[:created_by], context: "#{context}[:created_by]") unless params[:created_by].nil?
        type.last_modified_time = params[:last_modified_time]
        type.last_modified_by = UserContext.build(params[:last_modified_by], context: "#{context}[:last_modified_by]") unless params[:last_modified_by].nil?
        type
      end
    end

    module DescribeFeatureGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFeatureGroupInput, context: context)
        type = Types::DescribeFeatureGroupInput.new
        type.feature_group_name = params[:feature_group_name]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeFeatureGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFeatureGroupOutput, context: context)
        type = Types::DescribeFeatureGroupOutput.new
        type.feature_group_arn = params[:feature_group_arn]
        type.feature_group_name = params[:feature_group_name]
        type.record_identifier_feature_name = params[:record_identifier_feature_name]
        type.event_time_feature_name = params[:event_time_feature_name]
        type.feature_definitions = FeatureDefinitions.build(params[:feature_definitions], context: "#{context}[:feature_definitions]") unless params[:feature_definitions].nil?
        type.creation_time = params[:creation_time]
        type.online_store_config = OnlineStoreConfig.build(params[:online_store_config], context: "#{context}[:online_store_config]") unless params[:online_store_config].nil?
        type.offline_store_config = OfflineStoreConfig.build(params[:offline_store_config], context: "#{context}[:offline_store_config]") unless params[:offline_store_config].nil?
        type.role_arn = params[:role_arn]
        type.feature_group_status = params[:feature_group_status]
        type.offline_store_status = OfflineStoreStatus.build(params[:offline_store_status], context: "#{context}[:offline_store_status]") unless params[:offline_store_status].nil?
        type.failure_reason = params[:failure_reason]
        type.description = params[:description]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeFlowDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFlowDefinitionInput, context: context)
        type = Types::DescribeFlowDefinitionInput.new
        type.flow_definition_name = params[:flow_definition_name]
        type
      end
    end

    module DescribeFlowDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFlowDefinitionOutput, context: context)
        type = Types::DescribeFlowDefinitionOutput.new
        type.flow_definition_arn = params[:flow_definition_arn]
        type.flow_definition_name = params[:flow_definition_name]
        type.flow_definition_status = params[:flow_definition_status]
        type.creation_time = params[:creation_time]
        type.human_loop_request_source = HumanLoopRequestSource.build(params[:human_loop_request_source], context: "#{context}[:human_loop_request_source]") unless params[:human_loop_request_source].nil?
        type.human_loop_activation_config = HumanLoopActivationConfig.build(params[:human_loop_activation_config], context: "#{context}[:human_loop_activation_config]") unless params[:human_loop_activation_config].nil?
        type.human_loop_config = HumanLoopConfig.build(params[:human_loop_config], context: "#{context}[:human_loop_config]") unless params[:human_loop_config].nil?
        type.output_config = FlowDefinitionOutputConfig.build(params[:output_config], context: "#{context}[:output_config]") unless params[:output_config].nil?
        type.role_arn = params[:role_arn]
        type.failure_reason = params[:failure_reason]
        type
      end
    end

    module DescribeHumanTaskUiInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeHumanTaskUiInput, context: context)
        type = Types::DescribeHumanTaskUiInput.new
        type.human_task_ui_name = params[:human_task_ui_name]
        type
      end
    end

    module DescribeHumanTaskUiOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeHumanTaskUiOutput, context: context)
        type = Types::DescribeHumanTaskUiOutput.new
        type.human_task_ui_arn = params[:human_task_ui_arn]
        type.human_task_ui_name = params[:human_task_ui_name]
        type.human_task_ui_status = params[:human_task_ui_status]
        type.creation_time = params[:creation_time]
        type.ui_template = UiTemplateInfo.build(params[:ui_template], context: "#{context}[:ui_template]") unless params[:ui_template].nil?
        type
      end
    end

    module DescribeHyperParameterTuningJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeHyperParameterTuningJobInput, context: context)
        type = Types::DescribeHyperParameterTuningJobInput.new
        type.hyper_parameter_tuning_job_name = params[:hyper_parameter_tuning_job_name]
        type
      end
    end

    module DescribeHyperParameterTuningJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeHyperParameterTuningJobOutput, context: context)
        type = Types::DescribeHyperParameterTuningJobOutput.new
        type.hyper_parameter_tuning_job_name = params[:hyper_parameter_tuning_job_name]
        type.hyper_parameter_tuning_job_arn = params[:hyper_parameter_tuning_job_arn]
        type.hyper_parameter_tuning_job_config = HyperParameterTuningJobConfig.build(params[:hyper_parameter_tuning_job_config], context: "#{context}[:hyper_parameter_tuning_job_config]") unless params[:hyper_parameter_tuning_job_config].nil?
        type.training_job_definition = HyperParameterTrainingJobDefinition.build(params[:training_job_definition], context: "#{context}[:training_job_definition]") unless params[:training_job_definition].nil?
        type.training_job_definitions = HyperParameterTrainingJobDefinitions.build(params[:training_job_definitions], context: "#{context}[:training_job_definitions]") unless params[:training_job_definitions].nil?
        type.hyper_parameter_tuning_job_status = params[:hyper_parameter_tuning_job_status]
        type.creation_time = params[:creation_time]
        type.hyper_parameter_tuning_end_time = params[:hyper_parameter_tuning_end_time]
        type.last_modified_time = params[:last_modified_time]
        type.training_job_status_counters = TrainingJobStatusCounters.build(params[:training_job_status_counters], context: "#{context}[:training_job_status_counters]") unless params[:training_job_status_counters].nil?
        type.objective_status_counters = ObjectiveStatusCounters.build(params[:objective_status_counters], context: "#{context}[:objective_status_counters]") unless params[:objective_status_counters].nil?
        type.best_training_job = HyperParameterTrainingJobSummary.build(params[:best_training_job], context: "#{context}[:best_training_job]") unless params[:best_training_job].nil?
        type.overall_best_training_job = HyperParameterTrainingJobSummary.build(params[:overall_best_training_job], context: "#{context}[:overall_best_training_job]") unless params[:overall_best_training_job].nil?
        type.warm_start_config = HyperParameterTuningJobWarmStartConfig.build(params[:warm_start_config], context: "#{context}[:warm_start_config]") unless params[:warm_start_config].nil?
        type.failure_reason = params[:failure_reason]
        type
      end
    end

    module DescribeImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeImageInput, context: context)
        type = Types::DescribeImageInput.new
        type.image_name = params[:image_name]
        type
      end
    end

    module DescribeImageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeImageOutput, context: context)
        type = Types::DescribeImageOutput.new
        type.creation_time = params[:creation_time]
        type.description = params[:description]
        type.display_name = params[:display_name]
        type.failure_reason = params[:failure_reason]
        type.image_arn = params[:image_arn]
        type.image_name = params[:image_name]
        type.image_status = params[:image_status]
        type.last_modified_time = params[:last_modified_time]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module DescribeImageVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeImageVersionInput, context: context)
        type = Types::DescribeImageVersionInput.new
        type.image_name = params[:image_name]
        type.version = params[:version]
        type
      end
    end

    module DescribeImageVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeImageVersionOutput, context: context)
        type = Types::DescribeImageVersionOutput.new
        type.base_image = params[:base_image]
        type.container_image = params[:container_image]
        type.creation_time = params[:creation_time]
        type.failure_reason = params[:failure_reason]
        type.image_arn = params[:image_arn]
        type.image_version_arn = params[:image_version_arn]
        type.image_version_status = params[:image_version_status]
        type.last_modified_time = params[:last_modified_time]
        type.version = params[:version]
        type
      end
    end

    module DescribeInferenceRecommendationsJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInferenceRecommendationsJobInput, context: context)
        type = Types::DescribeInferenceRecommendationsJobInput.new
        type.job_name = params[:job_name]
        type
      end
    end

    module DescribeInferenceRecommendationsJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInferenceRecommendationsJobOutput, context: context)
        type = Types::DescribeInferenceRecommendationsJobOutput.new
        type.job_name = params[:job_name]
        type.job_description = params[:job_description]
        type.job_type = params[:job_type]
        type.job_arn = params[:job_arn]
        type.role_arn = params[:role_arn]
        type.status = params[:status]
        type.creation_time = params[:creation_time]
        type.completion_time = params[:completion_time]
        type.last_modified_time = params[:last_modified_time]
        type.failure_reason = params[:failure_reason]
        type.input_config = RecommendationJobInputConfig.build(params[:input_config], context: "#{context}[:input_config]") unless params[:input_config].nil?
        type.stopping_conditions = RecommendationJobStoppingConditions.build(params[:stopping_conditions], context: "#{context}[:stopping_conditions]") unless params[:stopping_conditions].nil?
        type.inference_recommendations = InferenceRecommendations.build(params[:inference_recommendations], context: "#{context}[:inference_recommendations]") unless params[:inference_recommendations].nil?
        type
      end
    end

    module DescribeLabelingJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLabelingJobInput, context: context)
        type = Types::DescribeLabelingJobInput.new
        type.labeling_job_name = params[:labeling_job_name]
        type
      end
    end

    module DescribeLabelingJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLabelingJobOutput, context: context)
        type = Types::DescribeLabelingJobOutput.new
        type.labeling_job_status = params[:labeling_job_status]
        type.label_counters = LabelCounters.build(params[:label_counters], context: "#{context}[:label_counters]") unless params[:label_counters].nil?
        type.failure_reason = params[:failure_reason]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.job_reference_code = params[:job_reference_code]
        type.labeling_job_name = params[:labeling_job_name]
        type.labeling_job_arn = params[:labeling_job_arn]
        type.label_attribute_name = params[:label_attribute_name]
        type.input_config = LabelingJobInputConfig.build(params[:input_config], context: "#{context}[:input_config]") unless params[:input_config].nil?
        type.output_config = LabelingJobOutputConfig.build(params[:output_config], context: "#{context}[:output_config]") unless params[:output_config].nil?
        type.role_arn = params[:role_arn]
        type.label_category_config_s3_uri = params[:label_category_config_s3_uri]
        type.stopping_conditions = LabelingJobStoppingConditions.build(params[:stopping_conditions], context: "#{context}[:stopping_conditions]") unless params[:stopping_conditions].nil?
        type.labeling_job_algorithms_config = LabelingJobAlgorithmsConfig.build(params[:labeling_job_algorithms_config], context: "#{context}[:labeling_job_algorithms_config]") unless params[:labeling_job_algorithms_config].nil?
        type.human_task_config = HumanTaskConfig.build(params[:human_task_config], context: "#{context}[:human_task_config]") unless params[:human_task_config].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.labeling_job_output = LabelingJobOutput.build(params[:labeling_job_output], context: "#{context}[:labeling_job_output]") unless params[:labeling_job_output].nil?
        type
      end
    end

    module DescribeLineageGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLineageGroupInput, context: context)
        type = Types::DescribeLineageGroupInput.new
        type.lineage_group_name = params[:lineage_group_name]
        type
      end
    end

    module DescribeLineageGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLineageGroupOutput, context: context)
        type = Types::DescribeLineageGroupOutput.new
        type.lineage_group_name = params[:lineage_group_name]
        type.lineage_group_arn = params[:lineage_group_arn]
        type.display_name = params[:display_name]
        type.description = params[:description]
        type.creation_time = params[:creation_time]
        type.created_by = UserContext.build(params[:created_by], context: "#{context}[:created_by]") unless params[:created_by].nil?
        type.last_modified_time = params[:last_modified_time]
        type.last_modified_by = UserContext.build(params[:last_modified_by], context: "#{context}[:last_modified_by]") unless params[:last_modified_by].nil?
        type
      end
    end

    module DescribeModelBiasJobDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeModelBiasJobDefinitionInput, context: context)
        type = Types::DescribeModelBiasJobDefinitionInput.new
        type.job_definition_name = params[:job_definition_name]
        type
      end
    end

    module DescribeModelBiasJobDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeModelBiasJobDefinitionOutput, context: context)
        type = Types::DescribeModelBiasJobDefinitionOutput.new
        type.job_definition_arn = params[:job_definition_arn]
        type.job_definition_name = params[:job_definition_name]
        type.creation_time = params[:creation_time]
        type.model_bias_baseline_config = ModelBiasBaselineConfig.build(params[:model_bias_baseline_config], context: "#{context}[:model_bias_baseline_config]") unless params[:model_bias_baseline_config].nil?
        type.model_bias_app_specification = ModelBiasAppSpecification.build(params[:model_bias_app_specification], context: "#{context}[:model_bias_app_specification]") unless params[:model_bias_app_specification].nil?
        type.model_bias_job_input = ModelBiasJobInput.build(params[:model_bias_job_input], context: "#{context}[:model_bias_job_input]") unless params[:model_bias_job_input].nil?
        type.model_bias_job_output_config = MonitoringOutputConfig.build(params[:model_bias_job_output_config], context: "#{context}[:model_bias_job_output_config]") unless params[:model_bias_job_output_config].nil?
        type.job_resources = MonitoringResources.build(params[:job_resources], context: "#{context}[:job_resources]") unless params[:job_resources].nil?
        type.network_config = MonitoringNetworkConfig.build(params[:network_config], context: "#{context}[:network_config]") unless params[:network_config].nil?
        type.role_arn = params[:role_arn]
        type.stopping_condition = MonitoringStoppingCondition.build(params[:stopping_condition], context: "#{context}[:stopping_condition]") unless params[:stopping_condition].nil?
        type
      end
    end

    module DescribeModelExplainabilityJobDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeModelExplainabilityJobDefinitionInput, context: context)
        type = Types::DescribeModelExplainabilityJobDefinitionInput.new
        type.job_definition_name = params[:job_definition_name]
        type
      end
    end

    module DescribeModelExplainabilityJobDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeModelExplainabilityJobDefinitionOutput, context: context)
        type = Types::DescribeModelExplainabilityJobDefinitionOutput.new
        type.job_definition_arn = params[:job_definition_arn]
        type.job_definition_name = params[:job_definition_name]
        type.creation_time = params[:creation_time]
        type.model_explainability_baseline_config = ModelExplainabilityBaselineConfig.build(params[:model_explainability_baseline_config], context: "#{context}[:model_explainability_baseline_config]") unless params[:model_explainability_baseline_config].nil?
        type.model_explainability_app_specification = ModelExplainabilityAppSpecification.build(params[:model_explainability_app_specification], context: "#{context}[:model_explainability_app_specification]") unless params[:model_explainability_app_specification].nil?
        type.model_explainability_job_input = ModelExplainabilityJobInput.build(params[:model_explainability_job_input], context: "#{context}[:model_explainability_job_input]") unless params[:model_explainability_job_input].nil?
        type.model_explainability_job_output_config = MonitoringOutputConfig.build(params[:model_explainability_job_output_config], context: "#{context}[:model_explainability_job_output_config]") unless params[:model_explainability_job_output_config].nil?
        type.job_resources = MonitoringResources.build(params[:job_resources], context: "#{context}[:job_resources]") unless params[:job_resources].nil?
        type.network_config = MonitoringNetworkConfig.build(params[:network_config], context: "#{context}[:network_config]") unless params[:network_config].nil?
        type.role_arn = params[:role_arn]
        type.stopping_condition = MonitoringStoppingCondition.build(params[:stopping_condition], context: "#{context}[:stopping_condition]") unless params[:stopping_condition].nil?
        type
      end
    end

    module DescribeModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeModelInput, context: context)
        type = Types::DescribeModelInput.new
        type.model_name = params[:model_name]
        type
      end
    end

    module DescribeModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeModelOutput, context: context)
        type = Types::DescribeModelOutput.new
        type.model_name = params[:model_name]
        type.primary_container = ContainerDefinition.build(params[:primary_container], context: "#{context}[:primary_container]") unless params[:primary_container].nil?
        type.containers = ContainerDefinitionList.build(params[:containers], context: "#{context}[:containers]") unless params[:containers].nil?
        type.inference_execution_config = InferenceExecutionConfig.build(params[:inference_execution_config], context: "#{context}[:inference_execution_config]") unless params[:inference_execution_config].nil?
        type.execution_role_arn = params[:execution_role_arn]
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.creation_time = params[:creation_time]
        type.model_arn = params[:model_arn]
        type.enable_network_isolation = params[:enable_network_isolation]
        type
      end
    end

    module DescribeModelPackageGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeModelPackageGroupInput, context: context)
        type = Types::DescribeModelPackageGroupInput.new
        type.model_package_group_name = params[:model_package_group_name]
        type
      end
    end

    module DescribeModelPackageGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeModelPackageGroupOutput, context: context)
        type = Types::DescribeModelPackageGroupOutput.new
        type.model_package_group_name = params[:model_package_group_name]
        type.model_package_group_arn = params[:model_package_group_arn]
        type.model_package_group_description = params[:model_package_group_description]
        type.creation_time = params[:creation_time]
        type.created_by = UserContext.build(params[:created_by], context: "#{context}[:created_by]") unless params[:created_by].nil?
        type.model_package_group_status = params[:model_package_group_status]
        type
      end
    end

    module DescribeModelPackageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeModelPackageInput, context: context)
        type = Types::DescribeModelPackageInput.new
        type.model_package_name = params[:model_package_name]
        type
      end
    end

    module DescribeModelPackageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeModelPackageOutput, context: context)
        type = Types::DescribeModelPackageOutput.new
        type.model_package_name = params[:model_package_name]
        type.model_package_group_name = params[:model_package_group_name]
        type.model_package_version = params[:model_package_version]
        type.model_package_arn = params[:model_package_arn]
        type.model_package_description = params[:model_package_description]
        type.creation_time = params[:creation_time]
        type.inference_specification = InferenceSpecification.build(params[:inference_specification], context: "#{context}[:inference_specification]") unless params[:inference_specification].nil?
        type.source_algorithm_specification = SourceAlgorithmSpecification.build(params[:source_algorithm_specification], context: "#{context}[:source_algorithm_specification]") unless params[:source_algorithm_specification].nil?
        type.validation_specification = ModelPackageValidationSpecification.build(params[:validation_specification], context: "#{context}[:validation_specification]") unless params[:validation_specification].nil?
        type.model_package_status = params[:model_package_status]
        type.model_package_status_details = ModelPackageStatusDetails.build(params[:model_package_status_details], context: "#{context}[:model_package_status_details]") unless params[:model_package_status_details].nil?
        type.certify_for_marketplace = params[:certify_for_marketplace]
        type.model_approval_status = params[:model_approval_status]
        type.created_by = UserContext.build(params[:created_by], context: "#{context}[:created_by]") unless params[:created_by].nil?
        type.metadata_properties = MetadataProperties.build(params[:metadata_properties], context: "#{context}[:metadata_properties]") unless params[:metadata_properties].nil?
        type.model_metrics = ModelMetrics.build(params[:model_metrics], context: "#{context}[:model_metrics]") unless params[:model_metrics].nil?
        type.last_modified_time = params[:last_modified_time]
        type.last_modified_by = UserContext.build(params[:last_modified_by], context: "#{context}[:last_modified_by]") unless params[:last_modified_by].nil?
        type.approval_description = params[:approval_description]
        type.customer_metadata_properties = CustomerMetadataMap.build(params[:customer_metadata_properties], context: "#{context}[:customer_metadata_properties]") unless params[:customer_metadata_properties].nil?
        type.drift_check_baselines = DriftCheckBaselines.build(params[:drift_check_baselines], context: "#{context}[:drift_check_baselines]") unless params[:drift_check_baselines].nil?
        type.domain = params[:domain]
        type.task = params[:task]
        type.sample_payload_url = params[:sample_payload_url]
        type.additional_inference_specifications = AdditionalInferenceSpecifications.build(params[:additional_inference_specifications], context: "#{context}[:additional_inference_specifications]") unless params[:additional_inference_specifications].nil?
        type
      end
    end

    module DescribeModelQualityJobDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeModelQualityJobDefinitionInput, context: context)
        type = Types::DescribeModelQualityJobDefinitionInput.new
        type.job_definition_name = params[:job_definition_name]
        type
      end
    end

    module DescribeModelQualityJobDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeModelQualityJobDefinitionOutput, context: context)
        type = Types::DescribeModelQualityJobDefinitionOutput.new
        type.job_definition_arn = params[:job_definition_arn]
        type.job_definition_name = params[:job_definition_name]
        type.creation_time = params[:creation_time]
        type.model_quality_baseline_config = ModelQualityBaselineConfig.build(params[:model_quality_baseline_config], context: "#{context}[:model_quality_baseline_config]") unless params[:model_quality_baseline_config].nil?
        type.model_quality_app_specification = ModelQualityAppSpecification.build(params[:model_quality_app_specification], context: "#{context}[:model_quality_app_specification]") unless params[:model_quality_app_specification].nil?
        type.model_quality_job_input = ModelQualityJobInput.build(params[:model_quality_job_input], context: "#{context}[:model_quality_job_input]") unless params[:model_quality_job_input].nil?
        type.model_quality_job_output_config = MonitoringOutputConfig.build(params[:model_quality_job_output_config], context: "#{context}[:model_quality_job_output_config]") unless params[:model_quality_job_output_config].nil?
        type.job_resources = MonitoringResources.build(params[:job_resources], context: "#{context}[:job_resources]") unless params[:job_resources].nil?
        type.network_config = MonitoringNetworkConfig.build(params[:network_config], context: "#{context}[:network_config]") unless params[:network_config].nil?
        type.role_arn = params[:role_arn]
        type.stopping_condition = MonitoringStoppingCondition.build(params[:stopping_condition], context: "#{context}[:stopping_condition]") unless params[:stopping_condition].nil?
        type
      end
    end

    module DescribeMonitoringScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMonitoringScheduleInput, context: context)
        type = Types::DescribeMonitoringScheduleInput.new
        type.monitoring_schedule_name = params[:monitoring_schedule_name]
        type
      end
    end

    module DescribeMonitoringScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMonitoringScheduleOutput, context: context)
        type = Types::DescribeMonitoringScheduleOutput.new
        type.monitoring_schedule_arn = params[:monitoring_schedule_arn]
        type.monitoring_schedule_name = params[:monitoring_schedule_name]
        type.monitoring_schedule_status = params[:monitoring_schedule_status]
        type.monitoring_type = params[:monitoring_type]
        type.failure_reason = params[:failure_reason]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.monitoring_schedule_config = MonitoringScheduleConfig.build(params[:monitoring_schedule_config], context: "#{context}[:monitoring_schedule_config]") unless params[:monitoring_schedule_config].nil?
        type.endpoint_name = params[:endpoint_name]
        type.last_monitoring_execution_summary = MonitoringExecutionSummary.build(params[:last_monitoring_execution_summary], context: "#{context}[:last_monitoring_execution_summary]") unless params[:last_monitoring_execution_summary].nil?
        type
      end
    end

    module DescribeNotebookInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNotebookInstanceInput, context: context)
        type = Types::DescribeNotebookInstanceInput.new
        type.notebook_instance_name = params[:notebook_instance_name]
        type
      end
    end

    module DescribeNotebookInstanceLifecycleConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNotebookInstanceLifecycleConfigInput, context: context)
        type = Types::DescribeNotebookInstanceLifecycleConfigInput.new
        type.notebook_instance_lifecycle_config_name = params[:notebook_instance_lifecycle_config_name]
        type
      end
    end

    module DescribeNotebookInstanceLifecycleConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNotebookInstanceLifecycleConfigOutput, context: context)
        type = Types::DescribeNotebookInstanceLifecycleConfigOutput.new
        type.notebook_instance_lifecycle_config_arn = params[:notebook_instance_lifecycle_config_arn]
        type.notebook_instance_lifecycle_config_name = params[:notebook_instance_lifecycle_config_name]
        type.on_create = NotebookInstanceLifecycleConfigList.build(params[:on_create], context: "#{context}[:on_create]") unless params[:on_create].nil?
        type.on_start = NotebookInstanceLifecycleConfigList.build(params[:on_start], context: "#{context}[:on_start]") unless params[:on_start].nil?
        type.last_modified_time = params[:last_modified_time]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module DescribeNotebookInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNotebookInstanceOutput, context: context)
        type = Types::DescribeNotebookInstanceOutput.new
        type.notebook_instance_arn = params[:notebook_instance_arn]
        type.notebook_instance_name = params[:notebook_instance_name]
        type.notebook_instance_status = params[:notebook_instance_status]
        type.failure_reason = params[:failure_reason]
        type.url = params[:url]
        type.instance_type = params[:instance_type]
        type.subnet_id = params[:subnet_id]
        type.security_groups = SecurityGroupIds.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.role_arn = params[:role_arn]
        type.kms_key_id = params[:kms_key_id]
        type.network_interface_id = params[:network_interface_id]
        type.last_modified_time = params[:last_modified_time]
        type.creation_time = params[:creation_time]
        type.notebook_instance_lifecycle_config_name = params[:notebook_instance_lifecycle_config_name]
        type.direct_internet_access = params[:direct_internet_access]
        type.volume_size_in_gb = params[:volume_size_in_gb]
        type.accelerator_types = NotebookInstanceAcceleratorTypes.build(params[:accelerator_types], context: "#{context}[:accelerator_types]") unless params[:accelerator_types].nil?
        type.default_code_repository = params[:default_code_repository]
        type.additional_code_repositories = AdditionalCodeRepositoryNamesOrUrls.build(params[:additional_code_repositories], context: "#{context}[:additional_code_repositories]") unless params[:additional_code_repositories].nil?
        type.root_access = params[:root_access]
        type.platform_identifier = params[:platform_identifier]
        type.instance_metadata_service_configuration = InstanceMetadataServiceConfiguration.build(params[:instance_metadata_service_configuration], context: "#{context}[:instance_metadata_service_configuration]") unless params[:instance_metadata_service_configuration].nil?
        type
      end
    end

    module DescribePipelineDefinitionForExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePipelineDefinitionForExecutionInput, context: context)
        type = Types::DescribePipelineDefinitionForExecutionInput.new
        type.pipeline_execution_arn = params[:pipeline_execution_arn]
        type
      end
    end

    module DescribePipelineDefinitionForExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePipelineDefinitionForExecutionOutput, context: context)
        type = Types::DescribePipelineDefinitionForExecutionOutput.new
        type.pipeline_definition = params[:pipeline_definition]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module DescribePipelineExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePipelineExecutionInput, context: context)
        type = Types::DescribePipelineExecutionInput.new
        type.pipeline_execution_arn = params[:pipeline_execution_arn]
        type
      end
    end

    module DescribePipelineExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePipelineExecutionOutput, context: context)
        type = Types::DescribePipelineExecutionOutput.new
        type.pipeline_arn = params[:pipeline_arn]
        type.pipeline_execution_arn = params[:pipeline_execution_arn]
        type.pipeline_execution_display_name = params[:pipeline_execution_display_name]
        type.pipeline_execution_status = params[:pipeline_execution_status]
        type.pipeline_execution_description = params[:pipeline_execution_description]
        type.pipeline_experiment_config = PipelineExperimentConfig.build(params[:pipeline_experiment_config], context: "#{context}[:pipeline_experiment_config]") unless params[:pipeline_experiment_config].nil?
        type.failure_reason = params[:failure_reason]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.created_by = UserContext.build(params[:created_by], context: "#{context}[:created_by]") unless params[:created_by].nil?
        type.last_modified_by = UserContext.build(params[:last_modified_by], context: "#{context}[:last_modified_by]") unless params[:last_modified_by].nil?
        type.parallelism_configuration = ParallelismConfiguration.build(params[:parallelism_configuration], context: "#{context}[:parallelism_configuration]") unless params[:parallelism_configuration].nil?
        type
      end
    end

    module DescribePipelineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePipelineInput, context: context)
        type = Types::DescribePipelineInput.new
        type.pipeline_name = params[:pipeline_name]
        type
      end
    end

    module DescribePipelineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePipelineOutput, context: context)
        type = Types::DescribePipelineOutput.new
        type.pipeline_arn = params[:pipeline_arn]
        type.pipeline_name = params[:pipeline_name]
        type.pipeline_display_name = params[:pipeline_display_name]
        type.pipeline_definition = params[:pipeline_definition]
        type.pipeline_description = params[:pipeline_description]
        type.role_arn = params[:role_arn]
        type.pipeline_status = params[:pipeline_status]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.last_run_time = params[:last_run_time]
        type.created_by = UserContext.build(params[:created_by], context: "#{context}[:created_by]") unless params[:created_by].nil?
        type.last_modified_by = UserContext.build(params[:last_modified_by], context: "#{context}[:last_modified_by]") unless params[:last_modified_by].nil?
        type.parallelism_configuration = ParallelismConfiguration.build(params[:parallelism_configuration], context: "#{context}[:parallelism_configuration]") unless params[:parallelism_configuration].nil?
        type
      end
    end

    module DescribeProcessingJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProcessingJobInput, context: context)
        type = Types::DescribeProcessingJobInput.new
        type.processing_job_name = params[:processing_job_name]
        type
      end
    end

    module DescribeProcessingJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProcessingJobOutput, context: context)
        type = Types::DescribeProcessingJobOutput.new
        type.processing_inputs = ProcessingInputs.build(params[:processing_inputs], context: "#{context}[:processing_inputs]") unless params[:processing_inputs].nil?
        type.processing_output_config = ProcessingOutputConfig.build(params[:processing_output_config], context: "#{context}[:processing_output_config]") unless params[:processing_output_config].nil?
        type.processing_job_name = params[:processing_job_name]
        type.processing_resources = ProcessingResources.build(params[:processing_resources], context: "#{context}[:processing_resources]") unless params[:processing_resources].nil?
        type.stopping_condition = ProcessingStoppingCondition.build(params[:stopping_condition], context: "#{context}[:stopping_condition]") unless params[:stopping_condition].nil?
        type.app_specification = AppSpecification.build(params[:app_specification], context: "#{context}[:app_specification]") unless params[:app_specification].nil?
        type.environment = ProcessingEnvironmentMap.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.network_config = NetworkConfig.build(params[:network_config], context: "#{context}[:network_config]") unless params[:network_config].nil?
        type.role_arn = params[:role_arn]
        type.experiment_config = ExperimentConfig.build(params[:experiment_config], context: "#{context}[:experiment_config]") unless params[:experiment_config].nil?
        type.processing_job_arn = params[:processing_job_arn]
        type.processing_job_status = params[:processing_job_status]
        type.exit_message = params[:exit_message]
        type.failure_reason = params[:failure_reason]
        type.processing_end_time = params[:processing_end_time]
        type.processing_start_time = params[:processing_start_time]
        type.last_modified_time = params[:last_modified_time]
        type.creation_time = params[:creation_time]
        type.monitoring_schedule_arn = params[:monitoring_schedule_arn]
        type.auto_ml_job_arn = params[:auto_ml_job_arn]
        type.training_job_arn = params[:training_job_arn]
        type
      end
    end

    module DescribeProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProjectInput, context: context)
        type = Types::DescribeProjectInput.new
        type.project_name = params[:project_name]
        type
      end
    end

    module DescribeProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProjectOutput, context: context)
        type = Types::DescribeProjectOutput.new
        type.project_arn = params[:project_arn]
        type.project_name = params[:project_name]
        type.project_id = params[:project_id]
        type.project_description = params[:project_description]
        type.service_catalog_provisioning_details = ServiceCatalogProvisioningDetails.build(params[:service_catalog_provisioning_details], context: "#{context}[:service_catalog_provisioning_details]") unless params[:service_catalog_provisioning_details].nil?
        type.service_catalog_provisioned_product_details = ServiceCatalogProvisionedProductDetails.build(params[:service_catalog_provisioned_product_details], context: "#{context}[:service_catalog_provisioned_product_details]") unless params[:service_catalog_provisioned_product_details].nil?
        type.project_status = params[:project_status]
        type.created_by = UserContext.build(params[:created_by], context: "#{context}[:created_by]") unless params[:created_by].nil?
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.last_modified_by = UserContext.build(params[:last_modified_by], context: "#{context}[:last_modified_by]") unless params[:last_modified_by].nil?
        type
      end
    end

    module DescribeStudioLifecycleConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStudioLifecycleConfigInput, context: context)
        type = Types::DescribeStudioLifecycleConfigInput.new
        type.studio_lifecycle_config_name = params[:studio_lifecycle_config_name]
        type
      end
    end

    module DescribeStudioLifecycleConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeStudioLifecycleConfigOutput, context: context)
        type = Types::DescribeStudioLifecycleConfigOutput.new
        type.studio_lifecycle_config_arn = params[:studio_lifecycle_config_arn]
        type.studio_lifecycle_config_name = params[:studio_lifecycle_config_name]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.studio_lifecycle_config_content = params[:studio_lifecycle_config_content]
        type.studio_lifecycle_config_app_type = params[:studio_lifecycle_config_app_type]
        type
      end
    end

    module DescribeSubscribedWorkteamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSubscribedWorkteamInput, context: context)
        type = Types::DescribeSubscribedWorkteamInput.new
        type.workteam_arn = params[:workteam_arn]
        type
      end
    end

    module DescribeSubscribedWorkteamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSubscribedWorkteamOutput, context: context)
        type = Types::DescribeSubscribedWorkteamOutput.new
        type.subscribed_workteam = SubscribedWorkteam.build(params[:subscribed_workteam], context: "#{context}[:subscribed_workteam]") unless params[:subscribed_workteam].nil?
        type
      end
    end

    module DescribeTrainingJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTrainingJobInput, context: context)
        type = Types::DescribeTrainingJobInput.new
        type.training_job_name = params[:training_job_name]
        type
      end
    end

    module DescribeTrainingJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTrainingJobOutput, context: context)
        type = Types::DescribeTrainingJobOutput.new
        type.training_job_name = params[:training_job_name]
        type.training_job_arn = params[:training_job_arn]
        type.tuning_job_arn = params[:tuning_job_arn]
        type.labeling_job_arn = params[:labeling_job_arn]
        type.auto_ml_job_arn = params[:auto_ml_job_arn]
        type.model_artifacts = ModelArtifacts.build(params[:model_artifacts], context: "#{context}[:model_artifacts]") unless params[:model_artifacts].nil?
        type.training_job_status = params[:training_job_status]
        type.secondary_status = params[:secondary_status]
        type.failure_reason = params[:failure_reason]
        type.hyper_parameters = HyperParameters.build(params[:hyper_parameters], context: "#{context}[:hyper_parameters]") unless params[:hyper_parameters].nil?
        type.algorithm_specification = AlgorithmSpecification.build(params[:algorithm_specification], context: "#{context}[:algorithm_specification]") unless params[:algorithm_specification].nil?
        type.role_arn = params[:role_arn]
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.resource_config = ResourceConfig.build(params[:resource_config], context: "#{context}[:resource_config]") unless params[:resource_config].nil?
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.stopping_condition = StoppingCondition.build(params[:stopping_condition], context: "#{context}[:stopping_condition]") unless params[:stopping_condition].nil?
        type.creation_time = params[:creation_time]
        type.training_start_time = params[:training_start_time]
        type.training_end_time = params[:training_end_time]
        type.last_modified_time = params[:last_modified_time]
        type.secondary_status_transitions = SecondaryStatusTransitions.build(params[:secondary_status_transitions], context: "#{context}[:secondary_status_transitions]") unless params[:secondary_status_transitions].nil?
        type.final_metric_data_list = FinalMetricDataList.build(params[:final_metric_data_list], context: "#{context}[:final_metric_data_list]") unless params[:final_metric_data_list].nil?
        type.enable_network_isolation = params[:enable_network_isolation]
        type.enable_inter_container_traffic_encryption = params[:enable_inter_container_traffic_encryption]
        type.enable_managed_spot_training = params[:enable_managed_spot_training]
        type.checkpoint_config = CheckpointConfig.build(params[:checkpoint_config], context: "#{context}[:checkpoint_config]") unless params[:checkpoint_config].nil?
        type.training_time_in_seconds = params[:training_time_in_seconds]
        type.billable_time_in_seconds = params[:billable_time_in_seconds]
        type.debug_hook_config = DebugHookConfig.build(params[:debug_hook_config], context: "#{context}[:debug_hook_config]") unless params[:debug_hook_config].nil?
        type.experiment_config = ExperimentConfig.build(params[:experiment_config], context: "#{context}[:experiment_config]") unless params[:experiment_config].nil?
        type.debug_rule_configurations = DebugRuleConfigurations.build(params[:debug_rule_configurations], context: "#{context}[:debug_rule_configurations]") unless params[:debug_rule_configurations].nil?
        type.tensor_board_output_config = TensorBoardOutputConfig.build(params[:tensor_board_output_config], context: "#{context}[:tensor_board_output_config]") unless params[:tensor_board_output_config].nil?
        type.debug_rule_evaluation_statuses = DebugRuleEvaluationStatuses.build(params[:debug_rule_evaluation_statuses], context: "#{context}[:debug_rule_evaluation_statuses]") unless params[:debug_rule_evaluation_statuses].nil?
        type.profiler_config = ProfilerConfig.build(params[:profiler_config], context: "#{context}[:profiler_config]") unless params[:profiler_config].nil?
        type.profiler_rule_configurations = ProfilerRuleConfigurations.build(params[:profiler_rule_configurations], context: "#{context}[:profiler_rule_configurations]") unless params[:profiler_rule_configurations].nil?
        type.profiler_rule_evaluation_statuses = ProfilerRuleEvaluationStatuses.build(params[:profiler_rule_evaluation_statuses], context: "#{context}[:profiler_rule_evaluation_statuses]") unless params[:profiler_rule_evaluation_statuses].nil?
        type.profiling_status = params[:profiling_status]
        type.retry_strategy = RetryStrategy.build(params[:retry_strategy], context: "#{context}[:retry_strategy]") unless params[:retry_strategy].nil?
        type.environment = TrainingEnvironmentMap.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type
      end
    end

    module DescribeTransformJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTransformJobInput, context: context)
        type = Types::DescribeTransformJobInput.new
        type.transform_job_name = params[:transform_job_name]
        type
      end
    end

    module DescribeTransformJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTransformJobOutput, context: context)
        type = Types::DescribeTransformJobOutput.new
        type.transform_job_name = params[:transform_job_name]
        type.transform_job_arn = params[:transform_job_arn]
        type.transform_job_status = params[:transform_job_status]
        type.failure_reason = params[:failure_reason]
        type.model_name = params[:model_name]
        type.max_concurrent_transforms = params[:max_concurrent_transforms]
        type.model_client_config = ModelClientConfig.build(params[:model_client_config], context: "#{context}[:model_client_config]") unless params[:model_client_config].nil?
        type.max_payload_in_mb = params[:max_payload_in_mb]
        type.batch_strategy = params[:batch_strategy]
        type.environment = TransformEnvironmentMap.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.transform_input = TransformInput.build(params[:transform_input], context: "#{context}[:transform_input]") unless params[:transform_input].nil?
        type.transform_output = TransformOutput.build(params[:transform_output], context: "#{context}[:transform_output]") unless params[:transform_output].nil?
        type.transform_resources = TransformResources.build(params[:transform_resources], context: "#{context}[:transform_resources]") unless params[:transform_resources].nil?
        type.creation_time = params[:creation_time]
        type.transform_start_time = params[:transform_start_time]
        type.transform_end_time = params[:transform_end_time]
        type.labeling_job_arn = params[:labeling_job_arn]
        type.auto_ml_job_arn = params[:auto_ml_job_arn]
        type.data_processing = DataProcessing.build(params[:data_processing], context: "#{context}[:data_processing]") unless params[:data_processing].nil?
        type.experiment_config = ExperimentConfig.build(params[:experiment_config], context: "#{context}[:experiment_config]") unless params[:experiment_config].nil?
        type
      end
    end

    module DescribeTrialComponentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTrialComponentInput, context: context)
        type = Types::DescribeTrialComponentInput.new
        type.trial_component_name = params[:trial_component_name]
        type
      end
    end

    module DescribeTrialComponentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTrialComponentOutput, context: context)
        type = Types::DescribeTrialComponentOutput.new
        type.trial_component_name = params[:trial_component_name]
        type.trial_component_arn = params[:trial_component_arn]
        type.display_name = params[:display_name]
        type.source = TrialComponentSource.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.status = TrialComponentStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.creation_time = params[:creation_time]
        type.created_by = UserContext.build(params[:created_by], context: "#{context}[:created_by]") unless params[:created_by].nil?
        type.last_modified_time = params[:last_modified_time]
        type.last_modified_by = UserContext.build(params[:last_modified_by], context: "#{context}[:last_modified_by]") unless params[:last_modified_by].nil?
        type.parameters = TrialComponentParameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.input_artifacts = TrialComponentArtifacts.build(params[:input_artifacts], context: "#{context}[:input_artifacts]") unless params[:input_artifacts].nil?
        type.output_artifacts = TrialComponentArtifacts.build(params[:output_artifacts], context: "#{context}[:output_artifacts]") unless params[:output_artifacts].nil?
        type.metadata_properties = MetadataProperties.build(params[:metadata_properties], context: "#{context}[:metadata_properties]") unless params[:metadata_properties].nil?
        type.metrics = TrialComponentMetricSummaries.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type.lineage_group_arn = params[:lineage_group_arn]
        type
      end
    end

    module DescribeTrialInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTrialInput, context: context)
        type = Types::DescribeTrialInput.new
        type.trial_name = params[:trial_name]
        type
      end
    end

    module DescribeTrialOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTrialOutput, context: context)
        type = Types::DescribeTrialOutput.new
        type.trial_name = params[:trial_name]
        type.trial_arn = params[:trial_arn]
        type.display_name = params[:display_name]
        type.experiment_name = params[:experiment_name]
        type.source = TrialSource.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.creation_time = params[:creation_time]
        type.created_by = UserContext.build(params[:created_by], context: "#{context}[:created_by]") unless params[:created_by].nil?
        type.last_modified_time = params[:last_modified_time]
        type.last_modified_by = UserContext.build(params[:last_modified_by], context: "#{context}[:last_modified_by]") unless params[:last_modified_by].nil?
        type.metadata_properties = MetadataProperties.build(params[:metadata_properties], context: "#{context}[:metadata_properties]") unless params[:metadata_properties].nil?
        type
      end
    end

    module DescribeUserProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserProfileInput, context: context)
        type = Types::DescribeUserProfileInput.new
        type.domain_id = params[:domain_id]
        type.user_profile_name = params[:user_profile_name]
        type
      end
    end

    module DescribeUserProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserProfileOutput, context: context)
        type = Types::DescribeUserProfileOutput.new
        type.domain_id = params[:domain_id]
        type.user_profile_arn = params[:user_profile_arn]
        type.user_profile_name = params[:user_profile_name]
        type.home_efs_file_system_uid = params[:home_efs_file_system_uid]
        type.status = params[:status]
        type.last_modified_time = params[:last_modified_time]
        type.creation_time = params[:creation_time]
        type.failure_reason = params[:failure_reason]
        type.single_sign_on_user_identifier = params[:single_sign_on_user_identifier]
        type.single_sign_on_user_value = params[:single_sign_on_user_value]
        type.user_settings = UserSettings.build(params[:user_settings], context: "#{context}[:user_settings]") unless params[:user_settings].nil?
        type
      end
    end

    module DescribeWorkforceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkforceInput, context: context)
        type = Types::DescribeWorkforceInput.new
        type.workforce_name = params[:workforce_name]
        type
      end
    end

    module DescribeWorkforceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkforceOutput, context: context)
        type = Types::DescribeWorkforceOutput.new
        type.workforce = Workforce.build(params[:workforce], context: "#{context}[:workforce]") unless params[:workforce].nil?
        type
      end
    end

    module DescribeWorkteamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkteamInput, context: context)
        type = Types::DescribeWorkteamInput.new
        type.workteam_name = params[:workteam_name]
        type
      end
    end

    module DescribeWorkteamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkteamOutput, context: context)
        type = Types::DescribeWorkteamOutput.new
        type.workteam = Workteam.build(params[:workteam], context: "#{context}[:workteam]") unless params[:workteam].nil?
        type
      end
    end

    module DesiredWeightAndCapacity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DesiredWeightAndCapacity, context: context)
        type = Types::DesiredWeightAndCapacity.new
        type.variant_name = params[:variant_name]
        type.desired_weight = params[:desired_weight]
        type.desired_instance_count = params[:desired_instance_count]
        type
      end
    end

    module DesiredWeightAndCapacityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DesiredWeightAndCapacity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Device
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Device, context: context)
        type = Types::Device.new
        type.device_name = params[:device_name]
        type.description = params[:description]
        type.iot_thing_name = params[:iot_thing_name]
        type
      end
    end

    module DeviceFleetSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeviceFleetSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeviceFleetSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceFleetSummary, context: context)
        type = Types::DeviceFleetSummary.new
        type.device_fleet_arn = params[:device_fleet_arn]
        type.device_fleet_name = params[:device_fleet_name]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module DeviceNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DeviceStats
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceStats, context: context)
        type = Types::DeviceStats.new
        type.connected_device_count = params[:connected_device_count]
        type.registered_device_count = params[:registered_device_count]
        type
      end
    end

    module DeviceSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeviceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeviceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceSummary, context: context)
        type = Types::DeviceSummary.new
        type.device_name = params[:device_name]
        type.device_arn = params[:device_arn]
        type.description = params[:description]
        type.device_fleet_name = params[:device_fleet_name]
        type.iot_thing_name = params[:iot_thing_name]
        type.registration_time = params[:registration_time]
        type.latest_heartbeat = params[:latest_heartbeat]
        type.models = EdgeModelSummaries.build(params[:models], context: "#{context}[:models]") unless params[:models].nil?
        type.agent_version = params[:agent_version]
        type
      end
    end

    module Devices
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Device.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DisableSagemakerServicecatalogPortfolioInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableSagemakerServicecatalogPortfolioInput, context: context)
        type = Types::DisableSagemakerServicecatalogPortfolioInput.new
        type
      end
    end

    module DisableSagemakerServicecatalogPortfolioOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableSagemakerServicecatalogPortfolioOutput, context: context)
        type = Types::DisableSagemakerServicecatalogPortfolioOutput.new
        type
      end
    end

    module DisassociateTrialComponentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateTrialComponentInput, context: context)
        type = Types::DisassociateTrialComponentInput.new
        type.trial_component_name = params[:trial_component_name]
        type.trial_name = params[:trial_name]
        type
      end
    end

    module DisassociateTrialComponentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateTrialComponentOutput, context: context)
        type = Types::DisassociateTrialComponentOutput.new
        type.trial_component_arn = params[:trial_component_arn]
        type.trial_arn = params[:trial_arn]
        type
      end
    end

    module DomainDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainDetails, context: context)
        type = Types::DomainDetails.new
        type.domain_arn = params[:domain_arn]
        type.domain_id = params[:domain_id]
        type.domain_name = params[:domain_name]
        type.status = params[:status]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.url = params[:url]
        type
      end
    end

    module DomainList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DomainDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DomainSecurityGroupIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DomainSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainSettings, context: context)
        type = Types::DomainSettings.new
        type.security_group_ids = DomainSecurityGroupIds.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.r_studio_server_pro_domain_settings = RStudioServerProDomainSettings.build(params[:r_studio_server_pro_domain_settings], context: "#{context}[:r_studio_server_pro_domain_settings]") unless params[:r_studio_server_pro_domain_settings].nil?
        type
      end
    end

    module DomainSettingsForUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainSettingsForUpdate, context: context)
        type = Types::DomainSettingsForUpdate.new
        type.r_studio_server_pro_domain_settings_for_update = RStudioServerProDomainSettingsForUpdate.build(params[:r_studio_server_pro_domain_settings_for_update], context: "#{context}[:r_studio_server_pro_domain_settings_for_update]") unless params[:r_studio_server_pro_domain_settings_for_update].nil?
        type
      end
    end

    module DriftCheckBaselines
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DriftCheckBaselines, context: context)
        type = Types::DriftCheckBaselines.new
        type.bias = DriftCheckBias.build(params[:bias], context: "#{context}[:bias]") unless params[:bias].nil?
        type.explainability = DriftCheckExplainability.build(params[:explainability], context: "#{context}[:explainability]") unless params[:explainability].nil?
        type.model_quality = DriftCheckModelQuality.build(params[:model_quality], context: "#{context}[:model_quality]") unless params[:model_quality].nil?
        type.model_data_quality = DriftCheckModelDataQuality.build(params[:model_data_quality], context: "#{context}[:model_data_quality]") unless params[:model_data_quality].nil?
        type
      end
    end

    module DriftCheckBias
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DriftCheckBias, context: context)
        type = Types::DriftCheckBias.new
        type.config_file = FileSource.build(params[:config_file], context: "#{context}[:config_file]") unless params[:config_file].nil?
        type.pre_training_constraints = MetricsSource.build(params[:pre_training_constraints], context: "#{context}[:pre_training_constraints]") unless params[:pre_training_constraints].nil?
        type.post_training_constraints = MetricsSource.build(params[:post_training_constraints], context: "#{context}[:post_training_constraints]") unless params[:post_training_constraints].nil?
        type
      end
    end

    module DriftCheckExplainability
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DriftCheckExplainability, context: context)
        type = Types::DriftCheckExplainability.new
        type.constraints = MetricsSource.build(params[:constraints], context: "#{context}[:constraints]") unless params[:constraints].nil?
        type.config_file = FileSource.build(params[:config_file], context: "#{context}[:config_file]") unless params[:config_file].nil?
        type
      end
    end

    module DriftCheckModelDataQuality
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DriftCheckModelDataQuality, context: context)
        type = Types::DriftCheckModelDataQuality.new
        type.statistics = MetricsSource.build(params[:statistics], context: "#{context}[:statistics]") unless params[:statistics].nil?
        type.constraints = MetricsSource.build(params[:constraints], context: "#{context}[:constraints]") unless params[:constraints].nil?
        type
      end
    end

    module DriftCheckModelQuality
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DriftCheckModelQuality, context: context)
        type = Types::DriftCheckModelQuality.new
        type.statistics = MetricsSource.build(params[:statistics], context: "#{context}[:statistics]") unless params[:statistics].nil?
        type.constraints = MetricsSource.build(params[:constraints], context: "#{context}[:constraints]") unless params[:constraints].nil?
        type
      end
    end

    module EMRStepMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EMRStepMetadata, context: context)
        type = Types::EMRStepMetadata.new
        type.cluster_id = params[:cluster_id]
        type.step_id = params[:step_id]
        type.step_name = params[:step_name]
        type.log_file_path = params[:log_file_path]
        type
      end
    end

    module Edge
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Edge, context: context)
        type = Types::Edge.new
        type.source_arn = params[:source_arn]
        type.destination_arn = params[:destination_arn]
        type.association_type = params[:association_type]
        type
      end
    end

    module EdgeModel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EdgeModel, context: context)
        type = Types::EdgeModel.new
        type.model_name = params[:model_name]
        type.model_version = params[:model_version]
        type.latest_sample_time = params[:latest_sample_time]
        type.latest_inference = params[:latest_inference]
        type
      end
    end

    module EdgeModelStat
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EdgeModelStat, context: context)
        type = Types::EdgeModelStat.new
        type.model_name = params[:model_name]
        type.model_version = params[:model_version]
        type.offline_device_count = params[:offline_device_count]
        type.connected_device_count = params[:connected_device_count]
        type.active_device_count = params[:active_device_count]
        type.sampling_device_count = params[:sampling_device_count]
        type
      end
    end

    module EdgeModelStats
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EdgeModelStat.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EdgeModelSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EdgeModelSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EdgeModelSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EdgeModelSummary, context: context)
        type = Types::EdgeModelSummary.new
        type.model_name = params[:model_name]
        type.model_version = params[:model_version]
        type
      end
    end

    module EdgeModels
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EdgeModel.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EdgeOutputConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EdgeOutputConfig, context: context)
        type = Types::EdgeOutputConfig.new
        type.s3_output_location = params[:s3_output_location]
        type.kms_key_id = params[:kms_key_id]
        type.preset_deployment_type = params[:preset_deployment_type]
        type.preset_deployment_config = params[:preset_deployment_config]
        type
      end
    end

    module EdgePackagingJobSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EdgePackagingJobSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EdgePackagingJobSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EdgePackagingJobSummary, context: context)
        type = Types::EdgePackagingJobSummary.new
        type.edge_packaging_job_arn = params[:edge_packaging_job_arn]
        type.edge_packaging_job_name = params[:edge_packaging_job_name]
        type.edge_packaging_job_status = params[:edge_packaging_job_status]
        type.compilation_job_name = params[:compilation_job_name]
        type.model_name = params[:model_name]
        type.model_version = params[:model_version]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module EdgePresetDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EdgePresetDeploymentOutput, context: context)
        type = Types::EdgePresetDeploymentOutput.new
        type.type = params[:type]
        type.artifact = params[:artifact]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type
      end
    end

    module Edges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Edge.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EnableSagemakerServicecatalogPortfolioInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableSagemakerServicecatalogPortfolioInput, context: context)
        type = Types::EnableSagemakerServicecatalogPortfolioInput.new
        type
      end
    end

    module EnableSagemakerServicecatalogPortfolioOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableSagemakerServicecatalogPortfolioOutput, context: context)
        type = Types::EnableSagemakerServicecatalogPortfolioOutput.new
        type
      end
    end

    module Endpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Endpoint, context: context)
        type = Types::Endpoint.new
        type.endpoint_name = params[:endpoint_name]
        type.endpoint_arn = params[:endpoint_arn]
        type.endpoint_config_name = params[:endpoint_config_name]
        type.production_variants = ProductionVariantSummaryList.build(params[:production_variants], context: "#{context}[:production_variants]") unless params[:production_variants].nil?
        type.data_capture_config = DataCaptureConfigSummary.build(params[:data_capture_config], context: "#{context}[:data_capture_config]") unless params[:data_capture_config].nil?
        type.endpoint_status = params[:endpoint_status]
        type.failure_reason = params[:failure_reason]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.monitoring_schedules = MonitoringScheduleList.build(params[:monitoring_schedules], context: "#{context}[:monitoring_schedules]") unless params[:monitoring_schedules].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module EndpointConfigSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointConfigSummary, context: context)
        type = Types::EndpointConfigSummary.new
        type.endpoint_config_name = params[:endpoint_config_name]
        type.endpoint_config_arn = params[:endpoint_config_arn]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module EndpointConfigSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EndpointConfigSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointInput, context: context)
        type = Types::EndpointInput.new
        type.endpoint_name = params[:endpoint_name]
        type.local_path = params[:local_path]
        type.s3_input_mode = params[:s3_input_mode]
        type.s3_data_distribution_type = params[:s3_data_distribution_type]
        type.features_attribute = params[:features_attribute]
        type.inference_attribute = params[:inference_attribute]
        type.probability_attribute = params[:probability_attribute]
        type.probability_threshold_attribute = params[:probability_threshold_attribute]
        type.start_time_offset = params[:start_time_offset]
        type.end_time_offset = params[:end_time_offset]
        type
      end
    end

    module EndpointInputConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointInputConfiguration, context: context)
        type = Types::EndpointInputConfiguration.new
        type.instance_type = params[:instance_type]
        type.inference_specification_name = params[:inference_specification_name]
        type.environment_parameter_ranges = EnvironmentParameterRanges.build(params[:environment_parameter_ranges], context: "#{context}[:environment_parameter_ranges]") unless params[:environment_parameter_ranges].nil?
        type
      end
    end

    module EndpointInputConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EndpointInputConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EndpointOutputConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointOutputConfiguration, context: context)
        type = Types::EndpointOutputConfiguration.new
        type.endpoint_name = params[:endpoint_name]
        type.variant_name = params[:variant_name]
        type.instance_type = params[:instance_type]
        type.initial_instance_count = params[:initial_instance_count]
        type
      end
    end

    module EndpointSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointSummary, context: context)
        type = Types::EndpointSummary.new
        type.endpoint_name = params[:endpoint_name]
        type.endpoint_arn = params[:endpoint_arn]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.endpoint_status = params[:endpoint_status]
        type
      end
    end

    module EndpointSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EndpointSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EnvironmentMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module EnvironmentParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnvironmentParameter, context: context)
        type = Types::EnvironmentParameter.new
        type.key = params[:key]
        type.value_type = params[:value_type]
        type.value = params[:value]
        type
      end
    end

    module EnvironmentParameterRanges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnvironmentParameterRanges, context: context)
        type = Types::EnvironmentParameterRanges.new
        type.categorical_parameter_ranges = CategoricalParameters.build(params[:categorical_parameter_ranges], context: "#{context}[:categorical_parameter_ranges]") unless params[:categorical_parameter_ranges].nil?
        type
      end
    end

    module EnvironmentParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EnvironmentParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Experiment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Experiment, context: context)
        type = Types::Experiment.new
        type.experiment_name = params[:experiment_name]
        type.experiment_arn = params[:experiment_arn]
        type.display_name = params[:display_name]
        type.source = ExperimentSource.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.description = params[:description]
        type.creation_time = params[:creation_time]
        type.created_by = UserContext.build(params[:created_by], context: "#{context}[:created_by]") unless params[:created_by].nil?
        type.last_modified_time = params[:last_modified_time]
        type.last_modified_by = UserContext.build(params[:last_modified_by], context: "#{context}[:last_modified_by]") unless params[:last_modified_by].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ExperimentConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExperimentConfig, context: context)
        type = Types::ExperimentConfig.new
        type.experiment_name = params[:experiment_name]
        type.trial_name = params[:trial_name]
        type.trial_component_display_name = params[:trial_component_display_name]
        type
      end
    end

    module ExperimentSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExperimentSource, context: context)
        type = Types::ExperimentSource.new
        type.source_arn = params[:source_arn]
        type.source_type = params[:source_type]
        type
      end
    end

    module ExperimentSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExperimentSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExperimentSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExperimentSummary, context: context)
        type = Types::ExperimentSummary.new
        type.experiment_arn = params[:experiment_arn]
        type.experiment_name = params[:experiment_name]
        type.display_name = params[:display_name]
        type.experiment_source = ExperimentSource.build(params[:experiment_source], context: "#{context}[:experiment_source]") unless params[:experiment_source].nil?
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module Explainability
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Explainability, context: context)
        type = Types::Explainability.new
        type.report = MetricsSource.build(params[:report], context: "#{context}[:report]") unless params[:report].nil?
        type
      end
    end

    module FailStepMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailStepMetadata, context: context)
        type = Types::FailStepMetadata.new
        type.error_message = params[:error_message]
        type
      end
    end

    module FeatureDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FeatureDefinition, context: context)
        type = Types::FeatureDefinition.new
        type.feature_name = params[:feature_name]
        type.feature_type = params[:feature_type]
        type
      end
    end

    module FeatureDefinitions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FeatureDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FeatureGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FeatureGroup, context: context)
        type = Types::FeatureGroup.new
        type.feature_group_arn = params[:feature_group_arn]
        type.feature_group_name = params[:feature_group_name]
        type.record_identifier_feature_name = params[:record_identifier_feature_name]
        type.event_time_feature_name = params[:event_time_feature_name]
        type.feature_definitions = FeatureDefinitions.build(params[:feature_definitions], context: "#{context}[:feature_definitions]") unless params[:feature_definitions].nil?
        type.creation_time = params[:creation_time]
        type.online_store_config = OnlineStoreConfig.build(params[:online_store_config], context: "#{context}[:online_store_config]") unless params[:online_store_config].nil?
        type.offline_store_config = OfflineStoreConfig.build(params[:offline_store_config], context: "#{context}[:offline_store_config]") unless params[:offline_store_config].nil?
        type.role_arn = params[:role_arn]
        type.feature_group_status = params[:feature_group_status]
        type.offline_store_status = OfflineStoreStatus.build(params[:offline_store_status], context: "#{context}[:offline_store_status]") unless params[:offline_store_status].nil?
        type.failure_reason = params[:failure_reason]
        type.description = params[:description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module FeatureGroupSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FeatureGroupSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FeatureGroupSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FeatureGroupSummary, context: context)
        type = Types::FeatureGroupSummary.new
        type.feature_group_name = params[:feature_group_name]
        type.feature_group_arn = params[:feature_group_arn]
        type.creation_time = params[:creation_time]
        type.feature_group_status = params[:feature_group_status]
        type.offline_store_status = OfflineStoreStatus.build(params[:offline_store_status], context: "#{context}[:offline_store_status]") unless params[:offline_store_status].nil?
        type
      end
    end

    module FileSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileSource, context: context)
        type = Types::FileSource.new
        type.content_type = params[:content_type]
        type.content_digest = params[:content_digest]
        type.s3_uri = params[:s3_uri]
        type
      end
    end

    module FileSystemConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileSystemConfig, context: context)
        type = Types::FileSystemConfig.new
        type.mount_path = params[:mount_path]
        type.default_uid = params[:default_uid]
        type.default_gid = params[:default_gid]
        type
      end
    end

    module FileSystemDataSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileSystemDataSource, context: context)
        type = Types::FileSystemDataSource.new
        type.file_system_id = params[:file_system_id]
        type.file_system_access_mode = params[:file_system_access_mode]
        type.file_system_type = params[:file_system_type]
        type.directory_path = params[:directory_path]
        type
      end
    end

    module Filter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Filter, context: context)
        type = Types::Filter.new
        type.name = params[:name]
        type.operator = params[:operator]
        type.value = params[:value]
        type
      end
    end

    module FilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Filter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FinalAutoMLJobObjectiveMetric
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FinalAutoMLJobObjectiveMetric, context: context)
        type = Types::FinalAutoMLJobObjectiveMetric.new
        type.type = params[:type]
        type.metric_name = params[:metric_name]
        type.value = params[:value]
        type
      end
    end

    module FinalHyperParameterTuningJobObjectiveMetric
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FinalHyperParameterTuningJobObjectiveMetric, context: context)
        type = Types::FinalHyperParameterTuningJobObjectiveMetric.new
        type.type = params[:type]
        type.metric_name = params[:metric_name]
        type.value = params[:value]
        type
      end
    end

    module FinalMetricDataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricData.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FlowDefinitionOutputConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FlowDefinitionOutputConfig, context: context)
        type = Types::FlowDefinitionOutputConfig.new
        type.s3_output_path = params[:s3_output_path]
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module FlowDefinitionSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FlowDefinitionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FlowDefinitionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FlowDefinitionSummary, context: context)
        type = Types::FlowDefinitionSummary.new
        type.flow_definition_name = params[:flow_definition_name]
        type.flow_definition_arn = params[:flow_definition_arn]
        type.flow_definition_status = params[:flow_definition_status]
        type.creation_time = params[:creation_time]
        type.failure_reason = params[:failure_reason]
        type
      end
    end

    module FlowDefinitionTaskKeywords
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GetDeviceFleetReportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeviceFleetReportInput, context: context)
        type = Types::GetDeviceFleetReportInput.new
        type.device_fleet_name = params[:device_fleet_name]
        type
      end
    end

    module GetDeviceFleetReportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeviceFleetReportOutput, context: context)
        type = Types::GetDeviceFleetReportOutput.new
        type.device_fleet_arn = params[:device_fleet_arn]
        type.device_fleet_name = params[:device_fleet_name]
        type.output_config = EdgeOutputConfig.build(params[:output_config], context: "#{context}[:output_config]") unless params[:output_config].nil?
        type.description = params[:description]
        type.report_generated = params[:report_generated]
        type.device_stats = DeviceStats.build(params[:device_stats], context: "#{context}[:device_stats]") unless params[:device_stats].nil?
        type.agent_versions = AgentVersions.build(params[:agent_versions], context: "#{context}[:agent_versions]") unless params[:agent_versions].nil?
        type.model_stats = EdgeModelStats.build(params[:model_stats], context: "#{context}[:model_stats]") unless params[:model_stats].nil?
        type
      end
    end

    module GetLineageGroupPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLineageGroupPolicyInput, context: context)
        type = Types::GetLineageGroupPolicyInput.new
        type.lineage_group_name = params[:lineage_group_name]
        type
      end
    end

    module GetLineageGroupPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLineageGroupPolicyOutput, context: context)
        type = Types::GetLineageGroupPolicyOutput.new
        type.lineage_group_arn = params[:lineage_group_arn]
        type.resource_policy = params[:resource_policy]
        type
      end
    end

    module GetModelPackageGroupPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetModelPackageGroupPolicyInput, context: context)
        type = Types::GetModelPackageGroupPolicyInput.new
        type.model_package_group_name = params[:model_package_group_name]
        type
      end
    end

    module GetModelPackageGroupPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetModelPackageGroupPolicyOutput, context: context)
        type = Types::GetModelPackageGroupPolicyOutput.new
        type.resource_policy = params[:resource_policy]
        type
      end
    end

    module GetSagemakerServicecatalogPortfolioStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSagemakerServicecatalogPortfolioStatusInput, context: context)
        type = Types::GetSagemakerServicecatalogPortfolioStatusInput.new
        type
      end
    end

    module GetSagemakerServicecatalogPortfolioStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSagemakerServicecatalogPortfolioStatusOutput, context: context)
        type = Types::GetSagemakerServicecatalogPortfolioStatusOutput.new
        type.status = params[:status]
        type
      end
    end

    module GetSearchSuggestionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSearchSuggestionsInput, context: context)
        type = Types::GetSearchSuggestionsInput.new
        type.resource = params[:resource]
        type.suggestion_query = SuggestionQuery.build(params[:suggestion_query], context: "#{context}[:suggestion_query]") unless params[:suggestion_query].nil?
        type
      end
    end

    module GetSearchSuggestionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSearchSuggestionsOutput, context: context)
        type = Types::GetSearchSuggestionsOutput.new
        type.property_name_suggestions = PropertyNameSuggestionList.build(params[:property_name_suggestions], context: "#{context}[:property_name_suggestions]") unless params[:property_name_suggestions].nil?
        type
      end
    end

    module GitConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GitConfig, context: context)
        type = Types::GitConfig.new
        type.repository_url = params[:repository_url]
        type.branch = params[:branch]
        type.secret_arn = params[:secret_arn]
        type
      end
    end

    module GitConfigForUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GitConfigForUpdate, context: context)
        type = Types::GitConfigForUpdate.new
        type.secret_arn = params[:secret_arn]
        type
      end
    end

    module Groups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module HookParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module HumanLoopActivationConditionsConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HumanLoopActivationConditionsConfig, context: context)
        type = Types::HumanLoopActivationConditionsConfig.new
        type.human_loop_activation_conditions = params[:human_loop_activation_conditions]
        type
      end
    end

    module HumanLoopActivationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HumanLoopActivationConfig, context: context)
        type = Types::HumanLoopActivationConfig.new
        type.human_loop_activation_conditions_config = HumanLoopActivationConditionsConfig.build(params[:human_loop_activation_conditions_config], context: "#{context}[:human_loop_activation_conditions_config]") unless params[:human_loop_activation_conditions_config].nil?
        type
      end
    end

    module HumanLoopConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HumanLoopConfig, context: context)
        type = Types::HumanLoopConfig.new
        type.workteam_arn = params[:workteam_arn]
        type.human_task_ui_arn = params[:human_task_ui_arn]
        type.task_title = params[:task_title]
        type.task_description = params[:task_description]
        type.task_count = params[:task_count]
        type.task_availability_lifetime_in_seconds = params[:task_availability_lifetime_in_seconds]
        type.task_time_limit_in_seconds = params[:task_time_limit_in_seconds]
        type.task_keywords = FlowDefinitionTaskKeywords.build(params[:task_keywords], context: "#{context}[:task_keywords]") unless params[:task_keywords].nil?
        type.public_workforce_task_price = PublicWorkforceTaskPrice.build(params[:public_workforce_task_price], context: "#{context}[:public_workforce_task_price]") unless params[:public_workforce_task_price].nil?
        type
      end
    end

    module HumanLoopRequestSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HumanLoopRequestSource, context: context)
        type = Types::HumanLoopRequestSource.new
        type.aws_managed_human_loop_request_source = params[:aws_managed_human_loop_request_source]
        type
      end
    end

    module HumanTaskConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HumanTaskConfig, context: context)
        type = Types::HumanTaskConfig.new
        type.workteam_arn = params[:workteam_arn]
        type.ui_config = UiConfig.build(params[:ui_config], context: "#{context}[:ui_config]") unless params[:ui_config].nil?
        type.pre_human_task_lambda_arn = params[:pre_human_task_lambda_arn]
        type.task_keywords = TaskKeywords.build(params[:task_keywords], context: "#{context}[:task_keywords]") unless params[:task_keywords].nil?
        type.task_title = params[:task_title]
        type.task_description = params[:task_description]
        type.number_of_human_workers_per_data_object = params[:number_of_human_workers_per_data_object]
        type.task_time_limit_in_seconds = params[:task_time_limit_in_seconds]
        type.task_availability_lifetime_in_seconds = params[:task_availability_lifetime_in_seconds]
        type.max_concurrent_task_count = params[:max_concurrent_task_count]
        type.annotation_consolidation_config = AnnotationConsolidationConfig.build(params[:annotation_consolidation_config], context: "#{context}[:annotation_consolidation_config]") unless params[:annotation_consolidation_config].nil?
        type.public_workforce_task_price = PublicWorkforceTaskPrice.build(params[:public_workforce_task_price], context: "#{context}[:public_workforce_task_price]") unless params[:public_workforce_task_price].nil?
        type
      end
    end

    module HumanTaskUiSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HumanTaskUiSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module HumanTaskUiSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HumanTaskUiSummary, context: context)
        type = Types::HumanTaskUiSummary.new
        type.human_task_ui_name = params[:human_task_ui_name]
        type.human_task_ui_arn = params[:human_task_ui_arn]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module HyperParameterAlgorithmSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HyperParameterAlgorithmSpecification, context: context)
        type = Types::HyperParameterAlgorithmSpecification.new
        type.training_image = params[:training_image]
        type.training_input_mode = params[:training_input_mode]
        type.algorithm_name = params[:algorithm_name]
        type.metric_definitions = MetricDefinitionList.build(params[:metric_definitions], context: "#{context}[:metric_definitions]") unless params[:metric_definitions].nil?
        type
      end
    end

    module HyperParameterSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HyperParameterSpecification, context: context)
        type = Types::HyperParameterSpecification.new
        type.name = params[:name]
        type.description = params[:description]
        type.type = params[:type]
        type.range = ParameterRange.build(params[:range], context: "#{context}[:range]") unless params[:range].nil?
        type.is_tunable = params[:is_tunable]
        type.is_required = params[:is_required]
        type.default_value = params[:default_value]
        type
      end
    end

    module HyperParameterSpecifications
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HyperParameterSpecification.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module HyperParameterTrainingJobDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HyperParameterTrainingJobDefinition, context: context)
        type = Types::HyperParameterTrainingJobDefinition.new
        type.definition_name = params[:definition_name]
        type.tuning_objective = HyperParameterTuningJobObjective.build(params[:tuning_objective], context: "#{context}[:tuning_objective]") unless params[:tuning_objective].nil?
        type.hyper_parameter_ranges = ParameterRanges.build(params[:hyper_parameter_ranges], context: "#{context}[:hyper_parameter_ranges]") unless params[:hyper_parameter_ranges].nil?
        type.static_hyper_parameters = HyperParameters.build(params[:static_hyper_parameters], context: "#{context}[:static_hyper_parameters]") unless params[:static_hyper_parameters].nil?
        type.algorithm_specification = HyperParameterAlgorithmSpecification.build(params[:algorithm_specification], context: "#{context}[:algorithm_specification]") unless params[:algorithm_specification].nil?
        type.role_arn = params[:role_arn]
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.resource_config = ResourceConfig.build(params[:resource_config], context: "#{context}[:resource_config]") unless params[:resource_config].nil?
        type.stopping_condition = StoppingCondition.build(params[:stopping_condition], context: "#{context}[:stopping_condition]") unless params[:stopping_condition].nil?
        type.enable_network_isolation = params[:enable_network_isolation]
        type.enable_inter_container_traffic_encryption = params[:enable_inter_container_traffic_encryption]
        type.enable_managed_spot_training = params[:enable_managed_spot_training]
        type.checkpoint_config = CheckpointConfig.build(params[:checkpoint_config], context: "#{context}[:checkpoint_config]") unless params[:checkpoint_config].nil?
        type.retry_strategy = RetryStrategy.build(params[:retry_strategy], context: "#{context}[:retry_strategy]") unless params[:retry_strategy].nil?
        type
      end
    end

    module HyperParameterTrainingJobDefinitions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HyperParameterTrainingJobDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module HyperParameterTrainingJobSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HyperParameterTrainingJobSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module HyperParameterTrainingJobSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HyperParameterTrainingJobSummary, context: context)
        type = Types::HyperParameterTrainingJobSummary.new
        type.training_job_definition_name = params[:training_job_definition_name]
        type.training_job_name = params[:training_job_name]
        type.training_job_arn = params[:training_job_arn]
        type.tuning_job_name = params[:tuning_job_name]
        type.creation_time = params[:creation_time]
        type.training_start_time = params[:training_start_time]
        type.training_end_time = params[:training_end_time]
        type.training_job_status = params[:training_job_status]
        type.tuned_hyper_parameters = HyperParameters.build(params[:tuned_hyper_parameters], context: "#{context}[:tuned_hyper_parameters]") unless params[:tuned_hyper_parameters].nil?
        type.failure_reason = params[:failure_reason]
        type.final_hyper_parameter_tuning_job_objective_metric = FinalHyperParameterTuningJobObjectiveMetric.build(params[:final_hyper_parameter_tuning_job_objective_metric], context: "#{context}[:final_hyper_parameter_tuning_job_objective_metric]") unless params[:final_hyper_parameter_tuning_job_objective_metric].nil?
        type.objective_status = params[:objective_status]
        type
      end
    end

    module HyperParameterTuningJobConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HyperParameterTuningJobConfig, context: context)
        type = Types::HyperParameterTuningJobConfig.new
        type.strategy = params[:strategy]
        type.hyper_parameter_tuning_job_objective = HyperParameterTuningJobObjective.build(params[:hyper_parameter_tuning_job_objective], context: "#{context}[:hyper_parameter_tuning_job_objective]") unless params[:hyper_parameter_tuning_job_objective].nil?
        type.resource_limits = ResourceLimits.build(params[:resource_limits], context: "#{context}[:resource_limits]") unless params[:resource_limits].nil?
        type.parameter_ranges = ParameterRanges.build(params[:parameter_ranges], context: "#{context}[:parameter_ranges]") unless params[:parameter_ranges].nil?
        type.training_job_early_stopping_type = params[:training_job_early_stopping_type]
        type.tuning_job_completion_criteria = TuningJobCompletionCriteria.build(params[:tuning_job_completion_criteria], context: "#{context}[:tuning_job_completion_criteria]") unless params[:tuning_job_completion_criteria].nil?
        type
      end
    end

    module HyperParameterTuningJobObjective
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HyperParameterTuningJobObjective, context: context)
        type = Types::HyperParameterTuningJobObjective.new
        type.type = params[:type]
        type.metric_name = params[:metric_name]
        type
      end
    end

    module HyperParameterTuningJobObjectives
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HyperParameterTuningJobObjective.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module HyperParameterTuningJobSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HyperParameterTuningJobSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module HyperParameterTuningJobSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HyperParameterTuningJobSummary, context: context)
        type = Types::HyperParameterTuningJobSummary.new
        type.hyper_parameter_tuning_job_name = params[:hyper_parameter_tuning_job_name]
        type.hyper_parameter_tuning_job_arn = params[:hyper_parameter_tuning_job_arn]
        type.hyper_parameter_tuning_job_status = params[:hyper_parameter_tuning_job_status]
        type.strategy = params[:strategy]
        type.creation_time = params[:creation_time]
        type.hyper_parameter_tuning_end_time = params[:hyper_parameter_tuning_end_time]
        type.last_modified_time = params[:last_modified_time]
        type.training_job_status_counters = TrainingJobStatusCounters.build(params[:training_job_status_counters], context: "#{context}[:training_job_status_counters]") unless params[:training_job_status_counters].nil?
        type.objective_status_counters = ObjectiveStatusCounters.build(params[:objective_status_counters], context: "#{context}[:objective_status_counters]") unless params[:objective_status_counters].nil?
        type.resource_limits = ResourceLimits.build(params[:resource_limits], context: "#{context}[:resource_limits]") unless params[:resource_limits].nil?
        type
      end
    end

    module HyperParameterTuningJobWarmStartConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HyperParameterTuningJobWarmStartConfig, context: context)
        type = Types::HyperParameterTuningJobWarmStartConfig.new
        type.parent_hyper_parameter_tuning_jobs = ParentHyperParameterTuningJobs.build(params[:parent_hyper_parameter_tuning_jobs], context: "#{context}[:parent_hyper_parameter_tuning_jobs]") unless params[:parent_hyper_parameter_tuning_jobs].nil?
        type.warm_start_type = params[:warm_start_type]
        type
      end
    end

    module HyperParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Image
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Image, context: context)
        type = Types::Image.new
        type.creation_time = params[:creation_time]
        type.description = params[:description]
        type.display_name = params[:display_name]
        type.failure_reason = params[:failure_reason]
        type.image_arn = params[:image_arn]
        type.image_name = params[:image_name]
        type.image_status = params[:image_status]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module ImageConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageConfig, context: context)
        type = Types::ImageConfig.new
        type.repository_access_mode = params[:repository_access_mode]
        type.repository_auth_config = RepositoryAuthConfig.build(params[:repository_auth_config], context: "#{context}[:repository_auth_config]") unless params[:repository_auth_config].nil?
        type
      end
    end

    module ImageDeletePropertyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ImageVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImageVersion, context: context)
        type = Types::ImageVersion.new
        type.creation_time = params[:creation_time]
        type.failure_reason = params[:failure_reason]
        type.image_arn = params[:image_arn]
        type.image_version_arn = params[:image_version_arn]
        type.image_version_status = params[:image_version_status]
        type.last_modified_time = params[:last_modified_time]
        type.version = params[:version]
        type
      end
    end

    module ImageVersions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ImageVersion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Images
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Image.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InferenceExecutionConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InferenceExecutionConfig, context: context)
        type = Types::InferenceExecutionConfig.new
        type.mode = params[:mode]
        type
      end
    end

    module InferenceRecommendation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InferenceRecommendation, context: context)
        type = Types::InferenceRecommendation.new
        type.metrics = RecommendationMetrics.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type.endpoint_configuration = EndpointOutputConfiguration.build(params[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless params[:endpoint_configuration].nil?
        type.model_configuration = ModelConfiguration.build(params[:model_configuration], context: "#{context}[:model_configuration]") unless params[:model_configuration].nil?
        type
      end
    end

    module InferenceRecommendations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InferenceRecommendation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InferenceRecommendationsJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InferenceRecommendationsJob, context: context)
        type = Types::InferenceRecommendationsJob.new
        type.job_name = params[:job_name]
        type.job_description = params[:job_description]
        type.job_type = params[:job_type]
        type.job_arn = params[:job_arn]
        type.status = params[:status]
        type.creation_time = params[:creation_time]
        type.completion_time = params[:completion_time]
        type.role_arn = params[:role_arn]
        type.last_modified_time = params[:last_modified_time]
        type.failure_reason = params[:failure_reason]
        type
      end
    end

    module InferenceRecommendationsJobs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InferenceRecommendationsJob.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InferenceSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InferenceSpecification, context: context)
        type = Types::InferenceSpecification.new
        type.containers = ModelPackageContainerDefinitionList.build(params[:containers], context: "#{context}[:containers]") unless params[:containers].nil?
        type.supported_transform_instance_types = TransformInstanceTypes.build(params[:supported_transform_instance_types], context: "#{context}[:supported_transform_instance_types]") unless params[:supported_transform_instance_types].nil?
        type.supported_realtime_inference_instance_types = RealtimeInferenceInstanceTypes.build(params[:supported_realtime_inference_instance_types], context: "#{context}[:supported_realtime_inference_instance_types]") unless params[:supported_realtime_inference_instance_types].nil?
        type.supported_content_types = ContentTypes.build(params[:supported_content_types], context: "#{context}[:supported_content_types]") unless params[:supported_content_types].nil?
        type.supported_response_mime_types = ResponseMIMETypes.build(params[:supported_response_mime_types], context: "#{context}[:supported_response_mime_types]") unless params[:supported_response_mime_types].nil?
        type
      end
    end

    module InputConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputConfig, context: context)
        type = Types::InputConfig.new
        type.s3_uri = params[:s3_uri]
        type.data_input_config = params[:data_input_config]
        type.framework = params[:framework]
        type.framework_version = params[:framework_version]
        type
      end
    end

    module InputDataConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Channel.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InputModes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InstanceMetadataServiceConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceMetadataServiceConfiguration, context: context)
        type = Types::InstanceMetadataServiceConfiguration.new
        type.minimum_instance_metadata_service_version = params[:minimum_instance_metadata_service_version]
        type
      end
    end

    module IntegerParameterRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IntegerParameterRange, context: context)
        type = Types::IntegerParameterRange.new
        type.name = params[:name]
        type.min_value = params[:min_value]
        type.max_value = params[:max_value]
        type.scaling_type = params[:scaling_type]
        type
      end
    end

    module IntegerParameterRangeSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IntegerParameterRangeSpecification, context: context)
        type = Types::IntegerParameterRangeSpecification.new
        type.min_value = params[:min_value]
        type.max_value = params[:max_value]
        type
      end
    end

    module IntegerParameterRanges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IntegerParameterRange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module JsonContentTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module JupyterServerAppSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JupyterServerAppSettings, context: context)
        type = Types::JupyterServerAppSettings.new
        type.default_resource_spec = ResourceSpec.build(params[:default_resource_spec], context: "#{context}[:default_resource_spec]") unless params[:default_resource_spec].nil?
        type.lifecycle_config_arns = LifecycleConfigArns.build(params[:lifecycle_config_arns], context: "#{context}[:lifecycle_config_arns]") unless params[:lifecycle_config_arns].nil?
        type
      end
    end

    module KernelGatewayAppSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KernelGatewayAppSettings, context: context)
        type = Types::KernelGatewayAppSettings.new
        type.default_resource_spec = ResourceSpec.build(params[:default_resource_spec], context: "#{context}[:default_resource_spec]") unless params[:default_resource_spec].nil?
        type.custom_images = CustomImages.build(params[:custom_images], context: "#{context}[:custom_images]") unless params[:custom_images].nil?
        type.lifecycle_config_arns = LifecycleConfigArns.build(params[:lifecycle_config_arns], context: "#{context}[:lifecycle_config_arns]") unless params[:lifecycle_config_arns].nil?
        type
      end
    end

    module KernelGatewayImageConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KernelGatewayImageConfig, context: context)
        type = Types::KernelGatewayImageConfig.new
        type.kernel_specs = KernelSpecs.build(params[:kernel_specs], context: "#{context}[:kernel_specs]") unless params[:kernel_specs].nil?
        type.file_system_config = FileSystemConfig.build(params[:file_system_config], context: "#{context}[:file_system_config]") unless params[:file_system_config].nil?
        type
      end
    end

    module KernelSpec
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KernelSpec, context: context)
        type = Types::KernelSpec.new
        type.name = params[:name]
        type.display_name = params[:display_name]
        type
      end
    end

    module KernelSpecs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << KernelSpec.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LabelCounters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LabelCounters, context: context)
        type = Types::LabelCounters.new
        type.total_labeled = params[:total_labeled]
        type.human_labeled = params[:human_labeled]
        type.machine_labeled = params[:machine_labeled]
        type.failed_non_retryable_error = params[:failed_non_retryable_error]
        type.unlabeled = params[:unlabeled]
        type
      end
    end

    module LabelCountersForWorkteam
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LabelCountersForWorkteam, context: context)
        type = Types::LabelCountersForWorkteam.new
        type.human_labeled = params[:human_labeled]
        type.pending_human = params[:pending_human]
        type.total = params[:total]
        type
      end
    end

    module LabelingJobAlgorithmsConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LabelingJobAlgorithmsConfig, context: context)
        type = Types::LabelingJobAlgorithmsConfig.new
        type.labeling_job_algorithm_specification_arn = params[:labeling_job_algorithm_specification_arn]
        type.initial_active_learning_model_arn = params[:initial_active_learning_model_arn]
        type.labeling_job_resource_config = LabelingJobResourceConfig.build(params[:labeling_job_resource_config], context: "#{context}[:labeling_job_resource_config]") unless params[:labeling_job_resource_config].nil?
        type
      end
    end

    module LabelingJobDataAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LabelingJobDataAttributes, context: context)
        type = Types::LabelingJobDataAttributes.new
        type.content_classifiers = ContentClassifiers.build(params[:content_classifiers], context: "#{context}[:content_classifiers]") unless params[:content_classifiers].nil?
        type
      end
    end

    module LabelingJobDataSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LabelingJobDataSource, context: context)
        type = Types::LabelingJobDataSource.new
        type.s3_data_source = LabelingJobS3DataSource.build(params[:s3_data_source], context: "#{context}[:s3_data_source]") unless params[:s3_data_source].nil?
        type.sns_data_source = LabelingJobSnsDataSource.build(params[:sns_data_source], context: "#{context}[:sns_data_source]") unless params[:sns_data_source].nil?
        type
      end
    end

    module LabelingJobForWorkteamSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LabelingJobForWorkteamSummary, context: context)
        type = Types::LabelingJobForWorkteamSummary.new
        type.labeling_job_name = params[:labeling_job_name]
        type.job_reference_code = params[:job_reference_code]
        type.work_requester_account_id = params[:work_requester_account_id]
        type.creation_time = params[:creation_time]
        type.label_counters = LabelCountersForWorkteam.build(params[:label_counters], context: "#{context}[:label_counters]") unless params[:label_counters].nil?
        type.number_of_human_workers_per_data_object = params[:number_of_human_workers_per_data_object]
        type
      end
    end

    module LabelingJobForWorkteamSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LabelingJobForWorkteamSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LabelingJobInputConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LabelingJobInputConfig, context: context)
        type = Types::LabelingJobInputConfig.new
        type.data_source = LabelingJobDataSource.build(params[:data_source], context: "#{context}[:data_source]") unless params[:data_source].nil?
        type.data_attributes = LabelingJobDataAttributes.build(params[:data_attributes], context: "#{context}[:data_attributes]") unless params[:data_attributes].nil?
        type
      end
    end

    module LabelingJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LabelingJobOutput, context: context)
        type = Types::LabelingJobOutput.new
        type.output_dataset_s3_uri = params[:output_dataset_s3_uri]
        type.final_active_learning_model_arn = params[:final_active_learning_model_arn]
        type
      end
    end

    module LabelingJobOutputConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LabelingJobOutputConfig, context: context)
        type = Types::LabelingJobOutputConfig.new
        type.s3_output_path = params[:s3_output_path]
        type.kms_key_id = params[:kms_key_id]
        type.sns_topic_arn = params[:sns_topic_arn]
        type
      end
    end

    module LabelingJobResourceConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LabelingJobResourceConfig, context: context)
        type = Types::LabelingJobResourceConfig.new
        type.volume_kms_key_id = params[:volume_kms_key_id]
        type
      end
    end

    module LabelingJobS3DataSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LabelingJobS3DataSource, context: context)
        type = Types::LabelingJobS3DataSource.new
        type.manifest_s3_uri = params[:manifest_s3_uri]
        type
      end
    end

    module LabelingJobSnsDataSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LabelingJobSnsDataSource, context: context)
        type = Types::LabelingJobSnsDataSource.new
        type.sns_topic_arn = params[:sns_topic_arn]
        type
      end
    end

    module LabelingJobStoppingConditions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LabelingJobStoppingConditions, context: context)
        type = Types::LabelingJobStoppingConditions.new
        type.max_human_labeled_object_count = params[:max_human_labeled_object_count]
        type.max_percentage_of_input_dataset_labeled = params[:max_percentage_of_input_dataset_labeled]
        type
      end
    end

    module LabelingJobSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LabelingJobSummary, context: context)
        type = Types::LabelingJobSummary.new
        type.labeling_job_name = params[:labeling_job_name]
        type.labeling_job_arn = params[:labeling_job_arn]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.labeling_job_status = params[:labeling_job_status]
        type.label_counters = LabelCounters.build(params[:label_counters], context: "#{context}[:label_counters]") unless params[:label_counters].nil?
        type.workteam_arn = params[:workteam_arn]
        type.pre_human_task_lambda_arn = params[:pre_human_task_lambda_arn]
        type.annotation_consolidation_lambda_arn = params[:annotation_consolidation_lambda_arn]
        type.failure_reason = params[:failure_reason]
        type.labeling_job_output = LabelingJobOutput.build(params[:labeling_job_output], context: "#{context}[:labeling_job_output]") unless params[:labeling_job_output].nil?
        type.input_config = LabelingJobInputConfig.build(params[:input_config], context: "#{context}[:input_config]") unless params[:input_config].nil?
        type
      end
    end

    module LabelingJobSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LabelingJobSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LambdaStepMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaStepMetadata, context: context)
        type = Types::LambdaStepMetadata.new
        type.arn = params[:arn]
        type.output_parameters = OutputParameterList.build(params[:output_parameters], context: "#{context}[:output_parameters]") unless params[:output_parameters].nil?
        type
      end
    end

    module LifecycleConfigArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LineageEntityParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module LineageGroupSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LineageGroupSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LineageGroupSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LineageGroupSummary, context: context)
        type = Types::LineageGroupSummary.new
        type.lineage_group_arn = params[:lineage_group_arn]
        type.lineage_group_name = params[:lineage_group_name]
        type.display_name = params[:display_name]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module ListActionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListActionsInput, context: context)
        type = Types::ListActionsInput.new
        type.source_uri = params[:source_uri]
        type.action_type = params[:action_type]
        type.created_after = params[:created_after]
        type.created_before = params[:created_before]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListActionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListActionsOutput, context: context)
        type = Types::ListActionsOutput.new
        type.action_summaries = ActionSummaries.build(params[:action_summaries], context: "#{context}[:action_summaries]") unless params[:action_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAlgorithmsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAlgorithmsInput, context: context)
        type = Types::ListAlgorithmsInput.new
        type.creation_time_after = params[:creation_time_after]
        type.creation_time_before = params[:creation_time_before]
        type.max_results = params[:max_results]
        type.name_contains = params[:name_contains]
        type.next_token = params[:next_token]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type
      end
    end

    module ListAlgorithmsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAlgorithmsOutput, context: context)
        type = Types::ListAlgorithmsOutput.new
        type.algorithm_summary_list = AlgorithmSummaryList.build(params[:algorithm_summary_list], context: "#{context}[:algorithm_summary_list]") unless params[:algorithm_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAppImageConfigsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppImageConfigsInput, context: context)
        type = Types::ListAppImageConfigsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.name_contains = params[:name_contains]
        type.creation_time_before = params[:creation_time_before]
        type.creation_time_after = params[:creation_time_after]
        type.modified_time_before = params[:modified_time_before]
        type.modified_time_after = params[:modified_time_after]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type
      end
    end

    module ListAppImageConfigsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppImageConfigsOutput, context: context)
        type = Types::ListAppImageConfigsOutput.new
        type.next_token = params[:next_token]
        type.app_image_configs = AppImageConfigList.build(params[:app_image_configs], context: "#{context}[:app_image_configs]") unless params[:app_image_configs].nil?
        type
      end
    end

    module ListAppsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppsInput, context: context)
        type = Types::ListAppsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.sort_order = params[:sort_order]
        type.sort_by = params[:sort_by]
        type.domain_id_equals = params[:domain_id_equals]
        type.user_profile_name_equals = params[:user_profile_name_equals]
        type
      end
    end

    module ListAppsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAppsOutput, context: context)
        type = Types::ListAppsOutput.new
        type.apps = AppList.build(params[:apps], context: "#{context}[:apps]") unless params[:apps].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListArtifactsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListArtifactsInput, context: context)
        type = Types::ListArtifactsInput.new
        type.source_uri = params[:source_uri]
        type.artifact_type = params[:artifact_type]
        type.created_after = params[:created_after]
        type.created_before = params[:created_before]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListArtifactsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListArtifactsOutput, context: context)
        type = Types::ListArtifactsOutput.new
        type.artifact_summaries = ArtifactSummaries.build(params[:artifact_summaries], context: "#{context}[:artifact_summaries]") unless params[:artifact_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssociationsInput, context: context)
        type = Types::ListAssociationsInput.new
        type.source_arn = params[:source_arn]
        type.destination_arn = params[:destination_arn]
        type.source_type = params[:source_type]
        type.destination_type = params[:destination_type]
        type.association_type = params[:association_type]
        type.created_after = params[:created_after]
        type.created_before = params[:created_before]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAssociationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssociationsOutput, context: context)
        type = Types::ListAssociationsOutput.new
        type.association_summaries = AssociationSummaries.build(params[:association_summaries], context: "#{context}[:association_summaries]") unless params[:association_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAutoMLJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAutoMLJobsInput, context: context)
        type = Types::ListAutoMLJobsInput.new
        type.creation_time_after = params[:creation_time_after]
        type.creation_time_before = params[:creation_time_before]
        type.last_modified_time_after = params[:last_modified_time_after]
        type.last_modified_time_before = params[:last_modified_time_before]
        type.name_contains = params[:name_contains]
        type.status_equals = params[:status_equals]
        type.sort_order = params[:sort_order]
        type.sort_by = params[:sort_by]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAutoMLJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAutoMLJobsOutput, context: context)
        type = Types::ListAutoMLJobsOutput.new
        type.auto_ml_job_summaries = AutoMLJobSummaries.build(params[:auto_ml_job_summaries], context: "#{context}[:auto_ml_job_summaries]") unless params[:auto_ml_job_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCandidatesForAutoMLJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCandidatesForAutoMLJobInput, context: context)
        type = Types::ListCandidatesForAutoMLJobInput.new
        type.auto_ml_job_name = params[:auto_ml_job_name]
        type.status_equals = params[:status_equals]
        type.candidate_name_equals = params[:candidate_name_equals]
        type.sort_order = params[:sort_order]
        type.sort_by = params[:sort_by]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCandidatesForAutoMLJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCandidatesForAutoMLJobOutput, context: context)
        type = Types::ListCandidatesForAutoMLJobOutput.new
        type.candidates = AutoMLCandidates.build(params[:candidates], context: "#{context}[:candidates]") unless params[:candidates].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCodeRepositoriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCodeRepositoriesInput, context: context)
        type = Types::ListCodeRepositoriesInput.new
        type.creation_time_after = params[:creation_time_after]
        type.creation_time_before = params[:creation_time_before]
        type.last_modified_time_after = params[:last_modified_time_after]
        type.last_modified_time_before = params[:last_modified_time_before]
        type.max_results = params[:max_results]
        type.name_contains = params[:name_contains]
        type.next_token = params[:next_token]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type
      end
    end

    module ListCodeRepositoriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCodeRepositoriesOutput, context: context)
        type = Types::ListCodeRepositoriesOutput.new
        type.code_repository_summary_list = CodeRepositorySummaryList.build(params[:code_repository_summary_list], context: "#{context}[:code_repository_summary_list]") unless params[:code_repository_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCompilationJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCompilationJobsInput, context: context)
        type = Types::ListCompilationJobsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.creation_time_after = params[:creation_time_after]
        type.creation_time_before = params[:creation_time_before]
        type.last_modified_time_after = params[:last_modified_time_after]
        type.last_modified_time_before = params[:last_modified_time_before]
        type.name_contains = params[:name_contains]
        type.status_equals = params[:status_equals]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type
      end
    end

    module ListCompilationJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCompilationJobsOutput, context: context)
        type = Types::ListCompilationJobsOutput.new
        type.compilation_job_summaries = CompilationJobSummaries.build(params[:compilation_job_summaries], context: "#{context}[:compilation_job_summaries]") unless params[:compilation_job_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListContextsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListContextsInput, context: context)
        type = Types::ListContextsInput.new
        type.source_uri = params[:source_uri]
        type.context_type = params[:context_type]
        type.created_after = params[:created_after]
        type.created_before = params[:created_before]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListContextsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListContextsOutput, context: context)
        type = Types::ListContextsOutput.new
        type.context_summaries = ContextSummaries.build(params[:context_summaries], context: "#{context}[:context_summaries]") unless params[:context_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDataQualityJobDefinitionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataQualityJobDefinitionsInput, context: context)
        type = Types::ListDataQualityJobDefinitionsInput.new
        type.endpoint_name = params[:endpoint_name]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.name_contains = params[:name_contains]
        type.creation_time_before = params[:creation_time_before]
        type.creation_time_after = params[:creation_time_after]
        type
      end
    end

    module ListDataQualityJobDefinitionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataQualityJobDefinitionsOutput, context: context)
        type = Types::ListDataQualityJobDefinitionsOutput.new
        type.job_definition_summaries = MonitoringJobDefinitionSummaryList.build(params[:job_definition_summaries], context: "#{context}[:job_definition_summaries]") unless params[:job_definition_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDeviceFleetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeviceFleetsInput, context: context)
        type = Types::ListDeviceFleetsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.creation_time_after = params[:creation_time_after]
        type.creation_time_before = params[:creation_time_before]
        type.last_modified_time_after = params[:last_modified_time_after]
        type.last_modified_time_before = params[:last_modified_time_before]
        type.name_contains = params[:name_contains]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type
      end
    end

    module ListDeviceFleetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeviceFleetsOutput, context: context)
        type = Types::ListDeviceFleetsOutput.new
        type.device_fleet_summaries = DeviceFleetSummaries.build(params[:device_fleet_summaries], context: "#{context}[:device_fleet_summaries]") unless params[:device_fleet_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDevicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDevicesInput, context: context)
        type = Types::ListDevicesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.latest_heartbeat_after = params[:latest_heartbeat_after]
        type.model_name = params[:model_name]
        type.device_fleet_name = params[:device_fleet_name]
        type
      end
    end

    module ListDevicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDevicesOutput, context: context)
        type = Types::ListDevicesOutput.new
        type.device_summaries = DeviceSummaries.build(params[:device_summaries], context: "#{context}[:device_summaries]") unless params[:device_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDomainsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDomainsInput, context: context)
        type = Types::ListDomainsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDomainsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDomainsOutput, context: context)
        type = Types::ListDomainsOutput.new
        type.domains = DomainList.build(params[:domains], context: "#{context}[:domains]") unless params[:domains].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEdgePackagingJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEdgePackagingJobsInput, context: context)
        type = Types::ListEdgePackagingJobsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.creation_time_after = params[:creation_time_after]
        type.creation_time_before = params[:creation_time_before]
        type.last_modified_time_after = params[:last_modified_time_after]
        type.last_modified_time_before = params[:last_modified_time_before]
        type.name_contains = params[:name_contains]
        type.model_name_contains = params[:model_name_contains]
        type.status_equals = params[:status_equals]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type
      end
    end

    module ListEdgePackagingJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEdgePackagingJobsOutput, context: context)
        type = Types::ListEdgePackagingJobsOutput.new
        type.edge_packaging_job_summaries = EdgePackagingJobSummaries.build(params[:edge_packaging_job_summaries], context: "#{context}[:edge_packaging_job_summaries]") unless params[:edge_packaging_job_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEndpointConfigsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEndpointConfigsInput, context: context)
        type = Types::ListEndpointConfigsInput.new
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.name_contains = params[:name_contains]
        type.creation_time_before = params[:creation_time_before]
        type.creation_time_after = params[:creation_time_after]
        type
      end
    end

    module ListEndpointConfigsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEndpointConfigsOutput, context: context)
        type = Types::ListEndpointConfigsOutput.new
        type.endpoint_configs = EndpointConfigSummaryList.build(params[:endpoint_configs], context: "#{context}[:endpoint_configs]") unless params[:endpoint_configs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEndpointsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEndpointsInput, context: context)
        type = Types::ListEndpointsInput.new
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.name_contains = params[:name_contains]
        type.creation_time_before = params[:creation_time_before]
        type.creation_time_after = params[:creation_time_after]
        type.last_modified_time_before = params[:last_modified_time_before]
        type.last_modified_time_after = params[:last_modified_time_after]
        type.status_equals = params[:status_equals]
        type
      end
    end

    module ListEndpointsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEndpointsOutput, context: context)
        type = Types::ListEndpointsOutput.new
        type.endpoints = EndpointSummaryList.build(params[:endpoints], context: "#{context}[:endpoints]") unless params[:endpoints].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListExperimentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExperimentsInput, context: context)
        type = Types::ListExperimentsInput.new
        type.created_after = params[:created_after]
        type.created_before = params[:created_before]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListExperimentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExperimentsOutput, context: context)
        type = Types::ListExperimentsOutput.new
        type.experiment_summaries = ExperimentSummaries.build(params[:experiment_summaries], context: "#{context}[:experiment_summaries]") unless params[:experiment_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFeatureGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFeatureGroupsInput, context: context)
        type = Types::ListFeatureGroupsInput.new
        type.name_contains = params[:name_contains]
        type.feature_group_status_equals = params[:feature_group_status_equals]
        type.offline_store_status_equals = params[:offline_store_status_equals]
        type.creation_time_after = params[:creation_time_after]
        type.creation_time_before = params[:creation_time_before]
        type.sort_order = params[:sort_order]
        type.sort_by = params[:sort_by]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFeatureGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFeatureGroupsOutput, context: context)
        type = Types::ListFeatureGroupsOutput.new
        type.feature_group_summaries = FeatureGroupSummaries.build(params[:feature_group_summaries], context: "#{context}[:feature_group_summaries]") unless params[:feature_group_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFlowDefinitionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFlowDefinitionsInput, context: context)
        type = Types::ListFlowDefinitionsInput.new
        type.creation_time_after = params[:creation_time_after]
        type.creation_time_before = params[:creation_time_before]
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListFlowDefinitionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFlowDefinitionsOutput, context: context)
        type = Types::ListFlowDefinitionsOutput.new
        type.flow_definition_summaries = FlowDefinitionSummaries.build(params[:flow_definition_summaries], context: "#{context}[:flow_definition_summaries]") unless params[:flow_definition_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListHumanTaskUisInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHumanTaskUisInput, context: context)
        type = Types::ListHumanTaskUisInput.new
        type.creation_time_after = params[:creation_time_after]
        type.creation_time_before = params[:creation_time_before]
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListHumanTaskUisOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHumanTaskUisOutput, context: context)
        type = Types::ListHumanTaskUisOutput.new
        type.human_task_ui_summaries = HumanTaskUiSummaries.build(params[:human_task_ui_summaries], context: "#{context}[:human_task_ui_summaries]") unless params[:human_task_ui_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListHyperParameterTuningJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHyperParameterTuningJobsInput, context: context)
        type = Types::ListHyperParameterTuningJobsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.name_contains = params[:name_contains]
        type.creation_time_after = params[:creation_time_after]
        type.creation_time_before = params[:creation_time_before]
        type.last_modified_time_after = params[:last_modified_time_after]
        type.last_modified_time_before = params[:last_modified_time_before]
        type.status_equals = params[:status_equals]
        type
      end
    end

    module ListHyperParameterTuningJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHyperParameterTuningJobsOutput, context: context)
        type = Types::ListHyperParameterTuningJobsOutput.new
        type.hyper_parameter_tuning_job_summaries = HyperParameterTuningJobSummaries.build(params[:hyper_parameter_tuning_job_summaries], context: "#{context}[:hyper_parameter_tuning_job_summaries]") unless params[:hyper_parameter_tuning_job_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListImageVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListImageVersionsInput, context: context)
        type = Types::ListImageVersionsInput.new
        type.creation_time_after = params[:creation_time_after]
        type.creation_time_before = params[:creation_time_before]
        type.image_name = params[:image_name]
        type.last_modified_time_after = params[:last_modified_time_after]
        type.last_modified_time_before = params[:last_modified_time_before]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type
      end
    end

    module ListImageVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListImageVersionsOutput, context: context)
        type = Types::ListImageVersionsOutput.new
        type.image_versions = ImageVersions.build(params[:image_versions], context: "#{context}[:image_versions]") unless params[:image_versions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListImagesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListImagesInput, context: context)
        type = Types::ListImagesInput.new
        type.creation_time_after = params[:creation_time_after]
        type.creation_time_before = params[:creation_time_before]
        type.last_modified_time_after = params[:last_modified_time_after]
        type.last_modified_time_before = params[:last_modified_time_before]
        type.max_results = params[:max_results]
        type.name_contains = params[:name_contains]
        type.next_token = params[:next_token]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type
      end
    end

    module ListImagesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListImagesOutput, context: context)
        type = Types::ListImagesOutput.new
        type.images = Images.build(params[:images], context: "#{context}[:images]") unless params[:images].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInferenceRecommendationsJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInferenceRecommendationsJobsInput, context: context)
        type = Types::ListInferenceRecommendationsJobsInput.new
        type.creation_time_after = params[:creation_time_after]
        type.creation_time_before = params[:creation_time_before]
        type.last_modified_time_after = params[:last_modified_time_after]
        type.last_modified_time_before = params[:last_modified_time_before]
        type.name_contains = params[:name_contains]
        type.status_equals = params[:status_equals]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListInferenceRecommendationsJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInferenceRecommendationsJobsOutput, context: context)
        type = Types::ListInferenceRecommendationsJobsOutput.new
        type.inference_recommendations_jobs = InferenceRecommendationsJobs.build(params[:inference_recommendations_jobs], context: "#{context}[:inference_recommendations_jobs]") unless params[:inference_recommendations_jobs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLabelingJobsForWorkteamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLabelingJobsForWorkteamInput, context: context)
        type = Types::ListLabelingJobsForWorkteamInput.new
        type.workteam_arn = params[:workteam_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.creation_time_after = params[:creation_time_after]
        type.creation_time_before = params[:creation_time_before]
        type.job_reference_code_contains = params[:job_reference_code_contains]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type
      end
    end

    module ListLabelingJobsForWorkteamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLabelingJobsForWorkteamOutput, context: context)
        type = Types::ListLabelingJobsForWorkteamOutput.new
        type.labeling_job_summary_list = LabelingJobForWorkteamSummaryList.build(params[:labeling_job_summary_list], context: "#{context}[:labeling_job_summary_list]") unless params[:labeling_job_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLabelingJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLabelingJobsInput, context: context)
        type = Types::ListLabelingJobsInput.new
        type.creation_time_after = params[:creation_time_after]
        type.creation_time_before = params[:creation_time_before]
        type.last_modified_time_after = params[:last_modified_time_after]
        type.last_modified_time_before = params[:last_modified_time_before]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.name_contains = params[:name_contains]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.status_equals = params[:status_equals]
        type
      end
    end

    module ListLabelingJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLabelingJobsOutput, context: context)
        type = Types::ListLabelingJobsOutput.new
        type.labeling_job_summary_list = LabelingJobSummaryList.build(params[:labeling_job_summary_list], context: "#{context}[:labeling_job_summary_list]") unless params[:labeling_job_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLineageEntityParameterKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListLineageGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLineageGroupsInput, context: context)
        type = Types::ListLineageGroupsInput.new
        type.created_after = params[:created_after]
        type.created_before = params[:created_before]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListLineageGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLineageGroupsOutput, context: context)
        type = Types::ListLineageGroupsOutput.new
        type.lineage_group_summaries = LineageGroupSummaries.build(params[:lineage_group_summaries], context: "#{context}[:lineage_group_summaries]") unless params[:lineage_group_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListModelBiasJobDefinitionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListModelBiasJobDefinitionsInput, context: context)
        type = Types::ListModelBiasJobDefinitionsInput.new
        type.endpoint_name = params[:endpoint_name]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.name_contains = params[:name_contains]
        type.creation_time_before = params[:creation_time_before]
        type.creation_time_after = params[:creation_time_after]
        type
      end
    end

    module ListModelBiasJobDefinitionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListModelBiasJobDefinitionsOutput, context: context)
        type = Types::ListModelBiasJobDefinitionsOutput.new
        type.job_definition_summaries = MonitoringJobDefinitionSummaryList.build(params[:job_definition_summaries], context: "#{context}[:job_definition_summaries]") unless params[:job_definition_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListModelExplainabilityJobDefinitionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListModelExplainabilityJobDefinitionsInput, context: context)
        type = Types::ListModelExplainabilityJobDefinitionsInput.new
        type.endpoint_name = params[:endpoint_name]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.name_contains = params[:name_contains]
        type.creation_time_before = params[:creation_time_before]
        type.creation_time_after = params[:creation_time_after]
        type
      end
    end

    module ListModelExplainabilityJobDefinitionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListModelExplainabilityJobDefinitionsOutput, context: context)
        type = Types::ListModelExplainabilityJobDefinitionsOutput.new
        type.job_definition_summaries = MonitoringJobDefinitionSummaryList.build(params[:job_definition_summaries], context: "#{context}[:job_definition_summaries]") unless params[:job_definition_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListModelMetadataInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListModelMetadataInput, context: context)
        type = Types::ListModelMetadataInput.new
        type.search_expression = ModelMetadataSearchExpression.build(params[:search_expression], context: "#{context}[:search_expression]") unless params[:search_expression].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListModelMetadataOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListModelMetadataOutput, context: context)
        type = Types::ListModelMetadataOutput.new
        type.model_metadata_summaries = ModelMetadataSummaries.build(params[:model_metadata_summaries], context: "#{context}[:model_metadata_summaries]") unless params[:model_metadata_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListModelPackageGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListModelPackageGroupsInput, context: context)
        type = Types::ListModelPackageGroupsInput.new
        type.creation_time_after = params[:creation_time_after]
        type.creation_time_before = params[:creation_time_before]
        type.max_results = params[:max_results]
        type.name_contains = params[:name_contains]
        type.next_token = params[:next_token]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type
      end
    end

    module ListModelPackageGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListModelPackageGroupsOutput, context: context)
        type = Types::ListModelPackageGroupsOutput.new
        type.model_package_group_summary_list = ModelPackageGroupSummaryList.build(params[:model_package_group_summary_list], context: "#{context}[:model_package_group_summary_list]") unless params[:model_package_group_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListModelPackagesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListModelPackagesInput, context: context)
        type = Types::ListModelPackagesInput.new
        type.creation_time_after = params[:creation_time_after]
        type.creation_time_before = params[:creation_time_before]
        type.max_results = params[:max_results]
        type.name_contains = params[:name_contains]
        type.model_approval_status = params[:model_approval_status]
        type.model_package_group_name = params[:model_package_group_name]
        type.model_package_type = params[:model_package_type]
        type.next_token = params[:next_token]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type
      end
    end

    module ListModelPackagesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListModelPackagesOutput, context: context)
        type = Types::ListModelPackagesOutput.new
        type.model_package_summary_list = ModelPackageSummaryList.build(params[:model_package_summary_list], context: "#{context}[:model_package_summary_list]") unless params[:model_package_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListModelQualityJobDefinitionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListModelQualityJobDefinitionsInput, context: context)
        type = Types::ListModelQualityJobDefinitionsInput.new
        type.endpoint_name = params[:endpoint_name]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.name_contains = params[:name_contains]
        type.creation_time_before = params[:creation_time_before]
        type.creation_time_after = params[:creation_time_after]
        type
      end
    end

    module ListModelQualityJobDefinitionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListModelQualityJobDefinitionsOutput, context: context)
        type = Types::ListModelQualityJobDefinitionsOutput.new
        type.job_definition_summaries = MonitoringJobDefinitionSummaryList.build(params[:job_definition_summaries], context: "#{context}[:job_definition_summaries]") unless params[:job_definition_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListModelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListModelsInput, context: context)
        type = Types::ListModelsInput.new
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.name_contains = params[:name_contains]
        type.creation_time_before = params[:creation_time_before]
        type.creation_time_after = params[:creation_time_after]
        type
      end
    end

    module ListModelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListModelsOutput, context: context)
        type = Types::ListModelsOutput.new
        type.models = ModelSummaryList.build(params[:models], context: "#{context}[:models]") unless params[:models].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMonitoringExecutionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMonitoringExecutionsInput, context: context)
        type = Types::ListMonitoringExecutionsInput.new
        type.monitoring_schedule_name = params[:monitoring_schedule_name]
        type.endpoint_name = params[:endpoint_name]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.scheduled_time_before = params[:scheduled_time_before]
        type.scheduled_time_after = params[:scheduled_time_after]
        type.creation_time_before = params[:creation_time_before]
        type.creation_time_after = params[:creation_time_after]
        type.last_modified_time_before = params[:last_modified_time_before]
        type.last_modified_time_after = params[:last_modified_time_after]
        type.status_equals = params[:status_equals]
        type.monitoring_job_definition_name = params[:monitoring_job_definition_name]
        type.monitoring_type_equals = params[:monitoring_type_equals]
        type
      end
    end

    module ListMonitoringExecutionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMonitoringExecutionsOutput, context: context)
        type = Types::ListMonitoringExecutionsOutput.new
        type.monitoring_execution_summaries = MonitoringExecutionSummaryList.build(params[:monitoring_execution_summaries], context: "#{context}[:monitoring_execution_summaries]") unless params[:monitoring_execution_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMonitoringSchedulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMonitoringSchedulesInput, context: context)
        type = Types::ListMonitoringSchedulesInput.new
        type.endpoint_name = params[:endpoint_name]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.name_contains = params[:name_contains]
        type.creation_time_before = params[:creation_time_before]
        type.creation_time_after = params[:creation_time_after]
        type.last_modified_time_before = params[:last_modified_time_before]
        type.last_modified_time_after = params[:last_modified_time_after]
        type.status_equals = params[:status_equals]
        type.monitoring_job_definition_name = params[:monitoring_job_definition_name]
        type.monitoring_type_equals = params[:monitoring_type_equals]
        type
      end
    end

    module ListMonitoringSchedulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMonitoringSchedulesOutput, context: context)
        type = Types::ListMonitoringSchedulesOutput.new
        type.monitoring_schedule_summaries = MonitoringScheduleSummaryList.build(params[:monitoring_schedule_summaries], context: "#{context}[:monitoring_schedule_summaries]") unless params[:monitoring_schedule_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListNotebookInstanceLifecycleConfigsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNotebookInstanceLifecycleConfigsInput, context: context)
        type = Types::ListNotebookInstanceLifecycleConfigsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.name_contains = params[:name_contains]
        type.creation_time_before = params[:creation_time_before]
        type.creation_time_after = params[:creation_time_after]
        type.last_modified_time_before = params[:last_modified_time_before]
        type.last_modified_time_after = params[:last_modified_time_after]
        type
      end
    end

    module ListNotebookInstanceLifecycleConfigsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNotebookInstanceLifecycleConfigsOutput, context: context)
        type = Types::ListNotebookInstanceLifecycleConfigsOutput.new
        type.next_token = params[:next_token]
        type.notebook_instance_lifecycle_configs = NotebookInstanceLifecycleConfigSummaryList.build(params[:notebook_instance_lifecycle_configs], context: "#{context}[:notebook_instance_lifecycle_configs]") unless params[:notebook_instance_lifecycle_configs].nil?
        type
      end
    end

    module ListNotebookInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNotebookInstancesInput, context: context)
        type = Types::ListNotebookInstancesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.name_contains = params[:name_contains]
        type.creation_time_before = params[:creation_time_before]
        type.creation_time_after = params[:creation_time_after]
        type.last_modified_time_before = params[:last_modified_time_before]
        type.last_modified_time_after = params[:last_modified_time_after]
        type.status_equals = params[:status_equals]
        type.notebook_instance_lifecycle_config_name_contains = params[:notebook_instance_lifecycle_config_name_contains]
        type.default_code_repository_contains = params[:default_code_repository_contains]
        type.additional_code_repository_equals = params[:additional_code_repository_equals]
        type
      end
    end

    module ListNotebookInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNotebookInstancesOutput, context: context)
        type = Types::ListNotebookInstancesOutput.new
        type.next_token = params[:next_token]
        type.notebook_instances = NotebookInstanceSummaryList.build(params[:notebook_instances], context: "#{context}[:notebook_instances]") unless params[:notebook_instances].nil?
        type
      end
    end

    module ListPipelineExecutionStepsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPipelineExecutionStepsInput, context: context)
        type = Types::ListPipelineExecutionStepsInput.new
        type.pipeline_execution_arn = params[:pipeline_execution_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.sort_order = params[:sort_order]
        type
      end
    end

    module ListPipelineExecutionStepsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPipelineExecutionStepsOutput, context: context)
        type = Types::ListPipelineExecutionStepsOutput.new
        type.pipeline_execution_steps = PipelineExecutionStepList.build(params[:pipeline_execution_steps], context: "#{context}[:pipeline_execution_steps]") unless params[:pipeline_execution_steps].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPipelineExecutionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPipelineExecutionsInput, context: context)
        type = Types::ListPipelineExecutionsInput.new
        type.pipeline_name = params[:pipeline_name]
        type.created_after = params[:created_after]
        type.created_before = params[:created_before]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListPipelineExecutionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPipelineExecutionsOutput, context: context)
        type = Types::ListPipelineExecutionsOutput.new
        type.pipeline_execution_summaries = PipelineExecutionSummaryList.build(params[:pipeline_execution_summaries], context: "#{context}[:pipeline_execution_summaries]") unless params[:pipeline_execution_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPipelineParametersForExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPipelineParametersForExecutionInput, context: context)
        type = Types::ListPipelineParametersForExecutionInput.new
        type.pipeline_execution_arn = params[:pipeline_execution_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListPipelineParametersForExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPipelineParametersForExecutionOutput, context: context)
        type = Types::ListPipelineParametersForExecutionOutput.new
        type.pipeline_parameters = ParameterList.build(params[:pipeline_parameters], context: "#{context}[:pipeline_parameters]") unless params[:pipeline_parameters].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPipelinesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPipelinesInput, context: context)
        type = Types::ListPipelinesInput.new
        type.pipeline_name_prefix = params[:pipeline_name_prefix]
        type.created_after = params[:created_after]
        type.created_before = params[:created_before]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListPipelinesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPipelinesOutput, context: context)
        type = Types::ListPipelinesOutput.new
        type.pipeline_summaries = PipelineSummaryList.build(params[:pipeline_summaries], context: "#{context}[:pipeline_summaries]") unless params[:pipeline_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListProcessingJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProcessingJobsInput, context: context)
        type = Types::ListProcessingJobsInput.new
        type.creation_time_after = params[:creation_time_after]
        type.creation_time_before = params[:creation_time_before]
        type.last_modified_time_after = params[:last_modified_time_after]
        type.last_modified_time_before = params[:last_modified_time_before]
        type.name_contains = params[:name_contains]
        type.status_equals = params[:status_equals]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListProcessingJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProcessingJobsOutput, context: context)
        type = Types::ListProcessingJobsOutput.new
        type.processing_job_summaries = ProcessingJobSummaries.build(params[:processing_job_summaries], context: "#{context}[:processing_job_summaries]") unless params[:processing_job_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListProjectsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProjectsInput, context: context)
        type = Types::ListProjectsInput.new
        type.creation_time_after = params[:creation_time_after]
        type.creation_time_before = params[:creation_time_before]
        type.max_results = params[:max_results]
        type.name_contains = params[:name_contains]
        type.next_token = params[:next_token]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type
      end
    end

    module ListProjectsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProjectsOutput, context: context)
        type = Types::ListProjectsOutput.new
        type.project_summary_list = ProjectSummaryList.build(params[:project_summary_list], context: "#{context}[:project_summary_list]") unless params[:project_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListStudioLifecycleConfigsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStudioLifecycleConfigsInput, context: context)
        type = Types::ListStudioLifecycleConfigsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.name_contains = params[:name_contains]
        type.app_type_equals = params[:app_type_equals]
        type.creation_time_before = params[:creation_time_before]
        type.creation_time_after = params[:creation_time_after]
        type.modified_time_before = params[:modified_time_before]
        type.modified_time_after = params[:modified_time_after]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type
      end
    end

    module ListStudioLifecycleConfigsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStudioLifecycleConfigsOutput, context: context)
        type = Types::ListStudioLifecycleConfigsOutput.new
        type.next_token = params[:next_token]
        type.studio_lifecycle_configs = StudioLifecycleConfigsList.build(params[:studio_lifecycle_configs], context: "#{context}[:studio_lifecycle_configs]") unless params[:studio_lifecycle_configs].nil?
        type
      end
    end

    module ListSubscribedWorkteamsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSubscribedWorkteamsInput, context: context)
        type = Types::ListSubscribedWorkteamsInput.new
        type.name_contains = params[:name_contains]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListSubscribedWorkteamsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSubscribedWorkteamsOutput, context: context)
        type = Types::ListSubscribedWorkteamsOutput.new
        type.subscribed_workteams = SubscribedWorkteams.build(params[:subscribed_workteams], context: "#{context}[:subscribed_workteams]") unless params[:subscribed_workteams].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsInput, context: context)
        type = Types::ListTagsInput.new
        type.resource_arn = params[:resource_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsOutput, context: context)
        type = Types::ListTagsOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTrainingJobsForHyperParameterTuningJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTrainingJobsForHyperParameterTuningJobInput, context: context)
        type = Types::ListTrainingJobsForHyperParameterTuningJobInput.new
        type.hyper_parameter_tuning_job_name = params[:hyper_parameter_tuning_job_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.status_equals = params[:status_equals]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type
      end
    end

    module ListTrainingJobsForHyperParameterTuningJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTrainingJobsForHyperParameterTuningJobOutput, context: context)
        type = Types::ListTrainingJobsForHyperParameterTuningJobOutput.new
        type.training_job_summaries = HyperParameterTrainingJobSummaries.build(params[:training_job_summaries], context: "#{context}[:training_job_summaries]") unless params[:training_job_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTrainingJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTrainingJobsInput, context: context)
        type = Types::ListTrainingJobsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.creation_time_after = params[:creation_time_after]
        type.creation_time_before = params[:creation_time_before]
        type.last_modified_time_after = params[:last_modified_time_after]
        type.last_modified_time_before = params[:last_modified_time_before]
        type.name_contains = params[:name_contains]
        type.status_equals = params[:status_equals]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type
      end
    end

    module ListTrainingJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTrainingJobsOutput, context: context)
        type = Types::ListTrainingJobsOutput.new
        type.training_job_summaries = TrainingJobSummaries.build(params[:training_job_summaries], context: "#{context}[:training_job_summaries]") unless params[:training_job_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTransformJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTransformJobsInput, context: context)
        type = Types::ListTransformJobsInput.new
        type.creation_time_after = params[:creation_time_after]
        type.creation_time_before = params[:creation_time_before]
        type.last_modified_time_after = params[:last_modified_time_after]
        type.last_modified_time_before = params[:last_modified_time_before]
        type.name_contains = params[:name_contains]
        type.status_equals = params[:status_equals]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTransformJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTransformJobsOutput, context: context)
        type = Types::ListTransformJobsOutput.new
        type.transform_job_summaries = TransformJobSummaries.build(params[:transform_job_summaries], context: "#{context}[:transform_job_summaries]") unless params[:transform_job_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTrialComponentKey256
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListTrialComponentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTrialComponentsInput, context: context)
        type = Types::ListTrialComponentsInput.new
        type.experiment_name = params[:experiment_name]
        type.trial_name = params[:trial_name]
        type.source_arn = params[:source_arn]
        type.created_after = params[:created_after]
        type.created_before = params[:created_before]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTrialComponentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTrialComponentsOutput, context: context)
        type = Types::ListTrialComponentsOutput.new
        type.trial_component_summaries = TrialComponentSummaries.build(params[:trial_component_summaries], context: "#{context}[:trial_component_summaries]") unless params[:trial_component_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTrialsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTrialsInput, context: context)
        type = Types::ListTrialsInput.new
        type.experiment_name = params[:experiment_name]
        type.trial_component_name = params[:trial_component_name]
        type.created_after = params[:created_after]
        type.created_before = params[:created_before]
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTrialsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTrialsOutput, context: context)
        type = Types::ListTrialsOutput.new
        type.trial_summaries = TrialSummaries.build(params[:trial_summaries], context: "#{context}[:trial_summaries]") unless params[:trial_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListUserProfilesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUserProfilesInput, context: context)
        type = Types::ListUserProfilesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.sort_order = params[:sort_order]
        type.sort_by = params[:sort_by]
        type.domain_id_equals = params[:domain_id_equals]
        type.user_profile_name_contains = params[:user_profile_name_contains]
        type
      end
    end

    module ListUserProfilesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUserProfilesOutput, context: context)
        type = Types::ListUserProfilesOutput.new
        type.user_profiles = UserProfileList.build(params[:user_profiles], context: "#{context}[:user_profiles]") unless params[:user_profiles].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListWorkforcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorkforcesInput, context: context)
        type = Types::ListWorkforcesInput.new
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.name_contains = params[:name_contains]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListWorkforcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorkforcesOutput, context: context)
        type = Types::ListWorkforcesOutput.new
        type.workforces = Workforces.build(params[:workforces], context: "#{context}[:workforces]") unless params[:workforces].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListWorkteamsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorkteamsInput, context: context)
        type = Types::ListWorkteamsInput.new
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.name_contains = params[:name_contains]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListWorkteamsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorkteamsOutput, context: context)
        type = Types::ListWorkteamsOutput.new
        type.workteams = Workteams.build(params[:workteams], context: "#{context}[:workteams]") unless params[:workteams].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module MemberDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MemberDefinition, context: context)
        type = Types::MemberDefinition.new
        type.cognito_member_definition = CognitoMemberDefinition.build(params[:cognito_member_definition], context: "#{context}[:cognito_member_definition]") unless params[:cognito_member_definition].nil?
        type.oidc_member_definition = OidcMemberDefinition.build(params[:oidc_member_definition], context: "#{context}[:oidc_member_definition]") unless params[:oidc_member_definition].nil?
        type
      end
    end

    module MemberDefinitions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MemberDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetadataProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetadataProperties, context: context)
        type = Types::MetadataProperties.new
        type.commit_id = params[:commit_id]
        type.repository = params[:repository]
        type.generated_by = params[:generated_by]
        type.project_id = params[:project_id]
        type
      end
    end

    module MetricData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricData, context: context)
        type = Types::MetricData.new
        type.metric_name = params[:metric_name]
        type.value = params[:value]
        type.timestamp = params[:timestamp]
        type
      end
    end

    module MetricDataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricDatum.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricDatum
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricDatum, context: context)
        type = Types::MetricDatum.new
        type.metric_name = params[:metric_name]
        type.value = params[:value]
        type.set = params[:set]
        type.standard_metric_name = params[:standard_metric_name]
        type
      end
    end

    module MetricDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricDefinition, context: context)
        type = Types::MetricDefinition.new
        type.name = params[:name]
        type.regex = params[:regex]
        type
      end
    end

    module MetricDefinitionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricsSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricsSource, context: context)
        type = Types::MetricsSource.new
        type.content_type = params[:content_type]
        type.content_digest = params[:content_digest]
        type.s3_uri = params[:s3_uri]
        type
      end
    end

    module ModelArtifacts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelArtifacts, context: context)
        type = Types::ModelArtifacts.new
        type.s3_model_artifacts = params[:s3_model_artifacts]
        type
      end
    end

    module ModelBiasAppSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelBiasAppSpecification, context: context)
        type = Types::ModelBiasAppSpecification.new
        type.image_uri = params[:image_uri]
        type.config_uri = params[:config_uri]
        type.environment = MonitoringEnvironmentMap.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type
      end
    end

    module ModelBiasBaselineConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelBiasBaselineConfig, context: context)
        type = Types::ModelBiasBaselineConfig.new
        type.baselining_job_name = params[:baselining_job_name]
        type.constraints_resource = MonitoringConstraintsResource.build(params[:constraints_resource], context: "#{context}[:constraints_resource]") unless params[:constraints_resource].nil?
        type
      end
    end

    module ModelBiasJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelBiasJobInput, context: context)
        type = Types::ModelBiasJobInput.new
        type.endpoint_input = EndpointInput.build(params[:endpoint_input], context: "#{context}[:endpoint_input]") unless params[:endpoint_input].nil?
        type.ground_truth_s3_input = MonitoringGroundTruthS3Input.build(params[:ground_truth_s3_input], context: "#{context}[:ground_truth_s3_input]") unless params[:ground_truth_s3_input].nil?
        type
      end
    end

    module ModelClientConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelClientConfig, context: context)
        type = Types::ModelClientConfig.new
        type.invocations_timeout_in_seconds = params[:invocations_timeout_in_seconds]
        type.invocations_max_retries = params[:invocations_max_retries]
        type
      end
    end

    module ModelConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelConfiguration, context: context)
        type = Types::ModelConfiguration.new
        type.inference_specification_name = params[:inference_specification_name]
        type.environment_parameters = EnvironmentParameters.build(params[:environment_parameters], context: "#{context}[:environment_parameters]") unless params[:environment_parameters].nil?
        type
      end
    end

    module ModelDataQuality
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelDataQuality, context: context)
        type = Types::ModelDataQuality.new
        type.statistics = MetricsSource.build(params[:statistics], context: "#{context}[:statistics]") unless params[:statistics].nil?
        type.constraints = MetricsSource.build(params[:constraints], context: "#{context}[:constraints]") unless params[:constraints].nil?
        type
      end
    end

    module ModelDeployConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelDeployConfig, context: context)
        type = Types::ModelDeployConfig.new
        type.auto_generate_endpoint_name = params[:auto_generate_endpoint_name]
        type.endpoint_name = params[:endpoint_name]
        type
      end
    end

    module ModelDeployResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelDeployResult, context: context)
        type = Types::ModelDeployResult.new
        type.endpoint_name = params[:endpoint_name]
        type
      end
    end

    module ModelDigests
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelDigests, context: context)
        type = Types::ModelDigests.new
        type.artifact_digest = params[:artifact_digest]
        type
      end
    end

    module ModelExplainabilityAppSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelExplainabilityAppSpecification, context: context)
        type = Types::ModelExplainabilityAppSpecification.new
        type.image_uri = params[:image_uri]
        type.config_uri = params[:config_uri]
        type.environment = MonitoringEnvironmentMap.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type
      end
    end

    module ModelExplainabilityBaselineConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelExplainabilityBaselineConfig, context: context)
        type = Types::ModelExplainabilityBaselineConfig.new
        type.baselining_job_name = params[:baselining_job_name]
        type.constraints_resource = MonitoringConstraintsResource.build(params[:constraints_resource], context: "#{context}[:constraints_resource]") unless params[:constraints_resource].nil?
        type
      end
    end

    module ModelExplainabilityJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelExplainabilityJobInput, context: context)
        type = Types::ModelExplainabilityJobInput.new
        type.endpoint_input = EndpointInput.build(params[:endpoint_input], context: "#{context}[:endpoint_input]") unless params[:endpoint_input].nil?
        type
      end
    end

    module ModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelInput, context: context)
        type = Types::ModelInput.new
        type.data_input_config = params[:data_input_config]
        type
      end
    end

    module ModelLatencyThreshold
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelLatencyThreshold, context: context)
        type = Types::ModelLatencyThreshold.new
        type.percentile = params[:percentile]
        type.value_in_milliseconds = params[:value_in_milliseconds]
        type
      end
    end

    module ModelLatencyThresholds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ModelLatencyThreshold.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ModelMetadataFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelMetadataFilter, context: context)
        type = Types::ModelMetadataFilter.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module ModelMetadataFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ModelMetadataFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ModelMetadataSearchExpression
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelMetadataSearchExpression, context: context)
        type = Types::ModelMetadataSearchExpression.new
        type.filters = ModelMetadataFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ModelMetadataSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ModelMetadataSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ModelMetadataSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelMetadataSummary, context: context)
        type = Types::ModelMetadataSummary.new
        type.domain = params[:domain]
        type.framework = params[:framework]
        type.task = params[:task]
        type.model = params[:model]
        type.framework_version = params[:framework_version]
        type
      end
    end

    module ModelMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelMetrics, context: context)
        type = Types::ModelMetrics.new
        type.model_quality = ModelQuality.build(params[:model_quality], context: "#{context}[:model_quality]") unless params[:model_quality].nil?
        type.model_data_quality = ModelDataQuality.build(params[:model_data_quality], context: "#{context}[:model_data_quality]") unless params[:model_data_quality].nil?
        type.bias = Bias.build(params[:bias], context: "#{context}[:bias]") unless params[:bias].nil?
        type.explainability = Explainability.build(params[:explainability], context: "#{context}[:explainability]") unless params[:explainability].nil?
        type
      end
    end

    module ModelPackage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelPackage, context: context)
        type = Types::ModelPackage.new
        type.model_package_name = params[:model_package_name]
        type.model_package_group_name = params[:model_package_group_name]
        type.model_package_version = params[:model_package_version]
        type.model_package_arn = params[:model_package_arn]
        type.model_package_description = params[:model_package_description]
        type.creation_time = params[:creation_time]
        type.inference_specification = InferenceSpecification.build(params[:inference_specification], context: "#{context}[:inference_specification]") unless params[:inference_specification].nil?
        type.source_algorithm_specification = SourceAlgorithmSpecification.build(params[:source_algorithm_specification], context: "#{context}[:source_algorithm_specification]") unless params[:source_algorithm_specification].nil?
        type.validation_specification = ModelPackageValidationSpecification.build(params[:validation_specification], context: "#{context}[:validation_specification]") unless params[:validation_specification].nil?
        type.model_package_status = params[:model_package_status]
        type.model_package_status_details = ModelPackageStatusDetails.build(params[:model_package_status_details], context: "#{context}[:model_package_status_details]") unless params[:model_package_status_details].nil?
        type.certify_for_marketplace = params[:certify_for_marketplace]
        type.model_approval_status = params[:model_approval_status]
        type.created_by = UserContext.build(params[:created_by], context: "#{context}[:created_by]") unless params[:created_by].nil?
        type.metadata_properties = MetadataProperties.build(params[:metadata_properties], context: "#{context}[:metadata_properties]") unless params[:metadata_properties].nil?
        type.model_metrics = ModelMetrics.build(params[:model_metrics], context: "#{context}[:model_metrics]") unless params[:model_metrics].nil?
        type.last_modified_time = params[:last_modified_time]
        type.last_modified_by = UserContext.build(params[:last_modified_by], context: "#{context}[:last_modified_by]") unless params[:last_modified_by].nil?
        type.approval_description = params[:approval_description]
        type.domain = params[:domain]
        type.task = params[:task]
        type.sample_payload_url = params[:sample_payload_url]
        type.additional_inference_specifications = AdditionalInferenceSpecifications.build(params[:additional_inference_specifications], context: "#{context}[:additional_inference_specifications]") unless params[:additional_inference_specifications].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.customer_metadata_properties = CustomerMetadataMap.build(params[:customer_metadata_properties], context: "#{context}[:customer_metadata_properties]") unless params[:customer_metadata_properties].nil?
        type.drift_check_baselines = DriftCheckBaselines.build(params[:drift_check_baselines], context: "#{context}[:drift_check_baselines]") unless params[:drift_check_baselines].nil?
        type
      end
    end

    module ModelPackageArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ModelPackageContainerDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelPackageContainerDefinition, context: context)
        type = Types::ModelPackageContainerDefinition.new
        type.container_hostname = params[:container_hostname]
        type.image = params[:image]
        type.image_digest = params[:image_digest]
        type.model_data_url = params[:model_data_url]
        type.product_id = params[:product_id]
        type.environment = EnvironmentMap.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.model_input = ModelInput.build(params[:model_input], context: "#{context}[:model_input]") unless params[:model_input].nil?
        type.framework = params[:framework]
        type.framework_version = params[:framework_version]
        type.nearest_model_name = params[:nearest_model_name]
        type
      end
    end

    module ModelPackageContainerDefinitionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ModelPackageContainerDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ModelPackageGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelPackageGroup, context: context)
        type = Types::ModelPackageGroup.new
        type.model_package_group_name = params[:model_package_group_name]
        type.model_package_group_arn = params[:model_package_group_arn]
        type.model_package_group_description = params[:model_package_group_description]
        type.creation_time = params[:creation_time]
        type.created_by = UserContext.build(params[:created_by], context: "#{context}[:created_by]") unless params[:created_by].nil?
        type.model_package_group_status = params[:model_package_group_status]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ModelPackageGroupSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelPackageGroupSummary, context: context)
        type = Types::ModelPackageGroupSummary.new
        type.model_package_group_name = params[:model_package_group_name]
        type.model_package_group_arn = params[:model_package_group_arn]
        type.model_package_group_description = params[:model_package_group_description]
        type.creation_time = params[:creation_time]
        type.model_package_group_status = params[:model_package_group_status]
        type
      end
    end

    module ModelPackageGroupSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ModelPackageGroupSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ModelPackageStatusDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelPackageStatusDetails, context: context)
        type = Types::ModelPackageStatusDetails.new
        type.validation_statuses = ModelPackageStatusItemList.build(params[:validation_statuses], context: "#{context}[:validation_statuses]") unless params[:validation_statuses].nil?
        type.image_scan_statuses = ModelPackageStatusItemList.build(params[:image_scan_statuses], context: "#{context}[:image_scan_statuses]") unless params[:image_scan_statuses].nil?
        type
      end
    end

    module ModelPackageStatusItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelPackageStatusItem, context: context)
        type = Types::ModelPackageStatusItem.new
        type.name = params[:name]
        type.status = params[:status]
        type.failure_reason = params[:failure_reason]
        type
      end
    end

    module ModelPackageStatusItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ModelPackageStatusItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ModelPackageSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = BatchDescribeModelPackageSummary.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ModelPackageSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelPackageSummary, context: context)
        type = Types::ModelPackageSummary.new
        type.model_package_name = params[:model_package_name]
        type.model_package_group_name = params[:model_package_group_name]
        type.model_package_version = params[:model_package_version]
        type.model_package_arn = params[:model_package_arn]
        type.model_package_description = params[:model_package_description]
        type.creation_time = params[:creation_time]
        type.model_package_status = params[:model_package_status]
        type.model_approval_status = params[:model_approval_status]
        type
      end
    end

    module ModelPackageSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ModelPackageSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ModelPackageValidationProfile
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelPackageValidationProfile, context: context)
        type = Types::ModelPackageValidationProfile.new
        type.profile_name = params[:profile_name]
        type.transform_job_definition = TransformJobDefinition.build(params[:transform_job_definition], context: "#{context}[:transform_job_definition]") unless params[:transform_job_definition].nil?
        type
      end
    end

    module ModelPackageValidationProfiles
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ModelPackageValidationProfile.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ModelPackageValidationSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelPackageValidationSpecification, context: context)
        type = Types::ModelPackageValidationSpecification.new
        type.validation_role = params[:validation_role]
        type.validation_profiles = ModelPackageValidationProfiles.build(params[:validation_profiles], context: "#{context}[:validation_profiles]") unless params[:validation_profiles].nil?
        type
      end
    end

    module ModelQuality
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelQuality, context: context)
        type = Types::ModelQuality.new
        type.statistics = MetricsSource.build(params[:statistics], context: "#{context}[:statistics]") unless params[:statistics].nil?
        type.constraints = MetricsSource.build(params[:constraints], context: "#{context}[:constraints]") unless params[:constraints].nil?
        type
      end
    end

    module ModelQualityAppSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelQualityAppSpecification, context: context)
        type = Types::ModelQualityAppSpecification.new
        type.image_uri = params[:image_uri]
        type.container_entrypoint = ContainerEntrypoint.build(params[:container_entrypoint], context: "#{context}[:container_entrypoint]") unless params[:container_entrypoint].nil?
        type.container_arguments = MonitoringContainerArguments.build(params[:container_arguments], context: "#{context}[:container_arguments]") unless params[:container_arguments].nil?
        type.record_preprocessor_source_uri = params[:record_preprocessor_source_uri]
        type.post_analytics_processor_source_uri = params[:post_analytics_processor_source_uri]
        type.problem_type = params[:problem_type]
        type.environment = MonitoringEnvironmentMap.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type
      end
    end

    module ModelQualityBaselineConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelQualityBaselineConfig, context: context)
        type = Types::ModelQualityBaselineConfig.new
        type.baselining_job_name = params[:baselining_job_name]
        type.constraints_resource = MonitoringConstraintsResource.build(params[:constraints_resource], context: "#{context}[:constraints_resource]") unless params[:constraints_resource].nil?
        type
      end
    end

    module ModelQualityJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelQualityJobInput, context: context)
        type = Types::ModelQualityJobInput.new
        type.endpoint_input = EndpointInput.build(params[:endpoint_input], context: "#{context}[:endpoint_input]") unless params[:endpoint_input].nil?
        type.ground_truth_s3_input = MonitoringGroundTruthS3Input.build(params[:ground_truth_s3_input], context: "#{context}[:ground_truth_s3_input]") unless params[:ground_truth_s3_input].nil?
        type
      end
    end

    module ModelStepMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelStepMetadata, context: context)
        type = Types::ModelStepMetadata.new
        type.arn = params[:arn]
        type
      end
    end

    module ModelSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModelSummary, context: context)
        type = Types::ModelSummary.new
        type.model_name = params[:model_name]
        type.model_arn = params[:model_arn]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module ModelSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ModelSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MonitoringAppSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonitoringAppSpecification, context: context)
        type = Types::MonitoringAppSpecification.new
        type.image_uri = params[:image_uri]
        type.container_entrypoint = ContainerEntrypoint.build(params[:container_entrypoint], context: "#{context}[:container_entrypoint]") unless params[:container_entrypoint].nil?
        type.container_arguments = MonitoringContainerArguments.build(params[:container_arguments], context: "#{context}[:container_arguments]") unless params[:container_arguments].nil?
        type.record_preprocessor_source_uri = params[:record_preprocessor_source_uri]
        type.post_analytics_processor_source_uri = params[:post_analytics_processor_source_uri]
        type
      end
    end

    module MonitoringBaselineConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonitoringBaselineConfig, context: context)
        type = Types::MonitoringBaselineConfig.new
        type.baselining_job_name = params[:baselining_job_name]
        type.constraints_resource = MonitoringConstraintsResource.build(params[:constraints_resource], context: "#{context}[:constraints_resource]") unless params[:constraints_resource].nil?
        type.statistics_resource = MonitoringStatisticsResource.build(params[:statistics_resource], context: "#{context}[:statistics_resource]") unless params[:statistics_resource].nil?
        type
      end
    end

    module MonitoringClusterConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonitoringClusterConfig, context: context)
        type = Types::MonitoringClusterConfig.new
        type.instance_count = params[:instance_count]
        type.instance_type = params[:instance_type]
        type.volume_size_in_gb = params[:volume_size_in_gb]
        type.volume_kms_key_id = params[:volume_kms_key_id]
        type
      end
    end

    module MonitoringConstraintsResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonitoringConstraintsResource, context: context)
        type = Types::MonitoringConstraintsResource.new
        type.s3_uri = params[:s3_uri]
        type
      end
    end

    module MonitoringContainerArguments
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MonitoringEnvironmentMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module MonitoringExecutionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonitoringExecutionSummary, context: context)
        type = Types::MonitoringExecutionSummary.new
        type.monitoring_schedule_name = params[:monitoring_schedule_name]
        type.scheduled_time = params[:scheduled_time]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.monitoring_execution_status = params[:monitoring_execution_status]
        type.processing_job_arn = params[:processing_job_arn]
        type.endpoint_name = params[:endpoint_name]
        type.failure_reason = params[:failure_reason]
        type.monitoring_job_definition_name = params[:monitoring_job_definition_name]
        type.monitoring_type = params[:monitoring_type]
        type
      end
    end

    module MonitoringExecutionSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MonitoringExecutionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MonitoringGroundTruthS3Input
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonitoringGroundTruthS3Input, context: context)
        type = Types::MonitoringGroundTruthS3Input.new
        type.s3_uri = params[:s3_uri]
        type
      end
    end

    module MonitoringInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonitoringInput, context: context)
        type = Types::MonitoringInput.new
        type.endpoint_input = EndpointInput.build(params[:endpoint_input], context: "#{context}[:endpoint_input]") unless params[:endpoint_input].nil?
        type
      end
    end

    module MonitoringInputs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MonitoringInput.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MonitoringJobDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonitoringJobDefinition, context: context)
        type = Types::MonitoringJobDefinition.new
        type.baseline_config = MonitoringBaselineConfig.build(params[:baseline_config], context: "#{context}[:baseline_config]") unless params[:baseline_config].nil?
        type.monitoring_inputs = MonitoringInputs.build(params[:monitoring_inputs], context: "#{context}[:monitoring_inputs]") unless params[:monitoring_inputs].nil?
        type.monitoring_output_config = MonitoringOutputConfig.build(params[:monitoring_output_config], context: "#{context}[:monitoring_output_config]") unless params[:monitoring_output_config].nil?
        type.monitoring_resources = MonitoringResources.build(params[:monitoring_resources], context: "#{context}[:monitoring_resources]") unless params[:monitoring_resources].nil?
        type.monitoring_app_specification = MonitoringAppSpecification.build(params[:monitoring_app_specification], context: "#{context}[:monitoring_app_specification]") unless params[:monitoring_app_specification].nil?
        type.stopping_condition = MonitoringStoppingCondition.build(params[:stopping_condition], context: "#{context}[:stopping_condition]") unless params[:stopping_condition].nil?
        type.environment = MonitoringEnvironmentMap.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.network_config = NetworkConfig.build(params[:network_config], context: "#{context}[:network_config]") unless params[:network_config].nil?
        type.role_arn = params[:role_arn]
        type
      end
    end

    module MonitoringJobDefinitionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonitoringJobDefinitionSummary, context: context)
        type = Types::MonitoringJobDefinitionSummary.new
        type.monitoring_job_definition_name = params[:monitoring_job_definition_name]
        type.monitoring_job_definition_arn = params[:monitoring_job_definition_arn]
        type.creation_time = params[:creation_time]
        type.endpoint_name = params[:endpoint_name]
        type
      end
    end

    module MonitoringJobDefinitionSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MonitoringJobDefinitionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MonitoringNetworkConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonitoringNetworkConfig, context: context)
        type = Types::MonitoringNetworkConfig.new
        type.enable_inter_container_traffic_encryption = params[:enable_inter_container_traffic_encryption]
        type.enable_network_isolation = params[:enable_network_isolation]
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type
      end
    end

    module MonitoringOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonitoringOutput, context: context)
        type = Types::MonitoringOutput.new
        type.s3_output = MonitoringS3Output.build(params[:s3_output], context: "#{context}[:s3_output]") unless params[:s3_output].nil?
        type
      end
    end

    module MonitoringOutputConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonitoringOutputConfig, context: context)
        type = Types::MonitoringOutputConfig.new
        type.monitoring_outputs = MonitoringOutputs.build(params[:monitoring_outputs], context: "#{context}[:monitoring_outputs]") unless params[:monitoring_outputs].nil?
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module MonitoringOutputs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MonitoringOutput.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MonitoringResources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonitoringResources, context: context)
        type = Types::MonitoringResources.new
        type.cluster_config = MonitoringClusterConfig.build(params[:cluster_config], context: "#{context}[:cluster_config]") unless params[:cluster_config].nil?
        type
      end
    end

    module MonitoringS3Output
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonitoringS3Output, context: context)
        type = Types::MonitoringS3Output.new
        type.s3_uri = params[:s3_uri]
        type.local_path = params[:local_path]
        type.s3_upload_mode = params[:s3_upload_mode]
        type
      end
    end

    module MonitoringSchedule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonitoringSchedule, context: context)
        type = Types::MonitoringSchedule.new
        type.monitoring_schedule_arn = params[:monitoring_schedule_arn]
        type.monitoring_schedule_name = params[:monitoring_schedule_name]
        type.monitoring_schedule_status = params[:monitoring_schedule_status]
        type.monitoring_type = params[:monitoring_type]
        type.failure_reason = params[:failure_reason]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.monitoring_schedule_config = MonitoringScheduleConfig.build(params[:monitoring_schedule_config], context: "#{context}[:monitoring_schedule_config]") unless params[:monitoring_schedule_config].nil?
        type.endpoint_name = params[:endpoint_name]
        type.last_monitoring_execution_summary = MonitoringExecutionSummary.build(params[:last_monitoring_execution_summary], context: "#{context}[:last_monitoring_execution_summary]") unless params[:last_monitoring_execution_summary].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module MonitoringScheduleConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonitoringScheduleConfig, context: context)
        type = Types::MonitoringScheduleConfig.new
        type.schedule_config = ScheduleConfig.build(params[:schedule_config], context: "#{context}[:schedule_config]") unless params[:schedule_config].nil?
        type.monitoring_job_definition = MonitoringJobDefinition.build(params[:monitoring_job_definition], context: "#{context}[:monitoring_job_definition]") unless params[:monitoring_job_definition].nil?
        type.monitoring_job_definition_name = params[:monitoring_job_definition_name]
        type.monitoring_type = params[:monitoring_type]
        type
      end
    end

    module MonitoringScheduleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MonitoringSchedule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MonitoringScheduleSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonitoringScheduleSummary, context: context)
        type = Types::MonitoringScheduleSummary.new
        type.monitoring_schedule_name = params[:monitoring_schedule_name]
        type.monitoring_schedule_arn = params[:monitoring_schedule_arn]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.monitoring_schedule_status = params[:monitoring_schedule_status]
        type.endpoint_name = params[:endpoint_name]
        type.monitoring_job_definition_name = params[:monitoring_job_definition_name]
        type.monitoring_type = params[:monitoring_type]
        type
      end
    end

    module MonitoringScheduleSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MonitoringScheduleSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MonitoringStatisticsResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonitoringStatisticsResource, context: context)
        type = Types::MonitoringStatisticsResource.new
        type.s3_uri = params[:s3_uri]
        type
      end
    end

    module MonitoringStoppingCondition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonitoringStoppingCondition, context: context)
        type = Types::MonitoringStoppingCondition.new
        type.max_runtime_in_seconds = params[:max_runtime_in_seconds]
        type
      end
    end

    module MultiModelConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MultiModelConfig, context: context)
        type = Types::MultiModelConfig.new
        type.model_cache_setting = params[:model_cache_setting]
        type
      end
    end

    module NeoVpcConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NeoVpcConfig, context: context)
        type = Types::NeoVpcConfig.new
        type.security_group_ids = NeoVpcSecurityGroupIds.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.subnets = NeoVpcSubnets.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type
      end
    end

    module NeoVpcSecurityGroupIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module NeoVpcSubnets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module NestedFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NestedFilters, context: context)
        type = Types::NestedFilters.new
        type.nested_property_name = params[:nested_property_name]
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module NestedFiltersList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NestedFilters.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NetworkConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkConfig, context: context)
        type = Types::NetworkConfig.new
        type.enable_inter_container_traffic_encryption = params[:enable_inter_container_traffic_encryption]
        type.enable_network_isolation = params[:enable_network_isolation]
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type
      end
    end

    module NotebookInstanceAcceleratorTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module NotebookInstanceLifecycleConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NotebookInstanceLifecycleHook.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NotebookInstanceLifecycleConfigSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotebookInstanceLifecycleConfigSummary, context: context)
        type = Types::NotebookInstanceLifecycleConfigSummary.new
        type.notebook_instance_lifecycle_config_name = params[:notebook_instance_lifecycle_config_name]
        type.notebook_instance_lifecycle_config_arn = params[:notebook_instance_lifecycle_config_arn]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module NotebookInstanceLifecycleConfigSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NotebookInstanceLifecycleConfigSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NotebookInstanceLifecycleHook
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotebookInstanceLifecycleHook, context: context)
        type = Types::NotebookInstanceLifecycleHook.new
        type.content = params[:content]
        type
      end
    end

    module NotebookInstanceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotebookInstanceSummary, context: context)
        type = Types::NotebookInstanceSummary.new
        type.notebook_instance_name = params[:notebook_instance_name]
        type.notebook_instance_arn = params[:notebook_instance_arn]
        type.notebook_instance_status = params[:notebook_instance_status]
        type.url = params[:url]
        type.instance_type = params[:instance_type]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.notebook_instance_lifecycle_config_name = params[:notebook_instance_lifecycle_config_name]
        type.default_code_repository = params[:default_code_repository]
        type.additional_code_repositories = AdditionalCodeRepositoryNamesOrUrls.build(params[:additional_code_repositories], context: "#{context}[:additional_code_repositories]") unless params[:additional_code_repositories].nil?
        type
      end
    end

    module NotebookInstanceSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NotebookInstanceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NotificationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotificationConfiguration, context: context)
        type = Types::NotificationConfiguration.new
        type.notification_topic_arn = params[:notification_topic_arn]
        type
      end
    end

    module ObjectiveStatusCounters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ObjectiveStatusCounters, context: context)
        type = Types::ObjectiveStatusCounters.new
        type.succeeded = params[:succeeded]
        type.pending = params[:pending]
        type.failed = params[:failed]
        type
      end
    end

    module OfflineStoreConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OfflineStoreConfig, context: context)
        type = Types::OfflineStoreConfig.new
        type.s3_storage_config = S3StorageConfig.build(params[:s3_storage_config], context: "#{context}[:s3_storage_config]") unless params[:s3_storage_config].nil?
        type.disable_glue_table_creation = params[:disable_glue_table_creation]
        type.data_catalog_config = DataCatalogConfig.build(params[:data_catalog_config], context: "#{context}[:data_catalog_config]") unless params[:data_catalog_config].nil?
        type
      end
    end

    module OfflineStoreStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OfflineStoreStatus, context: context)
        type = Types::OfflineStoreStatus.new
        type.status = params[:status]
        type.blocked_reason = params[:blocked_reason]
        type
      end
    end

    module OidcConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OidcConfig, context: context)
        type = Types::OidcConfig.new
        type.client_id = params[:client_id]
        type.client_secret = params[:client_secret]
        type.issuer = params[:issuer]
        type.authorization_endpoint = params[:authorization_endpoint]
        type.token_endpoint = params[:token_endpoint]
        type.user_info_endpoint = params[:user_info_endpoint]
        type.logout_endpoint = params[:logout_endpoint]
        type.jwks_uri = params[:jwks_uri]
        type
      end
    end

    module OidcConfigForResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OidcConfigForResponse, context: context)
        type = Types::OidcConfigForResponse.new
        type.client_id = params[:client_id]
        type.issuer = params[:issuer]
        type.authorization_endpoint = params[:authorization_endpoint]
        type.token_endpoint = params[:token_endpoint]
        type.user_info_endpoint = params[:user_info_endpoint]
        type.logout_endpoint = params[:logout_endpoint]
        type.jwks_uri = params[:jwks_uri]
        type
      end
    end

    module OidcMemberDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OidcMemberDefinition, context: context)
        type = Types::OidcMemberDefinition.new
        type.groups = Groups.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type
      end
    end

    module OnlineStoreConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OnlineStoreConfig, context: context)
        type = Types::OnlineStoreConfig.new
        type.security_config = OnlineStoreSecurityConfig.build(params[:security_config], context: "#{context}[:security_config]") unless params[:security_config].nil?
        type.enable_online_store = params[:enable_online_store]
        type
      end
    end

    module OnlineStoreSecurityConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OnlineStoreSecurityConfig, context: context)
        type = Types::OnlineStoreSecurityConfig.new
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module OutputConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputConfig, context: context)
        type = Types::OutputConfig.new
        type.s3_output_location = params[:s3_output_location]
        type.target_device = params[:target_device]
        type.target_platform = TargetPlatform.build(params[:target_platform], context: "#{context}[:target_platform]") unless params[:target_platform].nil?
        type.compiler_options = params[:compiler_options]
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module OutputDataConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputDataConfig, context: context)
        type = Types::OutputDataConfig.new
        type.kms_key_id = params[:kms_key_id]
        type.s3_output_path = params[:s3_output_path]
        type
      end
    end

    module OutputParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputParameter, context: context)
        type = Types::OutputParameter.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module OutputParameterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OutputParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ParallelismConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParallelismConfiguration, context: context)
        type = Types::ParallelismConfiguration.new
        type.max_parallel_execution_steps = params[:max_parallel_execution_steps]
        type
      end
    end

    module Parameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Parameter, context: context)
        type = Types::Parameter.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module ParameterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Parameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ParameterRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterRange, context: context)
        type = Types::ParameterRange.new
        type.integer_parameter_range_specification = IntegerParameterRangeSpecification.build(params[:integer_parameter_range_specification], context: "#{context}[:integer_parameter_range_specification]") unless params[:integer_parameter_range_specification].nil?
        type.continuous_parameter_range_specification = ContinuousParameterRangeSpecification.build(params[:continuous_parameter_range_specification], context: "#{context}[:continuous_parameter_range_specification]") unless params[:continuous_parameter_range_specification].nil?
        type.categorical_parameter_range_specification = CategoricalParameterRangeSpecification.build(params[:categorical_parameter_range_specification], context: "#{context}[:categorical_parameter_range_specification]") unless params[:categorical_parameter_range_specification].nil?
        type
      end
    end

    module ParameterRanges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterRanges, context: context)
        type = Types::ParameterRanges.new
        type.integer_parameter_ranges = IntegerParameterRanges.build(params[:integer_parameter_ranges], context: "#{context}[:integer_parameter_ranges]") unless params[:integer_parameter_ranges].nil?
        type.continuous_parameter_ranges = ContinuousParameterRanges.build(params[:continuous_parameter_ranges], context: "#{context}[:continuous_parameter_ranges]") unless params[:continuous_parameter_ranges].nil?
        type.categorical_parameter_ranges = CategoricalParameterRanges.build(params[:categorical_parameter_ranges], context: "#{context}[:categorical_parameter_ranges]") unless params[:categorical_parameter_ranges].nil?
        type
      end
    end

    module ParameterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Parent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Parent, context: context)
        type = Types::Parent.new
        type.trial_name = params[:trial_name]
        type.experiment_name = params[:experiment_name]
        type
      end
    end

    module ParentHyperParameterTuningJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParentHyperParameterTuningJob, context: context)
        type = Types::ParentHyperParameterTuningJob.new
        type.hyper_parameter_tuning_job_name = params[:hyper_parameter_tuning_job_name]
        type
      end
    end

    module ParentHyperParameterTuningJobs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ParentHyperParameterTuningJob.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Parents
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Parent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PendingDeploymentSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PendingDeploymentSummary, context: context)
        type = Types::PendingDeploymentSummary.new
        type.endpoint_config_name = params[:endpoint_config_name]
        type.production_variants = PendingProductionVariantSummaryList.build(params[:production_variants], context: "#{context}[:production_variants]") unless params[:production_variants].nil?
        type.start_time = params[:start_time]
        type
      end
    end

    module PendingProductionVariantSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PendingProductionVariantSummary, context: context)
        type = Types::PendingProductionVariantSummary.new
        type.variant_name = params[:variant_name]
        type.deployed_images = DeployedImages.build(params[:deployed_images], context: "#{context}[:deployed_images]") unless params[:deployed_images].nil?
        type.current_weight = params[:current_weight]
        type.desired_weight = params[:desired_weight]
        type.current_instance_count = params[:current_instance_count]
        type.desired_instance_count = params[:desired_instance_count]
        type.instance_type = params[:instance_type]
        type.accelerator_type = params[:accelerator_type]
        type.variant_status = ProductionVariantStatusList.build(params[:variant_status], context: "#{context}[:variant_status]") unless params[:variant_status].nil?
        type.current_serverless_config = ProductionVariantServerlessConfig.build(params[:current_serverless_config], context: "#{context}[:current_serverless_config]") unless params[:current_serverless_config].nil?
        type.desired_serverless_config = ProductionVariantServerlessConfig.build(params[:desired_serverless_config], context: "#{context}[:desired_serverless_config]") unless params[:desired_serverless_config].nil?
        type
      end
    end

    module PendingProductionVariantSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PendingProductionVariantSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Phase
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Phase, context: context)
        type = Types::Phase.new
        type.initial_number_of_users = params[:initial_number_of_users]
        type.spawn_rate = params[:spawn_rate]
        type.duration_in_seconds = params[:duration_in_seconds]
        type
      end
    end

    module Phases
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Phase.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Pipeline
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Pipeline, context: context)
        type = Types::Pipeline.new
        type.pipeline_arn = params[:pipeline_arn]
        type.pipeline_name = params[:pipeline_name]
        type.pipeline_display_name = params[:pipeline_display_name]
        type.pipeline_description = params[:pipeline_description]
        type.role_arn = params[:role_arn]
        type.pipeline_status = params[:pipeline_status]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.last_run_time = params[:last_run_time]
        type.created_by = UserContext.build(params[:created_by], context: "#{context}[:created_by]") unless params[:created_by].nil?
        type.last_modified_by = UserContext.build(params[:last_modified_by], context: "#{context}[:last_modified_by]") unless params[:last_modified_by].nil?
        type.parallelism_configuration = ParallelismConfiguration.build(params[:parallelism_configuration], context: "#{context}[:parallelism_configuration]") unless params[:parallelism_configuration].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PipelineDefinitionS3Location
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PipelineDefinitionS3Location, context: context)
        type = Types::PipelineDefinitionS3Location.new
        type.bucket = params[:bucket]
        type.object_key = params[:object_key]
        type.version_id = params[:version_id]
        type
      end
    end

    module PipelineExecution
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PipelineExecution, context: context)
        type = Types::PipelineExecution.new
        type.pipeline_arn = params[:pipeline_arn]
        type.pipeline_execution_arn = params[:pipeline_execution_arn]
        type.pipeline_execution_display_name = params[:pipeline_execution_display_name]
        type.pipeline_execution_status = params[:pipeline_execution_status]
        type.pipeline_execution_description = params[:pipeline_execution_description]
        type.pipeline_experiment_config = PipelineExperimentConfig.build(params[:pipeline_experiment_config], context: "#{context}[:pipeline_experiment_config]") unless params[:pipeline_experiment_config].nil?
        type.failure_reason = params[:failure_reason]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.created_by = UserContext.build(params[:created_by], context: "#{context}[:created_by]") unless params[:created_by].nil?
        type.last_modified_by = UserContext.build(params[:last_modified_by], context: "#{context}[:last_modified_by]") unless params[:last_modified_by].nil?
        type.parallelism_configuration = ParallelismConfiguration.build(params[:parallelism_configuration], context: "#{context}[:parallelism_configuration]") unless params[:parallelism_configuration].nil?
        type.pipeline_parameters = ParameterList.build(params[:pipeline_parameters], context: "#{context}[:pipeline_parameters]") unless params[:pipeline_parameters].nil?
        type
      end
    end

    module PipelineExecutionStep
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PipelineExecutionStep, context: context)
        type = Types::PipelineExecutionStep.new
        type.step_name = params[:step_name]
        type.step_display_name = params[:step_display_name]
        type.step_description = params[:step_description]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.step_status = params[:step_status]
        type.cache_hit_result = CacheHitResult.build(params[:cache_hit_result], context: "#{context}[:cache_hit_result]") unless params[:cache_hit_result].nil?
        type.attempt_count = params[:attempt_count]
        type.failure_reason = params[:failure_reason]
        type.metadata = PipelineExecutionStepMetadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type
      end
    end

    module PipelineExecutionStepList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PipelineExecutionStep.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PipelineExecutionStepMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PipelineExecutionStepMetadata, context: context)
        type = Types::PipelineExecutionStepMetadata.new
        type.training_job = TrainingJobStepMetadata.build(params[:training_job], context: "#{context}[:training_job]") unless params[:training_job].nil?
        type.processing_job = ProcessingJobStepMetadata.build(params[:processing_job], context: "#{context}[:processing_job]") unless params[:processing_job].nil?
        type.transform_job = TransformJobStepMetadata.build(params[:transform_job], context: "#{context}[:transform_job]") unless params[:transform_job].nil?
        type.tuning_job = TuningJobStepMetaData.build(params[:tuning_job], context: "#{context}[:tuning_job]") unless params[:tuning_job].nil?
        type.model = ModelStepMetadata.build(params[:model], context: "#{context}[:model]") unless params[:model].nil?
        type.register_model = RegisterModelStepMetadata.build(params[:register_model], context: "#{context}[:register_model]") unless params[:register_model].nil?
        type.condition = ConditionStepMetadata.build(params[:condition], context: "#{context}[:condition]") unless params[:condition].nil?
        type.callback = CallbackStepMetadata.build(params[:callback], context: "#{context}[:callback]") unless params[:callback].nil?
        type.lambda = LambdaStepMetadata.build(params[:lambda], context: "#{context}[:lambda]") unless params[:lambda].nil?
        type.quality_check = QualityCheckStepMetadata.build(params[:quality_check], context: "#{context}[:quality_check]") unless params[:quality_check].nil?
        type.clarify_check = ClarifyCheckStepMetadata.build(params[:clarify_check], context: "#{context}[:clarify_check]") unless params[:clarify_check].nil?
        type.emr = EMRStepMetadata.build(params[:emr], context: "#{context}[:emr]") unless params[:emr].nil?
        type.fail = FailStepMetadata.build(params[:fail], context: "#{context}[:fail]") unless params[:fail].nil?
        type
      end
    end

    module PipelineExecutionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PipelineExecutionSummary, context: context)
        type = Types::PipelineExecutionSummary.new
        type.pipeline_execution_arn = params[:pipeline_execution_arn]
        type.start_time = params[:start_time]
        type.pipeline_execution_status = params[:pipeline_execution_status]
        type.pipeline_execution_description = params[:pipeline_execution_description]
        type.pipeline_execution_display_name = params[:pipeline_execution_display_name]
        type.pipeline_execution_failure_reason = params[:pipeline_execution_failure_reason]
        type
      end
    end

    module PipelineExecutionSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PipelineExecutionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PipelineExperimentConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PipelineExperimentConfig, context: context)
        type = Types::PipelineExperimentConfig.new
        type.experiment_name = params[:experiment_name]
        type.trial_name = params[:trial_name]
        type
      end
    end

    module PipelineSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PipelineSummary, context: context)
        type = Types::PipelineSummary.new
        type.pipeline_arn = params[:pipeline_arn]
        type.pipeline_name = params[:pipeline_name]
        type.pipeline_display_name = params[:pipeline_display_name]
        type.pipeline_description = params[:pipeline_description]
        type.role_arn = params[:role_arn]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.last_execution_time = params[:last_execution_time]
        type
      end
    end

    module PipelineSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PipelineSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProcessingClusterConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProcessingClusterConfig, context: context)
        type = Types::ProcessingClusterConfig.new
        type.instance_count = params[:instance_count]
        type.instance_type = params[:instance_type]
        type.volume_size_in_gb = params[:volume_size_in_gb]
        type.volume_kms_key_id = params[:volume_kms_key_id]
        type
      end
    end

    module ProcessingEnvironmentMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ProcessingFeatureStoreOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProcessingFeatureStoreOutput, context: context)
        type = Types::ProcessingFeatureStoreOutput.new
        type.feature_group_name = params[:feature_group_name]
        type
      end
    end

    module ProcessingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProcessingInput, context: context)
        type = Types::ProcessingInput.new
        type.input_name = params[:input_name]
        type.app_managed = params[:app_managed]
        type.s3_input = ProcessingS3Input.build(params[:s3_input], context: "#{context}[:s3_input]") unless params[:s3_input].nil?
        type.dataset_definition = DatasetDefinition.build(params[:dataset_definition], context: "#{context}[:dataset_definition]") unless params[:dataset_definition].nil?
        type
      end
    end

    module ProcessingInputs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProcessingInput.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProcessingJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProcessingJob, context: context)
        type = Types::ProcessingJob.new
        type.processing_inputs = ProcessingInputs.build(params[:processing_inputs], context: "#{context}[:processing_inputs]") unless params[:processing_inputs].nil?
        type.processing_output_config = ProcessingOutputConfig.build(params[:processing_output_config], context: "#{context}[:processing_output_config]") unless params[:processing_output_config].nil?
        type.processing_job_name = params[:processing_job_name]
        type.processing_resources = ProcessingResources.build(params[:processing_resources], context: "#{context}[:processing_resources]") unless params[:processing_resources].nil?
        type.stopping_condition = ProcessingStoppingCondition.build(params[:stopping_condition], context: "#{context}[:stopping_condition]") unless params[:stopping_condition].nil?
        type.app_specification = AppSpecification.build(params[:app_specification], context: "#{context}[:app_specification]") unless params[:app_specification].nil?
        type.environment = ProcessingEnvironmentMap.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.network_config = NetworkConfig.build(params[:network_config], context: "#{context}[:network_config]") unless params[:network_config].nil?
        type.role_arn = params[:role_arn]
        type.experiment_config = ExperimentConfig.build(params[:experiment_config], context: "#{context}[:experiment_config]") unless params[:experiment_config].nil?
        type.processing_job_arn = params[:processing_job_arn]
        type.processing_job_status = params[:processing_job_status]
        type.exit_message = params[:exit_message]
        type.failure_reason = params[:failure_reason]
        type.processing_end_time = params[:processing_end_time]
        type.processing_start_time = params[:processing_start_time]
        type.last_modified_time = params[:last_modified_time]
        type.creation_time = params[:creation_time]
        type.monitoring_schedule_arn = params[:monitoring_schedule_arn]
        type.auto_ml_job_arn = params[:auto_ml_job_arn]
        type.training_job_arn = params[:training_job_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ProcessingJobStepMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProcessingJobStepMetadata, context: context)
        type = Types::ProcessingJobStepMetadata.new
        type.arn = params[:arn]
        type
      end
    end

    module ProcessingJobSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProcessingJobSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProcessingJobSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProcessingJobSummary, context: context)
        type = Types::ProcessingJobSummary.new
        type.processing_job_name = params[:processing_job_name]
        type.processing_job_arn = params[:processing_job_arn]
        type.creation_time = params[:creation_time]
        type.processing_end_time = params[:processing_end_time]
        type.last_modified_time = params[:last_modified_time]
        type.processing_job_status = params[:processing_job_status]
        type.failure_reason = params[:failure_reason]
        type.exit_message = params[:exit_message]
        type
      end
    end

    module ProcessingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProcessingOutput, context: context)
        type = Types::ProcessingOutput.new
        type.output_name = params[:output_name]
        type.s3_output = ProcessingS3Output.build(params[:s3_output], context: "#{context}[:s3_output]") unless params[:s3_output].nil?
        type.feature_store_output = ProcessingFeatureStoreOutput.build(params[:feature_store_output], context: "#{context}[:feature_store_output]") unless params[:feature_store_output].nil?
        type.app_managed = params[:app_managed]
        type
      end
    end

    module ProcessingOutputConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProcessingOutputConfig, context: context)
        type = Types::ProcessingOutputConfig.new
        type.outputs = ProcessingOutputs.build(params[:outputs], context: "#{context}[:outputs]") unless params[:outputs].nil?
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module ProcessingOutputs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProcessingOutput.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProcessingResources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProcessingResources, context: context)
        type = Types::ProcessingResources.new
        type.cluster_config = ProcessingClusterConfig.build(params[:cluster_config], context: "#{context}[:cluster_config]") unless params[:cluster_config].nil?
        type
      end
    end

    module ProcessingS3Input
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProcessingS3Input, context: context)
        type = Types::ProcessingS3Input.new
        type.s3_uri = params[:s3_uri]
        type.local_path = params[:local_path]
        type.s3_data_type = params[:s3_data_type]
        type.s3_input_mode = params[:s3_input_mode]
        type.s3_data_distribution_type = params[:s3_data_distribution_type]
        type.s3_compression_type = params[:s3_compression_type]
        type
      end
    end

    module ProcessingS3Output
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProcessingS3Output, context: context)
        type = Types::ProcessingS3Output.new
        type.s3_uri = params[:s3_uri]
        type.local_path = params[:local_path]
        type.s3_upload_mode = params[:s3_upload_mode]
        type
      end
    end

    module ProcessingStoppingCondition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProcessingStoppingCondition, context: context)
        type = Types::ProcessingStoppingCondition.new
        type.max_runtime_in_seconds = params[:max_runtime_in_seconds]
        type
      end
    end

    module ProductListings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ProductionVariant
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProductionVariant, context: context)
        type = Types::ProductionVariant.new
        type.variant_name = params[:variant_name]
        type.model_name = params[:model_name]
        type.initial_instance_count = params[:initial_instance_count]
        type.instance_type = params[:instance_type]
        type.initial_variant_weight = params[:initial_variant_weight]
        type.accelerator_type = params[:accelerator_type]
        type.core_dump_config = ProductionVariantCoreDumpConfig.build(params[:core_dump_config], context: "#{context}[:core_dump_config]") unless params[:core_dump_config].nil?
        type.serverless_config = ProductionVariantServerlessConfig.build(params[:serverless_config], context: "#{context}[:serverless_config]") unless params[:serverless_config].nil?
        type
      end
    end

    module ProductionVariantCoreDumpConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProductionVariantCoreDumpConfig, context: context)
        type = Types::ProductionVariantCoreDumpConfig.new
        type.destination_s3_uri = params[:destination_s3_uri]
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module ProductionVariantList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProductionVariant.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProductionVariantServerlessConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProductionVariantServerlessConfig, context: context)
        type = Types::ProductionVariantServerlessConfig.new
        type.memory_size_in_mb = params[:memory_size_in_mb]
        type.max_concurrency = params[:max_concurrency]
        type
      end
    end

    module ProductionVariantStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProductionVariantStatus, context: context)
        type = Types::ProductionVariantStatus.new
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.start_time = params[:start_time]
        type
      end
    end

    module ProductionVariantStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProductionVariantStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProductionVariantSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProductionVariantSummary, context: context)
        type = Types::ProductionVariantSummary.new
        type.variant_name = params[:variant_name]
        type.deployed_images = DeployedImages.build(params[:deployed_images], context: "#{context}[:deployed_images]") unless params[:deployed_images].nil?
        type.current_weight = params[:current_weight]
        type.desired_weight = params[:desired_weight]
        type.current_instance_count = params[:current_instance_count]
        type.desired_instance_count = params[:desired_instance_count]
        type.variant_status = ProductionVariantStatusList.build(params[:variant_status], context: "#{context}[:variant_status]") unless params[:variant_status].nil?
        type.current_serverless_config = ProductionVariantServerlessConfig.build(params[:current_serverless_config], context: "#{context}[:current_serverless_config]") unless params[:current_serverless_config].nil?
        type.desired_serverless_config = ProductionVariantServerlessConfig.build(params[:desired_serverless_config], context: "#{context}[:desired_serverless_config]") unless params[:desired_serverless_config].nil?
        type
      end
    end

    module ProductionVariantSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProductionVariantSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProfilerConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProfilerConfig, context: context)
        type = Types::ProfilerConfig.new
        type.s3_output_path = params[:s3_output_path]
        type.profiling_interval_in_milliseconds = params[:profiling_interval_in_milliseconds]
        type.profiling_parameters = ProfilingParameters.build(params[:profiling_parameters], context: "#{context}[:profiling_parameters]") unless params[:profiling_parameters].nil?
        type
      end
    end

    module ProfilerConfigForUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProfilerConfigForUpdate, context: context)
        type = Types::ProfilerConfigForUpdate.new
        type.s3_output_path = params[:s3_output_path]
        type.profiling_interval_in_milliseconds = params[:profiling_interval_in_milliseconds]
        type.profiling_parameters = ProfilingParameters.build(params[:profiling_parameters], context: "#{context}[:profiling_parameters]") unless params[:profiling_parameters].nil?
        type.disable_profiler = params[:disable_profiler]
        type
      end
    end

    module ProfilerRuleConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProfilerRuleConfiguration, context: context)
        type = Types::ProfilerRuleConfiguration.new
        type.rule_configuration_name = params[:rule_configuration_name]
        type.local_path = params[:local_path]
        type.s3_output_path = params[:s3_output_path]
        type.rule_evaluator_image = params[:rule_evaluator_image]
        type.instance_type = params[:instance_type]
        type.volume_size_in_gb = params[:volume_size_in_gb]
        type.rule_parameters = RuleParameters.build(params[:rule_parameters], context: "#{context}[:rule_parameters]") unless params[:rule_parameters].nil?
        type
      end
    end

    module ProfilerRuleConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProfilerRuleConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProfilerRuleEvaluationStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProfilerRuleEvaluationStatus, context: context)
        type = Types::ProfilerRuleEvaluationStatus.new
        type.rule_configuration_name = params[:rule_configuration_name]
        type.rule_evaluation_job_arn = params[:rule_evaluation_job_arn]
        type.rule_evaluation_status = params[:rule_evaluation_status]
        type.status_details = params[:status_details]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module ProfilerRuleEvaluationStatuses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProfilerRuleEvaluationStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProfilingParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Project
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Project, context: context)
        type = Types::Project.new
        type.project_arn = params[:project_arn]
        type.project_name = params[:project_name]
        type.project_id = params[:project_id]
        type.project_description = params[:project_description]
        type.service_catalog_provisioning_details = ServiceCatalogProvisioningDetails.build(params[:service_catalog_provisioning_details], context: "#{context}[:service_catalog_provisioning_details]") unless params[:service_catalog_provisioning_details].nil?
        type.service_catalog_provisioned_product_details = ServiceCatalogProvisionedProductDetails.build(params[:service_catalog_provisioned_product_details], context: "#{context}[:service_catalog_provisioned_product_details]") unless params[:service_catalog_provisioned_product_details].nil?
        type.project_status = params[:project_status]
        type.created_by = UserContext.build(params[:created_by], context: "#{context}[:created_by]") unless params[:created_by].nil?
        type.creation_time = params[:creation_time]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.last_modified_time = params[:last_modified_time]
        type.last_modified_by = UserContext.build(params[:last_modified_by], context: "#{context}[:last_modified_by]") unless params[:last_modified_by].nil?
        type
      end
    end

    module ProjectSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProjectSummary, context: context)
        type = Types::ProjectSummary.new
        type.project_name = params[:project_name]
        type.project_description = params[:project_description]
        type.project_arn = params[:project_arn]
        type.project_id = params[:project_id]
        type.creation_time = params[:creation_time]
        type.project_status = params[:project_status]
        type
      end
    end

    module ProjectSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProjectSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PropertyNameQuery
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PropertyNameQuery, context: context)
        type = Types::PropertyNameQuery.new
        type.property_name_hint = params[:property_name_hint]
        type
      end
    end

    module PropertyNameSuggestion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PropertyNameSuggestion, context: context)
        type = Types::PropertyNameSuggestion.new
        type.property_name = params[:property_name]
        type
      end
    end

    module PropertyNameSuggestionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PropertyNameSuggestion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProvisioningParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProvisioningParameter, context: context)
        type = Types::ProvisioningParameter.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module ProvisioningParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProvisioningParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PublicWorkforceTaskPrice
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublicWorkforceTaskPrice, context: context)
        type = Types::PublicWorkforceTaskPrice.new
        type.amount_in_usd = USD.build(params[:amount_in_usd], context: "#{context}[:amount_in_usd]") unless params[:amount_in_usd].nil?
        type
      end
    end

    module PutModelPackageGroupPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutModelPackageGroupPolicyInput, context: context)
        type = Types::PutModelPackageGroupPolicyInput.new
        type.model_package_group_name = params[:model_package_group_name]
        type.resource_policy = params[:resource_policy]
        type
      end
    end

    module PutModelPackageGroupPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutModelPackageGroupPolicyOutput, context: context)
        type = Types::PutModelPackageGroupPolicyOutput.new
        type.model_package_group_arn = params[:model_package_group_arn]
        type
      end
    end

    module QualityCheckStepMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QualityCheckStepMetadata, context: context)
        type = Types::QualityCheckStepMetadata.new
        type.check_type = params[:check_type]
        type.baseline_used_for_drift_check_statistics = params[:baseline_used_for_drift_check_statistics]
        type.baseline_used_for_drift_check_constraints = params[:baseline_used_for_drift_check_constraints]
        type.calculated_baseline_statistics = params[:calculated_baseline_statistics]
        type.calculated_baseline_constraints = params[:calculated_baseline_constraints]
        type.model_package_group_name = params[:model_package_group_name]
        type.violation_report = params[:violation_report]
        type.check_job_arn = params[:check_job_arn]
        type.skip_check = params[:skip_check]
        type.register_new_baseline = params[:register_new_baseline]
        type
      end
    end

    module QueryFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryFilters, context: context)
        type = Types::QueryFilters.new
        type.types = QueryTypes.build(params[:types], context: "#{context}[:types]") unless params[:types].nil?
        type.lineage_types = QueryLineageTypes.build(params[:lineage_types], context: "#{context}[:lineage_types]") unless params[:lineage_types].nil?
        type.created_before = params[:created_before]
        type.created_after = params[:created_after]
        type.modified_before = params[:modified_before]
        type.modified_after = params[:modified_after]
        type.properties = QueryProperties.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type
      end
    end

    module QueryLineageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryLineageInput, context: context)
        type = Types::QueryLineageInput.new
        type.start_arns = QueryLineageStartArns.build(params[:start_arns], context: "#{context}[:start_arns]") unless params[:start_arns].nil?
        type.direction = params[:direction]
        type.include_edges = params[:include_edges]
        type.filters = QueryFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_depth = params[:max_depth]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module QueryLineageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryLineageOutput, context: context)
        type = Types::QueryLineageOutput.new
        type.vertices = Vertices.build(params[:vertices], context: "#{context}[:vertices]") unless params[:vertices].nil?
        type.edges = Edges.build(params[:edges], context: "#{context}[:edges]") unless params[:edges].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module QueryLineageStartArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module QueryLineageTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module QueryProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module QueryTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RSessionAppSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RSessionAppSettings, context: context)
        type = Types::RSessionAppSettings.new
        type.default_resource_spec = ResourceSpec.build(params[:default_resource_spec], context: "#{context}[:default_resource_spec]") unless params[:default_resource_spec].nil?
        type.custom_images = CustomImages.build(params[:custom_images], context: "#{context}[:custom_images]") unless params[:custom_images].nil?
        type
      end
    end

    module RStudioServerProAppSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RStudioServerProAppSettings, context: context)
        type = Types::RStudioServerProAppSettings.new
        type.access_status = params[:access_status]
        type.user_group = params[:user_group]
        type
      end
    end

    module RStudioServerProDomainSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RStudioServerProDomainSettings, context: context)
        type = Types::RStudioServerProDomainSettings.new
        type.domain_execution_role_arn = params[:domain_execution_role_arn]
        type.r_studio_connect_url = params[:r_studio_connect_url]
        type.r_studio_package_manager_url = params[:r_studio_package_manager_url]
        type.default_resource_spec = ResourceSpec.build(params[:default_resource_spec], context: "#{context}[:default_resource_spec]") unless params[:default_resource_spec].nil?
        type
      end
    end

    module RStudioServerProDomainSettingsForUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RStudioServerProDomainSettingsForUpdate, context: context)
        type = Types::RStudioServerProDomainSettingsForUpdate.new
        type.domain_execution_role_arn = params[:domain_execution_role_arn]
        type.default_resource_spec = ResourceSpec.build(params[:default_resource_spec], context: "#{context}[:default_resource_spec]") unless params[:default_resource_spec].nil?
        type
      end
    end

    module RealtimeInferenceInstanceTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RecommendationJobCompiledOutputConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecommendationJobCompiledOutputConfig, context: context)
        type = Types::RecommendationJobCompiledOutputConfig.new
        type.s3_output_uri = params[:s3_output_uri]
        type
      end
    end

    module RecommendationJobInputConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecommendationJobInputConfig, context: context)
        type = Types::RecommendationJobInputConfig.new
        type.model_package_version_arn = params[:model_package_version_arn]
        type.job_duration_in_seconds = params[:job_duration_in_seconds]
        type.traffic_pattern = TrafficPattern.build(params[:traffic_pattern], context: "#{context}[:traffic_pattern]") unless params[:traffic_pattern].nil?
        type.resource_limit = RecommendationJobResourceLimit.build(params[:resource_limit], context: "#{context}[:resource_limit]") unless params[:resource_limit].nil?
        type.endpoint_configurations = EndpointInputConfigurations.build(params[:endpoint_configurations], context: "#{context}[:endpoint_configurations]") unless params[:endpoint_configurations].nil?
        type.volume_kms_key_id = params[:volume_kms_key_id]
        type
      end
    end

    module RecommendationJobOutputConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecommendationJobOutputConfig, context: context)
        type = Types::RecommendationJobOutputConfig.new
        type.kms_key_id = params[:kms_key_id]
        type.compiled_output_config = RecommendationJobCompiledOutputConfig.build(params[:compiled_output_config], context: "#{context}[:compiled_output_config]") unless params[:compiled_output_config].nil?
        type
      end
    end

    module RecommendationJobResourceLimit
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecommendationJobResourceLimit, context: context)
        type = Types::RecommendationJobResourceLimit.new
        type.max_number_of_tests = params[:max_number_of_tests]
        type.max_parallel_of_tests = params[:max_parallel_of_tests]
        type
      end
    end

    module RecommendationJobStoppingConditions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecommendationJobStoppingConditions, context: context)
        type = Types::RecommendationJobStoppingConditions.new
        type.max_invocations = params[:max_invocations]
        type.model_latency_thresholds = ModelLatencyThresholds.build(params[:model_latency_thresholds], context: "#{context}[:model_latency_thresholds]") unless params[:model_latency_thresholds].nil?
        type
      end
    end

    module RecommendationMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecommendationMetrics, context: context)
        type = Types::RecommendationMetrics.new
        type.cost_per_hour = params[:cost_per_hour]
        type.cost_per_inference = params[:cost_per_inference]
        type.max_invocations = params[:max_invocations]
        type.model_latency = params[:model_latency]
        type
      end
    end

    module RedshiftDatasetDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RedshiftDatasetDefinition, context: context)
        type = Types::RedshiftDatasetDefinition.new
        type.cluster_id = params[:cluster_id]
        type.database = params[:database]
        type.db_user = params[:db_user]
        type.query_string = params[:query_string]
        type.cluster_role_arn = params[:cluster_role_arn]
        type.output_s3_uri = params[:output_s3_uri]
        type.kms_key_id = params[:kms_key_id]
        type.output_format = params[:output_format]
        type.output_compression = params[:output_compression]
        type
      end
    end

    module RegisterDevicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterDevicesInput, context: context)
        type = Types::RegisterDevicesInput.new
        type.device_fleet_name = params[:device_fleet_name]
        type.devices = Devices.build(params[:devices], context: "#{context}[:devices]") unless params[:devices].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module RegisterDevicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterDevicesOutput, context: context)
        type = Types::RegisterDevicesOutput.new
        type
      end
    end

    module RegisterModelStepMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterModelStepMetadata, context: context)
        type = Types::RegisterModelStepMetadata.new
        type.arn = params[:arn]
        type
      end
    end

    module RenderUiTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RenderUiTemplateInput, context: context)
        type = Types::RenderUiTemplateInput.new
        type.ui_template = UiTemplate.build(params[:ui_template], context: "#{context}[:ui_template]") unless params[:ui_template].nil?
        type.task = RenderableTask.build(params[:task], context: "#{context}[:task]") unless params[:task].nil?
        type.role_arn = params[:role_arn]
        type.human_task_ui_arn = params[:human_task_ui_arn]
        type
      end
    end

    module RenderUiTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RenderUiTemplateOutput, context: context)
        type = Types::RenderUiTemplateOutput.new
        type.rendered_content = params[:rendered_content]
        type.errors = RenderingErrorList.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module RenderableTask
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RenderableTask, context: context)
        type = Types::RenderableTask.new
        type.input = params[:input]
        type
      end
    end

    module RenderingError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RenderingError, context: context)
        type = Types::RenderingError.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module RenderingErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RenderingError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RepositoryAuthConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryAuthConfig, context: context)
        type = Types::RepositoryAuthConfig.new
        type.repository_credentials_provider_arn = params[:repository_credentials_provider_arn]
        type
      end
    end

    module ResolvedAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResolvedAttributes, context: context)
        type = Types::ResolvedAttributes.new
        type.auto_ml_job_objective = AutoMLJobObjective.build(params[:auto_ml_job_objective], context: "#{context}[:auto_ml_job_objective]") unless params[:auto_ml_job_objective].nil?
        type.problem_type = params[:problem_type]
        type.completion_criteria = AutoMLJobCompletionCriteria.build(params[:completion_criteria], context: "#{context}[:completion_criteria]") unless params[:completion_criteria].nil?
        type
      end
    end

    module ResourceConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceConfig, context: context)
        type = Types::ResourceConfig.new
        type.instance_type = params[:instance_type]
        type.instance_count = params[:instance_count]
        type.volume_size_in_gb = params[:volume_size_in_gb]
        type.volume_kms_key_id = params[:volume_kms_key_id]
        type
      end
    end

    module ResourceInUse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInUse, context: context)
        type = Types::ResourceInUse.new
        type.message = params[:message]
        type
      end
    end

    module ResourceLimitExceeded
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceLimitExceeded, context: context)
        type = Types::ResourceLimitExceeded.new
        type.message = params[:message]
        type
      end
    end

    module ResourceLimits
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceLimits, context: context)
        type = Types::ResourceLimits.new
        type.max_number_of_training_jobs = params[:max_number_of_training_jobs]
        type.max_parallel_training_jobs = params[:max_parallel_training_jobs]
        type
      end
    end

    module ResourceNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFound, context: context)
        type = Types::ResourceNotFound.new
        type.message = params[:message]
        type
      end
    end

    module ResourceSpec
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceSpec, context: context)
        type = Types::ResourceSpec.new
        type.sage_maker_image_arn = params[:sage_maker_image_arn]
        type.sage_maker_image_version_arn = params[:sage_maker_image_version_arn]
        type.instance_type = params[:instance_type]
        type.lifecycle_config_arn = params[:lifecycle_config_arn]
        type
      end
    end

    module ResponseMIMETypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RetentionPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetentionPolicy, context: context)
        type = Types::RetentionPolicy.new
        type.home_efs_file_system = params[:home_efs_file_system]
        type
      end
    end

    module RetryPipelineExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetryPipelineExecutionInput, context: context)
        type = Types::RetryPipelineExecutionInput.new
        type.pipeline_execution_arn = params[:pipeline_execution_arn]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.parallelism_configuration = ParallelismConfiguration.build(params[:parallelism_configuration], context: "#{context}[:parallelism_configuration]") unless params[:parallelism_configuration].nil?
        type
      end
    end

    module RetryPipelineExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetryPipelineExecutionOutput, context: context)
        type = Types::RetryPipelineExecutionOutput.new
        type.pipeline_execution_arn = params[:pipeline_execution_arn]
        type
      end
    end

    module RetryStrategy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetryStrategy, context: context)
        type = Types::RetryStrategy.new
        type.maximum_retry_attempts = params[:maximum_retry_attempts]
        type
      end
    end

    module RuleParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module S3DataSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3DataSource, context: context)
        type = Types::S3DataSource.new
        type.s3_data_type = params[:s3_data_type]
        type.s3_uri = params[:s3_uri]
        type.s3_data_distribution_type = params[:s3_data_distribution_type]
        type.attribute_names = AttributeNames.build(params[:attribute_names], context: "#{context}[:attribute_names]") unless params[:attribute_names].nil?
        type
      end
    end

    module S3StorageConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3StorageConfig, context: context)
        type = Types::S3StorageConfig.new
        type.s3_uri = params[:s3_uri]
        type.kms_key_id = params[:kms_key_id]
        type.resolved_output_s3_uri = params[:resolved_output_s3_uri]
        type
      end
    end

    module ScheduleConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduleConfig, context: context)
        type = Types::ScheduleConfig.new
        type.schedule_expression = params[:schedule_expression]
        type
      end
    end

    module SearchExpression
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchExpression, context: context)
        type = Types::SearchExpression.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.nested_filters = NestedFiltersList.build(params[:nested_filters], context: "#{context}[:nested_filters]") unless params[:nested_filters].nil?
        type.sub_expressions = SearchExpressionList.build(params[:sub_expressions], context: "#{context}[:sub_expressions]") unless params[:sub_expressions].nil?
        type.operator = params[:operator]
        type
      end
    end

    module SearchExpressionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SearchExpression.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SearchInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchInput, context: context)
        type = Types::SearchInput.new
        type.resource = params[:resource]
        type.search_expression = SearchExpression.build(params[:search_expression], context: "#{context}[:search_expression]") unless params[:search_expression].nil?
        type.sort_by = params[:sort_by]
        type.sort_order = params[:sort_order]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module SearchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchOutput, context: context)
        type = Types::SearchOutput.new
        type.results = SearchResultsList.build(params[:results], context: "#{context}[:results]") unless params[:results].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module SearchRecord
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchRecord, context: context)
        type = Types::SearchRecord.new
        type.training_job = TrainingJob.build(params[:training_job], context: "#{context}[:training_job]") unless params[:training_job].nil?
        type.experiment = Experiment.build(params[:experiment], context: "#{context}[:experiment]") unless params[:experiment].nil?
        type.trial = Trial.build(params[:trial], context: "#{context}[:trial]") unless params[:trial].nil?
        type.trial_component = TrialComponent.build(params[:trial_component], context: "#{context}[:trial_component]") unless params[:trial_component].nil?
        type.endpoint = Endpoint.build(params[:endpoint], context: "#{context}[:endpoint]") unless params[:endpoint].nil?
        type.model_package = ModelPackage.build(params[:model_package], context: "#{context}[:model_package]") unless params[:model_package].nil?
        type.model_package_group = ModelPackageGroup.build(params[:model_package_group], context: "#{context}[:model_package_group]") unless params[:model_package_group].nil?
        type.pipeline = Pipeline.build(params[:pipeline], context: "#{context}[:pipeline]") unless params[:pipeline].nil?
        type.pipeline_execution = PipelineExecution.build(params[:pipeline_execution], context: "#{context}[:pipeline_execution]") unless params[:pipeline_execution].nil?
        type.feature_group = FeatureGroup.build(params[:feature_group], context: "#{context}[:feature_group]") unless params[:feature_group].nil?
        type.project = Project.build(params[:project], context: "#{context}[:project]") unless params[:project].nil?
        type
      end
    end

    module SearchResultsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SearchRecord.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SecondaryStatusTransition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SecondaryStatusTransition, context: context)
        type = Types::SecondaryStatusTransition.new
        type.status = params[:status]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.status_message = params[:status_message]
        type
      end
    end

    module SecondaryStatusTransitions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SecondaryStatusTransition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SecurityGroupIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SendPipelineExecutionStepFailureInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendPipelineExecutionStepFailureInput, context: context)
        type = Types::SendPipelineExecutionStepFailureInput.new
        type.callback_token = params[:callback_token]
        type.failure_reason = params[:failure_reason]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type
      end
    end

    module SendPipelineExecutionStepFailureOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendPipelineExecutionStepFailureOutput, context: context)
        type = Types::SendPipelineExecutionStepFailureOutput.new
        type.pipeline_execution_arn = params[:pipeline_execution_arn]
        type
      end
    end

    module SendPipelineExecutionStepSuccessInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendPipelineExecutionStepSuccessInput, context: context)
        type = Types::SendPipelineExecutionStepSuccessInput.new
        type.callback_token = params[:callback_token]
        type.output_parameters = OutputParameterList.build(params[:output_parameters], context: "#{context}[:output_parameters]") unless params[:output_parameters].nil?
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type
      end
    end

    module SendPipelineExecutionStepSuccessOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendPipelineExecutionStepSuccessOutput, context: context)
        type = Types::SendPipelineExecutionStepSuccessOutput.new
        type.pipeline_execution_arn = params[:pipeline_execution_arn]
        type
      end
    end

    module ServiceCatalogProvisionedProductDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceCatalogProvisionedProductDetails, context: context)
        type = Types::ServiceCatalogProvisionedProductDetails.new
        type.provisioned_product_id = params[:provisioned_product_id]
        type.provisioned_product_status_message = params[:provisioned_product_status_message]
        type
      end
    end

    module ServiceCatalogProvisioningDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceCatalogProvisioningDetails, context: context)
        type = Types::ServiceCatalogProvisioningDetails.new
        type.product_id = params[:product_id]
        type.provisioning_artifact_id = params[:provisioning_artifact_id]
        type.path_id = params[:path_id]
        type.provisioning_parameters = ProvisioningParameters.build(params[:provisioning_parameters], context: "#{context}[:provisioning_parameters]") unless params[:provisioning_parameters].nil?
        type
      end
    end

    module ServiceCatalogProvisioningUpdateDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceCatalogProvisioningUpdateDetails, context: context)
        type = Types::ServiceCatalogProvisioningUpdateDetails.new
        type.provisioning_artifact_id = params[:provisioning_artifact_id]
        type.provisioning_parameters = ProvisioningParameters.build(params[:provisioning_parameters], context: "#{context}[:provisioning_parameters]") unless params[:provisioning_parameters].nil?
        type
      end
    end

    module SharingSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SharingSettings, context: context)
        type = Types::SharingSettings.new
        type.notebook_output_option = params[:notebook_output_option]
        type.s3_output_path = params[:s3_output_path]
        type.s3_kms_key_id = params[:s3_kms_key_id]
        type
      end
    end

    module ShuffleConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ShuffleConfig, context: context)
        type = Types::ShuffleConfig.new
        type.seed = params[:seed]
        type
      end
    end

    module SourceAlgorithm
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceAlgorithm, context: context)
        type = Types::SourceAlgorithm.new
        type.model_data_url = params[:model_data_url]
        type.algorithm_name = params[:algorithm_name]
        type
      end
    end

    module SourceAlgorithmList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SourceAlgorithm.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SourceAlgorithmSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceAlgorithmSpecification, context: context)
        type = Types::SourceAlgorithmSpecification.new
        type.source_algorithms = SourceAlgorithmList.build(params[:source_algorithms], context: "#{context}[:source_algorithms]") unless params[:source_algorithms].nil?
        type
      end
    end

    module SourceIpConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceIpConfig, context: context)
        type = Types::SourceIpConfig.new
        type.cidrs = Cidrs.build(params[:cidrs], context: "#{context}[:cidrs]") unless params[:cidrs].nil?
        type
      end
    end

    module StartMonitoringScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMonitoringScheduleInput, context: context)
        type = Types::StartMonitoringScheduleInput.new
        type.monitoring_schedule_name = params[:monitoring_schedule_name]
        type
      end
    end

    module StartMonitoringScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMonitoringScheduleOutput, context: context)
        type = Types::StartMonitoringScheduleOutput.new
        type
      end
    end

    module StartNotebookInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartNotebookInstanceInput, context: context)
        type = Types::StartNotebookInstanceInput.new
        type.notebook_instance_name = params[:notebook_instance_name]
        type
      end
    end

    module StartNotebookInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartNotebookInstanceOutput, context: context)
        type = Types::StartNotebookInstanceOutput.new
        type
      end
    end

    module StartPipelineExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartPipelineExecutionInput, context: context)
        type = Types::StartPipelineExecutionInput.new
        type.pipeline_name = params[:pipeline_name]
        type.pipeline_execution_display_name = params[:pipeline_execution_display_name]
        type.pipeline_parameters = ParameterList.build(params[:pipeline_parameters], context: "#{context}[:pipeline_parameters]") unless params[:pipeline_parameters].nil?
        type.pipeline_execution_description = params[:pipeline_execution_description]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.parallelism_configuration = ParallelismConfiguration.build(params[:parallelism_configuration], context: "#{context}[:parallelism_configuration]") unless params[:parallelism_configuration].nil?
        type
      end
    end

    module StartPipelineExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartPipelineExecutionOutput, context: context)
        type = Types::StartPipelineExecutionOutput.new
        type.pipeline_execution_arn = params[:pipeline_execution_arn]
        type
      end
    end

    module StopAutoMLJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopAutoMLJobInput, context: context)
        type = Types::StopAutoMLJobInput.new
        type.auto_ml_job_name = params[:auto_ml_job_name]
        type
      end
    end

    module StopAutoMLJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopAutoMLJobOutput, context: context)
        type = Types::StopAutoMLJobOutput.new
        type
      end
    end

    module StopCompilationJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopCompilationJobInput, context: context)
        type = Types::StopCompilationJobInput.new
        type.compilation_job_name = params[:compilation_job_name]
        type
      end
    end

    module StopCompilationJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopCompilationJobOutput, context: context)
        type = Types::StopCompilationJobOutput.new
        type
      end
    end

    module StopEdgePackagingJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopEdgePackagingJobInput, context: context)
        type = Types::StopEdgePackagingJobInput.new
        type.edge_packaging_job_name = params[:edge_packaging_job_name]
        type
      end
    end

    module StopEdgePackagingJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopEdgePackagingJobOutput, context: context)
        type = Types::StopEdgePackagingJobOutput.new
        type
      end
    end

    module StopHyperParameterTuningJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopHyperParameterTuningJobInput, context: context)
        type = Types::StopHyperParameterTuningJobInput.new
        type.hyper_parameter_tuning_job_name = params[:hyper_parameter_tuning_job_name]
        type
      end
    end

    module StopHyperParameterTuningJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopHyperParameterTuningJobOutput, context: context)
        type = Types::StopHyperParameterTuningJobOutput.new
        type
      end
    end

    module StopInferenceRecommendationsJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopInferenceRecommendationsJobInput, context: context)
        type = Types::StopInferenceRecommendationsJobInput.new
        type.job_name = params[:job_name]
        type
      end
    end

    module StopInferenceRecommendationsJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopInferenceRecommendationsJobOutput, context: context)
        type = Types::StopInferenceRecommendationsJobOutput.new
        type
      end
    end

    module StopLabelingJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopLabelingJobInput, context: context)
        type = Types::StopLabelingJobInput.new
        type.labeling_job_name = params[:labeling_job_name]
        type
      end
    end

    module StopLabelingJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopLabelingJobOutput, context: context)
        type = Types::StopLabelingJobOutput.new
        type
      end
    end

    module StopMonitoringScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopMonitoringScheduleInput, context: context)
        type = Types::StopMonitoringScheduleInput.new
        type.monitoring_schedule_name = params[:monitoring_schedule_name]
        type
      end
    end

    module StopMonitoringScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopMonitoringScheduleOutput, context: context)
        type = Types::StopMonitoringScheduleOutput.new
        type
      end
    end

    module StopNotebookInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopNotebookInstanceInput, context: context)
        type = Types::StopNotebookInstanceInput.new
        type.notebook_instance_name = params[:notebook_instance_name]
        type
      end
    end

    module StopNotebookInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopNotebookInstanceOutput, context: context)
        type = Types::StopNotebookInstanceOutput.new
        type
      end
    end

    module StopPipelineExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopPipelineExecutionInput, context: context)
        type = Types::StopPipelineExecutionInput.new
        type.pipeline_execution_arn = params[:pipeline_execution_arn]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type
      end
    end

    module StopPipelineExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopPipelineExecutionOutput, context: context)
        type = Types::StopPipelineExecutionOutput.new
        type.pipeline_execution_arn = params[:pipeline_execution_arn]
        type
      end
    end

    module StopProcessingJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopProcessingJobInput, context: context)
        type = Types::StopProcessingJobInput.new
        type.processing_job_name = params[:processing_job_name]
        type
      end
    end

    module StopProcessingJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopProcessingJobOutput, context: context)
        type = Types::StopProcessingJobOutput.new
        type
      end
    end

    module StopTrainingJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopTrainingJobInput, context: context)
        type = Types::StopTrainingJobInput.new
        type.training_job_name = params[:training_job_name]
        type
      end
    end

    module StopTrainingJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopTrainingJobOutput, context: context)
        type = Types::StopTrainingJobOutput.new
        type
      end
    end

    module StopTransformJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopTransformJobInput, context: context)
        type = Types::StopTransformJobInput.new
        type.transform_job_name = params[:transform_job_name]
        type
      end
    end

    module StopTransformJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopTransformJobOutput, context: context)
        type = Types::StopTransformJobOutput.new
        type
      end
    end

    module StoppingCondition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StoppingCondition, context: context)
        type = Types::StoppingCondition.new
        type.max_runtime_in_seconds = params[:max_runtime_in_seconds]
        type.max_wait_time_in_seconds = params[:max_wait_time_in_seconds]
        type
      end
    end

    module StudioLifecycleConfigDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StudioLifecycleConfigDetails, context: context)
        type = Types::StudioLifecycleConfigDetails.new
        type.studio_lifecycle_config_arn = params[:studio_lifecycle_config_arn]
        type.studio_lifecycle_config_name = params[:studio_lifecycle_config_name]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type.studio_lifecycle_config_app_type = params[:studio_lifecycle_config_app_type]
        type
      end
    end

    module StudioLifecycleConfigsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StudioLifecycleConfigDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Subnets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SubscribedWorkteam
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubscribedWorkteam, context: context)
        type = Types::SubscribedWorkteam.new
        type.workteam_arn = params[:workteam_arn]
        type.marketplace_title = params[:marketplace_title]
        type.seller_name = params[:seller_name]
        type.marketplace_description = params[:marketplace_description]
        type.listing_id = params[:listing_id]
        type
      end
    end

    module SubscribedWorkteams
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SubscribedWorkteam.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SuggestionQuery
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SuggestionQuery, context: context)
        type = Types::SuggestionQuery.new
        type.property_name_query = PropertyNameQuery.build(params[:property_name_query], context: "#{context}[:property_name_query]") unless params[:property_name_query].nil?
        type
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

    module TargetPlatform
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetPlatform, context: context)
        type = Types::TargetPlatform.new
        type.os = params[:os]
        type.arch = params[:arch]
        type.accelerator = params[:accelerator]
        type
      end
    end

    module TaskKeywords
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TensorBoardAppSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TensorBoardAppSettings, context: context)
        type = Types::TensorBoardAppSettings.new
        type.default_resource_spec = ResourceSpec.build(params[:default_resource_spec], context: "#{context}[:default_resource_spec]") unless params[:default_resource_spec].nil?
        type
      end
    end

    module TensorBoardOutputConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TensorBoardOutputConfig, context: context)
        type = Types::TensorBoardOutputConfig.new
        type.local_path = params[:local_path]
        type.s3_output_path = params[:s3_output_path]
        type
      end
    end

    module TrafficPattern
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrafficPattern, context: context)
        type = Types::TrafficPattern.new
        type.traffic_type = params[:traffic_type]
        type.phases = Phases.build(params[:phases], context: "#{context}[:phases]") unless params[:phases].nil?
        type
      end
    end

    module TrafficRoutingConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrafficRoutingConfig, context: context)
        type = Types::TrafficRoutingConfig.new
        type.type = params[:type]
        type.wait_interval_in_seconds = params[:wait_interval_in_seconds]
        type.canary_size = CapacitySize.build(params[:canary_size], context: "#{context}[:canary_size]") unless params[:canary_size].nil?
        type.linear_step_size = CapacitySize.build(params[:linear_step_size], context: "#{context}[:linear_step_size]") unless params[:linear_step_size].nil?
        type
      end
    end

    module TrainingEnvironmentMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TrainingInstanceTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TrainingJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrainingJob, context: context)
        type = Types::TrainingJob.new
        type.training_job_name = params[:training_job_name]
        type.training_job_arn = params[:training_job_arn]
        type.tuning_job_arn = params[:tuning_job_arn]
        type.labeling_job_arn = params[:labeling_job_arn]
        type.auto_ml_job_arn = params[:auto_ml_job_arn]
        type.model_artifacts = ModelArtifacts.build(params[:model_artifacts], context: "#{context}[:model_artifacts]") unless params[:model_artifacts].nil?
        type.training_job_status = params[:training_job_status]
        type.secondary_status = params[:secondary_status]
        type.failure_reason = params[:failure_reason]
        type.hyper_parameters = HyperParameters.build(params[:hyper_parameters], context: "#{context}[:hyper_parameters]") unless params[:hyper_parameters].nil?
        type.algorithm_specification = AlgorithmSpecification.build(params[:algorithm_specification], context: "#{context}[:algorithm_specification]") unless params[:algorithm_specification].nil?
        type.role_arn = params[:role_arn]
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.resource_config = ResourceConfig.build(params[:resource_config], context: "#{context}[:resource_config]") unless params[:resource_config].nil?
        type.vpc_config = VpcConfig.build(params[:vpc_config], context: "#{context}[:vpc_config]") unless params[:vpc_config].nil?
        type.stopping_condition = StoppingCondition.build(params[:stopping_condition], context: "#{context}[:stopping_condition]") unless params[:stopping_condition].nil?
        type.creation_time = params[:creation_time]
        type.training_start_time = params[:training_start_time]
        type.training_end_time = params[:training_end_time]
        type.last_modified_time = params[:last_modified_time]
        type.secondary_status_transitions = SecondaryStatusTransitions.build(params[:secondary_status_transitions], context: "#{context}[:secondary_status_transitions]") unless params[:secondary_status_transitions].nil?
        type.final_metric_data_list = FinalMetricDataList.build(params[:final_metric_data_list], context: "#{context}[:final_metric_data_list]") unless params[:final_metric_data_list].nil?
        type.enable_network_isolation = params[:enable_network_isolation]
        type.enable_inter_container_traffic_encryption = params[:enable_inter_container_traffic_encryption]
        type.enable_managed_spot_training = params[:enable_managed_spot_training]
        type.checkpoint_config = CheckpointConfig.build(params[:checkpoint_config], context: "#{context}[:checkpoint_config]") unless params[:checkpoint_config].nil?
        type.training_time_in_seconds = params[:training_time_in_seconds]
        type.billable_time_in_seconds = params[:billable_time_in_seconds]
        type.debug_hook_config = DebugHookConfig.build(params[:debug_hook_config], context: "#{context}[:debug_hook_config]") unless params[:debug_hook_config].nil?
        type.experiment_config = ExperimentConfig.build(params[:experiment_config], context: "#{context}[:experiment_config]") unless params[:experiment_config].nil?
        type.debug_rule_configurations = DebugRuleConfigurations.build(params[:debug_rule_configurations], context: "#{context}[:debug_rule_configurations]") unless params[:debug_rule_configurations].nil?
        type.tensor_board_output_config = TensorBoardOutputConfig.build(params[:tensor_board_output_config], context: "#{context}[:tensor_board_output_config]") unless params[:tensor_board_output_config].nil?
        type.debug_rule_evaluation_statuses = DebugRuleEvaluationStatuses.build(params[:debug_rule_evaluation_statuses], context: "#{context}[:debug_rule_evaluation_statuses]") unless params[:debug_rule_evaluation_statuses].nil?
        type.environment = TrainingEnvironmentMap.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.retry_strategy = RetryStrategy.build(params[:retry_strategy], context: "#{context}[:retry_strategy]") unless params[:retry_strategy].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TrainingJobDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrainingJobDefinition, context: context)
        type = Types::TrainingJobDefinition.new
        type.training_input_mode = params[:training_input_mode]
        type.hyper_parameters = HyperParameters.build(params[:hyper_parameters], context: "#{context}[:hyper_parameters]") unless params[:hyper_parameters].nil?
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.resource_config = ResourceConfig.build(params[:resource_config], context: "#{context}[:resource_config]") unless params[:resource_config].nil?
        type.stopping_condition = StoppingCondition.build(params[:stopping_condition], context: "#{context}[:stopping_condition]") unless params[:stopping_condition].nil?
        type
      end
    end

    module TrainingJobStatusCounters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrainingJobStatusCounters, context: context)
        type = Types::TrainingJobStatusCounters.new
        type.completed = params[:completed]
        type.in_progress = params[:in_progress]
        type.retryable_error = params[:retryable_error]
        type.non_retryable_error = params[:non_retryable_error]
        type.stopped = params[:stopped]
        type
      end
    end

    module TrainingJobStepMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrainingJobStepMetadata, context: context)
        type = Types::TrainingJobStepMetadata.new
        type.arn = params[:arn]
        type
      end
    end

    module TrainingJobSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TrainingJobSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TrainingJobSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrainingJobSummary, context: context)
        type = Types::TrainingJobSummary.new
        type.training_job_name = params[:training_job_name]
        type.training_job_arn = params[:training_job_arn]
        type.creation_time = params[:creation_time]
        type.training_end_time = params[:training_end_time]
        type.last_modified_time = params[:last_modified_time]
        type.training_job_status = params[:training_job_status]
        type
      end
    end

    module TrainingSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrainingSpecification, context: context)
        type = Types::TrainingSpecification.new
        type.training_image = params[:training_image]
        type.training_image_digest = params[:training_image_digest]
        type.supported_hyper_parameters = HyperParameterSpecifications.build(params[:supported_hyper_parameters], context: "#{context}[:supported_hyper_parameters]") unless params[:supported_hyper_parameters].nil?
        type.supported_training_instance_types = TrainingInstanceTypes.build(params[:supported_training_instance_types], context: "#{context}[:supported_training_instance_types]") unless params[:supported_training_instance_types].nil?
        type.supports_distributed_training = params[:supports_distributed_training]
        type.metric_definitions = MetricDefinitionList.build(params[:metric_definitions], context: "#{context}[:metric_definitions]") unless params[:metric_definitions].nil?
        type.training_channels = ChannelSpecifications.build(params[:training_channels], context: "#{context}[:training_channels]") unless params[:training_channels].nil?
        type.supported_tuning_job_objective_metrics = HyperParameterTuningJobObjectives.build(params[:supported_tuning_job_objective_metrics], context: "#{context}[:supported_tuning_job_objective_metrics]") unless params[:supported_tuning_job_objective_metrics].nil?
        type
      end
    end

    module TransformDataSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransformDataSource, context: context)
        type = Types::TransformDataSource.new
        type.s3_data_source = TransformS3DataSource.build(params[:s3_data_source], context: "#{context}[:s3_data_source]") unless params[:s3_data_source].nil?
        type
      end
    end

    module TransformEnvironmentMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TransformInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransformInput, context: context)
        type = Types::TransformInput.new
        type.data_source = TransformDataSource.build(params[:data_source], context: "#{context}[:data_source]") unless params[:data_source].nil?
        type.content_type = params[:content_type]
        type.compression_type = params[:compression_type]
        type.split_type = params[:split_type]
        type
      end
    end

    module TransformInstanceTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TransformJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransformJob, context: context)
        type = Types::TransformJob.new
        type.transform_job_name = params[:transform_job_name]
        type.transform_job_arn = params[:transform_job_arn]
        type.transform_job_status = params[:transform_job_status]
        type.failure_reason = params[:failure_reason]
        type.model_name = params[:model_name]
        type.max_concurrent_transforms = params[:max_concurrent_transforms]
        type.model_client_config = ModelClientConfig.build(params[:model_client_config], context: "#{context}[:model_client_config]") unless params[:model_client_config].nil?
        type.max_payload_in_mb = params[:max_payload_in_mb]
        type.batch_strategy = params[:batch_strategy]
        type.environment = TransformEnvironmentMap.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.transform_input = TransformInput.build(params[:transform_input], context: "#{context}[:transform_input]") unless params[:transform_input].nil?
        type.transform_output = TransformOutput.build(params[:transform_output], context: "#{context}[:transform_output]") unless params[:transform_output].nil?
        type.transform_resources = TransformResources.build(params[:transform_resources], context: "#{context}[:transform_resources]") unless params[:transform_resources].nil?
        type.creation_time = params[:creation_time]
        type.transform_start_time = params[:transform_start_time]
        type.transform_end_time = params[:transform_end_time]
        type.labeling_job_arn = params[:labeling_job_arn]
        type.auto_ml_job_arn = params[:auto_ml_job_arn]
        type.data_processing = DataProcessing.build(params[:data_processing], context: "#{context}[:data_processing]") unless params[:data_processing].nil?
        type.experiment_config = ExperimentConfig.build(params[:experiment_config], context: "#{context}[:experiment_config]") unless params[:experiment_config].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TransformJobDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransformJobDefinition, context: context)
        type = Types::TransformJobDefinition.new
        type.max_concurrent_transforms = params[:max_concurrent_transforms]
        type.max_payload_in_mb = params[:max_payload_in_mb]
        type.batch_strategy = params[:batch_strategy]
        type.environment = TransformEnvironmentMap.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type.transform_input = TransformInput.build(params[:transform_input], context: "#{context}[:transform_input]") unless params[:transform_input].nil?
        type.transform_output = TransformOutput.build(params[:transform_output], context: "#{context}[:transform_output]") unless params[:transform_output].nil?
        type.transform_resources = TransformResources.build(params[:transform_resources], context: "#{context}[:transform_resources]") unless params[:transform_resources].nil?
        type
      end
    end

    module TransformJobStepMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransformJobStepMetadata, context: context)
        type = Types::TransformJobStepMetadata.new
        type.arn = params[:arn]
        type
      end
    end

    module TransformJobSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TransformJobSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TransformJobSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransformJobSummary, context: context)
        type = Types::TransformJobSummary.new
        type.transform_job_name = params[:transform_job_name]
        type.transform_job_arn = params[:transform_job_arn]
        type.creation_time = params[:creation_time]
        type.transform_end_time = params[:transform_end_time]
        type.last_modified_time = params[:last_modified_time]
        type.transform_job_status = params[:transform_job_status]
        type.failure_reason = params[:failure_reason]
        type
      end
    end

    module TransformOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransformOutput, context: context)
        type = Types::TransformOutput.new
        type.s3_output_path = params[:s3_output_path]
        type.accept = params[:accept]
        type.assemble_with = params[:assemble_with]
        type.kms_key_id = params[:kms_key_id]
        type
      end
    end

    module TransformResources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransformResources, context: context)
        type = Types::TransformResources.new
        type.instance_type = params[:instance_type]
        type.instance_count = params[:instance_count]
        type.volume_kms_key_id = params[:volume_kms_key_id]
        type
      end
    end

    module TransformS3DataSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TransformS3DataSource, context: context)
        type = Types::TransformS3DataSource.new
        type.s3_data_type = params[:s3_data_type]
        type.s3_uri = params[:s3_uri]
        type
      end
    end

    module Trial
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Trial, context: context)
        type = Types::Trial.new
        type.trial_name = params[:trial_name]
        type.trial_arn = params[:trial_arn]
        type.display_name = params[:display_name]
        type.experiment_name = params[:experiment_name]
        type.source = TrialSource.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.creation_time = params[:creation_time]
        type.created_by = UserContext.build(params[:created_by], context: "#{context}[:created_by]") unless params[:created_by].nil?
        type.last_modified_time = params[:last_modified_time]
        type.last_modified_by = UserContext.build(params[:last_modified_by], context: "#{context}[:last_modified_by]") unless params[:last_modified_by].nil?
        type.metadata_properties = MetadataProperties.build(params[:metadata_properties], context: "#{context}[:metadata_properties]") unless params[:metadata_properties].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.trial_component_summaries = TrialComponentSimpleSummaries.build(params[:trial_component_summaries], context: "#{context}[:trial_component_summaries]") unless params[:trial_component_summaries].nil?
        type
      end
    end

    module TrialComponent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrialComponent, context: context)
        type = Types::TrialComponent.new
        type.trial_component_name = params[:trial_component_name]
        type.display_name = params[:display_name]
        type.trial_component_arn = params[:trial_component_arn]
        type.source = TrialComponentSource.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.status = TrialComponentStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.creation_time = params[:creation_time]
        type.created_by = UserContext.build(params[:created_by], context: "#{context}[:created_by]") unless params[:created_by].nil?
        type.last_modified_time = params[:last_modified_time]
        type.last_modified_by = UserContext.build(params[:last_modified_by], context: "#{context}[:last_modified_by]") unless params[:last_modified_by].nil?
        type.parameters = TrialComponentParameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.input_artifacts = TrialComponentArtifacts.build(params[:input_artifacts], context: "#{context}[:input_artifacts]") unless params[:input_artifacts].nil?
        type.output_artifacts = TrialComponentArtifacts.build(params[:output_artifacts], context: "#{context}[:output_artifacts]") unless params[:output_artifacts].nil?
        type.metrics = TrialComponentMetricSummaries.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type.metadata_properties = MetadataProperties.build(params[:metadata_properties], context: "#{context}[:metadata_properties]") unless params[:metadata_properties].nil?
        type.source_detail = TrialComponentSourceDetail.build(params[:source_detail], context: "#{context}[:source_detail]") unless params[:source_detail].nil?
        type.lineage_group_arn = params[:lineage_group_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.parents = Parents.build(params[:parents], context: "#{context}[:parents]") unless params[:parents].nil?
        type
      end
    end

    module TrialComponentArtifact
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrialComponentArtifact, context: context)
        type = Types::TrialComponentArtifact.new
        type.media_type = params[:media_type]
        type.value = params[:value]
        type
      end
    end

    module TrialComponentArtifacts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = TrialComponentArtifact.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module TrialComponentMetricSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TrialComponentMetricSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TrialComponentMetricSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrialComponentMetricSummary, context: context)
        type = Types::TrialComponentMetricSummary.new
        type.metric_name = params[:metric_name]
        type.source_arn = params[:source_arn]
        type.time_stamp = params[:time_stamp]
        type.max = params[:max]
        type.min = params[:min]
        type.last = params[:last]
        type.count = params[:count]
        type.avg = params[:avg]
        type.std_dev = params[:std_dev]
        type
      end
    end

    module TrialComponentParameterValue
      def self.build(params, context: '')
        return params if params.is_a?(Types::TrialComponentParameterValue)
        Hearth::Validator.validate!(params, ::Hash, Types::TrialComponentParameterValue, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :string_value
          Types::TrialComponentParameterValue::StringValue.new(
            params[:string_value]
          )
        when :number_value
          Types::TrialComponentParameterValue::NumberValue.new(
            params[:number_value]
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :string_value, :number_value set"
        end
      end
    end

    module TrialComponentParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = TrialComponentParameterValue.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module TrialComponentSimpleSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TrialComponentSimpleSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TrialComponentSimpleSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrialComponentSimpleSummary, context: context)
        type = Types::TrialComponentSimpleSummary.new
        type.trial_component_name = params[:trial_component_name]
        type.trial_component_arn = params[:trial_component_arn]
        type.trial_component_source = TrialComponentSource.build(params[:trial_component_source], context: "#{context}[:trial_component_source]") unless params[:trial_component_source].nil?
        type.creation_time = params[:creation_time]
        type.created_by = UserContext.build(params[:created_by], context: "#{context}[:created_by]") unless params[:created_by].nil?
        type
      end
    end

    module TrialComponentSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrialComponentSource, context: context)
        type = Types::TrialComponentSource.new
        type.source_arn = params[:source_arn]
        type.source_type = params[:source_type]
        type
      end
    end

    module TrialComponentSourceDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrialComponentSourceDetail, context: context)
        type = Types::TrialComponentSourceDetail.new
        type.source_arn = params[:source_arn]
        type.training_job = TrainingJob.build(params[:training_job], context: "#{context}[:training_job]") unless params[:training_job].nil?
        type.processing_job = ProcessingJob.build(params[:processing_job], context: "#{context}[:processing_job]") unless params[:processing_job].nil?
        type.transform_job = TransformJob.build(params[:transform_job], context: "#{context}[:transform_job]") unless params[:transform_job].nil?
        type
      end
    end

    module TrialComponentStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrialComponentStatus, context: context)
        type = Types::TrialComponentStatus.new
        type.primary_status = params[:primary_status]
        type.message = params[:message]
        type
      end
    end

    module TrialComponentSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TrialComponentSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TrialComponentSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrialComponentSummary, context: context)
        type = Types::TrialComponentSummary.new
        type.trial_component_name = params[:trial_component_name]
        type.trial_component_arn = params[:trial_component_arn]
        type.display_name = params[:display_name]
        type.trial_component_source = TrialComponentSource.build(params[:trial_component_source], context: "#{context}[:trial_component_source]") unless params[:trial_component_source].nil?
        type.status = TrialComponentStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.creation_time = params[:creation_time]
        type.created_by = UserContext.build(params[:created_by], context: "#{context}[:created_by]") unless params[:created_by].nil?
        type.last_modified_time = params[:last_modified_time]
        type.last_modified_by = UserContext.build(params[:last_modified_by], context: "#{context}[:last_modified_by]") unless params[:last_modified_by].nil?
        type
      end
    end

    module TrialSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrialSource, context: context)
        type = Types::TrialSource.new
        type.source_arn = params[:source_arn]
        type.source_type = params[:source_type]
        type
      end
    end

    module TrialSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TrialSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TrialSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrialSummary, context: context)
        type = Types::TrialSummary.new
        type.trial_arn = params[:trial_arn]
        type.trial_name = params[:trial_name]
        type.display_name = params[:display_name]
        type.trial_source = TrialSource.build(params[:trial_source], context: "#{context}[:trial_source]") unless params[:trial_source].nil?
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module TuningJobCompletionCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TuningJobCompletionCriteria, context: context)
        type = Types::TuningJobCompletionCriteria.new
        type.target_objective_metric_value = params[:target_objective_metric_value]
        type
      end
    end

    module TuningJobStepMetaData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TuningJobStepMetaData, context: context)
        type = Types::TuningJobStepMetaData.new
        type.arn = params[:arn]
        type
      end
    end

    module USD
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::USD, context: context)
        type = Types::USD.new
        type.dollars = params[:dollars]
        type.cents = params[:cents]
        type.tenth_fractions_of_a_cent = params[:tenth_fractions_of_a_cent]
        type
      end
    end

    module UiConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UiConfig, context: context)
        type = Types::UiConfig.new
        type.ui_template_s3_uri = params[:ui_template_s3_uri]
        type.human_task_ui_arn = params[:human_task_ui_arn]
        type
      end
    end

    module UiTemplate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UiTemplate, context: context)
        type = Types::UiTemplate.new
        type.content = params[:content]
        type
      end
    end

    module UiTemplateInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UiTemplateInfo, context: context)
        type = Types::UiTemplateInfo.new
        type.url = params[:url]
        type.content_sha256 = params[:content_sha256]
        type
      end
    end

    module UpdateActionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateActionInput, context: context)
        type = Types::UpdateActionInput.new
        type.action_name = params[:action_name]
        type.description = params[:description]
        type.status = params[:status]
        type.properties = LineageEntityParameters.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type.properties_to_remove = ListLineageEntityParameterKey.build(params[:properties_to_remove], context: "#{context}[:properties_to_remove]") unless params[:properties_to_remove].nil?
        type
      end
    end

    module UpdateActionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateActionOutput, context: context)
        type = Types::UpdateActionOutput.new
        type.action_arn = params[:action_arn]
        type
      end
    end

    module UpdateAppImageConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAppImageConfigInput, context: context)
        type = Types::UpdateAppImageConfigInput.new
        type.app_image_config_name = params[:app_image_config_name]
        type.kernel_gateway_image_config = KernelGatewayImageConfig.build(params[:kernel_gateway_image_config], context: "#{context}[:kernel_gateway_image_config]") unless params[:kernel_gateway_image_config].nil?
        type
      end
    end

    module UpdateAppImageConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAppImageConfigOutput, context: context)
        type = Types::UpdateAppImageConfigOutput.new
        type.app_image_config_arn = params[:app_image_config_arn]
        type
      end
    end

    module UpdateArtifactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateArtifactInput, context: context)
        type = Types::UpdateArtifactInput.new
        type.artifact_arn = params[:artifact_arn]
        type.artifact_name = params[:artifact_name]
        type.properties = LineageEntityParameters.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type.properties_to_remove = ListLineageEntityParameterKey.build(params[:properties_to_remove], context: "#{context}[:properties_to_remove]") unless params[:properties_to_remove].nil?
        type
      end
    end

    module UpdateArtifactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateArtifactOutput, context: context)
        type = Types::UpdateArtifactOutput.new
        type.artifact_arn = params[:artifact_arn]
        type
      end
    end

    module UpdateCodeRepositoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCodeRepositoryInput, context: context)
        type = Types::UpdateCodeRepositoryInput.new
        type.code_repository_name = params[:code_repository_name]
        type.git_config = GitConfigForUpdate.build(params[:git_config], context: "#{context}[:git_config]") unless params[:git_config].nil?
        type
      end
    end

    module UpdateCodeRepositoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCodeRepositoryOutput, context: context)
        type = Types::UpdateCodeRepositoryOutput.new
        type.code_repository_arn = params[:code_repository_arn]
        type
      end
    end

    module UpdateContextInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContextInput, context: context)
        type = Types::UpdateContextInput.new
        type.context_name = params[:context_name]
        type.description = params[:description]
        type.properties = LineageEntityParameters.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type.properties_to_remove = ListLineageEntityParameterKey.build(params[:properties_to_remove], context: "#{context}[:properties_to_remove]") unless params[:properties_to_remove].nil?
        type
      end
    end

    module UpdateContextOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContextOutput, context: context)
        type = Types::UpdateContextOutput.new
        type.context_arn = params[:context_arn]
        type
      end
    end

    module UpdateDeviceFleetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDeviceFleetInput, context: context)
        type = Types::UpdateDeviceFleetInput.new
        type.device_fleet_name = params[:device_fleet_name]
        type.role_arn = params[:role_arn]
        type.description = params[:description]
        type.output_config = EdgeOutputConfig.build(params[:output_config], context: "#{context}[:output_config]") unless params[:output_config].nil?
        type.enable_iot_role_alias = params[:enable_iot_role_alias]
        type
      end
    end

    module UpdateDeviceFleetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDeviceFleetOutput, context: context)
        type = Types::UpdateDeviceFleetOutput.new
        type
      end
    end

    module UpdateDevicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDevicesInput, context: context)
        type = Types::UpdateDevicesInput.new
        type.device_fleet_name = params[:device_fleet_name]
        type.devices = Devices.build(params[:devices], context: "#{context}[:devices]") unless params[:devices].nil?
        type
      end
    end

    module UpdateDevicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDevicesOutput, context: context)
        type = Types::UpdateDevicesOutput.new
        type
      end
    end

    module UpdateDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDomainInput, context: context)
        type = Types::UpdateDomainInput.new
        type.domain_id = params[:domain_id]
        type.default_user_settings = UserSettings.build(params[:default_user_settings], context: "#{context}[:default_user_settings]") unless params[:default_user_settings].nil?
        type.domain_settings_for_update = DomainSettingsForUpdate.build(params[:domain_settings_for_update], context: "#{context}[:domain_settings_for_update]") unless params[:domain_settings_for_update].nil?
        type
      end
    end

    module UpdateDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDomainOutput, context: context)
        type = Types::UpdateDomainOutput.new
        type.domain_arn = params[:domain_arn]
        type
      end
    end

    module UpdateEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEndpointInput, context: context)
        type = Types::UpdateEndpointInput.new
        type.endpoint_name = params[:endpoint_name]
        type.endpoint_config_name = params[:endpoint_config_name]
        type.retain_all_variant_properties = params[:retain_all_variant_properties]
        type.exclude_retained_variant_properties = VariantPropertyList.build(params[:exclude_retained_variant_properties], context: "#{context}[:exclude_retained_variant_properties]") unless params[:exclude_retained_variant_properties].nil?
        type.deployment_config = DeploymentConfig.build(params[:deployment_config], context: "#{context}[:deployment_config]") unless params[:deployment_config].nil?
        type.retain_deployment_config = params[:retain_deployment_config]
        type
      end
    end

    module UpdateEndpointOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEndpointOutput, context: context)
        type = Types::UpdateEndpointOutput.new
        type.endpoint_arn = params[:endpoint_arn]
        type
      end
    end

    module UpdateEndpointWeightsAndCapacitiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEndpointWeightsAndCapacitiesInput, context: context)
        type = Types::UpdateEndpointWeightsAndCapacitiesInput.new
        type.endpoint_name = params[:endpoint_name]
        type.desired_weights_and_capacities = DesiredWeightAndCapacityList.build(params[:desired_weights_and_capacities], context: "#{context}[:desired_weights_and_capacities]") unless params[:desired_weights_and_capacities].nil?
        type
      end
    end

    module UpdateEndpointWeightsAndCapacitiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEndpointWeightsAndCapacitiesOutput, context: context)
        type = Types::UpdateEndpointWeightsAndCapacitiesOutput.new
        type.endpoint_arn = params[:endpoint_arn]
        type
      end
    end

    module UpdateExperimentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateExperimentInput, context: context)
        type = Types::UpdateExperimentInput.new
        type.experiment_name = params[:experiment_name]
        type.display_name = params[:display_name]
        type.description = params[:description]
        type
      end
    end

    module UpdateExperimentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateExperimentOutput, context: context)
        type = Types::UpdateExperimentOutput.new
        type.experiment_arn = params[:experiment_arn]
        type
      end
    end

    module UpdateImageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateImageInput, context: context)
        type = Types::UpdateImageInput.new
        type.delete_properties = ImageDeletePropertyList.build(params[:delete_properties], context: "#{context}[:delete_properties]") unless params[:delete_properties].nil?
        type.description = params[:description]
        type.display_name = params[:display_name]
        type.image_name = params[:image_name]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module UpdateImageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateImageOutput, context: context)
        type = Types::UpdateImageOutput.new
        type.image_arn = params[:image_arn]
        type
      end
    end

    module UpdateModelPackageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateModelPackageInput, context: context)
        type = Types::UpdateModelPackageInput.new
        type.model_package_arn = params[:model_package_arn]
        type.model_approval_status = params[:model_approval_status]
        type.approval_description = params[:approval_description]
        type.customer_metadata_properties = CustomerMetadataMap.build(params[:customer_metadata_properties], context: "#{context}[:customer_metadata_properties]") unless params[:customer_metadata_properties].nil?
        type.customer_metadata_properties_to_remove = CustomerMetadataKeyList.build(params[:customer_metadata_properties_to_remove], context: "#{context}[:customer_metadata_properties_to_remove]") unless params[:customer_metadata_properties_to_remove].nil?
        type.additional_inference_specifications_to_add = AdditionalInferenceSpecifications.build(params[:additional_inference_specifications_to_add], context: "#{context}[:additional_inference_specifications_to_add]") unless params[:additional_inference_specifications_to_add].nil?
        type
      end
    end

    module UpdateModelPackageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateModelPackageOutput, context: context)
        type = Types::UpdateModelPackageOutput.new
        type.model_package_arn = params[:model_package_arn]
        type
      end
    end

    module UpdateMonitoringScheduleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMonitoringScheduleInput, context: context)
        type = Types::UpdateMonitoringScheduleInput.new
        type.monitoring_schedule_name = params[:monitoring_schedule_name]
        type.monitoring_schedule_config = MonitoringScheduleConfig.build(params[:monitoring_schedule_config], context: "#{context}[:monitoring_schedule_config]") unless params[:monitoring_schedule_config].nil?
        type
      end
    end

    module UpdateMonitoringScheduleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMonitoringScheduleOutput, context: context)
        type = Types::UpdateMonitoringScheduleOutput.new
        type.monitoring_schedule_arn = params[:monitoring_schedule_arn]
        type
      end
    end

    module UpdateNotebookInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNotebookInstanceInput, context: context)
        type = Types::UpdateNotebookInstanceInput.new
        type.notebook_instance_name = params[:notebook_instance_name]
        type.instance_type = params[:instance_type]
        type.role_arn = params[:role_arn]
        type.lifecycle_config_name = params[:lifecycle_config_name]
        type.disassociate_lifecycle_config = params[:disassociate_lifecycle_config]
        type.volume_size_in_gb = params[:volume_size_in_gb]
        type.default_code_repository = params[:default_code_repository]
        type.additional_code_repositories = AdditionalCodeRepositoryNamesOrUrls.build(params[:additional_code_repositories], context: "#{context}[:additional_code_repositories]") unless params[:additional_code_repositories].nil?
        type.accelerator_types = NotebookInstanceAcceleratorTypes.build(params[:accelerator_types], context: "#{context}[:accelerator_types]") unless params[:accelerator_types].nil?
        type.disassociate_accelerator_types = params[:disassociate_accelerator_types]
        type.disassociate_default_code_repository = params[:disassociate_default_code_repository]
        type.disassociate_additional_code_repositories = params[:disassociate_additional_code_repositories]
        type.root_access = params[:root_access]
        type.instance_metadata_service_configuration = InstanceMetadataServiceConfiguration.build(params[:instance_metadata_service_configuration], context: "#{context}[:instance_metadata_service_configuration]") unless params[:instance_metadata_service_configuration].nil?
        type
      end
    end

    module UpdateNotebookInstanceLifecycleConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNotebookInstanceLifecycleConfigInput, context: context)
        type = Types::UpdateNotebookInstanceLifecycleConfigInput.new
        type.notebook_instance_lifecycle_config_name = params[:notebook_instance_lifecycle_config_name]
        type.on_create = NotebookInstanceLifecycleConfigList.build(params[:on_create], context: "#{context}[:on_create]") unless params[:on_create].nil?
        type.on_start = NotebookInstanceLifecycleConfigList.build(params[:on_start], context: "#{context}[:on_start]") unless params[:on_start].nil?
        type
      end
    end

    module UpdateNotebookInstanceLifecycleConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNotebookInstanceLifecycleConfigOutput, context: context)
        type = Types::UpdateNotebookInstanceLifecycleConfigOutput.new
        type
      end
    end

    module UpdateNotebookInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNotebookInstanceOutput, context: context)
        type = Types::UpdateNotebookInstanceOutput.new
        type
      end
    end

    module UpdatePipelineExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePipelineExecutionInput, context: context)
        type = Types::UpdatePipelineExecutionInput.new
        type.pipeline_execution_arn = params[:pipeline_execution_arn]
        type.pipeline_execution_description = params[:pipeline_execution_description]
        type.pipeline_execution_display_name = params[:pipeline_execution_display_name]
        type.parallelism_configuration = ParallelismConfiguration.build(params[:parallelism_configuration], context: "#{context}[:parallelism_configuration]") unless params[:parallelism_configuration].nil?
        type
      end
    end

    module UpdatePipelineExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePipelineExecutionOutput, context: context)
        type = Types::UpdatePipelineExecutionOutput.new
        type.pipeline_execution_arn = params[:pipeline_execution_arn]
        type
      end
    end

    module UpdatePipelineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePipelineInput, context: context)
        type = Types::UpdatePipelineInput.new
        type.pipeline_name = params[:pipeline_name]
        type.pipeline_display_name = params[:pipeline_display_name]
        type.pipeline_definition = params[:pipeline_definition]
        type.pipeline_definition_s3_location = PipelineDefinitionS3Location.build(params[:pipeline_definition_s3_location], context: "#{context}[:pipeline_definition_s3_location]") unless params[:pipeline_definition_s3_location].nil?
        type.pipeline_description = params[:pipeline_description]
        type.role_arn = params[:role_arn]
        type.parallelism_configuration = ParallelismConfiguration.build(params[:parallelism_configuration], context: "#{context}[:parallelism_configuration]") unless params[:parallelism_configuration].nil?
        type
      end
    end

    module UpdatePipelineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePipelineOutput, context: context)
        type = Types::UpdatePipelineOutput.new
        type.pipeline_arn = params[:pipeline_arn]
        type
      end
    end

    module UpdateProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProjectInput, context: context)
        type = Types::UpdateProjectInput.new
        type.project_name = params[:project_name]
        type.project_description = params[:project_description]
        type.service_catalog_provisioning_update_details = ServiceCatalogProvisioningUpdateDetails.build(params[:service_catalog_provisioning_update_details], context: "#{context}[:service_catalog_provisioning_update_details]") unless params[:service_catalog_provisioning_update_details].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UpdateProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProjectOutput, context: context)
        type = Types::UpdateProjectOutput.new
        type.project_arn = params[:project_arn]
        type
      end
    end

    module UpdateTrainingJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTrainingJobInput, context: context)
        type = Types::UpdateTrainingJobInput.new
        type.training_job_name = params[:training_job_name]
        type.profiler_config = ProfilerConfigForUpdate.build(params[:profiler_config], context: "#{context}[:profiler_config]") unless params[:profiler_config].nil?
        type.profiler_rule_configurations = ProfilerRuleConfigurations.build(params[:profiler_rule_configurations], context: "#{context}[:profiler_rule_configurations]") unless params[:profiler_rule_configurations].nil?
        type
      end
    end

    module UpdateTrainingJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTrainingJobOutput, context: context)
        type = Types::UpdateTrainingJobOutput.new
        type.training_job_arn = params[:training_job_arn]
        type
      end
    end

    module UpdateTrialComponentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTrialComponentInput, context: context)
        type = Types::UpdateTrialComponentInput.new
        type.trial_component_name = params[:trial_component_name]
        type.display_name = params[:display_name]
        type.status = TrialComponentStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.parameters = TrialComponentParameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.parameters_to_remove = ListTrialComponentKey256.build(params[:parameters_to_remove], context: "#{context}[:parameters_to_remove]") unless params[:parameters_to_remove].nil?
        type.input_artifacts = TrialComponentArtifacts.build(params[:input_artifacts], context: "#{context}[:input_artifacts]") unless params[:input_artifacts].nil?
        type.input_artifacts_to_remove = ListTrialComponentKey256.build(params[:input_artifacts_to_remove], context: "#{context}[:input_artifacts_to_remove]") unless params[:input_artifacts_to_remove].nil?
        type.output_artifacts = TrialComponentArtifacts.build(params[:output_artifacts], context: "#{context}[:output_artifacts]") unless params[:output_artifacts].nil?
        type.output_artifacts_to_remove = ListTrialComponentKey256.build(params[:output_artifacts_to_remove], context: "#{context}[:output_artifacts_to_remove]") unless params[:output_artifacts_to_remove].nil?
        type
      end
    end

    module UpdateTrialComponentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTrialComponentOutput, context: context)
        type = Types::UpdateTrialComponentOutput.new
        type.trial_component_arn = params[:trial_component_arn]
        type
      end
    end

    module UpdateTrialInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTrialInput, context: context)
        type = Types::UpdateTrialInput.new
        type.trial_name = params[:trial_name]
        type.display_name = params[:display_name]
        type
      end
    end

    module UpdateTrialOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTrialOutput, context: context)
        type = Types::UpdateTrialOutput.new
        type.trial_arn = params[:trial_arn]
        type
      end
    end

    module UpdateUserProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserProfileInput, context: context)
        type = Types::UpdateUserProfileInput.new
        type.domain_id = params[:domain_id]
        type.user_profile_name = params[:user_profile_name]
        type.user_settings = UserSettings.build(params[:user_settings], context: "#{context}[:user_settings]") unless params[:user_settings].nil?
        type
      end
    end

    module UpdateUserProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserProfileOutput, context: context)
        type = Types::UpdateUserProfileOutput.new
        type.user_profile_arn = params[:user_profile_arn]
        type
      end
    end

    module UpdateWorkforceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWorkforceInput, context: context)
        type = Types::UpdateWorkforceInput.new
        type.workforce_name = params[:workforce_name]
        type.source_ip_config = SourceIpConfig.build(params[:source_ip_config], context: "#{context}[:source_ip_config]") unless params[:source_ip_config].nil?
        type.oidc_config = OidcConfig.build(params[:oidc_config], context: "#{context}[:oidc_config]") unless params[:oidc_config].nil?
        type
      end
    end

    module UpdateWorkforceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWorkforceOutput, context: context)
        type = Types::UpdateWorkforceOutput.new
        type.workforce = Workforce.build(params[:workforce], context: "#{context}[:workforce]") unless params[:workforce].nil?
        type
      end
    end

    module UpdateWorkteamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWorkteamInput, context: context)
        type = Types::UpdateWorkteamInput.new
        type.workteam_name = params[:workteam_name]
        type.member_definitions = MemberDefinitions.build(params[:member_definitions], context: "#{context}[:member_definitions]") unless params[:member_definitions].nil?
        type.description = params[:description]
        type.notification_configuration = NotificationConfiguration.build(params[:notification_configuration], context: "#{context}[:notification_configuration]") unless params[:notification_configuration].nil?
        type
      end
    end

    module UpdateWorkteamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWorkteamOutput, context: context)
        type = Types::UpdateWorkteamOutput.new
        type.workteam = Workteam.build(params[:workteam], context: "#{context}[:workteam]") unless params[:workteam].nil?
        type
      end
    end

    module UserContext
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserContext, context: context)
        type = Types::UserContext.new
        type.user_profile_arn = params[:user_profile_arn]
        type.user_profile_name = params[:user_profile_name]
        type.domain_id = params[:domain_id]
        type
      end
    end

    module UserProfileDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserProfileDetails, context: context)
        type = Types::UserProfileDetails.new
        type.domain_id = params[:domain_id]
        type.user_profile_name = params[:user_profile_name]
        type.status = params[:status]
        type.creation_time = params[:creation_time]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module UserProfileList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UserProfileDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UserSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserSettings, context: context)
        type = Types::UserSettings.new
        type.execution_role = params[:execution_role]
        type.security_groups = SecurityGroupIds.build(params[:security_groups], context: "#{context}[:security_groups]") unless params[:security_groups].nil?
        type.sharing_settings = SharingSettings.build(params[:sharing_settings], context: "#{context}[:sharing_settings]") unless params[:sharing_settings].nil?
        type.jupyter_server_app_settings = JupyterServerAppSettings.build(params[:jupyter_server_app_settings], context: "#{context}[:jupyter_server_app_settings]") unless params[:jupyter_server_app_settings].nil?
        type.kernel_gateway_app_settings = KernelGatewayAppSettings.build(params[:kernel_gateway_app_settings], context: "#{context}[:kernel_gateway_app_settings]") unless params[:kernel_gateway_app_settings].nil?
        type.tensor_board_app_settings = TensorBoardAppSettings.build(params[:tensor_board_app_settings], context: "#{context}[:tensor_board_app_settings]") unless params[:tensor_board_app_settings].nil?
        type.r_studio_server_pro_app_settings = RStudioServerProAppSettings.build(params[:r_studio_server_pro_app_settings], context: "#{context}[:r_studio_server_pro_app_settings]") unless params[:r_studio_server_pro_app_settings].nil?
        type.r_session_app_settings = RSessionAppSettings.build(params[:r_session_app_settings], context: "#{context}[:r_session_app_settings]") unless params[:r_session_app_settings].nil?
        type
      end
    end

    module VariantProperty
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VariantProperty, context: context)
        type = Types::VariantProperty.new
        type.variant_property_type = params[:variant_property_type]
        type
      end
    end

    module VariantPropertyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VariantProperty.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Vertex
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Vertex, context: context)
        type = Types::Vertex.new
        type.arn = params[:arn]
        type.type = params[:type]
        type.lineage_type = params[:lineage_type]
        type
      end
    end

    module Vertices
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Vertex.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VpcConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcConfig, context: context)
        type = Types::VpcConfig.new
        type.security_group_ids = VpcSecurityGroupIds.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.subnets = Subnets.build(params[:subnets], context: "#{context}[:subnets]") unless params[:subnets].nil?
        type
      end
    end

    module VpcSecurityGroupIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Workforce
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Workforce, context: context)
        type = Types::Workforce.new
        type.workforce_name = params[:workforce_name]
        type.workforce_arn = params[:workforce_arn]
        type.last_updated_date = params[:last_updated_date]
        type.source_ip_config = SourceIpConfig.build(params[:source_ip_config], context: "#{context}[:source_ip_config]") unless params[:source_ip_config].nil?
        type.sub_domain = params[:sub_domain]
        type.cognito_config = CognitoConfig.build(params[:cognito_config], context: "#{context}[:cognito_config]") unless params[:cognito_config].nil?
        type.oidc_config = OidcConfigForResponse.build(params[:oidc_config], context: "#{context}[:oidc_config]") unless params[:oidc_config].nil?
        type.create_date = params[:create_date]
        type
      end
    end

    module Workforces
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Workforce.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Workteam
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Workteam, context: context)
        type = Types::Workteam.new
        type.workteam_name = params[:workteam_name]
        type.member_definitions = MemberDefinitions.build(params[:member_definitions], context: "#{context}[:member_definitions]") unless params[:member_definitions].nil?
        type.workteam_arn = params[:workteam_arn]
        type.workforce_arn = params[:workforce_arn]
        type.product_listing_ids = ProductListings.build(params[:product_listing_ids], context: "#{context}[:product_listing_ids]") unless params[:product_listing_ids].nil?
        type.description = params[:description]
        type.sub_domain = params[:sub_domain]
        type.create_date = params[:create_date]
        type.last_updated_date = params[:last_updated_date]
        type.notification_configuration = NotificationConfiguration.build(params[:notification_configuration], context: "#{context}[:notification_configuration]") unless params[:notification_configuration].nil?
        type
      end
    end

    module Workteams
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Workteam.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
