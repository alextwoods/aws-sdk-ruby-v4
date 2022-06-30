# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ComprehendMedical
  module Stubs

    # Operation Stubber for DescribeEntitiesDetectionV2Job
    class DescribeEntitiesDetectionV2Job
      def self.default(visited=[])
        {
          comprehend_medical_async_job_properties: Stubs::ComprehendMedicalAsyncJobProperties.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ComprehendMedicalAsyncJobProperties'] = Stubs::ComprehendMedicalAsyncJobProperties.stub(stub[:comprehend_medical_async_job_properties]) unless stub[:comprehend_medical_async_job_properties].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ComprehendMedicalAsyncJobProperties
    class ComprehendMedicalAsyncJobProperties
      def self.default(visited=[])
        return nil if visited.include?('ComprehendMedicalAsyncJobProperties')
        visited = visited + ['ComprehendMedicalAsyncJobProperties']
        {
          job_id: 'job_id',
          job_name: 'job_name',
          job_status: 'job_status',
          message: 'message',
          submit_time: Time.now,
          end_time: Time.now,
          expiration_time: Time.now,
          input_data_config: Stubs::InputDataConfig.default(visited),
          output_data_config: Stubs::OutputDataConfig.default(visited),
          language_code: 'language_code',
          data_access_role_arn: 'data_access_role_arn',
          manifest_file_path: 'manifest_file_path',
          kms_key: 'kms_key',
          model_version: 'model_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::ComprehendMedicalAsyncJobProperties.new
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['SubmitTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:submit_time]).to_i unless stub[:submit_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['ExpirationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expiration_time]).to_i unless stub[:expiration_time].nil?
        data['InputDataConfig'] = Stubs::InputDataConfig.stub(stub[:input_data_config]) unless stub[:input_data_config].nil?
        data['OutputDataConfig'] = Stubs::OutputDataConfig.stub(stub[:output_data_config]) unless stub[:output_data_config].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['DataAccessRoleArn'] = stub[:data_access_role_arn] unless stub[:data_access_role_arn].nil?
        data['ManifestFilePath'] = stub[:manifest_file_path] unless stub[:manifest_file_path].nil?
        data['KMSKey'] = stub[:kms_key] unless stub[:kms_key].nil?
        data['ModelVersion'] = stub[:model_version] unless stub[:model_version].nil?
        data
      end
    end

    # Structure Stubber for OutputDataConfig
    class OutputDataConfig
      def self.default(visited=[])
        return nil if visited.include?('OutputDataConfig')
        visited = visited + ['OutputDataConfig']
        {
          s3_bucket: 's3_bucket',
          s3_key: 's3_key',
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputDataConfig.new
        data = {}
        data['S3Bucket'] = stub[:s3_bucket] unless stub[:s3_bucket].nil?
        data['S3Key'] = stub[:s3_key] unless stub[:s3_key].nil?
        data
      end
    end

    # Structure Stubber for InputDataConfig
    class InputDataConfig
      def self.default(visited=[])
        return nil if visited.include?('InputDataConfig')
        visited = visited + ['InputDataConfig']
        {
          s3_bucket: 's3_bucket',
          s3_key: 's3_key',
        }
      end

      def self.stub(stub)
        stub ||= Types::InputDataConfig.new
        data = {}
        data['S3Bucket'] = stub[:s3_bucket] unless stub[:s3_bucket].nil?
        data['S3Key'] = stub[:s3_key] unless stub[:s3_key].nil?
        data
      end
    end

    # Operation Stubber for DescribeICD10CMInferenceJob
    class DescribeICD10CMInferenceJob
      def self.default(visited=[])
        {
          comprehend_medical_async_job_properties: Stubs::ComprehendMedicalAsyncJobProperties.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ComprehendMedicalAsyncJobProperties'] = Stubs::ComprehendMedicalAsyncJobProperties.stub(stub[:comprehend_medical_async_job_properties]) unless stub[:comprehend_medical_async_job_properties].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribePHIDetectionJob
    class DescribePHIDetectionJob
      def self.default(visited=[])
        {
          comprehend_medical_async_job_properties: Stubs::ComprehendMedicalAsyncJobProperties.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ComprehendMedicalAsyncJobProperties'] = Stubs::ComprehendMedicalAsyncJobProperties.stub(stub[:comprehend_medical_async_job_properties]) unless stub[:comprehend_medical_async_job_properties].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeRxNormInferenceJob
    class DescribeRxNormInferenceJob
      def self.default(visited=[])
        {
          comprehend_medical_async_job_properties: Stubs::ComprehendMedicalAsyncJobProperties.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ComprehendMedicalAsyncJobProperties'] = Stubs::ComprehendMedicalAsyncJobProperties.stub(stub[:comprehend_medical_async_job_properties]) unless stub[:comprehend_medical_async_job_properties].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeSNOMEDCTInferenceJob
    class DescribeSNOMEDCTInferenceJob
      def self.default(visited=[])
        {
          comprehend_medical_async_job_properties: Stubs::ComprehendMedicalAsyncJobProperties.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ComprehendMedicalAsyncJobProperties'] = Stubs::ComprehendMedicalAsyncJobProperties.stub(stub[:comprehend_medical_async_job_properties]) unless stub[:comprehend_medical_async_job_properties].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DetectEntities
    class DetectEntities
      def self.default(visited=[])
        {
          entities: Stubs::EntityList.default(visited),
          unmapped_attributes: Stubs::UnmappedAttributeList.default(visited),
          pagination_token: 'pagination_token',
          model_version: 'model_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Entities'] = Stubs::EntityList.stub(stub[:entities]) unless stub[:entities].nil?
        data['UnmappedAttributes'] = Stubs::UnmappedAttributeList.stub(stub[:unmapped_attributes]) unless stub[:unmapped_attributes].nil?
        data['PaginationToken'] = stub[:pagination_token] unless stub[:pagination_token].nil?
        data['ModelVersion'] = stub[:model_version] unless stub[:model_version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for UnmappedAttributeList
    class UnmappedAttributeList
      def self.default(visited=[])
        return nil if visited.include?('UnmappedAttributeList')
        visited = visited + ['UnmappedAttributeList']
        [
          Stubs::UnmappedAttribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UnmappedAttribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UnmappedAttribute
    class UnmappedAttribute
      def self.default(visited=[])
        return nil if visited.include?('UnmappedAttribute')
        visited = visited + ['UnmappedAttribute']
        {
          type: 'type',
          attribute: Stubs::Attribute.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UnmappedAttribute.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Attribute'] = Stubs::Attribute.stub(stub[:attribute]) unless stub[:attribute].nil?
        data
      end
    end

    # Structure Stubber for Attribute
    class Attribute
      def self.default(visited=[])
        return nil if visited.include?('Attribute')
        visited = visited + ['Attribute']
        {
          type: 'type',
          score: 1.0,
          relationship_score: 1.0,
          relationship_type: 'relationship_type',
          id: 1,
          begin_offset: 1,
          end_offset: 1,
          text: 'text',
          category: 'category',
          traits: Stubs::TraitList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Attribute.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Score'] = Hearth::NumberHelper.serialize(stub[:score])
        data['RelationshipScore'] = Hearth::NumberHelper.serialize(stub[:relationship_score])
        data['RelationshipType'] = stub[:relationship_type] unless stub[:relationship_type].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['BeginOffset'] = stub[:begin_offset] unless stub[:begin_offset].nil?
        data['EndOffset'] = stub[:end_offset] unless stub[:end_offset].nil?
        data['Text'] = stub[:text] unless stub[:text].nil?
        data['Category'] = stub[:category] unless stub[:category].nil?
        data['Traits'] = Stubs::TraitList.stub(stub[:traits]) unless stub[:traits].nil?
        data
      end
    end

    # List Stubber for TraitList
    class TraitList
      def self.default(visited=[])
        return nil if visited.include?('TraitList')
        visited = visited + ['TraitList']
        [
          Stubs::Trait.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Trait.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Trait
    class Trait
      def self.default(visited=[])
        return nil if visited.include?('Trait')
        visited = visited + ['Trait']
        {
          name: 'name',
          score: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::Trait.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Score'] = Hearth::NumberHelper.serialize(stub[:score])
        data
      end
    end

    # List Stubber for EntityList
    class EntityList
      def self.default(visited=[])
        return nil if visited.include?('EntityList')
        visited = visited + ['EntityList']
        [
          Stubs::Entity.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Entity.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Entity
    class Entity
      def self.default(visited=[])
        return nil if visited.include?('Entity')
        visited = visited + ['Entity']
        {
          id: 1,
          begin_offset: 1,
          end_offset: 1,
          score: 1.0,
          text: 'text',
          category: 'category',
          type: 'type',
          traits: Stubs::TraitList.default(visited),
          attributes: Stubs::AttributeList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Entity.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['BeginOffset'] = stub[:begin_offset] unless stub[:begin_offset].nil?
        data['EndOffset'] = stub[:end_offset] unless stub[:end_offset].nil?
        data['Score'] = Hearth::NumberHelper.serialize(stub[:score])
        data['Text'] = stub[:text] unless stub[:text].nil?
        data['Category'] = stub[:category] unless stub[:category].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Traits'] = Stubs::TraitList.stub(stub[:traits]) unless stub[:traits].nil?
        data['Attributes'] = Stubs::AttributeList.stub(stub[:attributes]) unless stub[:attributes].nil?
        data
      end
    end

    # List Stubber for AttributeList
    class AttributeList
      def self.default(visited=[])
        return nil if visited.include?('AttributeList')
        visited = visited + ['AttributeList']
        [
          Stubs::Attribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Attribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DetectEntitiesV2
    class DetectEntitiesV2
      def self.default(visited=[])
        {
          entities: Stubs::EntityList.default(visited),
          unmapped_attributes: Stubs::UnmappedAttributeList.default(visited),
          pagination_token: 'pagination_token',
          model_version: 'model_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Entities'] = Stubs::EntityList.stub(stub[:entities]) unless stub[:entities].nil?
        data['UnmappedAttributes'] = Stubs::UnmappedAttributeList.stub(stub[:unmapped_attributes]) unless stub[:unmapped_attributes].nil?
        data['PaginationToken'] = stub[:pagination_token] unless stub[:pagination_token].nil?
        data['ModelVersion'] = stub[:model_version] unless stub[:model_version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DetectPHI
    class DetectPHI
      def self.default(visited=[])
        {
          entities: Stubs::EntityList.default(visited),
          pagination_token: 'pagination_token',
          model_version: 'model_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Entities'] = Stubs::EntityList.stub(stub[:entities]) unless stub[:entities].nil?
        data['PaginationToken'] = stub[:pagination_token] unless stub[:pagination_token].nil?
        data['ModelVersion'] = stub[:model_version] unless stub[:model_version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for InferICD10CM
    class InferICD10CM
      def self.default(visited=[])
        {
          entities: Stubs::ICD10CMEntityList.default(visited),
          pagination_token: 'pagination_token',
          model_version: 'model_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Entities'] = Stubs::ICD10CMEntityList.stub(stub[:entities]) unless stub[:entities].nil?
        data['PaginationToken'] = stub[:pagination_token] unless stub[:pagination_token].nil?
        data['ModelVersion'] = stub[:model_version] unless stub[:model_version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ICD10CMEntityList
    class ICD10CMEntityList
      def self.default(visited=[])
        return nil if visited.include?('ICD10CMEntityList')
        visited = visited + ['ICD10CMEntityList']
        [
          Stubs::ICD10CMEntity.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ICD10CMEntity.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ICD10CMEntity
    class ICD10CMEntity
      def self.default(visited=[])
        return nil if visited.include?('ICD10CMEntity')
        visited = visited + ['ICD10CMEntity']
        {
          id: 1,
          text: 'text',
          category: 'category',
          type: 'type',
          score: 1.0,
          begin_offset: 1,
          end_offset: 1,
          attributes: Stubs::ICD10CMAttributeList.default(visited),
          traits: Stubs::ICD10CMTraitList.default(visited),
          icd10_cm_concepts: Stubs::ICD10CMConceptList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ICD10CMEntity.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Text'] = stub[:text] unless stub[:text].nil?
        data['Category'] = stub[:category] unless stub[:category].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Score'] = Hearth::NumberHelper.serialize(stub[:score])
        data['BeginOffset'] = stub[:begin_offset] unless stub[:begin_offset].nil?
        data['EndOffset'] = stub[:end_offset] unless stub[:end_offset].nil?
        data['Attributes'] = Stubs::ICD10CMAttributeList.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['Traits'] = Stubs::ICD10CMTraitList.stub(stub[:traits]) unless stub[:traits].nil?
        data['ICD10CMConcepts'] = Stubs::ICD10CMConceptList.stub(stub[:icd10_cm_concepts]) unless stub[:icd10_cm_concepts].nil?
        data
      end
    end

    # List Stubber for ICD10CMConceptList
    class ICD10CMConceptList
      def self.default(visited=[])
        return nil if visited.include?('ICD10CMConceptList')
        visited = visited + ['ICD10CMConceptList']
        [
          Stubs::ICD10CMConcept.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ICD10CMConcept.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ICD10CMConcept
    class ICD10CMConcept
      def self.default(visited=[])
        return nil if visited.include?('ICD10CMConcept')
        visited = visited + ['ICD10CMConcept']
        {
          description: 'description',
          code: 'code',
          score: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::ICD10CMConcept.new
        data = {}
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Code'] = stub[:code] unless stub[:code].nil?
        data['Score'] = Hearth::NumberHelper.serialize(stub[:score])
        data
      end
    end

    # List Stubber for ICD10CMTraitList
    class ICD10CMTraitList
      def self.default(visited=[])
        return nil if visited.include?('ICD10CMTraitList')
        visited = visited + ['ICD10CMTraitList']
        [
          Stubs::ICD10CMTrait.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ICD10CMTrait.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ICD10CMTrait
    class ICD10CMTrait
      def self.default(visited=[])
        return nil if visited.include?('ICD10CMTrait')
        visited = visited + ['ICD10CMTrait']
        {
          name: 'name',
          score: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::ICD10CMTrait.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Score'] = Hearth::NumberHelper.serialize(stub[:score])
        data
      end
    end

    # List Stubber for ICD10CMAttributeList
    class ICD10CMAttributeList
      def self.default(visited=[])
        return nil if visited.include?('ICD10CMAttributeList')
        visited = visited + ['ICD10CMAttributeList']
        [
          Stubs::ICD10CMAttribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ICD10CMAttribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ICD10CMAttribute
    class ICD10CMAttribute
      def self.default(visited=[])
        return nil if visited.include?('ICD10CMAttribute')
        visited = visited + ['ICD10CMAttribute']
        {
          type: 'type',
          score: 1.0,
          relationship_score: 1.0,
          id: 1,
          begin_offset: 1,
          end_offset: 1,
          text: 'text',
          traits: Stubs::ICD10CMTraitList.default(visited),
          category: 'category',
          relationship_type: 'relationship_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ICD10CMAttribute.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Score'] = Hearth::NumberHelper.serialize(stub[:score])
        data['RelationshipScore'] = Hearth::NumberHelper.serialize(stub[:relationship_score])
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['BeginOffset'] = stub[:begin_offset] unless stub[:begin_offset].nil?
        data['EndOffset'] = stub[:end_offset] unless stub[:end_offset].nil?
        data['Text'] = stub[:text] unless stub[:text].nil?
        data['Traits'] = Stubs::ICD10CMTraitList.stub(stub[:traits]) unless stub[:traits].nil?
        data['Category'] = stub[:category] unless stub[:category].nil?
        data['RelationshipType'] = stub[:relationship_type] unless stub[:relationship_type].nil?
        data
      end
    end

    # Operation Stubber for InferRxNorm
    class InferRxNorm
      def self.default(visited=[])
        {
          entities: Stubs::RxNormEntityList.default(visited),
          pagination_token: 'pagination_token',
          model_version: 'model_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Entities'] = Stubs::RxNormEntityList.stub(stub[:entities]) unless stub[:entities].nil?
        data['PaginationToken'] = stub[:pagination_token] unless stub[:pagination_token].nil?
        data['ModelVersion'] = stub[:model_version] unless stub[:model_version].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RxNormEntityList
    class RxNormEntityList
      def self.default(visited=[])
        return nil if visited.include?('RxNormEntityList')
        visited = visited + ['RxNormEntityList']
        [
          Stubs::RxNormEntity.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RxNormEntity.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RxNormEntity
    class RxNormEntity
      def self.default(visited=[])
        return nil if visited.include?('RxNormEntity')
        visited = visited + ['RxNormEntity']
        {
          id: 1,
          text: 'text',
          category: 'category',
          type: 'type',
          score: 1.0,
          begin_offset: 1,
          end_offset: 1,
          attributes: Stubs::RxNormAttributeList.default(visited),
          traits: Stubs::RxNormTraitList.default(visited),
          rx_norm_concepts: Stubs::RxNormConceptList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RxNormEntity.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Text'] = stub[:text] unless stub[:text].nil?
        data['Category'] = stub[:category] unless stub[:category].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Score'] = Hearth::NumberHelper.serialize(stub[:score])
        data['BeginOffset'] = stub[:begin_offset] unless stub[:begin_offset].nil?
        data['EndOffset'] = stub[:end_offset] unless stub[:end_offset].nil?
        data['Attributes'] = Stubs::RxNormAttributeList.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['Traits'] = Stubs::RxNormTraitList.stub(stub[:traits]) unless stub[:traits].nil?
        data['RxNormConcepts'] = Stubs::RxNormConceptList.stub(stub[:rx_norm_concepts]) unless stub[:rx_norm_concepts].nil?
        data
      end
    end

    # List Stubber for RxNormConceptList
    class RxNormConceptList
      def self.default(visited=[])
        return nil if visited.include?('RxNormConceptList')
        visited = visited + ['RxNormConceptList']
        [
          Stubs::RxNormConcept.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RxNormConcept.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RxNormConcept
    class RxNormConcept
      def self.default(visited=[])
        return nil if visited.include?('RxNormConcept')
        visited = visited + ['RxNormConcept']
        {
          description: 'description',
          code: 'code',
          score: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::RxNormConcept.new
        data = {}
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Code'] = stub[:code] unless stub[:code].nil?
        data['Score'] = Hearth::NumberHelper.serialize(stub[:score])
        data
      end
    end

    # List Stubber for RxNormTraitList
    class RxNormTraitList
      def self.default(visited=[])
        return nil if visited.include?('RxNormTraitList')
        visited = visited + ['RxNormTraitList']
        [
          Stubs::RxNormTrait.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RxNormTrait.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RxNormTrait
    class RxNormTrait
      def self.default(visited=[])
        return nil if visited.include?('RxNormTrait')
        visited = visited + ['RxNormTrait']
        {
          name: 'name',
          score: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::RxNormTrait.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Score'] = Hearth::NumberHelper.serialize(stub[:score])
        data
      end
    end

    # List Stubber for RxNormAttributeList
    class RxNormAttributeList
      def self.default(visited=[])
        return nil if visited.include?('RxNormAttributeList')
        visited = visited + ['RxNormAttributeList']
        [
          Stubs::RxNormAttribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RxNormAttribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RxNormAttribute
    class RxNormAttribute
      def self.default(visited=[])
        return nil if visited.include?('RxNormAttribute')
        visited = visited + ['RxNormAttribute']
        {
          type: 'type',
          score: 1.0,
          relationship_score: 1.0,
          id: 1,
          begin_offset: 1,
          end_offset: 1,
          text: 'text',
          traits: Stubs::RxNormTraitList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RxNormAttribute.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Score'] = Hearth::NumberHelper.serialize(stub[:score])
        data['RelationshipScore'] = Hearth::NumberHelper.serialize(stub[:relationship_score])
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['BeginOffset'] = stub[:begin_offset] unless stub[:begin_offset].nil?
        data['EndOffset'] = stub[:end_offset] unless stub[:end_offset].nil?
        data['Text'] = stub[:text] unless stub[:text].nil?
        data['Traits'] = Stubs::RxNormTraitList.stub(stub[:traits]) unless stub[:traits].nil?
        data
      end
    end

    # Operation Stubber for InferSNOMEDCT
    class InferSNOMEDCT
      def self.default(visited=[])
        {
          entities: Stubs::SNOMEDCTEntityList.default(visited),
          pagination_token: 'pagination_token',
          model_version: 'model_version',
          snomedct_details: Stubs::SNOMEDCTDetails.default(visited),
          characters: Stubs::Characters.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Entities'] = Stubs::SNOMEDCTEntityList.stub(stub[:entities]) unless stub[:entities].nil?
        data['PaginationToken'] = stub[:pagination_token] unless stub[:pagination_token].nil?
        data['ModelVersion'] = stub[:model_version] unless stub[:model_version].nil?
        data['SNOMEDCTDetails'] = Stubs::SNOMEDCTDetails.stub(stub[:snomedct_details]) unless stub[:snomedct_details].nil?
        data['Characters'] = Stubs::Characters.stub(stub[:characters]) unless stub[:characters].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Characters
    class Characters
      def self.default(visited=[])
        return nil if visited.include?('Characters')
        visited = visited + ['Characters']
        {
          original_text_characters: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Characters.new
        data = {}
        data['OriginalTextCharacters'] = stub[:original_text_characters] unless stub[:original_text_characters].nil?
        data
      end
    end

    # Structure Stubber for SNOMEDCTDetails
    class SNOMEDCTDetails
      def self.default(visited=[])
        return nil if visited.include?('SNOMEDCTDetails')
        visited = visited + ['SNOMEDCTDetails']
        {
          edition: 'edition',
          language: 'language',
          version_date: 'version_date',
        }
      end

      def self.stub(stub)
        stub ||= Types::SNOMEDCTDetails.new
        data = {}
        data['Edition'] = stub[:edition] unless stub[:edition].nil?
        data['Language'] = stub[:language] unless stub[:language].nil?
        data['VersionDate'] = stub[:version_date] unless stub[:version_date].nil?
        data
      end
    end

    # List Stubber for SNOMEDCTEntityList
    class SNOMEDCTEntityList
      def self.default(visited=[])
        return nil if visited.include?('SNOMEDCTEntityList')
        visited = visited + ['SNOMEDCTEntityList']
        [
          Stubs::SNOMEDCTEntity.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SNOMEDCTEntity.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SNOMEDCTEntity
    class SNOMEDCTEntity
      def self.default(visited=[])
        return nil if visited.include?('SNOMEDCTEntity')
        visited = visited + ['SNOMEDCTEntity']
        {
          id: 1,
          text: 'text',
          category: 'category',
          type: 'type',
          score: 1.0,
          begin_offset: 1,
          end_offset: 1,
          attributes: Stubs::SNOMEDCTAttributeList.default(visited),
          traits: Stubs::SNOMEDCTTraitList.default(visited),
          snomedct_concepts: Stubs::SNOMEDCTConceptList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SNOMEDCTEntity.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Text'] = stub[:text] unless stub[:text].nil?
        data['Category'] = stub[:category] unless stub[:category].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Score'] = Hearth::NumberHelper.serialize(stub[:score])
        data['BeginOffset'] = stub[:begin_offset] unless stub[:begin_offset].nil?
        data['EndOffset'] = stub[:end_offset] unless stub[:end_offset].nil?
        data['Attributes'] = Stubs::SNOMEDCTAttributeList.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['Traits'] = Stubs::SNOMEDCTTraitList.stub(stub[:traits]) unless stub[:traits].nil?
        data['SNOMEDCTConcepts'] = Stubs::SNOMEDCTConceptList.stub(stub[:snomedct_concepts]) unless stub[:snomedct_concepts].nil?
        data
      end
    end

    # List Stubber for SNOMEDCTConceptList
    class SNOMEDCTConceptList
      def self.default(visited=[])
        return nil if visited.include?('SNOMEDCTConceptList')
        visited = visited + ['SNOMEDCTConceptList']
        [
          Stubs::SNOMEDCTConcept.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SNOMEDCTConcept.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SNOMEDCTConcept
    class SNOMEDCTConcept
      def self.default(visited=[])
        return nil if visited.include?('SNOMEDCTConcept')
        visited = visited + ['SNOMEDCTConcept']
        {
          description: 'description',
          code: 'code',
          score: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::SNOMEDCTConcept.new
        data = {}
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Code'] = stub[:code] unless stub[:code].nil?
        data['Score'] = Hearth::NumberHelper.serialize(stub[:score])
        data
      end
    end

    # List Stubber for SNOMEDCTTraitList
    class SNOMEDCTTraitList
      def self.default(visited=[])
        return nil if visited.include?('SNOMEDCTTraitList')
        visited = visited + ['SNOMEDCTTraitList']
        [
          Stubs::SNOMEDCTTrait.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SNOMEDCTTrait.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SNOMEDCTTrait
    class SNOMEDCTTrait
      def self.default(visited=[])
        return nil if visited.include?('SNOMEDCTTrait')
        visited = visited + ['SNOMEDCTTrait']
        {
          name: 'name',
          score: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::SNOMEDCTTrait.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Score'] = Hearth::NumberHelper.serialize(stub[:score])
        data
      end
    end

    # List Stubber for SNOMEDCTAttributeList
    class SNOMEDCTAttributeList
      def self.default(visited=[])
        return nil if visited.include?('SNOMEDCTAttributeList')
        visited = visited + ['SNOMEDCTAttributeList']
        [
          Stubs::SNOMEDCTAttribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SNOMEDCTAttribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SNOMEDCTAttribute
    class SNOMEDCTAttribute
      def self.default(visited=[])
        return nil if visited.include?('SNOMEDCTAttribute')
        visited = visited + ['SNOMEDCTAttribute']
        {
          category: 'category',
          type: 'type',
          score: 1.0,
          relationship_score: 1.0,
          relationship_type: 'relationship_type',
          id: 1,
          begin_offset: 1,
          end_offset: 1,
          text: 'text',
          traits: Stubs::SNOMEDCTTraitList.default(visited),
          snomedct_concepts: Stubs::SNOMEDCTConceptList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SNOMEDCTAttribute.new
        data = {}
        data['Category'] = stub[:category] unless stub[:category].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Score'] = Hearth::NumberHelper.serialize(stub[:score])
        data['RelationshipScore'] = Hearth::NumberHelper.serialize(stub[:relationship_score])
        data['RelationshipType'] = stub[:relationship_type] unless stub[:relationship_type].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['BeginOffset'] = stub[:begin_offset] unless stub[:begin_offset].nil?
        data['EndOffset'] = stub[:end_offset] unless stub[:end_offset].nil?
        data['Text'] = stub[:text] unless stub[:text].nil?
        data['Traits'] = Stubs::SNOMEDCTTraitList.stub(stub[:traits]) unless stub[:traits].nil?
        data['SNOMEDCTConcepts'] = Stubs::SNOMEDCTConceptList.stub(stub[:snomedct_concepts]) unless stub[:snomedct_concepts].nil?
        data
      end
    end

    # Operation Stubber for ListEntitiesDetectionV2Jobs
    class ListEntitiesDetectionV2Jobs
      def self.default(visited=[])
        {
          comprehend_medical_async_job_properties_list: Stubs::ComprehendMedicalAsyncJobPropertiesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ComprehendMedicalAsyncJobPropertiesList'] = Stubs::ComprehendMedicalAsyncJobPropertiesList.stub(stub[:comprehend_medical_async_job_properties_list]) unless stub[:comprehend_medical_async_job_properties_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ComprehendMedicalAsyncJobPropertiesList
    class ComprehendMedicalAsyncJobPropertiesList
      def self.default(visited=[])
        return nil if visited.include?('ComprehendMedicalAsyncJobPropertiesList')
        visited = visited + ['ComprehendMedicalAsyncJobPropertiesList']
        [
          Stubs::ComprehendMedicalAsyncJobProperties.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ComprehendMedicalAsyncJobProperties.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListICD10CMInferenceJobs
    class ListICD10CMInferenceJobs
      def self.default(visited=[])
        {
          comprehend_medical_async_job_properties_list: Stubs::ComprehendMedicalAsyncJobPropertiesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ComprehendMedicalAsyncJobPropertiesList'] = Stubs::ComprehendMedicalAsyncJobPropertiesList.stub(stub[:comprehend_medical_async_job_properties_list]) unless stub[:comprehend_medical_async_job_properties_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListPHIDetectionJobs
    class ListPHIDetectionJobs
      def self.default(visited=[])
        {
          comprehend_medical_async_job_properties_list: Stubs::ComprehendMedicalAsyncJobPropertiesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ComprehendMedicalAsyncJobPropertiesList'] = Stubs::ComprehendMedicalAsyncJobPropertiesList.stub(stub[:comprehend_medical_async_job_properties_list]) unless stub[:comprehend_medical_async_job_properties_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListRxNormInferenceJobs
    class ListRxNormInferenceJobs
      def self.default(visited=[])
        {
          comprehend_medical_async_job_properties_list: Stubs::ComprehendMedicalAsyncJobPropertiesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ComprehendMedicalAsyncJobPropertiesList'] = Stubs::ComprehendMedicalAsyncJobPropertiesList.stub(stub[:comprehend_medical_async_job_properties_list]) unless stub[:comprehend_medical_async_job_properties_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListSNOMEDCTInferenceJobs
    class ListSNOMEDCTInferenceJobs
      def self.default(visited=[])
        {
          comprehend_medical_async_job_properties_list: Stubs::ComprehendMedicalAsyncJobPropertiesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ComprehendMedicalAsyncJobPropertiesList'] = Stubs::ComprehendMedicalAsyncJobPropertiesList.stub(stub[:comprehend_medical_async_job_properties_list]) unless stub[:comprehend_medical_async_job_properties_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartEntitiesDetectionV2Job
    class StartEntitiesDetectionV2Job
      def self.default(visited=[])
        {
          job_id: 'job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartICD10CMInferenceJob
    class StartICD10CMInferenceJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartPHIDetectionJob
    class StartPHIDetectionJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartRxNormInferenceJob
    class StartRxNormInferenceJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartSNOMEDCTInferenceJob
    class StartSNOMEDCTInferenceJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopEntitiesDetectionV2Job
    class StopEntitiesDetectionV2Job
      def self.default(visited=[])
        {
          job_id: 'job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopICD10CMInferenceJob
    class StopICD10CMInferenceJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopPHIDetectionJob
    class StopPHIDetectionJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopRxNormInferenceJob
    class StopRxNormInferenceJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopSNOMEDCTInferenceJob
    class StopSNOMEDCTInferenceJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
