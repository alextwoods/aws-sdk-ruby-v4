# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::ComprehendMedical
  module Validators

    class Attribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Attribute, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:score], ::Float, context: "#{context}[:score]")
        Hearth::Validator.validate!(input[:relationship_score], ::Float, context: "#{context}[:relationship_score]")
        Hearth::Validator.validate!(input[:relationship_type], ::String, context: "#{context}[:relationship_type]")
        Hearth::Validator.validate!(input[:id], ::Integer, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:begin_offset], ::Integer, context: "#{context}[:begin_offset]")
        Hearth::Validator.validate!(input[:end_offset], ::Integer, context: "#{context}[:end_offset]")
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        TraitList.validate!(input[:traits], context: "#{context}[:traits]") unless input[:traits].nil?
      end
    end

    class AttributeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Attribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Characters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Characters, context: context)
        Hearth::Validator.validate!(input[:original_text_characters], ::Integer, context: "#{context}[:original_text_characters]")
      end
    end

    class ComprehendMedicalAsyncJobFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComprehendMedicalAsyncJobFilter, context: context)
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:submit_time_before], ::Time, context: "#{context}[:submit_time_before]")
        Hearth::Validator.validate!(input[:submit_time_after], ::Time, context: "#{context}[:submit_time_after]")
      end
    end

    class ComprehendMedicalAsyncJobProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComprehendMedicalAsyncJobProperties, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_status], ::String, context: "#{context}[:job_status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:submit_time], ::Time, context: "#{context}[:submit_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:expiration_time], ::Time, context: "#{context}[:expiration_time]")
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate!(input[:manifest_file_path], ::String, context: "#{context}[:manifest_file_path]")
        Hearth::Validator.validate!(input[:kms_key], ::String, context: "#{context}[:kms_key]")
        Hearth::Validator.validate!(input[:model_version], ::String, context: "#{context}[:model_version]")
      end
    end

    class ComprehendMedicalAsyncJobPropertiesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ComprehendMedicalAsyncJobProperties.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DescribeEntitiesDetectionV2JobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEntitiesDetectionV2JobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DescribeEntitiesDetectionV2JobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEntitiesDetectionV2JobOutput, context: context)
        ComprehendMedicalAsyncJobProperties.validate!(input[:comprehend_medical_async_job_properties], context: "#{context}[:comprehend_medical_async_job_properties]") unless input[:comprehend_medical_async_job_properties].nil?
      end
    end

    class DescribeICD10CMInferenceJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeICD10CMInferenceJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DescribeICD10CMInferenceJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeICD10CMInferenceJobOutput, context: context)
        ComprehendMedicalAsyncJobProperties.validate!(input[:comprehend_medical_async_job_properties], context: "#{context}[:comprehend_medical_async_job_properties]") unless input[:comprehend_medical_async_job_properties].nil?
      end
    end

    class DescribePHIDetectionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePHIDetectionJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DescribePHIDetectionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePHIDetectionJobOutput, context: context)
        ComprehendMedicalAsyncJobProperties.validate!(input[:comprehend_medical_async_job_properties], context: "#{context}[:comprehend_medical_async_job_properties]") unless input[:comprehend_medical_async_job_properties].nil?
      end
    end

    class DescribeRxNormInferenceJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRxNormInferenceJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DescribeRxNormInferenceJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRxNormInferenceJobOutput, context: context)
        ComprehendMedicalAsyncJobProperties.validate!(input[:comprehend_medical_async_job_properties], context: "#{context}[:comprehend_medical_async_job_properties]") unless input[:comprehend_medical_async_job_properties].nil?
      end
    end

    class DescribeSNOMEDCTInferenceJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSNOMEDCTInferenceJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DescribeSNOMEDCTInferenceJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSNOMEDCTInferenceJobOutput, context: context)
        ComprehendMedicalAsyncJobProperties.validate!(input[:comprehend_medical_async_job_properties], context: "#{context}[:comprehend_medical_async_job_properties]") unless input[:comprehend_medical_async_job_properties].nil?
      end
    end

    class DetectEntitiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectEntitiesInput, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
      end
    end

    class DetectEntitiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectEntitiesOutput, context: context)
        EntityList.validate!(input[:entities], context: "#{context}[:entities]") unless input[:entities].nil?
        UnmappedAttributeList.validate!(input[:unmapped_attributes], context: "#{context}[:unmapped_attributes]") unless input[:unmapped_attributes].nil?
        Hearth::Validator.validate!(input[:pagination_token], ::String, context: "#{context}[:pagination_token]")
        Hearth::Validator.validate!(input[:model_version], ::String, context: "#{context}[:model_version]")
      end
    end

    class DetectEntitiesV2Input
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectEntitiesV2Input, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
      end
    end

    class DetectEntitiesV2Output
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectEntitiesV2Output, context: context)
        EntityList.validate!(input[:entities], context: "#{context}[:entities]") unless input[:entities].nil?
        UnmappedAttributeList.validate!(input[:unmapped_attributes], context: "#{context}[:unmapped_attributes]") unless input[:unmapped_attributes].nil?
        Hearth::Validator.validate!(input[:pagination_token], ::String, context: "#{context}[:pagination_token]")
        Hearth::Validator.validate!(input[:model_version], ::String, context: "#{context}[:model_version]")
      end
    end

    class DetectPHIInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectPHIInput, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
      end
    end

    class DetectPHIOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DetectPHIOutput, context: context)
        EntityList.validate!(input[:entities], context: "#{context}[:entities]") unless input[:entities].nil?
        Hearth::Validator.validate!(input[:pagination_token], ::String, context: "#{context}[:pagination_token]")
        Hearth::Validator.validate!(input[:model_version], ::String, context: "#{context}[:model_version]")
      end
    end

    class Entity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Entity, context: context)
        Hearth::Validator.validate!(input[:id], ::Integer, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:begin_offset], ::Integer, context: "#{context}[:begin_offset]")
        Hearth::Validator.validate!(input[:end_offset], ::Integer, context: "#{context}[:end_offset]")
        Hearth::Validator.validate!(input[:score], ::Float, context: "#{context}[:score]")
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        TraitList.validate!(input[:traits], context: "#{context}[:traits]") unless input[:traits].nil?
        AttributeList.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class EntityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Entity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ICD10CMAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ICD10CMAttribute, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:score], ::Float, context: "#{context}[:score]")
        Hearth::Validator.validate!(input[:relationship_score], ::Float, context: "#{context}[:relationship_score]")
        Hearth::Validator.validate!(input[:id], ::Integer, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:begin_offset], ::Integer, context: "#{context}[:begin_offset]")
        Hearth::Validator.validate!(input[:end_offset], ::Integer, context: "#{context}[:end_offset]")
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        ICD10CMTraitList.validate!(input[:traits], context: "#{context}[:traits]") unless input[:traits].nil?
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate!(input[:relationship_type], ::String, context: "#{context}[:relationship_type]")
      end
    end

    class ICD10CMAttributeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ICD10CMAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ICD10CMConcept
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ICD10CMConcept, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:score], ::Float, context: "#{context}[:score]")
      end
    end

    class ICD10CMConceptList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ICD10CMConcept.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ICD10CMEntity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ICD10CMEntity, context: context)
        Hearth::Validator.validate!(input[:id], ::Integer, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:score], ::Float, context: "#{context}[:score]")
        Hearth::Validator.validate!(input[:begin_offset], ::Integer, context: "#{context}[:begin_offset]")
        Hearth::Validator.validate!(input[:end_offset], ::Integer, context: "#{context}[:end_offset]")
        ICD10CMAttributeList.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        ICD10CMTraitList.validate!(input[:traits], context: "#{context}[:traits]") unless input[:traits].nil?
        ICD10CMConceptList.validate!(input[:icd10_cm_concepts], context: "#{context}[:icd10_cm_concepts]") unless input[:icd10_cm_concepts].nil?
      end
    end

    class ICD10CMEntityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ICD10CMEntity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ICD10CMTrait
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ICD10CMTrait, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:score], ::Float, context: "#{context}[:score]")
      end
    end

    class ICD10CMTraitList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ICD10CMTrait.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InferICD10CMInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InferICD10CMInput, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
      end
    end

    class InferICD10CMOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InferICD10CMOutput, context: context)
        ICD10CMEntityList.validate!(input[:entities], context: "#{context}[:entities]") unless input[:entities].nil?
        Hearth::Validator.validate!(input[:pagination_token], ::String, context: "#{context}[:pagination_token]")
        Hearth::Validator.validate!(input[:model_version], ::String, context: "#{context}[:model_version]")
      end
    end

    class InferRxNormInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InferRxNormInput, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
      end
    end

    class InferRxNormOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InferRxNormOutput, context: context)
        RxNormEntityList.validate!(input[:entities], context: "#{context}[:entities]") unless input[:entities].nil?
        Hearth::Validator.validate!(input[:pagination_token], ::String, context: "#{context}[:pagination_token]")
        Hearth::Validator.validate!(input[:model_version], ::String, context: "#{context}[:model_version]")
      end
    end

    class InferSNOMEDCTInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InferSNOMEDCTInput, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
      end
    end

    class InferSNOMEDCTOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InferSNOMEDCTOutput, context: context)
        SNOMEDCTEntityList.validate!(input[:entities], context: "#{context}[:entities]") unless input[:entities].nil?
        Hearth::Validator.validate!(input[:pagination_token], ::String, context: "#{context}[:pagination_token]")
        Hearth::Validator.validate!(input[:model_version], ::String, context: "#{context}[:model_version]")
        SNOMEDCTDetails.validate!(input[:snomedct_details], context: "#{context}[:snomedct_details]") unless input[:snomedct_details].nil?
        Characters.validate!(input[:characters], context: "#{context}[:characters]") unless input[:characters].nil?
      end
    end

    class InputDataConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InputDataConfig, context: context)
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate!(input[:s3_key], ::String, context: "#{context}[:s3_key]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidEncodingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidEncodingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListEntitiesDetectionV2JobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEntitiesDetectionV2JobsInput, context: context)
        ComprehendMedicalAsyncJobFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListEntitiesDetectionV2JobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEntitiesDetectionV2JobsOutput, context: context)
        ComprehendMedicalAsyncJobPropertiesList.validate!(input[:comprehend_medical_async_job_properties_list], context: "#{context}[:comprehend_medical_async_job_properties_list]") unless input[:comprehend_medical_async_job_properties_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListICD10CMInferenceJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListICD10CMInferenceJobsInput, context: context)
        ComprehendMedicalAsyncJobFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListICD10CMInferenceJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListICD10CMInferenceJobsOutput, context: context)
        ComprehendMedicalAsyncJobPropertiesList.validate!(input[:comprehend_medical_async_job_properties_list], context: "#{context}[:comprehend_medical_async_job_properties_list]") unless input[:comprehend_medical_async_job_properties_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPHIDetectionJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPHIDetectionJobsInput, context: context)
        ComprehendMedicalAsyncJobFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListPHIDetectionJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPHIDetectionJobsOutput, context: context)
        ComprehendMedicalAsyncJobPropertiesList.validate!(input[:comprehend_medical_async_job_properties_list], context: "#{context}[:comprehend_medical_async_job_properties_list]") unless input[:comprehend_medical_async_job_properties_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRxNormInferenceJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRxNormInferenceJobsInput, context: context)
        ComprehendMedicalAsyncJobFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListRxNormInferenceJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRxNormInferenceJobsOutput, context: context)
        ComprehendMedicalAsyncJobPropertiesList.validate!(input[:comprehend_medical_async_job_properties_list], context: "#{context}[:comprehend_medical_async_job_properties_list]") unless input[:comprehend_medical_async_job_properties_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSNOMEDCTInferenceJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSNOMEDCTInferenceJobsInput, context: context)
        ComprehendMedicalAsyncJobFilter.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListSNOMEDCTInferenceJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSNOMEDCTInferenceJobsOutput, context: context)
        ComprehendMedicalAsyncJobPropertiesList.validate!(input[:comprehend_medical_async_job_properties_list], context: "#{context}[:comprehend_medical_async_job_properties_list]") unless input[:comprehend_medical_async_job_properties_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class OutputDataConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutputDataConfig, context: context)
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
        Hearth::Validator.validate!(input[:s3_key], ::String, context: "#{context}[:s3_key]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RxNormAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RxNormAttribute, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:score], ::Float, context: "#{context}[:score]")
        Hearth::Validator.validate!(input[:relationship_score], ::Float, context: "#{context}[:relationship_score]")
        Hearth::Validator.validate!(input[:id], ::Integer, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:begin_offset], ::Integer, context: "#{context}[:begin_offset]")
        Hearth::Validator.validate!(input[:end_offset], ::Integer, context: "#{context}[:end_offset]")
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        RxNormTraitList.validate!(input[:traits], context: "#{context}[:traits]") unless input[:traits].nil?
      end
    end

    class RxNormAttributeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RxNormAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RxNormConcept
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RxNormConcept, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:score], ::Float, context: "#{context}[:score]")
      end
    end

    class RxNormConceptList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RxNormConcept.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RxNormEntity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RxNormEntity, context: context)
        Hearth::Validator.validate!(input[:id], ::Integer, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:score], ::Float, context: "#{context}[:score]")
        Hearth::Validator.validate!(input[:begin_offset], ::Integer, context: "#{context}[:begin_offset]")
        Hearth::Validator.validate!(input[:end_offset], ::Integer, context: "#{context}[:end_offset]")
        RxNormAttributeList.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        RxNormTraitList.validate!(input[:traits], context: "#{context}[:traits]") unless input[:traits].nil?
        RxNormConceptList.validate!(input[:rx_norm_concepts], context: "#{context}[:rx_norm_concepts]") unless input[:rx_norm_concepts].nil?
      end
    end

    class RxNormEntityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RxNormEntity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RxNormTrait
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RxNormTrait, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:score], ::Float, context: "#{context}[:score]")
      end
    end

    class RxNormTraitList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RxNormTrait.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SNOMEDCTAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SNOMEDCTAttribute, context: context)
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:score], ::Float, context: "#{context}[:score]")
        Hearth::Validator.validate!(input[:relationship_score], ::Float, context: "#{context}[:relationship_score]")
        Hearth::Validator.validate!(input[:relationship_type], ::String, context: "#{context}[:relationship_type]")
        Hearth::Validator.validate!(input[:id], ::Integer, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:begin_offset], ::Integer, context: "#{context}[:begin_offset]")
        Hearth::Validator.validate!(input[:end_offset], ::Integer, context: "#{context}[:end_offset]")
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        SNOMEDCTTraitList.validate!(input[:traits], context: "#{context}[:traits]") unless input[:traits].nil?
        SNOMEDCTConceptList.validate!(input[:snomedct_concepts], context: "#{context}[:snomedct_concepts]") unless input[:snomedct_concepts].nil?
      end
    end

    class SNOMEDCTAttributeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SNOMEDCTAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SNOMEDCTConcept
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SNOMEDCTConcept, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:score], ::Float, context: "#{context}[:score]")
      end
    end

    class SNOMEDCTConceptList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SNOMEDCTConcept.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SNOMEDCTDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SNOMEDCTDetails, context: context)
        Hearth::Validator.validate!(input[:edition], ::String, context: "#{context}[:edition]")
        Hearth::Validator.validate!(input[:language], ::String, context: "#{context}[:language]")
        Hearth::Validator.validate!(input[:version_date], ::String, context: "#{context}[:version_date]")
      end
    end

    class SNOMEDCTEntity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SNOMEDCTEntity, context: context)
        Hearth::Validator.validate!(input[:id], ::Integer, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Hearth::Validator.validate!(input[:category], ::String, context: "#{context}[:category]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:score], ::Float, context: "#{context}[:score]")
        Hearth::Validator.validate!(input[:begin_offset], ::Integer, context: "#{context}[:begin_offset]")
        Hearth::Validator.validate!(input[:end_offset], ::Integer, context: "#{context}[:end_offset]")
        SNOMEDCTAttributeList.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        SNOMEDCTTraitList.validate!(input[:traits], context: "#{context}[:traits]") unless input[:traits].nil?
        SNOMEDCTConceptList.validate!(input[:snomedct_concepts], context: "#{context}[:snomedct_concepts]") unless input[:snomedct_concepts].nil?
      end
    end

    class SNOMEDCTEntityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SNOMEDCTEntity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SNOMEDCTTrait
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SNOMEDCTTrait, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:score], ::Float, context: "#{context}[:score]")
      end
    end

    class SNOMEDCTTraitList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SNOMEDCTTrait.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StartEntitiesDetectionV2JobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartEntitiesDetectionV2JobInput, context: context)
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:kms_key], ::String, context: "#{context}[:kms_key]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
      end
    end

    class StartEntitiesDetectionV2JobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartEntitiesDetectionV2JobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StartICD10CMInferenceJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartICD10CMInferenceJobInput, context: context)
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:kms_key], ::String, context: "#{context}[:kms_key]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
      end
    end

    class StartICD10CMInferenceJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartICD10CMInferenceJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StartPHIDetectionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartPHIDetectionJobInput, context: context)
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:kms_key], ::String, context: "#{context}[:kms_key]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
      end
    end

    class StartPHIDetectionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartPHIDetectionJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StartRxNormInferenceJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartRxNormInferenceJobInput, context: context)
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:kms_key], ::String, context: "#{context}[:kms_key]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
      end
    end

    class StartRxNormInferenceJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartRxNormInferenceJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StartSNOMEDCTInferenceJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSNOMEDCTInferenceJobInput, context: context)
        InputDataConfig.validate!(input[:input_data_config], context: "#{context}[:input_data_config]") unless input[:input_data_config].nil?
        OutputDataConfig.validate!(input[:output_data_config], context: "#{context}[:output_data_config]") unless input[:output_data_config].nil?
        Hearth::Validator.validate!(input[:data_access_role_arn], ::String, context: "#{context}[:data_access_role_arn]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:kms_key], ::String, context: "#{context}[:kms_key]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
      end
    end

    class StartSNOMEDCTInferenceJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartSNOMEDCTInferenceJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StopEntitiesDetectionV2JobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopEntitiesDetectionV2JobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StopEntitiesDetectionV2JobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopEntitiesDetectionV2JobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StopICD10CMInferenceJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopICD10CMInferenceJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StopICD10CMInferenceJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopICD10CMInferenceJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StopPHIDetectionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopPHIDetectionJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StopPHIDetectionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopPHIDetectionJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StopRxNormInferenceJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopRxNormInferenceJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StopRxNormInferenceJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopRxNormInferenceJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StopSNOMEDCTInferenceJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopSNOMEDCTInferenceJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StopSNOMEDCTInferenceJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopSNOMEDCTInferenceJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class TextSizeLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TextSizeLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Trait
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Trait, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:score], ::Float, context: "#{context}[:score]")
      end
    end

    class TraitList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Trait.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UnmappedAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnmappedAttribute, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Attribute.validate!(input[:attribute], context: "#{context}[:attribute]") unless input[:attribute].nil?
      end
    end

    class UnmappedAttributeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UnmappedAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
