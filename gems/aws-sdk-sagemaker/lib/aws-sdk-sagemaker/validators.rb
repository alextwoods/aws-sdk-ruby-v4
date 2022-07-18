# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::SageMaker
  module Validators

    class ActionSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionSource, context: context)
        Hearth::Validator.validate!(input[:source_uri], ::String, context: "#{context}[:source_uri]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Hearth::Validator.validate!(input[:source_id], ::String, context: "#{context}[:source_id]")
      end
    end

    class ActionSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ActionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ActionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionSummary, context: context)
        Hearth::Validator.validate!(input[:action_arn], ::String, context: "#{context}[:action_arn]")
        Hearth::Validator.validate!(input[:action_name], ::String, context: "#{context}[:action_name]")
        ActionSource.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        Hearth::Validator.validate!(input[:action_type], ::String, context: "#{context}[:action_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
      end
    end

    class AddAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddAssociationInput, context: context)
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:destination_arn], ::String, context: "#{context}[:destination_arn]")
        Hearth::Validator.validate!(input[:association_type], ::String, context: "#{context}[:association_type]")
      end
    end

    class AddAssociationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddAssociationOutput, context: context)
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:destination_arn], ::String, context: "#{context}[:destination_arn]")
      end
    end

    class AddTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class AddTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsOutput, context: context)
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class AdditionalCodeRepositoryNamesOrUrls
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AdditionalInferenceSpecificationDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdditionalInferenceSpecificationDefinition, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ModelPackageContainerDefinitionList.validate!(input[:containers], context: "#{context}[:containers]") unless input[:containers].nil?
        TransformInstanceTypes.validate!(input[:supported_transform_instance_types], context: "#{context}[:supported_transform_instance_types]") unless input[:supported_transform_instance_types].nil?
        RealtimeInferenceInstanceTypes.validate!(input[:supported_realtime_inference_instance_types], context: "#{context}[:supported_realtime_inference_instance_types]") unless input[:supported_realtime_inference_instance_types].nil?
        ContentTypes.validate!(input[:supported_content_types], context: "#{context}[:supported_content_types]") unless input[:supported_content_types].nil?
        ResponseMIMETypes.validate!(input[:supported_response_mime_types], context: "#{context}[:supported_response_mime_types]") unless input[:supported_response_mime_types].nil?
      end
    end

    class AdditionalInferenceSpecifications
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AdditionalInferenceSpecificationDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AgentVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AgentVersion, context: context)
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:agent_count], ::Integer, context: "#{context}[:agent_count]")
      end
    end

    class AgentVersions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AgentVersion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Alarm
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Alarm, context: context)
        Hearth::Validator.validate!(input[:alarm_name], ::String, context: "#{context}[:alarm_name]")
      end
    end

    class AlarmList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Alarm.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AlgorithmSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlgorithmSpecification, context: context)
        Hearth::Validator.validate!(input[:training_image], ::String, context: "#{context}[:training_image]")
        Hearth::Validator.validate!(input[:algorithm_name], ::String, context: "#{context}[:algorithm_name]")
        Hearth::Validator.validate!(input[:training_input_mode], ::String, context: "#{context}[:training_input_mode]")
        MetricDefinitionList.validate!(input[:metric_definitions], context: "#{context}[:metric_definitions]") unless input[:metric_definitions].nil?
        Hearth::Validator.validate!(input[:enable_sage_maker_metrics_time_series], ::TrueClass, ::FalseClass, context: "#{context}[:enable_sage_maker_metrics_time_series]")
      end
    end

    class AlgorithmStatusDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlgorithmStatusDetails, context: context)
        AlgorithmStatusItemList.validate!(input[:validation_statuses], context: "#{context}[:validation_statuses]") unless input[:validation_statuses].nil?
        AlgorithmStatusItemList.validate!(input[:image_scan_statuses], context: "#{context}[:image_scan_statuses]") unless input[:image_scan_statuses].nil?
      end
    end

    class AlgorithmStatusItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlgorithmStatusItem, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class AlgorithmStatusItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AlgorithmStatusItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AlgorithmSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlgorithmSummary, context: context)
        Hearth::Validator.validate!(input[:algorithm_name], ::String, context: "#{context}[:algorithm_name]")
        Hearth::Validator.validate!(input[:algorithm_arn], ::String, context: "#{context}[:algorithm_arn]")
        Hearth::Validator.validate!(input[:algorithm_description], ::String, context: "#{context}[:algorithm_description]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:algorithm_status], ::String, context: "#{context}[:algorithm_status]")
      end
    end

    class AlgorithmSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AlgorithmSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AlgorithmValidationProfile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlgorithmValidationProfile, context: context)
        Hearth::Validator.validate!(input[:profile_name], ::String, context: "#{context}[:profile_name]")
        TrainingJobDefinition.validate!(input[:training_job_definition], context: "#{context}[:training_job_definition]") unless input[:training_job_definition].nil?
        TransformJobDefinition.validate!(input[:transform_job_definition], context: "#{context}[:transform_job_definition]") unless input[:transform_job_definition].nil?
      end
    end

    class AlgorithmValidationProfiles
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AlgorithmValidationProfile.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AlgorithmValidationSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlgorithmValidationSpecification, context: context)
        Hearth::Validator.validate!(input[:validation_role], ::String, context: "#{context}[:validation_role]")
        AlgorithmValidationProfiles.validate!(input[:validation_profiles], context: "#{context}[:validation_profiles]") unless input[:validation_profiles].nil?
      end
    end

    class AnnotationConsolidationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnnotationConsolidationConfig, context: context)
        Hearth::Validator.validate!(input[:annotation_consolidation_lambda_arn], ::String, context: "#{context}[:annotation_consolidation_lambda_arn]")
      end
    end

    class AppDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppDetails, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:user_profile_name], ::String, context: "#{context}[:user_profile_name]")
        Hearth::Validator.validate!(input[:app_type], ::String, context: "#{context}[:app_type]")
        Hearth::Validator.validate!(input[:app_name], ::String, context: "#{context}[:app_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class AppImageConfigDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppImageConfigDetails, context: context)
        Hearth::Validator.validate!(input[:app_image_config_arn], ::String, context: "#{context}[:app_image_config_arn]")
        Hearth::Validator.validate!(input[:app_image_config_name], ::String, context: "#{context}[:app_image_config_name]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        KernelGatewayImageConfig.validate!(input[:kernel_gateway_image_config], context: "#{context}[:kernel_gateway_image_config]") unless input[:kernel_gateway_image_config].nil?
      end
    end

    class AppImageConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AppImageConfigDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AppList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AppDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AppSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppSpecification, context: context)
        Hearth::Validator.validate!(input[:image_uri], ::String, context: "#{context}[:image_uri]")
        ContainerEntrypoint.validate!(input[:container_entrypoint], context: "#{context}[:container_entrypoint]") unless input[:container_entrypoint].nil?
        ContainerArguments.validate!(input[:container_arguments], context: "#{context}[:container_arguments]") unless input[:container_arguments].nil?
      end
    end

    class ArtifactSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ArtifactSource, context: context)
        Hearth::Validator.validate!(input[:source_uri], ::String, context: "#{context}[:source_uri]")
        ArtifactSourceTypes.validate!(input[:source_types], context: "#{context}[:source_types]") unless input[:source_types].nil?
      end
    end

    class ArtifactSourceType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ArtifactSourceType, context: context)
        Hearth::Validator.validate!(input[:source_id_type], ::String, context: "#{context}[:source_id_type]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ArtifactSourceTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ArtifactSourceType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ArtifactSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ArtifactSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ArtifactSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ArtifactSummary, context: context)
        Hearth::Validator.validate!(input[:artifact_arn], ::String, context: "#{context}[:artifact_arn]")
        Hearth::Validator.validate!(input[:artifact_name], ::String, context: "#{context}[:artifact_name]")
        ArtifactSource.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        Hearth::Validator.validate!(input[:artifact_type], ::String, context: "#{context}[:artifact_type]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
      end
    end

    class AssociateTrialComponentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateTrialComponentInput, context: context)
        Hearth::Validator.validate!(input[:trial_component_name], ::String, context: "#{context}[:trial_component_name]")
        Hearth::Validator.validate!(input[:trial_name], ::String, context: "#{context}[:trial_name]")
      end
    end

    class AssociateTrialComponentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateTrialComponentOutput, context: context)
        Hearth::Validator.validate!(input[:trial_component_arn], ::String, context: "#{context}[:trial_component_arn]")
        Hearth::Validator.validate!(input[:trial_arn], ::String, context: "#{context}[:trial_arn]")
      end
    end

    class AssociationSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssociationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssociationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociationSummary, context: context)
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:destination_arn], ::String, context: "#{context}[:destination_arn]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Hearth::Validator.validate!(input[:destination_type], ::String, context: "#{context}[:destination_type]")
        Hearth::Validator.validate!(input[:association_type], ::String, context: "#{context}[:association_type]")
        Hearth::Validator.validate!(input[:source_name], ::String, context: "#{context}[:source_name]")
        Hearth::Validator.validate!(input[:destination_name], ::String, context: "#{context}[:destination_name]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        UserContext.validate!(input[:created_by], context: "#{context}[:created_by]") unless input[:created_by].nil?
      end
    end

    class AsyncInferenceClientConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AsyncInferenceClientConfig, context: context)
        Hearth::Validator.validate!(input[:max_concurrent_invocations_per_instance], ::Integer, context: "#{context}[:max_concurrent_invocations_per_instance]")
      end
    end

    class AsyncInferenceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AsyncInferenceConfig, context: context)
        AsyncInferenceClientConfig.validate!(input[:client_config], context: "#{context}[:client_config]") unless input[:client_config].nil?
        AsyncInferenceOutputConfig.validate!(input[:output_config], context: "#{context}[:output_config]") unless input[:output_config].nil?
      end
    end

    class AsyncInferenceNotificationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AsyncInferenceNotificationConfig, context: context)
        Hearth::Validator.validate!(input[:success_topic], ::String, context: "#{context}[:success_topic]")
        Hearth::Validator.validate!(input[:error_topic], ::String, context: "#{context}[:error_topic]")
      end
    end

    class AsyncInferenceOutputConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AsyncInferenceOutputConfig, context: context)
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:s3_output_path], ::String, context: "#{context}[:s3_output_path]")
        AsyncInferenceNotificationConfig.validate!(input[:notification_config], context: "#{context}[:notification_config]") unless input[:notification_config].nil?
      end
    end

    class AthenaDatasetDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AthenaDatasetDefinition, context: context)
        Hearth::Validator.validate!(input[:catalog], ::String, context: "#{context}[:catalog]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
        Hearth::Validator.validate!(input[:work_group], ::String, context: "#{context}[:work_group]")
        Hearth::Validator.validate!(input[:output_s3_uri], ::String, context: "#{context}[:output_s3_uri]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:output_format], ::String, context: "#{context}[:output_format]")
        Hearth::Validator.validate!(input[:output_compression], ::String, context: "#{context}[:output_compression]")
      end
    end

    class AttributeNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AutoMLCandidate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoMLCandidate, context: context)
        Hearth::Validator.validate!(input[:candidate_name], ::String, context: "#{context}[:candidate_name]")
        FinalAutoMLJobObjectiveMetric.validate!(input[:final_auto_ml_job_objective_metric], context: "#{context}[:final_auto_ml_job_objective_metric]") unless input[:final_auto_ml_job_objective_metric].nil?
        Hearth::Validator.validate!(input[:objective_status], ::String, context: "#{context}[:objective_status]")
        CandidateSteps.validate!(input[:candidate_steps], context: "#{context}[:candidate_steps]") unless input[:candidate_steps].nil?
        Hearth::Validator.validate!(input[:candidate_status], ::String, context: "#{context}[:candidate_status]")
        AutoMLContainerDefinitions.validate!(input[:inference_containers], context: "#{context}[:inference_containers]") unless input[:inference_containers].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        CandidateProperties.validate!(input[:candidate_properties], context: "#{context}[:candidate_properties]") unless input[:candidate_properties].nil?
      end
    end

    class AutoMLCandidateGenerationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoMLCandidateGenerationConfig, context: context)
        Hearth::Validator.validate!(input[:feature_specification_s3_uri], ::String, context: "#{context}[:feature_specification_s3_uri]")
      end
    end

    class AutoMLCandidateStep
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoMLCandidateStep, context: context)
        Hearth::Validator.validate!(input[:candidate_step_type], ::String, context: "#{context}[:candidate_step_type]")
        Hearth::Validator.validate!(input[:candidate_step_arn], ::String, context: "#{context}[:candidate_step_arn]")
        Hearth::Validator.validate!(input[:candidate_step_name], ::String, context: "#{context}[:candidate_step_name]")
      end
    end

    class AutoMLCandidates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AutoMLCandidate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AutoMLChannel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoMLChannel, context: context)
        AutoMLDataSource.validate!(input[:data_source], context: "#{context}[:data_source]") unless input[:data_source].nil?
        Hearth::Validator.validate!(input[:compression_type], ::String, context: "#{context}[:compression_type]")
        Hearth::Validator.validate!(input[:target_attribute_name], ::String, context: "#{context}[:target_attribute_name]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:channel_type], ::String, context: "#{context}[:channel_type]")
      end
    end

    class AutoMLContainerDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoMLContainerDefinition, context: context)
        Hearth::Validator.validate!(input[:image], ::String, context: "#{context}[:image]")
        Hearth::Validator.validate!(input[:model_data_url], ::String, context: "#{context}[:model_data_url]")
        EnvironmentMap.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
      end
    end

    class AutoMLContainerDefinitions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AutoMLContainerDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AutoMLDataSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoMLDataSource, context: context)
        AutoMLS3DataSource.validate!(input[:s3_data_source], context: "#{context}[:s3_data_source]") unless input[:s3_data_source].nil?
      end
    end

    class AutoMLDataSplitConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoMLDataSplitConfig, context: context)
        Hearth::Validator.validate!(input[:validation_fraction], ::Float, context: "#{context}[:validation_fraction]")
      end
    end

    class AutoMLInputDataConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AutoMLChannel.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AutoMLJobArtifacts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoMLJobArtifacts, context: context)
        Hearth::Validator.validate!(input[:candidate_definition_notebook_location], ::String, context: "#{context}[:candidate_definition_notebook_location]")
        Hearth::Validator.validate!(input[:data_exploration_notebook_location], ::String, context: "#{context}[:data_exploration_notebook_location]")
      end
    end

    class AutoMLJobCompletionCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoMLJobCompletionCriteria, context: context)
        Hearth::Validator.validate!(input[:max_candidates], ::Integer, context: "#{context}[:max_candidates]")
        Hearth::Validator.validate!(input[:max_runtime_per_training_job_in_seconds], ::Integer, context: "#{context}[:max_runtime_per_training_job_in_seconds]")
        Hearth::Validator.validate!(input[:max_auto_ml_job_runtime_in_seconds], ::Integer, context: "#{context}[:max_auto_ml_job_runtime_in_seconds]")
      end
    end

    class AutoMLJobConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoMLJobConfig, context: context)
        AutoMLJobCompletionCriteria.validate!(input[:completion_criteria], context: "#{context}[:completion_criteria]") unless input[:completion_criteria].nil?
        AutoMLSecurityConfig.validate!(input[:security_config], context: "#{context}[:security_config]") unless input[:security_config].nil?
        AutoMLDataSplitConfig.validate!(input[:data_split_config], context: "#{context}[:data_split_config]") unless input[:data_split_config].nil?
        AutoMLCandidateGenerationConfig.validate!(input[:candidate_generation_config], context: "#{context}[:candidate_generation_config]") unless input[:candidate_generation_config].nil?
      end
    end

    class AutoMLJobObjective
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoMLJobObjective, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
      end
    end

    class AutoMLJobSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AutoMLJobSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AutoMLJobSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoMLJobSummary, context: context)
        Hearth::Validator.validate!(input[:auto_ml_job_name], ::String, context: "#{context}[:auto_ml_job_name]")
        Hearth::Validator.validate!(input[:auto_ml_job_arn], ::String, context: "#{context}[:auto_ml_job_arn]")
        Hearth::Validator.validate!(input[:auto_ml_job_status], ::String, context: "#{context}[:auto_ml_job_status]")
        Hearth::Validator.validate!(input[:auto_ml_job_secondary_status], ::String, context: "#{context}[:auto_ml_job_secondary_status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        AutoMLPartialFailureReasons.validate!(input[:partial_failure_reasons], context: "#{context}[:partial_failure_reasons]") unless input[:partial_failure_reasons].nil?
      end
    end

    class AutoMLOutputDataConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoMLOutputDataConfig, context: context)
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:s3_output_path], ::String, context: "#{context}[:s3_output_path]")
      end
    end

    class AutoMLPartialFailureReason
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoMLPartialFailureReason, context: context)
        Hearth::Validator.validate!(input[:partial_failure_message], ::String, context: "#{context}[:partial_failure_message]")
      end
    end

    class AutoMLPartialFailureReasons
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AutoMLPartialFailureReason.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AutoMLS3DataSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoMLS3DataSource, context: context)
        Hearth::Validator.validate!(input[:s3_data_type], ::String, context: "#{context}[:s3_data_type]")
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
      end
    end

    class AutoMLSecurityConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoMLSecurityConfig, context: context)
        Hearth::Validator.validate!(input[:volume_kms_key_id], ::String, context: "#{context}[:volume_kms_key_id]")
        Hearth::Validator.validate!(input[:enable_inter_container_traffic_encryption], ::TrueClass, ::FalseClass, context: "#{context}[:enable_inter_container_traffic_encryption]")
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
      end
    end

    class AutoRollbackConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoRollbackConfig, context: context)
        AlarmList.validate!(input[:alarms], context: "#{context}[:alarms]") unless input[:alarms].nil?
      end
    end

    class BatchDescribeModelPackageError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDescribeModelPackageError, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_response], ::String, context: "#{context}[:error_response]")
      end
    end

    class BatchDescribeModelPackageErrorMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          BatchDescribeModelPackageError.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class BatchDescribeModelPackageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDescribeModelPackageInput, context: context)
        ModelPackageArnList.validate!(input[:model_package_arn_list], context: "#{context}[:model_package_arn_list]") unless input[:model_package_arn_list].nil?
      end
    end

    class BatchDescribeModelPackageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDescribeModelPackageOutput, context: context)
        ModelPackageSummaries.validate!(input[:model_package_summaries], context: "#{context}[:model_package_summaries]") unless input[:model_package_summaries].nil?
        BatchDescribeModelPackageErrorMap.validate!(input[:batch_describe_model_package_error_map], context: "#{context}[:batch_describe_model_package_error_map]") unless input[:batch_describe_model_package_error_map].nil?
      end
    end

    class BatchDescribeModelPackageSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDescribeModelPackageSummary, context: context)
        Hearth::Validator.validate!(input[:model_package_group_name], ::String, context: "#{context}[:model_package_group_name]")
        Hearth::Validator.validate!(input[:model_package_version], ::Integer, context: "#{context}[:model_package_version]")
        Hearth::Validator.validate!(input[:model_package_arn], ::String, context: "#{context}[:model_package_arn]")
        Hearth::Validator.validate!(input[:model_package_description], ::String, context: "#{context}[:model_package_description]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        InferenceSpecification.validate!(input[:inference_specification], context: "#{context}[:inference_specification]") unless input[:inference_specification].nil?
        Hearth::Validator.validate!(input[:model_package_status], ::String, context: "#{context}[:model_package_status]")
        Hearth::Validator.validate!(input[:model_approval_status], ::String, context: "#{context}[:model_approval_status]")
      end
    end

    class Bias
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Bias, context: context)
        MetricsSource.validate!(input[:report], context: "#{context}[:report]") unless input[:report].nil?
        MetricsSource.validate!(input[:pre_training_report], context: "#{context}[:pre_training_report]") unless input[:pre_training_report].nil?
        MetricsSource.validate!(input[:post_training_report], context: "#{context}[:post_training_report]") unless input[:post_training_report].nil?
      end
    end

    class BlueGreenUpdatePolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BlueGreenUpdatePolicy, context: context)
        TrafficRoutingConfig.validate!(input[:traffic_routing_configuration], context: "#{context}[:traffic_routing_configuration]") unless input[:traffic_routing_configuration].nil?
        Hearth::Validator.validate!(input[:termination_wait_in_seconds], ::Integer, context: "#{context}[:termination_wait_in_seconds]")
        Hearth::Validator.validate!(input[:maximum_execution_timeout_in_seconds], ::Integer, context: "#{context}[:maximum_execution_timeout_in_seconds]")
      end
    end

    class CacheHitResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CacheHitResult, context: context)
        Hearth::Validator.validate!(input[:source_pipeline_execution_arn], ::String, context: "#{context}[:source_pipeline_execution_arn]")
      end
    end

    class CallbackStepMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CallbackStepMetadata, context: context)
        Hearth::Validator.validate!(input[:callback_token], ::String, context: "#{context}[:callback_token]")
        Hearth::Validator.validate!(input[:sqs_queue_url], ::String, context: "#{context}[:sqs_queue_url]")
        OutputParameterList.validate!(input[:output_parameters], context: "#{context}[:output_parameters]") unless input[:output_parameters].nil?
      end
    end

    class CandidateArtifactLocations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CandidateArtifactLocations, context: context)
        Hearth::Validator.validate!(input[:explainability], ::String, context: "#{context}[:explainability]")
        Hearth::Validator.validate!(input[:model_insights], ::String, context: "#{context}[:model_insights]")
      end
    end

    class CandidateProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CandidateProperties, context: context)
        CandidateArtifactLocations.validate!(input[:candidate_artifact_locations], context: "#{context}[:candidate_artifact_locations]") unless input[:candidate_artifact_locations].nil?
        MetricDataList.validate!(input[:candidate_metrics], context: "#{context}[:candidate_metrics]") unless input[:candidate_metrics].nil?
      end
    end

    class CandidateSteps
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AutoMLCandidateStep.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CapacitySize
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CapacitySize, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:value], ::Integer, context: "#{context}[:value]")
      end
    end

    class CaptureContentTypeHeader
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CaptureContentTypeHeader, context: context)
        CsvContentTypes.validate!(input[:csv_content_types], context: "#{context}[:csv_content_types]") unless input[:csv_content_types].nil?
        JsonContentTypes.validate!(input[:json_content_types], context: "#{context}[:json_content_types]") unless input[:json_content_types].nil?
      end
    end

    class CaptureOption
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CaptureOption, context: context)
        Hearth::Validator.validate!(input[:capture_mode], ::String, context: "#{context}[:capture_mode]")
      end
    end

    class CaptureOptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CaptureOption.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CategoricalParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CategoricalParameter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        CategoricalParameterRangeValues.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
      end
    end

    class CategoricalParameterRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CategoricalParameterRange, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        ParameterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class CategoricalParameterRangeSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CategoricalParameterRangeSpecification, context: context)
        ParameterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class CategoricalParameterRangeValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CategoricalParameterRanges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CategoricalParameterRange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CategoricalParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CategoricalParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Channel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Channel, context: context)
        Hearth::Validator.validate!(input[:channel_name], ::String, context: "#{context}[:channel_name]")
        DataSource.validate!(input[:data_source], context: "#{context}[:data_source]") unless input[:data_source].nil?
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:compression_type], ::String, context: "#{context}[:compression_type]")
        Hearth::Validator.validate!(input[:record_wrapper_type], ::String, context: "#{context}[:record_wrapper_type]")
        Hearth::Validator.validate!(input[:input_mode], ::String, context: "#{context}[:input_mode]")
        ShuffleConfig.validate!(input[:shuffle_config], context: "#{context}[:shuffle_config]") unless input[:shuffle_config].nil?
      end
    end

    class ChannelSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChannelSpecification, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:is_required], ::TrueClass, ::FalseClass, context: "#{context}[:is_required]")
        ContentTypes.validate!(input[:supported_content_types], context: "#{context}[:supported_content_types]") unless input[:supported_content_types].nil?
        CompressionTypes.validate!(input[:supported_compression_types], context: "#{context}[:supported_compression_types]") unless input[:supported_compression_types].nil?
        InputModes.validate!(input[:supported_input_modes], context: "#{context}[:supported_input_modes]") unless input[:supported_input_modes].nil?
      end
    end

    class ChannelSpecifications
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ChannelSpecification.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CheckpointConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CheckpointConfig, context: context)
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
        Hearth::Validator.validate!(input[:local_path], ::String, context: "#{context}[:local_path]")
      end
    end

    class Cidrs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ClarifyCheckStepMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClarifyCheckStepMetadata, context: context)
        Hearth::Validator.validate!(input[:check_type], ::String, context: "#{context}[:check_type]")
        Hearth::Validator.validate!(input[:baseline_used_for_drift_check_constraints], ::String, context: "#{context}[:baseline_used_for_drift_check_constraints]")
        Hearth::Validator.validate!(input[:calculated_baseline_constraints], ::String, context: "#{context}[:calculated_baseline_constraints]")
        Hearth::Validator.validate!(input[:model_package_group_name], ::String, context: "#{context}[:model_package_group_name]")
        Hearth::Validator.validate!(input[:violation_report], ::String, context: "#{context}[:violation_report]")
        Hearth::Validator.validate!(input[:check_job_arn], ::String, context: "#{context}[:check_job_arn]")
        Hearth::Validator.validate!(input[:skip_check], ::TrueClass, ::FalseClass, context: "#{context}[:skip_check]")
        Hearth::Validator.validate!(input[:register_new_baseline], ::TrueClass, ::FalseClass, context: "#{context}[:register_new_baseline]")
      end
    end

    class CodeRepositorySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeRepositorySummary, context: context)
        Hearth::Validator.validate!(input[:code_repository_name], ::String, context: "#{context}[:code_repository_name]")
        Hearth::Validator.validate!(input[:code_repository_arn], ::String, context: "#{context}[:code_repository_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        GitConfig.validate!(input[:git_config], context: "#{context}[:git_config]") unless input[:git_config].nil?
      end
    end

    class CodeRepositorySummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CodeRepositorySummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CognitoConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CognitoConfig, context: context)
        Hearth::Validator.validate!(input[:user_pool], ::String, context: "#{context}[:user_pool]")
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
      end
    end

    class CognitoMemberDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CognitoMemberDefinition, context: context)
        Hearth::Validator.validate!(input[:user_pool], ::String, context: "#{context}[:user_pool]")
        Hearth::Validator.validate!(input[:user_group], ::String, context: "#{context}[:user_group]")
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
      end
    end

    class CollectionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CollectionConfiguration, context: context)
        Hearth::Validator.validate!(input[:collection_name], ::String, context: "#{context}[:collection_name]")
        CollectionParameters.validate!(input[:collection_parameters], context: "#{context}[:collection_parameters]") unless input[:collection_parameters].nil?
      end
    end

    class CollectionConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CollectionConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CollectionParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class CompilationJobSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CompilationJobSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CompilationJobSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompilationJobSummary, context: context)
        Hearth::Validator.validate!(input[:compilation_job_name], ::String, context: "#{context}[:compilation_job_name]")
        Hearth::Validator.validate!(input[:compilation_job_arn], ::String, context: "#{context}[:compilation_job_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:compilation_start_time], ::Time, context: "#{context}[:compilation_start_time]")
        Hearth::Validator.validate!(input[:compilation_end_time], ::Time, context: "#{context}[:compilation_end_time]")
        Hearth::Validator.validate!(input[:compilation_target_device], ::String, context: "#{context}[:compilation_target_device]")
        Hearth::Validator.validate!(input[:compilation_target_platform_os], ::String, context: "#{context}[:compilation_target_platform_os]")
        Hearth::Validator.validate!(input[:compilation_target_platform_arch], ::String, context: "#{context}[:compilation_target_platform_arch]")
        Hearth::Validator.validate!(input[:compilation_target_platform_accelerator], ::String, context: "#{context}[:compilation_target_platform_accelerator]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:compilation_job_status], ::String, context: "#{context}[:compilation_job_status]")
      end
    end

    class CompressionTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConditionStepMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConditionStepMetadata, context: context)
        Hearth::Validator.validate!(input[:outcome], ::String, context: "#{context}[:outcome]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ContainerArguments
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ContainerDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContainerDefinition, context: context)
        Hearth::Validator.validate!(input[:container_hostname], ::String, context: "#{context}[:container_hostname]")
        Hearth::Validator.validate!(input[:image], ::String, context: "#{context}[:image]")
        ImageConfig.validate!(input[:image_config], context: "#{context}[:image_config]") unless input[:image_config].nil?
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
        Hearth::Validator.validate!(input[:model_data_url], ::String, context: "#{context}[:model_data_url]")
        EnvironmentMap.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        Hearth::Validator.validate!(input[:model_package_name], ::String, context: "#{context}[:model_package_name]")
        Hearth::Validator.validate!(input[:inference_specification_name], ::String, context: "#{context}[:inference_specification_name]")
        MultiModelConfig.validate!(input[:multi_model_config], context: "#{context}[:multi_model_config]") unless input[:multi_model_config].nil?
      end
    end

    class ContainerDefinitionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ContainerDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ContainerEntrypoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ContentClassifiers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ContentTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ContextSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContextSource, context: context)
        Hearth::Validator.validate!(input[:source_uri], ::String, context: "#{context}[:source_uri]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Hearth::Validator.validate!(input[:source_id], ::String, context: "#{context}[:source_id]")
      end
    end

    class ContextSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ContextSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ContextSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContextSummary, context: context)
        Hearth::Validator.validate!(input[:context_arn], ::String, context: "#{context}[:context_arn]")
        Hearth::Validator.validate!(input[:context_name], ::String, context: "#{context}[:context_name]")
        ContextSource.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        Hearth::Validator.validate!(input[:context_type], ::String, context: "#{context}[:context_type]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
      end
    end

    class ContinuousParameterRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContinuousParameterRange, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:min_value], ::String, context: "#{context}[:min_value]")
        Hearth::Validator.validate!(input[:max_value], ::String, context: "#{context}[:max_value]")
        Hearth::Validator.validate!(input[:scaling_type], ::String, context: "#{context}[:scaling_type]")
      end
    end

    class ContinuousParameterRangeSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContinuousParameterRangeSpecification, context: context)
        Hearth::Validator.validate!(input[:min_value], ::String, context: "#{context}[:min_value]")
        Hearth::Validator.validate!(input[:max_value], ::String, context: "#{context}[:max_value]")
      end
    end

    class ContinuousParameterRanges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ContinuousParameterRange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateActionInput, context: context)
        Hearth::Validator.validate!(input[:action_name], ::String, context: "#{context}[:action_name]")
        ActionSource.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        Hearth::Validator.validate!(input[:action_type], ::String, context: "#{context}[:action_type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        LineageEntityParameters.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
        MetadataProperties.validate!(input[:metadata_properties], context: "#{context}[:metadata_properties]") unless input[:metadata_properties].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateActionOutput, context: context)
        Hearth::Validator.validate!(input[:action_arn], ::String, context: "#{context}[:action_arn]")
      end
    end

    class CreateAlgorithmInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAlgorithmInput, context: context)
        Hearth::Validator.validate!(input[:algorithm_name], ::String, context: "#{context}[:algorithm_name]")
        Hearth::Validator.validate!(input[:algorithm_description], ::String, context: "#{context}[:algorithm_description]")
        TrainingSpecification.validate!(input[:training_specification], context: "#{context}[:training_specification]") unless input[:training_specification].nil?
        InferenceSpecification.validate!(input[:inference_specification], context: "#{context}[:inference_specification]") unless input[:inference_specification].nil?
        AlgorithmValidationSpecification.validate!(input[:validation_specification], context: "#{context}[:validation_specification]") unless input[:validation_specification].nil?
        Hearth::Validator.validate!(input[:certify_for_marketplace], ::TrueClass, ::FalseClass, context: "#{context}[:certify_for_marketplace]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateAlgorithmOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAlgorithmOutput, context: context)
        Hearth::Validator.validate!(input[:algorithm_arn], ::String, context: "#{context}[:algorithm_arn]")
      end
    end

    class CreateAppImageConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAppImageConfigInput, context: context)
        Hearth::Validator.validate!(input[:app_image_config_name], ::String, context: "#{context}[:app_image_config_name]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        KernelGatewayImageConfig.validate!(input[:kernel_gateway_image_config], context: "#{context}[:kernel_gateway_image_config]") unless input[:kernel_gateway_image_config].nil?
      end
    end

    class CreateAppImageConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAppImageConfigOutput, context: context)
        Hearth::Validator.validate!(input[:app_image_config_arn], ::String, context: "#{context}[:app_image_config_arn]")
      end
    end

    class CreateAppInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAppInput, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:user_profile_name], ::String, context: "#{context}[:user_profile_name]")
        Hearth::Validator.validate!(input[:app_type], ::String, context: "#{context}[:app_type]")
        Hearth::Validator.validate!(input[:app_name], ::String, context: "#{context}[:app_name]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        ResourceSpec.validate!(input[:resource_spec], context: "#{context}[:resource_spec]") unless input[:resource_spec].nil?
      end
    end

    class CreateAppOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAppOutput, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
      end
    end

    class CreateArtifactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateArtifactInput, context: context)
        Hearth::Validator.validate!(input[:artifact_name], ::String, context: "#{context}[:artifact_name]")
        ArtifactSource.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        Hearth::Validator.validate!(input[:artifact_type], ::String, context: "#{context}[:artifact_type]")
        LineageEntityParameters.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
        MetadataProperties.validate!(input[:metadata_properties], context: "#{context}[:metadata_properties]") unless input[:metadata_properties].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateArtifactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateArtifactOutput, context: context)
        Hearth::Validator.validate!(input[:artifact_arn], ::String, context: "#{context}[:artifact_arn]")
      end
    end

    class CreateAutoMLJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAutoMLJobInput, context: context)
        Hearth::Validator.validate!(input[:auto_ml_job_name], ::String, context: "#{context}[:auto_ml_job_name]")
        AutoMLInputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        AutoMLOutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Hearth::Validator.validate!(input[:problem_type], ::String, context: "#{context}[:problem_type]")
        AutoMLJobObjective.validate!(input[:auto_ml_job_objective], context: "#{context}[:auto_ml_job_objective]") unless input[:auto_ml_job_objective].nil?
        AutoMLJobConfig.validate!(input[:auto_ml_job_config], context: "#{context}[:auto_ml_job_config]") unless input[:auto_ml_job_config].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:generate_candidate_definitions_only], ::TrueClass, ::FalseClass, context: "#{context}[:generate_candidate_definitions_only]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        ModelDeployConfig.validate!(input[:model_deploy_config], context: "#{context}[:model_deploy_config]") unless input[:model_deploy_config].nil?
      end
    end

    class CreateAutoMLJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAutoMLJobOutput, context: context)
        Hearth::Validator.validate!(input[:auto_ml_job_arn], ::String, context: "#{context}[:auto_ml_job_arn]")
      end
    end

    class CreateCodeRepositoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCodeRepositoryInput, context: context)
        Hearth::Validator.validate!(input[:code_repository_name], ::String, context: "#{context}[:code_repository_name]")
        GitConfig.validate!(input[:git_config], context: "#{context}[:git_config]") unless input[:git_config].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateCodeRepositoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCodeRepositoryOutput, context: context)
        Hearth::Validator.validate!(input[:code_repository_arn], ::String, context: "#{context}[:code_repository_arn]")
      end
    end

    class CreateCompilationJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCompilationJobInput, context: context)
        Hearth::Validator.validate!(input[:compilation_job_name], ::String, context: "#{context}[:compilation_job_name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:model_package_version_arn], ::String, context: "#{context}[:model_package_version_arn]")
        InputConfig.validate!(input[:input_config], context: "#{context}[:input_config]") unless input[:input_config].nil?
        OutputConfig.validate!(input[:output_config], context: "#{context}[:output_config]") unless input[:output_config].nil?
        NeoVpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        StoppingCondition.validate!(input[:stopping_condition], context: "#{context}[:stopping_condition]") unless input[:stopping_condition].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateCompilationJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCompilationJobOutput, context: context)
        Hearth::Validator.validate!(input[:compilation_job_arn], ::String, context: "#{context}[:compilation_job_arn]")
      end
    end

    class CreateContextInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateContextInput, context: context)
        Hearth::Validator.validate!(input[:context_name], ::String, context: "#{context}[:context_name]")
        ContextSource.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        Hearth::Validator.validate!(input[:context_type], ::String, context: "#{context}[:context_type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        LineageEntityParameters.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateContextOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateContextOutput, context: context)
        Hearth::Validator.validate!(input[:context_arn], ::String, context: "#{context}[:context_arn]")
      end
    end

    class CreateDataQualityJobDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataQualityJobDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:job_definition_name], ::String, context: "#{context}[:job_definition_name]")
        DataQualityBaselineConfig.validate!(input[:data_quality_baseline_config], context: "#{context}[:data_quality_baseline_config]") unless input[:data_quality_baseline_config].nil?
        DataQualityAppSpecification.validate!(input[:data_quality_app_specification], context: "#{context}[:data_quality_app_specification]") unless input[:data_quality_app_specification].nil?
        DataQualityJobInput.validate!(input[:data_quality_job_input], context: "#{context}[:data_quality_job_input]") unless input[:data_quality_job_input].nil?
        MonitoringOutputConfig.validate!(input[:data_quality_job_output_config], context: "#{context}[:data_quality_job_output_config]") unless input[:data_quality_job_output_config].nil?
        MonitoringResources.validate!(input[:job_resources], context: "#{context}[:job_resources]") unless input[:job_resources].nil?
        MonitoringNetworkConfig.validate!(input[:network_config], context: "#{context}[:network_config]") unless input[:network_config].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        MonitoringStoppingCondition.validate!(input[:stopping_condition], context: "#{context}[:stopping_condition]") unless input[:stopping_condition].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDataQualityJobDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataQualityJobDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:job_definition_arn], ::String, context: "#{context}[:job_definition_arn]")
      end
    end

    class CreateDeviceFleetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeviceFleetInput, context: context)
        Hearth::Validator.validate!(input[:device_fleet_name], ::String, context: "#{context}[:device_fleet_name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        EdgeOutputConfig.validate!(input[:output_config], context: "#{context}[:output_config]") unless input[:output_config].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:enable_iot_role_alias], ::TrueClass, ::FalseClass, context: "#{context}[:enable_iot_role_alias]")
      end
    end

    class CreateDeviceFleetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeviceFleetOutput, context: context)
      end
    end

    class CreateDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:auth_mode], ::String, context: "#{context}[:auth_mode]")
        UserSettings.validate!(input[:default_user_settings], context: "#{context}[:default_user_settings]") unless input[:default_user_settings].nil?
        Subnets.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:app_network_access_type], ::String, context: "#{context}[:app_network_access_type]")
        Hearth::Validator.validate!(input[:home_efs_file_system_kms_key_id], ::String, context: "#{context}[:home_efs_file_system_kms_key_id]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:app_security_group_management], ::String, context: "#{context}[:app_security_group_management]")
        DomainSettings.validate!(input[:domain_settings], context: "#{context}[:domain_settings]") unless input[:domain_settings].nil?
      end
    end

    class CreateDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDomainOutput, context: context)
        Hearth::Validator.validate!(input[:domain_arn], ::String, context: "#{context}[:domain_arn]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class CreateEdgePackagingJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEdgePackagingJobInput, context: context)
        Hearth::Validator.validate!(input[:edge_packaging_job_name], ::String, context: "#{context}[:edge_packaging_job_name]")
        Hearth::Validator.validate!(input[:compilation_job_name], ::String, context: "#{context}[:compilation_job_name]")
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
        Hearth::Validator.validate!(input[:model_version], ::String, context: "#{context}[:model_version]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        EdgeOutputConfig.validate!(input[:output_config], context: "#{context}[:output_config]") unless input[:output_config].nil?
        Hearth::Validator.validate!(input[:resource_key], ::String, context: "#{context}[:resource_key]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateEdgePackagingJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEdgePackagingJobOutput, context: context)
      end
    end

    class CreateEndpointConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEndpointConfigInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_config_name], ::String, context: "#{context}[:endpoint_config_name]")
        ProductionVariantList.validate!(input[:production_variants], context: "#{context}[:production_variants]") unless input[:production_variants].nil?
        DataCaptureConfig.validate!(input[:data_capture_config], context: "#{context}[:data_capture_config]") unless input[:data_capture_config].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        AsyncInferenceConfig.validate!(input[:async_inference_config], context: "#{context}[:async_inference_config]") unless input[:async_inference_config].nil?
      end
    end

    class CreateEndpointConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEndpointConfigOutput, context: context)
        Hearth::Validator.validate!(input[:endpoint_config_arn], ::String, context: "#{context}[:endpoint_config_arn]")
      end
    end

    class CreateEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEndpointInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
        Hearth::Validator.validate!(input[:endpoint_config_name], ::String, context: "#{context}[:endpoint_config_name]")
        DeploymentConfig.validate!(input[:deployment_config], context: "#{context}[:deployment_config]") unless input[:deployment_config].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEndpointOutput, context: context)
        Hearth::Validator.validate!(input[:endpoint_arn], ::String, context: "#{context}[:endpoint_arn]")
      end
    end

    class CreateExperimentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateExperimentInput, context: context)
        Hearth::Validator.validate!(input[:experiment_name], ::String, context: "#{context}[:experiment_name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateExperimentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateExperimentOutput, context: context)
        Hearth::Validator.validate!(input[:experiment_arn], ::String, context: "#{context}[:experiment_arn]")
      end
    end

    class CreateFeatureGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFeatureGroupInput, context: context)
        Hearth::Validator.validate!(input[:feature_group_name], ::String, context: "#{context}[:feature_group_name]")
        Hearth::Validator.validate!(input[:record_identifier_feature_name], ::String, context: "#{context}[:record_identifier_feature_name]")
        Hearth::Validator.validate!(input[:event_time_feature_name], ::String, context: "#{context}[:event_time_feature_name]")
        FeatureDefinitions.validate!(input[:feature_definitions], context: "#{context}[:feature_definitions]") unless input[:feature_definitions].nil?
        OnlineStoreConfig.validate!(input[:online_store_config], context: "#{context}[:online_store_config]") unless input[:online_store_config].nil?
        OfflineStoreConfig.validate!(input[:offline_store_config], context: "#{context}[:offline_store_config]") unless input[:offline_store_config].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateFeatureGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFeatureGroupOutput, context: context)
        Hearth::Validator.validate!(input[:feature_group_arn], ::String, context: "#{context}[:feature_group_arn]")
      end
    end

    class CreateFlowDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFlowDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:flow_definition_name], ::String, context: "#{context}[:flow_definition_name]")
        HumanLoopRequestSource.validate!(input[:human_loop_request_source], context: "#{context}[:human_loop_request_source]") unless input[:human_loop_request_source].nil?
        HumanLoopActivationConfig.validate!(input[:human_loop_activation_config], context: "#{context}[:human_loop_activation_config]") unless input[:human_loop_activation_config].nil?
        HumanLoopConfig.validate!(input[:human_loop_config], context: "#{context}[:human_loop_config]") unless input[:human_loop_config].nil?
        FlowDefinitionOutputConfig.validate!(input[:output_config], context: "#{context}[:output_config]") unless input[:output_config].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateFlowDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFlowDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:flow_definition_arn], ::String, context: "#{context}[:flow_definition_arn]")
      end
    end

    class CreateHumanTaskUiInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHumanTaskUiInput, context: context)
        Hearth::Validator.validate!(input[:human_task_ui_name], ::String, context: "#{context}[:human_task_ui_name]")
        UiTemplate.validate!(input[:ui_template], context: "#{context}[:ui_template]") unless input[:ui_template].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateHumanTaskUiOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHumanTaskUiOutput, context: context)
        Hearth::Validator.validate!(input[:human_task_ui_arn], ::String, context: "#{context}[:human_task_ui_arn]")
      end
    end

    class CreateHyperParameterTuningJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHyperParameterTuningJobInput, context: context)
        Hearth::Validator.validate!(input[:hyper_parameter_tuning_job_name], ::String, context: "#{context}[:hyper_parameter_tuning_job_name]")
        HyperParameterTuningJobConfig.validate!(input[:hyper_parameter_tuning_job_config], context: "#{context}[:hyper_parameter_tuning_job_config]") unless input[:hyper_parameter_tuning_job_config].nil?
        HyperParameterTrainingJobDefinition.validate!(input[:training_job_definition], context: "#{context}[:training_job_definition]") unless input[:training_job_definition].nil?
        HyperParameterTrainingJobDefinitions.validate!(input[:training_job_definitions], context: "#{context}[:training_job_definitions]") unless input[:training_job_definitions].nil?
        HyperParameterTuningJobWarmStartConfig.validate!(input[:warm_start_config], context: "#{context}[:warm_start_config]") unless input[:warm_start_config].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateHyperParameterTuningJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHyperParameterTuningJobOutput, context: context)
        Hearth::Validator.validate!(input[:hyper_parameter_tuning_job_arn], ::String, context: "#{context}[:hyper_parameter_tuning_job_arn]")
      end
    end

    class CreateImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateImageInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:image_name], ::String, context: "#{context}[:image_name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateImageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateImageOutput, context: context)
        Hearth::Validator.validate!(input[:image_arn], ::String, context: "#{context}[:image_arn]")
      end
    end

    class CreateImageVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateImageVersionInput, context: context)
        Hearth::Validator.validate!(input[:base_image], ::String, context: "#{context}[:base_image]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:image_name], ::String, context: "#{context}[:image_name]")
      end
    end

    class CreateImageVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateImageVersionOutput, context: context)
        Hearth::Validator.validate!(input[:image_version_arn], ::String, context: "#{context}[:image_version_arn]")
      end
    end

    class CreateInferenceRecommendationsJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInferenceRecommendationsJobInput, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_type], ::String, context: "#{context}[:job_type]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        RecommendationJobInputConfig.validate!(input[:input_config], context: "#{context}[:input_config]") unless input[:input_config].nil?
        Hearth::Validator.validate!(input[:job_description], ::String, context: "#{context}[:job_description]")
        RecommendationJobStoppingConditions.validate!(input[:stopping_conditions], context: "#{context}[:stopping_conditions]") unless input[:stopping_conditions].nil?
        RecommendationJobOutputConfig.validate!(input[:output_config], context: "#{context}[:output_config]") unless input[:output_config].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateInferenceRecommendationsJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateInferenceRecommendationsJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
      end
    end

    class CreateLabelingJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLabelingJobInput, context: context)
        Hearth::Validator.validate!(input[:labeling_job_name], ::String, context: "#{context}[:labeling_job_name]")
        Hearth::Validator.validate!(input[:label_attribute_name], ::String, context: "#{context}[:label_attribute_name]")
        LabelingJobInputConfig.validate!(input[:input_config], context: "#{context}[:input_config]") unless input[:input_config].nil?
        LabelingJobOutputConfig.validate!(input[:output_config], context: "#{context}[:output_config]") unless input[:output_config].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:label_category_config_s3_uri], ::String, context: "#{context}[:label_category_config_s3_uri]")
        LabelingJobStoppingConditions.validate!(input[:stopping_conditions], context: "#{context}[:stopping_conditions]") unless input[:stopping_conditions].nil?
        LabelingJobAlgorithmsConfig.validate!(input[:labeling_job_algorithms_config], context: "#{context}[:labeling_job_algorithms_config]") unless input[:labeling_job_algorithms_config].nil?
        HumanTaskConfig.validate!(input[:human_task_config], context: "#{context}[:human_task_config]") unless input[:human_task_config].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateLabelingJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLabelingJobOutput, context: context)
        Hearth::Validator.validate!(input[:labeling_job_arn], ::String, context: "#{context}[:labeling_job_arn]")
      end
    end

    class CreateModelBiasJobDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateModelBiasJobDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:job_definition_name], ::String, context: "#{context}[:job_definition_name]")
        ModelBiasBaselineConfig.validate!(input[:model_bias_baseline_config], context: "#{context}[:model_bias_baseline_config]") unless input[:model_bias_baseline_config].nil?
        ModelBiasAppSpecification.validate!(input[:model_bias_app_specification], context: "#{context}[:model_bias_app_specification]") unless input[:model_bias_app_specification].nil?
        ModelBiasJobInput.validate!(input[:model_bias_job_input], context: "#{context}[:model_bias_job_input]") unless input[:model_bias_job_input].nil?
        MonitoringOutputConfig.validate!(input[:model_bias_job_output_config], context: "#{context}[:model_bias_job_output_config]") unless input[:model_bias_job_output_config].nil?
        MonitoringResources.validate!(input[:job_resources], context: "#{context}[:job_resources]") unless input[:job_resources].nil?
        MonitoringNetworkConfig.validate!(input[:network_config], context: "#{context}[:network_config]") unless input[:network_config].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        MonitoringStoppingCondition.validate!(input[:stopping_condition], context: "#{context}[:stopping_condition]") unless input[:stopping_condition].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateModelBiasJobDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateModelBiasJobDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:job_definition_arn], ::String, context: "#{context}[:job_definition_arn]")
      end
    end

    class CreateModelExplainabilityJobDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateModelExplainabilityJobDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:job_definition_name], ::String, context: "#{context}[:job_definition_name]")
        ModelExplainabilityBaselineConfig.validate!(input[:model_explainability_baseline_config], context: "#{context}[:model_explainability_baseline_config]") unless input[:model_explainability_baseline_config].nil?
        ModelExplainabilityAppSpecification.validate!(input[:model_explainability_app_specification], context: "#{context}[:model_explainability_app_specification]") unless input[:model_explainability_app_specification].nil?
        ModelExplainabilityJobInput.validate!(input[:model_explainability_job_input], context: "#{context}[:model_explainability_job_input]") unless input[:model_explainability_job_input].nil?
        MonitoringOutputConfig.validate!(input[:model_explainability_job_output_config], context: "#{context}[:model_explainability_job_output_config]") unless input[:model_explainability_job_output_config].nil?
        MonitoringResources.validate!(input[:job_resources], context: "#{context}[:job_resources]") unless input[:job_resources].nil?
        MonitoringNetworkConfig.validate!(input[:network_config], context: "#{context}[:network_config]") unless input[:network_config].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        MonitoringStoppingCondition.validate!(input[:stopping_condition], context: "#{context}[:stopping_condition]") unless input[:stopping_condition].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateModelExplainabilityJobDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateModelExplainabilityJobDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:job_definition_arn], ::String, context: "#{context}[:job_definition_arn]")
      end
    end

    class CreateModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateModelInput, context: context)
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
        ContainerDefinition.validate!(input[:primary_container], context: "#{context}[:primary_container]") unless input[:primary_container].nil?
        ContainerDefinitionList.validate!(input[:containers], context: "#{context}[:containers]") unless input[:containers].nil?
        InferenceExecutionConfig.validate!(input[:inference_execution_config], context: "#{context}[:inference_execution_config]") unless input[:inference_execution_config].nil?
        Hearth::Validator.validate!(input[:execution_role_arn], ::String, context: "#{context}[:execution_role_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        Hearth::Validator.validate!(input[:enable_network_isolation], ::TrueClass, ::FalseClass, context: "#{context}[:enable_network_isolation]")
      end
    end

    class CreateModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateModelOutput, context: context)
        Hearth::Validator.validate!(input[:model_arn], ::String, context: "#{context}[:model_arn]")
      end
    end

    class CreateModelPackageGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateModelPackageGroupInput, context: context)
        Hearth::Validator.validate!(input[:model_package_group_name], ::String, context: "#{context}[:model_package_group_name]")
        Hearth::Validator.validate!(input[:model_package_group_description], ::String, context: "#{context}[:model_package_group_description]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateModelPackageGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateModelPackageGroupOutput, context: context)
        Hearth::Validator.validate!(input[:model_package_group_arn], ::String, context: "#{context}[:model_package_group_arn]")
      end
    end

    class CreateModelPackageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateModelPackageInput, context: context)
        Hearth::Validator.validate!(input[:model_package_name], ::String, context: "#{context}[:model_package_name]")
        Hearth::Validator.validate!(input[:model_package_group_name], ::String, context: "#{context}[:model_package_group_name]")
        Hearth::Validator.validate!(input[:model_package_description], ::String, context: "#{context}[:model_package_description]")
        InferenceSpecification.validate!(input[:inference_specification], context: "#{context}[:inference_specification]") unless input[:inference_specification].nil?
        ModelPackageValidationSpecification.validate!(input[:validation_specification], context: "#{context}[:validation_specification]") unless input[:validation_specification].nil?
        SourceAlgorithmSpecification.validate!(input[:source_algorithm_specification], context: "#{context}[:source_algorithm_specification]") unless input[:source_algorithm_specification].nil?
        Hearth::Validator.validate!(input[:certify_for_marketplace], ::TrueClass, ::FalseClass, context: "#{context}[:certify_for_marketplace]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:model_approval_status], ::String, context: "#{context}[:model_approval_status]")
        MetadataProperties.validate!(input[:metadata_properties], context: "#{context}[:metadata_properties]") unless input[:metadata_properties].nil?
        ModelMetrics.validate!(input[:model_metrics], context: "#{context}[:model_metrics]") unless input[:model_metrics].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        CustomerMetadataMap.validate!(input[:customer_metadata_properties], context: "#{context}[:customer_metadata_properties]") unless input[:customer_metadata_properties].nil?
        DriftCheckBaselines.validate!(input[:drift_check_baselines], context: "#{context}[:drift_check_baselines]") unless input[:drift_check_baselines].nil?
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:task], ::String, context: "#{context}[:task]")
        Hearth::Validator.validate!(input[:sample_payload_url], ::String, context: "#{context}[:sample_payload_url]")
        AdditionalInferenceSpecifications.validate!(input[:additional_inference_specifications], context: "#{context}[:additional_inference_specifications]") unless input[:additional_inference_specifications].nil?
      end
    end

    class CreateModelPackageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateModelPackageOutput, context: context)
        Hearth::Validator.validate!(input[:model_package_arn], ::String, context: "#{context}[:model_package_arn]")
      end
    end

    class CreateModelQualityJobDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateModelQualityJobDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:job_definition_name], ::String, context: "#{context}[:job_definition_name]")
        ModelQualityBaselineConfig.validate!(input[:model_quality_baseline_config], context: "#{context}[:model_quality_baseline_config]") unless input[:model_quality_baseline_config].nil?
        ModelQualityAppSpecification.validate!(input[:model_quality_app_specification], context: "#{context}[:model_quality_app_specification]") unless input[:model_quality_app_specification].nil?
        ModelQualityJobInput.validate!(input[:model_quality_job_input], context: "#{context}[:model_quality_job_input]") unless input[:model_quality_job_input].nil?
        MonitoringOutputConfig.validate!(input[:model_quality_job_output_config], context: "#{context}[:model_quality_job_output_config]") unless input[:model_quality_job_output_config].nil?
        MonitoringResources.validate!(input[:job_resources], context: "#{context}[:job_resources]") unless input[:job_resources].nil?
        MonitoringNetworkConfig.validate!(input[:network_config], context: "#{context}[:network_config]") unless input[:network_config].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        MonitoringStoppingCondition.validate!(input[:stopping_condition], context: "#{context}[:stopping_condition]") unless input[:stopping_condition].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateModelQualityJobDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateModelQualityJobDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:job_definition_arn], ::String, context: "#{context}[:job_definition_arn]")
      end
    end

    class CreateMonitoringScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMonitoringScheduleInput, context: context)
        Hearth::Validator.validate!(input[:monitoring_schedule_name], ::String, context: "#{context}[:monitoring_schedule_name]")
        MonitoringScheduleConfig.validate!(input[:monitoring_schedule_config], context: "#{context}[:monitoring_schedule_config]") unless input[:monitoring_schedule_config].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateMonitoringScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMonitoringScheduleOutput, context: context)
        Hearth::Validator.validate!(input[:monitoring_schedule_arn], ::String, context: "#{context}[:monitoring_schedule_arn]")
      end
    end

    class CreateNotebookInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNotebookInstanceInput, context: context)
        Hearth::Validator.validate!(input[:notebook_instance_name], ::String, context: "#{context}[:notebook_instance_name]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        SecurityGroupIds.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:lifecycle_config_name], ::String, context: "#{context}[:lifecycle_config_name]")
        Hearth::Validator.validate!(input[:direct_internet_access], ::String, context: "#{context}[:direct_internet_access]")
        Hearth::Validator.validate!(input[:volume_size_in_gb], ::Integer, context: "#{context}[:volume_size_in_gb]")
        NotebookInstanceAcceleratorTypes.validate!(input[:accelerator_types], context: "#{context}[:accelerator_types]") unless input[:accelerator_types].nil?
        Hearth::Validator.validate!(input[:default_code_repository], ::String, context: "#{context}[:default_code_repository]")
        AdditionalCodeRepositoryNamesOrUrls.validate!(input[:additional_code_repositories], context: "#{context}[:additional_code_repositories]") unless input[:additional_code_repositories].nil?
        Hearth::Validator.validate!(input[:root_access], ::String, context: "#{context}[:root_access]")
        Hearth::Validator.validate!(input[:platform_identifier], ::String, context: "#{context}[:platform_identifier]")
        InstanceMetadataServiceConfiguration.validate!(input[:instance_metadata_service_configuration], context: "#{context}[:instance_metadata_service_configuration]") unless input[:instance_metadata_service_configuration].nil?
      end
    end

    class CreateNotebookInstanceLifecycleConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNotebookInstanceLifecycleConfigInput, context: context)
        Hearth::Validator.validate!(input[:notebook_instance_lifecycle_config_name], ::String, context: "#{context}[:notebook_instance_lifecycle_config_name]")
        NotebookInstanceLifecycleConfigList.validate!(input[:on_create], context: "#{context}[:on_create]") unless input[:on_create].nil?
        NotebookInstanceLifecycleConfigList.validate!(input[:on_start], context: "#{context}[:on_start]") unless input[:on_start].nil?
      end
    end

    class CreateNotebookInstanceLifecycleConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNotebookInstanceLifecycleConfigOutput, context: context)
        Hearth::Validator.validate!(input[:notebook_instance_lifecycle_config_arn], ::String, context: "#{context}[:notebook_instance_lifecycle_config_arn]")
      end
    end

    class CreateNotebookInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNotebookInstanceOutput, context: context)
        Hearth::Validator.validate!(input[:notebook_instance_arn], ::String, context: "#{context}[:notebook_instance_arn]")
      end
    end

    class CreatePipelineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePipelineInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_name], ::String, context: "#{context}[:pipeline_name]")
        Hearth::Validator.validate!(input[:pipeline_display_name], ::String, context: "#{context}[:pipeline_display_name]")
        Hearth::Validator.validate!(input[:pipeline_definition], ::String, context: "#{context}[:pipeline_definition]")
        PipelineDefinitionS3Location.validate!(input[:pipeline_definition_s3_location], context: "#{context}[:pipeline_definition_s3_location]") unless input[:pipeline_definition_s3_location].nil?
        Hearth::Validator.validate!(input[:pipeline_description], ::String, context: "#{context}[:pipeline_description]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        ParallelismConfiguration.validate!(input[:parallelism_configuration], context: "#{context}[:parallelism_configuration]") unless input[:parallelism_configuration].nil?
      end
    end

    class CreatePipelineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePipelineOutput, context: context)
        Hearth::Validator.validate!(input[:pipeline_arn], ::String, context: "#{context}[:pipeline_arn]")
      end
    end

    class CreatePresignedDomainUrlInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePresignedDomainUrlInput, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:user_profile_name], ::String, context: "#{context}[:user_profile_name]")
        Hearth::Validator.validate!(input[:session_expiration_duration_in_seconds], ::Integer, context: "#{context}[:session_expiration_duration_in_seconds]")
        Hearth::Validator.validate!(input[:expires_in_seconds], ::Integer, context: "#{context}[:expires_in_seconds]")
      end
    end

    class CreatePresignedDomainUrlOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePresignedDomainUrlOutput, context: context)
        Hearth::Validator.validate!(input[:authorized_url], ::String, context: "#{context}[:authorized_url]")
      end
    end

    class CreatePresignedNotebookInstanceUrlInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePresignedNotebookInstanceUrlInput, context: context)
        Hearth::Validator.validate!(input[:notebook_instance_name], ::String, context: "#{context}[:notebook_instance_name]")
        Hearth::Validator.validate!(input[:session_expiration_duration_in_seconds], ::Integer, context: "#{context}[:session_expiration_duration_in_seconds]")
      end
    end

    class CreatePresignedNotebookInstanceUrlOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePresignedNotebookInstanceUrlOutput, context: context)
        Hearth::Validator.validate!(input[:authorized_url], ::String, context: "#{context}[:authorized_url]")
      end
    end

    class CreateProcessingJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProcessingJobInput, context: context)
        ProcessingInputs.validate!(input[:processing_inputs], context: "#{context}[:processing_inputs]") unless input[:processing_inputs].nil?
        ProcessingOutputConfig.validate!(input[:processing_output_config], context: "#{context}[:processing_output_config]") unless input[:processing_output_config].nil?
        Hearth::Validator.validate!(input[:processing_job_name], ::String, context: "#{context}[:processing_job_name]")
        ProcessingResources.validate!(input[:processing_resources], context: "#{context}[:processing_resources]") unless input[:processing_resources].nil?
        ProcessingStoppingCondition.validate!(input[:stopping_condition], context: "#{context}[:stopping_condition]") unless input[:stopping_condition].nil?
        AppSpecification.validate!(input[:app_specification], context: "#{context}[:app_specification]") unless input[:app_specification].nil?
        ProcessingEnvironmentMap.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        NetworkConfig.validate!(input[:network_config], context: "#{context}[:network_config]") unless input[:network_config].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        ExperimentConfig.validate!(input[:experiment_config], context: "#{context}[:experiment_config]") unless input[:experiment_config].nil?
      end
    end

    class CreateProcessingJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProcessingJobOutput, context: context)
        Hearth::Validator.validate!(input[:processing_job_arn], ::String, context: "#{context}[:processing_job_arn]")
      end
    end

    class CreateProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProjectInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:project_description], ::String, context: "#{context}[:project_description]")
        ServiceCatalogProvisioningDetails.validate!(input[:service_catalog_provisioning_details], context: "#{context}[:service_catalog_provisioning_details]") unless input[:service_catalog_provisioning_details].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProjectOutput, context: context)
        Hearth::Validator.validate!(input[:project_arn], ::String, context: "#{context}[:project_arn]")
        Hearth::Validator.validate!(input[:project_id], ::String, context: "#{context}[:project_id]")
      end
    end

    class CreateStudioLifecycleConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStudioLifecycleConfigInput, context: context)
        Hearth::Validator.validate!(input[:studio_lifecycle_config_name], ::String, context: "#{context}[:studio_lifecycle_config_name]")
        Hearth::Validator.validate!(input[:studio_lifecycle_config_content], ::String, context: "#{context}[:studio_lifecycle_config_content]")
        Hearth::Validator.validate!(input[:studio_lifecycle_config_app_type], ::String, context: "#{context}[:studio_lifecycle_config_app_type]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateStudioLifecycleConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStudioLifecycleConfigOutput, context: context)
        Hearth::Validator.validate!(input[:studio_lifecycle_config_arn], ::String, context: "#{context}[:studio_lifecycle_config_arn]")
      end
    end

    class CreateTrainingJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTrainingJobInput, context: context)
        Hearth::Validator.validate!(input[:training_job_name], ::String, context: "#{context}[:training_job_name]")
        HyperParameters.validate!(input[:hyper_parameters], context: "#{context}[:hyper_parameters]") unless input[:hyper_parameters].nil?
        AlgorithmSpecification.validate!(input[:algorithm_specification], context: "#{context}[:algorithm_specification]") unless input[:algorithm_specification].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        ResourceConfig.validate!(input[:resource_config], context: "#{context}[:resource_config]") unless input[:resource_config].nil?
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        StoppingCondition.validate!(input[:stopping_condition], context: "#{context}[:stopping_condition]") unless input[:stopping_condition].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:enable_network_isolation], ::TrueClass, ::FalseClass, context: "#{context}[:enable_network_isolation]")
        Hearth::Validator.validate!(input[:enable_inter_container_traffic_encryption], ::TrueClass, ::FalseClass, context: "#{context}[:enable_inter_container_traffic_encryption]")
        Hearth::Validator.validate!(input[:enable_managed_spot_training], ::TrueClass, ::FalseClass, context: "#{context}[:enable_managed_spot_training]")
        CheckpointConfig.validate!(input[:checkpoint_config], context: "#{context}[:checkpoint_config]") unless input[:checkpoint_config].nil?
        DebugHookConfig.validate!(input[:debug_hook_config], context: "#{context}[:debug_hook_config]") unless input[:debug_hook_config].nil?
        DebugRuleConfigurations.validate!(input[:debug_rule_configurations], context: "#{context}[:debug_rule_configurations]") unless input[:debug_rule_configurations].nil?
        TensorBoardOutputConfig.validate!(input[:tensor_board_output_config], context: "#{context}[:tensor_board_output_config]") unless input[:tensor_board_output_config].nil?
        ExperimentConfig.validate!(input[:experiment_config], context: "#{context}[:experiment_config]") unless input[:experiment_config].nil?
        ProfilerConfig.validate!(input[:profiler_config], context: "#{context}[:profiler_config]") unless input[:profiler_config].nil?
        ProfilerRuleConfigurations.validate!(input[:profiler_rule_configurations], context: "#{context}[:profiler_rule_configurations]") unless input[:profiler_rule_configurations].nil?
        TrainingEnvironmentMap.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        RetryStrategy.validate!(input[:retry_strategy], context: "#{context}[:retry_strategy]") unless input[:retry_strategy].nil?
      end
    end

    class CreateTrainingJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTrainingJobOutput, context: context)
        Hearth::Validator.validate!(input[:training_job_arn], ::String, context: "#{context}[:training_job_arn]")
      end
    end

    class CreateTransformJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTransformJobInput, context: context)
        Hearth::Validator.validate!(input[:transform_job_name], ::String, context: "#{context}[:transform_job_name]")
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
        Hearth::Validator.validate!(input[:max_concurrent_transforms], ::Integer, context: "#{context}[:max_concurrent_transforms]")
        ModelClientConfig.validate!(input[:model_client_config], context: "#{context}[:model_client_config]") unless input[:model_client_config].nil?
        Hearth::Validator.validate!(input[:max_payload_in_mb], ::Integer, context: "#{context}[:max_payload_in_mb]")
        Hearth::Validator.validate!(input[:batch_strategy], ::String, context: "#{context}[:batch_strategy]")
        TransformEnvironmentMap.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        TransformInput.validate!(input[:transform_input], context: "#{context}[:transform_input]") unless input[:transform_input].nil?
        TransformOutput.validate!(input[:transform_output], context: "#{context}[:transform_output]") unless input[:transform_output].nil?
        TransformResources.validate!(input[:transform_resources], context: "#{context}[:transform_resources]") unless input[:transform_resources].nil?
        DataProcessing.validate!(input[:data_processing], context: "#{context}[:data_processing]") unless input[:data_processing].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        ExperimentConfig.validate!(input[:experiment_config], context: "#{context}[:experiment_config]") unless input[:experiment_config].nil?
      end
    end

    class CreateTransformJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTransformJobOutput, context: context)
        Hearth::Validator.validate!(input[:transform_job_arn], ::String, context: "#{context}[:transform_job_arn]")
      end
    end

    class CreateTrialComponentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTrialComponentInput, context: context)
        Hearth::Validator.validate!(input[:trial_component_name], ::String, context: "#{context}[:trial_component_name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        TrialComponentStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        TrialComponentParameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        TrialComponentArtifacts.validate!(input[:input_artifacts], context: "#{context}[:input_artifacts]") unless input[:input_artifacts].nil?
        TrialComponentArtifacts.validate!(input[:output_artifacts], context: "#{context}[:output_artifacts]") unless input[:output_artifacts].nil?
        MetadataProperties.validate!(input[:metadata_properties], context: "#{context}[:metadata_properties]") unless input[:metadata_properties].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateTrialComponentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTrialComponentOutput, context: context)
        Hearth::Validator.validate!(input[:trial_component_arn], ::String, context: "#{context}[:trial_component_arn]")
      end
    end

    class CreateTrialInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTrialInput, context: context)
        Hearth::Validator.validate!(input[:trial_name], ::String, context: "#{context}[:trial_name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:experiment_name], ::String, context: "#{context}[:experiment_name]")
        MetadataProperties.validate!(input[:metadata_properties], context: "#{context}[:metadata_properties]") unless input[:metadata_properties].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateTrialOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTrialOutput, context: context)
        Hearth::Validator.validate!(input[:trial_arn], ::String, context: "#{context}[:trial_arn]")
      end
    end

    class CreateUserProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserProfileInput, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:user_profile_name], ::String, context: "#{context}[:user_profile_name]")
        Hearth::Validator.validate!(input[:single_sign_on_user_identifier], ::String, context: "#{context}[:single_sign_on_user_identifier]")
        Hearth::Validator.validate!(input[:single_sign_on_user_value], ::String, context: "#{context}[:single_sign_on_user_value]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        UserSettings.validate!(input[:user_settings], context: "#{context}[:user_settings]") unless input[:user_settings].nil?
      end
    end

    class CreateUserProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserProfileOutput, context: context)
        Hearth::Validator.validate!(input[:user_profile_arn], ::String, context: "#{context}[:user_profile_arn]")
      end
    end

    class CreateWorkforceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorkforceInput, context: context)
        CognitoConfig.validate!(input[:cognito_config], context: "#{context}[:cognito_config]") unless input[:cognito_config].nil?
        OidcConfig.validate!(input[:oidc_config], context: "#{context}[:oidc_config]") unless input[:oidc_config].nil?
        SourceIpConfig.validate!(input[:source_ip_config], context: "#{context}[:source_ip_config]") unless input[:source_ip_config].nil?
        Hearth::Validator.validate!(input[:workforce_name], ::String, context: "#{context}[:workforce_name]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateWorkforceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorkforceOutput, context: context)
        Hearth::Validator.validate!(input[:workforce_arn], ::String, context: "#{context}[:workforce_arn]")
      end
    end

    class CreateWorkteamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorkteamInput, context: context)
        Hearth::Validator.validate!(input[:workteam_name], ::String, context: "#{context}[:workteam_name]")
        Hearth::Validator.validate!(input[:workforce_name], ::String, context: "#{context}[:workforce_name]")
        MemberDefinitions.validate!(input[:member_definitions], context: "#{context}[:member_definitions]") unless input[:member_definitions].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        NotificationConfiguration.validate!(input[:notification_configuration], context: "#{context}[:notification_configuration]") unless input[:notification_configuration].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateWorkteamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorkteamOutput, context: context)
        Hearth::Validator.validate!(input[:workteam_arn], ::String, context: "#{context}[:workteam_arn]")
      end
    end

    class CsvContentTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CustomImage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomImage, context: context)
        Hearth::Validator.validate!(input[:image_name], ::String, context: "#{context}[:image_name]")
        Hearth::Validator.validate!(input[:image_version_number], ::Integer, context: "#{context}[:image_version_number]")
        Hearth::Validator.validate!(input[:app_image_config_name], ::String, context: "#{context}[:app_image_config_name]")
      end
    end

    class CustomImages
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CustomImage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CustomerMetadataKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CustomerMetadataMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class DataCaptureConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataCaptureConfig, context: context)
        Hearth::Validator.validate!(input[:enable_capture], ::TrueClass, ::FalseClass, context: "#{context}[:enable_capture]")
        Hearth::Validator.validate!(input[:initial_sampling_percentage], ::Integer, context: "#{context}[:initial_sampling_percentage]")
        Hearth::Validator.validate!(input[:destination_s3_uri], ::String, context: "#{context}[:destination_s3_uri]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        CaptureOptionList.validate!(input[:capture_options], context: "#{context}[:capture_options]") unless input[:capture_options].nil?
        CaptureContentTypeHeader.validate!(input[:capture_content_type_header], context: "#{context}[:capture_content_type_header]") unless input[:capture_content_type_header].nil?
      end
    end

    class DataCaptureConfigSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataCaptureConfigSummary, context: context)
        Hearth::Validator.validate!(input[:enable_capture], ::TrueClass, ::FalseClass, context: "#{context}[:enable_capture]")
        Hearth::Validator.validate!(input[:capture_status], ::String, context: "#{context}[:capture_status]")
        Hearth::Validator.validate!(input[:current_sampling_percentage], ::Integer, context: "#{context}[:current_sampling_percentage]")
        Hearth::Validator.validate!(input[:destination_s3_uri], ::String, context: "#{context}[:destination_s3_uri]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class DataCatalogConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataCatalogConfig, context: context)
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:catalog], ::String, context: "#{context}[:catalog]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
      end
    end

    class DataProcessing
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataProcessing, context: context)
        Hearth::Validator.validate!(input[:input_filter], ::String, context: "#{context}[:input_filter]")
        Hearth::Validator.validate!(input[:output_filter], ::String, context: "#{context}[:output_filter]")
        Hearth::Validator.validate!(input[:join_source], ::String, context: "#{context}[:join_source]")
      end
    end

    class DataQualityAppSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataQualityAppSpecification, context: context)
        Hearth::Validator.validate!(input[:image_uri], ::String, context: "#{context}[:image_uri]")
        ContainerEntrypoint.validate!(input[:container_entrypoint], context: "#{context}[:container_entrypoint]") unless input[:container_entrypoint].nil?
        MonitoringContainerArguments.validate!(input[:container_arguments], context: "#{context}[:container_arguments]") unless input[:container_arguments].nil?
        Hearth::Validator.validate!(input[:record_preprocessor_source_uri], ::String, context: "#{context}[:record_preprocessor_source_uri]")
        Hearth::Validator.validate!(input[:post_analytics_processor_source_uri], ::String, context: "#{context}[:post_analytics_processor_source_uri]")
        MonitoringEnvironmentMap.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
      end
    end

    class DataQualityBaselineConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataQualityBaselineConfig, context: context)
        Hearth::Validator.validate!(input[:baselining_job_name], ::String, context: "#{context}[:baselining_job_name]")
        MonitoringConstraintsResource.validate!(input[:constraints_resource], context: "#{context}[:constraints_resource]") unless input[:constraints_resource].nil?
        MonitoringStatisticsResource.validate!(input[:statistics_resource], context: "#{context}[:statistics_resource]") unless input[:statistics_resource].nil?
      end
    end

    class DataQualityJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataQualityJobInput, context: context)
        EndpointInput.validate!(input[:endpoint_input], context: "#{context}[:endpoint_input]") unless input[:endpoint_input].nil?
      end
    end

    class DataSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSource, context: context)
        S3DataSource.validate!(input[:s3_data_source], context: "#{context}[:s3_data_source]") unless input[:s3_data_source].nil?
        FileSystemDataSource.validate!(input[:file_system_data_source], context: "#{context}[:file_system_data_source]") unless input[:file_system_data_source].nil?
      end
    end

    class DatasetDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatasetDefinition, context: context)
        AthenaDatasetDefinition.validate!(input[:athena_dataset_definition], context: "#{context}[:athena_dataset_definition]") unless input[:athena_dataset_definition].nil?
        RedshiftDatasetDefinition.validate!(input[:redshift_dataset_definition], context: "#{context}[:redshift_dataset_definition]") unless input[:redshift_dataset_definition].nil?
        Hearth::Validator.validate!(input[:local_path], ::String, context: "#{context}[:local_path]")
        Hearth::Validator.validate!(input[:data_distribution_type], ::String, context: "#{context}[:data_distribution_type]")
        Hearth::Validator.validate!(input[:input_mode], ::String, context: "#{context}[:input_mode]")
      end
    end

    class DebugHookConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DebugHookConfig, context: context)
        Hearth::Validator.validate!(input[:local_path], ::String, context: "#{context}[:local_path]")
        Hearth::Validator.validate!(input[:s3_output_path], ::String, context: "#{context}[:s3_output_path]")
        HookParameters.validate!(input[:hook_parameters], context: "#{context}[:hook_parameters]") unless input[:hook_parameters].nil?
        CollectionConfigurations.validate!(input[:collection_configurations], context: "#{context}[:collection_configurations]") unless input[:collection_configurations].nil?
      end
    end

    class DebugRuleConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DebugRuleConfiguration, context: context)
        Hearth::Validator.validate!(input[:rule_configuration_name], ::String, context: "#{context}[:rule_configuration_name]")
        Hearth::Validator.validate!(input[:local_path], ::String, context: "#{context}[:local_path]")
        Hearth::Validator.validate!(input[:s3_output_path], ::String, context: "#{context}[:s3_output_path]")
        Hearth::Validator.validate!(input[:rule_evaluator_image], ::String, context: "#{context}[:rule_evaluator_image]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:volume_size_in_gb], ::Integer, context: "#{context}[:volume_size_in_gb]")
        RuleParameters.validate!(input[:rule_parameters], context: "#{context}[:rule_parameters]") unless input[:rule_parameters].nil?
      end
    end

    class DebugRuleConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DebugRuleConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DebugRuleEvaluationStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DebugRuleEvaluationStatus, context: context)
        Hearth::Validator.validate!(input[:rule_configuration_name], ::String, context: "#{context}[:rule_configuration_name]")
        Hearth::Validator.validate!(input[:rule_evaluation_job_arn], ::String, context: "#{context}[:rule_evaluation_job_arn]")
        Hearth::Validator.validate!(input[:rule_evaluation_status], ::String, context: "#{context}[:rule_evaluation_status]")
        Hearth::Validator.validate!(input[:status_details], ::String, context: "#{context}[:status_details]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
      end
    end

    class DebugRuleEvaluationStatuses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DebugRuleEvaluationStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteActionInput, context: context)
        Hearth::Validator.validate!(input[:action_name], ::String, context: "#{context}[:action_name]")
      end
    end

    class DeleteActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteActionOutput, context: context)
        Hearth::Validator.validate!(input[:action_arn], ::String, context: "#{context}[:action_arn]")
      end
    end

    class DeleteAlgorithmInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAlgorithmInput, context: context)
        Hearth::Validator.validate!(input[:algorithm_name], ::String, context: "#{context}[:algorithm_name]")
      end
    end

    class DeleteAlgorithmOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAlgorithmOutput, context: context)
      end
    end

    class DeleteAppImageConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppImageConfigInput, context: context)
        Hearth::Validator.validate!(input[:app_image_config_name], ::String, context: "#{context}[:app_image_config_name]")
      end
    end

    class DeleteAppImageConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppImageConfigOutput, context: context)
      end
    end

    class DeleteAppInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppInput, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:user_profile_name], ::String, context: "#{context}[:user_profile_name]")
        Hearth::Validator.validate!(input[:app_type], ::String, context: "#{context}[:app_type]")
        Hearth::Validator.validate!(input[:app_name], ::String, context: "#{context}[:app_name]")
      end
    end

    class DeleteAppOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAppOutput, context: context)
      end
    end

    class DeleteArtifactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteArtifactInput, context: context)
        Hearth::Validator.validate!(input[:artifact_arn], ::String, context: "#{context}[:artifact_arn]")
        ArtifactSource.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
      end
    end

    class DeleteArtifactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteArtifactOutput, context: context)
        Hearth::Validator.validate!(input[:artifact_arn], ::String, context: "#{context}[:artifact_arn]")
      end
    end

    class DeleteAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAssociationInput, context: context)
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:destination_arn], ::String, context: "#{context}[:destination_arn]")
      end
    end

    class DeleteAssociationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAssociationOutput, context: context)
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:destination_arn], ::String, context: "#{context}[:destination_arn]")
      end
    end

    class DeleteCodeRepositoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCodeRepositoryInput, context: context)
        Hearth::Validator.validate!(input[:code_repository_name], ::String, context: "#{context}[:code_repository_name]")
      end
    end

    class DeleteCodeRepositoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCodeRepositoryOutput, context: context)
      end
    end

    class DeleteContextInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteContextInput, context: context)
        Hearth::Validator.validate!(input[:context_name], ::String, context: "#{context}[:context_name]")
      end
    end

    class DeleteContextOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteContextOutput, context: context)
        Hearth::Validator.validate!(input[:context_arn], ::String, context: "#{context}[:context_arn]")
      end
    end

    class DeleteDataQualityJobDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDataQualityJobDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:job_definition_name], ::String, context: "#{context}[:job_definition_name]")
      end
    end

    class DeleteDataQualityJobDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDataQualityJobDefinitionOutput, context: context)
      end
    end

    class DeleteDeviceFleetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDeviceFleetInput, context: context)
        Hearth::Validator.validate!(input[:device_fleet_name], ::String, context: "#{context}[:device_fleet_name]")
      end
    end

    class DeleteDeviceFleetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDeviceFleetOutput, context: context)
      end
    end

    class DeleteDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        RetentionPolicy.validate!(input[:retention_policy], context: "#{context}[:retention_policy]") unless input[:retention_policy].nil?
      end
    end

    class DeleteDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDomainOutput, context: context)
      end
    end

    class DeleteEndpointConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEndpointConfigInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_config_name], ::String, context: "#{context}[:endpoint_config_name]")
      end
    end

    class DeleteEndpointConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEndpointConfigOutput, context: context)
      end
    end

    class DeleteEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEndpointInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
      end
    end

    class DeleteEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEndpointOutput, context: context)
      end
    end

    class DeleteExperimentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteExperimentInput, context: context)
        Hearth::Validator.validate!(input[:experiment_name], ::String, context: "#{context}[:experiment_name]")
      end
    end

    class DeleteExperimentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteExperimentOutput, context: context)
        Hearth::Validator.validate!(input[:experiment_arn], ::String, context: "#{context}[:experiment_arn]")
      end
    end

    class DeleteFeatureGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFeatureGroupInput, context: context)
        Hearth::Validator.validate!(input[:feature_group_name], ::String, context: "#{context}[:feature_group_name]")
      end
    end

    class DeleteFeatureGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFeatureGroupOutput, context: context)
      end
    end

    class DeleteFlowDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFlowDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:flow_definition_name], ::String, context: "#{context}[:flow_definition_name]")
      end
    end

    class DeleteFlowDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFlowDefinitionOutput, context: context)
      end
    end

    class DeleteHumanTaskUiInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteHumanTaskUiInput, context: context)
        Hearth::Validator.validate!(input[:human_task_ui_name], ::String, context: "#{context}[:human_task_ui_name]")
      end
    end

    class DeleteHumanTaskUiOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteHumanTaskUiOutput, context: context)
      end
    end

    class DeleteImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteImageInput, context: context)
        Hearth::Validator.validate!(input[:image_name], ::String, context: "#{context}[:image_name]")
      end
    end

    class DeleteImageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteImageOutput, context: context)
      end
    end

    class DeleteImageVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteImageVersionInput, context: context)
        Hearth::Validator.validate!(input[:image_name], ::String, context: "#{context}[:image_name]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
      end
    end

    class DeleteImageVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteImageVersionOutput, context: context)
      end
    end

    class DeleteModelBiasJobDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteModelBiasJobDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:job_definition_name], ::String, context: "#{context}[:job_definition_name]")
      end
    end

    class DeleteModelBiasJobDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteModelBiasJobDefinitionOutput, context: context)
      end
    end

    class DeleteModelExplainabilityJobDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteModelExplainabilityJobDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:job_definition_name], ::String, context: "#{context}[:job_definition_name]")
      end
    end

    class DeleteModelExplainabilityJobDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteModelExplainabilityJobDefinitionOutput, context: context)
      end
    end

    class DeleteModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteModelInput, context: context)
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
      end
    end

    class DeleteModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteModelOutput, context: context)
      end
    end

    class DeleteModelPackageGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteModelPackageGroupInput, context: context)
        Hearth::Validator.validate!(input[:model_package_group_name], ::String, context: "#{context}[:model_package_group_name]")
      end
    end

    class DeleteModelPackageGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteModelPackageGroupOutput, context: context)
      end
    end

    class DeleteModelPackageGroupPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteModelPackageGroupPolicyInput, context: context)
        Hearth::Validator.validate!(input[:model_package_group_name], ::String, context: "#{context}[:model_package_group_name]")
      end
    end

    class DeleteModelPackageGroupPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteModelPackageGroupPolicyOutput, context: context)
      end
    end

    class DeleteModelPackageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteModelPackageInput, context: context)
        Hearth::Validator.validate!(input[:model_package_name], ::String, context: "#{context}[:model_package_name]")
      end
    end

    class DeleteModelPackageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteModelPackageOutput, context: context)
      end
    end

    class DeleteModelQualityJobDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteModelQualityJobDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:job_definition_name], ::String, context: "#{context}[:job_definition_name]")
      end
    end

    class DeleteModelQualityJobDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteModelQualityJobDefinitionOutput, context: context)
      end
    end

    class DeleteMonitoringScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMonitoringScheduleInput, context: context)
        Hearth::Validator.validate!(input[:monitoring_schedule_name], ::String, context: "#{context}[:monitoring_schedule_name]")
      end
    end

    class DeleteMonitoringScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMonitoringScheduleOutput, context: context)
      end
    end

    class DeleteNotebookInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNotebookInstanceInput, context: context)
        Hearth::Validator.validate!(input[:notebook_instance_name], ::String, context: "#{context}[:notebook_instance_name]")
      end
    end

    class DeleteNotebookInstanceLifecycleConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNotebookInstanceLifecycleConfigInput, context: context)
        Hearth::Validator.validate!(input[:notebook_instance_lifecycle_config_name], ::String, context: "#{context}[:notebook_instance_lifecycle_config_name]")
      end
    end

    class DeleteNotebookInstanceLifecycleConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNotebookInstanceLifecycleConfigOutput, context: context)
      end
    end

    class DeleteNotebookInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNotebookInstanceOutput, context: context)
      end
    end

    class DeletePipelineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePipelineInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_name], ::String, context: "#{context}[:pipeline_name]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class DeletePipelineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePipelineOutput, context: context)
        Hearth::Validator.validate!(input[:pipeline_arn], ::String, context: "#{context}[:pipeline_arn]")
      end
    end

    class DeleteProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProjectInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
      end
    end

    class DeleteProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProjectOutput, context: context)
      end
    end

    class DeleteStudioLifecycleConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStudioLifecycleConfigInput, context: context)
        Hearth::Validator.validate!(input[:studio_lifecycle_config_name], ::String, context: "#{context}[:studio_lifecycle_config_name]")
      end
    end

    class DeleteStudioLifecycleConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStudioLifecycleConfigOutput, context: context)
      end
    end

    class DeleteTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTagsInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class DeleteTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTagsOutput, context: context)
      end
    end

    class DeleteTrialComponentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTrialComponentInput, context: context)
        Hearth::Validator.validate!(input[:trial_component_name], ::String, context: "#{context}[:trial_component_name]")
      end
    end

    class DeleteTrialComponentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTrialComponentOutput, context: context)
        Hearth::Validator.validate!(input[:trial_component_arn], ::String, context: "#{context}[:trial_component_arn]")
      end
    end

    class DeleteTrialInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTrialInput, context: context)
        Hearth::Validator.validate!(input[:trial_name], ::String, context: "#{context}[:trial_name]")
      end
    end

    class DeleteTrialOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTrialOutput, context: context)
        Hearth::Validator.validate!(input[:trial_arn], ::String, context: "#{context}[:trial_arn]")
      end
    end

    class DeleteUserProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserProfileInput, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:user_profile_name], ::String, context: "#{context}[:user_profile_name]")
      end
    end

    class DeleteUserProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserProfileOutput, context: context)
      end
    end

    class DeleteWorkforceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWorkforceInput, context: context)
        Hearth::Validator.validate!(input[:workforce_name], ::String, context: "#{context}[:workforce_name]")
      end
    end

    class DeleteWorkforceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWorkforceOutput, context: context)
      end
    end

    class DeleteWorkteamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWorkteamInput, context: context)
        Hearth::Validator.validate!(input[:workteam_name], ::String, context: "#{context}[:workteam_name]")
      end
    end

    class DeleteWorkteamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWorkteamOutput, context: context)
        Hearth::Validator.validate!(input[:success], ::TrueClass, ::FalseClass, context: "#{context}[:success]")
      end
    end

    class DeployedImage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeployedImage, context: context)
        Hearth::Validator.validate!(input[:specified_image], ::String, context: "#{context}[:specified_image]")
        Hearth::Validator.validate!(input[:resolved_image], ::String, context: "#{context}[:resolved_image]")
        Hearth::Validator.validate!(input[:resolution_time], ::Time, context: "#{context}[:resolution_time]")
      end
    end

    class DeployedImages
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DeployedImage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeploymentConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentConfig, context: context)
        BlueGreenUpdatePolicy.validate!(input[:blue_green_update_policy], context: "#{context}[:blue_green_update_policy]") unless input[:blue_green_update_policy].nil?
        AutoRollbackConfig.validate!(input[:auto_rollback_configuration], context: "#{context}[:auto_rollback_configuration]") unless input[:auto_rollback_configuration].nil?
      end
    end

    class DeregisterDevicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterDevicesInput, context: context)
        Hearth::Validator.validate!(input[:device_fleet_name], ::String, context: "#{context}[:device_fleet_name]")
        DeviceNames.validate!(input[:device_names], context: "#{context}[:device_names]") unless input[:device_names].nil?
      end
    end

    class DeregisterDevicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterDevicesOutput, context: context)
      end
    end

    class DescribeActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeActionInput, context: context)
        Hearth::Validator.validate!(input[:action_name], ::String, context: "#{context}[:action_name]")
      end
    end

    class DescribeActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeActionOutput, context: context)
        Hearth::Validator.validate!(input[:action_name], ::String, context: "#{context}[:action_name]")
        Hearth::Validator.validate!(input[:action_arn], ::String, context: "#{context}[:action_arn]")
        ActionSource.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        Hearth::Validator.validate!(input[:action_type], ::String, context: "#{context}[:action_type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        LineageEntityParameters.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        UserContext.validate!(input[:created_by], context: "#{context}[:created_by]") unless input[:created_by].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        UserContext.validate!(input[:last_modified_by], context: "#{context}[:last_modified_by]") unless input[:last_modified_by].nil?
        MetadataProperties.validate!(input[:metadata_properties], context: "#{context}[:metadata_properties]") unless input[:metadata_properties].nil?
        Hearth::Validator.validate!(input[:lineage_group_arn], ::String, context: "#{context}[:lineage_group_arn]")
      end
    end

    class DescribeAlgorithmInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAlgorithmInput, context: context)
        Hearth::Validator.validate!(input[:algorithm_name], ::String, context: "#{context}[:algorithm_name]")
      end
    end

    class DescribeAlgorithmOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAlgorithmOutput, context: context)
        Hearth::Validator.validate!(input[:algorithm_name], ::String, context: "#{context}[:algorithm_name]")
        Hearth::Validator.validate!(input[:algorithm_arn], ::String, context: "#{context}[:algorithm_arn]")
        Hearth::Validator.validate!(input[:algorithm_description], ::String, context: "#{context}[:algorithm_description]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        TrainingSpecification.validate!(input[:training_specification], context: "#{context}[:training_specification]") unless input[:training_specification].nil?
        InferenceSpecification.validate!(input[:inference_specification], context: "#{context}[:inference_specification]") unless input[:inference_specification].nil?
        AlgorithmValidationSpecification.validate!(input[:validation_specification], context: "#{context}[:validation_specification]") unless input[:validation_specification].nil?
        Hearth::Validator.validate!(input[:algorithm_status], ::String, context: "#{context}[:algorithm_status]")
        AlgorithmStatusDetails.validate!(input[:algorithm_status_details], context: "#{context}[:algorithm_status_details]") unless input[:algorithm_status_details].nil?
        Hearth::Validator.validate!(input[:product_id], ::String, context: "#{context}[:product_id]")
        Hearth::Validator.validate!(input[:certify_for_marketplace], ::TrueClass, ::FalseClass, context: "#{context}[:certify_for_marketplace]")
      end
    end

    class DescribeAppImageConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAppImageConfigInput, context: context)
        Hearth::Validator.validate!(input[:app_image_config_name], ::String, context: "#{context}[:app_image_config_name]")
      end
    end

    class DescribeAppImageConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAppImageConfigOutput, context: context)
        Hearth::Validator.validate!(input[:app_image_config_arn], ::String, context: "#{context}[:app_image_config_arn]")
        Hearth::Validator.validate!(input[:app_image_config_name], ::String, context: "#{context}[:app_image_config_name]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        KernelGatewayImageConfig.validate!(input[:kernel_gateway_image_config], context: "#{context}[:kernel_gateway_image_config]") unless input[:kernel_gateway_image_config].nil?
      end
    end

    class DescribeAppInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAppInput, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:user_profile_name], ::String, context: "#{context}[:user_profile_name]")
        Hearth::Validator.validate!(input[:app_type], ::String, context: "#{context}[:app_type]")
        Hearth::Validator.validate!(input[:app_name], ::String, context: "#{context}[:app_name]")
      end
    end

    class DescribeAppOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAppOutput, context: context)
        Hearth::Validator.validate!(input[:app_arn], ::String, context: "#{context}[:app_arn]")
        Hearth::Validator.validate!(input[:app_type], ::String, context: "#{context}[:app_type]")
        Hearth::Validator.validate!(input[:app_name], ::String, context: "#{context}[:app_name]")
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:user_profile_name], ::String, context: "#{context}[:user_profile_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:last_health_check_timestamp], ::Time, context: "#{context}[:last_health_check_timestamp]")
        Hearth::Validator.validate!(input[:last_user_activity_timestamp], ::Time, context: "#{context}[:last_user_activity_timestamp]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        ResourceSpec.validate!(input[:resource_spec], context: "#{context}[:resource_spec]") unless input[:resource_spec].nil?
      end
    end

    class DescribeArtifactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeArtifactInput, context: context)
        Hearth::Validator.validate!(input[:artifact_arn], ::String, context: "#{context}[:artifact_arn]")
      end
    end

    class DescribeArtifactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeArtifactOutput, context: context)
        Hearth::Validator.validate!(input[:artifact_name], ::String, context: "#{context}[:artifact_name]")
        Hearth::Validator.validate!(input[:artifact_arn], ::String, context: "#{context}[:artifact_arn]")
        ArtifactSource.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        Hearth::Validator.validate!(input[:artifact_type], ::String, context: "#{context}[:artifact_type]")
        LineageEntityParameters.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        UserContext.validate!(input[:created_by], context: "#{context}[:created_by]") unless input[:created_by].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        UserContext.validate!(input[:last_modified_by], context: "#{context}[:last_modified_by]") unless input[:last_modified_by].nil?
        MetadataProperties.validate!(input[:metadata_properties], context: "#{context}[:metadata_properties]") unless input[:metadata_properties].nil?
        Hearth::Validator.validate!(input[:lineage_group_arn], ::String, context: "#{context}[:lineage_group_arn]")
      end
    end

    class DescribeAutoMLJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAutoMLJobInput, context: context)
        Hearth::Validator.validate!(input[:auto_ml_job_name], ::String, context: "#{context}[:auto_ml_job_name]")
      end
    end

    class DescribeAutoMLJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAutoMLJobOutput, context: context)
        Hearth::Validator.validate!(input[:auto_ml_job_name], ::String, context: "#{context}[:auto_ml_job_name]")
        Hearth::Validator.validate!(input[:auto_ml_job_arn], ::String, context: "#{context}[:auto_ml_job_arn]")
        AutoMLInputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        AutoMLOutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        AutoMLJobObjective.validate!(input[:auto_ml_job_objective], context: "#{context}[:auto_ml_job_objective]") unless input[:auto_ml_job_objective].nil?
        Hearth::Validator.validate!(input[:problem_type], ::String, context: "#{context}[:problem_type]")
        AutoMLJobConfig.validate!(input[:auto_ml_job_config], context: "#{context}[:auto_ml_job_config]") unless input[:auto_ml_job_config].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        AutoMLPartialFailureReasons.validate!(input[:partial_failure_reasons], context: "#{context}[:partial_failure_reasons]") unless input[:partial_failure_reasons].nil?
        AutoMLCandidate.validate!(input[:best_candidate], context: "#{context}[:best_candidate]") unless input[:best_candidate].nil?
        Hearth::Validator.validate!(input[:auto_ml_job_status], ::String, context: "#{context}[:auto_ml_job_status]")
        Hearth::Validator.validate!(input[:auto_ml_job_secondary_status], ::String, context: "#{context}[:auto_ml_job_secondary_status]")
        Hearth::Validator.validate!(input[:generate_candidate_definitions_only], ::TrueClass, ::FalseClass, context: "#{context}[:generate_candidate_definitions_only]")
        AutoMLJobArtifacts.validate!(input[:auto_ml_job_artifacts], context: "#{context}[:auto_ml_job_artifacts]") unless input[:auto_ml_job_artifacts].nil?
        ResolvedAttributes.validate!(input[:resolved_attributes], context: "#{context}[:resolved_attributes]") unless input[:resolved_attributes].nil?
        ModelDeployConfig.validate!(input[:model_deploy_config], context: "#{context}[:model_deploy_config]") unless input[:model_deploy_config].nil?
        ModelDeployResult.validate!(input[:model_deploy_result], context: "#{context}[:model_deploy_result]") unless input[:model_deploy_result].nil?
      end
    end

    class DescribeCodeRepositoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCodeRepositoryInput, context: context)
        Hearth::Validator.validate!(input[:code_repository_name], ::String, context: "#{context}[:code_repository_name]")
      end
    end

    class DescribeCodeRepositoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCodeRepositoryOutput, context: context)
        Hearth::Validator.validate!(input[:code_repository_name], ::String, context: "#{context}[:code_repository_name]")
        Hearth::Validator.validate!(input[:code_repository_arn], ::String, context: "#{context}[:code_repository_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        GitConfig.validate!(input[:git_config], context: "#{context}[:git_config]") unless input[:git_config].nil?
      end
    end

    class DescribeCompilationJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCompilationJobInput, context: context)
        Hearth::Validator.validate!(input[:compilation_job_name], ::String, context: "#{context}[:compilation_job_name]")
      end
    end

    class DescribeCompilationJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCompilationJobOutput, context: context)
        Hearth::Validator.validate!(input[:compilation_job_name], ::String, context: "#{context}[:compilation_job_name]")
        Hearth::Validator.validate!(input[:compilation_job_arn], ::String, context: "#{context}[:compilation_job_arn]")
        Hearth::Validator.validate!(input[:compilation_job_status], ::String, context: "#{context}[:compilation_job_status]")
        Hearth::Validator.validate!(input[:compilation_start_time], ::Time, context: "#{context}[:compilation_start_time]")
        Hearth::Validator.validate!(input[:compilation_end_time], ::Time, context: "#{context}[:compilation_end_time]")
        StoppingCondition.validate!(input[:stopping_condition], context: "#{context}[:stopping_condition]") unless input[:stopping_condition].nil?
        Hearth::Validator.validate!(input[:inference_image], ::String, context: "#{context}[:inference_image]")
        Hearth::Validator.validate!(input[:model_package_version_arn], ::String, context: "#{context}[:model_package_version_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        ModelArtifacts.validate!(input[:model_artifacts], context: "#{context}[:model_artifacts]") unless input[:model_artifacts].nil?
        ModelDigests.validate!(input[:model_digests], context: "#{context}[:model_digests]") unless input[:model_digests].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        InputConfig.validate!(input[:input_config], context: "#{context}[:input_config]") unless input[:input_config].nil?
        OutputConfig.validate!(input[:output_config], context: "#{context}[:output_config]") unless input[:output_config].nil?
        NeoVpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
      end
    end

    class DescribeContextInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeContextInput, context: context)
        Hearth::Validator.validate!(input[:context_name], ::String, context: "#{context}[:context_name]")
      end
    end

    class DescribeContextOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeContextOutput, context: context)
        Hearth::Validator.validate!(input[:context_name], ::String, context: "#{context}[:context_name]")
        Hearth::Validator.validate!(input[:context_arn], ::String, context: "#{context}[:context_arn]")
        ContextSource.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        Hearth::Validator.validate!(input[:context_type], ::String, context: "#{context}[:context_type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        LineageEntityParameters.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        UserContext.validate!(input[:created_by], context: "#{context}[:created_by]") unless input[:created_by].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        UserContext.validate!(input[:last_modified_by], context: "#{context}[:last_modified_by]") unless input[:last_modified_by].nil?
        Hearth::Validator.validate!(input[:lineage_group_arn], ::String, context: "#{context}[:lineage_group_arn]")
      end
    end

    class DescribeDataQualityJobDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDataQualityJobDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:job_definition_name], ::String, context: "#{context}[:job_definition_name]")
      end
    end

    class DescribeDataQualityJobDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDataQualityJobDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:job_definition_arn], ::String, context: "#{context}[:job_definition_arn]")
        Hearth::Validator.validate!(input[:job_definition_name], ::String, context: "#{context}[:job_definition_name]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        DataQualityBaselineConfig.validate!(input[:data_quality_baseline_config], context: "#{context}[:data_quality_baseline_config]") unless input[:data_quality_baseline_config].nil?
        DataQualityAppSpecification.validate!(input[:data_quality_app_specification], context: "#{context}[:data_quality_app_specification]") unless input[:data_quality_app_specification].nil?
        DataQualityJobInput.validate!(input[:data_quality_job_input], context: "#{context}[:data_quality_job_input]") unless input[:data_quality_job_input].nil?
        MonitoringOutputConfig.validate!(input[:data_quality_job_output_config], context: "#{context}[:data_quality_job_output_config]") unless input[:data_quality_job_output_config].nil?
        MonitoringResources.validate!(input[:job_resources], context: "#{context}[:job_resources]") unless input[:job_resources].nil?
        MonitoringNetworkConfig.validate!(input[:network_config], context: "#{context}[:network_config]") unless input[:network_config].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        MonitoringStoppingCondition.validate!(input[:stopping_condition], context: "#{context}[:stopping_condition]") unless input[:stopping_condition].nil?
      end
    end

    class DescribeDeviceFleetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDeviceFleetInput, context: context)
        Hearth::Validator.validate!(input[:device_fleet_name], ::String, context: "#{context}[:device_fleet_name]")
      end
    end

    class DescribeDeviceFleetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDeviceFleetOutput, context: context)
        Hearth::Validator.validate!(input[:device_fleet_name], ::String, context: "#{context}[:device_fleet_name]")
        Hearth::Validator.validate!(input[:device_fleet_arn], ::String, context: "#{context}[:device_fleet_arn]")
        EdgeOutputConfig.validate!(input[:output_config], context: "#{context}[:output_config]") unless input[:output_config].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:iot_role_alias], ::String, context: "#{context}[:iot_role_alias]")
      end
    end

    class DescribeDeviceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDeviceInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        Hearth::Validator.validate!(input[:device_fleet_name], ::String, context: "#{context}[:device_fleet_name]")
      end
    end

    class DescribeDeviceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDeviceOutput, context: context)
        Hearth::Validator.validate!(input[:device_arn], ::String, context: "#{context}[:device_arn]")
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:device_fleet_name], ::String, context: "#{context}[:device_fleet_name]")
        Hearth::Validator.validate!(input[:iot_thing_name], ::String, context: "#{context}[:iot_thing_name]")
        Hearth::Validator.validate!(input[:registration_time], ::Time, context: "#{context}[:registration_time]")
        Hearth::Validator.validate!(input[:latest_heartbeat], ::Time, context: "#{context}[:latest_heartbeat]")
        EdgeModels.validate!(input[:models], context: "#{context}[:models]") unless input[:models].nil?
        Hearth::Validator.validate!(input[:max_models], ::Integer, context: "#{context}[:max_models]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:agent_version], ::String, context: "#{context}[:agent_version]")
      end
    end

    class DescribeDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
      end
    end

    class DescribeDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDomainOutput, context: context)
        Hearth::Validator.validate!(input[:domain_arn], ::String, context: "#{context}[:domain_arn]")
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:home_efs_file_system_id], ::String, context: "#{context}[:home_efs_file_system_id]")
        Hearth::Validator.validate!(input[:single_sign_on_managed_application_instance_id], ::String, context: "#{context}[:single_sign_on_managed_application_instance_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:auth_mode], ::String, context: "#{context}[:auth_mode]")
        UserSettings.validate!(input[:default_user_settings], context: "#{context}[:default_user_settings]") unless input[:default_user_settings].nil?
        Hearth::Validator.validate!(input[:app_network_access_type], ::String, context: "#{context}[:app_network_access_type]")
        Hearth::Validator.validate!(input[:home_efs_file_system_kms_key_id], ::String, context: "#{context}[:home_efs_file_system_kms_key_id]")
        Subnets.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        DomainSettings.validate!(input[:domain_settings], context: "#{context}[:domain_settings]") unless input[:domain_settings].nil?
        Hearth::Validator.validate!(input[:app_security_group_management], ::String, context: "#{context}[:app_security_group_management]")
        Hearth::Validator.validate!(input[:security_group_id_for_domain_boundary], ::String, context: "#{context}[:security_group_id_for_domain_boundary]")
      end
    end

    class DescribeEdgePackagingJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEdgePackagingJobInput, context: context)
        Hearth::Validator.validate!(input[:edge_packaging_job_name], ::String, context: "#{context}[:edge_packaging_job_name]")
      end
    end

    class DescribeEdgePackagingJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEdgePackagingJobOutput, context: context)
        Hearth::Validator.validate!(input[:edge_packaging_job_arn], ::String, context: "#{context}[:edge_packaging_job_arn]")
        Hearth::Validator.validate!(input[:edge_packaging_job_name], ::String, context: "#{context}[:edge_packaging_job_name]")
        Hearth::Validator.validate!(input[:compilation_job_name], ::String, context: "#{context}[:compilation_job_name]")
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
        Hearth::Validator.validate!(input[:model_version], ::String, context: "#{context}[:model_version]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        EdgeOutputConfig.validate!(input[:output_config], context: "#{context}[:output_config]") unless input[:output_config].nil?
        Hearth::Validator.validate!(input[:resource_key], ::String, context: "#{context}[:resource_key]")
        Hearth::Validator.validate!(input[:edge_packaging_job_status], ::String, context: "#{context}[:edge_packaging_job_status]")
        Hearth::Validator.validate!(input[:edge_packaging_job_status_message], ::String, context: "#{context}[:edge_packaging_job_status_message]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:model_artifact], ::String, context: "#{context}[:model_artifact]")
        Hearth::Validator.validate!(input[:model_signature], ::String, context: "#{context}[:model_signature]")
        EdgePresetDeploymentOutput.validate!(input[:preset_deployment_output], context: "#{context}[:preset_deployment_output]") unless input[:preset_deployment_output].nil?
      end
    end

    class DescribeEndpointConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEndpointConfigInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_config_name], ::String, context: "#{context}[:endpoint_config_name]")
      end
    end

    class DescribeEndpointConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEndpointConfigOutput, context: context)
        Hearth::Validator.validate!(input[:endpoint_config_name], ::String, context: "#{context}[:endpoint_config_name]")
        Hearth::Validator.validate!(input[:endpoint_config_arn], ::String, context: "#{context}[:endpoint_config_arn]")
        ProductionVariantList.validate!(input[:production_variants], context: "#{context}[:production_variants]") unless input[:production_variants].nil?
        DataCaptureConfig.validate!(input[:data_capture_config], context: "#{context}[:data_capture_config]") unless input[:data_capture_config].nil?
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        AsyncInferenceConfig.validate!(input[:async_inference_config], context: "#{context}[:async_inference_config]") unless input[:async_inference_config].nil?
      end
    end

    class DescribeEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEndpointInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
      end
    end

    class DescribeEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEndpointOutput, context: context)
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
        Hearth::Validator.validate!(input[:endpoint_arn], ::String, context: "#{context}[:endpoint_arn]")
        Hearth::Validator.validate!(input[:endpoint_config_name], ::String, context: "#{context}[:endpoint_config_name]")
        ProductionVariantSummaryList.validate!(input[:production_variants], context: "#{context}[:production_variants]") unless input[:production_variants].nil?
        DataCaptureConfigSummary.validate!(input[:data_capture_config], context: "#{context}[:data_capture_config]") unless input[:data_capture_config].nil?
        Hearth::Validator.validate!(input[:endpoint_status], ::String, context: "#{context}[:endpoint_status]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        DeploymentConfig.validate!(input[:last_deployment_config], context: "#{context}[:last_deployment_config]") unless input[:last_deployment_config].nil?
        AsyncInferenceConfig.validate!(input[:async_inference_config], context: "#{context}[:async_inference_config]") unless input[:async_inference_config].nil?
        PendingDeploymentSummary.validate!(input[:pending_deployment_summary], context: "#{context}[:pending_deployment_summary]") unless input[:pending_deployment_summary].nil?
      end
    end

    class DescribeExperimentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeExperimentInput, context: context)
        Hearth::Validator.validate!(input[:experiment_name], ::String, context: "#{context}[:experiment_name]")
      end
    end

    class DescribeExperimentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeExperimentOutput, context: context)
        Hearth::Validator.validate!(input[:experiment_name], ::String, context: "#{context}[:experiment_name]")
        Hearth::Validator.validate!(input[:experiment_arn], ::String, context: "#{context}[:experiment_arn]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        ExperimentSource.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        UserContext.validate!(input[:created_by], context: "#{context}[:created_by]") unless input[:created_by].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        UserContext.validate!(input[:last_modified_by], context: "#{context}[:last_modified_by]") unless input[:last_modified_by].nil?
      end
    end

    class DescribeFeatureGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFeatureGroupInput, context: context)
        Hearth::Validator.validate!(input[:feature_group_name], ::String, context: "#{context}[:feature_group_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeFeatureGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFeatureGroupOutput, context: context)
        Hearth::Validator.validate!(input[:feature_group_arn], ::String, context: "#{context}[:feature_group_arn]")
        Hearth::Validator.validate!(input[:feature_group_name], ::String, context: "#{context}[:feature_group_name]")
        Hearth::Validator.validate!(input[:record_identifier_feature_name], ::String, context: "#{context}[:record_identifier_feature_name]")
        Hearth::Validator.validate!(input[:event_time_feature_name], ::String, context: "#{context}[:event_time_feature_name]")
        FeatureDefinitions.validate!(input[:feature_definitions], context: "#{context}[:feature_definitions]") unless input[:feature_definitions].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        OnlineStoreConfig.validate!(input[:online_store_config], context: "#{context}[:online_store_config]") unless input[:online_store_config].nil?
        OfflineStoreConfig.validate!(input[:offline_store_config], context: "#{context}[:offline_store_config]") unless input[:offline_store_config].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:feature_group_status], ::String, context: "#{context}[:feature_group_status]")
        OfflineStoreStatus.validate!(input[:offline_store_status], context: "#{context}[:offline_store_status]") unless input[:offline_store_status].nil?
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeFlowDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFlowDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:flow_definition_name], ::String, context: "#{context}[:flow_definition_name]")
      end
    end

    class DescribeFlowDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFlowDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:flow_definition_arn], ::String, context: "#{context}[:flow_definition_arn]")
        Hearth::Validator.validate!(input[:flow_definition_name], ::String, context: "#{context}[:flow_definition_name]")
        Hearth::Validator.validate!(input[:flow_definition_status], ::String, context: "#{context}[:flow_definition_status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        HumanLoopRequestSource.validate!(input[:human_loop_request_source], context: "#{context}[:human_loop_request_source]") unless input[:human_loop_request_source].nil?
        HumanLoopActivationConfig.validate!(input[:human_loop_activation_config], context: "#{context}[:human_loop_activation_config]") unless input[:human_loop_activation_config].nil?
        HumanLoopConfig.validate!(input[:human_loop_config], context: "#{context}[:human_loop_config]") unless input[:human_loop_config].nil?
        FlowDefinitionOutputConfig.validate!(input[:output_config], context: "#{context}[:output_config]") unless input[:output_config].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class DescribeHumanTaskUiInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeHumanTaskUiInput, context: context)
        Hearth::Validator.validate!(input[:human_task_ui_name], ::String, context: "#{context}[:human_task_ui_name]")
      end
    end

    class DescribeHumanTaskUiOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeHumanTaskUiOutput, context: context)
        Hearth::Validator.validate!(input[:human_task_ui_arn], ::String, context: "#{context}[:human_task_ui_arn]")
        Hearth::Validator.validate!(input[:human_task_ui_name], ::String, context: "#{context}[:human_task_ui_name]")
        Hearth::Validator.validate!(input[:human_task_ui_status], ::String, context: "#{context}[:human_task_ui_status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        UiTemplateInfo.validate!(input[:ui_template], context: "#{context}[:ui_template]") unless input[:ui_template].nil?
      end
    end

    class DescribeHyperParameterTuningJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeHyperParameterTuningJobInput, context: context)
        Hearth::Validator.validate!(input[:hyper_parameter_tuning_job_name], ::String, context: "#{context}[:hyper_parameter_tuning_job_name]")
      end
    end

    class DescribeHyperParameterTuningJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeHyperParameterTuningJobOutput, context: context)
        Hearth::Validator.validate!(input[:hyper_parameter_tuning_job_name], ::String, context: "#{context}[:hyper_parameter_tuning_job_name]")
        Hearth::Validator.validate!(input[:hyper_parameter_tuning_job_arn], ::String, context: "#{context}[:hyper_parameter_tuning_job_arn]")
        HyperParameterTuningJobConfig.validate!(input[:hyper_parameter_tuning_job_config], context: "#{context}[:hyper_parameter_tuning_job_config]") unless input[:hyper_parameter_tuning_job_config].nil?
        HyperParameterTrainingJobDefinition.validate!(input[:training_job_definition], context: "#{context}[:training_job_definition]") unless input[:training_job_definition].nil?
        HyperParameterTrainingJobDefinitions.validate!(input[:training_job_definitions], context: "#{context}[:training_job_definitions]") unless input[:training_job_definitions].nil?
        Hearth::Validator.validate!(input[:hyper_parameter_tuning_job_status], ::String, context: "#{context}[:hyper_parameter_tuning_job_status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:hyper_parameter_tuning_end_time], ::Time, context: "#{context}[:hyper_parameter_tuning_end_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        TrainingJobStatusCounters.validate!(input[:training_job_status_counters], context: "#{context}[:training_job_status_counters]") unless input[:training_job_status_counters].nil?
        ObjectiveStatusCounters.validate!(input[:objective_status_counters], context: "#{context}[:objective_status_counters]") unless input[:objective_status_counters].nil?
        HyperParameterTrainingJobSummary.validate!(input[:best_training_job], context: "#{context}[:best_training_job]") unless input[:best_training_job].nil?
        HyperParameterTrainingJobSummary.validate!(input[:overall_best_training_job], context: "#{context}[:overall_best_training_job]") unless input[:overall_best_training_job].nil?
        HyperParameterTuningJobWarmStartConfig.validate!(input[:warm_start_config], context: "#{context}[:warm_start_config]") unless input[:warm_start_config].nil?
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class DescribeImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeImageInput, context: context)
        Hearth::Validator.validate!(input[:image_name], ::String, context: "#{context}[:image_name]")
      end
    end

    class DescribeImageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeImageOutput, context: context)
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:image_arn], ::String, context: "#{context}[:image_arn]")
        Hearth::Validator.validate!(input[:image_name], ::String, context: "#{context}[:image_name]")
        Hearth::Validator.validate!(input[:image_status], ::String, context: "#{context}[:image_status]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class DescribeImageVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeImageVersionInput, context: context)
        Hearth::Validator.validate!(input[:image_name], ::String, context: "#{context}[:image_name]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
      end
    end

    class DescribeImageVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeImageVersionOutput, context: context)
        Hearth::Validator.validate!(input[:base_image], ::String, context: "#{context}[:base_image]")
        Hearth::Validator.validate!(input[:container_image], ::String, context: "#{context}[:container_image]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:image_arn], ::String, context: "#{context}[:image_arn]")
        Hearth::Validator.validate!(input[:image_version_arn], ::String, context: "#{context}[:image_version_arn]")
        Hearth::Validator.validate!(input[:image_version_status], ::String, context: "#{context}[:image_version_status]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
      end
    end

    class DescribeInferenceRecommendationsJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInferenceRecommendationsJobInput, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
      end
    end

    class DescribeInferenceRecommendationsJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInferenceRecommendationsJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_description], ::String, context: "#{context}[:job_description]")
        Hearth::Validator.validate!(input[:job_type], ::String, context: "#{context}[:job_type]")
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:completion_time], ::Time, context: "#{context}[:completion_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        RecommendationJobInputConfig.validate!(input[:input_config], context: "#{context}[:input_config]") unless input[:input_config].nil?
        RecommendationJobStoppingConditions.validate!(input[:stopping_conditions], context: "#{context}[:stopping_conditions]") unless input[:stopping_conditions].nil?
        InferenceRecommendations.validate!(input[:inference_recommendations], context: "#{context}[:inference_recommendations]") unless input[:inference_recommendations].nil?
      end
    end

    class DescribeLabelingJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLabelingJobInput, context: context)
        Hearth::Validator.validate!(input[:labeling_job_name], ::String, context: "#{context}[:labeling_job_name]")
      end
    end

    class DescribeLabelingJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLabelingJobOutput, context: context)
        Hearth::Validator.validate!(input[:labeling_job_status], ::String, context: "#{context}[:labeling_job_status]")
        LabelCounters.validate!(input[:label_counters], context: "#{context}[:label_counters]") unless input[:label_counters].nil?
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:job_reference_code], ::String, context: "#{context}[:job_reference_code]")
        Hearth::Validator.validate!(input[:labeling_job_name], ::String, context: "#{context}[:labeling_job_name]")
        Hearth::Validator.validate!(input[:labeling_job_arn], ::String, context: "#{context}[:labeling_job_arn]")
        Hearth::Validator.validate!(input[:label_attribute_name], ::String, context: "#{context}[:label_attribute_name]")
        LabelingJobInputConfig.validate!(input[:input_config], context: "#{context}[:input_config]") unless input[:input_config].nil?
        LabelingJobOutputConfig.validate!(input[:output_config], context: "#{context}[:output_config]") unless input[:output_config].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:label_category_config_s3_uri], ::String, context: "#{context}[:label_category_config_s3_uri]")
        LabelingJobStoppingConditions.validate!(input[:stopping_conditions], context: "#{context}[:stopping_conditions]") unless input[:stopping_conditions].nil?
        LabelingJobAlgorithmsConfig.validate!(input[:labeling_job_algorithms_config], context: "#{context}[:labeling_job_algorithms_config]") unless input[:labeling_job_algorithms_config].nil?
        HumanTaskConfig.validate!(input[:human_task_config], context: "#{context}[:human_task_config]") unless input[:human_task_config].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        LabelingJobOutput.validate!(input[:labeling_job_output], context: "#{context}[:labeling_job_output]") unless input[:labeling_job_output].nil?
      end
    end

    class DescribeLineageGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLineageGroupInput, context: context)
        Hearth::Validator.validate!(input[:lineage_group_name], ::String, context: "#{context}[:lineage_group_name]")
      end
    end

    class DescribeLineageGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLineageGroupOutput, context: context)
        Hearth::Validator.validate!(input[:lineage_group_name], ::String, context: "#{context}[:lineage_group_name]")
        Hearth::Validator.validate!(input[:lineage_group_arn], ::String, context: "#{context}[:lineage_group_arn]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        UserContext.validate!(input[:created_by], context: "#{context}[:created_by]") unless input[:created_by].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        UserContext.validate!(input[:last_modified_by], context: "#{context}[:last_modified_by]") unless input[:last_modified_by].nil?
      end
    end

    class DescribeModelBiasJobDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeModelBiasJobDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:job_definition_name], ::String, context: "#{context}[:job_definition_name]")
      end
    end

    class DescribeModelBiasJobDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeModelBiasJobDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:job_definition_arn], ::String, context: "#{context}[:job_definition_arn]")
        Hearth::Validator.validate!(input[:job_definition_name], ::String, context: "#{context}[:job_definition_name]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        ModelBiasBaselineConfig.validate!(input[:model_bias_baseline_config], context: "#{context}[:model_bias_baseline_config]") unless input[:model_bias_baseline_config].nil?
        ModelBiasAppSpecification.validate!(input[:model_bias_app_specification], context: "#{context}[:model_bias_app_specification]") unless input[:model_bias_app_specification].nil?
        ModelBiasJobInput.validate!(input[:model_bias_job_input], context: "#{context}[:model_bias_job_input]") unless input[:model_bias_job_input].nil?
        MonitoringOutputConfig.validate!(input[:model_bias_job_output_config], context: "#{context}[:model_bias_job_output_config]") unless input[:model_bias_job_output_config].nil?
        MonitoringResources.validate!(input[:job_resources], context: "#{context}[:job_resources]") unless input[:job_resources].nil?
        MonitoringNetworkConfig.validate!(input[:network_config], context: "#{context}[:network_config]") unless input[:network_config].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        MonitoringStoppingCondition.validate!(input[:stopping_condition], context: "#{context}[:stopping_condition]") unless input[:stopping_condition].nil?
      end
    end

    class DescribeModelExplainabilityJobDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeModelExplainabilityJobDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:job_definition_name], ::String, context: "#{context}[:job_definition_name]")
      end
    end

    class DescribeModelExplainabilityJobDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeModelExplainabilityJobDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:job_definition_arn], ::String, context: "#{context}[:job_definition_arn]")
        Hearth::Validator.validate!(input[:job_definition_name], ::String, context: "#{context}[:job_definition_name]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        ModelExplainabilityBaselineConfig.validate!(input[:model_explainability_baseline_config], context: "#{context}[:model_explainability_baseline_config]") unless input[:model_explainability_baseline_config].nil?
        ModelExplainabilityAppSpecification.validate!(input[:model_explainability_app_specification], context: "#{context}[:model_explainability_app_specification]") unless input[:model_explainability_app_specification].nil?
        ModelExplainabilityJobInput.validate!(input[:model_explainability_job_input], context: "#{context}[:model_explainability_job_input]") unless input[:model_explainability_job_input].nil?
        MonitoringOutputConfig.validate!(input[:model_explainability_job_output_config], context: "#{context}[:model_explainability_job_output_config]") unless input[:model_explainability_job_output_config].nil?
        MonitoringResources.validate!(input[:job_resources], context: "#{context}[:job_resources]") unless input[:job_resources].nil?
        MonitoringNetworkConfig.validate!(input[:network_config], context: "#{context}[:network_config]") unless input[:network_config].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        MonitoringStoppingCondition.validate!(input[:stopping_condition], context: "#{context}[:stopping_condition]") unless input[:stopping_condition].nil?
      end
    end

    class DescribeModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeModelInput, context: context)
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
      end
    end

    class DescribeModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeModelOutput, context: context)
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
        ContainerDefinition.validate!(input[:primary_container], context: "#{context}[:primary_container]") unless input[:primary_container].nil?
        ContainerDefinitionList.validate!(input[:containers], context: "#{context}[:containers]") unless input[:containers].nil?
        InferenceExecutionConfig.validate!(input[:inference_execution_config], context: "#{context}[:inference_execution_config]") unless input[:inference_execution_config].nil?
        Hearth::Validator.validate!(input[:execution_role_arn], ::String, context: "#{context}[:execution_role_arn]")
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:model_arn], ::String, context: "#{context}[:model_arn]")
        Hearth::Validator.validate!(input[:enable_network_isolation], ::TrueClass, ::FalseClass, context: "#{context}[:enable_network_isolation]")
      end
    end

    class DescribeModelPackageGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeModelPackageGroupInput, context: context)
        Hearth::Validator.validate!(input[:model_package_group_name], ::String, context: "#{context}[:model_package_group_name]")
      end
    end

    class DescribeModelPackageGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeModelPackageGroupOutput, context: context)
        Hearth::Validator.validate!(input[:model_package_group_name], ::String, context: "#{context}[:model_package_group_name]")
        Hearth::Validator.validate!(input[:model_package_group_arn], ::String, context: "#{context}[:model_package_group_arn]")
        Hearth::Validator.validate!(input[:model_package_group_description], ::String, context: "#{context}[:model_package_group_description]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        UserContext.validate!(input[:created_by], context: "#{context}[:created_by]") unless input[:created_by].nil?
        Hearth::Validator.validate!(input[:model_package_group_status], ::String, context: "#{context}[:model_package_group_status]")
      end
    end

    class DescribeModelPackageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeModelPackageInput, context: context)
        Hearth::Validator.validate!(input[:model_package_name], ::String, context: "#{context}[:model_package_name]")
      end
    end

    class DescribeModelPackageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeModelPackageOutput, context: context)
        Hearth::Validator.validate!(input[:model_package_name], ::String, context: "#{context}[:model_package_name]")
        Hearth::Validator.validate!(input[:model_package_group_name], ::String, context: "#{context}[:model_package_group_name]")
        Hearth::Validator.validate!(input[:model_package_version], ::Integer, context: "#{context}[:model_package_version]")
        Hearth::Validator.validate!(input[:model_package_arn], ::String, context: "#{context}[:model_package_arn]")
        Hearth::Validator.validate!(input[:model_package_description], ::String, context: "#{context}[:model_package_description]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        InferenceSpecification.validate!(input[:inference_specification], context: "#{context}[:inference_specification]") unless input[:inference_specification].nil?
        SourceAlgorithmSpecification.validate!(input[:source_algorithm_specification], context: "#{context}[:source_algorithm_specification]") unless input[:source_algorithm_specification].nil?
        ModelPackageValidationSpecification.validate!(input[:validation_specification], context: "#{context}[:validation_specification]") unless input[:validation_specification].nil?
        Hearth::Validator.validate!(input[:model_package_status], ::String, context: "#{context}[:model_package_status]")
        ModelPackageStatusDetails.validate!(input[:model_package_status_details], context: "#{context}[:model_package_status_details]") unless input[:model_package_status_details].nil?
        Hearth::Validator.validate!(input[:certify_for_marketplace], ::TrueClass, ::FalseClass, context: "#{context}[:certify_for_marketplace]")
        Hearth::Validator.validate!(input[:model_approval_status], ::String, context: "#{context}[:model_approval_status]")
        UserContext.validate!(input[:created_by], context: "#{context}[:created_by]") unless input[:created_by].nil?
        MetadataProperties.validate!(input[:metadata_properties], context: "#{context}[:metadata_properties]") unless input[:metadata_properties].nil?
        ModelMetrics.validate!(input[:model_metrics], context: "#{context}[:model_metrics]") unless input[:model_metrics].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        UserContext.validate!(input[:last_modified_by], context: "#{context}[:last_modified_by]") unless input[:last_modified_by].nil?
        Hearth::Validator.validate!(input[:approval_description], ::String, context: "#{context}[:approval_description]")
        CustomerMetadataMap.validate!(input[:customer_metadata_properties], context: "#{context}[:customer_metadata_properties]") unless input[:customer_metadata_properties].nil?
        DriftCheckBaselines.validate!(input[:drift_check_baselines], context: "#{context}[:drift_check_baselines]") unless input[:drift_check_baselines].nil?
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:task], ::String, context: "#{context}[:task]")
        Hearth::Validator.validate!(input[:sample_payload_url], ::String, context: "#{context}[:sample_payload_url]")
        AdditionalInferenceSpecifications.validate!(input[:additional_inference_specifications], context: "#{context}[:additional_inference_specifications]") unless input[:additional_inference_specifications].nil?
      end
    end

    class DescribeModelQualityJobDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeModelQualityJobDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:job_definition_name], ::String, context: "#{context}[:job_definition_name]")
      end
    end

    class DescribeModelQualityJobDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeModelQualityJobDefinitionOutput, context: context)
        Hearth::Validator.validate!(input[:job_definition_arn], ::String, context: "#{context}[:job_definition_arn]")
        Hearth::Validator.validate!(input[:job_definition_name], ::String, context: "#{context}[:job_definition_name]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        ModelQualityBaselineConfig.validate!(input[:model_quality_baseline_config], context: "#{context}[:model_quality_baseline_config]") unless input[:model_quality_baseline_config].nil?
        ModelQualityAppSpecification.validate!(input[:model_quality_app_specification], context: "#{context}[:model_quality_app_specification]") unless input[:model_quality_app_specification].nil?
        ModelQualityJobInput.validate!(input[:model_quality_job_input], context: "#{context}[:model_quality_job_input]") unless input[:model_quality_job_input].nil?
        MonitoringOutputConfig.validate!(input[:model_quality_job_output_config], context: "#{context}[:model_quality_job_output_config]") unless input[:model_quality_job_output_config].nil?
        MonitoringResources.validate!(input[:job_resources], context: "#{context}[:job_resources]") unless input[:job_resources].nil?
        MonitoringNetworkConfig.validate!(input[:network_config], context: "#{context}[:network_config]") unless input[:network_config].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        MonitoringStoppingCondition.validate!(input[:stopping_condition], context: "#{context}[:stopping_condition]") unless input[:stopping_condition].nil?
      end
    end

    class DescribeMonitoringScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMonitoringScheduleInput, context: context)
        Hearth::Validator.validate!(input[:monitoring_schedule_name], ::String, context: "#{context}[:monitoring_schedule_name]")
      end
    end

    class DescribeMonitoringScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMonitoringScheduleOutput, context: context)
        Hearth::Validator.validate!(input[:monitoring_schedule_arn], ::String, context: "#{context}[:monitoring_schedule_arn]")
        Hearth::Validator.validate!(input[:monitoring_schedule_name], ::String, context: "#{context}[:monitoring_schedule_name]")
        Hearth::Validator.validate!(input[:monitoring_schedule_status], ::String, context: "#{context}[:monitoring_schedule_status]")
        Hearth::Validator.validate!(input[:monitoring_type], ::String, context: "#{context}[:monitoring_type]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        MonitoringScheduleConfig.validate!(input[:monitoring_schedule_config], context: "#{context}[:monitoring_schedule_config]") unless input[:monitoring_schedule_config].nil?
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
        MonitoringExecutionSummary.validate!(input[:last_monitoring_execution_summary], context: "#{context}[:last_monitoring_execution_summary]") unless input[:last_monitoring_execution_summary].nil?
      end
    end

    class DescribeNotebookInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNotebookInstanceInput, context: context)
        Hearth::Validator.validate!(input[:notebook_instance_name], ::String, context: "#{context}[:notebook_instance_name]")
      end
    end

    class DescribeNotebookInstanceLifecycleConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNotebookInstanceLifecycleConfigInput, context: context)
        Hearth::Validator.validate!(input[:notebook_instance_lifecycle_config_name], ::String, context: "#{context}[:notebook_instance_lifecycle_config_name]")
      end
    end

    class DescribeNotebookInstanceLifecycleConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNotebookInstanceLifecycleConfigOutput, context: context)
        Hearth::Validator.validate!(input[:notebook_instance_lifecycle_config_arn], ::String, context: "#{context}[:notebook_instance_lifecycle_config_arn]")
        Hearth::Validator.validate!(input[:notebook_instance_lifecycle_config_name], ::String, context: "#{context}[:notebook_instance_lifecycle_config_name]")
        NotebookInstanceLifecycleConfigList.validate!(input[:on_create], context: "#{context}[:on_create]") unless input[:on_create].nil?
        NotebookInstanceLifecycleConfigList.validate!(input[:on_start], context: "#{context}[:on_start]") unless input[:on_start].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class DescribeNotebookInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNotebookInstanceOutput, context: context)
        Hearth::Validator.validate!(input[:notebook_instance_arn], ::String, context: "#{context}[:notebook_instance_arn]")
        Hearth::Validator.validate!(input[:notebook_instance_name], ::String, context: "#{context}[:notebook_instance_name]")
        Hearth::Validator.validate!(input[:notebook_instance_status], ::String, context: "#{context}[:notebook_instance_status]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        SecurityGroupIds.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:network_interface_id], ::String, context: "#{context}[:network_interface_id]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:notebook_instance_lifecycle_config_name], ::String, context: "#{context}[:notebook_instance_lifecycle_config_name]")
        Hearth::Validator.validate!(input[:direct_internet_access], ::String, context: "#{context}[:direct_internet_access]")
        Hearth::Validator.validate!(input[:volume_size_in_gb], ::Integer, context: "#{context}[:volume_size_in_gb]")
        NotebookInstanceAcceleratorTypes.validate!(input[:accelerator_types], context: "#{context}[:accelerator_types]") unless input[:accelerator_types].nil?
        Hearth::Validator.validate!(input[:default_code_repository], ::String, context: "#{context}[:default_code_repository]")
        AdditionalCodeRepositoryNamesOrUrls.validate!(input[:additional_code_repositories], context: "#{context}[:additional_code_repositories]") unless input[:additional_code_repositories].nil?
        Hearth::Validator.validate!(input[:root_access], ::String, context: "#{context}[:root_access]")
        Hearth::Validator.validate!(input[:platform_identifier], ::String, context: "#{context}[:platform_identifier]")
        InstanceMetadataServiceConfiguration.validate!(input[:instance_metadata_service_configuration], context: "#{context}[:instance_metadata_service_configuration]") unless input[:instance_metadata_service_configuration].nil?
      end
    end

    class DescribePipelineDefinitionForExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePipelineDefinitionForExecutionInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_execution_arn], ::String, context: "#{context}[:pipeline_execution_arn]")
      end
    end

    class DescribePipelineDefinitionForExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePipelineDefinitionForExecutionOutput, context: context)
        Hearth::Validator.validate!(input[:pipeline_definition], ::String, context: "#{context}[:pipeline_definition]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class DescribePipelineExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePipelineExecutionInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_execution_arn], ::String, context: "#{context}[:pipeline_execution_arn]")
      end
    end

    class DescribePipelineExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePipelineExecutionOutput, context: context)
        Hearth::Validator.validate!(input[:pipeline_arn], ::String, context: "#{context}[:pipeline_arn]")
        Hearth::Validator.validate!(input[:pipeline_execution_arn], ::String, context: "#{context}[:pipeline_execution_arn]")
        Hearth::Validator.validate!(input[:pipeline_execution_display_name], ::String, context: "#{context}[:pipeline_execution_display_name]")
        Hearth::Validator.validate!(input[:pipeline_execution_status], ::String, context: "#{context}[:pipeline_execution_status]")
        Hearth::Validator.validate!(input[:pipeline_execution_description], ::String, context: "#{context}[:pipeline_execution_description]")
        PipelineExperimentConfig.validate!(input[:pipeline_experiment_config], context: "#{context}[:pipeline_experiment_config]") unless input[:pipeline_experiment_config].nil?
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        UserContext.validate!(input[:created_by], context: "#{context}[:created_by]") unless input[:created_by].nil?
        UserContext.validate!(input[:last_modified_by], context: "#{context}[:last_modified_by]") unless input[:last_modified_by].nil?
        ParallelismConfiguration.validate!(input[:parallelism_configuration], context: "#{context}[:parallelism_configuration]") unless input[:parallelism_configuration].nil?
      end
    end

    class DescribePipelineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePipelineInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_name], ::String, context: "#{context}[:pipeline_name]")
      end
    end

    class DescribePipelineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePipelineOutput, context: context)
        Hearth::Validator.validate!(input[:pipeline_arn], ::String, context: "#{context}[:pipeline_arn]")
        Hearth::Validator.validate!(input[:pipeline_name], ::String, context: "#{context}[:pipeline_name]")
        Hearth::Validator.validate!(input[:pipeline_display_name], ::String, context: "#{context}[:pipeline_display_name]")
        Hearth::Validator.validate!(input[:pipeline_definition], ::String, context: "#{context}[:pipeline_definition]")
        Hearth::Validator.validate!(input[:pipeline_description], ::String, context: "#{context}[:pipeline_description]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:pipeline_status], ::String, context: "#{context}[:pipeline_status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:last_run_time], ::Time, context: "#{context}[:last_run_time]")
        UserContext.validate!(input[:created_by], context: "#{context}[:created_by]") unless input[:created_by].nil?
        UserContext.validate!(input[:last_modified_by], context: "#{context}[:last_modified_by]") unless input[:last_modified_by].nil?
        ParallelismConfiguration.validate!(input[:parallelism_configuration], context: "#{context}[:parallelism_configuration]") unless input[:parallelism_configuration].nil?
      end
    end

    class DescribeProcessingJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProcessingJobInput, context: context)
        Hearth::Validator.validate!(input[:processing_job_name], ::String, context: "#{context}[:processing_job_name]")
      end
    end

    class DescribeProcessingJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProcessingJobOutput, context: context)
        ProcessingInputs.validate!(input[:processing_inputs], context: "#{context}[:processing_inputs]") unless input[:processing_inputs].nil?
        ProcessingOutputConfig.validate!(input[:processing_output_config], context: "#{context}[:processing_output_config]") unless input[:processing_output_config].nil?
        Hearth::Validator.validate!(input[:processing_job_name], ::String, context: "#{context}[:processing_job_name]")
        ProcessingResources.validate!(input[:processing_resources], context: "#{context}[:processing_resources]") unless input[:processing_resources].nil?
        ProcessingStoppingCondition.validate!(input[:stopping_condition], context: "#{context}[:stopping_condition]") unless input[:stopping_condition].nil?
        AppSpecification.validate!(input[:app_specification], context: "#{context}[:app_specification]") unless input[:app_specification].nil?
        ProcessingEnvironmentMap.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        NetworkConfig.validate!(input[:network_config], context: "#{context}[:network_config]") unless input[:network_config].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        ExperimentConfig.validate!(input[:experiment_config], context: "#{context}[:experiment_config]") unless input[:experiment_config].nil?
        Hearth::Validator.validate!(input[:processing_job_arn], ::String, context: "#{context}[:processing_job_arn]")
        Hearth::Validator.validate!(input[:processing_job_status], ::String, context: "#{context}[:processing_job_status]")
        Hearth::Validator.validate!(input[:exit_message], ::String, context: "#{context}[:exit_message]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:processing_end_time], ::Time, context: "#{context}[:processing_end_time]")
        Hearth::Validator.validate!(input[:processing_start_time], ::Time, context: "#{context}[:processing_start_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:monitoring_schedule_arn], ::String, context: "#{context}[:monitoring_schedule_arn]")
        Hearth::Validator.validate!(input[:auto_ml_job_arn], ::String, context: "#{context}[:auto_ml_job_arn]")
        Hearth::Validator.validate!(input[:training_job_arn], ::String, context: "#{context}[:training_job_arn]")
      end
    end

    class DescribeProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProjectInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
      end
    end

    class DescribeProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProjectOutput, context: context)
        Hearth::Validator.validate!(input[:project_arn], ::String, context: "#{context}[:project_arn]")
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:project_id], ::String, context: "#{context}[:project_id]")
        Hearth::Validator.validate!(input[:project_description], ::String, context: "#{context}[:project_description]")
        ServiceCatalogProvisioningDetails.validate!(input[:service_catalog_provisioning_details], context: "#{context}[:service_catalog_provisioning_details]") unless input[:service_catalog_provisioning_details].nil?
        ServiceCatalogProvisionedProductDetails.validate!(input[:service_catalog_provisioned_product_details], context: "#{context}[:service_catalog_provisioned_product_details]") unless input[:service_catalog_provisioned_product_details].nil?
        Hearth::Validator.validate!(input[:project_status], ::String, context: "#{context}[:project_status]")
        UserContext.validate!(input[:created_by], context: "#{context}[:created_by]") unless input[:created_by].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        UserContext.validate!(input[:last_modified_by], context: "#{context}[:last_modified_by]") unless input[:last_modified_by].nil?
      end
    end

    class DescribeStudioLifecycleConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStudioLifecycleConfigInput, context: context)
        Hearth::Validator.validate!(input[:studio_lifecycle_config_name], ::String, context: "#{context}[:studio_lifecycle_config_name]")
      end
    end

    class DescribeStudioLifecycleConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeStudioLifecycleConfigOutput, context: context)
        Hearth::Validator.validate!(input[:studio_lifecycle_config_arn], ::String, context: "#{context}[:studio_lifecycle_config_arn]")
        Hearth::Validator.validate!(input[:studio_lifecycle_config_name], ::String, context: "#{context}[:studio_lifecycle_config_name]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:studio_lifecycle_config_content], ::String, context: "#{context}[:studio_lifecycle_config_content]")
        Hearth::Validator.validate!(input[:studio_lifecycle_config_app_type], ::String, context: "#{context}[:studio_lifecycle_config_app_type]")
      end
    end

    class DescribeSubscribedWorkteamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSubscribedWorkteamInput, context: context)
        Hearth::Validator.validate!(input[:workteam_arn], ::String, context: "#{context}[:workteam_arn]")
      end
    end

    class DescribeSubscribedWorkteamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSubscribedWorkteamOutput, context: context)
        SubscribedWorkteam.validate!(input[:subscribed_workteam], context: "#{context}[:subscribed_workteam]") unless input[:subscribed_workteam].nil?
      end
    end

    class DescribeTrainingJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTrainingJobInput, context: context)
        Hearth::Validator.validate!(input[:training_job_name], ::String, context: "#{context}[:training_job_name]")
      end
    end

    class DescribeTrainingJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTrainingJobOutput, context: context)
        Hearth::Validator.validate!(input[:training_job_name], ::String, context: "#{context}[:training_job_name]")
        Hearth::Validator.validate!(input[:training_job_arn], ::String, context: "#{context}[:training_job_arn]")
        Hearth::Validator.validate!(input[:tuning_job_arn], ::String, context: "#{context}[:tuning_job_arn]")
        Hearth::Validator.validate!(input[:labeling_job_arn], ::String, context: "#{context}[:labeling_job_arn]")
        Hearth::Validator.validate!(input[:auto_ml_job_arn], ::String, context: "#{context}[:auto_ml_job_arn]")
        ModelArtifacts.validate!(input[:model_artifacts], context: "#{context}[:model_artifacts]") unless input[:model_artifacts].nil?
        Hearth::Validator.validate!(input[:training_job_status], ::String, context: "#{context}[:training_job_status]")
        Hearth::Validator.validate!(input[:secondary_status], ::String, context: "#{context}[:secondary_status]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        HyperParameters.validate!(input[:hyper_parameters], context: "#{context}[:hyper_parameters]") unless input[:hyper_parameters].nil?
        AlgorithmSpecification.validate!(input[:algorithm_specification], context: "#{context}[:algorithm_specification]") unless input[:algorithm_specification].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        ResourceConfig.validate!(input[:resource_config], context: "#{context}[:resource_config]") unless input[:resource_config].nil?
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        StoppingCondition.validate!(input[:stopping_condition], context: "#{context}[:stopping_condition]") unless input[:stopping_condition].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:training_start_time], ::Time, context: "#{context}[:training_start_time]")
        Hearth::Validator.validate!(input[:training_end_time], ::Time, context: "#{context}[:training_end_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        SecondaryStatusTransitions.validate!(input[:secondary_status_transitions], context: "#{context}[:secondary_status_transitions]") unless input[:secondary_status_transitions].nil?
        FinalMetricDataList.validate!(input[:final_metric_data_list], context: "#{context}[:final_metric_data_list]") unless input[:final_metric_data_list].nil?
        Hearth::Validator.validate!(input[:enable_network_isolation], ::TrueClass, ::FalseClass, context: "#{context}[:enable_network_isolation]")
        Hearth::Validator.validate!(input[:enable_inter_container_traffic_encryption], ::TrueClass, ::FalseClass, context: "#{context}[:enable_inter_container_traffic_encryption]")
        Hearth::Validator.validate!(input[:enable_managed_spot_training], ::TrueClass, ::FalseClass, context: "#{context}[:enable_managed_spot_training]")
        CheckpointConfig.validate!(input[:checkpoint_config], context: "#{context}[:checkpoint_config]") unless input[:checkpoint_config].nil?
        Hearth::Validator.validate!(input[:training_time_in_seconds], ::Integer, context: "#{context}[:training_time_in_seconds]")
        Hearth::Validator.validate!(input[:billable_time_in_seconds], ::Integer, context: "#{context}[:billable_time_in_seconds]")
        DebugHookConfig.validate!(input[:debug_hook_config], context: "#{context}[:debug_hook_config]") unless input[:debug_hook_config].nil?
        ExperimentConfig.validate!(input[:experiment_config], context: "#{context}[:experiment_config]") unless input[:experiment_config].nil?
        DebugRuleConfigurations.validate!(input[:debug_rule_configurations], context: "#{context}[:debug_rule_configurations]") unless input[:debug_rule_configurations].nil?
        TensorBoardOutputConfig.validate!(input[:tensor_board_output_config], context: "#{context}[:tensor_board_output_config]") unless input[:tensor_board_output_config].nil?
        DebugRuleEvaluationStatuses.validate!(input[:debug_rule_evaluation_statuses], context: "#{context}[:debug_rule_evaluation_statuses]") unless input[:debug_rule_evaluation_statuses].nil?
        ProfilerConfig.validate!(input[:profiler_config], context: "#{context}[:profiler_config]") unless input[:profiler_config].nil?
        ProfilerRuleConfigurations.validate!(input[:profiler_rule_configurations], context: "#{context}[:profiler_rule_configurations]") unless input[:profiler_rule_configurations].nil?
        ProfilerRuleEvaluationStatuses.validate!(input[:profiler_rule_evaluation_statuses], context: "#{context}[:profiler_rule_evaluation_statuses]") unless input[:profiler_rule_evaluation_statuses].nil?
        Hearth::Validator.validate!(input[:profiling_status], ::String, context: "#{context}[:profiling_status]")
        RetryStrategy.validate!(input[:retry_strategy], context: "#{context}[:retry_strategy]") unless input[:retry_strategy].nil?
        TrainingEnvironmentMap.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
      end
    end

    class DescribeTransformJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTransformJobInput, context: context)
        Hearth::Validator.validate!(input[:transform_job_name], ::String, context: "#{context}[:transform_job_name]")
      end
    end

    class DescribeTransformJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTransformJobOutput, context: context)
        Hearth::Validator.validate!(input[:transform_job_name], ::String, context: "#{context}[:transform_job_name]")
        Hearth::Validator.validate!(input[:transform_job_arn], ::String, context: "#{context}[:transform_job_arn]")
        Hearth::Validator.validate!(input[:transform_job_status], ::String, context: "#{context}[:transform_job_status]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
        Hearth::Validator.validate!(input[:max_concurrent_transforms], ::Integer, context: "#{context}[:max_concurrent_transforms]")
        ModelClientConfig.validate!(input[:model_client_config], context: "#{context}[:model_client_config]") unless input[:model_client_config].nil?
        Hearth::Validator.validate!(input[:max_payload_in_mb], ::Integer, context: "#{context}[:max_payload_in_mb]")
        Hearth::Validator.validate!(input[:batch_strategy], ::String, context: "#{context}[:batch_strategy]")
        TransformEnvironmentMap.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        TransformInput.validate!(input[:transform_input], context: "#{context}[:transform_input]") unless input[:transform_input].nil?
        TransformOutput.validate!(input[:transform_output], context: "#{context}[:transform_output]") unless input[:transform_output].nil?
        TransformResources.validate!(input[:transform_resources], context: "#{context}[:transform_resources]") unless input[:transform_resources].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:transform_start_time], ::Time, context: "#{context}[:transform_start_time]")
        Hearth::Validator.validate!(input[:transform_end_time], ::Time, context: "#{context}[:transform_end_time]")
        Hearth::Validator.validate!(input[:labeling_job_arn], ::String, context: "#{context}[:labeling_job_arn]")
        Hearth::Validator.validate!(input[:auto_ml_job_arn], ::String, context: "#{context}[:auto_ml_job_arn]")
        DataProcessing.validate!(input[:data_processing], context: "#{context}[:data_processing]") unless input[:data_processing].nil?
        ExperimentConfig.validate!(input[:experiment_config], context: "#{context}[:experiment_config]") unless input[:experiment_config].nil?
      end
    end

    class DescribeTrialComponentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTrialComponentInput, context: context)
        Hearth::Validator.validate!(input[:trial_component_name], ::String, context: "#{context}[:trial_component_name]")
      end
    end

    class DescribeTrialComponentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTrialComponentOutput, context: context)
        Hearth::Validator.validate!(input[:trial_component_name], ::String, context: "#{context}[:trial_component_name]")
        Hearth::Validator.validate!(input[:trial_component_arn], ::String, context: "#{context}[:trial_component_arn]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        TrialComponentSource.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        TrialComponentStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        UserContext.validate!(input[:created_by], context: "#{context}[:created_by]") unless input[:created_by].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        UserContext.validate!(input[:last_modified_by], context: "#{context}[:last_modified_by]") unless input[:last_modified_by].nil?
        TrialComponentParameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        TrialComponentArtifacts.validate!(input[:input_artifacts], context: "#{context}[:input_artifacts]") unless input[:input_artifacts].nil?
        TrialComponentArtifacts.validate!(input[:output_artifacts], context: "#{context}[:output_artifacts]") unless input[:output_artifacts].nil?
        MetadataProperties.validate!(input[:metadata_properties], context: "#{context}[:metadata_properties]") unless input[:metadata_properties].nil?
        TrialComponentMetricSummaries.validate!(input[:metrics], context: "#{context}[:metrics]") unless input[:metrics].nil?
        Hearth::Validator.validate!(input[:lineage_group_arn], ::String, context: "#{context}[:lineage_group_arn]")
      end
    end

    class DescribeTrialInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTrialInput, context: context)
        Hearth::Validator.validate!(input[:trial_name], ::String, context: "#{context}[:trial_name]")
      end
    end

    class DescribeTrialOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTrialOutput, context: context)
        Hearth::Validator.validate!(input[:trial_name], ::String, context: "#{context}[:trial_name]")
        Hearth::Validator.validate!(input[:trial_arn], ::String, context: "#{context}[:trial_arn]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:experiment_name], ::String, context: "#{context}[:experiment_name]")
        TrialSource.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        UserContext.validate!(input[:created_by], context: "#{context}[:created_by]") unless input[:created_by].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        UserContext.validate!(input[:last_modified_by], context: "#{context}[:last_modified_by]") unless input[:last_modified_by].nil?
        MetadataProperties.validate!(input[:metadata_properties], context: "#{context}[:metadata_properties]") unless input[:metadata_properties].nil?
      end
    end

    class DescribeUserProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUserProfileInput, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:user_profile_name], ::String, context: "#{context}[:user_profile_name]")
      end
    end

    class DescribeUserProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUserProfileOutput, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:user_profile_arn], ::String, context: "#{context}[:user_profile_arn]")
        Hearth::Validator.validate!(input[:user_profile_name], ::String, context: "#{context}[:user_profile_name]")
        Hearth::Validator.validate!(input[:home_efs_file_system_uid], ::String, context: "#{context}[:home_efs_file_system_uid]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:single_sign_on_user_identifier], ::String, context: "#{context}[:single_sign_on_user_identifier]")
        Hearth::Validator.validate!(input[:single_sign_on_user_value], ::String, context: "#{context}[:single_sign_on_user_value]")
        UserSettings.validate!(input[:user_settings], context: "#{context}[:user_settings]") unless input[:user_settings].nil?
      end
    end

    class DescribeWorkforceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkforceInput, context: context)
        Hearth::Validator.validate!(input[:workforce_name], ::String, context: "#{context}[:workforce_name]")
      end
    end

    class DescribeWorkforceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkforceOutput, context: context)
        Workforce.validate!(input[:workforce], context: "#{context}[:workforce]") unless input[:workforce].nil?
      end
    end

    class DescribeWorkteamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkteamInput, context: context)
        Hearth::Validator.validate!(input[:workteam_name], ::String, context: "#{context}[:workteam_name]")
      end
    end

    class DescribeWorkteamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkteamOutput, context: context)
        Workteam.validate!(input[:workteam], context: "#{context}[:workteam]") unless input[:workteam].nil?
      end
    end

    class DesiredWeightAndCapacity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DesiredWeightAndCapacity, context: context)
        Hearth::Validator.validate!(input[:variant_name], ::String, context: "#{context}[:variant_name]")
        Hearth::Validator.validate!(input[:desired_weight], ::Float, context: "#{context}[:desired_weight]")
        Hearth::Validator.validate!(input[:desired_instance_count], ::Integer, context: "#{context}[:desired_instance_count]")
      end
    end

    class DesiredWeightAndCapacityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DesiredWeightAndCapacity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Device
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Device, context: context)
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:iot_thing_name], ::String, context: "#{context}[:iot_thing_name]")
      end
    end

    class DeviceFleetSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DeviceFleetSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeviceFleetSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceFleetSummary, context: context)
        Hearth::Validator.validate!(input[:device_fleet_arn], ::String, context: "#{context}[:device_fleet_arn]")
        Hearth::Validator.validate!(input[:device_fleet_name], ::String, context: "#{context}[:device_fleet_name]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
      end
    end

    class DeviceNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DeviceStats
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceStats, context: context)
        Hearth::Validator.validate!(input[:connected_device_count], ::Integer, context: "#{context}[:connected_device_count]")
        Hearth::Validator.validate!(input[:registered_device_count], ::Integer, context: "#{context}[:registered_device_count]")
      end
    end

    class DeviceSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DeviceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeviceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceSummary, context: context)
        Hearth::Validator.validate!(input[:device_name], ::String, context: "#{context}[:device_name]")
        Hearth::Validator.validate!(input[:device_arn], ::String, context: "#{context}[:device_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:device_fleet_name], ::String, context: "#{context}[:device_fleet_name]")
        Hearth::Validator.validate!(input[:iot_thing_name], ::String, context: "#{context}[:iot_thing_name]")
        Hearth::Validator.validate!(input[:registration_time], ::Time, context: "#{context}[:registration_time]")
        Hearth::Validator.validate!(input[:latest_heartbeat], ::Time, context: "#{context}[:latest_heartbeat]")
        EdgeModelSummaries.validate!(input[:models], context: "#{context}[:models]") unless input[:models].nil?
        Hearth::Validator.validate!(input[:agent_version], ::String, context: "#{context}[:agent_version]")
      end
    end

    class Devices
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Device.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DisableSagemakerServicecatalogPortfolioInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableSagemakerServicecatalogPortfolioInput, context: context)
      end
    end

    class DisableSagemakerServicecatalogPortfolioOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableSagemakerServicecatalogPortfolioOutput, context: context)
      end
    end

    class DisassociateTrialComponentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateTrialComponentInput, context: context)
        Hearth::Validator.validate!(input[:trial_component_name], ::String, context: "#{context}[:trial_component_name]")
        Hearth::Validator.validate!(input[:trial_name], ::String, context: "#{context}[:trial_name]")
      end
    end

    class DisassociateTrialComponentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateTrialComponentOutput, context: context)
        Hearth::Validator.validate!(input[:trial_component_arn], ::String, context: "#{context}[:trial_component_arn]")
        Hearth::Validator.validate!(input[:trial_arn], ::String, context: "#{context}[:trial_arn]")
      end
    end

    class DomainDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainDetails, context: context)
        Hearth::Validator.validate!(input[:domain_arn], ::String, context: "#{context}[:domain_arn]")
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class DomainList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DomainDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DomainSecurityGroupIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DomainSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainSettings, context: context)
        DomainSecurityGroupIds.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        RStudioServerProDomainSettings.validate!(input[:r_studio_server_pro_domain_settings], context: "#{context}[:r_studio_server_pro_domain_settings]") unless input[:r_studio_server_pro_domain_settings].nil?
      end
    end

    class DomainSettingsForUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainSettingsForUpdate, context: context)
        RStudioServerProDomainSettingsForUpdate.validate!(input[:r_studio_server_pro_domain_settings_for_update], context: "#{context}[:r_studio_server_pro_domain_settings_for_update]") unless input[:r_studio_server_pro_domain_settings_for_update].nil?
      end
    end

    class DriftCheckBaselines
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DriftCheckBaselines, context: context)
        DriftCheckBias.validate!(input[:bias], context: "#{context}[:bias]") unless input[:bias].nil?
        DriftCheckExplainability.validate!(input[:explainability], context: "#{context}[:explainability]") unless input[:explainability].nil?
        DriftCheckModelQuality.validate!(input[:model_quality], context: "#{context}[:model_quality]") unless input[:model_quality].nil?
        DriftCheckModelDataQuality.validate!(input[:model_data_quality], context: "#{context}[:model_data_quality]") unless input[:model_data_quality].nil?
      end
    end

    class DriftCheckBias
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DriftCheckBias, context: context)
        FileSource.validate!(input[:config_file], context: "#{context}[:config_file]") unless input[:config_file].nil?
        MetricsSource.validate!(input[:pre_training_constraints], context: "#{context}[:pre_training_constraints]") unless input[:pre_training_constraints].nil?
        MetricsSource.validate!(input[:post_training_constraints], context: "#{context}[:post_training_constraints]") unless input[:post_training_constraints].nil?
      end
    end

    class DriftCheckExplainability
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DriftCheckExplainability, context: context)
        MetricsSource.validate!(input[:constraints], context: "#{context}[:constraints]") unless input[:constraints].nil?
        FileSource.validate!(input[:config_file], context: "#{context}[:config_file]") unless input[:config_file].nil?
      end
    end

    class DriftCheckModelDataQuality
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DriftCheckModelDataQuality, context: context)
        MetricsSource.validate!(input[:statistics], context: "#{context}[:statistics]") unless input[:statistics].nil?
        MetricsSource.validate!(input[:constraints], context: "#{context}[:constraints]") unless input[:constraints].nil?
      end
    end

    class DriftCheckModelQuality
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DriftCheckModelQuality, context: context)
        MetricsSource.validate!(input[:statistics], context: "#{context}[:statistics]") unless input[:statistics].nil?
        MetricsSource.validate!(input[:constraints], context: "#{context}[:constraints]") unless input[:constraints].nil?
      end
    end

    class EMRStepMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EMRStepMetadata, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
        Hearth::Validator.validate!(input[:step_id], ::String, context: "#{context}[:step_id]")
        Hearth::Validator.validate!(input[:step_name], ::String, context: "#{context}[:step_name]")
        Hearth::Validator.validate!(input[:log_file_path], ::String, context: "#{context}[:log_file_path]")
      end
    end

    class Edge
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Edge, context: context)
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:destination_arn], ::String, context: "#{context}[:destination_arn]")
        Hearth::Validator.validate!(input[:association_type], ::String, context: "#{context}[:association_type]")
      end
    end

    class EdgeModel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EdgeModel, context: context)
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
        Hearth::Validator.validate!(input[:model_version], ::String, context: "#{context}[:model_version]")
        Hearth::Validator.validate!(input[:latest_sample_time], ::Time, context: "#{context}[:latest_sample_time]")
        Hearth::Validator.validate!(input[:latest_inference], ::Time, context: "#{context}[:latest_inference]")
      end
    end

    class EdgeModelStat
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EdgeModelStat, context: context)
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
        Hearth::Validator.validate!(input[:model_version], ::String, context: "#{context}[:model_version]")
        Hearth::Validator.validate!(input[:offline_device_count], ::Integer, context: "#{context}[:offline_device_count]")
        Hearth::Validator.validate!(input[:connected_device_count], ::Integer, context: "#{context}[:connected_device_count]")
        Hearth::Validator.validate!(input[:active_device_count], ::Integer, context: "#{context}[:active_device_count]")
        Hearth::Validator.validate!(input[:sampling_device_count], ::Integer, context: "#{context}[:sampling_device_count]")
      end
    end

    class EdgeModelStats
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EdgeModelStat.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EdgeModelSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EdgeModelSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EdgeModelSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EdgeModelSummary, context: context)
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
        Hearth::Validator.validate!(input[:model_version], ::String, context: "#{context}[:model_version]")
      end
    end

    class EdgeModels
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EdgeModel.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EdgeOutputConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EdgeOutputConfig, context: context)
        Hearth::Validator.validate!(input[:s3_output_location], ::String, context: "#{context}[:s3_output_location]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:preset_deployment_type], ::String, context: "#{context}[:preset_deployment_type]")
        Hearth::Validator.validate!(input[:preset_deployment_config], ::String, context: "#{context}[:preset_deployment_config]")
      end
    end

    class EdgePackagingJobSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EdgePackagingJobSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EdgePackagingJobSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EdgePackagingJobSummary, context: context)
        Hearth::Validator.validate!(input[:edge_packaging_job_arn], ::String, context: "#{context}[:edge_packaging_job_arn]")
        Hearth::Validator.validate!(input[:edge_packaging_job_name], ::String, context: "#{context}[:edge_packaging_job_name]")
        Hearth::Validator.validate!(input[:edge_packaging_job_status], ::String, context: "#{context}[:edge_packaging_job_status]")
        Hearth::Validator.validate!(input[:compilation_job_name], ::String, context: "#{context}[:compilation_job_name]")
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
        Hearth::Validator.validate!(input[:model_version], ::String, context: "#{context}[:model_version]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
      end
    end

    class EdgePresetDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EdgePresetDeploymentOutput, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:artifact], ::String, context: "#{context}[:artifact]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
      end
    end

    class Edges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Edge.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EnableSagemakerServicecatalogPortfolioInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableSagemakerServicecatalogPortfolioInput, context: context)
      end
    end

    class EnableSagemakerServicecatalogPortfolioOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableSagemakerServicecatalogPortfolioOutput, context: context)
      end
    end

    class Endpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Endpoint, context: context)
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
        Hearth::Validator.validate!(input[:endpoint_arn], ::String, context: "#{context}[:endpoint_arn]")
        Hearth::Validator.validate!(input[:endpoint_config_name], ::String, context: "#{context}[:endpoint_config_name]")
        ProductionVariantSummaryList.validate!(input[:production_variants], context: "#{context}[:production_variants]") unless input[:production_variants].nil?
        DataCaptureConfigSummary.validate!(input[:data_capture_config], context: "#{context}[:data_capture_config]") unless input[:data_capture_config].nil?
        Hearth::Validator.validate!(input[:endpoint_status], ::String, context: "#{context}[:endpoint_status]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        MonitoringScheduleList.validate!(input[:monitoring_schedules], context: "#{context}[:monitoring_schedules]") unless input[:monitoring_schedules].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class EndpointConfigSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointConfigSummary, context: context)
        Hearth::Validator.validate!(input[:endpoint_config_name], ::String, context: "#{context}[:endpoint_config_name]")
        Hearth::Validator.validate!(input[:endpoint_config_arn], ::String, context: "#{context}[:endpoint_config_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class EndpointConfigSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EndpointConfigSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
        Hearth::Validator.validate!(input[:local_path], ::String, context: "#{context}[:local_path]")
        Hearth::Validator.validate!(input[:s3_input_mode], ::String, context: "#{context}[:s3_input_mode]")
        Hearth::Validator.validate!(input[:s3_data_distribution_type], ::String, context: "#{context}[:s3_data_distribution_type]")
        Hearth::Validator.validate!(input[:features_attribute], ::String, context: "#{context}[:features_attribute]")
        Hearth::Validator.validate!(input[:inference_attribute], ::String, context: "#{context}[:inference_attribute]")
        Hearth::Validator.validate!(input[:probability_attribute], ::String, context: "#{context}[:probability_attribute]")
        Hearth::Validator.validate!(input[:probability_threshold_attribute], ::Float, context: "#{context}[:probability_threshold_attribute]")
        Hearth::Validator.validate!(input[:start_time_offset], ::String, context: "#{context}[:start_time_offset]")
        Hearth::Validator.validate!(input[:end_time_offset], ::String, context: "#{context}[:end_time_offset]")
      end
    end

    class EndpointInputConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointInputConfiguration, context: context)
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:inference_specification_name], ::String, context: "#{context}[:inference_specification_name]")
        EnvironmentParameterRanges.validate!(input[:environment_parameter_ranges], context: "#{context}[:environment_parameter_ranges]") unless input[:environment_parameter_ranges].nil?
      end
    end

    class EndpointInputConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EndpointInputConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EndpointOutputConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointOutputConfiguration, context: context)
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
        Hearth::Validator.validate!(input[:variant_name], ::String, context: "#{context}[:variant_name]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:initial_instance_count], ::Integer, context: "#{context}[:initial_instance_count]")
      end
    end

    class EndpointSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointSummary, context: context)
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
        Hearth::Validator.validate!(input[:endpoint_arn], ::String, context: "#{context}[:endpoint_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:endpoint_status], ::String, context: "#{context}[:endpoint_status]")
      end
    end

    class EndpointSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EndpointSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EnvironmentMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class EnvironmentParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnvironmentParameter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value_type], ::String, context: "#{context}[:value_type]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class EnvironmentParameterRanges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnvironmentParameterRanges, context: context)
        CategoricalParameters.validate!(input[:categorical_parameter_ranges], context: "#{context}[:categorical_parameter_ranges]") unless input[:categorical_parameter_ranges].nil?
      end
    end

    class EnvironmentParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EnvironmentParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Experiment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Experiment, context: context)
        Hearth::Validator.validate!(input[:experiment_name], ::String, context: "#{context}[:experiment_name]")
        Hearth::Validator.validate!(input[:experiment_arn], ::String, context: "#{context}[:experiment_arn]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        ExperimentSource.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        UserContext.validate!(input[:created_by], context: "#{context}[:created_by]") unless input[:created_by].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        UserContext.validate!(input[:last_modified_by], context: "#{context}[:last_modified_by]") unless input[:last_modified_by].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ExperimentConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExperimentConfig, context: context)
        Hearth::Validator.validate!(input[:experiment_name], ::String, context: "#{context}[:experiment_name]")
        Hearth::Validator.validate!(input[:trial_name], ::String, context: "#{context}[:trial_name]")
        Hearth::Validator.validate!(input[:trial_component_display_name], ::String, context: "#{context}[:trial_component_display_name]")
      end
    end

    class ExperimentSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExperimentSource, context: context)
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
      end
    end

    class ExperimentSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ExperimentSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExperimentSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExperimentSummary, context: context)
        Hearth::Validator.validate!(input[:experiment_arn], ::String, context: "#{context}[:experiment_arn]")
        Hearth::Validator.validate!(input[:experiment_name], ::String, context: "#{context}[:experiment_name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        ExperimentSource.validate!(input[:experiment_source], context: "#{context}[:experiment_source]") unless input[:experiment_source].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
      end
    end

    class Explainability
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Explainability, context: context)
        MetricsSource.validate!(input[:report], context: "#{context}[:report]") unless input[:report].nil?
      end
    end

    class FailStepMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailStepMetadata, context: context)
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class FeatureDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FeatureDefinition, context: context)
        Hearth::Validator.validate!(input[:feature_name], ::String, context: "#{context}[:feature_name]")
        Hearth::Validator.validate!(input[:feature_type], ::String, context: "#{context}[:feature_type]")
      end
    end

    class FeatureDefinitions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FeatureDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FeatureGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FeatureGroup, context: context)
        Hearth::Validator.validate!(input[:feature_group_arn], ::String, context: "#{context}[:feature_group_arn]")
        Hearth::Validator.validate!(input[:feature_group_name], ::String, context: "#{context}[:feature_group_name]")
        Hearth::Validator.validate!(input[:record_identifier_feature_name], ::String, context: "#{context}[:record_identifier_feature_name]")
        Hearth::Validator.validate!(input[:event_time_feature_name], ::String, context: "#{context}[:event_time_feature_name]")
        FeatureDefinitions.validate!(input[:feature_definitions], context: "#{context}[:feature_definitions]") unless input[:feature_definitions].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        OnlineStoreConfig.validate!(input[:online_store_config], context: "#{context}[:online_store_config]") unless input[:online_store_config].nil?
        OfflineStoreConfig.validate!(input[:offline_store_config], context: "#{context}[:offline_store_config]") unless input[:offline_store_config].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:feature_group_status], ::String, context: "#{context}[:feature_group_status]")
        OfflineStoreStatus.validate!(input[:offline_store_status], context: "#{context}[:offline_store_status]") unless input[:offline_store_status].nil?
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class FeatureGroupSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FeatureGroupSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FeatureGroupSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FeatureGroupSummary, context: context)
        Hearth::Validator.validate!(input[:feature_group_name], ::String, context: "#{context}[:feature_group_name]")
        Hearth::Validator.validate!(input[:feature_group_arn], ::String, context: "#{context}[:feature_group_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:feature_group_status], ::String, context: "#{context}[:feature_group_status]")
        OfflineStoreStatus.validate!(input[:offline_store_status], context: "#{context}[:offline_store_status]") unless input[:offline_store_status].nil?
      end
    end

    class FileSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileSource, context: context)
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:content_digest], ::String, context: "#{context}[:content_digest]")
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
      end
    end

    class FileSystemConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileSystemConfig, context: context)
        Hearth::Validator.validate!(input[:mount_path], ::String, context: "#{context}[:mount_path]")
        Hearth::Validator.validate!(input[:default_uid], ::Integer, context: "#{context}[:default_uid]")
        Hearth::Validator.validate!(input[:default_gid], ::Integer, context: "#{context}[:default_gid]")
      end
    end

    class FileSystemDataSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileSystemDataSource, context: context)
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Hearth::Validator.validate!(input[:file_system_access_mode], ::String, context: "#{context}[:file_system_access_mode]")
        Hearth::Validator.validate!(input[:file_system_type], ::String, context: "#{context}[:file_system_type]")
        Hearth::Validator.validate!(input[:directory_path], ::String, context: "#{context}[:directory_path]")
      end
    end

    class Filter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Filter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class FilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Filter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FinalAutoMLJobObjectiveMetric
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FinalAutoMLJobObjectiveMetric, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
      end
    end

    class FinalHyperParameterTuningJobObjectiveMetric
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FinalHyperParameterTuningJobObjectiveMetric, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
      end
    end

    class FinalMetricDataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MetricData.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FlowDefinitionOutputConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FlowDefinitionOutputConfig, context: context)
        Hearth::Validator.validate!(input[:s3_output_path], ::String, context: "#{context}[:s3_output_path]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class FlowDefinitionSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FlowDefinitionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FlowDefinitionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FlowDefinitionSummary, context: context)
        Hearth::Validator.validate!(input[:flow_definition_name], ::String, context: "#{context}[:flow_definition_name]")
        Hearth::Validator.validate!(input[:flow_definition_arn], ::String, context: "#{context}[:flow_definition_arn]")
        Hearth::Validator.validate!(input[:flow_definition_status], ::String, context: "#{context}[:flow_definition_status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class FlowDefinitionTaskKeywords
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GetDeviceFleetReportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeviceFleetReportInput, context: context)
        Hearth::Validator.validate!(input[:device_fleet_name], ::String, context: "#{context}[:device_fleet_name]")
      end
    end

    class GetDeviceFleetReportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeviceFleetReportOutput, context: context)
        Hearth::Validator.validate!(input[:device_fleet_arn], ::String, context: "#{context}[:device_fleet_arn]")
        Hearth::Validator.validate!(input[:device_fleet_name], ::String, context: "#{context}[:device_fleet_name]")
        EdgeOutputConfig.validate!(input[:output_config], context: "#{context}[:output_config]") unless input[:output_config].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:report_generated], ::Time, context: "#{context}[:report_generated]")
        DeviceStats.validate!(input[:device_stats], context: "#{context}[:device_stats]") unless input[:device_stats].nil?
        AgentVersions.validate!(input[:agent_versions], context: "#{context}[:agent_versions]") unless input[:agent_versions].nil?
        EdgeModelStats.validate!(input[:model_stats], context: "#{context}[:model_stats]") unless input[:model_stats].nil?
      end
    end

    class GetLineageGroupPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLineageGroupPolicyInput, context: context)
        Hearth::Validator.validate!(input[:lineage_group_name], ::String, context: "#{context}[:lineage_group_name]")
      end
    end

    class GetLineageGroupPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLineageGroupPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:lineage_group_arn], ::String, context: "#{context}[:lineage_group_arn]")
        Hearth::Validator.validate!(input[:resource_policy], ::String, context: "#{context}[:resource_policy]")
      end
    end

    class GetModelPackageGroupPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetModelPackageGroupPolicyInput, context: context)
        Hearth::Validator.validate!(input[:model_package_group_name], ::String, context: "#{context}[:model_package_group_name]")
      end
    end

    class GetModelPackageGroupPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetModelPackageGroupPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:resource_policy], ::String, context: "#{context}[:resource_policy]")
      end
    end

    class GetSagemakerServicecatalogPortfolioStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSagemakerServicecatalogPortfolioStatusInput, context: context)
      end
    end

    class GetSagemakerServicecatalogPortfolioStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSagemakerServicecatalogPortfolioStatusOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class GetSearchSuggestionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSearchSuggestionsInput, context: context)
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
        SuggestionQuery.validate!(input[:suggestion_query], context: "#{context}[:suggestion_query]") unless input[:suggestion_query].nil?
      end
    end

    class GetSearchSuggestionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSearchSuggestionsOutput, context: context)
        PropertyNameSuggestionList.validate!(input[:property_name_suggestions], context: "#{context}[:property_name_suggestions]") unless input[:property_name_suggestions].nil?
      end
    end

    class GitConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GitConfig, context: context)
        Hearth::Validator.validate!(input[:repository_url], ::String, context: "#{context}[:repository_url]")
        Hearth::Validator.validate!(input[:branch], ::String, context: "#{context}[:branch]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
      end
    end

    class GitConfigForUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GitConfigForUpdate, context: context)
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
      end
    end

    class Groups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class HookParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class HumanLoopActivationConditionsConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HumanLoopActivationConditionsConfig, context: context)
        Hearth::Validator.validate!(input[:human_loop_activation_conditions], ::String, context: "#{context}[:human_loop_activation_conditions]")
      end
    end

    class HumanLoopActivationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HumanLoopActivationConfig, context: context)
        HumanLoopActivationConditionsConfig.validate!(input[:human_loop_activation_conditions_config], context: "#{context}[:human_loop_activation_conditions_config]") unless input[:human_loop_activation_conditions_config].nil?
      end
    end

    class HumanLoopConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HumanLoopConfig, context: context)
        Hearth::Validator.validate!(input[:workteam_arn], ::String, context: "#{context}[:workteam_arn]")
        Hearth::Validator.validate!(input[:human_task_ui_arn], ::String, context: "#{context}[:human_task_ui_arn]")
        Hearth::Validator.validate!(input[:task_title], ::String, context: "#{context}[:task_title]")
        Hearth::Validator.validate!(input[:task_description], ::String, context: "#{context}[:task_description]")
        Hearth::Validator.validate!(input[:task_count], ::Integer, context: "#{context}[:task_count]")
        Hearth::Validator.validate!(input[:task_availability_lifetime_in_seconds], ::Integer, context: "#{context}[:task_availability_lifetime_in_seconds]")
        Hearth::Validator.validate!(input[:task_time_limit_in_seconds], ::Integer, context: "#{context}[:task_time_limit_in_seconds]")
        FlowDefinitionTaskKeywords.validate!(input[:task_keywords], context: "#{context}[:task_keywords]") unless input[:task_keywords].nil?
        PublicWorkforceTaskPrice.validate!(input[:public_workforce_task_price], context: "#{context}[:public_workforce_task_price]") unless input[:public_workforce_task_price].nil?
      end
    end

    class HumanLoopRequestSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HumanLoopRequestSource, context: context)
        Hearth::Validator.validate!(input[:aws_managed_human_loop_request_source], ::String, context: "#{context}[:aws_managed_human_loop_request_source]")
      end
    end

    class HumanTaskConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HumanTaskConfig, context: context)
        Hearth::Validator.validate!(input[:workteam_arn], ::String, context: "#{context}[:workteam_arn]")
        UiConfig.validate!(input[:ui_config], context: "#{context}[:ui_config]") unless input[:ui_config].nil?
        Hearth::Validator.validate!(input[:pre_human_task_lambda_arn], ::String, context: "#{context}[:pre_human_task_lambda_arn]")
        TaskKeywords.validate!(input[:task_keywords], context: "#{context}[:task_keywords]") unless input[:task_keywords].nil?
        Hearth::Validator.validate!(input[:task_title], ::String, context: "#{context}[:task_title]")
        Hearth::Validator.validate!(input[:task_description], ::String, context: "#{context}[:task_description]")
        Hearth::Validator.validate!(input[:number_of_human_workers_per_data_object], ::Integer, context: "#{context}[:number_of_human_workers_per_data_object]")
        Hearth::Validator.validate!(input[:task_time_limit_in_seconds], ::Integer, context: "#{context}[:task_time_limit_in_seconds]")
        Hearth::Validator.validate!(input[:task_availability_lifetime_in_seconds], ::Integer, context: "#{context}[:task_availability_lifetime_in_seconds]")
        Hearth::Validator.validate!(input[:max_concurrent_task_count], ::Integer, context: "#{context}[:max_concurrent_task_count]")
        AnnotationConsolidationConfig.validate!(input[:annotation_consolidation_config], context: "#{context}[:annotation_consolidation_config]") unless input[:annotation_consolidation_config].nil?
        PublicWorkforceTaskPrice.validate!(input[:public_workforce_task_price], context: "#{context}[:public_workforce_task_price]") unless input[:public_workforce_task_price].nil?
      end
    end

    class HumanTaskUiSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          HumanTaskUiSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HumanTaskUiSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HumanTaskUiSummary, context: context)
        Hearth::Validator.validate!(input[:human_task_ui_name], ::String, context: "#{context}[:human_task_ui_name]")
        Hearth::Validator.validate!(input[:human_task_ui_arn], ::String, context: "#{context}[:human_task_ui_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class HyperParameterAlgorithmSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HyperParameterAlgorithmSpecification, context: context)
        Hearth::Validator.validate!(input[:training_image], ::String, context: "#{context}[:training_image]")
        Hearth::Validator.validate!(input[:training_input_mode], ::String, context: "#{context}[:training_input_mode]")
        Hearth::Validator.validate!(input[:algorithm_name], ::String, context: "#{context}[:algorithm_name]")
        MetricDefinitionList.validate!(input[:metric_definitions], context: "#{context}[:metric_definitions]") unless input[:metric_definitions].nil?
      end
    end

    class HyperParameterSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HyperParameterSpecification, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        ParameterRange.validate!(input[:range], context: "#{context}[:range]") unless input[:range].nil?
        Hearth::Validator.validate!(input[:is_tunable], ::TrueClass, ::FalseClass, context: "#{context}[:is_tunable]")
        Hearth::Validator.validate!(input[:is_required], ::TrueClass, ::FalseClass, context: "#{context}[:is_required]")
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
      end
    end

    class HyperParameterSpecifications
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          HyperParameterSpecification.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HyperParameterTrainingJobDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HyperParameterTrainingJobDefinition, context: context)
        Hearth::Validator.validate!(input[:definition_name], ::String, context: "#{context}[:definition_name]")
        HyperParameterTuningJobObjective.validate!(input[:tuning_objective], context: "#{context}[:tuning_objective]") unless input[:tuning_objective].nil?
        ParameterRanges.validate!(input[:hyper_parameter_ranges], context: "#{context}[:hyper_parameter_ranges]") unless input[:hyper_parameter_ranges].nil?
        HyperParameters.validate!(input[:static_hyper_parameters], context: "#{context}[:static_hyper_parameters]") unless input[:static_hyper_parameters].nil?
        HyperParameterAlgorithmSpecification.validate!(input[:algorithm_specification], context: "#{context}[:algorithm_specification]") unless input[:algorithm_specification].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        ResourceConfig.validate!(input[:resource_config], context: "#{context}[:resource_config]") unless input[:resource_config].nil?
        StoppingCondition.validate!(input[:stopping_condition], context: "#{context}[:stopping_condition]") unless input[:stopping_condition].nil?
        Hearth::Validator.validate!(input[:enable_network_isolation], ::TrueClass, ::FalseClass, context: "#{context}[:enable_network_isolation]")
        Hearth::Validator.validate!(input[:enable_inter_container_traffic_encryption], ::TrueClass, ::FalseClass, context: "#{context}[:enable_inter_container_traffic_encryption]")
        Hearth::Validator.validate!(input[:enable_managed_spot_training], ::TrueClass, ::FalseClass, context: "#{context}[:enable_managed_spot_training]")
        CheckpointConfig.validate!(input[:checkpoint_config], context: "#{context}[:checkpoint_config]") unless input[:checkpoint_config].nil?
        RetryStrategy.validate!(input[:retry_strategy], context: "#{context}[:retry_strategy]") unless input[:retry_strategy].nil?
      end
    end

    class HyperParameterTrainingJobDefinitions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          HyperParameterTrainingJobDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HyperParameterTrainingJobSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          HyperParameterTrainingJobSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HyperParameterTrainingJobSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HyperParameterTrainingJobSummary, context: context)
        Hearth::Validator.validate!(input[:training_job_definition_name], ::String, context: "#{context}[:training_job_definition_name]")
        Hearth::Validator.validate!(input[:training_job_name], ::String, context: "#{context}[:training_job_name]")
        Hearth::Validator.validate!(input[:training_job_arn], ::String, context: "#{context}[:training_job_arn]")
        Hearth::Validator.validate!(input[:tuning_job_name], ::String, context: "#{context}[:tuning_job_name]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:training_start_time], ::Time, context: "#{context}[:training_start_time]")
        Hearth::Validator.validate!(input[:training_end_time], ::Time, context: "#{context}[:training_end_time]")
        Hearth::Validator.validate!(input[:training_job_status], ::String, context: "#{context}[:training_job_status]")
        HyperParameters.validate!(input[:tuned_hyper_parameters], context: "#{context}[:tuned_hyper_parameters]") unless input[:tuned_hyper_parameters].nil?
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        FinalHyperParameterTuningJobObjectiveMetric.validate!(input[:final_hyper_parameter_tuning_job_objective_metric], context: "#{context}[:final_hyper_parameter_tuning_job_objective_metric]") unless input[:final_hyper_parameter_tuning_job_objective_metric].nil?
        Hearth::Validator.validate!(input[:objective_status], ::String, context: "#{context}[:objective_status]")
      end
    end

    class HyperParameterTuningJobConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HyperParameterTuningJobConfig, context: context)
        Hearth::Validator.validate!(input[:strategy], ::String, context: "#{context}[:strategy]")
        HyperParameterTuningJobObjective.validate!(input[:hyper_parameter_tuning_job_objective], context: "#{context}[:hyper_parameter_tuning_job_objective]") unless input[:hyper_parameter_tuning_job_objective].nil?
        ResourceLimits.validate!(input[:resource_limits], context: "#{context}[:resource_limits]") unless input[:resource_limits].nil?
        ParameterRanges.validate!(input[:parameter_ranges], context: "#{context}[:parameter_ranges]") unless input[:parameter_ranges].nil?
        Hearth::Validator.validate!(input[:training_job_early_stopping_type], ::String, context: "#{context}[:training_job_early_stopping_type]")
        TuningJobCompletionCriteria.validate!(input[:tuning_job_completion_criteria], context: "#{context}[:tuning_job_completion_criteria]") unless input[:tuning_job_completion_criteria].nil?
      end
    end

    class HyperParameterTuningJobObjective
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HyperParameterTuningJobObjective, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
      end
    end

    class HyperParameterTuningJobObjectives
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          HyperParameterTuningJobObjective.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HyperParameterTuningJobSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          HyperParameterTuningJobSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HyperParameterTuningJobSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HyperParameterTuningJobSummary, context: context)
        Hearth::Validator.validate!(input[:hyper_parameter_tuning_job_name], ::String, context: "#{context}[:hyper_parameter_tuning_job_name]")
        Hearth::Validator.validate!(input[:hyper_parameter_tuning_job_arn], ::String, context: "#{context}[:hyper_parameter_tuning_job_arn]")
        Hearth::Validator.validate!(input[:hyper_parameter_tuning_job_status], ::String, context: "#{context}[:hyper_parameter_tuning_job_status]")
        Hearth::Validator.validate!(input[:strategy], ::String, context: "#{context}[:strategy]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:hyper_parameter_tuning_end_time], ::Time, context: "#{context}[:hyper_parameter_tuning_end_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        TrainingJobStatusCounters.validate!(input[:training_job_status_counters], context: "#{context}[:training_job_status_counters]") unless input[:training_job_status_counters].nil?
        ObjectiveStatusCounters.validate!(input[:objective_status_counters], context: "#{context}[:objective_status_counters]") unless input[:objective_status_counters].nil?
        ResourceLimits.validate!(input[:resource_limits], context: "#{context}[:resource_limits]") unless input[:resource_limits].nil?
      end
    end

    class HyperParameterTuningJobWarmStartConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HyperParameterTuningJobWarmStartConfig, context: context)
        ParentHyperParameterTuningJobs.validate!(input[:parent_hyper_parameter_tuning_jobs], context: "#{context}[:parent_hyper_parameter_tuning_jobs]") unless input[:parent_hyper_parameter_tuning_jobs].nil?
        Hearth::Validator.validate!(input[:warm_start_type], ::String, context: "#{context}[:warm_start_type]")
      end
    end

    class HyperParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Image
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Image, context: context)
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:image_arn], ::String, context: "#{context}[:image_arn]")
        Hearth::Validator.validate!(input[:image_name], ::String, context: "#{context}[:image_name]")
        Hearth::Validator.validate!(input[:image_status], ::String, context: "#{context}[:image_status]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
      end
    end

    class ImageConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageConfig, context: context)
        Hearth::Validator.validate!(input[:repository_access_mode], ::String, context: "#{context}[:repository_access_mode]")
        RepositoryAuthConfig.validate!(input[:repository_auth_config], context: "#{context}[:repository_auth_config]") unless input[:repository_auth_config].nil?
      end
    end

    class ImageDeletePropertyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ImageVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImageVersion, context: context)
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:image_arn], ::String, context: "#{context}[:image_arn]")
        Hearth::Validator.validate!(input[:image_version_arn], ::String, context: "#{context}[:image_version_arn]")
        Hearth::Validator.validate!(input[:image_version_status], ::String, context: "#{context}[:image_version_status]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
      end
    end

    class ImageVersions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ImageVersion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Images
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Image.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InferenceExecutionConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InferenceExecutionConfig, context: context)
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
      end
    end

    class InferenceRecommendation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InferenceRecommendation, context: context)
        RecommendationMetrics.validate!(input[:metrics], context: "#{context}[:metrics]") unless input[:metrics].nil?
        EndpointOutputConfiguration.validate!(input[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless input[:endpoint_configuration].nil?
        ModelConfiguration.validate!(input[:model_configuration], context: "#{context}[:model_configuration]") unless input[:model_configuration].nil?
      end
    end

    class InferenceRecommendations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InferenceRecommendation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InferenceRecommendationsJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InferenceRecommendationsJob, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_description], ::String, context: "#{context}[:job_description]")
        Hearth::Validator.validate!(input[:job_type], ::String, context: "#{context}[:job_type]")
        Hearth::Validator.validate!(input[:job_arn], ::String, context: "#{context}[:job_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:completion_time], ::Time, context: "#{context}[:completion_time]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class InferenceRecommendationsJobs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InferenceRecommendationsJob.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InferenceSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InferenceSpecification, context: context)
        ModelPackageContainerDefinitionList.validate!(input[:containers], context: "#{context}[:containers]") unless input[:containers].nil?
        TransformInstanceTypes.validate!(input[:supported_transform_instance_types], context: "#{context}[:supported_transform_instance_types]") unless input[:supported_transform_instance_types].nil?
        RealtimeInferenceInstanceTypes.validate!(input[:supported_realtime_inference_instance_types], context: "#{context}[:supported_realtime_inference_instance_types]") unless input[:supported_realtime_inference_instance_types].nil?
        ContentTypes.validate!(input[:supported_content_types], context: "#{context}[:supported_content_types]") unless input[:supported_content_types].nil?
        ResponseMIMETypes.validate!(input[:supported_response_mime_types], context: "#{context}[:supported_response_mime_types]") unless input[:supported_response_mime_types].nil?
      end
    end

    class InputConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputConfig, context: context)
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
        Hearth::Validator.validate!(input[:data_input_config], ::String, context: "#{context}[:data_input_config]")
        Hearth::Validator.validate!(input[:framework], ::String, context: "#{context}[:framework]")
        Hearth::Validator.validate!(input[:framework_version], ::String, context: "#{context}[:framework_version]")
      end
    end

    class InputDataConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Channel.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InputModes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InstanceMetadataServiceConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceMetadataServiceConfiguration, context: context)
        Hearth::Validator.validate!(input[:minimum_instance_metadata_service_version], ::String, context: "#{context}[:minimum_instance_metadata_service_version]")
      end
    end

    class IntegerParameterRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IntegerParameterRange, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:min_value], ::String, context: "#{context}[:min_value]")
        Hearth::Validator.validate!(input[:max_value], ::String, context: "#{context}[:max_value]")
        Hearth::Validator.validate!(input[:scaling_type], ::String, context: "#{context}[:scaling_type]")
      end
    end

    class IntegerParameterRangeSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IntegerParameterRangeSpecification, context: context)
        Hearth::Validator.validate!(input[:min_value], ::String, context: "#{context}[:min_value]")
        Hearth::Validator.validate!(input[:max_value], ::String, context: "#{context}[:max_value]")
      end
    end

    class IntegerParameterRanges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          IntegerParameterRange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class JsonContentTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class JupyterServerAppSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JupyterServerAppSettings, context: context)
        ResourceSpec.validate!(input[:default_resource_spec], context: "#{context}[:default_resource_spec]") unless input[:default_resource_spec].nil?
        LifecycleConfigArns.validate!(input[:lifecycle_config_arns], context: "#{context}[:lifecycle_config_arns]") unless input[:lifecycle_config_arns].nil?
      end
    end

    class KernelGatewayAppSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KernelGatewayAppSettings, context: context)
        ResourceSpec.validate!(input[:default_resource_spec], context: "#{context}[:default_resource_spec]") unless input[:default_resource_spec].nil?
        CustomImages.validate!(input[:custom_images], context: "#{context}[:custom_images]") unless input[:custom_images].nil?
        LifecycleConfigArns.validate!(input[:lifecycle_config_arns], context: "#{context}[:lifecycle_config_arns]") unless input[:lifecycle_config_arns].nil?
      end
    end

    class KernelGatewayImageConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KernelGatewayImageConfig, context: context)
        KernelSpecs.validate!(input[:kernel_specs], context: "#{context}[:kernel_specs]") unless input[:kernel_specs].nil?
        FileSystemConfig.validate!(input[:file_system_config], context: "#{context}[:file_system_config]") unless input[:file_system_config].nil?
      end
    end

    class KernelSpec
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KernelSpec, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
      end
    end

    class KernelSpecs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          KernelSpec.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LabelCounters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LabelCounters, context: context)
        Hearth::Validator.validate!(input[:total_labeled], ::Integer, context: "#{context}[:total_labeled]")
        Hearth::Validator.validate!(input[:human_labeled], ::Integer, context: "#{context}[:human_labeled]")
        Hearth::Validator.validate!(input[:machine_labeled], ::Integer, context: "#{context}[:machine_labeled]")
        Hearth::Validator.validate!(input[:failed_non_retryable_error], ::Integer, context: "#{context}[:failed_non_retryable_error]")
        Hearth::Validator.validate!(input[:unlabeled], ::Integer, context: "#{context}[:unlabeled]")
      end
    end

    class LabelCountersForWorkteam
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LabelCountersForWorkteam, context: context)
        Hearth::Validator.validate!(input[:human_labeled], ::Integer, context: "#{context}[:human_labeled]")
        Hearth::Validator.validate!(input[:pending_human], ::Integer, context: "#{context}[:pending_human]")
        Hearth::Validator.validate!(input[:total], ::Integer, context: "#{context}[:total]")
      end
    end

    class LabelingJobAlgorithmsConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LabelingJobAlgorithmsConfig, context: context)
        Hearth::Validator.validate!(input[:labeling_job_algorithm_specification_arn], ::String, context: "#{context}[:labeling_job_algorithm_specification_arn]")
        Hearth::Validator.validate!(input[:initial_active_learning_model_arn], ::String, context: "#{context}[:initial_active_learning_model_arn]")
        LabelingJobResourceConfig.validate!(input[:labeling_job_resource_config], context: "#{context}[:labeling_job_resource_config]") unless input[:labeling_job_resource_config].nil?
      end
    end

    class LabelingJobDataAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LabelingJobDataAttributes, context: context)
        ContentClassifiers.validate!(input[:content_classifiers], context: "#{context}[:content_classifiers]") unless input[:content_classifiers].nil?
      end
    end

    class LabelingJobDataSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LabelingJobDataSource, context: context)
        LabelingJobS3DataSource.validate!(input[:s3_data_source], context: "#{context}[:s3_data_source]") unless input[:s3_data_source].nil?
        LabelingJobSnsDataSource.validate!(input[:sns_data_source], context: "#{context}[:sns_data_source]") unless input[:sns_data_source].nil?
      end
    end

    class LabelingJobForWorkteamSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LabelingJobForWorkteamSummary, context: context)
        Hearth::Validator.validate!(input[:labeling_job_name], ::String, context: "#{context}[:labeling_job_name]")
        Hearth::Validator.validate!(input[:job_reference_code], ::String, context: "#{context}[:job_reference_code]")
        Hearth::Validator.validate!(input[:work_requester_account_id], ::String, context: "#{context}[:work_requester_account_id]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        LabelCountersForWorkteam.validate!(input[:label_counters], context: "#{context}[:label_counters]") unless input[:label_counters].nil?
        Hearth::Validator.validate!(input[:number_of_human_workers_per_data_object], ::Integer, context: "#{context}[:number_of_human_workers_per_data_object]")
      end
    end

    class LabelingJobForWorkteamSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LabelingJobForWorkteamSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LabelingJobInputConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LabelingJobInputConfig, context: context)
        LabelingJobDataSource.validate!(input[:data_source], context: "#{context}[:data_source]") unless input[:data_source].nil?
        LabelingJobDataAttributes.validate!(input[:data_attributes], context: "#{context}[:data_attributes]") unless input[:data_attributes].nil?
      end
    end

    class LabelingJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LabelingJobOutput, context: context)
        Hearth::Validator.validate!(input[:output_dataset_s3_uri], ::String, context: "#{context}[:output_dataset_s3_uri]")
        Hearth::Validator.validate!(input[:final_active_learning_model_arn], ::String, context: "#{context}[:final_active_learning_model_arn]")
      end
    end

    class LabelingJobOutputConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LabelingJobOutputConfig, context: context)
        Hearth::Validator.validate!(input[:s3_output_path], ::String, context: "#{context}[:s3_output_path]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
      end
    end

    class LabelingJobResourceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LabelingJobResourceConfig, context: context)
        Hearth::Validator.validate!(input[:volume_kms_key_id], ::String, context: "#{context}[:volume_kms_key_id]")
      end
    end

    class LabelingJobS3DataSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LabelingJobS3DataSource, context: context)
        Hearth::Validator.validate!(input[:manifest_s3_uri], ::String, context: "#{context}[:manifest_s3_uri]")
      end
    end

    class LabelingJobSnsDataSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LabelingJobSnsDataSource, context: context)
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
      end
    end

    class LabelingJobStoppingConditions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LabelingJobStoppingConditions, context: context)
        Hearth::Validator.validate!(input[:max_human_labeled_object_count], ::Integer, context: "#{context}[:max_human_labeled_object_count]")
        Hearth::Validator.validate!(input[:max_percentage_of_input_dataset_labeled], ::Integer, context: "#{context}[:max_percentage_of_input_dataset_labeled]")
      end
    end

    class LabelingJobSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LabelingJobSummary, context: context)
        Hearth::Validator.validate!(input[:labeling_job_name], ::String, context: "#{context}[:labeling_job_name]")
        Hearth::Validator.validate!(input[:labeling_job_arn], ::String, context: "#{context}[:labeling_job_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:labeling_job_status], ::String, context: "#{context}[:labeling_job_status]")
        LabelCounters.validate!(input[:label_counters], context: "#{context}[:label_counters]") unless input[:label_counters].nil?
        Hearth::Validator.validate!(input[:workteam_arn], ::String, context: "#{context}[:workteam_arn]")
        Hearth::Validator.validate!(input[:pre_human_task_lambda_arn], ::String, context: "#{context}[:pre_human_task_lambda_arn]")
        Hearth::Validator.validate!(input[:annotation_consolidation_lambda_arn], ::String, context: "#{context}[:annotation_consolidation_lambda_arn]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        LabelingJobOutput.validate!(input[:labeling_job_output], context: "#{context}[:labeling_job_output]") unless input[:labeling_job_output].nil?
        LabelingJobInputConfig.validate!(input[:input_config], context: "#{context}[:input_config]") unless input[:input_config].nil?
      end
    end

    class LabelingJobSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LabelingJobSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LambdaStepMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaStepMetadata, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        OutputParameterList.validate!(input[:output_parameters], context: "#{context}[:output_parameters]") unless input[:output_parameters].nil?
      end
    end

    class LifecycleConfigArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LineageEntityParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class LineageGroupSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LineageGroupSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LineageGroupSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LineageGroupSummary, context: context)
        Hearth::Validator.validate!(input[:lineage_group_arn], ::String, context: "#{context}[:lineage_group_arn]")
        Hearth::Validator.validate!(input[:lineage_group_name], ::String, context: "#{context}[:lineage_group_name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
      end
    end

    class ListActionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListActionsInput, context: context)
        Hearth::Validator.validate!(input[:source_uri], ::String, context: "#{context}[:source_uri]")
        Hearth::Validator.validate!(input[:action_type], ::String, context: "#{context}[:action_type]")
        Hearth::Validator.validate!(input[:created_after], ::Time, context: "#{context}[:created_after]")
        Hearth::Validator.validate!(input[:created_before], ::Time, context: "#{context}[:created_before]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListActionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListActionsOutput, context: context)
        ActionSummaries.validate!(input[:action_summaries], context: "#{context}[:action_summaries]") unless input[:action_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAlgorithmsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAlgorithmsInput, context: context)
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
      end
    end

    class ListAlgorithmsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAlgorithmsOutput, context: context)
        AlgorithmSummaryList.validate!(input[:algorithm_summary_list], context: "#{context}[:algorithm_summary_list]") unless input[:algorithm_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAppImageConfigsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppImageConfigsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
        Hearth::Validator.validate!(input[:modified_time_before], ::Time, context: "#{context}[:modified_time_before]")
        Hearth::Validator.validate!(input[:modified_time_after], ::Time, context: "#{context}[:modified_time_after]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
      end
    end

    class ListAppImageConfigsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppImageConfigsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        AppImageConfigList.validate!(input[:app_image_configs], context: "#{context}[:app_image_configs]") unless input[:app_image_configs].nil?
      end
    end

    class ListAppsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:domain_id_equals], ::String, context: "#{context}[:domain_id_equals]")
        Hearth::Validator.validate!(input[:user_profile_name_equals], ::String, context: "#{context}[:user_profile_name_equals]")
      end
    end

    class ListAppsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAppsOutput, context: context)
        AppList.validate!(input[:apps], context: "#{context}[:apps]") unless input[:apps].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListArtifactsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListArtifactsInput, context: context)
        Hearth::Validator.validate!(input[:source_uri], ::String, context: "#{context}[:source_uri]")
        Hearth::Validator.validate!(input[:artifact_type], ::String, context: "#{context}[:artifact_type]")
        Hearth::Validator.validate!(input[:created_after], ::Time, context: "#{context}[:created_after]")
        Hearth::Validator.validate!(input[:created_before], ::Time, context: "#{context}[:created_before]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListArtifactsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListArtifactsOutput, context: context)
        ArtifactSummaries.validate!(input[:artifact_summaries], context: "#{context}[:artifact_summaries]") unless input[:artifact_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssociationsInput, context: context)
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:destination_arn], ::String, context: "#{context}[:destination_arn]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Hearth::Validator.validate!(input[:destination_type], ::String, context: "#{context}[:destination_type]")
        Hearth::Validator.validate!(input[:association_type], ::String, context: "#{context}[:association_type]")
        Hearth::Validator.validate!(input[:created_after], ::Time, context: "#{context}[:created_after]")
        Hearth::Validator.validate!(input[:created_before], ::Time, context: "#{context}[:created_before]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAssociationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssociationsOutput, context: context)
        AssociationSummaries.validate!(input[:association_summaries], context: "#{context}[:association_summaries]") unless input[:association_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAutoMLJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAutoMLJobsInput, context: context)
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:last_modified_time_after], ::Time, context: "#{context}[:last_modified_time_after]")
        Hearth::Validator.validate!(input[:last_modified_time_before], ::Time, context: "#{context}[:last_modified_time_before]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
        Hearth::Validator.validate!(input[:status_equals], ::String, context: "#{context}[:status_equals]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAutoMLJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAutoMLJobsOutput, context: context)
        AutoMLJobSummaries.validate!(input[:auto_ml_job_summaries], context: "#{context}[:auto_ml_job_summaries]") unless input[:auto_ml_job_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCandidatesForAutoMLJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCandidatesForAutoMLJobInput, context: context)
        Hearth::Validator.validate!(input[:auto_ml_job_name], ::String, context: "#{context}[:auto_ml_job_name]")
        Hearth::Validator.validate!(input[:status_equals], ::String, context: "#{context}[:status_equals]")
        Hearth::Validator.validate!(input[:candidate_name_equals], ::String, context: "#{context}[:candidate_name_equals]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCandidatesForAutoMLJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCandidatesForAutoMLJobOutput, context: context)
        AutoMLCandidates.validate!(input[:candidates], context: "#{context}[:candidates]") unless input[:candidates].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCodeRepositoriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCodeRepositoriesInput, context: context)
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:last_modified_time_after], ::Time, context: "#{context}[:last_modified_time_after]")
        Hearth::Validator.validate!(input[:last_modified_time_before], ::Time, context: "#{context}[:last_modified_time_before]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
      end
    end

    class ListCodeRepositoriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCodeRepositoriesOutput, context: context)
        CodeRepositorySummaryList.validate!(input[:code_repository_summary_list], context: "#{context}[:code_repository_summary_list]") unless input[:code_repository_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCompilationJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCompilationJobsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:last_modified_time_after], ::Time, context: "#{context}[:last_modified_time_after]")
        Hearth::Validator.validate!(input[:last_modified_time_before], ::Time, context: "#{context}[:last_modified_time_before]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
        Hearth::Validator.validate!(input[:status_equals], ::String, context: "#{context}[:status_equals]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
      end
    end

    class ListCompilationJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCompilationJobsOutput, context: context)
        CompilationJobSummaries.validate!(input[:compilation_job_summaries], context: "#{context}[:compilation_job_summaries]") unless input[:compilation_job_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListContextsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListContextsInput, context: context)
        Hearth::Validator.validate!(input[:source_uri], ::String, context: "#{context}[:source_uri]")
        Hearth::Validator.validate!(input[:context_type], ::String, context: "#{context}[:context_type]")
        Hearth::Validator.validate!(input[:created_after], ::Time, context: "#{context}[:created_after]")
        Hearth::Validator.validate!(input[:created_before], ::Time, context: "#{context}[:created_before]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListContextsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListContextsOutput, context: context)
        ContextSummaries.validate!(input[:context_summaries], context: "#{context}[:context_summaries]") unless input[:context_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDataQualityJobDefinitionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataQualityJobDefinitionsInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
      end
    end

    class ListDataQualityJobDefinitionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataQualityJobDefinitionsOutput, context: context)
        MonitoringJobDefinitionSummaryList.validate!(input[:job_definition_summaries], context: "#{context}[:job_definition_summaries]") unless input[:job_definition_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDeviceFleetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeviceFleetsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:last_modified_time_after], ::Time, context: "#{context}[:last_modified_time_after]")
        Hearth::Validator.validate!(input[:last_modified_time_before], ::Time, context: "#{context}[:last_modified_time_before]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
      end
    end

    class ListDeviceFleetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeviceFleetsOutput, context: context)
        DeviceFleetSummaries.validate!(input[:device_fleet_summaries], context: "#{context}[:device_fleet_summaries]") unless input[:device_fleet_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDevicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDevicesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:latest_heartbeat_after], ::Time, context: "#{context}[:latest_heartbeat_after]")
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
        Hearth::Validator.validate!(input[:device_fleet_name], ::String, context: "#{context}[:device_fleet_name]")
      end
    end

    class ListDevicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDevicesOutput, context: context)
        DeviceSummaries.validate!(input[:device_summaries], context: "#{context}[:device_summaries]") unless input[:device_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDomainsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDomainsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDomainsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDomainsOutput, context: context)
        DomainList.validate!(input[:domains], context: "#{context}[:domains]") unless input[:domains].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEdgePackagingJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEdgePackagingJobsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:last_modified_time_after], ::Time, context: "#{context}[:last_modified_time_after]")
        Hearth::Validator.validate!(input[:last_modified_time_before], ::Time, context: "#{context}[:last_modified_time_before]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
        Hearth::Validator.validate!(input[:model_name_contains], ::String, context: "#{context}[:model_name_contains]")
        Hearth::Validator.validate!(input[:status_equals], ::String, context: "#{context}[:status_equals]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
      end
    end

    class ListEdgePackagingJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEdgePackagingJobsOutput, context: context)
        EdgePackagingJobSummaries.validate!(input[:edge_packaging_job_summaries], context: "#{context}[:edge_packaging_job_summaries]") unless input[:edge_packaging_job_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEndpointConfigsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEndpointConfigsInput, context: context)
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
      end
    end

    class ListEndpointConfigsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEndpointConfigsOutput, context: context)
        EndpointConfigSummaryList.validate!(input[:endpoint_configs], context: "#{context}[:endpoint_configs]") unless input[:endpoint_configs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEndpointsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEndpointsInput, context: context)
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
        Hearth::Validator.validate!(input[:last_modified_time_before], ::Time, context: "#{context}[:last_modified_time_before]")
        Hearth::Validator.validate!(input[:last_modified_time_after], ::Time, context: "#{context}[:last_modified_time_after]")
        Hearth::Validator.validate!(input[:status_equals], ::String, context: "#{context}[:status_equals]")
      end
    end

    class ListEndpointsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEndpointsOutput, context: context)
        EndpointSummaryList.validate!(input[:endpoints], context: "#{context}[:endpoints]") unless input[:endpoints].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListExperimentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExperimentsInput, context: context)
        Hearth::Validator.validate!(input[:created_after], ::Time, context: "#{context}[:created_after]")
        Hearth::Validator.validate!(input[:created_before], ::Time, context: "#{context}[:created_before]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListExperimentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExperimentsOutput, context: context)
        ExperimentSummaries.validate!(input[:experiment_summaries], context: "#{context}[:experiment_summaries]") unless input[:experiment_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFeatureGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFeatureGroupsInput, context: context)
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
        Hearth::Validator.validate!(input[:feature_group_status_equals], ::String, context: "#{context}[:feature_group_status_equals]")
        Hearth::Validator.validate!(input[:offline_store_status_equals], ::String, context: "#{context}[:offline_store_status_equals]")
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFeatureGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFeatureGroupsOutput, context: context)
        FeatureGroupSummaries.validate!(input[:feature_group_summaries], context: "#{context}[:feature_group_summaries]") unless input[:feature_group_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFlowDefinitionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFlowDefinitionsInput, context: context)
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListFlowDefinitionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFlowDefinitionsOutput, context: context)
        FlowDefinitionSummaries.validate!(input[:flow_definition_summaries], context: "#{context}[:flow_definition_summaries]") unless input[:flow_definition_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListHumanTaskUisInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHumanTaskUisInput, context: context)
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListHumanTaskUisOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHumanTaskUisOutput, context: context)
        HumanTaskUiSummaries.validate!(input[:human_task_ui_summaries], context: "#{context}[:human_task_ui_summaries]") unless input[:human_task_ui_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListHyperParameterTuningJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHyperParameterTuningJobsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:last_modified_time_after], ::Time, context: "#{context}[:last_modified_time_after]")
        Hearth::Validator.validate!(input[:last_modified_time_before], ::Time, context: "#{context}[:last_modified_time_before]")
        Hearth::Validator.validate!(input[:status_equals], ::String, context: "#{context}[:status_equals]")
      end
    end

    class ListHyperParameterTuningJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHyperParameterTuningJobsOutput, context: context)
        HyperParameterTuningJobSummaries.validate!(input[:hyper_parameter_tuning_job_summaries], context: "#{context}[:hyper_parameter_tuning_job_summaries]") unless input[:hyper_parameter_tuning_job_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListImageVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListImageVersionsInput, context: context)
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:image_name], ::String, context: "#{context}[:image_name]")
        Hearth::Validator.validate!(input[:last_modified_time_after], ::Time, context: "#{context}[:last_modified_time_after]")
        Hearth::Validator.validate!(input[:last_modified_time_before], ::Time, context: "#{context}[:last_modified_time_before]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
      end
    end

    class ListImageVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListImageVersionsOutput, context: context)
        ImageVersions.validate!(input[:image_versions], context: "#{context}[:image_versions]") unless input[:image_versions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListImagesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListImagesInput, context: context)
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:last_modified_time_after], ::Time, context: "#{context}[:last_modified_time_after]")
        Hearth::Validator.validate!(input[:last_modified_time_before], ::Time, context: "#{context}[:last_modified_time_before]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
      end
    end

    class ListImagesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListImagesOutput, context: context)
        Images.validate!(input[:images], context: "#{context}[:images]") unless input[:images].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInferenceRecommendationsJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInferenceRecommendationsJobsInput, context: context)
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:last_modified_time_after], ::Time, context: "#{context}[:last_modified_time_after]")
        Hearth::Validator.validate!(input[:last_modified_time_before], ::Time, context: "#{context}[:last_modified_time_before]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
        Hearth::Validator.validate!(input[:status_equals], ::String, context: "#{context}[:status_equals]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListInferenceRecommendationsJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInferenceRecommendationsJobsOutput, context: context)
        InferenceRecommendationsJobs.validate!(input[:inference_recommendations_jobs], context: "#{context}[:inference_recommendations_jobs]") unless input[:inference_recommendations_jobs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLabelingJobsForWorkteamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLabelingJobsForWorkteamInput, context: context)
        Hearth::Validator.validate!(input[:workteam_arn], ::String, context: "#{context}[:workteam_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:job_reference_code_contains], ::String, context: "#{context}[:job_reference_code_contains]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
      end
    end

    class ListLabelingJobsForWorkteamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLabelingJobsForWorkteamOutput, context: context)
        LabelingJobForWorkteamSummaryList.validate!(input[:labeling_job_summary_list], context: "#{context}[:labeling_job_summary_list]") unless input[:labeling_job_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLabelingJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLabelingJobsInput, context: context)
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:last_modified_time_after], ::Time, context: "#{context}[:last_modified_time_after]")
        Hearth::Validator.validate!(input[:last_modified_time_before], ::Time, context: "#{context}[:last_modified_time_before]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:status_equals], ::String, context: "#{context}[:status_equals]")
      end
    end

    class ListLabelingJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLabelingJobsOutput, context: context)
        LabelingJobSummaryList.validate!(input[:labeling_job_summary_list], context: "#{context}[:labeling_job_summary_list]") unless input[:labeling_job_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLineageEntityParameterKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListLineageGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLineageGroupsInput, context: context)
        Hearth::Validator.validate!(input[:created_after], ::Time, context: "#{context}[:created_after]")
        Hearth::Validator.validate!(input[:created_before], ::Time, context: "#{context}[:created_before]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListLineageGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLineageGroupsOutput, context: context)
        LineageGroupSummaries.validate!(input[:lineage_group_summaries], context: "#{context}[:lineage_group_summaries]") unless input[:lineage_group_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListModelBiasJobDefinitionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListModelBiasJobDefinitionsInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
      end
    end

    class ListModelBiasJobDefinitionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListModelBiasJobDefinitionsOutput, context: context)
        MonitoringJobDefinitionSummaryList.validate!(input[:job_definition_summaries], context: "#{context}[:job_definition_summaries]") unless input[:job_definition_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListModelExplainabilityJobDefinitionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListModelExplainabilityJobDefinitionsInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
      end
    end

    class ListModelExplainabilityJobDefinitionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListModelExplainabilityJobDefinitionsOutput, context: context)
        MonitoringJobDefinitionSummaryList.validate!(input[:job_definition_summaries], context: "#{context}[:job_definition_summaries]") unless input[:job_definition_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListModelMetadataInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListModelMetadataInput, context: context)
        ModelMetadataSearchExpression.validate!(input[:search_expression], context: "#{context}[:search_expression]") unless input[:search_expression].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListModelMetadataOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListModelMetadataOutput, context: context)
        ModelMetadataSummaries.validate!(input[:model_metadata_summaries], context: "#{context}[:model_metadata_summaries]") unless input[:model_metadata_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListModelPackageGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListModelPackageGroupsInput, context: context)
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
      end
    end

    class ListModelPackageGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListModelPackageGroupsOutput, context: context)
        ModelPackageGroupSummaryList.validate!(input[:model_package_group_summary_list], context: "#{context}[:model_package_group_summary_list]") unless input[:model_package_group_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListModelPackagesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListModelPackagesInput, context: context)
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
        Hearth::Validator.validate!(input[:model_approval_status], ::String, context: "#{context}[:model_approval_status]")
        Hearth::Validator.validate!(input[:model_package_group_name], ::String, context: "#{context}[:model_package_group_name]")
        Hearth::Validator.validate!(input[:model_package_type], ::String, context: "#{context}[:model_package_type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
      end
    end

    class ListModelPackagesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListModelPackagesOutput, context: context)
        ModelPackageSummaryList.validate!(input[:model_package_summary_list], context: "#{context}[:model_package_summary_list]") unless input[:model_package_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListModelQualityJobDefinitionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListModelQualityJobDefinitionsInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
      end
    end

    class ListModelQualityJobDefinitionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListModelQualityJobDefinitionsOutput, context: context)
        MonitoringJobDefinitionSummaryList.validate!(input[:job_definition_summaries], context: "#{context}[:job_definition_summaries]") unless input[:job_definition_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListModelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListModelsInput, context: context)
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
      end
    end

    class ListModelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListModelsOutput, context: context)
        ModelSummaryList.validate!(input[:models], context: "#{context}[:models]") unless input[:models].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMonitoringExecutionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMonitoringExecutionsInput, context: context)
        Hearth::Validator.validate!(input[:monitoring_schedule_name], ::String, context: "#{context}[:monitoring_schedule_name]")
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:scheduled_time_before], ::Time, context: "#{context}[:scheduled_time_before]")
        Hearth::Validator.validate!(input[:scheduled_time_after], ::Time, context: "#{context}[:scheduled_time_after]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
        Hearth::Validator.validate!(input[:last_modified_time_before], ::Time, context: "#{context}[:last_modified_time_before]")
        Hearth::Validator.validate!(input[:last_modified_time_after], ::Time, context: "#{context}[:last_modified_time_after]")
        Hearth::Validator.validate!(input[:status_equals], ::String, context: "#{context}[:status_equals]")
        Hearth::Validator.validate!(input[:monitoring_job_definition_name], ::String, context: "#{context}[:monitoring_job_definition_name]")
        Hearth::Validator.validate!(input[:monitoring_type_equals], ::String, context: "#{context}[:monitoring_type_equals]")
      end
    end

    class ListMonitoringExecutionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMonitoringExecutionsOutput, context: context)
        MonitoringExecutionSummaryList.validate!(input[:monitoring_execution_summaries], context: "#{context}[:monitoring_execution_summaries]") unless input[:monitoring_execution_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMonitoringSchedulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMonitoringSchedulesInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
        Hearth::Validator.validate!(input[:last_modified_time_before], ::Time, context: "#{context}[:last_modified_time_before]")
        Hearth::Validator.validate!(input[:last_modified_time_after], ::Time, context: "#{context}[:last_modified_time_after]")
        Hearth::Validator.validate!(input[:status_equals], ::String, context: "#{context}[:status_equals]")
        Hearth::Validator.validate!(input[:monitoring_job_definition_name], ::String, context: "#{context}[:monitoring_job_definition_name]")
        Hearth::Validator.validate!(input[:monitoring_type_equals], ::String, context: "#{context}[:monitoring_type_equals]")
      end
    end

    class ListMonitoringSchedulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMonitoringSchedulesOutput, context: context)
        MonitoringScheduleSummaryList.validate!(input[:monitoring_schedule_summaries], context: "#{context}[:monitoring_schedule_summaries]") unless input[:monitoring_schedule_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListNotebookInstanceLifecycleConfigsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNotebookInstanceLifecycleConfigsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
        Hearth::Validator.validate!(input[:last_modified_time_before], ::Time, context: "#{context}[:last_modified_time_before]")
        Hearth::Validator.validate!(input[:last_modified_time_after], ::Time, context: "#{context}[:last_modified_time_after]")
      end
    end

    class ListNotebookInstanceLifecycleConfigsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNotebookInstanceLifecycleConfigsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        NotebookInstanceLifecycleConfigSummaryList.validate!(input[:notebook_instance_lifecycle_configs], context: "#{context}[:notebook_instance_lifecycle_configs]") unless input[:notebook_instance_lifecycle_configs].nil?
      end
    end

    class ListNotebookInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNotebookInstancesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
        Hearth::Validator.validate!(input[:last_modified_time_before], ::Time, context: "#{context}[:last_modified_time_before]")
        Hearth::Validator.validate!(input[:last_modified_time_after], ::Time, context: "#{context}[:last_modified_time_after]")
        Hearth::Validator.validate!(input[:status_equals], ::String, context: "#{context}[:status_equals]")
        Hearth::Validator.validate!(input[:notebook_instance_lifecycle_config_name_contains], ::String, context: "#{context}[:notebook_instance_lifecycle_config_name_contains]")
        Hearth::Validator.validate!(input[:default_code_repository_contains], ::String, context: "#{context}[:default_code_repository_contains]")
        Hearth::Validator.validate!(input[:additional_code_repository_equals], ::String, context: "#{context}[:additional_code_repository_equals]")
      end
    end

    class ListNotebookInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNotebookInstancesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        NotebookInstanceSummaryList.validate!(input[:notebook_instances], context: "#{context}[:notebook_instances]") unless input[:notebook_instances].nil?
      end
    end

    class ListPipelineExecutionStepsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPipelineExecutionStepsInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_execution_arn], ::String, context: "#{context}[:pipeline_execution_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
      end
    end

    class ListPipelineExecutionStepsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPipelineExecutionStepsOutput, context: context)
        PipelineExecutionStepList.validate!(input[:pipeline_execution_steps], context: "#{context}[:pipeline_execution_steps]") unless input[:pipeline_execution_steps].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPipelineExecutionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPipelineExecutionsInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_name], ::String, context: "#{context}[:pipeline_name]")
        Hearth::Validator.validate!(input[:created_after], ::Time, context: "#{context}[:created_after]")
        Hearth::Validator.validate!(input[:created_before], ::Time, context: "#{context}[:created_before]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListPipelineExecutionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPipelineExecutionsOutput, context: context)
        PipelineExecutionSummaryList.validate!(input[:pipeline_execution_summaries], context: "#{context}[:pipeline_execution_summaries]") unless input[:pipeline_execution_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPipelineParametersForExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPipelineParametersForExecutionInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_execution_arn], ::String, context: "#{context}[:pipeline_execution_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListPipelineParametersForExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPipelineParametersForExecutionOutput, context: context)
        ParameterList.validate!(input[:pipeline_parameters], context: "#{context}[:pipeline_parameters]") unless input[:pipeline_parameters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPipelinesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPipelinesInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_name_prefix], ::String, context: "#{context}[:pipeline_name_prefix]")
        Hearth::Validator.validate!(input[:created_after], ::Time, context: "#{context}[:created_after]")
        Hearth::Validator.validate!(input[:created_before], ::Time, context: "#{context}[:created_before]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListPipelinesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPipelinesOutput, context: context)
        PipelineSummaryList.validate!(input[:pipeline_summaries], context: "#{context}[:pipeline_summaries]") unless input[:pipeline_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListProcessingJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProcessingJobsInput, context: context)
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:last_modified_time_after], ::Time, context: "#{context}[:last_modified_time_after]")
        Hearth::Validator.validate!(input[:last_modified_time_before], ::Time, context: "#{context}[:last_modified_time_before]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
        Hearth::Validator.validate!(input[:status_equals], ::String, context: "#{context}[:status_equals]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListProcessingJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProcessingJobsOutput, context: context)
        ProcessingJobSummaries.validate!(input[:processing_job_summaries], context: "#{context}[:processing_job_summaries]") unless input[:processing_job_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListProjectsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProjectsInput, context: context)
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
      end
    end

    class ListProjectsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProjectsOutput, context: context)
        ProjectSummaryList.validate!(input[:project_summary_list], context: "#{context}[:project_summary_list]") unless input[:project_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStudioLifecycleConfigsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStudioLifecycleConfigsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
        Hearth::Validator.validate!(input[:app_type_equals], ::String, context: "#{context}[:app_type_equals]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
        Hearth::Validator.validate!(input[:modified_time_before], ::Time, context: "#{context}[:modified_time_before]")
        Hearth::Validator.validate!(input[:modified_time_after], ::Time, context: "#{context}[:modified_time_after]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
      end
    end

    class ListStudioLifecycleConfigsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStudioLifecycleConfigsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        StudioLifecycleConfigsList.validate!(input[:studio_lifecycle_configs], context: "#{context}[:studio_lifecycle_configs]") unless input[:studio_lifecycle_configs].nil?
      end
    end

    class ListSubscribedWorkteamsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSubscribedWorkteamsInput, context: context)
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListSubscribedWorkteamsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSubscribedWorkteamsOutput, context: context)
        SubscribedWorkteams.validate!(input[:subscribed_workteams], context: "#{context}[:subscribed_workteams]") unless input[:subscribed_workteams].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsOutput, context: context)
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTrainingJobsForHyperParameterTuningJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTrainingJobsForHyperParameterTuningJobInput, context: context)
        Hearth::Validator.validate!(input[:hyper_parameter_tuning_job_name], ::String, context: "#{context}[:hyper_parameter_tuning_job_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:status_equals], ::String, context: "#{context}[:status_equals]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
      end
    end

    class ListTrainingJobsForHyperParameterTuningJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTrainingJobsForHyperParameterTuningJobOutput, context: context)
        HyperParameterTrainingJobSummaries.validate!(input[:training_job_summaries], context: "#{context}[:training_job_summaries]") unless input[:training_job_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTrainingJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTrainingJobsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:last_modified_time_after], ::Time, context: "#{context}[:last_modified_time_after]")
        Hearth::Validator.validate!(input[:last_modified_time_before], ::Time, context: "#{context}[:last_modified_time_before]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
        Hearth::Validator.validate!(input[:status_equals], ::String, context: "#{context}[:status_equals]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
      end
    end

    class ListTrainingJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTrainingJobsOutput, context: context)
        TrainingJobSummaries.validate!(input[:training_job_summaries], context: "#{context}[:training_job_summaries]") unless input[:training_job_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTransformJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTransformJobsInput, context: context)
        Hearth::Validator.validate!(input[:creation_time_after], ::Time, context: "#{context}[:creation_time_after]")
        Hearth::Validator.validate!(input[:creation_time_before], ::Time, context: "#{context}[:creation_time_before]")
        Hearth::Validator.validate!(input[:last_modified_time_after], ::Time, context: "#{context}[:last_modified_time_after]")
        Hearth::Validator.validate!(input[:last_modified_time_before], ::Time, context: "#{context}[:last_modified_time_before]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
        Hearth::Validator.validate!(input[:status_equals], ::String, context: "#{context}[:status_equals]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTransformJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTransformJobsOutput, context: context)
        TransformJobSummaries.validate!(input[:transform_job_summaries], context: "#{context}[:transform_job_summaries]") unless input[:transform_job_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTrialComponentKey256
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListTrialComponentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTrialComponentsInput, context: context)
        Hearth::Validator.validate!(input[:experiment_name], ::String, context: "#{context}[:experiment_name]")
        Hearth::Validator.validate!(input[:trial_name], ::String, context: "#{context}[:trial_name]")
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:created_after], ::Time, context: "#{context}[:created_after]")
        Hearth::Validator.validate!(input[:created_before], ::Time, context: "#{context}[:created_before]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTrialComponentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTrialComponentsOutput, context: context)
        TrialComponentSummaries.validate!(input[:trial_component_summaries], context: "#{context}[:trial_component_summaries]") unless input[:trial_component_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTrialsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTrialsInput, context: context)
        Hearth::Validator.validate!(input[:experiment_name], ::String, context: "#{context}[:experiment_name]")
        Hearth::Validator.validate!(input[:trial_component_name], ::String, context: "#{context}[:trial_component_name]")
        Hearth::Validator.validate!(input[:created_after], ::Time, context: "#{context}[:created_after]")
        Hearth::Validator.validate!(input[:created_before], ::Time, context: "#{context}[:created_before]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTrialsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTrialsOutput, context: context)
        TrialSummaries.validate!(input[:trial_summaries], context: "#{context}[:trial_summaries]") unless input[:trial_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListUserProfilesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUserProfilesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:domain_id_equals], ::String, context: "#{context}[:domain_id_equals]")
        Hearth::Validator.validate!(input[:user_profile_name_contains], ::String, context: "#{context}[:user_profile_name_contains]")
      end
    end

    class ListUserProfilesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUserProfilesOutput, context: context)
        UserProfileList.validate!(input[:user_profiles], context: "#{context}[:user_profiles]") unless input[:user_profiles].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListWorkforcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorkforcesInput, context: context)
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListWorkforcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorkforcesOutput, context: context)
        Workforces.validate!(input[:workforces], context: "#{context}[:workforces]") unless input[:workforces].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListWorkteamsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorkteamsInput, context: context)
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:name_contains], ::String, context: "#{context}[:name_contains]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListWorkteamsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorkteamsOutput, context: context)
        Workteams.validate!(input[:workteams], context: "#{context}[:workteams]") unless input[:workteams].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class MemberDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MemberDefinition, context: context)
        CognitoMemberDefinition.validate!(input[:cognito_member_definition], context: "#{context}[:cognito_member_definition]") unless input[:cognito_member_definition].nil?
        OidcMemberDefinition.validate!(input[:oidc_member_definition], context: "#{context}[:oidc_member_definition]") unless input[:oidc_member_definition].nil?
      end
    end

    class MemberDefinitions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MemberDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetadataProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetadataProperties, context: context)
        Hearth::Validator.validate!(input[:commit_id], ::String, context: "#{context}[:commit_id]")
        Hearth::Validator.validate!(input[:repository], ::String, context: "#{context}[:repository]")
        Hearth::Validator.validate!(input[:generated_by], ::String, context: "#{context}[:generated_by]")
        Hearth::Validator.validate!(input[:project_id], ::String, context: "#{context}[:project_id]")
      end
    end

    class MetricData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricData, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
      end
    end

    class MetricDataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MetricDatum.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricDatum
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricDatum, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:set], ::String, context: "#{context}[:set]")
        Hearth::Validator.validate!(input[:standard_metric_name], ::String, context: "#{context}[:standard_metric_name]")
      end
    end

    class MetricDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricDefinition, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:regex], ::String, context: "#{context}[:regex]")
      end
    end

    class MetricDefinitionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MetricDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricsSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricsSource, context: context)
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:content_digest], ::String, context: "#{context}[:content_digest]")
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
      end
    end

    class ModelArtifacts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelArtifacts, context: context)
        Hearth::Validator.validate!(input[:s3_model_artifacts], ::String, context: "#{context}[:s3_model_artifacts]")
      end
    end

    class ModelBiasAppSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelBiasAppSpecification, context: context)
        Hearth::Validator.validate!(input[:image_uri], ::String, context: "#{context}[:image_uri]")
        Hearth::Validator.validate!(input[:config_uri], ::String, context: "#{context}[:config_uri]")
        MonitoringEnvironmentMap.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
      end
    end

    class ModelBiasBaselineConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelBiasBaselineConfig, context: context)
        Hearth::Validator.validate!(input[:baselining_job_name], ::String, context: "#{context}[:baselining_job_name]")
        MonitoringConstraintsResource.validate!(input[:constraints_resource], context: "#{context}[:constraints_resource]") unless input[:constraints_resource].nil?
      end
    end

    class ModelBiasJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelBiasJobInput, context: context)
        EndpointInput.validate!(input[:endpoint_input], context: "#{context}[:endpoint_input]") unless input[:endpoint_input].nil?
        MonitoringGroundTruthS3Input.validate!(input[:ground_truth_s3_input], context: "#{context}[:ground_truth_s3_input]") unless input[:ground_truth_s3_input].nil?
      end
    end

    class ModelClientConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelClientConfig, context: context)
        Hearth::Validator.validate!(input[:invocations_timeout_in_seconds], ::Integer, context: "#{context}[:invocations_timeout_in_seconds]")
        Hearth::Validator.validate!(input[:invocations_max_retries], ::Integer, context: "#{context}[:invocations_max_retries]")
      end
    end

    class ModelConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelConfiguration, context: context)
        Hearth::Validator.validate!(input[:inference_specification_name], ::String, context: "#{context}[:inference_specification_name]")
        EnvironmentParameters.validate!(input[:environment_parameters], context: "#{context}[:environment_parameters]") unless input[:environment_parameters].nil?
      end
    end

    class ModelDataQuality
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelDataQuality, context: context)
        MetricsSource.validate!(input[:statistics], context: "#{context}[:statistics]") unless input[:statistics].nil?
        MetricsSource.validate!(input[:constraints], context: "#{context}[:constraints]") unless input[:constraints].nil?
      end
    end

    class ModelDeployConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelDeployConfig, context: context)
        Hearth::Validator.validate!(input[:auto_generate_endpoint_name], ::TrueClass, ::FalseClass, context: "#{context}[:auto_generate_endpoint_name]")
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
      end
    end

    class ModelDeployResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelDeployResult, context: context)
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
      end
    end

    class ModelDigests
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelDigests, context: context)
        Hearth::Validator.validate!(input[:artifact_digest], ::String, context: "#{context}[:artifact_digest]")
      end
    end

    class ModelExplainabilityAppSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelExplainabilityAppSpecification, context: context)
        Hearth::Validator.validate!(input[:image_uri], ::String, context: "#{context}[:image_uri]")
        Hearth::Validator.validate!(input[:config_uri], ::String, context: "#{context}[:config_uri]")
        MonitoringEnvironmentMap.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
      end
    end

    class ModelExplainabilityBaselineConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelExplainabilityBaselineConfig, context: context)
        Hearth::Validator.validate!(input[:baselining_job_name], ::String, context: "#{context}[:baselining_job_name]")
        MonitoringConstraintsResource.validate!(input[:constraints_resource], context: "#{context}[:constraints_resource]") unless input[:constraints_resource].nil?
      end
    end

    class ModelExplainabilityJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelExplainabilityJobInput, context: context)
        EndpointInput.validate!(input[:endpoint_input], context: "#{context}[:endpoint_input]") unless input[:endpoint_input].nil?
      end
    end

    class ModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelInput, context: context)
        Hearth::Validator.validate!(input[:data_input_config], ::String, context: "#{context}[:data_input_config]")
      end
    end

    class ModelLatencyThreshold
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelLatencyThreshold, context: context)
        Hearth::Validator.validate!(input[:percentile], ::String, context: "#{context}[:percentile]")
        Hearth::Validator.validate!(input[:value_in_milliseconds], ::Integer, context: "#{context}[:value_in_milliseconds]")
      end
    end

    class ModelLatencyThresholds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ModelLatencyThreshold.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ModelMetadataFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelMetadataFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ModelMetadataFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ModelMetadataFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ModelMetadataSearchExpression
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelMetadataSearchExpression, context: context)
        ModelMetadataFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ModelMetadataSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ModelMetadataSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ModelMetadataSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelMetadataSummary, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:framework], ::String, context: "#{context}[:framework]")
        Hearth::Validator.validate!(input[:task], ::String, context: "#{context}[:task]")
        Hearth::Validator.validate!(input[:model], ::String, context: "#{context}[:model]")
        Hearth::Validator.validate!(input[:framework_version], ::String, context: "#{context}[:framework_version]")
      end
    end

    class ModelMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelMetrics, context: context)
        ModelQuality.validate!(input[:model_quality], context: "#{context}[:model_quality]") unless input[:model_quality].nil?
        ModelDataQuality.validate!(input[:model_data_quality], context: "#{context}[:model_data_quality]") unless input[:model_data_quality].nil?
        Bias.validate!(input[:bias], context: "#{context}[:bias]") unless input[:bias].nil?
        Explainability.validate!(input[:explainability], context: "#{context}[:explainability]") unless input[:explainability].nil?
      end
    end

    class ModelPackage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelPackage, context: context)
        Hearth::Validator.validate!(input[:model_package_name], ::String, context: "#{context}[:model_package_name]")
        Hearth::Validator.validate!(input[:model_package_group_name], ::String, context: "#{context}[:model_package_group_name]")
        Hearth::Validator.validate!(input[:model_package_version], ::Integer, context: "#{context}[:model_package_version]")
        Hearth::Validator.validate!(input[:model_package_arn], ::String, context: "#{context}[:model_package_arn]")
        Hearth::Validator.validate!(input[:model_package_description], ::String, context: "#{context}[:model_package_description]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        InferenceSpecification.validate!(input[:inference_specification], context: "#{context}[:inference_specification]") unless input[:inference_specification].nil?
        SourceAlgorithmSpecification.validate!(input[:source_algorithm_specification], context: "#{context}[:source_algorithm_specification]") unless input[:source_algorithm_specification].nil?
        ModelPackageValidationSpecification.validate!(input[:validation_specification], context: "#{context}[:validation_specification]") unless input[:validation_specification].nil?
        Hearth::Validator.validate!(input[:model_package_status], ::String, context: "#{context}[:model_package_status]")
        ModelPackageStatusDetails.validate!(input[:model_package_status_details], context: "#{context}[:model_package_status_details]") unless input[:model_package_status_details].nil?
        Hearth::Validator.validate!(input[:certify_for_marketplace], ::TrueClass, ::FalseClass, context: "#{context}[:certify_for_marketplace]")
        Hearth::Validator.validate!(input[:model_approval_status], ::String, context: "#{context}[:model_approval_status]")
        UserContext.validate!(input[:created_by], context: "#{context}[:created_by]") unless input[:created_by].nil?
        MetadataProperties.validate!(input[:metadata_properties], context: "#{context}[:metadata_properties]") unless input[:metadata_properties].nil?
        ModelMetrics.validate!(input[:model_metrics], context: "#{context}[:model_metrics]") unless input[:model_metrics].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        UserContext.validate!(input[:last_modified_by], context: "#{context}[:last_modified_by]") unless input[:last_modified_by].nil?
        Hearth::Validator.validate!(input[:approval_description], ::String, context: "#{context}[:approval_description]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:task], ::String, context: "#{context}[:task]")
        Hearth::Validator.validate!(input[:sample_payload_url], ::String, context: "#{context}[:sample_payload_url]")
        AdditionalInferenceSpecifications.validate!(input[:additional_inference_specifications], context: "#{context}[:additional_inference_specifications]") unless input[:additional_inference_specifications].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        CustomerMetadataMap.validate!(input[:customer_metadata_properties], context: "#{context}[:customer_metadata_properties]") unless input[:customer_metadata_properties].nil?
        DriftCheckBaselines.validate!(input[:drift_check_baselines], context: "#{context}[:drift_check_baselines]") unless input[:drift_check_baselines].nil?
      end
    end

    class ModelPackageArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ModelPackageContainerDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelPackageContainerDefinition, context: context)
        Hearth::Validator.validate!(input[:container_hostname], ::String, context: "#{context}[:container_hostname]")
        Hearth::Validator.validate!(input[:image], ::String, context: "#{context}[:image]")
        Hearth::Validator.validate!(input[:image_digest], ::String, context: "#{context}[:image_digest]")
        Hearth::Validator.validate!(input[:model_data_url], ::String, context: "#{context}[:model_data_url]")
        Hearth::Validator.validate!(input[:product_id], ::String, context: "#{context}[:product_id]")
        EnvironmentMap.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        ModelInput.validate!(input[:model_input], context: "#{context}[:model_input]") unless input[:model_input].nil?
        Hearth::Validator.validate!(input[:framework], ::String, context: "#{context}[:framework]")
        Hearth::Validator.validate!(input[:framework_version], ::String, context: "#{context}[:framework_version]")
        Hearth::Validator.validate!(input[:nearest_model_name], ::String, context: "#{context}[:nearest_model_name]")
      end
    end

    class ModelPackageContainerDefinitionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ModelPackageContainerDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ModelPackageGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelPackageGroup, context: context)
        Hearth::Validator.validate!(input[:model_package_group_name], ::String, context: "#{context}[:model_package_group_name]")
        Hearth::Validator.validate!(input[:model_package_group_arn], ::String, context: "#{context}[:model_package_group_arn]")
        Hearth::Validator.validate!(input[:model_package_group_description], ::String, context: "#{context}[:model_package_group_description]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        UserContext.validate!(input[:created_by], context: "#{context}[:created_by]") unless input[:created_by].nil?
        Hearth::Validator.validate!(input[:model_package_group_status], ::String, context: "#{context}[:model_package_group_status]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ModelPackageGroupSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelPackageGroupSummary, context: context)
        Hearth::Validator.validate!(input[:model_package_group_name], ::String, context: "#{context}[:model_package_group_name]")
        Hearth::Validator.validate!(input[:model_package_group_arn], ::String, context: "#{context}[:model_package_group_arn]")
        Hearth::Validator.validate!(input[:model_package_group_description], ::String, context: "#{context}[:model_package_group_description]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:model_package_group_status], ::String, context: "#{context}[:model_package_group_status]")
      end
    end

    class ModelPackageGroupSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ModelPackageGroupSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ModelPackageStatusDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelPackageStatusDetails, context: context)
        ModelPackageStatusItemList.validate!(input[:validation_statuses], context: "#{context}[:validation_statuses]") unless input[:validation_statuses].nil?
        ModelPackageStatusItemList.validate!(input[:image_scan_statuses], context: "#{context}[:image_scan_statuses]") unless input[:image_scan_statuses].nil?
      end
    end

    class ModelPackageStatusItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelPackageStatusItem, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class ModelPackageStatusItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ModelPackageStatusItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ModelPackageSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          BatchDescribeModelPackageSummary.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ModelPackageSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelPackageSummary, context: context)
        Hearth::Validator.validate!(input[:model_package_name], ::String, context: "#{context}[:model_package_name]")
        Hearth::Validator.validate!(input[:model_package_group_name], ::String, context: "#{context}[:model_package_group_name]")
        Hearth::Validator.validate!(input[:model_package_version], ::Integer, context: "#{context}[:model_package_version]")
        Hearth::Validator.validate!(input[:model_package_arn], ::String, context: "#{context}[:model_package_arn]")
        Hearth::Validator.validate!(input[:model_package_description], ::String, context: "#{context}[:model_package_description]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:model_package_status], ::String, context: "#{context}[:model_package_status]")
        Hearth::Validator.validate!(input[:model_approval_status], ::String, context: "#{context}[:model_approval_status]")
      end
    end

    class ModelPackageSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ModelPackageSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ModelPackageValidationProfile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelPackageValidationProfile, context: context)
        Hearth::Validator.validate!(input[:profile_name], ::String, context: "#{context}[:profile_name]")
        TransformJobDefinition.validate!(input[:transform_job_definition], context: "#{context}[:transform_job_definition]") unless input[:transform_job_definition].nil?
      end
    end

    class ModelPackageValidationProfiles
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ModelPackageValidationProfile.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ModelPackageValidationSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelPackageValidationSpecification, context: context)
        Hearth::Validator.validate!(input[:validation_role], ::String, context: "#{context}[:validation_role]")
        ModelPackageValidationProfiles.validate!(input[:validation_profiles], context: "#{context}[:validation_profiles]") unless input[:validation_profiles].nil?
      end
    end

    class ModelQuality
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelQuality, context: context)
        MetricsSource.validate!(input[:statistics], context: "#{context}[:statistics]") unless input[:statistics].nil?
        MetricsSource.validate!(input[:constraints], context: "#{context}[:constraints]") unless input[:constraints].nil?
      end
    end

    class ModelQualityAppSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelQualityAppSpecification, context: context)
        Hearth::Validator.validate!(input[:image_uri], ::String, context: "#{context}[:image_uri]")
        ContainerEntrypoint.validate!(input[:container_entrypoint], context: "#{context}[:container_entrypoint]") unless input[:container_entrypoint].nil?
        MonitoringContainerArguments.validate!(input[:container_arguments], context: "#{context}[:container_arguments]") unless input[:container_arguments].nil?
        Hearth::Validator.validate!(input[:record_preprocessor_source_uri], ::String, context: "#{context}[:record_preprocessor_source_uri]")
        Hearth::Validator.validate!(input[:post_analytics_processor_source_uri], ::String, context: "#{context}[:post_analytics_processor_source_uri]")
        Hearth::Validator.validate!(input[:problem_type], ::String, context: "#{context}[:problem_type]")
        MonitoringEnvironmentMap.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
      end
    end

    class ModelQualityBaselineConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelQualityBaselineConfig, context: context)
        Hearth::Validator.validate!(input[:baselining_job_name], ::String, context: "#{context}[:baselining_job_name]")
        MonitoringConstraintsResource.validate!(input[:constraints_resource], context: "#{context}[:constraints_resource]") unless input[:constraints_resource].nil?
      end
    end

    class ModelQualityJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelQualityJobInput, context: context)
        EndpointInput.validate!(input[:endpoint_input], context: "#{context}[:endpoint_input]") unless input[:endpoint_input].nil?
        MonitoringGroundTruthS3Input.validate!(input[:ground_truth_s3_input], context: "#{context}[:ground_truth_s3_input]") unless input[:ground_truth_s3_input].nil?
      end
    end

    class ModelStepMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelStepMetadata, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class ModelSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModelSummary, context: context)
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
        Hearth::Validator.validate!(input[:model_arn], ::String, context: "#{context}[:model_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class ModelSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ModelSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MonitoringAppSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonitoringAppSpecification, context: context)
        Hearth::Validator.validate!(input[:image_uri], ::String, context: "#{context}[:image_uri]")
        ContainerEntrypoint.validate!(input[:container_entrypoint], context: "#{context}[:container_entrypoint]") unless input[:container_entrypoint].nil?
        MonitoringContainerArguments.validate!(input[:container_arguments], context: "#{context}[:container_arguments]") unless input[:container_arguments].nil?
        Hearth::Validator.validate!(input[:record_preprocessor_source_uri], ::String, context: "#{context}[:record_preprocessor_source_uri]")
        Hearth::Validator.validate!(input[:post_analytics_processor_source_uri], ::String, context: "#{context}[:post_analytics_processor_source_uri]")
      end
    end

    class MonitoringBaselineConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonitoringBaselineConfig, context: context)
        Hearth::Validator.validate!(input[:baselining_job_name], ::String, context: "#{context}[:baselining_job_name]")
        MonitoringConstraintsResource.validate!(input[:constraints_resource], context: "#{context}[:constraints_resource]") unless input[:constraints_resource].nil?
        MonitoringStatisticsResource.validate!(input[:statistics_resource], context: "#{context}[:statistics_resource]") unless input[:statistics_resource].nil?
      end
    end

    class MonitoringClusterConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonitoringClusterConfig, context: context)
        Hearth::Validator.validate!(input[:instance_count], ::Integer, context: "#{context}[:instance_count]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:volume_size_in_gb], ::Integer, context: "#{context}[:volume_size_in_gb]")
        Hearth::Validator.validate!(input[:volume_kms_key_id], ::String, context: "#{context}[:volume_kms_key_id]")
      end
    end

    class MonitoringConstraintsResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonitoringConstraintsResource, context: context)
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
      end
    end

    class MonitoringContainerArguments
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MonitoringEnvironmentMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class MonitoringExecutionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonitoringExecutionSummary, context: context)
        Hearth::Validator.validate!(input[:monitoring_schedule_name], ::String, context: "#{context}[:monitoring_schedule_name]")
        Hearth::Validator.validate!(input[:scheduled_time], ::Time, context: "#{context}[:scheduled_time]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:monitoring_execution_status], ::String, context: "#{context}[:monitoring_execution_status]")
        Hearth::Validator.validate!(input[:processing_job_arn], ::String, context: "#{context}[:processing_job_arn]")
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:monitoring_job_definition_name], ::String, context: "#{context}[:monitoring_job_definition_name]")
        Hearth::Validator.validate!(input[:monitoring_type], ::String, context: "#{context}[:monitoring_type]")
      end
    end

    class MonitoringExecutionSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MonitoringExecutionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MonitoringGroundTruthS3Input
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonitoringGroundTruthS3Input, context: context)
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
      end
    end

    class MonitoringInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonitoringInput, context: context)
        EndpointInput.validate!(input[:endpoint_input], context: "#{context}[:endpoint_input]") unless input[:endpoint_input].nil?
      end
    end

    class MonitoringInputs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MonitoringInput.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MonitoringJobDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonitoringJobDefinition, context: context)
        MonitoringBaselineConfig.validate!(input[:baseline_config], context: "#{context}[:baseline_config]") unless input[:baseline_config].nil?
        MonitoringInputs.validate!(input[:monitoring_inputs], context: "#{context}[:monitoring_inputs]") unless input[:monitoring_inputs].nil?
        MonitoringOutputConfig.validate!(input[:monitoring_output_config], context: "#{context}[:monitoring_output_config]") unless input[:monitoring_output_config].nil?
        MonitoringResources.validate!(input[:monitoring_resources], context: "#{context}[:monitoring_resources]") unless input[:monitoring_resources].nil?
        MonitoringAppSpecification.validate!(input[:monitoring_app_specification], context: "#{context}[:monitoring_app_specification]") unless input[:monitoring_app_specification].nil?
        MonitoringStoppingCondition.validate!(input[:stopping_condition], context: "#{context}[:stopping_condition]") unless input[:stopping_condition].nil?
        MonitoringEnvironmentMap.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        NetworkConfig.validate!(input[:network_config], context: "#{context}[:network_config]") unless input[:network_config].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class MonitoringJobDefinitionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonitoringJobDefinitionSummary, context: context)
        Hearth::Validator.validate!(input[:monitoring_job_definition_name], ::String, context: "#{context}[:monitoring_job_definition_name]")
        Hearth::Validator.validate!(input[:monitoring_job_definition_arn], ::String, context: "#{context}[:monitoring_job_definition_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
      end
    end

    class MonitoringJobDefinitionSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MonitoringJobDefinitionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MonitoringNetworkConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonitoringNetworkConfig, context: context)
        Hearth::Validator.validate!(input[:enable_inter_container_traffic_encryption], ::TrueClass, ::FalseClass, context: "#{context}[:enable_inter_container_traffic_encryption]")
        Hearth::Validator.validate!(input[:enable_network_isolation], ::TrueClass, ::FalseClass, context: "#{context}[:enable_network_isolation]")
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
      end
    end

    class MonitoringOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonitoringOutput, context: context)
        MonitoringS3Output.validate!(input[:s3_output], context: "#{context}[:s3_output]") unless input[:s3_output].nil?
      end
    end

    class MonitoringOutputConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonitoringOutputConfig, context: context)
        MonitoringOutputs.validate!(input[:monitoring_outputs], context: "#{context}[:monitoring_outputs]") unless input[:monitoring_outputs].nil?
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class MonitoringOutputs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MonitoringOutput.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MonitoringResources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonitoringResources, context: context)
        MonitoringClusterConfig.validate!(input[:cluster_config], context: "#{context}[:cluster_config]") unless input[:cluster_config].nil?
      end
    end

    class MonitoringS3Output
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonitoringS3Output, context: context)
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
        Hearth::Validator.validate!(input[:local_path], ::String, context: "#{context}[:local_path]")
        Hearth::Validator.validate!(input[:s3_upload_mode], ::String, context: "#{context}[:s3_upload_mode]")
      end
    end

    class MonitoringSchedule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonitoringSchedule, context: context)
        Hearth::Validator.validate!(input[:monitoring_schedule_arn], ::String, context: "#{context}[:monitoring_schedule_arn]")
        Hearth::Validator.validate!(input[:monitoring_schedule_name], ::String, context: "#{context}[:monitoring_schedule_name]")
        Hearth::Validator.validate!(input[:monitoring_schedule_status], ::String, context: "#{context}[:monitoring_schedule_status]")
        Hearth::Validator.validate!(input[:monitoring_type], ::String, context: "#{context}[:monitoring_type]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        MonitoringScheduleConfig.validate!(input[:monitoring_schedule_config], context: "#{context}[:monitoring_schedule_config]") unless input[:monitoring_schedule_config].nil?
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
        MonitoringExecutionSummary.validate!(input[:last_monitoring_execution_summary], context: "#{context}[:last_monitoring_execution_summary]") unless input[:last_monitoring_execution_summary].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class MonitoringScheduleConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonitoringScheduleConfig, context: context)
        ScheduleConfig.validate!(input[:schedule_config], context: "#{context}[:schedule_config]") unless input[:schedule_config].nil?
        MonitoringJobDefinition.validate!(input[:monitoring_job_definition], context: "#{context}[:monitoring_job_definition]") unless input[:monitoring_job_definition].nil?
        Hearth::Validator.validate!(input[:monitoring_job_definition_name], ::String, context: "#{context}[:monitoring_job_definition_name]")
        Hearth::Validator.validate!(input[:monitoring_type], ::String, context: "#{context}[:monitoring_type]")
      end
    end

    class MonitoringScheduleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MonitoringSchedule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MonitoringScheduleSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonitoringScheduleSummary, context: context)
        Hearth::Validator.validate!(input[:monitoring_schedule_name], ::String, context: "#{context}[:monitoring_schedule_name]")
        Hearth::Validator.validate!(input[:monitoring_schedule_arn], ::String, context: "#{context}[:monitoring_schedule_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:monitoring_schedule_status], ::String, context: "#{context}[:monitoring_schedule_status]")
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
        Hearth::Validator.validate!(input[:monitoring_job_definition_name], ::String, context: "#{context}[:monitoring_job_definition_name]")
        Hearth::Validator.validate!(input[:monitoring_type], ::String, context: "#{context}[:monitoring_type]")
      end
    end

    class MonitoringScheduleSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MonitoringScheduleSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MonitoringStatisticsResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonitoringStatisticsResource, context: context)
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
      end
    end

    class MonitoringStoppingCondition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonitoringStoppingCondition, context: context)
        Hearth::Validator.validate!(input[:max_runtime_in_seconds], ::Integer, context: "#{context}[:max_runtime_in_seconds]")
      end
    end

    class MultiModelConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultiModelConfig, context: context)
        Hearth::Validator.validate!(input[:model_cache_setting], ::String, context: "#{context}[:model_cache_setting]")
      end
    end

    class NeoVpcConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NeoVpcConfig, context: context)
        NeoVpcSecurityGroupIds.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        NeoVpcSubnets.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
      end
    end

    class NeoVpcSecurityGroupIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NeoVpcSubnets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NestedFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NestedFilters, context: context)
        Hearth::Validator.validate!(input[:nested_property_name], ::String, context: "#{context}[:nested_property_name]")
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class NestedFiltersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NestedFilters.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NetworkConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkConfig, context: context)
        Hearth::Validator.validate!(input[:enable_inter_container_traffic_encryption], ::TrueClass, ::FalseClass, context: "#{context}[:enable_inter_container_traffic_encryption]")
        Hearth::Validator.validate!(input[:enable_network_isolation], ::TrueClass, ::FalseClass, context: "#{context}[:enable_network_isolation]")
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
      end
    end

    class NotebookInstanceAcceleratorTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NotebookInstanceLifecycleConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NotebookInstanceLifecycleHook.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NotebookInstanceLifecycleConfigSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotebookInstanceLifecycleConfigSummary, context: context)
        Hearth::Validator.validate!(input[:notebook_instance_lifecycle_config_name], ::String, context: "#{context}[:notebook_instance_lifecycle_config_name]")
        Hearth::Validator.validate!(input[:notebook_instance_lifecycle_config_arn], ::String, context: "#{context}[:notebook_instance_lifecycle_config_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
      end
    end

    class NotebookInstanceLifecycleConfigSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NotebookInstanceLifecycleConfigSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NotebookInstanceLifecycleHook
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotebookInstanceLifecycleHook, context: context)
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
      end
    end

    class NotebookInstanceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotebookInstanceSummary, context: context)
        Hearth::Validator.validate!(input[:notebook_instance_name], ::String, context: "#{context}[:notebook_instance_name]")
        Hearth::Validator.validate!(input[:notebook_instance_arn], ::String, context: "#{context}[:notebook_instance_arn]")
        Hearth::Validator.validate!(input[:notebook_instance_status], ::String, context: "#{context}[:notebook_instance_status]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:notebook_instance_lifecycle_config_name], ::String, context: "#{context}[:notebook_instance_lifecycle_config_name]")
        Hearth::Validator.validate!(input[:default_code_repository], ::String, context: "#{context}[:default_code_repository]")
        AdditionalCodeRepositoryNamesOrUrls.validate!(input[:additional_code_repositories], context: "#{context}[:additional_code_repositories]") unless input[:additional_code_repositories].nil?
      end
    end

    class NotebookInstanceSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NotebookInstanceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NotificationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotificationConfiguration, context: context)
        Hearth::Validator.validate!(input[:notification_topic_arn], ::String, context: "#{context}[:notification_topic_arn]")
      end
    end

    class ObjectiveStatusCounters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ObjectiveStatusCounters, context: context)
        Hearth::Validator.validate!(input[:succeeded], ::Integer, context: "#{context}[:succeeded]")
        Hearth::Validator.validate!(input[:pending], ::Integer, context: "#{context}[:pending]")
        Hearth::Validator.validate!(input[:failed], ::Integer, context: "#{context}[:failed]")
      end
    end

    class OfflineStoreConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OfflineStoreConfig, context: context)
        S3StorageConfig.validate!(input[:s3_storage_config], context: "#{context}[:s3_storage_config]") unless input[:s3_storage_config].nil?
        Hearth::Validator.validate!(input[:disable_glue_table_creation], ::TrueClass, ::FalseClass, context: "#{context}[:disable_glue_table_creation]")
        DataCatalogConfig.validate!(input[:data_catalog_config], context: "#{context}[:data_catalog_config]") unless input[:data_catalog_config].nil?
      end
    end

    class OfflineStoreStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OfflineStoreStatus, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:blocked_reason], ::String, context: "#{context}[:blocked_reason]")
      end
    end

    class OidcConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OidcConfig, context: context)
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:client_secret], ::String, context: "#{context}[:client_secret]")
        Hearth::Validator.validate!(input[:issuer], ::String, context: "#{context}[:issuer]")
        Hearth::Validator.validate!(input[:authorization_endpoint], ::String, context: "#{context}[:authorization_endpoint]")
        Hearth::Validator.validate!(input[:token_endpoint], ::String, context: "#{context}[:token_endpoint]")
        Hearth::Validator.validate!(input[:user_info_endpoint], ::String, context: "#{context}[:user_info_endpoint]")
        Hearth::Validator.validate!(input[:logout_endpoint], ::String, context: "#{context}[:logout_endpoint]")
        Hearth::Validator.validate!(input[:jwks_uri], ::String, context: "#{context}[:jwks_uri]")
      end
    end

    class OidcConfigForResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OidcConfigForResponse, context: context)
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:issuer], ::String, context: "#{context}[:issuer]")
        Hearth::Validator.validate!(input[:authorization_endpoint], ::String, context: "#{context}[:authorization_endpoint]")
        Hearth::Validator.validate!(input[:token_endpoint], ::String, context: "#{context}[:token_endpoint]")
        Hearth::Validator.validate!(input[:user_info_endpoint], ::String, context: "#{context}[:user_info_endpoint]")
        Hearth::Validator.validate!(input[:logout_endpoint], ::String, context: "#{context}[:logout_endpoint]")
        Hearth::Validator.validate!(input[:jwks_uri], ::String, context: "#{context}[:jwks_uri]")
      end
    end

    class OidcMemberDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OidcMemberDefinition, context: context)
        Groups.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
      end
    end

    class OnlineStoreConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OnlineStoreConfig, context: context)
        OnlineStoreSecurityConfig.validate!(input[:security_config], context: "#{context}[:security_config]") unless input[:security_config].nil?
        Hearth::Validator.validate!(input[:enable_online_store], ::TrueClass, ::FalseClass, context: "#{context}[:enable_online_store]")
      end
    end

    class OnlineStoreSecurityConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OnlineStoreSecurityConfig, context: context)
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class OutputConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputConfig, context: context)
        Hearth::Validator.validate!(input[:s3_output_location], ::String, context: "#{context}[:s3_output_location]")
        Hearth::Validator.validate!(input[:target_device], ::String, context: "#{context}[:target_device]")
        TargetPlatform.validate!(input[:target_platform], context: "#{context}[:target_platform]") unless input[:target_platform].nil?
        Hearth::Validator.validate!(input[:compiler_options], ::String, context: "#{context}[:compiler_options]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class OutputDataConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputDataConfig, context: context)
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:s3_output_path], ::String, context: "#{context}[:s3_output_path]")
      end
    end

    class OutputParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputParameter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class OutputParameterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OutputParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ParallelismConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParallelismConfiguration, context: context)
        Hearth::Validator.validate!(input[:max_parallel_execution_steps], ::Integer, context: "#{context}[:max_parallel_execution_steps]")
      end
    end

    class Parameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Parameter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ParameterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Parameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ParameterRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterRange, context: context)
        IntegerParameterRangeSpecification.validate!(input[:integer_parameter_range_specification], context: "#{context}[:integer_parameter_range_specification]") unless input[:integer_parameter_range_specification].nil?
        ContinuousParameterRangeSpecification.validate!(input[:continuous_parameter_range_specification], context: "#{context}[:continuous_parameter_range_specification]") unless input[:continuous_parameter_range_specification].nil?
        CategoricalParameterRangeSpecification.validate!(input[:categorical_parameter_range_specification], context: "#{context}[:categorical_parameter_range_specification]") unless input[:categorical_parameter_range_specification].nil?
      end
    end

    class ParameterRanges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterRanges, context: context)
        IntegerParameterRanges.validate!(input[:integer_parameter_ranges], context: "#{context}[:integer_parameter_ranges]") unless input[:integer_parameter_ranges].nil?
        ContinuousParameterRanges.validate!(input[:continuous_parameter_ranges], context: "#{context}[:continuous_parameter_ranges]") unless input[:continuous_parameter_ranges].nil?
        CategoricalParameterRanges.validate!(input[:categorical_parameter_ranges], context: "#{context}[:categorical_parameter_ranges]") unless input[:categorical_parameter_ranges].nil?
      end
    end

    class ParameterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Parent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Parent, context: context)
        Hearth::Validator.validate!(input[:trial_name], ::String, context: "#{context}[:trial_name]")
        Hearth::Validator.validate!(input[:experiment_name], ::String, context: "#{context}[:experiment_name]")
      end
    end

    class ParentHyperParameterTuningJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParentHyperParameterTuningJob, context: context)
        Hearth::Validator.validate!(input[:hyper_parameter_tuning_job_name], ::String, context: "#{context}[:hyper_parameter_tuning_job_name]")
      end
    end

    class ParentHyperParameterTuningJobs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ParentHyperParameterTuningJob.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Parents
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Parent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PendingDeploymentSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PendingDeploymentSummary, context: context)
        Hearth::Validator.validate!(input[:endpoint_config_name], ::String, context: "#{context}[:endpoint_config_name]")
        PendingProductionVariantSummaryList.validate!(input[:production_variants], context: "#{context}[:production_variants]") unless input[:production_variants].nil?
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
      end
    end

    class PendingProductionVariantSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PendingProductionVariantSummary, context: context)
        Hearth::Validator.validate!(input[:variant_name], ::String, context: "#{context}[:variant_name]")
        DeployedImages.validate!(input[:deployed_images], context: "#{context}[:deployed_images]") unless input[:deployed_images].nil?
        Hearth::Validator.validate!(input[:current_weight], ::Float, context: "#{context}[:current_weight]")
        Hearth::Validator.validate!(input[:desired_weight], ::Float, context: "#{context}[:desired_weight]")
        Hearth::Validator.validate!(input[:current_instance_count], ::Integer, context: "#{context}[:current_instance_count]")
        Hearth::Validator.validate!(input[:desired_instance_count], ::Integer, context: "#{context}[:desired_instance_count]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:accelerator_type], ::String, context: "#{context}[:accelerator_type]")
        ProductionVariantStatusList.validate!(input[:variant_status], context: "#{context}[:variant_status]") unless input[:variant_status].nil?
        ProductionVariantServerlessConfig.validate!(input[:current_serverless_config], context: "#{context}[:current_serverless_config]") unless input[:current_serverless_config].nil?
        ProductionVariantServerlessConfig.validate!(input[:desired_serverless_config], context: "#{context}[:desired_serverless_config]") unless input[:desired_serverless_config].nil?
      end
    end

    class PendingProductionVariantSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PendingProductionVariantSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Phase
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Phase, context: context)
        Hearth::Validator.validate!(input[:initial_number_of_users], ::Integer, context: "#{context}[:initial_number_of_users]")
        Hearth::Validator.validate!(input[:spawn_rate], ::Integer, context: "#{context}[:spawn_rate]")
        Hearth::Validator.validate!(input[:duration_in_seconds], ::Integer, context: "#{context}[:duration_in_seconds]")
      end
    end

    class Phases
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Phase.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Pipeline
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Pipeline, context: context)
        Hearth::Validator.validate!(input[:pipeline_arn], ::String, context: "#{context}[:pipeline_arn]")
        Hearth::Validator.validate!(input[:pipeline_name], ::String, context: "#{context}[:pipeline_name]")
        Hearth::Validator.validate!(input[:pipeline_display_name], ::String, context: "#{context}[:pipeline_display_name]")
        Hearth::Validator.validate!(input[:pipeline_description], ::String, context: "#{context}[:pipeline_description]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:pipeline_status], ::String, context: "#{context}[:pipeline_status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:last_run_time], ::Time, context: "#{context}[:last_run_time]")
        UserContext.validate!(input[:created_by], context: "#{context}[:created_by]") unless input[:created_by].nil?
        UserContext.validate!(input[:last_modified_by], context: "#{context}[:last_modified_by]") unless input[:last_modified_by].nil?
        ParallelismConfiguration.validate!(input[:parallelism_configuration], context: "#{context}[:parallelism_configuration]") unless input[:parallelism_configuration].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PipelineDefinitionS3Location
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PipelineDefinitionS3Location, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:object_key], ::String, context: "#{context}[:object_key]")
        Hearth::Validator.validate!(input[:version_id], ::String, context: "#{context}[:version_id]")
      end
    end

    class PipelineExecution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PipelineExecution, context: context)
        Hearth::Validator.validate!(input[:pipeline_arn], ::String, context: "#{context}[:pipeline_arn]")
        Hearth::Validator.validate!(input[:pipeline_execution_arn], ::String, context: "#{context}[:pipeline_execution_arn]")
        Hearth::Validator.validate!(input[:pipeline_execution_display_name], ::String, context: "#{context}[:pipeline_execution_display_name]")
        Hearth::Validator.validate!(input[:pipeline_execution_status], ::String, context: "#{context}[:pipeline_execution_status]")
        Hearth::Validator.validate!(input[:pipeline_execution_description], ::String, context: "#{context}[:pipeline_execution_description]")
        PipelineExperimentConfig.validate!(input[:pipeline_experiment_config], context: "#{context}[:pipeline_experiment_config]") unless input[:pipeline_experiment_config].nil?
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        UserContext.validate!(input[:created_by], context: "#{context}[:created_by]") unless input[:created_by].nil?
        UserContext.validate!(input[:last_modified_by], context: "#{context}[:last_modified_by]") unless input[:last_modified_by].nil?
        ParallelismConfiguration.validate!(input[:parallelism_configuration], context: "#{context}[:parallelism_configuration]") unless input[:parallelism_configuration].nil?
        ParameterList.validate!(input[:pipeline_parameters], context: "#{context}[:pipeline_parameters]") unless input[:pipeline_parameters].nil?
      end
    end

    class PipelineExecutionStep
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PipelineExecutionStep, context: context)
        Hearth::Validator.validate!(input[:step_name], ::String, context: "#{context}[:step_name]")
        Hearth::Validator.validate!(input[:step_display_name], ::String, context: "#{context}[:step_display_name]")
        Hearth::Validator.validate!(input[:step_description], ::String, context: "#{context}[:step_description]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:step_status], ::String, context: "#{context}[:step_status]")
        CacheHitResult.validate!(input[:cache_hit_result], context: "#{context}[:cache_hit_result]") unless input[:cache_hit_result].nil?
        Hearth::Validator.validate!(input[:attempt_count], ::Integer, context: "#{context}[:attempt_count]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        PipelineExecutionStepMetadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
      end
    end

    class PipelineExecutionStepList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PipelineExecutionStep.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PipelineExecutionStepMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PipelineExecutionStepMetadata, context: context)
        TrainingJobStepMetadata.validate!(input[:training_job], context: "#{context}[:training_job]") unless input[:training_job].nil?
        ProcessingJobStepMetadata.validate!(input[:processing_job], context: "#{context}[:processing_job]") unless input[:processing_job].nil?
        TransformJobStepMetadata.validate!(input[:transform_job], context: "#{context}[:transform_job]") unless input[:transform_job].nil?
        TuningJobStepMetaData.validate!(input[:tuning_job], context: "#{context}[:tuning_job]") unless input[:tuning_job].nil?
        ModelStepMetadata.validate!(input[:model], context: "#{context}[:model]") unless input[:model].nil?
        RegisterModelStepMetadata.validate!(input[:register_model], context: "#{context}[:register_model]") unless input[:register_model].nil?
        ConditionStepMetadata.validate!(input[:condition], context: "#{context}[:condition]") unless input[:condition].nil?
        CallbackStepMetadata.validate!(input[:callback], context: "#{context}[:callback]") unless input[:callback].nil?
        LambdaStepMetadata.validate!(input[:lambda], context: "#{context}[:lambda]") unless input[:lambda].nil?
        QualityCheckStepMetadata.validate!(input[:quality_check], context: "#{context}[:quality_check]") unless input[:quality_check].nil?
        ClarifyCheckStepMetadata.validate!(input[:clarify_check], context: "#{context}[:clarify_check]") unless input[:clarify_check].nil?
        EMRStepMetadata.validate!(input[:emr], context: "#{context}[:emr]") unless input[:emr].nil?
        FailStepMetadata.validate!(input[:fail], context: "#{context}[:fail]") unless input[:fail].nil?
      end
    end

    class PipelineExecutionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PipelineExecutionSummary, context: context)
        Hearth::Validator.validate!(input[:pipeline_execution_arn], ::String, context: "#{context}[:pipeline_execution_arn]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:pipeline_execution_status], ::String, context: "#{context}[:pipeline_execution_status]")
        Hearth::Validator.validate!(input[:pipeline_execution_description], ::String, context: "#{context}[:pipeline_execution_description]")
        Hearth::Validator.validate!(input[:pipeline_execution_display_name], ::String, context: "#{context}[:pipeline_execution_display_name]")
        Hearth::Validator.validate!(input[:pipeline_execution_failure_reason], ::String, context: "#{context}[:pipeline_execution_failure_reason]")
      end
    end

    class PipelineExecutionSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PipelineExecutionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PipelineExperimentConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PipelineExperimentConfig, context: context)
        Hearth::Validator.validate!(input[:experiment_name], ::String, context: "#{context}[:experiment_name]")
        Hearth::Validator.validate!(input[:trial_name], ::String, context: "#{context}[:trial_name]")
      end
    end

    class PipelineSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PipelineSummary, context: context)
        Hearth::Validator.validate!(input[:pipeline_arn], ::String, context: "#{context}[:pipeline_arn]")
        Hearth::Validator.validate!(input[:pipeline_name], ::String, context: "#{context}[:pipeline_name]")
        Hearth::Validator.validate!(input[:pipeline_display_name], ::String, context: "#{context}[:pipeline_display_name]")
        Hearth::Validator.validate!(input[:pipeline_description], ::String, context: "#{context}[:pipeline_description]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:last_execution_time], ::Time, context: "#{context}[:last_execution_time]")
      end
    end

    class PipelineSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PipelineSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProcessingClusterConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProcessingClusterConfig, context: context)
        Hearth::Validator.validate!(input[:instance_count], ::Integer, context: "#{context}[:instance_count]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:volume_size_in_gb], ::Integer, context: "#{context}[:volume_size_in_gb]")
        Hearth::Validator.validate!(input[:volume_kms_key_id], ::String, context: "#{context}[:volume_kms_key_id]")
      end
    end

    class ProcessingEnvironmentMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ProcessingFeatureStoreOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProcessingFeatureStoreOutput, context: context)
        Hearth::Validator.validate!(input[:feature_group_name], ::String, context: "#{context}[:feature_group_name]")
      end
    end

    class ProcessingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProcessingInput, context: context)
        Hearth::Validator.validate!(input[:input_name], ::String, context: "#{context}[:input_name]")
        Hearth::Validator.validate!(input[:app_managed], ::TrueClass, ::FalseClass, context: "#{context}[:app_managed]")
        ProcessingS3Input.validate!(input[:s3_input], context: "#{context}[:s3_input]") unless input[:s3_input].nil?
        DatasetDefinition.validate!(input[:dataset_definition], context: "#{context}[:dataset_definition]") unless input[:dataset_definition].nil?
      end
    end

    class ProcessingInputs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProcessingInput.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProcessingJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProcessingJob, context: context)
        ProcessingInputs.validate!(input[:processing_inputs], context: "#{context}[:processing_inputs]") unless input[:processing_inputs].nil?
        ProcessingOutputConfig.validate!(input[:processing_output_config], context: "#{context}[:processing_output_config]") unless input[:processing_output_config].nil?
        Hearth::Validator.validate!(input[:processing_job_name], ::String, context: "#{context}[:processing_job_name]")
        ProcessingResources.validate!(input[:processing_resources], context: "#{context}[:processing_resources]") unless input[:processing_resources].nil?
        ProcessingStoppingCondition.validate!(input[:stopping_condition], context: "#{context}[:stopping_condition]") unless input[:stopping_condition].nil?
        AppSpecification.validate!(input[:app_specification], context: "#{context}[:app_specification]") unless input[:app_specification].nil?
        ProcessingEnvironmentMap.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        NetworkConfig.validate!(input[:network_config], context: "#{context}[:network_config]") unless input[:network_config].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        ExperimentConfig.validate!(input[:experiment_config], context: "#{context}[:experiment_config]") unless input[:experiment_config].nil?
        Hearth::Validator.validate!(input[:processing_job_arn], ::String, context: "#{context}[:processing_job_arn]")
        Hearth::Validator.validate!(input[:processing_job_status], ::String, context: "#{context}[:processing_job_status]")
        Hearth::Validator.validate!(input[:exit_message], ::String, context: "#{context}[:exit_message]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:processing_end_time], ::Time, context: "#{context}[:processing_end_time]")
        Hearth::Validator.validate!(input[:processing_start_time], ::Time, context: "#{context}[:processing_start_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:monitoring_schedule_arn], ::String, context: "#{context}[:monitoring_schedule_arn]")
        Hearth::Validator.validate!(input[:auto_ml_job_arn], ::String, context: "#{context}[:auto_ml_job_arn]")
        Hearth::Validator.validate!(input[:training_job_arn], ::String, context: "#{context}[:training_job_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ProcessingJobStepMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProcessingJobStepMetadata, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class ProcessingJobSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProcessingJobSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProcessingJobSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProcessingJobSummary, context: context)
        Hearth::Validator.validate!(input[:processing_job_name], ::String, context: "#{context}[:processing_job_name]")
        Hearth::Validator.validate!(input[:processing_job_arn], ::String, context: "#{context}[:processing_job_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:processing_end_time], ::Time, context: "#{context}[:processing_end_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:processing_job_status], ::String, context: "#{context}[:processing_job_status]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:exit_message], ::String, context: "#{context}[:exit_message]")
      end
    end

    class ProcessingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProcessingOutput, context: context)
        Hearth::Validator.validate!(input[:output_name], ::String, context: "#{context}[:output_name]")
        ProcessingS3Output.validate!(input[:s3_output], context: "#{context}[:s3_output]") unless input[:s3_output].nil?
        ProcessingFeatureStoreOutput.validate!(input[:feature_store_output], context: "#{context}[:feature_store_output]") unless input[:feature_store_output].nil?
        Hearth::Validator.validate!(input[:app_managed], ::TrueClass, ::FalseClass, context: "#{context}[:app_managed]")
      end
    end

    class ProcessingOutputConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProcessingOutputConfig, context: context)
        ProcessingOutputs.validate!(input[:outputs], context: "#{context}[:outputs]") unless input[:outputs].nil?
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class ProcessingOutputs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProcessingOutput.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProcessingResources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProcessingResources, context: context)
        ProcessingClusterConfig.validate!(input[:cluster_config], context: "#{context}[:cluster_config]") unless input[:cluster_config].nil?
      end
    end

    class ProcessingS3Input
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProcessingS3Input, context: context)
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
        Hearth::Validator.validate!(input[:local_path], ::String, context: "#{context}[:local_path]")
        Hearth::Validator.validate!(input[:s3_data_type], ::String, context: "#{context}[:s3_data_type]")
        Hearth::Validator.validate!(input[:s3_input_mode], ::String, context: "#{context}[:s3_input_mode]")
        Hearth::Validator.validate!(input[:s3_data_distribution_type], ::String, context: "#{context}[:s3_data_distribution_type]")
        Hearth::Validator.validate!(input[:s3_compression_type], ::String, context: "#{context}[:s3_compression_type]")
      end
    end

    class ProcessingS3Output
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProcessingS3Output, context: context)
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
        Hearth::Validator.validate!(input[:local_path], ::String, context: "#{context}[:local_path]")
        Hearth::Validator.validate!(input[:s3_upload_mode], ::String, context: "#{context}[:s3_upload_mode]")
      end
    end

    class ProcessingStoppingCondition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProcessingStoppingCondition, context: context)
        Hearth::Validator.validate!(input[:max_runtime_in_seconds], ::Integer, context: "#{context}[:max_runtime_in_seconds]")
      end
    end

    class ProductListings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProductionVariant
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProductionVariant, context: context)
        Hearth::Validator.validate!(input[:variant_name], ::String, context: "#{context}[:variant_name]")
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
        Hearth::Validator.validate!(input[:initial_instance_count], ::Integer, context: "#{context}[:initial_instance_count]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:initial_variant_weight], ::Float, context: "#{context}[:initial_variant_weight]")
        Hearth::Validator.validate!(input[:accelerator_type], ::String, context: "#{context}[:accelerator_type]")
        ProductionVariantCoreDumpConfig.validate!(input[:core_dump_config], context: "#{context}[:core_dump_config]") unless input[:core_dump_config].nil?
        ProductionVariantServerlessConfig.validate!(input[:serverless_config], context: "#{context}[:serverless_config]") unless input[:serverless_config].nil?
      end
    end

    class ProductionVariantCoreDumpConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProductionVariantCoreDumpConfig, context: context)
        Hearth::Validator.validate!(input[:destination_s3_uri], ::String, context: "#{context}[:destination_s3_uri]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class ProductionVariantList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProductionVariant.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProductionVariantServerlessConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProductionVariantServerlessConfig, context: context)
        Hearth::Validator.validate!(input[:memory_size_in_mb], ::Integer, context: "#{context}[:memory_size_in_mb]")
        Hearth::Validator.validate!(input[:max_concurrency], ::Integer, context: "#{context}[:max_concurrency]")
      end
    end

    class ProductionVariantStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProductionVariantStatus, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
      end
    end

    class ProductionVariantStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProductionVariantStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProductionVariantSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProductionVariantSummary, context: context)
        Hearth::Validator.validate!(input[:variant_name], ::String, context: "#{context}[:variant_name]")
        DeployedImages.validate!(input[:deployed_images], context: "#{context}[:deployed_images]") unless input[:deployed_images].nil?
        Hearth::Validator.validate!(input[:current_weight], ::Float, context: "#{context}[:current_weight]")
        Hearth::Validator.validate!(input[:desired_weight], ::Float, context: "#{context}[:desired_weight]")
        Hearth::Validator.validate!(input[:current_instance_count], ::Integer, context: "#{context}[:current_instance_count]")
        Hearth::Validator.validate!(input[:desired_instance_count], ::Integer, context: "#{context}[:desired_instance_count]")
        ProductionVariantStatusList.validate!(input[:variant_status], context: "#{context}[:variant_status]") unless input[:variant_status].nil?
        ProductionVariantServerlessConfig.validate!(input[:current_serverless_config], context: "#{context}[:current_serverless_config]") unless input[:current_serverless_config].nil?
        ProductionVariantServerlessConfig.validate!(input[:desired_serverless_config], context: "#{context}[:desired_serverless_config]") unless input[:desired_serverless_config].nil?
      end
    end

    class ProductionVariantSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProductionVariantSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProfilerConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProfilerConfig, context: context)
        Hearth::Validator.validate!(input[:s3_output_path], ::String, context: "#{context}[:s3_output_path]")
        Hearth::Validator.validate!(input[:profiling_interval_in_milliseconds], ::Integer, context: "#{context}[:profiling_interval_in_milliseconds]")
        ProfilingParameters.validate!(input[:profiling_parameters], context: "#{context}[:profiling_parameters]") unless input[:profiling_parameters].nil?
      end
    end

    class ProfilerConfigForUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProfilerConfigForUpdate, context: context)
        Hearth::Validator.validate!(input[:s3_output_path], ::String, context: "#{context}[:s3_output_path]")
        Hearth::Validator.validate!(input[:profiling_interval_in_milliseconds], ::Integer, context: "#{context}[:profiling_interval_in_milliseconds]")
        ProfilingParameters.validate!(input[:profiling_parameters], context: "#{context}[:profiling_parameters]") unless input[:profiling_parameters].nil?
        Hearth::Validator.validate!(input[:disable_profiler], ::TrueClass, ::FalseClass, context: "#{context}[:disable_profiler]")
      end
    end

    class ProfilerRuleConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProfilerRuleConfiguration, context: context)
        Hearth::Validator.validate!(input[:rule_configuration_name], ::String, context: "#{context}[:rule_configuration_name]")
        Hearth::Validator.validate!(input[:local_path], ::String, context: "#{context}[:local_path]")
        Hearth::Validator.validate!(input[:s3_output_path], ::String, context: "#{context}[:s3_output_path]")
        Hearth::Validator.validate!(input[:rule_evaluator_image], ::String, context: "#{context}[:rule_evaluator_image]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:volume_size_in_gb], ::Integer, context: "#{context}[:volume_size_in_gb]")
        RuleParameters.validate!(input[:rule_parameters], context: "#{context}[:rule_parameters]") unless input[:rule_parameters].nil?
      end
    end

    class ProfilerRuleConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProfilerRuleConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProfilerRuleEvaluationStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProfilerRuleEvaluationStatus, context: context)
        Hearth::Validator.validate!(input[:rule_configuration_name], ::String, context: "#{context}[:rule_configuration_name]")
        Hearth::Validator.validate!(input[:rule_evaluation_job_arn], ::String, context: "#{context}[:rule_evaluation_job_arn]")
        Hearth::Validator.validate!(input[:rule_evaluation_status], ::String, context: "#{context}[:rule_evaluation_status]")
        Hearth::Validator.validate!(input[:status_details], ::String, context: "#{context}[:status_details]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
      end
    end

    class ProfilerRuleEvaluationStatuses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProfilerRuleEvaluationStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProfilingParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Project
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Project, context: context)
        Hearth::Validator.validate!(input[:project_arn], ::String, context: "#{context}[:project_arn]")
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:project_id], ::String, context: "#{context}[:project_id]")
        Hearth::Validator.validate!(input[:project_description], ::String, context: "#{context}[:project_description]")
        ServiceCatalogProvisioningDetails.validate!(input[:service_catalog_provisioning_details], context: "#{context}[:service_catalog_provisioning_details]") unless input[:service_catalog_provisioning_details].nil?
        ServiceCatalogProvisionedProductDetails.validate!(input[:service_catalog_provisioned_product_details], context: "#{context}[:service_catalog_provisioned_product_details]") unless input[:service_catalog_provisioned_product_details].nil?
        Hearth::Validator.validate!(input[:project_status], ::String, context: "#{context}[:project_status]")
        UserContext.validate!(input[:created_by], context: "#{context}[:created_by]") unless input[:created_by].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        UserContext.validate!(input[:last_modified_by], context: "#{context}[:last_modified_by]") unless input[:last_modified_by].nil?
      end
    end

    class ProjectSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProjectSummary, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:project_description], ::String, context: "#{context}[:project_description]")
        Hearth::Validator.validate!(input[:project_arn], ::String, context: "#{context}[:project_arn]")
        Hearth::Validator.validate!(input[:project_id], ::String, context: "#{context}[:project_id]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:project_status], ::String, context: "#{context}[:project_status]")
      end
    end

    class ProjectSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProjectSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PropertyNameQuery
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PropertyNameQuery, context: context)
        Hearth::Validator.validate!(input[:property_name_hint], ::String, context: "#{context}[:property_name_hint]")
      end
    end

    class PropertyNameSuggestion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PropertyNameSuggestion, context: context)
        Hearth::Validator.validate!(input[:property_name], ::String, context: "#{context}[:property_name]")
      end
    end

    class PropertyNameSuggestionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PropertyNameSuggestion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProvisioningParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProvisioningParameter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ProvisioningParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProvisioningParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PublicWorkforceTaskPrice
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublicWorkforceTaskPrice, context: context)
        USD.validate!(input[:amount_in_usd], context: "#{context}[:amount_in_usd]") unless input[:amount_in_usd].nil?
      end
    end

    class PutModelPackageGroupPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutModelPackageGroupPolicyInput, context: context)
        Hearth::Validator.validate!(input[:model_package_group_name], ::String, context: "#{context}[:model_package_group_name]")
        Hearth::Validator.validate!(input[:resource_policy], ::String, context: "#{context}[:resource_policy]")
      end
    end

    class PutModelPackageGroupPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutModelPackageGroupPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:model_package_group_arn], ::String, context: "#{context}[:model_package_group_arn]")
      end
    end

    class QualityCheckStepMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QualityCheckStepMetadata, context: context)
        Hearth::Validator.validate!(input[:check_type], ::String, context: "#{context}[:check_type]")
        Hearth::Validator.validate!(input[:baseline_used_for_drift_check_statistics], ::String, context: "#{context}[:baseline_used_for_drift_check_statistics]")
        Hearth::Validator.validate!(input[:baseline_used_for_drift_check_constraints], ::String, context: "#{context}[:baseline_used_for_drift_check_constraints]")
        Hearth::Validator.validate!(input[:calculated_baseline_statistics], ::String, context: "#{context}[:calculated_baseline_statistics]")
        Hearth::Validator.validate!(input[:calculated_baseline_constraints], ::String, context: "#{context}[:calculated_baseline_constraints]")
        Hearth::Validator.validate!(input[:model_package_group_name], ::String, context: "#{context}[:model_package_group_name]")
        Hearth::Validator.validate!(input[:violation_report], ::String, context: "#{context}[:violation_report]")
        Hearth::Validator.validate!(input[:check_job_arn], ::String, context: "#{context}[:check_job_arn]")
        Hearth::Validator.validate!(input[:skip_check], ::TrueClass, ::FalseClass, context: "#{context}[:skip_check]")
        Hearth::Validator.validate!(input[:register_new_baseline], ::TrueClass, ::FalseClass, context: "#{context}[:register_new_baseline]")
      end
    end

    class QueryFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryFilters, context: context)
        QueryTypes.validate!(input[:types], context: "#{context}[:types]") unless input[:types].nil?
        QueryLineageTypes.validate!(input[:lineage_types], context: "#{context}[:lineage_types]") unless input[:lineage_types].nil?
        Hearth::Validator.validate!(input[:created_before], ::Time, context: "#{context}[:created_before]")
        Hearth::Validator.validate!(input[:created_after], ::Time, context: "#{context}[:created_after]")
        Hearth::Validator.validate!(input[:modified_before], ::Time, context: "#{context}[:modified_before]")
        Hearth::Validator.validate!(input[:modified_after], ::Time, context: "#{context}[:modified_after]")
        QueryProperties.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
      end
    end

    class QueryLineageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryLineageInput, context: context)
        QueryLineageStartArns.validate!(input[:start_arns], context: "#{context}[:start_arns]") unless input[:start_arns].nil?
        Hearth::Validator.validate!(input[:direction], ::String, context: "#{context}[:direction]")
        Hearth::Validator.validate!(input[:include_edges], ::TrueClass, ::FalseClass, context: "#{context}[:include_edges]")
        QueryFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_depth], ::Integer, context: "#{context}[:max_depth]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class QueryLineageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryLineageOutput, context: context)
        Vertices.validate!(input[:vertices], context: "#{context}[:vertices]") unless input[:vertices].nil?
        Edges.validate!(input[:edges], context: "#{context}[:edges]") unless input[:edges].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class QueryLineageStartArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class QueryLineageTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class QueryProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class QueryTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RSessionAppSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RSessionAppSettings, context: context)
        ResourceSpec.validate!(input[:default_resource_spec], context: "#{context}[:default_resource_spec]") unless input[:default_resource_spec].nil?
        CustomImages.validate!(input[:custom_images], context: "#{context}[:custom_images]") unless input[:custom_images].nil?
      end
    end

    class RStudioServerProAppSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RStudioServerProAppSettings, context: context)
        Hearth::Validator.validate!(input[:access_status], ::String, context: "#{context}[:access_status]")
        Hearth::Validator.validate!(input[:user_group], ::String, context: "#{context}[:user_group]")
      end
    end

    class RStudioServerProDomainSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RStudioServerProDomainSettings, context: context)
        Hearth::Validator.validate!(input[:domain_execution_role_arn], ::String, context: "#{context}[:domain_execution_role_arn]")
        Hearth::Validator.validate!(input[:r_studio_connect_url], ::String, context: "#{context}[:r_studio_connect_url]")
        Hearth::Validator.validate!(input[:r_studio_package_manager_url], ::String, context: "#{context}[:r_studio_package_manager_url]")
        ResourceSpec.validate!(input[:default_resource_spec], context: "#{context}[:default_resource_spec]") unless input[:default_resource_spec].nil?
      end
    end

    class RStudioServerProDomainSettingsForUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RStudioServerProDomainSettingsForUpdate, context: context)
        Hearth::Validator.validate!(input[:domain_execution_role_arn], ::String, context: "#{context}[:domain_execution_role_arn]")
        ResourceSpec.validate!(input[:default_resource_spec], context: "#{context}[:default_resource_spec]") unless input[:default_resource_spec].nil?
      end
    end

    class RealtimeInferenceInstanceTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RecommendationJobCompiledOutputConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecommendationJobCompiledOutputConfig, context: context)
        Hearth::Validator.validate!(input[:s3_output_uri], ::String, context: "#{context}[:s3_output_uri]")
      end
    end

    class RecommendationJobInputConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecommendationJobInputConfig, context: context)
        Hearth::Validator.validate!(input[:model_package_version_arn], ::String, context: "#{context}[:model_package_version_arn]")
        Hearth::Validator.validate!(input[:job_duration_in_seconds], ::Integer, context: "#{context}[:job_duration_in_seconds]")
        TrafficPattern.validate!(input[:traffic_pattern], context: "#{context}[:traffic_pattern]") unless input[:traffic_pattern].nil?
        RecommendationJobResourceLimit.validate!(input[:resource_limit], context: "#{context}[:resource_limit]") unless input[:resource_limit].nil?
        EndpointInputConfigurations.validate!(input[:endpoint_configurations], context: "#{context}[:endpoint_configurations]") unless input[:endpoint_configurations].nil?
        Hearth::Validator.validate!(input[:volume_kms_key_id], ::String, context: "#{context}[:volume_kms_key_id]")
      end
    end

    class RecommendationJobOutputConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecommendationJobOutputConfig, context: context)
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        RecommendationJobCompiledOutputConfig.validate!(input[:compiled_output_config], context: "#{context}[:compiled_output_config]") unless input[:compiled_output_config].nil?
      end
    end

    class RecommendationJobResourceLimit
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecommendationJobResourceLimit, context: context)
        Hearth::Validator.validate!(input[:max_number_of_tests], ::Integer, context: "#{context}[:max_number_of_tests]")
        Hearth::Validator.validate!(input[:max_parallel_of_tests], ::Integer, context: "#{context}[:max_parallel_of_tests]")
      end
    end

    class RecommendationJobStoppingConditions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecommendationJobStoppingConditions, context: context)
        Hearth::Validator.validate!(input[:max_invocations], ::Integer, context: "#{context}[:max_invocations]")
        ModelLatencyThresholds.validate!(input[:model_latency_thresholds], context: "#{context}[:model_latency_thresholds]") unless input[:model_latency_thresholds].nil?
      end
    end

    class RecommendationMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecommendationMetrics, context: context)
        Hearth::Validator.validate!(input[:cost_per_hour], ::Float, context: "#{context}[:cost_per_hour]")
        Hearth::Validator.validate!(input[:cost_per_inference], ::Float, context: "#{context}[:cost_per_inference]")
        Hearth::Validator.validate!(input[:max_invocations], ::Integer, context: "#{context}[:max_invocations]")
        Hearth::Validator.validate!(input[:model_latency], ::Integer, context: "#{context}[:model_latency]")
      end
    end

    class RedshiftDatasetDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RedshiftDatasetDefinition, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
        Hearth::Validator.validate!(input[:database], ::String, context: "#{context}[:database]")
        Hearth::Validator.validate!(input[:db_user], ::String, context: "#{context}[:db_user]")
        Hearth::Validator.validate!(input[:query_string], ::String, context: "#{context}[:query_string]")
        Hearth::Validator.validate!(input[:cluster_role_arn], ::String, context: "#{context}[:cluster_role_arn]")
        Hearth::Validator.validate!(input[:output_s3_uri], ::String, context: "#{context}[:output_s3_uri]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:output_format], ::String, context: "#{context}[:output_format]")
        Hearth::Validator.validate!(input[:output_compression], ::String, context: "#{context}[:output_compression]")
      end
    end

    class RegisterDevicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterDevicesInput, context: context)
        Hearth::Validator.validate!(input[:device_fleet_name], ::String, context: "#{context}[:device_fleet_name]")
        Devices.validate!(input[:devices], context: "#{context}[:devices]") unless input[:devices].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class RegisterDevicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterDevicesOutput, context: context)
      end
    end

    class RegisterModelStepMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterModelStepMetadata, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class RenderUiTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RenderUiTemplateInput, context: context)
        UiTemplate.validate!(input[:ui_template], context: "#{context}[:ui_template]") unless input[:ui_template].nil?
        RenderableTask.validate!(input[:task], context: "#{context}[:task]") unless input[:task].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:human_task_ui_arn], ::String, context: "#{context}[:human_task_ui_arn]")
      end
    end

    class RenderUiTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RenderUiTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:rendered_content], ::String, context: "#{context}[:rendered_content]")
        RenderingErrorList.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class RenderableTask
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RenderableTask, context: context)
        Hearth::Validator.validate!(input[:input], ::String, context: "#{context}[:input]")
      end
    end

    class RenderingError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RenderingError, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RenderingErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RenderingError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RepositoryAuthConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryAuthConfig, context: context)
        Hearth::Validator.validate!(input[:repository_credentials_provider_arn], ::String, context: "#{context}[:repository_credentials_provider_arn]")
      end
    end

    class ResolvedAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResolvedAttributes, context: context)
        AutoMLJobObjective.validate!(input[:auto_ml_job_objective], context: "#{context}[:auto_ml_job_objective]") unless input[:auto_ml_job_objective].nil?
        Hearth::Validator.validate!(input[:problem_type], ::String, context: "#{context}[:problem_type]")
        AutoMLJobCompletionCriteria.validate!(input[:completion_criteria], context: "#{context}[:completion_criteria]") unless input[:completion_criteria].nil?
      end
    end

    class ResourceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceConfig, context: context)
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:instance_count], ::Integer, context: "#{context}[:instance_count]")
        Hearth::Validator.validate!(input[:volume_size_in_gb], ::Integer, context: "#{context}[:volume_size_in_gb]")
        Hearth::Validator.validate!(input[:volume_kms_key_id], ::String, context: "#{context}[:volume_kms_key_id]")
      end
    end

    class ResourceInUse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUse, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceLimitExceeded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceLimitExceeded, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceLimits
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceLimits, context: context)
        Hearth::Validator.validate!(input[:max_number_of_training_jobs], ::Integer, context: "#{context}[:max_number_of_training_jobs]")
        Hearth::Validator.validate!(input[:max_parallel_training_jobs], ::Integer, context: "#{context}[:max_parallel_training_jobs]")
      end
    end

    class ResourceNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFound, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceSpec
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceSpec, context: context)
        Hearth::Validator.validate!(input[:sage_maker_image_arn], ::String, context: "#{context}[:sage_maker_image_arn]")
        Hearth::Validator.validate!(input[:sage_maker_image_version_arn], ::String, context: "#{context}[:sage_maker_image_version_arn]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:lifecycle_config_arn], ::String, context: "#{context}[:lifecycle_config_arn]")
      end
    end

    class ResponseMIMETypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RetentionPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetentionPolicy, context: context)
        Hearth::Validator.validate!(input[:home_efs_file_system], ::String, context: "#{context}[:home_efs_file_system]")
      end
    end

    class RetryPipelineExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetryPipelineExecutionInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_execution_arn], ::String, context: "#{context}[:pipeline_execution_arn]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        ParallelismConfiguration.validate!(input[:parallelism_configuration], context: "#{context}[:parallelism_configuration]") unless input[:parallelism_configuration].nil?
      end
    end

    class RetryPipelineExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetryPipelineExecutionOutput, context: context)
        Hearth::Validator.validate!(input[:pipeline_execution_arn], ::String, context: "#{context}[:pipeline_execution_arn]")
      end
    end

    class RetryStrategy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetryStrategy, context: context)
        Hearth::Validator.validate!(input[:maximum_retry_attempts], ::Integer, context: "#{context}[:maximum_retry_attempts]")
      end
    end

    class RuleParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class S3DataSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3DataSource, context: context)
        Hearth::Validator.validate!(input[:s3_data_type], ::String, context: "#{context}[:s3_data_type]")
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
        Hearth::Validator.validate!(input[:s3_data_distribution_type], ::String, context: "#{context}[:s3_data_distribution_type]")
        AttributeNames.validate!(input[:attribute_names], context: "#{context}[:attribute_names]") unless input[:attribute_names].nil?
      end
    end

    class S3StorageConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3StorageConfig, context: context)
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:resolved_output_s3_uri], ::String, context: "#{context}[:resolved_output_s3_uri]")
      end
    end

    class ScheduleConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduleConfig, context: context)
        Hearth::Validator.validate!(input[:schedule_expression], ::String, context: "#{context}[:schedule_expression]")
      end
    end

    class SearchExpression
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchExpression, context: context)
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        NestedFiltersList.validate!(input[:nested_filters], context: "#{context}[:nested_filters]") unless input[:nested_filters].nil?
        SearchExpressionList.validate!(input[:sub_expressions], context: "#{context}[:sub_expressions]") unless input[:sub_expressions].nil?
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
      end
    end

    class SearchExpressionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SearchExpression.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SearchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchInput, context: context)
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
        SearchExpression.validate!(input[:search_expression], context: "#{context}[:search_expression]") unless input[:search_expression].nil?
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class SearchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchOutput, context: context)
        SearchResultsList.validate!(input[:results], context: "#{context}[:results]") unless input[:results].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class SearchRecord
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchRecord, context: context)
        TrainingJob.validate!(input[:training_job], context: "#{context}[:training_job]") unless input[:training_job].nil?
        Experiment.validate!(input[:experiment], context: "#{context}[:experiment]") unless input[:experiment].nil?
        Trial.validate!(input[:trial], context: "#{context}[:trial]") unless input[:trial].nil?
        TrialComponent.validate!(input[:trial_component], context: "#{context}[:trial_component]") unless input[:trial_component].nil?
        Endpoint.validate!(input[:endpoint], context: "#{context}[:endpoint]") unless input[:endpoint].nil?
        ModelPackage.validate!(input[:model_package], context: "#{context}[:model_package]") unless input[:model_package].nil?
        ModelPackageGroup.validate!(input[:model_package_group], context: "#{context}[:model_package_group]") unless input[:model_package_group].nil?
        Pipeline.validate!(input[:pipeline], context: "#{context}[:pipeline]") unless input[:pipeline].nil?
        PipelineExecution.validate!(input[:pipeline_execution], context: "#{context}[:pipeline_execution]") unless input[:pipeline_execution].nil?
        FeatureGroup.validate!(input[:feature_group], context: "#{context}[:feature_group]") unless input[:feature_group].nil?
        Project.validate!(input[:project], context: "#{context}[:project]") unless input[:project].nil?
      end
    end

    class SearchResultsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SearchRecord.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SecondaryStatusTransition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SecondaryStatusTransition, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
      end
    end

    class SecondaryStatusTransitions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SecondaryStatusTransition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SecurityGroupIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SendPipelineExecutionStepFailureInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendPipelineExecutionStepFailureInput, context: context)
        Hearth::Validator.validate!(input[:callback_token], ::String, context: "#{context}[:callback_token]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class SendPipelineExecutionStepFailureOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendPipelineExecutionStepFailureOutput, context: context)
        Hearth::Validator.validate!(input[:pipeline_execution_arn], ::String, context: "#{context}[:pipeline_execution_arn]")
      end
    end

    class SendPipelineExecutionStepSuccessInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendPipelineExecutionStepSuccessInput, context: context)
        Hearth::Validator.validate!(input[:callback_token], ::String, context: "#{context}[:callback_token]")
        OutputParameterList.validate!(input[:output_parameters], context: "#{context}[:output_parameters]") unless input[:output_parameters].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class SendPipelineExecutionStepSuccessOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendPipelineExecutionStepSuccessOutput, context: context)
        Hearth::Validator.validate!(input[:pipeline_execution_arn], ::String, context: "#{context}[:pipeline_execution_arn]")
      end
    end

    class ServiceCatalogProvisionedProductDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceCatalogProvisionedProductDetails, context: context)
        Hearth::Validator.validate!(input[:provisioned_product_id], ::String, context: "#{context}[:provisioned_product_id]")
        Hearth::Validator.validate!(input[:provisioned_product_status_message], ::String, context: "#{context}[:provisioned_product_status_message]")
      end
    end

    class ServiceCatalogProvisioningDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceCatalogProvisioningDetails, context: context)
        Hearth::Validator.validate!(input[:product_id], ::String, context: "#{context}[:product_id]")
        Hearth::Validator.validate!(input[:provisioning_artifact_id], ::String, context: "#{context}[:provisioning_artifact_id]")
        Hearth::Validator.validate!(input[:path_id], ::String, context: "#{context}[:path_id]")
        ProvisioningParameters.validate!(input[:provisioning_parameters], context: "#{context}[:provisioning_parameters]") unless input[:provisioning_parameters].nil?
      end
    end

    class ServiceCatalogProvisioningUpdateDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceCatalogProvisioningUpdateDetails, context: context)
        Hearth::Validator.validate!(input[:provisioning_artifact_id], ::String, context: "#{context}[:provisioning_artifact_id]")
        ProvisioningParameters.validate!(input[:provisioning_parameters], context: "#{context}[:provisioning_parameters]") unless input[:provisioning_parameters].nil?
      end
    end

    class SharingSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SharingSettings, context: context)
        Hearth::Validator.validate!(input[:notebook_output_option], ::String, context: "#{context}[:notebook_output_option]")
        Hearth::Validator.validate!(input[:s3_output_path], ::String, context: "#{context}[:s3_output_path]")
        Hearth::Validator.validate!(input[:s3_kms_key_id], ::String, context: "#{context}[:s3_kms_key_id]")
      end
    end

    class ShuffleConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ShuffleConfig, context: context)
        Hearth::Validator.validate!(input[:seed], ::Integer, context: "#{context}[:seed]")
      end
    end

    class SourceAlgorithm
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceAlgorithm, context: context)
        Hearth::Validator.validate!(input[:model_data_url], ::String, context: "#{context}[:model_data_url]")
        Hearth::Validator.validate!(input[:algorithm_name], ::String, context: "#{context}[:algorithm_name]")
      end
    end

    class SourceAlgorithmList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SourceAlgorithm.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SourceAlgorithmSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceAlgorithmSpecification, context: context)
        SourceAlgorithmList.validate!(input[:source_algorithms], context: "#{context}[:source_algorithms]") unless input[:source_algorithms].nil?
      end
    end

    class SourceIpConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceIpConfig, context: context)
        Cidrs.validate!(input[:cidrs], context: "#{context}[:cidrs]") unless input[:cidrs].nil?
      end
    end

    class StartMonitoringScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMonitoringScheduleInput, context: context)
        Hearth::Validator.validate!(input[:monitoring_schedule_name], ::String, context: "#{context}[:monitoring_schedule_name]")
      end
    end

    class StartMonitoringScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMonitoringScheduleOutput, context: context)
      end
    end

    class StartNotebookInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartNotebookInstanceInput, context: context)
        Hearth::Validator.validate!(input[:notebook_instance_name], ::String, context: "#{context}[:notebook_instance_name]")
      end
    end

    class StartNotebookInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartNotebookInstanceOutput, context: context)
      end
    end

    class StartPipelineExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartPipelineExecutionInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_name], ::String, context: "#{context}[:pipeline_name]")
        Hearth::Validator.validate!(input[:pipeline_execution_display_name], ::String, context: "#{context}[:pipeline_execution_display_name]")
        ParameterList.validate!(input[:pipeline_parameters], context: "#{context}[:pipeline_parameters]") unless input[:pipeline_parameters].nil?
        Hearth::Validator.validate!(input[:pipeline_execution_description], ::String, context: "#{context}[:pipeline_execution_description]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        ParallelismConfiguration.validate!(input[:parallelism_configuration], context: "#{context}[:parallelism_configuration]") unless input[:parallelism_configuration].nil?
      end
    end

    class StartPipelineExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartPipelineExecutionOutput, context: context)
        Hearth::Validator.validate!(input[:pipeline_execution_arn], ::String, context: "#{context}[:pipeline_execution_arn]")
      end
    end

    class StopAutoMLJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopAutoMLJobInput, context: context)
        Hearth::Validator.validate!(input[:auto_ml_job_name], ::String, context: "#{context}[:auto_ml_job_name]")
      end
    end

    class StopAutoMLJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopAutoMLJobOutput, context: context)
      end
    end

    class StopCompilationJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopCompilationJobInput, context: context)
        Hearth::Validator.validate!(input[:compilation_job_name], ::String, context: "#{context}[:compilation_job_name]")
      end
    end

    class StopCompilationJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopCompilationJobOutput, context: context)
      end
    end

    class StopEdgePackagingJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopEdgePackagingJobInput, context: context)
        Hearth::Validator.validate!(input[:edge_packaging_job_name], ::String, context: "#{context}[:edge_packaging_job_name]")
      end
    end

    class StopEdgePackagingJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopEdgePackagingJobOutput, context: context)
      end
    end

    class StopHyperParameterTuningJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopHyperParameterTuningJobInput, context: context)
        Hearth::Validator.validate!(input[:hyper_parameter_tuning_job_name], ::String, context: "#{context}[:hyper_parameter_tuning_job_name]")
      end
    end

    class StopHyperParameterTuningJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopHyperParameterTuningJobOutput, context: context)
      end
    end

    class StopInferenceRecommendationsJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopInferenceRecommendationsJobInput, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
      end
    end

    class StopInferenceRecommendationsJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopInferenceRecommendationsJobOutput, context: context)
      end
    end

    class StopLabelingJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopLabelingJobInput, context: context)
        Hearth::Validator.validate!(input[:labeling_job_name], ::String, context: "#{context}[:labeling_job_name]")
      end
    end

    class StopLabelingJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopLabelingJobOutput, context: context)
      end
    end

    class StopMonitoringScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopMonitoringScheduleInput, context: context)
        Hearth::Validator.validate!(input[:monitoring_schedule_name], ::String, context: "#{context}[:monitoring_schedule_name]")
      end
    end

    class StopMonitoringScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopMonitoringScheduleOutput, context: context)
      end
    end

    class StopNotebookInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopNotebookInstanceInput, context: context)
        Hearth::Validator.validate!(input[:notebook_instance_name], ::String, context: "#{context}[:notebook_instance_name]")
      end
    end

    class StopNotebookInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopNotebookInstanceOutput, context: context)
      end
    end

    class StopPipelineExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopPipelineExecutionInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_execution_arn], ::String, context: "#{context}[:pipeline_execution_arn]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class StopPipelineExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopPipelineExecutionOutput, context: context)
        Hearth::Validator.validate!(input[:pipeline_execution_arn], ::String, context: "#{context}[:pipeline_execution_arn]")
      end
    end

    class StopProcessingJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopProcessingJobInput, context: context)
        Hearth::Validator.validate!(input[:processing_job_name], ::String, context: "#{context}[:processing_job_name]")
      end
    end

    class StopProcessingJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopProcessingJobOutput, context: context)
      end
    end

    class StopTrainingJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopTrainingJobInput, context: context)
        Hearth::Validator.validate!(input[:training_job_name], ::String, context: "#{context}[:training_job_name]")
      end
    end

    class StopTrainingJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopTrainingJobOutput, context: context)
      end
    end

    class StopTransformJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopTransformJobInput, context: context)
        Hearth::Validator.validate!(input[:transform_job_name], ::String, context: "#{context}[:transform_job_name]")
      end
    end

    class StopTransformJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopTransformJobOutput, context: context)
      end
    end

    class StoppingCondition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StoppingCondition, context: context)
        Hearth::Validator.validate!(input[:max_runtime_in_seconds], ::Integer, context: "#{context}[:max_runtime_in_seconds]")
        Hearth::Validator.validate!(input[:max_wait_time_in_seconds], ::Integer, context: "#{context}[:max_wait_time_in_seconds]")
      end
    end

    class StudioLifecycleConfigDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StudioLifecycleConfigDetails, context: context)
        Hearth::Validator.validate!(input[:studio_lifecycle_config_arn], ::String, context: "#{context}[:studio_lifecycle_config_arn]")
        Hearth::Validator.validate!(input[:studio_lifecycle_config_name], ::String, context: "#{context}[:studio_lifecycle_config_name]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:studio_lifecycle_config_app_type], ::String, context: "#{context}[:studio_lifecycle_config_app_type]")
      end
    end

    class StudioLifecycleConfigsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StudioLifecycleConfigDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Subnets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SubscribedWorkteam
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubscribedWorkteam, context: context)
        Hearth::Validator.validate!(input[:workteam_arn], ::String, context: "#{context}[:workteam_arn]")
        Hearth::Validator.validate!(input[:marketplace_title], ::String, context: "#{context}[:marketplace_title]")
        Hearth::Validator.validate!(input[:seller_name], ::String, context: "#{context}[:seller_name]")
        Hearth::Validator.validate!(input[:marketplace_description], ::String, context: "#{context}[:marketplace_description]")
        Hearth::Validator.validate!(input[:listing_id], ::String, context: "#{context}[:listing_id]")
      end
    end

    class SubscribedWorkteams
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SubscribedWorkteam.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SuggestionQuery
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SuggestionQuery, context: context)
        PropertyNameQuery.validate!(input[:property_name_query], context: "#{context}[:property_name_query]") unless input[:property_name_query].nil?
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

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TargetPlatform
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetPlatform, context: context)
        Hearth::Validator.validate!(input[:os], ::String, context: "#{context}[:os]")
        Hearth::Validator.validate!(input[:arch], ::String, context: "#{context}[:arch]")
        Hearth::Validator.validate!(input[:accelerator], ::String, context: "#{context}[:accelerator]")
      end
    end

    class TaskKeywords
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TensorBoardAppSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TensorBoardAppSettings, context: context)
        ResourceSpec.validate!(input[:default_resource_spec], context: "#{context}[:default_resource_spec]") unless input[:default_resource_spec].nil?
      end
    end

    class TensorBoardOutputConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TensorBoardOutputConfig, context: context)
        Hearth::Validator.validate!(input[:local_path], ::String, context: "#{context}[:local_path]")
        Hearth::Validator.validate!(input[:s3_output_path], ::String, context: "#{context}[:s3_output_path]")
      end
    end

    class TrafficPattern
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrafficPattern, context: context)
        Hearth::Validator.validate!(input[:traffic_type], ::String, context: "#{context}[:traffic_type]")
        Phases.validate!(input[:phases], context: "#{context}[:phases]") unless input[:phases].nil?
      end
    end

    class TrafficRoutingConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrafficRoutingConfig, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:wait_interval_in_seconds], ::Integer, context: "#{context}[:wait_interval_in_seconds]")
        CapacitySize.validate!(input[:canary_size], context: "#{context}[:canary_size]") unless input[:canary_size].nil?
        CapacitySize.validate!(input[:linear_step_size], context: "#{context}[:linear_step_size]") unless input[:linear_step_size].nil?
      end
    end

    class TrainingEnvironmentMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TrainingInstanceTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TrainingJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrainingJob, context: context)
        Hearth::Validator.validate!(input[:training_job_name], ::String, context: "#{context}[:training_job_name]")
        Hearth::Validator.validate!(input[:training_job_arn], ::String, context: "#{context}[:training_job_arn]")
        Hearth::Validator.validate!(input[:tuning_job_arn], ::String, context: "#{context}[:tuning_job_arn]")
        Hearth::Validator.validate!(input[:labeling_job_arn], ::String, context: "#{context}[:labeling_job_arn]")
        Hearth::Validator.validate!(input[:auto_ml_job_arn], ::String, context: "#{context}[:auto_ml_job_arn]")
        ModelArtifacts.validate!(input[:model_artifacts], context: "#{context}[:model_artifacts]") unless input[:model_artifacts].nil?
        Hearth::Validator.validate!(input[:training_job_status], ::String, context: "#{context}[:training_job_status]")
        Hearth::Validator.validate!(input[:secondary_status], ::String, context: "#{context}[:secondary_status]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        HyperParameters.validate!(input[:hyper_parameters], context: "#{context}[:hyper_parameters]") unless input[:hyper_parameters].nil?
        AlgorithmSpecification.validate!(input[:algorithm_specification], context: "#{context}[:algorithm_specification]") unless input[:algorithm_specification].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        ResourceConfig.validate!(input[:resource_config], context: "#{context}[:resource_config]") unless input[:resource_config].nil?
        VpcConfig.validate!(input[:vpc_config], context: "#{context}[:vpc_config]") unless input[:vpc_config].nil?
        StoppingCondition.validate!(input[:stopping_condition], context: "#{context}[:stopping_condition]") unless input[:stopping_condition].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:training_start_time], ::Time, context: "#{context}[:training_start_time]")
        Hearth::Validator.validate!(input[:training_end_time], ::Time, context: "#{context}[:training_end_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        SecondaryStatusTransitions.validate!(input[:secondary_status_transitions], context: "#{context}[:secondary_status_transitions]") unless input[:secondary_status_transitions].nil?
        FinalMetricDataList.validate!(input[:final_metric_data_list], context: "#{context}[:final_metric_data_list]") unless input[:final_metric_data_list].nil?
        Hearth::Validator.validate!(input[:enable_network_isolation], ::TrueClass, ::FalseClass, context: "#{context}[:enable_network_isolation]")
        Hearth::Validator.validate!(input[:enable_inter_container_traffic_encryption], ::TrueClass, ::FalseClass, context: "#{context}[:enable_inter_container_traffic_encryption]")
        Hearth::Validator.validate!(input[:enable_managed_spot_training], ::TrueClass, ::FalseClass, context: "#{context}[:enable_managed_spot_training]")
        CheckpointConfig.validate!(input[:checkpoint_config], context: "#{context}[:checkpoint_config]") unless input[:checkpoint_config].nil?
        Hearth::Validator.validate!(input[:training_time_in_seconds], ::Integer, context: "#{context}[:training_time_in_seconds]")
        Hearth::Validator.validate!(input[:billable_time_in_seconds], ::Integer, context: "#{context}[:billable_time_in_seconds]")
        DebugHookConfig.validate!(input[:debug_hook_config], context: "#{context}[:debug_hook_config]") unless input[:debug_hook_config].nil?
        ExperimentConfig.validate!(input[:experiment_config], context: "#{context}[:experiment_config]") unless input[:experiment_config].nil?
        DebugRuleConfigurations.validate!(input[:debug_rule_configurations], context: "#{context}[:debug_rule_configurations]") unless input[:debug_rule_configurations].nil?
        TensorBoardOutputConfig.validate!(input[:tensor_board_output_config], context: "#{context}[:tensor_board_output_config]") unless input[:tensor_board_output_config].nil?
        DebugRuleEvaluationStatuses.validate!(input[:debug_rule_evaluation_statuses], context: "#{context}[:debug_rule_evaluation_statuses]") unless input[:debug_rule_evaluation_statuses].nil?
        TrainingEnvironmentMap.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        RetryStrategy.validate!(input[:retry_strategy], context: "#{context}[:retry_strategy]") unless input[:retry_strategy].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TrainingJobDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrainingJobDefinition, context: context)
        Hearth::Validator.validate!(input[:training_input_mode], ::String, context: "#{context}[:training_input_mode]")
        HyperParameters.validate!(input[:hyper_parameters], context: "#{context}[:hyper_parameters]") unless input[:hyper_parameters].nil?
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        ResourceConfig.validate!(input[:resource_config], context: "#{context}[:resource_config]") unless input[:resource_config].nil?
        StoppingCondition.validate!(input[:stopping_condition], context: "#{context}[:stopping_condition]") unless input[:stopping_condition].nil?
      end
    end

    class TrainingJobStatusCounters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrainingJobStatusCounters, context: context)
        Hearth::Validator.validate!(input[:completed], ::Integer, context: "#{context}[:completed]")
        Hearth::Validator.validate!(input[:in_progress], ::Integer, context: "#{context}[:in_progress]")
        Hearth::Validator.validate!(input[:retryable_error], ::Integer, context: "#{context}[:retryable_error]")
        Hearth::Validator.validate!(input[:non_retryable_error], ::Integer, context: "#{context}[:non_retryable_error]")
        Hearth::Validator.validate!(input[:stopped], ::Integer, context: "#{context}[:stopped]")
      end
    end

    class TrainingJobStepMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrainingJobStepMetadata, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class TrainingJobSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TrainingJobSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TrainingJobSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrainingJobSummary, context: context)
        Hearth::Validator.validate!(input[:training_job_name], ::String, context: "#{context}[:training_job_name]")
        Hearth::Validator.validate!(input[:training_job_arn], ::String, context: "#{context}[:training_job_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:training_end_time], ::Time, context: "#{context}[:training_end_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:training_job_status], ::String, context: "#{context}[:training_job_status]")
      end
    end

    class TrainingSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrainingSpecification, context: context)
        Hearth::Validator.validate!(input[:training_image], ::String, context: "#{context}[:training_image]")
        Hearth::Validator.validate!(input[:training_image_digest], ::String, context: "#{context}[:training_image_digest]")
        HyperParameterSpecifications.validate!(input[:supported_hyper_parameters], context: "#{context}[:supported_hyper_parameters]") unless input[:supported_hyper_parameters].nil?
        TrainingInstanceTypes.validate!(input[:supported_training_instance_types], context: "#{context}[:supported_training_instance_types]") unless input[:supported_training_instance_types].nil?
        Hearth::Validator.validate!(input[:supports_distributed_training], ::TrueClass, ::FalseClass, context: "#{context}[:supports_distributed_training]")
        MetricDefinitionList.validate!(input[:metric_definitions], context: "#{context}[:metric_definitions]") unless input[:metric_definitions].nil?
        ChannelSpecifications.validate!(input[:training_channels], context: "#{context}[:training_channels]") unless input[:training_channels].nil?
        HyperParameterTuningJobObjectives.validate!(input[:supported_tuning_job_objective_metrics], context: "#{context}[:supported_tuning_job_objective_metrics]") unless input[:supported_tuning_job_objective_metrics].nil?
      end
    end

    class TransformDataSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransformDataSource, context: context)
        TransformS3DataSource.validate!(input[:s3_data_source], context: "#{context}[:s3_data_source]") unless input[:s3_data_source].nil?
      end
    end

    class TransformEnvironmentMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TransformInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransformInput, context: context)
        TransformDataSource.validate!(input[:data_source], context: "#{context}[:data_source]") unless input[:data_source].nil?
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:compression_type], ::String, context: "#{context}[:compression_type]")
        Hearth::Validator.validate!(input[:split_type], ::String, context: "#{context}[:split_type]")
      end
    end

    class TransformInstanceTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TransformJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransformJob, context: context)
        Hearth::Validator.validate!(input[:transform_job_name], ::String, context: "#{context}[:transform_job_name]")
        Hearth::Validator.validate!(input[:transform_job_arn], ::String, context: "#{context}[:transform_job_arn]")
        Hearth::Validator.validate!(input[:transform_job_status], ::String, context: "#{context}[:transform_job_status]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
        Hearth::Validator.validate!(input[:max_concurrent_transforms], ::Integer, context: "#{context}[:max_concurrent_transforms]")
        ModelClientConfig.validate!(input[:model_client_config], context: "#{context}[:model_client_config]") unless input[:model_client_config].nil?
        Hearth::Validator.validate!(input[:max_payload_in_mb], ::Integer, context: "#{context}[:max_payload_in_mb]")
        Hearth::Validator.validate!(input[:batch_strategy], ::String, context: "#{context}[:batch_strategy]")
        TransformEnvironmentMap.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        TransformInput.validate!(input[:transform_input], context: "#{context}[:transform_input]") unless input[:transform_input].nil?
        TransformOutput.validate!(input[:transform_output], context: "#{context}[:transform_output]") unless input[:transform_output].nil?
        TransformResources.validate!(input[:transform_resources], context: "#{context}[:transform_resources]") unless input[:transform_resources].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:transform_start_time], ::Time, context: "#{context}[:transform_start_time]")
        Hearth::Validator.validate!(input[:transform_end_time], ::Time, context: "#{context}[:transform_end_time]")
        Hearth::Validator.validate!(input[:labeling_job_arn], ::String, context: "#{context}[:labeling_job_arn]")
        Hearth::Validator.validate!(input[:auto_ml_job_arn], ::String, context: "#{context}[:auto_ml_job_arn]")
        DataProcessing.validate!(input[:data_processing], context: "#{context}[:data_processing]") unless input[:data_processing].nil?
        ExperimentConfig.validate!(input[:experiment_config], context: "#{context}[:experiment_config]") unless input[:experiment_config].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TransformJobDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransformJobDefinition, context: context)
        Hearth::Validator.validate!(input[:max_concurrent_transforms], ::Integer, context: "#{context}[:max_concurrent_transforms]")
        Hearth::Validator.validate!(input[:max_payload_in_mb], ::Integer, context: "#{context}[:max_payload_in_mb]")
        Hearth::Validator.validate!(input[:batch_strategy], ::String, context: "#{context}[:batch_strategy]")
        TransformEnvironmentMap.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
        TransformInput.validate!(input[:transform_input], context: "#{context}[:transform_input]") unless input[:transform_input].nil?
        TransformOutput.validate!(input[:transform_output], context: "#{context}[:transform_output]") unless input[:transform_output].nil?
        TransformResources.validate!(input[:transform_resources], context: "#{context}[:transform_resources]") unless input[:transform_resources].nil?
      end
    end

    class TransformJobStepMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransformJobStepMetadata, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class TransformJobSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TransformJobSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TransformJobSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransformJobSummary, context: context)
        Hearth::Validator.validate!(input[:transform_job_name], ::String, context: "#{context}[:transform_job_name]")
        Hearth::Validator.validate!(input[:transform_job_arn], ::String, context: "#{context}[:transform_job_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:transform_end_time], ::Time, context: "#{context}[:transform_end_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        Hearth::Validator.validate!(input[:transform_job_status], ::String, context: "#{context}[:transform_job_status]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class TransformOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransformOutput, context: context)
        Hearth::Validator.validate!(input[:s3_output_path], ::String, context: "#{context}[:s3_output_path]")
        Hearth::Validator.validate!(input[:accept], ::String, context: "#{context}[:accept]")
        Hearth::Validator.validate!(input[:assemble_with], ::String, context: "#{context}[:assemble_with]")
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class TransformResources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransformResources, context: context)
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:instance_count], ::Integer, context: "#{context}[:instance_count]")
        Hearth::Validator.validate!(input[:volume_kms_key_id], ::String, context: "#{context}[:volume_kms_key_id]")
      end
    end

    class TransformS3DataSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TransformS3DataSource, context: context)
        Hearth::Validator.validate!(input[:s3_data_type], ::String, context: "#{context}[:s3_data_type]")
        Hearth::Validator.validate!(input[:s3_uri], ::String, context: "#{context}[:s3_uri]")
      end
    end

    class Trial
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Trial, context: context)
        Hearth::Validator.validate!(input[:trial_name], ::String, context: "#{context}[:trial_name]")
        Hearth::Validator.validate!(input[:trial_arn], ::String, context: "#{context}[:trial_arn]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:experiment_name], ::String, context: "#{context}[:experiment_name]")
        TrialSource.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        UserContext.validate!(input[:created_by], context: "#{context}[:created_by]") unless input[:created_by].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        UserContext.validate!(input[:last_modified_by], context: "#{context}[:last_modified_by]") unless input[:last_modified_by].nil?
        MetadataProperties.validate!(input[:metadata_properties], context: "#{context}[:metadata_properties]") unless input[:metadata_properties].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        TrialComponentSimpleSummaries.validate!(input[:trial_component_summaries], context: "#{context}[:trial_component_summaries]") unless input[:trial_component_summaries].nil?
      end
    end

    class TrialComponent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrialComponent, context: context)
        Hearth::Validator.validate!(input[:trial_component_name], ::String, context: "#{context}[:trial_component_name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:trial_component_arn], ::String, context: "#{context}[:trial_component_arn]")
        TrialComponentSource.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        TrialComponentStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        UserContext.validate!(input[:created_by], context: "#{context}[:created_by]") unless input[:created_by].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        UserContext.validate!(input[:last_modified_by], context: "#{context}[:last_modified_by]") unless input[:last_modified_by].nil?
        TrialComponentParameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        TrialComponentArtifacts.validate!(input[:input_artifacts], context: "#{context}[:input_artifacts]") unless input[:input_artifacts].nil?
        TrialComponentArtifacts.validate!(input[:output_artifacts], context: "#{context}[:output_artifacts]") unless input[:output_artifacts].nil?
        TrialComponentMetricSummaries.validate!(input[:metrics], context: "#{context}[:metrics]") unless input[:metrics].nil?
        MetadataProperties.validate!(input[:metadata_properties], context: "#{context}[:metadata_properties]") unless input[:metadata_properties].nil?
        TrialComponentSourceDetail.validate!(input[:source_detail], context: "#{context}[:source_detail]") unless input[:source_detail].nil?
        Hearth::Validator.validate!(input[:lineage_group_arn], ::String, context: "#{context}[:lineage_group_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Parents.validate!(input[:parents], context: "#{context}[:parents]") unless input[:parents].nil?
      end
    end

    class TrialComponentArtifact
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrialComponentArtifact, context: context)
        Hearth::Validator.validate!(input[:media_type], ::String, context: "#{context}[:media_type]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TrialComponentArtifacts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          TrialComponentArtifact.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class TrialComponentMetricSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TrialComponentMetricSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TrialComponentMetricSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrialComponentMetricSummary, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:time_stamp], ::Time, context: "#{context}[:time_stamp]")
        Hearth::Validator.validate!(input[:max], ::Float, context: "#{context}[:max]")
        Hearth::Validator.validate!(input[:min], ::Float, context: "#{context}[:min]")
        Hearth::Validator.validate!(input[:last], ::Float, context: "#{context}[:last]")
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:avg], ::Float, context: "#{context}[:avg]")
        Hearth::Validator.validate!(input[:std_dev], ::Float, context: "#{context}[:std_dev]")
      end
    end

    class TrialComponentParameterValue
      def self.validate!(input, context:)
        case input
        when Types::TrialComponentParameterValue::StringValue
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::TrialComponentParameterValue::NumberValue
          Hearth::Validator.validate!(input.__getobj__, ::Float, context: context)
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::TrialComponentParameterValue, got #{input.class}."
        end
      end

      class StringValue
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class NumberValue
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::Float, context: context)
        end
      end
    end

    class TrialComponentParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          TrialComponentParameterValue.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class TrialComponentSimpleSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TrialComponentSimpleSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TrialComponentSimpleSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrialComponentSimpleSummary, context: context)
        Hearth::Validator.validate!(input[:trial_component_name], ::String, context: "#{context}[:trial_component_name]")
        Hearth::Validator.validate!(input[:trial_component_arn], ::String, context: "#{context}[:trial_component_arn]")
        TrialComponentSource.validate!(input[:trial_component_source], context: "#{context}[:trial_component_source]") unless input[:trial_component_source].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        UserContext.validate!(input[:created_by], context: "#{context}[:created_by]") unless input[:created_by].nil?
      end
    end

    class TrialComponentSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrialComponentSource, context: context)
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
      end
    end

    class TrialComponentSourceDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrialComponentSourceDetail, context: context)
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        TrainingJob.validate!(input[:training_job], context: "#{context}[:training_job]") unless input[:training_job].nil?
        ProcessingJob.validate!(input[:processing_job], context: "#{context}[:processing_job]") unless input[:processing_job].nil?
        TransformJob.validate!(input[:transform_job], context: "#{context}[:transform_job]") unless input[:transform_job].nil?
      end
    end

    class TrialComponentStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrialComponentStatus, context: context)
        Hearth::Validator.validate!(input[:primary_status], ::String, context: "#{context}[:primary_status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TrialComponentSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TrialComponentSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TrialComponentSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrialComponentSummary, context: context)
        Hearth::Validator.validate!(input[:trial_component_name], ::String, context: "#{context}[:trial_component_name]")
        Hearth::Validator.validate!(input[:trial_component_arn], ::String, context: "#{context}[:trial_component_arn]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        TrialComponentSource.validate!(input[:trial_component_source], context: "#{context}[:trial_component_source]") unless input[:trial_component_source].nil?
        TrialComponentStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        UserContext.validate!(input[:created_by], context: "#{context}[:created_by]") unless input[:created_by].nil?
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
        UserContext.validate!(input[:last_modified_by], context: "#{context}[:last_modified_by]") unless input[:last_modified_by].nil?
      end
    end

    class TrialSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrialSource, context: context)
        Hearth::Validator.validate!(input[:source_arn], ::String, context: "#{context}[:source_arn]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
      end
    end

    class TrialSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TrialSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TrialSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrialSummary, context: context)
        Hearth::Validator.validate!(input[:trial_arn], ::String, context: "#{context}[:trial_arn]")
        Hearth::Validator.validate!(input[:trial_name], ::String, context: "#{context}[:trial_name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        TrialSource.validate!(input[:trial_source], context: "#{context}[:trial_source]") unless input[:trial_source].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
      end
    end

    class TuningJobCompletionCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TuningJobCompletionCriteria, context: context)
        Hearth::Validator.validate!(input[:target_objective_metric_value], ::Float, context: "#{context}[:target_objective_metric_value]")
      end
    end

    class TuningJobStepMetaData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TuningJobStepMetaData, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class USD
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::USD, context: context)
        Hearth::Validator.validate!(input[:dollars], ::Integer, context: "#{context}[:dollars]")
        Hearth::Validator.validate!(input[:cents], ::Integer, context: "#{context}[:cents]")
        Hearth::Validator.validate!(input[:tenth_fractions_of_a_cent], ::Integer, context: "#{context}[:tenth_fractions_of_a_cent]")
      end
    end

    class UiConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UiConfig, context: context)
        Hearth::Validator.validate!(input[:ui_template_s3_uri], ::String, context: "#{context}[:ui_template_s3_uri]")
        Hearth::Validator.validate!(input[:human_task_ui_arn], ::String, context: "#{context}[:human_task_ui_arn]")
      end
    end

    class UiTemplate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UiTemplate, context: context)
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
      end
    end

    class UiTemplateInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UiTemplateInfo, context: context)
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Hearth::Validator.validate!(input[:content_sha256], ::String, context: "#{context}[:content_sha256]")
      end
    end

    class UpdateActionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateActionInput, context: context)
        Hearth::Validator.validate!(input[:action_name], ::String, context: "#{context}[:action_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        LineageEntityParameters.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
        ListLineageEntityParameterKey.validate!(input[:properties_to_remove], context: "#{context}[:properties_to_remove]") unless input[:properties_to_remove].nil?
      end
    end

    class UpdateActionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateActionOutput, context: context)
        Hearth::Validator.validate!(input[:action_arn], ::String, context: "#{context}[:action_arn]")
      end
    end

    class UpdateAppImageConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAppImageConfigInput, context: context)
        Hearth::Validator.validate!(input[:app_image_config_name], ::String, context: "#{context}[:app_image_config_name]")
        KernelGatewayImageConfig.validate!(input[:kernel_gateway_image_config], context: "#{context}[:kernel_gateway_image_config]") unless input[:kernel_gateway_image_config].nil?
      end
    end

    class UpdateAppImageConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAppImageConfigOutput, context: context)
        Hearth::Validator.validate!(input[:app_image_config_arn], ::String, context: "#{context}[:app_image_config_arn]")
      end
    end

    class UpdateArtifactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateArtifactInput, context: context)
        Hearth::Validator.validate!(input[:artifact_arn], ::String, context: "#{context}[:artifact_arn]")
        Hearth::Validator.validate!(input[:artifact_name], ::String, context: "#{context}[:artifact_name]")
        LineageEntityParameters.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
        ListLineageEntityParameterKey.validate!(input[:properties_to_remove], context: "#{context}[:properties_to_remove]") unless input[:properties_to_remove].nil?
      end
    end

    class UpdateArtifactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateArtifactOutput, context: context)
        Hearth::Validator.validate!(input[:artifact_arn], ::String, context: "#{context}[:artifact_arn]")
      end
    end

    class UpdateCodeRepositoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCodeRepositoryInput, context: context)
        Hearth::Validator.validate!(input[:code_repository_name], ::String, context: "#{context}[:code_repository_name]")
        GitConfigForUpdate.validate!(input[:git_config], context: "#{context}[:git_config]") unless input[:git_config].nil?
      end
    end

    class UpdateCodeRepositoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCodeRepositoryOutput, context: context)
        Hearth::Validator.validate!(input[:code_repository_arn], ::String, context: "#{context}[:code_repository_arn]")
      end
    end

    class UpdateContextInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContextInput, context: context)
        Hearth::Validator.validate!(input[:context_name], ::String, context: "#{context}[:context_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        LineageEntityParameters.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
        ListLineageEntityParameterKey.validate!(input[:properties_to_remove], context: "#{context}[:properties_to_remove]") unless input[:properties_to_remove].nil?
      end
    end

    class UpdateContextOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContextOutput, context: context)
        Hearth::Validator.validate!(input[:context_arn], ::String, context: "#{context}[:context_arn]")
      end
    end

    class UpdateDeviceFleetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDeviceFleetInput, context: context)
        Hearth::Validator.validate!(input[:device_fleet_name], ::String, context: "#{context}[:device_fleet_name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        EdgeOutputConfig.validate!(input[:output_config], context: "#{context}[:output_config]") unless input[:output_config].nil?
        Hearth::Validator.validate!(input[:enable_iot_role_alias], ::TrueClass, ::FalseClass, context: "#{context}[:enable_iot_role_alias]")
      end
    end

    class UpdateDeviceFleetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDeviceFleetOutput, context: context)
      end
    end

    class UpdateDevicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDevicesInput, context: context)
        Hearth::Validator.validate!(input[:device_fleet_name], ::String, context: "#{context}[:device_fleet_name]")
        Devices.validate!(input[:devices], context: "#{context}[:devices]") unless input[:devices].nil?
      end
    end

    class UpdateDevicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDevicesOutput, context: context)
      end
    end

    class UpdateDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        UserSettings.validate!(input[:default_user_settings], context: "#{context}[:default_user_settings]") unless input[:default_user_settings].nil?
        DomainSettingsForUpdate.validate!(input[:domain_settings_for_update], context: "#{context}[:domain_settings_for_update]") unless input[:domain_settings_for_update].nil?
      end
    end

    class UpdateDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDomainOutput, context: context)
        Hearth::Validator.validate!(input[:domain_arn], ::String, context: "#{context}[:domain_arn]")
      end
    end

    class UpdateEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEndpointInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
        Hearth::Validator.validate!(input[:endpoint_config_name], ::String, context: "#{context}[:endpoint_config_name]")
        Hearth::Validator.validate!(input[:retain_all_variant_properties], ::TrueClass, ::FalseClass, context: "#{context}[:retain_all_variant_properties]")
        VariantPropertyList.validate!(input[:exclude_retained_variant_properties], context: "#{context}[:exclude_retained_variant_properties]") unless input[:exclude_retained_variant_properties].nil?
        DeploymentConfig.validate!(input[:deployment_config], context: "#{context}[:deployment_config]") unless input[:deployment_config].nil?
        Hearth::Validator.validate!(input[:retain_deployment_config], ::TrueClass, ::FalseClass, context: "#{context}[:retain_deployment_config]")
      end
    end

    class UpdateEndpointOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEndpointOutput, context: context)
        Hearth::Validator.validate!(input[:endpoint_arn], ::String, context: "#{context}[:endpoint_arn]")
      end
    end

    class UpdateEndpointWeightsAndCapacitiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEndpointWeightsAndCapacitiesInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_name], ::String, context: "#{context}[:endpoint_name]")
        DesiredWeightAndCapacityList.validate!(input[:desired_weights_and_capacities], context: "#{context}[:desired_weights_and_capacities]") unless input[:desired_weights_and_capacities].nil?
      end
    end

    class UpdateEndpointWeightsAndCapacitiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEndpointWeightsAndCapacitiesOutput, context: context)
        Hearth::Validator.validate!(input[:endpoint_arn], ::String, context: "#{context}[:endpoint_arn]")
      end
    end

    class UpdateExperimentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateExperimentInput, context: context)
        Hearth::Validator.validate!(input[:experiment_name], ::String, context: "#{context}[:experiment_name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateExperimentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateExperimentOutput, context: context)
        Hearth::Validator.validate!(input[:experiment_arn], ::String, context: "#{context}[:experiment_arn]")
      end
    end

    class UpdateImageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateImageInput, context: context)
        ImageDeletePropertyList.validate!(input[:delete_properties], context: "#{context}[:delete_properties]") unless input[:delete_properties].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:image_name], ::String, context: "#{context}[:image_name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class UpdateImageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateImageOutput, context: context)
        Hearth::Validator.validate!(input[:image_arn], ::String, context: "#{context}[:image_arn]")
      end
    end

    class UpdateModelPackageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateModelPackageInput, context: context)
        Hearth::Validator.validate!(input[:model_package_arn], ::String, context: "#{context}[:model_package_arn]")
        Hearth::Validator.validate!(input[:model_approval_status], ::String, context: "#{context}[:model_approval_status]")
        Hearth::Validator.validate!(input[:approval_description], ::String, context: "#{context}[:approval_description]")
        CustomerMetadataMap.validate!(input[:customer_metadata_properties], context: "#{context}[:customer_metadata_properties]") unless input[:customer_metadata_properties].nil?
        CustomerMetadataKeyList.validate!(input[:customer_metadata_properties_to_remove], context: "#{context}[:customer_metadata_properties_to_remove]") unless input[:customer_metadata_properties_to_remove].nil?
        AdditionalInferenceSpecifications.validate!(input[:additional_inference_specifications_to_add], context: "#{context}[:additional_inference_specifications_to_add]") unless input[:additional_inference_specifications_to_add].nil?
      end
    end

    class UpdateModelPackageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateModelPackageOutput, context: context)
        Hearth::Validator.validate!(input[:model_package_arn], ::String, context: "#{context}[:model_package_arn]")
      end
    end

    class UpdateMonitoringScheduleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMonitoringScheduleInput, context: context)
        Hearth::Validator.validate!(input[:monitoring_schedule_name], ::String, context: "#{context}[:monitoring_schedule_name]")
        MonitoringScheduleConfig.validate!(input[:monitoring_schedule_config], context: "#{context}[:monitoring_schedule_config]") unless input[:monitoring_schedule_config].nil?
      end
    end

    class UpdateMonitoringScheduleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMonitoringScheduleOutput, context: context)
        Hearth::Validator.validate!(input[:monitoring_schedule_arn], ::String, context: "#{context}[:monitoring_schedule_arn]")
      end
    end

    class UpdateNotebookInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNotebookInstanceInput, context: context)
        Hearth::Validator.validate!(input[:notebook_instance_name], ::String, context: "#{context}[:notebook_instance_name]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:lifecycle_config_name], ::String, context: "#{context}[:lifecycle_config_name]")
        Hearth::Validator.validate!(input[:disassociate_lifecycle_config], ::TrueClass, ::FalseClass, context: "#{context}[:disassociate_lifecycle_config]")
        Hearth::Validator.validate!(input[:volume_size_in_gb], ::Integer, context: "#{context}[:volume_size_in_gb]")
        Hearth::Validator.validate!(input[:default_code_repository], ::String, context: "#{context}[:default_code_repository]")
        AdditionalCodeRepositoryNamesOrUrls.validate!(input[:additional_code_repositories], context: "#{context}[:additional_code_repositories]") unless input[:additional_code_repositories].nil?
        NotebookInstanceAcceleratorTypes.validate!(input[:accelerator_types], context: "#{context}[:accelerator_types]") unless input[:accelerator_types].nil?
        Hearth::Validator.validate!(input[:disassociate_accelerator_types], ::TrueClass, ::FalseClass, context: "#{context}[:disassociate_accelerator_types]")
        Hearth::Validator.validate!(input[:disassociate_default_code_repository], ::TrueClass, ::FalseClass, context: "#{context}[:disassociate_default_code_repository]")
        Hearth::Validator.validate!(input[:disassociate_additional_code_repositories], ::TrueClass, ::FalseClass, context: "#{context}[:disassociate_additional_code_repositories]")
        Hearth::Validator.validate!(input[:root_access], ::String, context: "#{context}[:root_access]")
        InstanceMetadataServiceConfiguration.validate!(input[:instance_metadata_service_configuration], context: "#{context}[:instance_metadata_service_configuration]") unless input[:instance_metadata_service_configuration].nil?
      end
    end

    class UpdateNotebookInstanceLifecycleConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNotebookInstanceLifecycleConfigInput, context: context)
        Hearth::Validator.validate!(input[:notebook_instance_lifecycle_config_name], ::String, context: "#{context}[:notebook_instance_lifecycle_config_name]")
        NotebookInstanceLifecycleConfigList.validate!(input[:on_create], context: "#{context}[:on_create]") unless input[:on_create].nil?
        NotebookInstanceLifecycleConfigList.validate!(input[:on_start], context: "#{context}[:on_start]") unless input[:on_start].nil?
      end
    end

    class UpdateNotebookInstanceLifecycleConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNotebookInstanceLifecycleConfigOutput, context: context)
      end
    end

    class UpdateNotebookInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNotebookInstanceOutput, context: context)
      end
    end

    class UpdatePipelineExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePipelineExecutionInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_execution_arn], ::String, context: "#{context}[:pipeline_execution_arn]")
        Hearth::Validator.validate!(input[:pipeline_execution_description], ::String, context: "#{context}[:pipeline_execution_description]")
        Hearth::Validator.validate!(input[:pipeline_execution_display_name], ::String, context: "#{context}[:pipeline_execution_display_name]")
        ParallelismConfiguration.validate!(input[:parallelism_configuration], context: "#{context}[:parallelism_configuration]") unless input[:parallelism_configuration].nil?
      end
    end

    class UpdatePipelineExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePipelineExecutionOutput, context: context)
        Hearth::Validator.validate!(input[:pipeline_execution_arn], ::String, context: "#{context}[:pipeline_execution_arn]")
      end
    end

    class UpdatePipelineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePipelineInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_name], ::String, context: "#{context}[:pipeline_name]")
        Hearth::Validator.validate!(input[:pipeline_display_name], ::String, context: "#{context}[:pipeline_display_name]")
        Hearth::Validator.validate!(input[:pipeline_definition], ::String, context: "#{context}[:pipeline_definition]")
        PipelineDefinitionS3Location.validate!(input[:pipeline_definition_s3_location], context: "#{context}[:pipeline_definition_s3_location]") unless input[:pipeline_definition_s3_location].nil?
        Hearth::Validator.validate!(input[:pipeline_description], ::String, context: "#{context}[:pipeline_description]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        ParallelismConfiguration.validate!(input[:parallelism_configuration], context: "#{context}[:parallelism_configuration]") unless input[:parallelism_configuration].nil?
      end
    end

    class UpdatePipelineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePipelineOutput, context: context)
        Hearth::Validator.validate!(input[:pipeline_arn], ::String, context: "#{context}[:pipeline_arn]")
      end
    end

    class UpdateProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProjectInput, context: context)
        Hearth::Validator.validate!(input[:project_name], ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate!(input[:project_description], ::String, context: "#{context}[:project_description]")
        ServiceCatalogProvisioningUpdateDetails.validate!(input[:service_catalog_provisioning_update_details], context: "#{context}[:service_catalog_provisioning_update_details]") unless input[:service_catalog_provisioning_update_details].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UpdateProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProjectOutput, context: context)
        Hearth::Validator.validate!(input[:project_arn], ::String, context: "#{context}[:project_arn]")
      end
    end

    class UpdateTrainingJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTrainingJobInput, context: context)
        Hearth::Validator.validate!(input[:training_job_name], ::String, context: "#{context}[:training_job_name]")
        ProfilerConfigForUpdate.validate!(input[:profiler_config], context: "#{context}[:profiler_config]") unless input[:profiler_config].nil?
        ProfilerRuleConfigurations.validate!(input[:profiler_rule_configurations], context: "#{context}[:profiler_rule_configurations]") unless input[:profiler_rule_configurations].nil?
      end
    end

    class UpdateTrainingJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTrainingJobOutput, context: context)
        Hearth::Validator.validate!(input[:training_job_arn], ::String, context: "#{context}[:training_job_arn]")
      end
    end

    class UpdateTrialComponentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTrialComponentInput, context: context)
        Hearth::Validator.validate!(input[:trial_component_name], ::String, context: "#{context}[:trial_component_name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        TrialComponentStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        TrialComponentParameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        ListTrialComponentKey256.validate!(input[:parameters_to_remove], context: "#{context}[:parameters_to_remove]") unless input[:parameters_to_remove].nil?
        TrialComponentArtifacts.validate!(input[:input_artifacts], context: "#{context}[:input_artifacts]") unless input[:input_artifacts].nil?
        ListTrialComponentKey256.validate!(input[:input_artifacts_to_remove], context: "#{context}[:input_artifacts_to_remove]") unless input[:input_artifacts_to_remove].nil?
        TrialComponentArtifacts.validate!(input[:output_artifacts], context: "#{context}[:output_artifacts]") unless input[:output_artifacts].nil?
        ListTrialComponentKey256.validate!(input[:output_artifacts_to_remove], context: "#{context}[:output_artifacts_to_remove]") unless input[:output_artifacts_to_remove].nil?
      end
    end

    class UpdateTrialComponentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTrialComponentOutput, context: context)
        Hearth::Validator.validate!(input[:trial_component_arn], ::String, context: "#{context}[:trial_component_arn]")
      end
    end

    class UpdateTrialInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTrialInput, context: context)
        Hearth::Validator.validate!(input[:trial_name], ::String, context: "#{context}[:trial_name]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
      end
    end

    class UpdateTrialOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTrialOutput, context: context)
        Hearth::Validator.validate!(input[:trial_arn], ::String, context: "#{context}[:trial_arn]")
      end
    end

    class UpdateUserProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserProfileInput, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:user_profile_name], ::String, context: "#{context}[:user_profile_name]")
        UserSettings.validate!(input[:user_settings], context: "#{context}[:user_settings]") unless input[:user_settings].nil?
      end
    end

    class UpdateUserProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserProfileOutput, context: context)
        Hearth::Validator.validate!(input[:user_profile_arn], ::String, context: "#{context}[:user_profile_arn]")
      end
    end

    class UpdateWorkforceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWorkforceInput, context: context)
        Hearth::Validator.validate!(input[:workforce_name], ::String, context: "#{context}[:workforce_name]")
        SourceIpConfig.validate!(input[:source_ip_config], context: "#{context}[:source_ip_config]") unless input[:source_ip_config].nil?
        OidcConfig.validate!(input[:oidc_config], context: "#{context}[:oidc_config]") unless input[:oidc_config].nil?
      end
    end

    class UpdateWorkforceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWorkforceOutput, context: context)
        Workforce.validate!(input[:workforce], context: "#{context}[:workforce]") unless input[:workforce].nil?
      end
    end

    class UpdateWorkteamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWorkteamInput, context: context)
        Hearth::Validator.validate!(input[:workteam_name], ::String, context: "#{context}[:workteam_name]")
        MemberDefinitions.validate!(input[:member_definitions], context: "#{context}[:member_definitions]") unless input[:member_definitions].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        NotificationConfiguration.validate!(input[:notification_configuration], context: "#{context}[:notification_configuration]") unless input[:notification_configuration].nil?
      end
    end

    class UpdateWorkteamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWorkteamOutput, context: context)
        Workteam.validate!(input[:workteam], context: "#{context}[:workteam]") unless input[:workteam].nil?
      end
    end

    class UserContext
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserContext, context: context)
        Hearth::Validator.validate!(input[:user_profile_arn], ::String, context: "#{context}[:user_profile_arn]")
        Hearth::Validator.validate!(input[:user_profile_name], ::String, context: "#{context}[:user_profile_name]")
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
      end
    end

    class UserProfileDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserProfileDetails, context: context)
        Hearth::Validator.validate!(input[:domain_id], ::String, context: "#{context}[:domain_id]")
        Hearth::Validator.validate!(input[:user_profile_name], ::String, context: "#{context}[:user_profile_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_modified_time], ::Time, context: "#{context}[:last_modified_time]")
      end
    end

    class UserProfileList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UserProfileDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UserSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserSettings, context: context)
        Hearth::Validator.validate!(input[:execution_role], ::String, context: "#{context}[:execution_role]")
        SecurityGroupIds.validate!(input[:security_groups], context: "#{context}[:security_groups]") unless input[:security_groups].nil?
        SharingSettings.validate!(input[:sharing_settings], context: "#{context}[:sharing_settings]") unless input[:sharing_settings].nil?
        JupyterServerAppSettings.validate!(input[:jupyter_server_app_settings], context: "#{context}[:jupyter_server_app_settings]") unless input[:jupyter_server_app_settings].nil?
        KernelGatewayAppSettings.validate!(input[:kernel_gateway_app_settings], context: "#{context}[:kernel_gateway_app_settings]") unless input[:kernel_gateway_app_settings].nil?
        TensorBoardAppSettings.validate!(input[:tensor_board_app_settings], context: "#{context}[:tensor_board_app_settings]") unless input[:tensor_board_app_settings].nil?
        RStudioServerProAppSettings.validate!(input[:r_studio_server_pro_app_settings], context: "#{context}[:r_studio_server_pro_app_settings]") unless input[:r_studio_server_pro_app_settings].nil?
        RSessionAppSettings.validate!(input[:r_session_app_settings], context: "#{context}[:r_session_app_settings]") unless input[:r_session_app_settings].nil?
      end
    end

    class VariantProperty
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VariantProperty, context: context)
        Hearth::Validator.validate!(input[:variant_property_type], ::String, context: "#{context}[:variant_property_type]")
      end
    end

    class VariantPropertyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VariantProperty.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Vertex
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Vertex, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:lineage_type], ::String, context: "#{context}[:lineage_type]")
      end
    end

    class Vertices
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Vertex.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VpcConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcConfig, context: context)
        VpcSecurityGroupIds.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Subnets.validate!(input[:subnets], context: "#{context}[:subnets]") unless input[:subnets].nil?
      end
    end

    class VpcSecurityGroupIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Workforce
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Workforce, context: context)
        Hearth::Validator.validate!(input[:workforce_name], ::String, context: "#{context}[:workforce_name]")
        Hearth::Validator.validate!(input[:workforce_arn], ::String, context: "#{context}[:workforce_arn]")
        Hearth::Validator.validate!(input[:last_updated_date], ::Time, context: "#{context}[:last_updated_date]")
        SourceIpConfig.validate!(input[:source_ip_config], context: "#{context}[:source_ip_config]") unless input[:source_ip_config].nil?
        Hearth::Validator.validate!(input[:sub_domain], ::String, context: "#{context}[:sub_domain]")
        CognitoConfig.validate!(input[:cognito_config], context: "#{context}[:cognito_config]") unless input[:cognito_config].nil?
        OidcConfigForResponse.validate!(input[:oidc_config], context: "#{context}[:oidc_config]") unless input[:oidc_config].nil?
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
      end
    end

    class Workforces
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Workforce.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Workteam
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Workteam, context: context)
        Hearth::Validator.validate!(input[:workteam_name], ::String, context: "#{context}[:workteam_name]")
        MemberDefinitions.validate!(input[:member_definitions], context: "#{context}[:member_definitions]") unless input[:member_definitions].nil?
        Hearth::Validator.validate!(input[:workteam_arn], ::String, context: "#{context}[:workteam_arn]")
        Hearth::Validator.validate!(input[:workforce_arn], ::String, context: "#{context}[:workforce_arn]")
        ProductListings.validate!(input[:product_listing_ids], context: "#{context}[:product_listing_ids]") unless input[:product_listing_ids].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:sub_domain], ::String, context: "#{context}[:sub_domain]")
        Hearth::Validator.validate!(input[:create_date], ::Time, context: "#{context}[:create_date]")
        Hearth::Validator.validate!(input[:last_updated_date], ::Time, context: "#{context}[:last_updated_date]")
        NotificationConfiguration.validate!(input[:notification_configuration], context: "#{context}[:notification_configuration]") unless input[:notification_configuration].nil?
      end
    end

    class Workteams
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Workteam.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
