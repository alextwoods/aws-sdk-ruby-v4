# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Transcribe
  module Parsers

    # Operation Parser for CreateCallAnalyticsCategory
    class CreateCallAnalyticsCategory
      def self.parse(http_resp)
        data = Types::CreateCallAnalyticsCategoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.category_properties = (Parsers::CategoryProperties.parse(map['CategoryProperties']) unless map['CategoryProperties'].nil?)
        data
      end
    end

    class CategoryProperties
      def self.parse(map)
        data = Types::CategoryProperties.new
        data.category_name = map['CategoryName']
        data.rules = (Parsers::RuleList.parse(map['Rules']) unless map['Rules'].nil?)
        data.create_time = Time.at(map['CreateTime'].to_i) if map['CreateTime']
        data.last_update_time = Time.at(map['LastUpdateTime'].to_i) if map['LastUpdateTime']
        return data
      end
    end

    class RuleList
      def self.parse(list)
        list.map do |value|
          Parsers::Rule.parse(value) unless value.nil?
        end
      end
    end

    class Rule
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'NonTalkTimeFilter'
          value = (Parsers::NonTalkTimeFilter.parse(value) unless value.nil?)
          Types::Rule::NonTalkTimeFilter.new(value) if value
        when 'InterruptionFilter'
          value = (Parsers::InterruptionFilter.parse(value) unless value.nil?)
          Types::Rule::InterruptionFilter.new(value) if value
        when 'TranscriptFilter'
          value = (Parsers::TranscriptFilter.parse(value) unless value.nil?)
          Types::Rule::TranscriptFilter.new(value) if value
        when 'SentimentFilter'
          value = (Parsers::SentimentFilter.parse(value) unless value.nil?)
          Types::Rule::SentimentFilter.new(value) if value
        else
          Types::Rule::Unknown.new({name: key, value: value})
        end
      end
    end

    class SentimentFilter
      def self.parse(map)
        data = Types::SentimentFilter.new
        data.sentiments = (Parsers::SentimentValueList.parse(map['Sentiments']) unless map['Sentiments'].nil?)
        data.absolute_time_range = (Parsers::AbsoluteTimeRange.parse(map['AbsoluteTimeRange']) unless map['AbsoluteTimeRange'].nil?)
        data.relative_time_range = (Parsers::RelativeTimeRange.parse(map['RelativeTimeRange']) unless map['RelativeTimeRange'].nil?)
        data.participant_role = map['ParticipantRole']
        data.negate = map['Negate']
        return data
      end
    end

    class RelativeTimeRange
      def self.parse(map)
        data = Types::RelativeTimeRange.new
        data.start_percentage = map['StartPercentage']
        data.end_percentage = map['EndPercentage']
        data.first = map['First']
        data.last = map['Last']
        return data
      end
    end

    class AbsoluteTimeRange
      def self.parse(map)
        data = Types::AbsoluteTimeRange.new
        data.start_time = map['StartTime']
        data.end_time = map['EndTime']
        data.first = map['First']
        data.last = map['Last']
        return data
      end
    end

    class SentimentValueList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class TranscriptFilter
      def self.parse(map)
        data = Types::TranscriptFilter.new
        data.transcript_filter_type = map['TranscriptFilterType']
        data.absolute_time_range = (Parsers::AbsoluteTimeRange.parse(map['AbsoluteTimeRange']) unless map['AbsoluteTimeRange'].nil?)
        data.relative_time_range = (Parsers::RelativeTimeRange.parse(map['RelativeTimeRange']) unless map['RelativeTimeRange'].nil?)
        data.participant_role = map['ParticipantRole']
        data.negate = map['Negate']
        data.targets = (Parsers::StringTargetList.parse(map['Targets']) unless map['Targets'].nil?)
        return data
      end
    end

    class StringTargetList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class InterruptionFilter
      def self.parse(map)
        data = Types::InterruptionFilter.new
        data.threshold = map['Threshold']
        data.participant_role = map['ParticipantRole']
        data.absolute_time_range = (Parsers::AbsoluteTimeRange.parse(map['AbsoluteTimeRange']) unless map['AbsoluteTimeRange'].nil?)
        data.relative_time_range = (Parsers::RelativeTimeRange.parse(map['RelativeTimeRange']) unless map['RelativeTimeRange'].nil?)
        data.negate = map['Negate']
        return data
      end
    end

    class NonTalkTimeFilter
      def self.parse(map)
        data = Types::NonTalkTimeFilter.new
        data.threshold = map['Threshold']
        data.absolute_time_range = (Parsers::AbsoluteTimeRange.parse(map['AbsoluteTimeRange']) unless map['AbsoluteTimeRange'].nil?)
        data.relative_time_range = (Parsers::RelativeTimeRange.parse(map['RelativeTimeRange']) unless map['RelativeTimeRange'].nil?)
        data.negate = map['Negate']
        return data
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

    # Error Parser for InternalFailureException
    class InternalFailureException
      def self.parse(http_resp)
        data = Types::InternalFailureException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
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

    # Operation Parser for CreateLanguageModel
    class CreateLanguageModel
      def self.parse(http_resp)
        data = Types::CreateLanguageModelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.language_code = map['LanguageCode']
        data.base_model_name = map['BaseModelName']
        data.model_name = map['ModelName']
        data.input_data_config = (Parsers::InputDataConfig.parse(map['InputDataConfig']) unless map['InputDataConfig'].nil?)
        data.model_status = map['ModelStatus']
        data
      end
    end

    class InputDataConfig
      def self.parse(map)
        data = Types::InputDataConfig.new
        data.s3_uri = map['S3Uri']
        data.tuning_data_s3_uri = map['TuningDataS3Uri']
        data.data_access_role_arn = map['DataAccessRoleArn']
        return data
      end
    end

    # Operation Parser for CreateMedicalVocabulary
    class CreateMedicalVocabulary
      def self.parse(http_resp)
        data = Types::CreateMedicalVocabularyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.vocabulary_name = map['VocabularyName']
        data.language_code = map['LanguageCode']
        data.vocabulary_state = map['VocabularyState']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.failure_reason = map['FailureReason']
        data
      end
    end

    # Operation Parser for CreateVocabulary
    class CreateVocabulary
      def self.parse(http_resp)
        data = Types::CreateVocabularyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.vocabulary_name = map['VocabularyName']
        data.language_code = map['LanguageCode']
        data.vocabulary_state = map['VocabularyState']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.failure_reason = map['FailureReason']
        data
      end
    end

    # Operation Parser for CreateVocabularyFilter
    class CreateVocabularyFilter
      def self.parse(http_resp)
        data = Types::CreateVocabularyFilterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.vocabulary_filter_name = map['VocabularyFilterName']
        data.language_code = map['LanguageCode']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data
      end
    end

    # Operation Parser for DeleteCallAnalyticsCategory
    class DeleteCallAnalyticsCategory
      def self.parse(http_resp)
        data = Types::DeleteCallAnalyticsCategoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteCallAnalyticsJob
    class DeleteCallAnalyticsJob
      def self.parse(http_resp)
        data = Types::DeleteCallAnalyticsJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteLanguageModel
    class DeleteLanguageModel
      def self.parse(http_resp)
        data = Types::DeleteLanguageModelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteMedicalTranscriptionJob
    class DeleteMedicalTranscriptionJob
      def self.parse(http_resp)
        data = Types::DeleteMedicalTranscriptionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteMedicalVocabulary
    class DeleteMedicalVocabulary
      def self.parse(http_resp)
        data = Types::DeleteMedicalVocabularyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteTranscriptionJob
    class DeleteTranscriptionJob
      def self.parse(http_resp)
        data = Types::DeleteTranscriptionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteVocabulary
    class DeleteVocabulary
      def self.parse(http_resp)
        data = Types::DeleteVocabularyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteVocabularyFilter
    class DeleteVocabularyFilter
      def self.parse(http_resp)
        data = Types::DeleteVocabularyFilterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeLanguageModel
    class DescribeLanguageModel
      def self.parse(http_resp)
        data = Types::DescribeLanguageModelOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.language_model = (Parsers::LanguageModel.parse(map['LanguageModel']) unless map['LanguageModel'].nil?)
        data
      end
    end

    class LanguageModel
      def self.parse(map)
        data = Types::LanguageModel.new
        data.model_name = map['ModelName']
        data.create_time = Time.at(map['CreateTime'].to_i) if map['CreateTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.language_code = map['LanguageCode']
        data.base_model_name = map['BaseModelName']
        data.model_status = map['ModelStatus']
        data.upgrade_availability = map['UpgradeAvailability']
        data.failure_reason = map['FailureReason']
        data.input_data_config = (Parsers::InputDataConfig.parse(map['InputDataConfig']) unless map['InputDataConfig'].nil?)
        return data
      end
    end

    # Operation Parser for GetCallAnalyticsCategory
    class GetCallAnalyticsCategory
      def self.parse(http_resp)
        data = Types::GetCallAnalyticsCategoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.category_properties = (Parsers::CategoryProperties.parse(map['CategoryProperties']) unless map['CategoryProperties'].nil?)
        data
      end
    end

    # Operation Parser for GetCallAnalyticsJob
    class GetCallAnalyticsJob
      def self.parse(http_resp)
        data = Types::GetCallAnalyticsJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.call_analytics_job = (Parsers::CallAnalyticsJob.parse(map['CallAnalyticsJob']) unless map['CallAnalyticsJob'].nil?)
        data
      end
    end

    class CallAnalyticsJob
      def self.parse(map)
        data = Types::CallAnalyticsJob.new
        data.call_analytics_job_name = map['CallAnalyticsJobName']
        data.call_analytics_job_status = map['CallAnalyticsJobStatus']
        data.language_code = map['LanguageCode']
        data.media_sample_rate_hertz = map['MediaSampleRateHertz']
        data.media_format = map['MediaFormat']
        data.media = (Parsers::Media.parse(map['Media']) unless map['Media'].nil?)
        data.transcript = (Parsers::Transcript.parse(map['Transcript']) unless map['Transcript'].nil?)
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.completion_time = Time.at(map['CompletionTime'].to_i) if map['CompletionTime']
        data.failure_reason = map['FailureReason']
        data.data_access_role_arn = map['DataAccessRoleArn']
        data.identified_language_score = Hearth::NumberHelper.deserialize(map['IdentifiedLanguageScore'])
        data.settings = (Parsers::CallAnalyticsJobSettings.parse(map['Settings']) unless map['Settings'].nil?)
        data.channel_definitions = (Parsers::ChannelDefinitions.parse(map['ChannelDefinitions']) unless map['ChannelDefinitions'].nil?)
        return data
      end
    end

    class ChannelDefinitions
      def self.parse(list)
        list.map do |value|
          Parsers::ChannelDefinition.parse(value) unless value.nil?
        end
      end
    end

    class ChannelDefinition
      def self.parse(map)
        data = Types::ChannelDefinition.new
        data.channel_id = map['ChannelId']
        data.participant_role = map['ParticipantRole']
        return data
      end
    end

    class CallAnalyticsJobSettings
      def self.parse(map)
        data = Types::CallAnalyticsJobSettings.new
        data.vocabulary_name = map['VocabularyName']
        data.vocabulary_filter_name = map['VocabularyFilterName']
        data.vocabulary_filter_method = map['VocabularyFilterMethod']
        data.language_model_name = map['LanguageModelName']
        data.content_redaction = (Parsers::ContentRedaction.parse(map['ContentRedaction']) unless map['ContentRedaction'].nil?)
        data.language_options = (Parsers::LanguageOptions.parse(map['LanguageOptions']) unless map['LanguageOptions'].nil?)
        data.language_id_settings = (Parsers::LanguageIdSettingsMap.parse(map['LanguageIdSettings']) unless map['LanguageIdSettings'].nil?)
        return data
      end
    end

    class LanguageIdSettingsMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::LanguageIdSettings.parse(value) unless value.nil?
        end
        data
      end
    end

    class LanguageIdSettings
      def self.parse(map)
        data = Types::LanguageIdSettings.new
        data.vocabulary_name = map['VocabularyName']
        data.vocabulary_filter_name = map['VocabularyFilterName']
        data.language_model_name = map['LanguageModelName']
        return data
      end
    end

    class LanguageOptions
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ContentRedaction
      def self.parse(map)
        data = Types::ContentRedaction.new
        data.redaction_type = map['RedactionType']
        data.redaction_output = map['RedactionOutput']
        data.pii_entity_types = (Parsers::PiiEntityTypes.parse(map['PiiEntityTypes']) unless map['PiiEntityTypes'].nil?)
        return data
      end
    end

    class PiiEntityTypes
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class Transcript
      def self.parse(map)
        data = Types::Transcript.new
        data.transcript_file_uri = map['TranscriptFileUri']
        data.redacted_transcript_file_uri = map['RedactedTranscriptFileUri']
        return data
      end
    end

    class Media
      def self.parse(map)
        data = Types::Media.new
        data.media_file_uri = map['MediaFileUri']
        data.redacted_media_file_uri = map['RedactedMediaFileUri']
        return data
      end
    end

    # Operation Parser for GetMedicalTranscriptionJob
    class GetMedicalTranscriptionJob
      def self.parse(http_resp)
        data = Types::GetMedicalTranscriptionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.medical_transcription_job = (Parsers::MedicalTranscriptionJob.parse(map['MedicalTranscriptionJob']) unless map['MedicalTranscriptionJob'].nil?)
        data
      end
    end

    class MedicalTranscriptionJob
      def self.parse(map)
        data = Types::MedicalTranscriptionJob.new
        data.medical_transcription_job_name = map['MedicalTranscriptionJobName']
        data.transcription_job_status = map['TranscriptionJobStatus']
        data.language_code = map['LanguageCode']
        data.media_sample_rate_hertz = map['MediaSampleRateHertz']
        data.media_format = map['MediaFormat']
        data.media = (Parsers::Media.parse(map['Media']) unless map['Media'].nil?)
        data.transcript = (Parsers::MedicalTranscript.parse(map['Transcript']) unless map['Transcript'].nil?)
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.completion_time = Time.at(map['CompletionTime'].to_i) if map['CompletionTime']
        data.failure_reason = map['FailureReason']
        data.settings = (Parsers::MedicalTranscriptionSetting.parse(map['Settings']) unless map['Settings'].nil?)
        data.content_identification_type = map['ContentIdentificationType']
        data.specialty = map['Specialty']
        data.type = map['Type']
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        return data
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

    class MedicalTranscriptionSetting
      def self.parse(map)
        data = Types::MedicalTranscriptionSetting.new
        data.show_speaker_labels = map['ShowSpeakerLabels']
        data.max_speaker_labels = map['MaxSpeakerLabels']
        data.channel_identification = map['ChannelIdentification']
        data.show_alternatives = map['ShowAlternatives']
        data.max_alternatives = map['MaxAlternatives']
        data.vocabulary_name = map['VocabularyName']
        return data
      end
    end

    class MedicalTranscript
      def self.parse(map)
        data = Types::MedicalTranscript.new
        data.transcript_file_uri = map['TranscriptFileUri']
        return data
      end
    end

    # Operation Parser for GetMedicalVocabulary
    class GetMedicalVocabulary
      def self.parse(http_resp)
        data = Types::GetMedicalVocabularyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.vocabulary_name = map['VocabularyName']
        data.language_code = map['LanguageCode']
        data.vocabulary_state = map['VocabularyState']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.failure_reason = map['FailureReason']
        data.download_uri = map['DownloadUri']
        data
      end
    end

    # Operation Parser for GetTranscriptionJob
    class GetTranscriptionJob
      def self.parse(http_resp)
        data = Types::GetTranscriptionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.transcription_job = (Parsers::TranscriptionJob.parse(map['TranscriptionJob']) unless map['TranscriptionJob'].nil?)
        data
      end
    end

    class TranscriptionJob
      def self.parse(map)
        data = Types::TranscriptionJob.new
        data.transcription_job_name = map['TranscriptionJobName']
        data.transcription_job_status = map['TranscriptionJobStatus']
        data.language_code = map['LanguageCode']
        data.media_sample_rate_hertz = map['MediaSampleRateHertz']
        data.media_format = map['MediaFormat']
        data.media = (Parsers::Media.parse(map['Media']) unless map['Media'].nil?)
        data.transcript = (Parsers::Transcript.parse(map['Transcript']) unless map['Transcript'].nil?)
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.completion_time = Time.at(map['CompletionTime'].to_i) if map['CompletionTime']
        data.failure_reason = map['FailureReason']
        data.settings = (Parsers::Settings.parse(map['Settings']) unless map['Settings'].nil?)
        data.model_settings = (Parsers::ModelSettings.parse(map['ModelSettings']) unless map['ModelSettings'].nil?)
        data.job_execution_settings = (Parsers::JobExecutionSettings.parse(map['JobExecutionSettings']) unless map['JobExecutionSettings'].nil?)
        data.content_redaction = (Parsers::ContentRedaction.parse(map['ContentRedaction']) unless map['ContentRedaction'].nil?)
        data.identify_language = map['IdentifyLanguage']
        data.identify_multiple_languages = map['IdentifyMultipleLanguages']
        data.language_options = (Parsers::LanguageOptions.parse(map['LanguageOptions']) unless map['LanguageOptions'].nil?)
        data.identified_language_score = Hearth::NumberHelper.deserialize(map['IdentifiedLanguageScore'])
        data.language_codes = (Parsers::LanguageCodeList.parse(map['LanguageCodes']) unless map['LanguageCodes'].nil?)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.subtitles = (Parsers::SubtitlesOutput.parse(map['Subtitles']) unless map['Subtitles'].nil?)
        data.language_id_settings = (Parsers::LanguageIdSettingsMap.parse(map['LanguageIdSettings']) unless map['LanguageIdSettings'].nil?)
        return data
      end
    end

    class SubtitlesOutput
      def self.parse(map)
        data = Types::SubtitlesOutput.new
        data.formats = (Parsers::SubtitleFormats.parse(map['Formats']) unless map['Formats'].nil?)
        data.subtitle_file_uris = (Parsers::SubtitleFileUris.parse(map['SubtitleFileUris']) unless map['SubtitleFileUris'].nil?)
        data.output_start_index = map['OutputStartIndex']
        return data
      end
    end

    class SubtitleFileUris
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class SubtitleFormats
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class LanguageCodeList
      def self.parse(list)
        list.map do |value|
          Parsers::LanguageCodeItem.parse(value) unless value.nil?
        end
      end
    end

    class LanguageCodeItem
      def self.parse(map)
        data = Types::LanguageCodeItem.new
        data.language_code = map['LanguageCode']
        data.duration_in_seconds = Hearth::NumberHelper.deserialize(map['DurationInSeconds'])
        return data
      end
    end

    class JobExecutionSettings
      def self.parse(map)
        data = Types::JobExecutionSettings.new
        data.allow_deferred_execution = map['AllowDeferredExecution']
        data.data_access_role_arn = map['DataAccessRoleArn']
        return data
      end
    end

    class ModelSettings
      def self.parse(map)
        data = Types::ModelSettings.new
        data.language_model_name = map['LanguageModelName']
        return data
      end
    end

    class Settings
      def self.parse(map)
        data = Types::Settings.new
        data.vocabulary_name = map['VocabularyName']
        data.show_speaker_labels = map['ShowSpeakerLabels']
        data.max_speaker_labels = map['MaxSpeakerLabels']
        data.channel_identification = map['ChannelIdentification']
        data.show_alternatives = map['ShowAlternatives']
        data.max_alternatives = map['MaxAlternatives']
        data.vocabulary_filter_name = map['VocabularyFilterName']
        data.vocabulary_filter_method = map['VocabularyFilterMethod']
        return data
      end
    end

    # Operation Parser for GetVocabulary
    class GetVocabulary
      def self.parse(http_resp)
        data = Types::GetVocabularyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.vocabulary_name = map['VocabularyName']
        data.language_code = map['LanguageCode']
        data.vocabulary_state = map['VocabularyState']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.failure_reason = map['FailureReason']
        data.download_uri = map['DownloadUri']
        data
      end
    end

    # Operation Parser for GetVocabularyFilter
    class GetVocabularyFilter
      def self.parse(http_resp)
        data = Types::GetVocabularyFilterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.vocabulary_filter_name = map['VocabularyFilterName']
        data.language_code = map['LanguageCode']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.download_uri = map['DownloadUri']
        data
      end
    end

    # Operation Parser for ListCallAnalyticsCategories
    class ListCallAnalyticsCategories
      def self.parse(http_resp)
        data = Types::ListCallAnalyticsCategoriesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.categories = (Parsers::CategoryPropertiesList.parse(map['Categories']) unless map['Categories'].nil?)
        data
      end
    end

    class CategoryPropertiesList
      def self.parse(list)
        list.map do |value|
          Parsers::CategoryProperties.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListCallAnalyticsJobs
    class ListCallAnalyticsJobs
      def self.parse(http_resp)
        data = Types::ListCallAnalyticsJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = map['Status']
        data.next_token = map['NextToken']
        data.call_analytics_job_summaries = (Parsers::CallAnalyticsJobSummaries.parse(map['CallAnalyticsJobSummaries']) unless map['CallAnalyticsJobSummaries'].nil?)
        data
      end
    end

    class CallAnalyticsJobSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::CallAnalyticsJobSummary.parse(value) unless value.nil?
        end
      end
    end

    class CallAnalyticsJobSummary
      def self.parse(map)
        data = Types::CallAnalyticsJobSummary.new
        data.call_analytics_job_name = map['CallAnalyticsJobName']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.completion_time = Time.at(map['CompletionTime'].to_i) if map['CompletionTime']
        data.language_code = map['LanguageCode']
        data.call_analytics_job_status = map['CallAnalyticsJobStatus']
        data.failure_reason = map['FailureReason']
        return data
      end
    end

    # Operation Parser for ListLanguageModels
    class ListLanguageModels
      def self.parse(http_resp)
        data = Types::ListLanguageModelsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.models = (Parsers::Models.parse(map['Models']) unless map['Models'].nil?)
        data
      end
    end

    class Models
      def self.parse(list)
        list.map do |value|
          Parsers::LanguageModel.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListMedicalTranscriptionJobs
    class ListMedicalTranscriptionJobs
      def self.parse(http_resp)
        data = Types::ListMedicalTranscriptionJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = map['Status']
        data.next_token = map['NextToken']
        data.medical_transcription_job_summaries = (Parsers::MedicalTranscriptionJobSummaries.parse(map['MedicalTranscriptionJobSummaries']) unless map['MedicalTranscriptionJobSummaries'].nil?)
        data
      end
    end

    class MedicalTranscriptionJobSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::MedicalTranscriptionJobSummary.parse(value) unless value.nil?
        end
      end
    end

    class MedicalTranscriptionJobSummary
      def self.parse(map)
        data = Types::MedicalTranscriptionJobSummary.new
        data.medical_transcription_job_name = map['MedicalTranscriptionJobName']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.completion_time = Time.at(map['CompletionTime'].to_i) if map['CompletionTime']
        data.language_code = map['LanguageCode']
        data.transcription_job_status = map['TranscriptionJobStatus']
        data.failure_reason = map['FailureReason']
        data.output_location_type = map['OutputLocationType']
        data.specialty = map['Specialty']
        data.content_identification_type = map['ContentIdentificationType']
        data.type = map['Type']
        return data
      end
    end

    # Operation Parser for ListMedicalVocabularies
    class ListMedicalVocabularies
      def self.parse(http_resp)
        data = Types::ListMedicalVocabulariesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = map['Status']
        data.next_token = map['NextToken']
        data.vocabularies = (Parsers::Vocabularies.parse(map['Vocabularies']) unless map['Vocabularies'].nil?)
        data
      end
    end

    class Vocabularies
      def self.parse(list)
        list.map do |value|
          Parsers::VocabularyInfo.parse(value) unless value.nil?
        end
      end
    end

    class VocabularyInfo
      def self.parse(map)
        data = Types::VocabularyInfo.new
        data.vocabulary_name = map['VocabularyName']
        data.language_code = map['LanguageCode']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.vocabulary_state = map['VocabularyState']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_arn = map['ResourceArn']
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for ListTranscriptionJobs
    class ListTranscriptionJobs
      def self.parse(http_resp)
        data = Types::ListTranscriptionJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = map['Status']
        data.next_token = map['NextToken']
        data.transcription_job_summaries = (Parsers::TranscriptionJobSummaries.parse(map['TranscriptionJobSummaries']) unless map['TranscriptionJobSummaries'].nil?)
        data
      end
    end

    class TranscriptionJobSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::TranscriptionJobSummary.parse(value) unless value.nil?
        end
      end
    end

    class TranscriptionJobSummary
      def self.parse(map)
        data = Types::TranscriptionJobSummary.new
        data.transcription_job_name = map['TranscriptionJobName']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.completion_time = Time.at(map['CompletionTime'].to_i) if map['CompletionTime']
        data.language_code = map['LanguageCode']
        data.transcription_job_status = map['TranscriptionJobStatus']
        data.failure_reason = map['FailureReason']
        data.output_location_type = map['OutputLocationType']
        data.content_redaction = (Parsers::ContentRedaction.parse(map['ContentRedaction']) unless map['ContentRedaction'].nil?)
        data.model_settings = (Parsers::ModelSettings.parse(map['ModelSettings']) unless map['ModelSettings'].nil?)
        data.identify_language = map['IdentifyLanguage']
        data.identify_multiple_languages = map['IdentifyMultipleLanguages']
        data.identified_language_score = Hearth::NumberHelper.deserialize(map['IdentifiedLanguageScore'])
        data.language_codes = (Parsers::LanguageCodeList.parse(map['LanguageCodes']) unless map['LanguageCodes'].nil?)
        return data
      end
    end

    # Operation Parser for ListVocabularies
    class ListVocabularies
      def self.parse(http_resp)
        data = Types::ListVocabulariesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.status = map['Status']
        data.next_token = map['NextToken']
        data.vocabularies = (Parsers::Vocabularies.parse(map['Vocabularies']) unless map['Vocabularies'].nil?)
        data
      end
    end

    # Operation Parser for ListVocabularyFilters
    class ListVocabularyFilters
      def self.parse(http_resp)
        data = Types::ListVocabularyFiltersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.vocabulary_filters = (Parsers::VocabularyFilters.parse(map['VocabularyFilters']) unless map['VocabularyFilters'].nil?)
        data
      end
    end

    class VocabularyFilters
      def self.parse(list)
        list.map do |value|
          Parsers::VocabularyFilterInfo.parse(value) unless value.nil?
        end
      end
    end

    class VocabularyFilterInfo
      def self.parse(map)
        data = Types::VocabularyFilterInfo.new
        data.vocabulary_filter_name = map['VocabularyFilterName']
        data.language_code = map['LanguageCode']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        return data
      end
    end

    # Operation Parser for StartCallAnalyticsJob
    class StartCallAnalyticsJob
      def self.parse(http_resp)
        data = Types::StartCallAnalyticsJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.call_analytics_job = (Parsers::CallAnalyticsJob.parse(map['CallAnalyticsJob']) unless map['CallAnalyticsJob'].nil?)
        data
      end
    end

    # Operation Parser for StartMedicalTranscriptionJob
    class StartMedicalTranscriptionJob
      def self.parse(http_resp)
        data = Types::StartMedicalTranscriptionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.medical_transcription_job = (Parsers::MedicalTranscriptionJob.parse(map['MedicalTranscriptionJob']) unless map['MedicalTranscriptionJob'].nil?)
        data
      end
    end

    # Operation Parser for StartTranscriptionJob
    class StartTranscriptionJob
      def self.parse(http_resp)
        data = Types::StartTranscriptionJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.transcription_job = (Parsers::TranscriptionJob.parse(map['TranscriptionJob']) unless map['TranscriptionJob'].nil?)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateCallAnalyticsCategory
    class UpdateCallAnalyticsCategory
      def self.parse(http_resp)
        data = Types::UpdateCallAnalyticsCategoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.category_properties = (Parsers::CategoryProperties.parse(map['CategoryProperties']) unless map['CategoryProperties'].nil?)
        data
      end
    end

    # Operation Parser for UpdateMedicalVocabulary
    class UpdateMedicalVocabulary
      def self.parse(http_resp)
        data = Types::UpdateMedicalVocabularyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.vocabulary_name = map['VocabularyName']
        data.language_code = map['LanguageCode']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.vocabulary_state = map['VocabularyState']
        data
      end
    end

    # Operation Parser for UpdateVocabulary
    class UpdateVocabulary
      def self.parse(http_resp)
        data = Types::UpdateVocabularyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.vocabulary_name = map['VocabularyName']
        data.language_code = map['LanguageCode']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data.vocabulary_state = map['VocabularyState']
        data
      end
    end

    # Operation Parser for UpdateVocabularyFilter
    class UpdateVocabularyFilter
      def self.parse(http_resp)
        data = Types::UpdateVocabularyFilterOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.vocabulary_filter_name = map['VocabularyFilterName']
        data.language_code = map['LanguageCode']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        data
      end
    end
  end
end
