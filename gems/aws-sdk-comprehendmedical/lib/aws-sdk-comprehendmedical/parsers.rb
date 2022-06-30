# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::ComprehendMedical
  module Parsers

    # Operation Parser for DescribeEntitiesDetectionV2Job
    class DescribeEntitiesDetectionV2Job
      def self.parse(http_resp)
        data = Types::DescribeEntitiesDetectionV2JobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.comprehend_medical_async_job_properties = (Parsers::ComprehendMedicalAsyncJobProperties.parse(map['ComprehendMedicalAsyncJobProperties']) unless map['ComprehendMedicalAsyncJobProperties'].nil?)
        data
      end
    end

    class ComprehendMedicalAsyncJobProperties
      def self.parse(map)
        data = Types::ComprehendMedicalAsyncJobProperties.new
        data.job_id = map['JobId']
        data.job_name = map['JobName']
        data.job_status = map['JobStatus']
        data.message = map['Message']
        data.submit_time = Time.at(map['SubmitTime'].to_i) if map['SubmitTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.expiration_time = Time.at(map['ExpirationTime'].to_i) if map['ExpirationTime']
        data.input_data_config = (Parsers::InputDataConfig.parse(map['InputDataConfig']) unless map['InputDataConfig'].nil?)
        data.output_data_config = (Parsers::OutputDataConfig.parse(map['OutputDataConfig']) unless map['OutputDataConfig'].nil?)
        data.language_code = map['LanguageCode']
        data.data_access_role_arn = map['DataAccessRoleArn']
        data.manifest_file_path = map['ManifestFilePath']
        data.kms_key = map['KMSKey']
        data.model_version = map['ModelVersion']
        return data
      end
    end

    class OutputDataConfig
      def self.parse(map)
        data = Types::OutputDataConfig.new
        data.s3_bucket = map['S3Bucket']
        data.s3_key = map['S3Key']
        return data
      end
    end

    class InputDataConfig
      def self.parse(map)
        data = Types::InputDataConfig.new
        data.s3_bucket = map['S3Bucket']
        data.s3_key = map['S3Key']
        return data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
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
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeICD10CMInferenceJob
    class DescribeICD10CMInferenceJob
      def self.parse(http_resp)
        data = Types::DescribeICD10CMInferenceJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.comprehend_medical_async_job_properties = (Parsers::ComprehendMedicalAsyncJobProperties.parse(map['ComprehendMedicalAsyncJobProperties']) unless map['ComprehendMedicalAsyncJobProperties'].nil?)
        data
      end
    end

    # Operation Parser for DescribePHIDetectionJob
    class DescribePHIDetectionJob
      def self.parse(http_resp)
        data = Types::DescribePHIDetectionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.comprehend_medical_async_job_properties = (Parsers::ComprehendMedicalAsyncJobProperties.parse(map['ComprehendMedicalAsyncJobProperties']) unless map['ComprehendMedicalAsyncJobProperties'].nil?)
        data
      end
    end

    # Operation Parser for DescribeRxNormInferenceJob
    class DescribeRxNormInferenceJob
      def self.parse(http_resp)
        data = Types::DescribeRxNormInferenceJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.comprehend_medical_async_job_properties = (Parsers::ComprehendMedicalAsyncJobProperties.parse(map['ComprehendMedicalAsyncJobProperties']) unless map['ComprehendMedicalAsyncJobProperties'].nil?)
        data
      end
    end

    # Operation Parser for DescribeSNOMEDCTInferenceJob
    class DescribeSNOMEDCTInferenceJob
      def self.parse(http_resp)
        data = Types::DescribeSNOMEDCTInferenceJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.comprehend_medical_async_job_properties = (Parsers::ComprehendMedicalAsyncJobProperties.parse(map['ComprehendMedicalAsyncJobProperties']) unless map['ComprehendMedicalAsyncJobProperties'].nil?)
        data
      end
    end

    # Operation Parser for DetectEntities
    class DetectEntities
      def self.parse(http_resp)
        data = Types::DetectEntitiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.entities = (Parsers::EntityList.parse(map['Entities']) unless map['Entities'].nil?)
        data.unmapped_attributes = (Parsers::UnmappedAttributeList.parse(map['UnmappedAttributes']) unless map['UnmappedAttributes'].nil?)
        data.pagination_token = map['PaginationToken']
        data.model_version = map['ModelVersion']
        data
      end
    end

    class UnmappedAttributeList
      def self.parse(list)
        list.map do |value|
          Parsers::UnmappedAttribute.parse(value) unless value.nil?
        end
      end
    end

    class UnmappedAttribute
      def self.parse(map)
        data = Types::UnmappedAttribute.new
        data.type = map['Type']
        data.attribute = (Parsers::Attribute.parse(map['Attribute']) unless map['Attribute'].nil?)
        return data
      end
    end

    class Attribute
      def self.parse(map)
        data = Types::Attribute.new
        data.type = map['Type']
        data.score = Hearth::NumberHelper.deserialize(map['Score'])
        data.relationship_score = Hearth::NumberHelper.deserialize(map['RelationshipScore'])
        data.relationship_type = map['RelationshipType']
        data.id = map['Id']
        data.begin_offset = map['BeginOffset']
        data.end_offset = map['EndOffset']
        data.text = map['Text']
        data.category = map['Category']
        data.traits = (Parsers::TraitList.parse(map['Traits']) unless map['Traits'].nil?)
        return data
      end
    end

    class TraitList
      def self.parse(list)
        list.map do |value|
          Parsers::Trait.parse(value) unless value.nil?
        end
      end
    end

    class Trait
      def self.parse(map)
        data = Types::Trait.new
        data.name = map['Name']
        data.score = Hearth::NumberHelper.deserialize(map['Score'])
        return data
      end
    end

    class EntityList
      def self.parse(list)
        list.map do |value|
          Parsers::Entity.parse(value) unless value.nil?
        end
      end
    end

    class Entity
      def self.parse(map)
        data = Types::Entity.new
        data.id = map['Id']
        data.begin_offset = map['BeginOffset']
        data.end_offset = map['EndOffset']
        data.score = Hearth::NumberHelper.deserialize(map['Score'])
        data.text = map['Text']
        data.category = map['Category']
        data.type = map['Type']
        data.traits = (Parsers::TraitList.parse(map['Traits']) unless map['Traits'].nil?)
        data.attributes = (Parsers::AttributeList.parse(map['Attributes']) unless map['Attributes'].nil?)
        return data
      end
    end

    class AttributeList
      def self.parse(list)
        list.map do |value|
          Parsers::Attribute.parse(value) unless value.nil?
        end
      end
    end

    # Error Parser for InvalidEncodingException
    class InvalidEncodingException
      def self.parse(http_resp)
        data = Types::InvalidEncodingException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for TextSizeLimitExceededException
    class TextSizeLimitExceededException
      def self.parse(http_resp)
        data = Types::TextSizeLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DetectEntitiesV2
    class DetectEntitiesV2
      def self.parse(http_resp)
        data = Types::DetectEntitiesV2Output.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.entities = (Parsers::EntityList.parse(map['Entities']) unless map['Entities'].nil?)
        data.unmapped_attributes = (Parsers::UnmappedAttributeList.parse(map['UnmappedAttributes']) unless map['UnmappedAttributes'].nil?)
        data.pagination_token = map['PaginationToken']
        data.model_version = map['ModelVersion']
        data
      end
    end

    # Operation Parser for DetectPHI
    class DetectPHI
      def self.parse(http_resp)
        data = Types::DetectPHIOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.entities = (Parsers::EntityList.parse(map['Entities']) unless map['Entities'].nil?)
        data.pagination_token = map['PaginationToken']
        data.model_version = map['ModelVersion']
        data
      end
    end

    # Operation Parser for InferICD10CM
    class InferICD10CM
      def self.parse(http_resp)
        data = Types::InferICD10CMOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.entities = (Parsers::ICD10CMEntityList.parse(map['Entities']) unless map['Entities'].nil?)
        data.pagination_token = map['PaginationToken']
        data.model_version = map['ModelVersion']
        data
      end
    end

    class ICD10CMEntityList
      def self.parse(list)
        list.map do |value|
          Parsers::ICD10CMEntity.parse(value) unless value.nil?
        end
      end
    end

    class ICD10CMEntity
      def self.parse(map)
        data = Types::ICD10CMEntity.new
        data.id = map['Id']
        data.text = map['Text']
        data.category = map['Category']
        data.type = map['Type']
        data.score = Hearth::NumberHelper.deserialize(map['Score'])
        data.begin_offset = map['BeginOffset']
        data.end_offset = map['EndOffset']
        data.attributes = (Parsers::ICD10CMAttributeList.parse(map['Attributes']) unless map['Attributes'].nil?)
        data.traits = (Parsers::ICD10CMTraitList.parse(map['Traits']) unless map['Traits'].nil?)
        data.icd10_cm_concepts = (Parsers::ICD10CMConceptList.parse(map['ICD10CMConcepts']) unless map['ICD10CMConcepts'].nil?)
        return data
      end
    end

    class ICD10CMConceptList
      def self.parse(list)
        list.map do |value|
          Parsers::ICD10CMConcept.parse(value) unless value.nil?
        end
      end
    end

    class ICD10CMConcept
      def self.parse(map)
        data = Types::ICD10CMConcept.new
        data.description = map['Description']
        data.code = map['Code']
        data.score = Hearth::NumberHelper.deserialize(map['Score'])
        return data
      end
    end

    class ICD10CMTraitList
      def self.parse(list)
        list.map do |value|
          Parsers::ICD10CMTrait.parse(value) unless value.nil?
        end
      end
    end

    class ICD10CMTrait
      def self.parse(map)
        data = Types::ICD10CMTrait.new
        data.name = map['Name']
        data.score = Hearth::NumberHelper.deserialize(map['Score'])
        return data
      end
    end

    class ICD10CMAttributeList
      def self.parse(list)
        list.map do |value|
          Parsers::ICD10CMAttribute.parse(value) unless value.nil?
        end
      end
    end

    class ICD10CMAttribute
      def self.parse(map)
        data = Types::ICD10CMAttribute.new
        data.type = map['Type']
        data.score = Hearth::NumberHelper.deserialize(map['Score'])
        data.relationship_score = Hearth::NumberHelper.deserialize(map['RelationshipScore'])
        data.id = map['Id']
        data.begin_offset = map['BeginOffset']
        data.end_offset = map['EndOffset']
        data.text = map['Text']
        data.traits = (Parsers::ICD10CMTraitList.parse(map['Traits']) unless map['Traits'].nil?)
        data.category = map['Category']
        data.relationship_type = map['RelationshipType']
        return data
      end
    end

    # Operation Parser for InferRxNorm
    class InferRxNorm
      def self.parse(http_resp)
        data = Types::InferRxNormOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.entities = (Parsers::RxNormEntityList.parse(map['Entities']) unless map['Entities'].nil?)
        data.pagination_token = map['PaginationToken']
        data.model_version = map['ModelVersion']
        data
      end
    end

    class RxNormEntityList
      def self.parse(list)
        list.map do |value|
          Parsers::RxNormEntity.parse(value) unless value.nil?
        end
      end
    end

    class RxNormEntity
      def self.parse(map)
        data = Types::RxNormEntity.new
        data.id = map['Id']
        data.text = map['Text']
        data.category = map['Category']
        data.type = map['Type']
        data.score = Hearth::NumberHelper.deserialize(map['Score'])
        data.begin_offset = map['BeginOffset']
        data.end_offset = map['EndOffset']
        data.attributes = (Parsers::RxNormAttributeList.parse(map['Attributes']) unless map['Attributes'].nil?)
        data.traits = (Parsers::RxNormTraitList.parse(map['Traits']) unless map['Traits'].nil?)
        data.rx_norm_concepts = (Parsers::RxNormConceptList.parse(map['RxNormConcepts']) unless map['RxNormConcepts'].nil?)
        return data
      end
    end

    class RxNormConceptList
      def self.parse(list)
        list.map do |value|
          Parsers::RxNormConcept.parse(value) unless value.nil?
        end
      end
    end

    class RxNormConcept
      def self.parse(map)
        data = Types::RxNormConcept.new
        data.description = map['Description']
        data.code = map['Code']
        data.score = Hearth::NumberHelper.deserialize(map['Score'])
        return data
      end
    end

    class RxNormTraitList
      def self.parse(list)
        list.map do |value|
          Parsers::RxNormTrait.parse(value) unless value.nil?
        end
      end
    end

    class RxNormTrait
      def self.parse(map)
        data = Types::RxNormTrait.new
        data.name = map['Name']
        data.score = Hearth::NumberHelper.deserialize(map['Score'])
        return data
      end
    end

    class RxNormAttributeList
      def self.parse(list)
        list.map do |value|
          Parsers::RxNormAttribute.parse(value) unless value.nil?
        end
      end
    end

    class RxNormAttribute
      def self.parse(map)
        data = Types::RxNormAttribute.new
        data.type = map['Type']
        data.score = Hearth::NumberHelper.deserialize(map['Score'])
        data.relationship_score = Hearth::NumberHelper.deserialize(map['RelationshipScore'])
        data.id = map['Id']
        data.begin_offset = map['BeginOffset']
        data.end_offset = map['EndOffset']
        data.text = map['Text']
        data.traits = (Parsers::RxNormTraitList.parse(map['Traits']) unless map['Traits'].nil?)
        return data
      end
    end

    # Operation Parser for InferSNOMEDCT
    class InferSNOMEDCT
      def self.parse(http_resp)
        data = Types::InferSNOMEDCTOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.entities = (Parsers::SNOMEDCTEntityList.parse(map['Entities']) unless map['Entities'].nil?)
        data.pagination_token = map['PaginationToken']
        data.model_version = map['ModelVersion']
        data.snomedct_details = (Parsers::SNOMEDCTDetails.parse(map['SNOMEDCTDetails']) unless map['SNOMEDCTDetails'].nil?)
        data.characters = (Parsers::Characters.parse(map['Characters']) unless map['Characters'].nil?)
        data
      end
    end

    class Characters
      def self.parse(map)
        data = Types::Characters.new
        data.original_text_characters = map['OriginalTextCharacters']
        return data
      end
    end

    class SNOMEDCTDetails
      def self.parse(map)
        data = Types::SNOMEDCTDetails.new
        data.edition = map['Edition']
        data.language = map['Language']
        data.version_date = map['VersionDate']
        return data
      end
    end

    class SNOMEDCTEntityList
      def self.parse(list)
        list.map do |value|
          Parsers::SNOMEDCTEntity.parse(value) unless value.nil?
        end
      end
    end

    class SNOMEDCTEntity
      def self.parse(map)
        data = Types::SNOMEDCTEntity.new
        data.id = map['Id']
        data.text = map['Text']
        data.category = map['Category']
        data.type = map['Type']
        data.score = Hearth::NumberHelper.deserialize(map['Score'])
        data.begin_offset = map['BeginOffset']
        data.end_offset = map['EndOffset']
        data.attributes = (Parsers::SNOMEDCTAttributeList.parse(map['Attributes']) unless map['Attributes'].nil?)
        data.traits = (Parsers::SNOMEDCTTraitList.parse(map['Traits']) unless map['Traits'].nil?)
        data.snomedct_concepts = (Parsers::SNOMEDCTConceptList.parse(map['SNOMEDCTConcepts']) unless map['SNOMEDCTConcepts'].nil?)
        return data
      end
    end

    class SNOMEDCTConceptList
      def self.parse(list)
        list.map do |value|
          Parsers::SNOMEDCTConcept.parse(value) unless value.nil?
        end
      end
    end

    class SNOMEDCTConcept
      def self.parse(map)
        data = Types::SNOMEDCTConcept.new
        data.description = map['Description']
        data.code = map['Code']
        data.score = Hearth::NumberHelper.deserialize(map['Score'])
        return data
      end
    end

    class SNOMEDCTTraitList
      def self.parse(list)
        list.map do |value|
          Parsers::SNOMEDCTTrait.parse(value) unless value.nil?
        end
      end
    end

    class SNOMEDCTTrait
      def self.parse(map)
        data = Types::SNOMEDCTTrait.new
        data.name = map['Name']
        data.score = Hearth::NumberHelper.deserialize(map['Score'])
        return data
      end
    end

    class SNOMEDCTAttributeList
      def self.parse(list)
        list.map do |value|
          Parsers::SNOMEDCTAttribute.parse(value) unless value.nil?
        end
      end
    end

    class SNOMEDCTAttribute
      def self.parse(map)
        data = Types::SNOMEDCTAttribute.new
        data.category = map['Category']
        data.type = map['Type']
        data.score = Hearth::NumberHelper.deserialize(map['Score'])
        data.relationship_score = Hearth::NumberHelper.deserialize(map['RelationshipScore'])
        data.relationship_type = map['RelationshipType']
        data.id = map['Id']
        data.begin_offset = map['BeginOffset']
        data.end_offset = map['EndOffset']
        data.text = map['Text']
        data.traits = (Parsers::SNOMEDCTTraitList.parse(map['Traits']) unless map['Traits'].nil?)
        data.snomedct_concepts = (Parsers::SNOMEDCTConceptList.parse(map['SNOMEDCTConcepts']) unless map['SNOMEDCTConcepts'].nil?)
        return data
      end
    end

    # Operation Parser for ListEntitiesDetectionV2Jobs
    class ListEntitiesDetectionV2Jobs
      def self.parse(http_resp)
        data = Types::ListEntitiesDetectionV2JobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.comprehend_medical_async_job_properties_list = (Parsers::ComprehendMedicalAsyncJobPropertiesList.parse(map['ComprehendMedicalAsyncJobPropertiesList']) unless map['ComprehendMedicalAsyncJobPropertiesList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ComprehendMedicalAsyncJobPropertiesList
      def self.parse(list)
        list.map do |value|
          Parsers::ComprehendMedicalAsyncJobProperties.parse(value) unless value.nil?
        end
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ListICD10CMInferenceJobs
    class ListICD10CMInferenceJobs
      def self.parse(http_resp)
        data = Types::ListICD10CMInferenceJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.comprehend_medical_async_job_properties_list = (Parsers::ComprehendMedicalAsyncJobPropertiesList.parse(map['ComprehendMedicalAsyncJobPropertiesList']) unless map['ComprehendMedicalAsyncJobPropertiesList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListPHIDetectionJobs
    class ListPHIDetectionJobs
      def self.parse(http_resp)
        data = Types::ListPHIDetectionJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.comprehend_medical_async_job_properties_list = (Parsers::ComprehendMedicalAsyncJobPropertiesList.parse(map['ComprehendMedicalAsyncJobPropertiesList']) unless map['ComprehendMedicalAsyncJobPropertiesList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListRxNormInferenceJobs
    class ListRxNormInferenceJobs
      def self.parse(http_resp)
        data = Types::ListRxNormInferenceJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.comprehend_medical_async_job_properties_list = (Parsers::ComprehendMedicalAsyncJobPropertiesList.parse(map['ComprehendMedicalAsyncJobPropertiesList']) unless map['ComprehendMedicalAsyncJobPropertiesList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListSNOMEDCTInferenceJobs
    class ListSNOMEDCTInferenceJobs
      def self.parse(http_resp)
        data = Types::ListSNOMEDCTInferenceJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.comprehend_medical_async_job_properties_list = (Parsers::ComprehendMedicalAsyncJobPropertiesList.parse(map['ComprehendMedicalAsyncJobPropertiesList']) unless map['ComprehendMedicalAsyncJobPropertiesList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for StartEntitiesDetectionV2Job
    class StartEntitiesDetectionV2Job
      def self.parse(http_resp)
        data = Types::StartEntitiesDetectionV2JobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data
      end
    end

    # Operation Parser for StartICD10CMInferenceJob
    class StartICD10CMInferenceJob
      def self.parse(http_resp)
        data = Types::StartICD10CMInferenceJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data
      end
    end

    # Operation Parser for StartPHIDetectionJob
    class StartPHIDetectionJob
      def self.parse(http_resp)
        data = Types::StartPHIDetectionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data
      end
    end

    # Operation Parser for StartRxNormInferenceJob
    class StartRxNormInferenceJob
      def self.parse(http_resp)
        data = Types::StartRxNormInferenceJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data
      end
    end

    # Operation Parser for StartSNOMEDCTInferenceJob
    class StartSNOMEDCTInferenceJob
      def self.parse(http_resp)
        data = Types::StartSNOMEDCTInferenceJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data
      end
    end

    # Operation Parser for StopEntitiesDetectionV2Job
    class StopEntitiesDetectionV2Job
      def self.parse(http_resp)
        data = Types::StopEntitiesDetectionV2JobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data
      end
    end

    # Operation Parser for StopICD10CMInferenceJob
    class StopICD10CMInferenceJob
      def self.parse(http_resp)
        data = Types::StopICD10CMInferenceJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data
      end
    end

    # Operation Parser for StopPHIDetectionJob
    class StopPHIDetectionJob
      def self.parse(http_resp)
        data = Types::StopPHIDetectionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data
      end
    end

    # Operation Parser for StopRxNormInferenceJob
    class StopRxNormInferenceJob
      def self.parse(http_resp)
        data = Types::StopRxNormInferenceJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data
      end
    end

    # Operation Parser for StopSNOMEDCTInferenceJob
    class StopSNOMEDCTInferenceJob
      def self.parse(http_resp)
        data = Types::StopSNOMEDCTInferenceJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data
      end
    end
  end
end
