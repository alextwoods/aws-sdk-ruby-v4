# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::ComprehendMedical
  module Params

    module Attribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Attribute, context: context)
        type = Types::Attribute.new
        type.type = params[:type]
        type.score = params[:score]
        type.relationship_score = params[:relationship_score]
        type.relationship_type = params[:relationship_type]
        type.id = params[:id]
        type.begin_offset = params[:begin_offset]
        type.end_offset = params[:end_offset]
        type.text = params[:text]
        type.category = params[:category]
        type.traits = TraitList.build(params[:traits], context: "#{context}[:traits]") unless params[:traits].nil?
        type
      end
    end

    module AttributeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Attribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Characters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Characters, context: context)
        type = Types::Characters.new
        type.original_text_characters = params[:original_text_characters]
        type
      end
    end

    module ComprehendMedicalAsyncJobFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComprehendMedicalAsyncJobFilter, context: context)
        type = Types::ComprehendMedicalAsyncJobFilter.new
        type.job_name = params[:job_name]
        type.job_status = params[:job_status]
        type.submit_time_before = params[:submit_time_before]
        type.submit_time_after = params[:submit_time_after]
        type
      end
    end

    module ComprehendMedicalAsyncJobProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComprehendMedicalAsyncJobProperties, context: context)
        type = Types::ComprehendMedicalAsyncJobProperties.new
        type.job_id = params[:job_id]
        type.job_name = params[:job_name]
        type.job_status = params[:job_status]
        type.message = params[:message]
        type.submit_time = params[:submit_time]
        type.end_time = params[:end_time]
        type.expiration_time = params[:expiration_time]
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.language_code = params[:language_code]
        type.data_access_role_arn = params[:data_access_role_arn]
        type.manifest_file_path = params[:manifest_file_path]
        type.kms_key = params[:kms_key]
        type.model_version = params[:model_version]
        type
      end
    end

    module ComprehendMedicalAsyncJobPropertiesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ComprehendMedicalAsyncJobProperties.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DescribeEntitiesDetectionV2JobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEntitiesDetectionV2JobInput, context: context)
        type = Types::DescribeEntitiesDetectionV2JobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module DescribeEntitiesDetectionV2JobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEntitiesDetectionV2JobOutput, context: context)
        type = Types::DescribeEntitiesDetectionV2JobOutput.new
        type.comprehend_medical_async_job_properties = ComprehendMedicalAsyncJobProperties.build(params[:comprehend_medical_async_job_properties], context: "#{context}[:comprehend_medical_async_job_properties]") unless params[:comprehend_medical_async_job_properties].nil?
        type
      end
    end

    module DescribeICD10CMInferenceJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeICD10CMInferenceJobInput, context: context)
        type = Types::DescribeICD10CMInferenceJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module DescribeICD10CMInferenceJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeICD10CMInferenceJobOutput, context: context)
        type = Types::DescribeICD10CMInferenceJobOutput.new
        type.comprehend_medical_async_job_properties = ComprehendMedicalAsyncJobProperties.build(params[:comprehend_medical_async_job_properties], context: "#{context}[:comprehend_medical_async_job_properties]") unless params[:comprehend_medical_async_job_properties].nil?
        type
      end
    end

    module DescribePHIDetectionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePHIDetectionJobInput, context: context)
        type = Types::DescribePHIDetectionJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module DescribePHIDetectionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePHIDetectionJobOutput, context: context)
        type = Types::DescribePHIDetectionJobOutput.new
        type.comprehend_medical_async_job_properties = ComprehendMedicalAsyncJobProperties.build(params[:comprehend_medical_async_job_properties], context: "#{context}[:comprehend_medical_async_job_properties]") unless params[:comprehend_medical_async_job_properties].nil?
        type
      end
    end

    module DescribeRxNormInferenceJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRxNormInferenceJobInput, context: context)
        type = Types::DescribeRxNormInferenceJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module DescribeRxNormInferenceJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRxNormInferenceJobOutput, context: context)
        type = Types::DescribeRxNormInferenceJobOutput.new
        type.comprehend_medical_async_job_properties = ComprehendMedicalAsyncJobProperties.build(params[:comprehend_medical_async_job_properties], context: "#{context}[:comprehend_medical_async_job_properties]") unless params[:comprehend_medical_async_job_properties].nil?
        type
      end
    end

    module DescribeSNOMEDCTInferenceJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSNOMEDCTInferenceJobInput, context: context)
        type = Types::DescribeSNOMEDCTInferenceJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module DescribeSNOMEDCTInferenceJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSNOMEDCTInferenceJobOutput, context: context)
        type = Types::DescribeSNOMEDCTInferenceJobOutput.new
        type.comprehend_medical_async_job_properties = ComprehendMedicalAsyncJobProperties.build(params[:comprehend_medical_async_job_properties], context: "#{context}[:comprehend_medical_async_job_properties]") unless params[:comprehend_medical_async_job_properties].nil?
        type
      end
    end

    module DetectEntitiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectEntitiesInput, context: context)
        type = Types::DetectEntitiesInput.new
        type.text = params[:text]
        type
      end
    end

    module DetectEntitiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectEntitiesOutput, context: context)
        type = Types::DetectEntitiesOutput.new
        type.entities = EntityList.build(params[:entities], context: "#{context}[:entities]") unless params[:entities].nil?
        type.unmapped_attributes = UnmappedAttributeList.build(params[:unmapped_attributes], context: "#{context}[:unmapped_attributes]") unless params[:unmapped_attributes].nil?
        type.pagination_token = params[:pagination_token]
        type.model_version = params[:model_version]
        type
      end
    end

    module DetectEntitiesV2Input
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectEntitiesV2Input, context: context)
        type = Types::DetectEntitiesV2Input.new
        type.text = params[:text]
        type
      end
    end

    module DetectEntitiesV2Output
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectEntitiesV2Output, context: context)
        type = Types::DetectEntitiesV2Output.new
        type.entities = EntityList.build(params[:entities], context: "#{context}[:entities]") unless params[:entities].nil?
        type.unmapped_attributes = UnmappedAttributeList.build(params[:unmapped_attributes], context: "#{context}[:unmapped_attributes]") unless params[:unmapped_attributes].nil?
        type.pagination_token = params[:pagination_token]
        type.model_version = params[:model_version]
        type
      end
    end

    module DetectPHIInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectPHIInput, context: context)
        type = Types::DetectPHIInput.new
        type.text = params[:text]
        type
      end
    end

    module DetectPHIOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DetectPHIOutput, context: context)
        type = Types::DetectPHIOutput.new
        type.entities = EntityList.build(params[:entities], context: "#{context}[:entities]") unless params[:entities].nil?
        type.pagination_token = params[:pagination_token]
        type.model_version = params[:model_version]
        type
      end
    end

    module Entity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Entity, context: context)
        type = Types::Entity.new
        type.id = params[:id]
        type.begin_offset = params[:begin_offset]
        type.end_offset = params[:end_offset]
        type.score = params[:score]
        type.text = params[:text]
        type.category = params[:category]
        type.type = params[:type]
        type.traits = TraitList.build(params[:traits], context: "#{context}[:traits]") unless params[:traits].nil?
        type.attributes = AttributeList.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module EntityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Entity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ICD10CMAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ICD10CMAttribute, context: context)
        type = Types::ICD10CMAttribute.new
        type.type = params[:type]
        type.score = params[:score]
        type.relationship_score = params[:relationship_score]
        type.id = params[:id]
        type.begin_offset = params[:begin_offset]
        type.end_offset = params[:end_offset]
        type.text = params[:text]
        type.traits = ICD10CMTraitList.build(params[:traits], context: "#{context}[:traits]") unless params[:traits].nil?
        type.category = params[:category]
        type.relationship_type = params[:relationship_type]
        type
      end
    end

    module ICD10CMAttributeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ICD10CMAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ICD10CMConcept
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ICD10CMConcept, context: context)
        type = Types::ICD10CMConcept.new
        type.description = params[:description]
        type.code = params[:code]
        type.score = params[:score]
        type
      end
    end

    module ICD10CMConceptList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ICD10CMConcept.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ICD10CMEntity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ICD10CMEntity, context: context)
        type = Types::ICD10CMEntity.new
        type.id = params[:id]
        type.text = params[:text]
        type.category = params[:category]
        type.type = params[:type]
        type.score = params[:score]
        type.begin_offset = params[:begin_offset]
        type.end_offset = params[:end_offset]
        type.attributes = ICD10CMAttributeList.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.traits = ICD10CMTraitList.build(params[:traits], context: "#{context}[:traits]") unless params[:traits].nil?
        type.icd10_cm_concepts = ICD10CMConceptList.build(params[:icd10_cm_concepts], context: "#{context}[:icd10_cm_concepts]") unless params[:icd10_cm_concepts].nil?
        type
      end
    end

    module ICD10CMEntityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ICD10CMEntity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ICD10CMTrait
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ICD10CMTrait, context: context)
        type = Types::ICD10CMTrait.new
        type.name = params[:name]
        type.score = params[:score]
        type
      end
    end

    module ICD10CMTraitList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ICD10CMTrait.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InferICD10CMInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InferICD10CMInput, context: context)
        type = Types::InferICD10CMInput.new
        type.text = params[:text]
        type
      end
    end

    module InferICD10CMOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InferICD10CMOutput, context: context)
        type = Types::InferICD10CMOutput.new
        type.entities = ICD10CMEntityList.build(params[:entities], context: "#{context}[:entities]") unless params[:entities].nil?
        type.pagination_token = params[:pagination_token]
        type.model_version = params[:model_version]
        type
      end
    end

    module InferRxNormInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InferRxNormInput, context: context)
        type = Types::InferRxNormInput.new
        type.text = params[:text]
        type
      end
    end

    module InferRxNormOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InferRxNormOutput, context: context)
        type = Types::InferRxNormOutput.new
        type.entities = RxNormEntityList.build(params[:entities], context: "#{context}[:entities]") unless params[:entities].nil?
        type.pagination_token = params[:pagination_token]
        type.model_version = params[:model_version]
        type
      end
    end

    module InferSNOMEDCTInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InferSNOMEDCTInput, context: context)
        type = Types::InferSNOMEDCTInput.new
        type.text = params[:text]
        type
      end
    end

    module InferSNOMEDCTOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InferSNOMEDCTOutput, context: context)
        type = Types::InferSNOMEDCTOutput.new
        type.entities = SNOMEDCTEntityList.build(params[:entities], context: "#{context}[:entities]") unless params[:entities].nil?
        type.pagination_token = params[:pagination_token]
        type.model_version = params[:model_version]
        type.snomedct_details = SNOMEDCTDetails.build(params[:snomedct_details], context: "#{context}[:snomedct_details]") unless params[:snomedct_details].nil?
        type.characters = Characters.build(params[:characters], context: "#{context}[:characters]") unless params[:characters].nil?
        type
      end
    end

    module InputDataConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InputDataConfig, context: context)
        type = Types::InputDataConfig.new
        type.s3_bucket = params[:s3_bucket]
        type.s3_key = params[:s3_key]
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidEncodingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidEncodingException, context: context)
        type = Types::InvalidEncodingException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.message = params[:message]
        type
      end
    end

    module ListEntitiesDetectionV2JobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEntitiesDetectionV2JobsInput, context: context)
        type = Types::ListEntitiesDetectionV2JobsInput.new
        type.filter = ComprehendMedicalAsyncJobFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListEntitiesDetectionV2JobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEntitiesDetectionV2JobsOutput, context: context)
        type = Types::ListEntitiesDetectionV2JobsOutput.new
        type.comprehend_medical_async_job_properties_list = ComprehendMedicalAsyncJobPropertiesList.build(params[:comprehend_medical_async_job_properties_list], context: "#{context}[:comprehend_medical_async_job_properties_list]") unless params[:comprehend_medical_async_job_properties_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListICD10CMInferenceJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListICD10CMInferenceJobsInput, context: context)
        type = Types::ListICD10CMInferenceJobsInput.new
        type.filter = ComprehendMedicalAsyncJobFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListICD10CMInferenceJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListICD10CMInferenceJobsOutput, context: context)
        type = Types::ListICD10CMInferenceJobsOutput.new
        type.comprehend_medical_async_job_properties_list = ComprehendMedicalAsyncJobPropertiesList.build(params[:comprehend_medical_async_job_properties_list], context: "#{context}[:comprehend_medical_async_job_properties_list]") unless params[:comprehend_medical_async_job_properties_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPHIDetectionJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPHIDetectionJobsInput, context: context)
        type = Types::ListPHIDetectionJobsInput.new
        type.filter = ComprehendMedicalAsyncJobFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListPHIDetectionJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPHIDetectionJobsOutput, context: context)
        type = Types::ListPHIDetectionJobsOutput.new
        type.comprehend_medical_async_job_properties_list = ComprehendMedicalAsyncJobPropertiesList.build(params[:comprehend_medical_async_job_properties_list], context: "#{context}[:comprehend_medical_async_job_properties_list]") unless params[:comprehend_medical_async_job_properties_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRxNormInferenceJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRxNormInferenceJobsInput, context: context)
        type = Types::ListRxNormInferenceJobsInput.new
        type.filter = ComprehendMedicalAsyncJobFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListRxNormInferenceJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRxNormInferenceJobsOutput, context: context)
        type = Types::ListRxNormInferenceJobsOutput.new
        type.comprehend_medical_async_job_properties_list = ComprehendMedicalAsyncJobPropertiesList.build(params[:comprehend_medical_async_job_properties_list], context: "#{context}[:comprehend_medical_async_job_properties_list]") unless params[:comprehend_medical_async_job_properties_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSNOMEDCTInferenceJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSNOMEDCTInferenceJobsInput, context: context)
        type = Types::ListSNOMEDCTInferenceJobsInput.new
        type.filter = ComprehendMedicalAsyncJobFilter.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListSNOMEDCTInferenceJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSNOMEDCTInferenceJobsOutput, context: context)
        type = Types::ListSNOMEDCTInferenceJobsOutput.new
        type.comprehend_medical_async_job_properties_list = ComprehendMedicalAsyncJobPropertiesList.build(params[:comprehend_medical_async_job_properties_list], context: "#{context}[:comprehend_medical_async_job_properties_list]") unless params[:comprehend_medical_async_job_properties_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module OutputDataConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutputDataConfig, context: context)
        type = Types::OutputDataConfig.new
        type.s3_bucket = params[:s3_bucket]
        type.s3_key = params[:s3_key]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module RxNormAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RxNormAttribute, context: context)
        type = Types::RxNormAttribute.new
        type.type = params[:type]
        type.score = params[:score]
        type.relationship_score = params[:relationship_score]
        type.id = params[:id]
        type.begin_offset = params[:begin_offset]
        type.end_offset = params[:end_offset]
        type.text = params[:text]
        type.traits = RxNormTraitList.build(params[:traits], context: "#{context}[:traits]") unless params[:traits].nil?
        type
      end
    end

    module RxNormAttributeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RxNormAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RxNormConcept
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RxNormConcept, context: context)
        type = Types::RxNormConcept.new
        type.description = params[:description]
        type.code = params[:code]
        type.score = params[:score]
        type
      end
    end

    module RxNormConceptList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RxNormConcept.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RxNormEntity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RxNormEntity, context: context)
        type = Types::RxNormEntity.new
        type.id = params[:id]
        type.text = params[:text]
        type.category = params[:category]
        type.type = params[:type]
        type.score = params[:score]
        type.begin_offset = params[:begin_offset]
        type.end_offset = params[:end_offset]
        type.attributes = RxNormAttributeList.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.traits = RxNormTraitList.build(params[:traits], context: "#{context}[:traits]") unless params[:traits].nil?
        type.rx_norm_concepts = RxNormConceptList.build(params[:rx_norm_concepts], context: "#{context}[:rx_norm_concepts]") unless params[:rx_norm_concepts].nil?
        type
      end
    end

    module RxNormEntityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RxNormEntity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RxNormTrait
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RxNormTrait, context: context)
        type = Types::RxNormTrait.new
        type.name = params[:name]
        type.score = params[:score]
        type
      end
    end

    module RxNormTraitList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RxNormTrait.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SNOMEDCTAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SNOMEDCTAttribute, context: context)
        type = Types::SNOMEDCTAttribute.new
        type.category = params[:category]
        type.type = params[:type]
        type.score = params[:score]
        type.relationship_score = params[:relationship_score]
        type.relationship_type = params[:relationship_type]
        type.id = params[:id]
        type.begin_offset = params[:begin_offset]
        type.end_offset = params[:end_offset]
        type.text = params[:text]
        type.traits = SNOMEDCTTraitList.build(params[:traits], context: "#{context}[:traits]") unless params[:traits].nil?
        type.snomedct_concepts = SNOMEDCTConceptList.build(params[:snomedct_concepts], context: "#{context}[:snomedct_concepts]") unless params[:snomedct_concepts].nil?
        type
      end
    end

    module SNOMEDCTAttributeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SNOMEDCTAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SNOMEDCTConcept
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SNOMEDCTConcept, context: context)
        type = Types::SNOMEDCTConcept.new
        type.description = params[:description]
        type.code = params[:code]
        type.score = params[:score]
        type
      end
    end

    module SNOMEDCTConceptList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SNOMEDCTConcept.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SNOMEDCTDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SNOMEDCTDetails, context: context)
        type = Types::SNOMEDCTDetails.new
        type.edition = params[:edition]
        type.language = params[:language]
        type.version_date = params[:version_date]
        type
      end
    end

    module SNOMEDCTEntity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SNOMEDCTEntity, context: context)
        type = Types::SNOMEDCTEntity.new
        type.id = params[:id]
        type.text = params[:text]
        type.category = params[:category]
        type.type = params[:type]
        type.score = params[:score]
        type.begin_offset = params[:begin_offset]
        type.end_offset = params[:end_offset]
        type.attributes = SNOMEDCTAttributeList.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.traits = SNOMEDCTTraitList.build(params[:traits], context: "#{context}[:traits]") unless params[:traits].nil?
        type.snomedct_concepts = SNOMEDCTConceptList.build(params[:snomedct_concepts], context: "#{context}[:snomedct_concepts]") unless params[:snomedct_concepts].nil?
        type
      end
    end

    module SNOMEDCTEntityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SNOMEDCTEntity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SNOMEDCTTrait
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SNOMEDCTTrait, context: context)
        type = Types::SNOMEDCTTrait.new
        type.name = params[:name]
        type.score = params[:score]
        type
      end
    end

    module SNOMEDCTTraitList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SNOMEDCTTrait.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableException, context: context)
        type = Types::ServiceUnavailableException.new
        type.message = params[:message]
        type
      end
    end

    module StartEntitiesDetectionV2JobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartEntitiesDetectionV2JobInput, context: context)
        type = Types::StartEntitiesDetectionV2JobInput.new
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.data_access_role_arn = params[:data_access_role_arn]
        type.job_name = params[:job_name]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.kms_key = params[:kms_key]
        type.language_code = params[:language_code]
        type
      end
    end

    module StartEntitiesDetectionV2JobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartEntitiesDetectionV2JobOutput, context: context)
        type = Types::StartEntitiesDetectionV2JobOutput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StartICD10CMInferenceJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartICD10CMInferenceJobInput, context: context)
        type = Types::StartICD10CMInferenceJobInput.new
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.data_access_role_arn = params[:data_access_role_arn]
        type.job_name = params[:job_name]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.kms_key = params[:kms_key]
        type.language_code = params[:language_code]
        type
      end
    end

    module StartICD10CMInferenceJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartICD10CMInferenceJobOutput, context: context)
        type = Types::StartICD10CMInferenceJobOutput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StartPHIDetectionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartPHIDetectionJobInput, context: context)
        type = Types::StartPHIDetectionJobInput.new
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.data_access_role_arn = params[:data_access_role_arn]
        type.job_name = params[:job_name]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.kms_key = params[:kms_key]
        type.language_code = params[:language_code]
        type
      end
    end

    module StartPHIDetectionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartPHIDetectionJobOutput, context: context)
        type = Types::StartPHIDetectionJobOutput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StartRxNormInferenceJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartRxNormInferenceJobInput, context: context)
        type = Types::StartRxNormInferenceJobInput.new
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.data_access_role_arn = params[:data_access_role_arn]
        type.job_name = params[:job_name]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.kms_key = params[:kms_key]
        type.language_code = params[:language_code]
        type
      end
    end

    module StartRxNormInferenceJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartRxNormInferenceJobOutput, context: context)
        type = Types::StartRxNormInferenceJobOutput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StartSNOMEDCTInferenceJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSNOMEDCTInferenceJobInput, context: context)
        type = Types::StartSNOMEDCTInferenceJobInput.new
        type.input_data_config = InputDataConfig.build(params[:input_data_config], context: "#{context}[:input_data_config]") unless params[:input_data_config].nil?
        type.output_data_config = OutputDataConfig.build(params[:output_data_config], context: "#{context}[:output_data_config]") unless params[:output_data_config].nil?
        type.data_access_role_arn = params[:data_access_role_arn]
        type.job_name = params[:job_name]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.kms_key = params[:kms_key]
        type.language_code = params[:language_code]
        type
      end
    end

    module StartSNOMEDCTInferenceJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartSNOMEDCTInferenceJobOutput, context: context)
        type = Types::StartSNOMEDCTInferenceJobOutput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StopEntitiesDetectionV2JobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopEntitiesDetectionV2JobInput, context: context)
        type = Types::StopEntitiesDetectionV2JobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StopEntitiesDetectionV2JobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopEntitiesDetectionV2JobOutput, context: context)
        type = Types::StopEntitiesDetectionV2JobOutput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StopICD10CMInferenceJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopICD10CMInferenceJobInput, context: context)
        type = Types::StopICD10CMInferenceJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StopICD10CMInferenceJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopICD10CMInferenceJobOutput, context: context)
        type = Types::StopICD10CMInferenceJobOutput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StopPHIDetectionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopPHIDetectionJobInput, context: context)
        type = Types::StopPHIDetectionJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StopPHIDetectionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopPHIDetectionJobOutput, context: context)
        type = Types::StopPHIDetectionJobOutput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StopRxNormInferenceJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopRxNormInferenceJobInput, context: context)
        type = Types::StopRxNormInferenceJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StopRxNormInferenceJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopRxNormInferenceJobOutput, context: context)
        type = Types::StopRxNormInferenceJobOutput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StopSNOMEDCTInferenceJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopSNOMEDCTInferenceJobInput, context: context)
        type = Types::StopSNOMEDCTInferenceJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StopSNOMEDCTInferenceJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopSNOMEDCTInferenceJobOutput, context: context)
        type = Types::StopSNOMEDCTInferenceJobOutput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module TextSizeLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TextSizeLimitExceededException, context: context)
        type = Types::TextSizeLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.message = params[:message]
        type
      end
    end

    module Trait
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Trait, context: context)
        type = Types::Trait.new
        type.name = params[:name]
        type.score = params[:score]
        type
      end
    end

    module TraitList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Trait.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UnmappedAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnmappedAttribute, context: context)
        type = Types::UnmappedAttribute.new
        type.type = params[:type]
        type.attribute = Attribute.build(params[:attribute], context: "#{context}[:attribute]") unless params[:attribute].nil?
        type
      end
    end

    module UnmappedAttributeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UnmappedAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

  end
end
