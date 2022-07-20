# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Translate
  module Stubs

    # Operation Stubber for CreateParallelData
    class CreateParallelData
      def self.default(visited=[])
        {
          name: 'name',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteParallelData
    class DeleteParallelData
      def self.default(visited=[])
        {
          name: 'name',
          status: 'status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteTerminology
    class DeleteTerminology
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

    # Operation Stubber for DescribeTextTranslationJob
    class DescribeTextTranslationJob
      def self.default(visited=[])
        {
          text_translation_job_properties: TextTranslationJobProperties.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TextTranslationJobProperties'] = TextTranslationJobProperties.stub(stub[:text_translation_job_properties]) unless stub[:text_translation_job_properties].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for TextTranslationJobProperties
    class TextTranslationJobProperties
      def self.default(visited=[])
        return nil if visited.include?('TextTranslationJobProperties')
        visited = visited + ['TextTranslationJobProperties']
        {
          job_id: 'job_id',
          job_name: 'job_name',
          job_status: 'job_status',
          job_details: JobDetails.default(visited),
          source_language_code: 'source_language_code',
          target_language_codes: TargetLanguageCodeStringList.default(visited),
          terminology_names: ResourceNameList.default(visited),
          parallel_data_names: ResourceNameList.default(visited),
          message: 'message',
          submitted_time: Time.now,
          end_time: Time.now,
          input_data_config: InputDataConfig.default(visited),
          output_data_config: OutputDataConfig.default(visited),
          data_access_role_arn: 'data_access_role_arn',
          settings: TranslationSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TextTranslationJobProperties.new
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobName'] = stub[:job_name] unless stub[:job_name].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        data['JobDetails'] = JobDetails.stub(stub[:job_details]) unless stub[:job_details].nil?
        data['SourceLanguageCode'] = stub[:source_language_code] unless stub[:source_language_code].nil?
        data['TargetLanguageCodes'] = TargetLanguageCodeStringList.stub(stub[:target_language_codes]) unless stub[:target_language_codes].nil?
        data['TerminologyNames'] = ResourceNameList.stub(stub[:terminology_names]) unless stub[:terminology_names].nil?
        data['ParallelDataNames'] = ResourceNameList.stub(stub[:parallel_data_names]) unless stub[:parallel_data_names].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['SubmittedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:submitted_time]).to_i unless stub[:submitted_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['InputDataConfig'] = InputDataConfig.stub(stub[:input_data_config]) unless stub[:input_data_config].nil?
        data['OutputDataConfig'] = OutputDataConfig.stub(stub[:output_data_config]) unless stub[:output_data_config].nil?
        data['DataAccessRoleArn'] = stub[:data_access_role_arn] unless stub[:data_access_role_arn].nil?
        data['Settings'] = TranslationSettings.stub(stub[:settings]) unless stub[:settings].nil?
        data
      end
    end

    # Structure Stubber for TranslationSettings
    class TranslationSettings
      def self.default(visited=[])
        return nil if visited.include?('TranslationSettings')
        visited = visited + ['TranslationSettings']
        {
          formality: 'formality',
          profanity: 'profanity',
        }
      end

      def self.stub(stub)
        stub ||= Types::TranslationSettings.new
        data = {}
        data['Formality'] = stub[:formality] unless stub[:formality].nil?
        data['Profanity'] = stub[:profanity] unless stub[:profanity].nil?
        data
      end
    end

    # Structure Stubber for OutputDataConfig
    class OutputDataConfig
      def self.default(visited=[])
        return nil if visited.include?('OutputDataConfig')
        visited = visited + ['OutputDataConfig']
        {
          s3_uri: 's3_uri',
          encryption_key: EncryptionKey.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OutputDataConfig.new
        data = {}
        data['S3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data['EncryptionKey'] = EncryptionKey.stub(stub[:encryption_key]) unless stub[:encryption_key].nil?
        data
      end
    end

    # Structure Stubber for EncryptionKey
    class EncryptionKey
      def self.default(visited=[])
        return nil if visited.include?('EncryptionKey')
        visited = visited + ['EncryptionKey']
        {
          type: 'type',
          id: 'id',
        }
      end

      def self.stub(stub)
        stub ||= Types::EncryptionKey.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data
      end
    end

    # Structure Stubber for InputDataConfig
    class InputDataConfig
      def self.default(visited=[])
        return nil if visited.include?('InputDataConfig')
        visited = visited + ['InputDataConfig']
        {
          s3_uri: 's3_uri',
          content_type: 'content_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::InputDataConfig.new
        data = {}
        data['S3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data['ContentType'] = stub[:content_type] unless stub[:content_type].nil?
        data
      end
    end

    # List Stubber for ResourceNameList
    class ResourceNameList
      def self.default(visited=[])
        return nil if visited.include?('ResourceNameList')
        visited = visited + ['ResourceNameList']
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

    # List Stubber for TargetLanguageCodeStringList
    class TargetLanguageCodeStringList
      def self.default(visited=[])
        return nil if visited.include?('TargetLanguageCodeStringList')
        visited = visited + ['TargetLanguageCodeStringList']
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

    # Structure Stubber for JobDetails
    class JobDetails
      def self.default(visited=[])
        return nil if visited.include?('JobDetails')
        visited = visited + ['JobDetails']
        {
          translated_documents_count: 1,
          documents_with_errors_count: 1,
          input_documents_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::JobDetails.new
        data = {}
        data['TranslatedDocumentsCount'] = stub[:translated_documents_count] unless stub[:translated_documents_count].nil?
        data['DocumentsWithErrorsCount'] = stub[:documents_with_errors_count] unless stub[:documents_with_errors_count].nil?
        data['InputDocumentsCount'] = stub[:input_documents_count] unless stub[:input_documents_count].nil?
        data
      end
    end

    # Operation Stubber for GetParallelData
    class GetParallelData
      def self.default(visited=[])
        {
          parallel_data_properties: ParallelDataProperties.default(visited),
          data_location: ParallelDataDataLocation.default(visited),
          auxiliary_data_location: ParallelDataDataLocation.default(visited),
          latest_update_attempt_auxiliary_data_location: ParallelDataDataLocation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ParallelDataProperties'] = ParallelDataProperties.stub(stub[:parallel_data_properties]) unless stub[:parallel_data_properties].nil?
        data['DataLocation'] = ParallelDataDataLocation.stub(stub[:data_location]) unless stub[:data_location].nil?
        data['AuxiliaryDataLocation'] = ParallelDataDataLocation.stub(stub[:auxiliary_data_location]) unless stub[:auxiliary_data_location].nil?
        data['LatestUpdateAttemptAuxiliaryDataLocation'] = ParallelDataDataLocation.stub(stub[:latest_update_attempt_auxiliary_data_location]) unless stub[:latest_update_attempt_auxiliary_data_location].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ParallelDataDataLocation
    class ParallelDataDataLocation
      def self.default(visited=[])
        return nil if visited.include?('ParallelDataDataLocation')
        visited = visited + ['ParallelDataDataLocation']
        {
          repository_type: 'repository_type',
          location: 'location',
        }
      end

      def self.stub(stub)
        stub ||= Types::ParallelDataDataLocation.new
        data = {}
        data['RepositoryType'] = stub[:repository_type] unless stub[:repository_type].nil?
        data['Location'] = stub[:location] unless stub[:location].nil?
        data
      end
    end

    # Structure Stubber for ParallelDataProperties
    class ParallelDataProperties
      def self.default(visited=[])
        return nil if visited.include?('ParallelDataProperties')
        visited = visited + ['ParallelDataProperties']
        {
          name: 'name',
          arn: 'arn',
          description: 'description',
          status: 'status',
          source_language_code: 'source_language_code',
          target_language_codes: LanguageCodeStringList.default(visited),
          parallel_data_config: ParallelDataConfig.default(visited),
          message: 'message',
          imported_data_size: 1,
          imported_record_count: 1,
          failed_record_count: 1,
          skipped_record_count: 1,
          encryption_key: EncryptionKey.default(visited),
          created_at: Time.now,
          last_updated_at: Time.now,
          latest_update_attempt_status: 'latest_update_attempt_status',
          latest_update_attempt_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ParallelDataProperties.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['SourceLanguageCode'] = stub[:source_language_code] unless stub[:source_language_code].nil?
        data['TargetLanguageCodes'] = LanguageCodeStringList.stub(stub[:target_language_codes]) unless stub[:target_language_codes].nil?
        data['ParallelDataConfig'] = ParallelDataConfig.stub(stub[:parallel_data_config]) unless stub[:parallel_data_config].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['ImportedDataSize'] = stub[:imported_data_size] unless stub[:imported_data_size].nil?
        data['ImportedRecordCount'] = stub[:imported_record_count] unless stub[:imported_record_count].nil?
        data['FailedRecordCount'] = stub[:failed_record_count] unless stub[:failed_record_count].nil?
        data['SkippedRecordCount'] = stub[:skipped_record_count] unless stub[:skipped_record_count].nil?
        data['EncryptionKey'] = EncryptionKey.stub(stub[:encryption_key]) unless stub[:encryption_key].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['LastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['LatestUpdateAttemptStatus'] = stub[:latest_update_attempt_status] unless stub[:latest_update_attempt_status].nil?
        data['LatestUpdateAttemptAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:latest_update_attempt_at]).to_i unless stub[:latest_update_attempt_at].nil?
        data
      end
    end

    # Structure Stubber for ParallelDataConfig
    class ParallelDataConfig
      def self.default(visited=[])
        return nil if visited.include?('ParallelDataConfig')
        visited = visited + ['ParallelDataConfig']
        {
          s3_uri: 's3_uri',
          format: 'format',
        }
      end

      def self.stub(stub)
        stub ||= Types::ParallelDataConfig.new
        data = {}
        data['S3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data['Format'] = stub[:format] unless stub[:format].nil?
        data
      end
    end

    # List Stubber for LanguageCodeStringList
    class LanguageCodeStringList
      def self.default(visited=[])
        return nil if visited.include?('LanguageCodeStringList')
        visited = visited + ['LanguageCodeStringList']
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

    # Operation Stubber for GetTerminology
    class GetTerminology
      def self.default(visited=[])
        {
          terminology_properties: TerminologyProperties.default(visited),
          terminology_data_location: TerminologyDataLocation.default(visited),
          auxiliary_data_location: TerminologyDataLocation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TerminologyProperties'] = TerminologyProperties.stub(stub[:terminology_properties]) unless stub[:terminology_properties].nil?
        data['TerminologyDataLocation'] = TerminologyDataLocation.stub(stub[:terminology_data_location]) unless stub[:terminology_data_location].nil?
        data['AuxiliaryDataLocation'] = TerminologyDataLocation.stub(stub[:auxiliary_data_location]) unless stub[:auxiliary_data_location].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for TerminologyDataLocation
    class TerminologyDataLocation
      def self.default(visited=[])
        return nil if visited.include?('TerminologyDataLocation')
        visited = visited + ['TerminologyDataLocation']
        {
          repository_type: 'repository_type',
          location: 'location',
        }
      end

      def self.stub(stub)
        stub ||= Types::TerminologyDataLocation.new
        data = {}
        data['RepositoryType'] = stub[:repository_type] unless stub[:repository_type].nil?
        data['Location'] = stub[:location] unless stub[:location].nil?
        data
      end
    end

    # Structure Stubber for TerminologyProperties
    class TerminologyProperties
      def self.default(visited=[])
        return nil if visited.include?('TerminologyProperties')
        visited = visited + ['TerminologyProperties']
        {
          name: 'name',
          description: 'description',
          arn: 'arn',
          source_language_code: 'source_language_code',
          target_language_codes: LanguageCodeStringList.default(visited),
          encryption_key: EncryptionKey.default(visited),
          size_bytes: 1,
          term_count: 1,
          created_at: Time.now,
          last_updated_at: Time.now,
          directionality: 'directionality',
          message: 'message',
          skipped_term_count: 1,
          format: 'format',
        }
      end

      def self.stub(stub)
        stub ||= Types::TerminologyProperties.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['SourceLanguageCode'] = stub[:source_language_code] unless stub[:source_language_code].nil?
        data['TargetLanguageCodes'] = LanguageCodeStringList.stub(stub[:target_language_codes]) unless stub[:target_language_codes].nil?
        data['EncryptionKey'] = EncryptionKey.stub(stub[:encryption_key]) unless stub[:encryption_key].nil?
        data['SizeBytes'] = stub[:size_bytes] unless stub[:size_bytes].nil?
        data['TermCount'] = stub[:term_count] unless stub[:term_count].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['LastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['Directionality'] = stub[:directionality] unless stub[:directionality].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['SkippedTermCount'] = stub[:skipped_term_count] unless stub[:skipped_term_count].nil?
        data['Format'] = stub[:format] unless stub[:format].nil?
        data
      end
    end

    # Operation Stubber for ImportTerminology
    class ImportTerminology
      def self.default(visited=[])
        {
          terminology_properties: TerminologyProperties.default(visited),
          auxiliary_data_location: TerminologyDataLocation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TerminologyProperties'] = TerminologyProperties.stub(stub[:terminology_properties]) unless stub[:terminology_properties].nil?
        data['AuxiliaryDataLocation'] = TerminologyDataLocation.stub(stub[:auxiliary_data_location]) unless stub[:auxiliary_data_location].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListParallelData
    class ListParallelData
      def self.default(visited=[])
        {
          parallel_data_properties_list: ParallelDataPropertiesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ParallelDataPropertiesList'] = ParallelDataPropertiesList.stub(stub[:parallel_data_properties_list]) unless stub[:parallel_data_properties_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ParallelDataPropertiesList
    class ParallelDataPropertiesList
      def self.default(visited=[])
        return nil if visited.include?('ParallelDataPropertiesList')
        visited = visited + ['ParallelDataPropertiesList']
        [
          ParallelDataProperties.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ParallelDataProperties.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTerminologies
    class ListTerminologies
      def self.default(visited=[])
        {
          terminology_properties_list: TerminologyPropertiesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TerminologyPropertiesList'] = TerminologyPropertiesList.stub(stub[:terminology_properties_list]) unless stub[:terminology_properties_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TerminologyPropertiesList
    class TerminologyPropertiesList
      def self.default(visited=[])
        return nil if visited.include?('TerminologyPropertiesList')
        visited = visited + ['TerminologyPropertiesList']
        [
          TerminologyProperties.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TerminologyProperties.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTextTranslationJobs
    class ListTextTranslationJobs
      def self.default(visited=[])
        {
          text_translation_job_properties_list: TextTranslationJobPropertiesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TextTranslationJobPropertiesList'] = TextTranslationJobPropertiesList.stub(stub[:text_translation_job_properties_list]) unless stub[:text_translation_job_properties_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TextTranslationJobPropertiesList
    class TextTranslationJobPropertiesList
      def self.default(visited=[])
        return nil if visited.include?('TextTranslationJobPropertiesList')
        visited = visited + ['TextTranslationJobPropertiesList']
        [
          TextTranslationJobProperties.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TextTranslationJobProperties.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for StartTextTranslationJob
    class StartTextTranslationJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
          job_status: 'job_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopTextTranslationJob
    class StopTextTranslationJob
      def self.default(visited=[])
        {
          job_id: 'job_id',
          job_status: 'job_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['JobId'] = stub[:job_id] unless stub[:job_id].nil?
        data['JobStatus'] = stub[:job_status] unless stub[:job_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TranslateText
    class TranslateText
      def self.default(visited=[])
        {
          translated_text: 'translated_text',
          source_language_code: 'source_language_code',
          target_language_code: 'target_language_code',
          applied_terminologies: AppliedTerminologyList.default(visited),
          applied_settings: TranslationSettings.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TranslatedText'] = stub[:translated_text] unless stub[:translated_text].nil?
        data['SourceLanguageCode'] = stub[:source_language_code] unless stub[:source_language_code].nil?
        data['TargetLanguageCode'] = stub[:target_language_code] unless stub[:target_language_code].nil?
        data['AppliedTerminologies'] = AppliedTerminologyList.stub(stub[:applied_terminologies]) unless stub[:applied_terminologies].nil?
        data['AppliedSettings'] = TranslationSettings.stub(stub[:applied_settings]) unless stub[:applied_settings].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AppliedTerminologyList
    class AppliedTerminologyList
      def self.default(visited=[])
        return nil if visited.include?('AppliedTerminologyList')
        visited = visited + ['AppliedTerminologyList']
        [
          AppliedTerminology.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AppliedTerminology.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AppliedTerminology
    class AppliedTerminology
      def self.default(visited=[])
        return nil if visited.include?('AppliedTerminology')
        visited = visited + ['AppliedTerminology']
        {
          name: 'name',
          terms: TermList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AppliedTerminology.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Terms'] = TermList.stub(stub[:terms]) unless stub[:terms].nil?
        data
      end
    end

    # List Stubber for TermList
    class TermList
      def self.default(visited=[])
        return nil if visited.include?('TermList')
        visited = visited + ['TermList']
        [
          Term.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Term.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Term
    class Term
      def self.default(visited=[])
        return nil if visited.include?('Term')
        visited = visited + ['Term']
        {
          source_text: 'source_text',
          target_text: 'target_text',
        }
      end

      def self.stub(stub)
        stub ||= Types::Term.new
        data = {}
        data['SourceText'] = stub[:source_text] unless stub[:source_text].nil?
        data['TargetText'] = stub[:target_text] unless stub[:target_text].nil?
        data
      end
    end

    # Operation Stubber for UpdateParallelData
    class UpdateParallelData
      def self.default(visited=[])
        {
          name: 'name',
          status: 'status',
          latest_update_attempt_status: 'latest_update_attempt_status',
          latest_update_attempt_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['LatestUpdateAttemptStatus'] = stub[:latest_update_attempt_status] unless stub[:latest_update_attempt_status].nil?
        data['LatestUpdateAttemptAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:latest_update_attempt_at]).to_i unless stub[:latest_update_attempt_at].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
