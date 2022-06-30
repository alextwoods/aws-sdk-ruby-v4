# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Transcribe
  module Builders

    # Operation Builder for CreateCallAnalyticsCategory
    class CreateCallAnalyticsCategory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.CreateCallAnalyticsCategory'
        data = {}
        data['CategoryName'] = input[:category_name] unless input[:category_name].nil?
        data['Rules'] = Builders::RuleList.build(input[:rules]) unless input[:rules].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RuleList
    class RuleList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Rule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Rule
    class Rule
      def self.build(input)
        data = {}
        case input
        when Types::Rule::NonTalkTimeFilter
          data['NonTalkTimeFilter'] = (Builders::NonTalkTimeFilter.build(input) unless input.nil?)
        when Types::Rule::InterruptionFilter
          data['InterruptionFilter'] = (Builders::InterruptionFilter.build(input) unless input.nil?)
        when Types::Rule::TranscriptFilter
          data['TranscriptFilter'] = (Builders::TranscriptFilter.build(input) unless input.nil?)
        when Types::Rule::SentimentFilter
          data['SentimentFilter'] = (Builders::SentimentFilter.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::Rule"
        end

        data
      end
    end

    # Structure Builder for SentimentFilter
    class SentimentFilter
      def self.build(input)
        data = {}
        data['Sentiments'] = Builders::SentimentValueList.build(input[:sentiments]) unless input[:sentiments].nil?
        data['AbsoluteTimeRange'] = Builders::AbsoluteTimeRange.build(input[:absolute_time_range]) unless input[:absolute_time_range].nil?
        data['RelativeTimeRange'] = Builders::RelativeTimeRange.build(input[:relative_time_range]) unless input[:relative_time_range].nil?
        data['ParticipantRole'] = input[:participant_role] unless input[:participant_role].nil?
        data['Negate'] = input[:negate] unless input[:negate].nil?
        data
      end
    end

    # Structure Builder for RelativeTimeRange
    class RelativeTimeRange
      def self.build(input)
        data = {}
        data['StartPercentage'] = input[:start_percentage] unless input[:start_percentage].nil?
        data['EndPercentage'] = input[:end_percentage] unless input[:end_percentage].nil?
        data['First'] = input[:first] unless input[:first].nil?
        data['Last'] = input[:last] unless input[:last].nil?
        data
      end
    end

    # Structure Builder for AbsoluteTimeRange
    class AbsoluteTimeRange
      def self.build(input)
        data = {}
        data['StartTime'] = input[:start_time] unless input[:start_time].nil?
        data['EndTime'] = input[:end_time] unless input[:end_time].nil?
        data['First'] = input[:first] unless input[:first].nil?
        data['Last'] = input[:last] unless input[:last].nil?
        data
      end
    end

    # List Builder for SentimentValueList
    class SentimentValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TranscriptFilter
    class TranscriptFilter
      def self.build(input)
        data = {}
        data['TranscriptFilterType'] = input[:transcript_filter_type] unless input[:transcript_filter_type].nil?
        data['AbsoluteTimeRange'] = Builders::AbsoluteTimeRange.build(input[:absolute_time_range]) unless input[:absolute_time_range].nil?
        data['RelativeTimeRange'] = Builders::RelativeTimeRange.build(input[:relative_time_range]) unless input[:relative_time_range].nil?
        data['ParticipantRole'] = input[:participant_role] unless input[:participant_role].nil?
        data['Negate'] = input[:negate] unless input[:negate].nil?
        data['Targets'] = Builders::StringTargetList.build(input[:targets]) unless input[:targets].nil?
        data
      end
    end

    # List Builder for StringTargetList
    class StringTargetList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InterruptionFilter
    class InterruptionFilter
      def self.build(input)
        data = {}
        data['Threshold'] = input[:threshold] unless input[:threshold].nil?
        data['ParticipantRole'] = input[:participant_role] unless input[:participant_role].nil?
        data['AbsoluteTimeRange'] = Builders::AbsoluteTimeRange.build(input[:absolute_time_range]) unless input[:absolute_time_range].nil?
        data['RelativeTimeRange'] = Builders::RelativeTimeRange.build(input[:relative_time_range]) unless input[:relative_time_range].nil?
        data['Negate'] = input[:negate] unless input[:negate].nil?
        data
      end
    end

    # Structure Builder for NonTalkTimeFilter
    class NonTalkTimeFilter
      def self.build(input)
        data = {}
        data['Threshold'] = input[:threshold] unless input[:threshold].nil?
        data['AbsoluteTimeRange'] = Builders::AbsoluteTimeRange.build(input[:absolute_time_range]) unless input[:absolute_time_range].nil?
        data['RelativeTimeRange'] = Builders::RelativeTimeRange.build(input[:relative_time_range]) unless input[:relative_time_range].nil?
        data['Negate'] = input[:negate] unless input[:negate].nil?
        data
      end
    end

    # Operation Builder for CreateLanguageModel
    class CreateLanguageModel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.CreateLanguageModel'
        data = {}
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        data['BaseModelName'] = input[:base_model_name] unless input[:base_model_name].nil?
        data['ModelName'] = input[:model_name] unless input[:model_name].nil?
        data['InputDataConfig'] = Builders::InputDataConfig.build(input[:input_data_config]) unless input[:input_data_config].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for InputDataConfig
    class InputDataConfig
      def self.build(input)
        data = {}
        data['S3Uri'] = input[:s3_uri] unless input[:s3_uri].nil?
        data['TuningDataS3Uri'] = input[:tuning_data_s3_uri] unless input[:tuning_data_s3_uri].nil?
        data['DataAccessRoleArn'] = input[:data_access_role_arn] unless input[:data_access_role_arn].nil?
        data
      end
    end

    # Operation Builder for CreateMedicalVocabulary
    class CreateMedicalVocabulary
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.CreateMedicalVocabulary'
        data = {}
        data['VocabularyName'] = input[:vocabulary_name] unless input[:vocabulary_name].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        data['VocabularyFileUri'] = input[:vocabulary_file_uri] unless input[:vocabulary_file_uri].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateVocabulary
    class CreateVocabulary
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.CreateVocabulary'
        data = {}
        data['VocabularyName'] = input[:vocabulary_name] unless input[:vocabulary_name].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        data['Phrases'] = Builders::Phrases.build(input[:phrases]) unless input[:phrases].nil?
        data['VocabularyFileUri'] = input[:vocabulary_file_uri] unless input[:vocabulary_file_uri].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Phrases
    class Phrases
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateVocabularyFilter
    class CreateVocabularyFilter
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.CreateVocabularyFilter'
        data = {}
        data['VocabularyFilterName'] = input[:vocabulary_filter_name] unless input[:vocabulary_filter_name].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        data['Words'] = Builders::Words.build(input[:words]) unless input[:words].nil?
        data['VocabularyFilterFileUri'] = input[:vocabulary_filter_file_uri] unless input[:vocabulary_filter_file_uri].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Words
    class Words
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteCallAnalyticsCategory
    class DeleteCallAnalyticsCategory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.DeleteCallAnalyticsCategory'
        data = {}
        data['CategoryName'] = input[:category_name] unless input[:category_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteCallAnalyticsJob
    class DeleteCallAnalyticsJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.DeleteCallAnalyticsJob'
        data = {}
        data['CallAnalyticsJobName'] = input[:call_analytics_job_name] unless input[:call_analytics_job_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteLanguageModel
    class DeleteLanguageModel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.DeleteLanguageModel'
        data = {}
        data['ModelName'] = input[:model_name] unless input[:model_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteMedicalTranscriptionJob
    class DeleteMedicalTranscriptionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.DeleteMedicalTranscriptionJob'
        data = {}
        data['MedicalTranscriptionJobName'] = input[:medical_transcription_job_name] unless input[:medical_transcription_job_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteMedicalVocabulary
    class DeleteMedicalVocabulary
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.DeleteMedicalVocabulary'
        data = {}
        data['VocabularyName'] = input[:vocabulary_name] unless input[:vocabulary_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteTranscriptionJob
    class DeleteTranscriptionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.DeleteTranscriptionJob'
        data = {}
        data['TranscriptionJobName'] = input[:transcription_job_name] unless input[:transcription_job_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteVocabulary
    class DeleteVocabulary
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.DeleteVocabulary'
        data = {}
        data['VocabularyName'] = input[:vocabulary_name] unless input[:vocabulary_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteVocabularyFilter
    class DeleteVocabularyFilter
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.DeleteVocabularyFilter'
        data = {}
        data['VocabularyFilterName'] = input[:vocabulary_filter_name] unless input[:vocabulary_filter_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeLanguageModel
    class DescribeLanguageModel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.DescribeLanguageModel'
        data = {}
        data['ModelName'] = input[:model_name] unless input[:model_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetCallAnalyticsCategory
    class GetCallAnalyticsCategory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.GetCallAnalyticsCategory'
        data = {}
        data['CategoryName'] = input[:category_name] unless input[:category_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetCallAnalyticsJob
    class GetCallAnalyticsJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.GetCallAnalyticsJob'
        data = {}
        data['CallAnalyticsJobName'] = input[:call_analytics_job_name] unless input[:call_analytics_job_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetMedicalTranscriptionJob
    class GetMedicalTranscriptionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.GetMedicalTranscriptionJob'
        data = {}
        data['MedicalTranscriptionJobName'] = input[:medical_transcription_job_name] unless input[:medical_transcription_job_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetMedicalVocabulary
    class GetMedicalVocabulary
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.GetMedicalVocabulary'
        data = {}
        data['VocabularyName'] = input[:vocabulary_name] unless input[:vocabulary_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetTranscriptionJob
    class GetTranscriptionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.GetTranscriptionJob'
        data = {}
        data['TranscriptionJobName'] = input[:transcription_job_name] unless input[:transcription_job_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetVocabulary
    class GetVocabulary
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.GetVocabulary'
        data = {}
        data['VocabularyName'] = input[:vocabulary_name] unless input[:vocabulary_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetVocabularyFilter
    class GetVocabularyFilter
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.GetVocabularyFilter'
        data = {}
        data['VocabularyFilterName'] = input[:vocabulary_filter_name] unless input[:vocabulary_filter_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListCallAnalyticsCategories
    class ListCallAnalyticsCategories
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.ListCallAnalyticsCategories'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListCallAnalyticsJobs
    class ListCallAnalyticsJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.ListCallAnalyticsJobs'
        data = {}
        data['Status'] = input[:status] unless input[:status].nil?
        data['JobNameContains'] = input[:job_name_contains] unless input[:job_name_contains].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListLanguageModels
    class ListLanguageModels
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.ListLanguageModels'
        data = {}
        data['StatusEquals'] = input[:status_equals] unless input[:status_equals].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListMedicalTranscriptionJobs
    class ListMedicalTranscriptionJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.ListMedicalTranscriptionJobs'
        data = {}
        data['Status'] = input[:status] unless input[:status].nil?
        data['JobNameContains'] = input[:job_name_contains] unless input[:job_name_contains].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListMedicalVocabularies
    class ListMedicalVocabularies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.ListMedicalVocabularies'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['StateEquals'] = input[:state_equals] unless input[:state_equals].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.ListTagsForResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTranscriptionJobs
    class ListTranscriptionJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.ListTranscriptionJobs'
        data = {}
        data['Status'] = input[:status] unless input[:status].nil?
        data['JobNameContains'] = input[:job_name_contains] unless input[:job_name_contains].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListVocabularies
    class ListVocabularies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.ListVocabularies'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['StateEquals'] = input[:state_equals] unless input[:state_equals].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListVocabularyFilters
    class ListVocabularyFilters
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.ListVocabularyFilters'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NameContains'] = input[:name_contains] unless input[:name_contains].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartCallAnalyticsJob
    class StartCallAnalyticsJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.StartCallAnalyticsJob'
        data = {}
        data['CallAnalyticsJobName'] = input[:call_analytics_job_name] unless input[:call_analytics_job_name].nil?
        data['Media'] = Builders::Media.build(input[:media]) unless input[:media].nil?
        data['OutputLocation'] = input[:output_location] unless input[:output_location].nil?
        data['OutputEncryptionKMSKeyId'] = input[:output_encryption_kms_key_id] unless input[:output_encryption_kms_key_id].nil?
        data['DataAccessRoleArn'] = input[:data_access_role_arn] unless input[:data_access_role_arn].nil?
        data['Settings'] = Builders::CallAnalyticsJobSettings.build(input[:settings]) unless input[:settings].nil?
        data['ChannelDefinitions'] = Builders::ChannelDefinitions.build(input[:channel_definitions]) unless input[:channel_definitions].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ChannelDefinitions
    class ChannelDefinitions
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ChannelDefinition.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ChannelDefinition
    class ChannelDefinition
      def self.build(input)
        data = {}
        data['ChannelId'] = input[:channel_id] unless input[:channel_id].nil?
        data['ParticipantRole'] = input[:participant_role] unless input[:participant_role].nil?
        data
      end
    end

    # Structure Builder for CallAnalyticsJobSettings
    class CallAnalyticsJobSettings
      def self.build(input)
        data = {}
        data['VocabularyName'] = input[:vocabulary_name] unless input[:vocabulary_name].nil?
        data['VocabularyFilterName'] = input[:vocabulary_filter_name] unless input[:vocabulary_filter_name].nil?
        data['VocabularyFilterMethod'] = input[:vocabulary_filter_method] unless input[:vocabulary_filter_method].nil?
        data['LanguageModelName'] = input[:language_model_name] unless input[:language_model_name].nil?
        data['ContentRedaction'] = Builders::ContentRedaction.build(input[:content_redaction]) unless input[:content_redaction].nil?
        data['LanguageOptions'] = Builders::LanguageOptions.build(input[:language_options]) unless input[:language_options].nil?
        data['LanguageIdSettings'] = Builders::LanguageIdSettingsMap.build(input[:language_id_settings]) unless input[:language_id_settings].nil?
        data
      end
    end

    # Map Builder for LanguageIdSettingsMap
    class LanguageIdSettingsMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::LanguageIdSettings.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for LanguageIdSettings
    class LanguageIdSettings
      def self.build(input)
        data = {}
        data['VocabularyName'] = input[:vocabulary_name] unless input[:vocabulary_name].nil?
        data['VocabularyFilterName'] = input[:vocabulary_filter_name] unless input[:vocabulary_filter_name].nil?
        data['LanguageModelName'] = input[:language_model_name] unless input[:language_model_name].nil?
        data
      end
    end

    # List Builder for LanguageOptions
    class LanguageOptions
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ContentRedaction
    class ContentRedaction
      def self.build(input)
        data = {}
        data['RedactionType'] = input[:redaction_type] unless input[:redaction_type].nil?
        data['RedactionOutput'] = input[:redaction_output] unless input[:redaction_output].nil?
        data['PiiEntityTypes'] = Builders::PiiEntityTypes.build(input[:pii_entity_types]) unless input[:pii_entity_types].nil?
        data
      end
    end

    # List Builder for PiiEntityTypes
    class PiiEntityTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Media
    class Media
      def self.build(input)
        data = {}
        data['MediaFileUri'] = input[:media_file_uri] unless input[:media_file_uri].nil?
        data['RedactedMediaFileUri'] = input[:redacted_media_file_uri] unless input[:redacted_media_file_uri].nil?
        data
      end
    end

    # Operation Builder for StartMedicalTranscriptionJob
    class StartMedicalTranscriptionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.StartMedicalTranscriptionJob'
        data = {}
        data['MedicalTranscriptionJobName'] = input[:medical_transcription_job_name] unless input[:medical_transcription_job_name].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        data['MediaSampleRateHertz'] = input[:media_sample_rate_hertz] unless input[:media_sample_rate_hertz].nil?
        data['MediaFormat'] = input[:media_format] unless input[:media_format].nil?
        data['Media'] = Builders::Media.build(input[:media]) unless input[:media].nil?
        data['OutputBucketName'] = input[:output_bucket_name] unless input[:output_bucket_name].nil?
        data['OutputKey'] = input[:output_key] unless input[:output_key].nil?
        data['OutputEncryptionKMSKeyId'] = input[:output_encryption_kms_key_id] unless input[:output_encryption_kms_key_id].nil?
        data['KMSEncryptionContext'] = Builders::KMSEncryptionContextMap.build(input[:kms_encryption_context]) unless input[:kms_encryption_context].nil?
        data['Settings'] = Builders::MedicalTranscriptionSetting.build(input[:settings]) unless input[:settings].nil?
        data['ContentIdentificationType'] = input[:content_identification_type] unless input[:content_identification_type].nil?
        data['Specialty'] = input[:specialty] unless input[:specialty].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for MedicalTranscriptionSetting
    class MedicalTranscriptionSetting
      def self.build(input)
        data = {}
        data['ShowSpeakerLabels'] = input[:show_speaker_labels] unless input[:show_speaker_labels].nil?
        data['MaxSpeakerLabels'] = input[:max_speaker_labels] unless input[:max_speaker_labels].nil?
        data['ChannelIdentification'] = input[:channel_identification] unless input[:channel_identification].nil?
        data['ShowAlternatives'] = input[:show_alternatives] unless input[:show_alternatives].nil?
        data['MaxAlternatives'] = input[:max_alternatives] unless input[:max_alternatives].nil?
        data['VocabularyName'] = input[:vocabulary_name] unless input[:vocabulary_name].nil?
        data
      end
    end

    # Map Builder for KMSEncryptionContextMap
    class KMSEncryptionContextMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for StartTranscriptionJob
    class StartTranscriptionJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.StartTranscriptionJob'
        data = {}
        data['TranscriptionJobName'] = input[:transcription_job_name] unless input[:transcription_job_name].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        data['MediaSampleRateHertz'] = input[:media_sample_rate_hertz] unless input[:media_sample_rate_hertz].nil?
        data['MediaFormat'] = input[:media_format] unless input[:media_format].nil?
        data['Media'] = Builders::Media.build(input[:media]) unless input[:media].nil?
        data['OutputBucketName'] = input[:output_bucket_name] unless input[:output_bucket_name].nil?
        data['OutputKey'] = input[:output_key] unless input[:output_key].nil?
        data['OutputEncryptionKMSKeyId'] = input[:output_encryption_kms_key_id] unless input[:output_encryption_kms_key_id].nil?
        data['KMSEncryptionContext'] = Builders::KMSEncryptionContextMap.build(input[:kms_encryption_context]) unless input[:kms_encryption_context].nil?
        data['Settings'] = Builders::Settings.build(input[:settings]) unless input[:settings].nil?
        data['ModelSettings'] = Builders::ModelSettings.build(input[:model_settings]) unless input[:model_settings].nil?
        data['JobExecutionSettings'] = Builders::JobExecutionSettings.build(input[:job_execution_settings]) unless input[:job_execution_settings].nil?
        data['ContentRedaction'] = Builders::ContentRedaction.build(input[:content_redaction]) unless input[:content_redaction].nil?
        data['IdentifyLanguage'] = input[:identify_language] unless input[:identify_language].nil?
        data['IdentifyMultipleLanguages'] = input[:identify_multiple_languages] unless input[:identify_multiple_languages].nil?
        data['LanguageOptions'] = Builders::LanguageOptions.build(input[:language_options]) unless input[:language_options].nil?
        data['Subtitles'] = Builders::Subtitles.build(input[:subtitles]) unless input[:subtitles].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['LanguageIdSettings'] = Builders::LanguageIdSettingsMap.build(input[:language_id_settings]) unless input[:language_id_settings].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Subtitles
    class Subtitles
      def self.build(input)
        data = {}
        data['Formats'] = Builders::SubtitleFormats.build(input[:formats]) unless input[:formats].nil?
        data['OutputStartIndex'] = input[:output_start_index] unless input[:output_start_index].nil?
        data
      end
    end

    # List Builder for SubtitleFormats
    class SubtitleFormats
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for JobExecutionSettings
    class JobExecutionSettings
      def self.build(input)
        data = {}
        data['AllowDeferredExecution'] = input[:allow_deferred_execution] unless input[:allow_deferred_execution].nil?
        data['DataAccessRoleArn'] = input[:data_access_role_arn] unless input[:data_access_role_arn].nil?
        data
      end
    end

    # Structure Builder for ModelSettings
    class ModelSettings
      def self.build(input)
        data = {}
        data['LanguageModelName'] = input[:language_model_name] unless input[:language_model_name].nil?
        data
      end
    end

    # Structure Builder for Settings
    class Settings
      def self.build(input)
        data = {}
        data['VocabularyName'] = input[:vocabulary_name] unless input[:vocabulary_name].nil?
        data['ShowSpeakerLabels'] = input[:show_speaker_labels] unless input[:show_speaker_labels].nil?
        data['MaxSpeakerLabels'] = input[:max_speaker_labels] unless input[:max_speaker_labels].nil?
        data['ChannelIdentification'] = input[:channel_identification] unless input[:channel_identification].nil?
        data['ShowAlternatives'] = input[:show_alternatives] unless input[:show_alternatives].nil?
        data['MaxAlternatives'] = input[:max_alternatives] unless input[:max_alternatives].nil?
        data['VocabularyFilterName'] = input[:vocabulary_filter_name] unless input[:vocabulary_filter_name].nil?
        data['VocabularyFilterMethod'] = input[:vocabulary_filter_method] unless input[:vocabulary_filter_method].nil?
        data
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.TagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.UntagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = Builders::TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateCallAnalyticsCategory
    class UpdateCallAnalyticsCategory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.UpdateCallAnalyticsCategory'
        data = {}
        data['CategoryName'] = input[:category_name] unless input[:category_name].nil?
        data['Rules'] = Builders::RuleList.build(input[:rules]) unless input[:rules].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateMedicalVocabulary
    class UpdateMedicalVocabulary
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.UpdateMedicalVocabulary'
        data = {}
        data['VocabularyName'] = input[:vocabulary_name] unless input[:vocabulary_name].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        data['VocabularyFileUri'] = input[:vocabulary_file_uri] unless input[:vocabulary_file_uri].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateVocabulary
    class UpdateVocabulary
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.UpdateVocabulary'
        data = {}
        data['VocabularyName'] = input[:vocabulary_name] unless input[:vocabulary_name].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        data['Phrases'] = Builders::Phrases.build(input[:phrases]) unless input[:phrases].nil?
        data['VocabularyFileUri'] = input[:vocabulary_file_uri] unless input[:vocabulary_file_uri].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateVocabularyFilter
    class UpdateVocabularyFilter
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'Transcribe.UpdateVocabularyFilter'
        data = {}
        data['VocabularyFilterName'] = input[:vocabulary_filter_name] unless input[:vocabulary_filter_name].nil?
        data['Words'] = Builders::Words.build(input[:words]) unless input[:words].nil?
        data['VocabularyFilterFileUri'] = input[:vocabulary_filter_file_uri] unless input[:vocabulary_filter_file_uri].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
