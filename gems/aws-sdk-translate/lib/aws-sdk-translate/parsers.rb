# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Translate
  module Parsers

    # Operation Parser for CreateParallelData
    class CreateParallelData
      def self.parse(http_resp)
        data = Types::CreateParallelDataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data.status = map['Status']
        data
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

    # Error Parser for InvalidParameterValueException
    class InvalidParameterValueException
      def self.parse(http_resp)
        data = Types::InvalidParameterValueException.new
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

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteParallelData
    class DeleteParallelData
      def self.parse(http_resp)
        data = Types::DeleteParallelDataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data.status = map['Status']
        data
      end
    end

    # Error Parser for ConcurrentModificationException
    class ConcurrentModificationException
      def self.parse(http_resp)
        data = Types::ConcurrentModificationException.new
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

    # Operation Parser for DeleteTerminology
    class DeleteTerminology
      def self.parse(http_resp)
        data = Types::DeleteTerminologyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeTextTranslationJob
    class DescribeTextTranslationJob
      def self.parse(http_resp)
        data = Types::DescribeTextTranslationJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.text_translation_job_properties = (TextTranslationJobProperties.parse(map['TextTranslationJobProperties']) unless map['TextTranslationJobProperties'].nil?)
        data
      end
    end

    class TextTranslationJobProperties
      def self.parse(map)
        data = Types::TextTranslationJobProperties.new
        data.job_id = map['JobId']
        data.job_name = map['JobName']
        data.job_status = map['JobStatus']
        data.job_details = (JobDetails.parse(map['JobDetails']) unless map['JobDetails'].nil?)
        data.source_language_code = map['SourceLanguageCode']
        data.target_language_codes = (TargetLanguageCodeStringList.parse(map['TargetLanguageCodes']) unless map['TargetLanguageCodes'].nil?)
        data.terminology_names = (ResourceNameList.parse(map['TerminologyNames']) unless map['TerminologyNames'].nil?)
        data.parallel_data_names = (ResourceNameList.parse(map['ParallelDataNames']) unless map['ParallelDataNames'].nil?)
        data.message = map['Message']
        data.submitted_time = Time.at(map['SubmittedTime'].to_i) if map['SubmittedTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.input_data_config = (InputDataConfig.parse(map['InputDataConfig']) unless map['InputDataConfig'].nil?)
        data.output_data_config = (OutputDataConfig.parse(map['OutputDataConfig']) unless map['OutputDataConfig'].nil?)
        data.data_access_role_arn = map['DataAccessRoleArn']
        data.settings = (TranslationSettings.parse(map['Settings']) unless map['Settings'].nil?)
        return data
      end
    end

    class TranslationSettings
      def self.parse(map)
        data = Types::TranslationSettings.new
        data.formality = map['Formality']
        data.profanity = map['Profanity']
        return data
      end
    end

    class OutputDataConfig
      def self.parse(map)
        data = Types::OutputDataConfig.new
        data.s3_uri = map['S3Uri']
        data.encryption_key = (EncryptionKey.parse(map['EncryptionKey']) unless map['EncryptionKey'].nil?)
        return data
      end
    end

    class EncryptionKey
      def self.parse(map)
        data = Types::EncryptionKey.new
        data.type = map['Type']
        data.id = map['Id']
        return data
      end
    end

    class InputDataConfig
      def self.parse(map)
        data = Types::InputDataConfig.new
        data.s3_uri = map['S3Uri']
        data.content_type = map['ContentType']
        return data
      end
    end

    class ResourceNameList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class TargetLanguageCodeStringList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class JobDetails
      def self.parse(map)
        data = Types::JobDetails.new
        data.translated_documents_count = map['TranslatedDocumentsCount']
        data.documents_with_errors_count = map['DocumentsWithErrorsCount']
        data.input_documents_count = map['InputDocumentsCount']
        return data
      end
    end

    # Operation Parser for GetParallelData
    class GetParallelData
      def self.parse(http_resp)
        data = Types::GetParallelDataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.parallel_data_properties = (ParallelDataProperties.parse(map['ParallelDataProperties']) unless map['ParallelDataProperties'].nil?)
        data.data_location = (ParallelDataDataLocation.parse(map['DataLocation']) unless map['DataLocation'].nil?)
        data.auxiliary_data_location = (ParallelDataDataLocation.parse(map['AuxiliaryDataLocation']) unless map['AuxiliaryDataLocation'].nil?)
        data.latest_update_attempt_auxiliary_data_location = (ParallelDataDataLocation.parse(map['LatestUpdateAttemptAuxiliaryDataLocation']) unless map['LatestUpdateAttemptAuxiliaryDataLocation'].nil?)
        data
      end
    end

    class ParallelDataDataLocation
      def self.parse(map)
        data = Types::ParallelDataDataLocation.new
        data.repository_type = map['RepositoryType']
        data.location = map['Location']
        return data
      end
    end

    class ParallelDataProperties
      def self.parse(map)
        data = Types::ParallelDataProperties.new
        data.name = map['Name']
        data.arn = map['Arn']
        data.description = map['Description']
        data.status = map['Status']
        data.source_language_code = map['SourceLanguageCode']
        data.target_language_codes = (LanguageCodeStringList.parse(map['TargetLanguageCodes']) unless map['TargetLanguageCodes'].nil?)
        data.parallel_data_config = (ParallelDataConfig.parse(map['ParallelDataConfig']) unless map['ParallelDataConfig'].nil?)
        data.message = map['Message']
        data.imported_data_size = map['ImportedDataSize']
        data.imported_record_count = map['ImportedRecordCount']
        data.failed_record_count = map['FailedRecordCount']
        data.skipped_record_count = map['SkippedRecordCount']
        data.encryption_key = (EncryptionKey.parse(map['EncryptionKey']) unless map['EncryptionKey'].nil?)
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.last_updated_at = Time.at(map['LastUpdatedAt'].to_i) if map['LastUpdatedAt']
        data.latest_update_attempt_status = map['LatestUpdateAttemptStatus']
        data.latest_update_attempt_at = Time.at(map['LatestUpdateAttemptAt'].to_i) if map['LatestUpdateAttemptAt']
        return data
      end
    end

    class ParallelDataConfig
      def self.parse(map)
        data = Types::ParallelDataConfig.new
        data.s3_uri = map['S3Uri']
        data.format = map['Format']
        return data
      end
    end

    class LanguageCodeStringList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for GetTerminology
    class GetTerminology
      def self.parse(http_resp)
        data = Types::GetTerminologyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.terminology_properties = (TerminologyProperties.parse(map['TerminologyProperties']) unless map['TerminologyProperties'].nil?)
        data.terminology_data_location = (TerminologyDataLocation.parse(map['TerminologyDataLocation']) unless map['TerminologyDataLocation'].nil?)
        data.auxiliary_data_location = (TerminologyDataLocation.parse(map['AuxiliaryDataLocation']) unless map['AuxiliaryDataLocation'].nil?)
        data
      end
    end

    class TerminologyDataLocation
      def self.parse(map)
        data = Types::TerminologyDataLocation.new
        data.repository_type = map['RepositoryType']
        data.location = map['Location']
        return data
      end
    end

    class TerminologyProperties
      def self.parse(map)
        data = Types::TerminologyProperties.new
        data.name = map['Name']
        data.description = map['Description']
        data.arn = map['Arn']
        data.source_language_code = map['SourceLanguageCode']
        data.target_language_codes = (LanguageCodeStringList.parse(map['TargetLanguageCodes']) unless map['TargetLanguageCodes'].nil?)
        data.encryption_key = (EncryptionKey.parse(map['EncryptionKey']) unless map['EncryptionKey'].nil?)
        data.size_bytes = map['SizeBytes']
        data.term_count = map['TermCount']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.last_updated_at = Time.at(map['LastUpdatedAt'].to_i) if map['LastUpdatedAt']
        data.directionality = map['Directionality']
        data.message = map['Message']
        data.skipped_term_count = map['SkippedTermCount']
        data.format = map['Format']
        return data
      end
    end

    # Operation Parser for ImportTerminology
    class ImportTerminology
      def self.parse(http_resp)
        data = Types::ImportTerminologyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.terminology_properties = (TerminologyProperties.parse(map['TerminologyProperties']) unless map['TerminologyProperties'].nil?)
        data.auxiliary_data_location = (TerminologyDataLocation.parse(map['AuxiliaryDataLocation']) unless map['AuxiliaryDataLocation'].nil?)
        data
      end
    end

    # Operation Parser for ListParallelData
    class ListParallelData
      def self.parse(http_resp)
        data = Types::ListParallelDataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.parallel_data_properties_list = (ParallelDataPropertiesList.parse(map['ParallelDataPropertiesList']) unless map['ParallelDataPropertiesList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ParallelDataPropertiesList
      def self.parse(list)
        list.map do |value|
          ParallelDataProperties.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListTerminologies
    class ListTerminologies
      def self.parse(http_resp)
        data = Types::ListTerminologiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.terminology_properties_list = (TerminologyPropertiesList.parse(map['TerminologyPropertiesList']) unless map['TerminologyPropertiesList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TerminologyPropertiesList
      def self.parse(list)
        list.map do |value|
          TerminologyProperties.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListTextTranslationJobs
    class ListTextTranslationJobs
      def self.parse(http_resp)
        data = Types::ListTextTranslationJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.text_translation_job_properties_list = (TextTranslationJobPropertiesList.parse(map['TextTranslationJobPropertiesList']) unless map['TextTranslationJobPropertiesList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TextTranslationJobPropertiesList
      def self.parse(list)
        list.map do |value|
          TextTranslationJobProperties.parse(value) unless value.nil?
        end
      end
    end

    # Error Parser for InvalidFilterException
    class InvalidFilterException
      def self.parse(http_resp)
        data = Types::InvalidFilterException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for StartTextTranslationJob
    class StartTextTranslationJob
      def self.parse(http_resp)
        data = Types::StartTextTranslationJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data.job_status = map['JobStatus']
        data
      end
    end

    # Error Parser for UnsupportedLanguagePairException
    class UnsupportedLanguagePairException
      def self.parse(http_resp)
        data = Types::UnsupportedLanguagePairException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.source_language_code = map['SourceLanguageCode']
        data.target_language_code = map['TargetLanguageCode']
        data
      end
    end

    # Operation Parser for StopTextTranslationJob
    class StopTextTranslationJob
      def self.parse(http_resp)
        data = Types::StopTextTranslationJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.job_id = map['JobId']
        data.job_status = map['JobStatus']
        data
      end
    end

    # Operation Parser for TranslateText
    class TranslateText
      def self.parse(http_resp)
        data = Types::TranslateTextOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.translated_text = map['TranslatedText']
        data.source_language_code = map['SourceLanguageCode']
        data.target_language_code = map['TargetLanguageCode']
        data.applied_terminologies = (AppliedTerminologyList.parse(map['AppliedTerminologies']) unless map['AppliedTerminologies'].nil?)
        data.applied_settings = (TranslationSettings.parse(map['AppliedSettings']) unless map['AppliedSettings'].nil?)
        data
      end
    end

    class AppliedTerminologyList
      def self.parse(list)
        list.map do |value|
          AppliedTerminology.parse(value) unless value.nil?
        end
      end
    end

    class AppliedTerminology
      def self.parse(map)
        data = Types::AppliedTerminology.new
        data.name = map['Name']
        data.terms = (TermList.parse(map['Terms']) unless map['Terms'].nil?)
        return data
      end
    end

    class TermList
      def self.parse(list)
        list.map do |value|
          Term.parse(value) unless value.nil?
        end
      end
    end

    class Term
      def self.parse(map)
        data = Types::Term.new
        data.source_text = map['SourceText']
        data.target_text = map['TargetText']
        return data
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

    # Error Parser for DetectedLanguageLowConfidenceException
    class DetectedLanguageLowConfidenceException
      def self.parse(http_resp)
        data = Types::DetectedLanguageLowConfidenceException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.detected_language_code = map['DetectedLanguageCode']
        data
      end
    end

    # Operation Parser for UpdateParallelData
    class UpdateParallelData
      def self.parse(http_resp)
        data = Types::UpdateParallelDataOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data.status = map['Status']
        data.latest_update_attempt_status = map['LatestUpdateAttemptStatus']
        data.latest_update_attempt_at = Time.at(map['LatestUpdateAttemptAt'].to_i) if map['LatestUpdateAttemptAt']
        data
      end
    end
  end
end
