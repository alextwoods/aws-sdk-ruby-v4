# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Transcribe
  module Stubs

    # Operation Stubber for CreateCallAnalyticsCategory
    class CreateCallAnalyticsCategory
      def self.default(visited=[])
        {
          category_properties: CategoryProperties.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CategoryProperties'] = Stubs::CategoryProperties.stub(stub[:category_properties]) unless stub[:category_properties].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for CategoryProperties
    class CategoryProperties
      def self.default(visited=[])
        return nil if visited.include?('CategoryProperties')
        visited = visited + ['CategoryProperties']
        {
          category_name: 'category_name',
          rules: RuleList.default(visited),
          create_time: Time.now,
          last_update_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::CategoryProperties.new
        data = {}
        data['CategoryName'] = stub[:category_name] unless stub[:category_name].nil?
        data['Rules'] = Stubs::RuleList.stub(stub[:rules]) unless stub[:rules].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_time]).to_i unless stub[:create_time].nil?
        data['LastUpdateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_update_time]).to_i unless stub[:last_update_time].nil?
        data
      end
    end

    # List Stubber for RuleList
    class RuleList
      def self.default(visited=[])
        return nil if visited.include?('RuleList')
        visited = visited + ['RuleList']
        [
          Rule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Rule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Union Stubber for Rule
    class Rule
      def self.default(visited=[])
        return nil if visited.include?('Rule')
        visited = visited + ['Rule']
        {
          non_talk_time_filter: NonTalkTimeFilter.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::Rule::NonTalkTimeFilter
          data['NonTalkTimeFilter'] = (Stubs::NonTalkTimeFilter.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::Rule::InterruptionFilter
          data['InterruptionFilter'] = (Stubs::InterruptionFilter.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::Rule::TranscriptFilter
          data['TranscriptFilter'] = (Stubs::TranscriptFilter.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::Rule::SentimentFilter
          data['SentimentFilter'] = (Stubs::SentimentFilter.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::Rule"
        end

        data
      end
    end

    # Structure Stubber for SentimentFilter
    class SentimentFilter
      def self.default(visited=[])
        return nil if visited.include?('SentimentFilter')
        visited = visited + ['SentimentFilter']
        {
          sentiments: SentimentValueList.default(visited),
          absolute_time_range: AbsoluteTimeRange.default(visited),
          relative_time_range: RelativeTimeRange.default(visited),
          participant_role: 'participant_role',
          negate: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::SentimentFilter.new
        data = {}
        data['Sentiments'] = Stubs::SentimentValueList.stub(stub[:sentiments]) unless stub[:sentiments].nil?
        data['AbsoluteTimeRange'] = Stubs::AbsoluteTimeRange.stub(stub[:absolute_time_range]) unless stub[:absolute_time_range].nil?
        data['RelativeTimeRange'] = Stubs::RelativeTimeRange.stub(stub[:relative_time_range]) unless stub[:relative_time_range].nil?
        data['ParticipantRole'] = stub[:participant_role] unless stub[:participant_role].nil?
        data['Negate'] = stub[:negate] unless stub[:negate].nil?
        data
      end
    end

    # Structure Stubber for RelativeTimeRange
    class RelativeTimeRange
      def self.default(visited=[])
        return nil if visited.include?('RelativeTimeRange')
        visited = visited + ['RelativeTimeRange']
        {
          start_percentage: 1,
          end_percentage: 1,
          first: 1,
          last: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RelativeTimeRange.new
        data = {}
        data['StartPercentage'] = stub[:start_percentage] unless stub[:start_percentage].nil?
        data['EndPercentage'] = stub[:end_percentage] unless stub[:end_percentage].nil?
        data['First'] = stub[:first] unless stub[:first].nil?
        data['Last'] = stub[:last] unless stub[:last].nil?
        data
      end
    end

    # Structure Stubber for AbsoluteTimeRange
    class AbsoluteTimeRange
      def self.default(visited=[])
        return nil if visited.include?('AbsoluteTimeRange')
        visited = visited + ['AbsoluteTimeRange']
        {
          start_time: 1,
          end_time: 1,
          first: 1,
          last: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AbsoluteTimeRange.new
        data = {}
        data['StartTime'] = stub[:start_time] unless stub[:start_time].nil?
        data['EndTime'] = stub[:end_time] unless stub[:end_time].nil?
        data['First'] = stub[:first] unless stub[:first].nil?
        data['Last'] = stub[:last] unless stub[:last].nil?
        data
      end
    end

    # List Stubber for SentimentValueList
    class SentimentValueList
      def self.default(visited=[])
        return nil if visited.include?('SentimentValueList')
        visited = visited + ['SentimentValueList']
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

    # Structure Stubber for TranscriptFilter
    class TranscriptFilter
      def self.default(visited=[])
        return nil if visited.include?('TranscriptFilter')
        visited = visited + ['TranscriptFilter']
        {
          transcript_filter_type: 'transcript_filter_type',
          absolute_time_range: AbsoluteTimeRange.default(visited),
          relative_time_range: RelativeTimeRange.default(visited),
          participant_role: 'participant_role',
          negate: false,
          targets: StringTargetList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TranscriptFilter.new
        data = {}
        data['TranscriptFilterType'] = stub[:transcript_filter_type] unless stub[:transcript_filter_type].nil?
        data['AbsoluteTimeRange'] = Stubs::AbsoluteTimeRange.stub(stub[:absolute_time_range]) unless stub[:absolute_time_range].nil?
        data['RelativeTimeRange'] = Stubs::RelativeTimeRange.stub(stub[:relative_time_range]) unless stub[:relative_time_range].nil?
        data['ParticipantRole'] = stub[:participant_role] unless stub[:participant_role].nil?
        data['Negate'] = stub[:negate] unless stub[:negate].nil?
        data['Targets'] = Stubs::StringTargetList.stub(stub[:targets]) unless stub[:targets].nil?
        data
      end
    end

    # List Stubber for StringTargetList
    class StringTargetList
      def self.default(visited=[])
        return nil if visited.include?('StringTargetList')
        visited = visited + ['StringTargetList']
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

    # Structure Stubber for InterruptionFilter
    class InterruptionFilter
      def self.default(visited=[])
        return nil if visited.include?('InterruptionFilter')
        visited = visited + ['InterruptionFilter']
        {
          threshold: 1,
          participant_role: 'participant_role',
          absolute_time_range: AbsoluteTimeRange.default(visited),
          relative_time_range: RelativeTimeRange.default(visited),
          negate: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::InterruptionFilter.new
        data = {}
        data['Threshold'] = stub[:threshold] unless stub[:threshold].nil?
        data['ParticipantRole'] = stub[:participant_role] unless stub[:participant_role].nil?
        data['AbsoluteTimeRange'] = Stubs::AbsoluteTimeRange.stub(stub[:absolute_time_range]) unless stub[:absolute_time_range].nil?
        data['RelativeTimeRange'] = Stubs::RelativeTimeRange.stub(stub[:relative_time_range]) unless stub[:relative_time_range].nil?
        data['Negate'] = stub[:negate] unless stub[:negate].nil?
        data
      end
    end

    # Structure Stubber for NonTalkTimeFilter
    class NonTalkTimeFilter
      def self.default(visited=[])
        return nil if visited.include?('NonTalkTimeFilter')
        visited = visited + ['NonTalkTimeFilter']
        {
          threshold: 1,
          absolute_time_range: AbsoluteTimeRange.default(visited),
          relative_time_range: RelativeTimeRange.default(visited),
          negate: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::NonTalkTimeFilter.new
        data = {}
        data['Threshold'] = stub[:threshold] unless stub[:threshold].nil?
        data['AbsoluteTimeRange'] = Stubs::AbsoluteTimeRange.stub(stub[:absolute_time_range]) unless stub[:absolute_time_range].nil?
        data['RelativeTimeRange'] = Stubs::RelativeTimeRange.stub(stub[:relative_time_range]) unless stub[:relative_time_range].nil?
        data['Negate'] = stub[:negate] unless stub[:negate].nil?
        data
      end
    end

    # Operation Stubber for CreateLanguageModel
    class CreateLanguageModel
      def self.default(visited=[])
        {
          language_code: 'language_code',
          base_model_name: 'base_model_name',
          model_name: 'model_name',
          input_data_config: InputDataConfig.default(visited),
          model_status: 'model_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['BaseModelName'] = stub[:base_model_name] unless stub[:base_model_name].nil?
        data['ModelName'] = stub[:model_name] unless stub[:model_name].nil?
        data['InputDataConfig'] = Stubs::InputDataConfig.stub(stub[:input_data_config]) unless stub[:input_data_config].nil?
        data['ModelStatus'] = stub[:model_status] unless stub[:model_status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for InputDataConfig
    class InputDataConfig
      def self.default(visited=[])
        return nil if visited.include?('InputDataConfig')
        visited = visited + ['InputDataConfig']
        {
          s3_uri: 's3_uri',
          tuning_data_s3_uri: 'tuning_data_s3_uri',
          data_access_role_arn: 'data_access_role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::InputDataConfig.new
        data = {}
        data['S3Uri'] = stub[:s3_uri] unless stub[:s3_uri].nil?
        data['TuningDataS3Uri'] = stub[:tuning_data_s3_uri] unless stub[:tuning_data_s3_uri].nil?
        data['DataAccessRoleArn'] = stub[:data_access_role_arn] unless stub[:data_access_role_arn].nil?
        data
      end
    end

    # Operation Stubber for CreateMedicalVocabulary
    class CreateMedicalVocabulary
      def self.default(visited=[])
        {
          vocabulary_name: 'vocabulary_name',
          language_code: 'language_code',
          vocabulary_state: 'vocabulary_state',
          last_modified_time: Time.now,
          failure_reason: 'failure_reason',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['VocabularyName'] = stub[:vocabulary_name] unless stub[:vocabulary_name].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['VocabularyState'] = stub[:vocabulary_state] unless stub[:vocabulary_state].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateVocabulary
    class CreateVocabulary
      def self.default(visited=[])
        {
          vocabulary_name: 'vocabulary_name',
          language_code: 'language_code',
          vocabulary_state: 'vocabulary_state',
          last_modified_time: Time.now,
          failure_reason: 'failure_reason',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['VocabularyName'] = stub[:vocabulary_name] unless stub[:vocabulary_name].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['VocabularyState'] = stub[:vocabulary_state] unless stub[:vocabulary_state].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateVocabularyFilter
    class CreateVocabularyFilter
      def self.default(visited=[])
        {
          vocabulary_filter_name: 'vocabulary_filter_name',
          language_code: 'language_code',
          last_modified_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['VocabularyFilterName'] = stub[:vocabulary_filter_name] unless stub[:vocabulary_filter_name].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteCallAnalyticsCategory
    class DeleteCallAnalyticsCategory
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteCallAnalyticsJob
    class DeleteCallAnalyticsJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteLanguageModel
    class DeleteLanguageModel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteMedicalTranscriptionJob
    class DeleteMedicalTranscriptionJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteMedicalVocabulary
    class DeleteMedicalVocabulary
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteTranscriptionJob
    class DeleteTranscriptionJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteVocabulary
    class DeleteVocabulary
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteVocabularyFilter
    class DeleteVocabularyFilter
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeLanguageModel
    class DescribeLanguageModel
      def self.default(visited=[])
        {
          language_model: LanguageModel.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['LanguageModel'] = Stubs::LanguageModel.stub(stub[:language_model]) unless stub[:language_model].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for LanguageModel
    class LanguageModel
      def self.default(visited=[])
        return nil if visited.include?('LanguageModel')
        visited = visited + ['LanguageModel']
        {
          model_name: 'model_name',
          create_time: Time.now,
          last_modified_time: Time.now,
          language_code: 'language_code',
          base_model_name: 'base_model_name',
          model_status: 'model_status',
          upgrade_availability: false,
          failure_reason: 'failure_reason',
          input_data_config: InputDataConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LanguageModel.new
        data = {}
        data['ModelName'] = stub[:model_name] unless stub[:model_name].nil?
        data['CreateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:create_time]).to_i unless stub[:create_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['BaseModelName'] = stub[:base_model_name] unless stub[:base_model_name].nil?
        data['ModelStatus'] = stub[:model_status] unless stub[:model_status].nil?
        data['UpgradeAvailability'] = stub[:upgrade_availability] unless stub[:upgrade_availability].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['InputDataConfig'] = Stubs::InputDataConfig.stub(stub[:input_data_config]) unless stub[:input_data_config].nil?
        data
      end
    end

    # Operation Stubber for GetCallAnalyticsCategory
    class GetCallAnalyticsCategory
      def self.default(visited=[])
        {
          category_properties: CategoryProperties.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CategoryProperties'] = Stubs::CategoryProperties.stub(stub[:category_properties]) unless stub[:category_properties].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetCallAnalyticsJob
    class GetCallAnalyticsJob
      def self.default(visited=[])
        {
          call_analytics_job: CallAnalyticsJob.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CallAnalyticsJob'] = Stubs::CallAnalyticsJob.stub(stub[:call_analytics_job]) unless stub[:call_analytics_job].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for CallAnalyticsJob
    class CallAnalyticsJob
      def self.default(visited=[])
        return nil if visited.include?('CallAnalyticsJob')
        visited = visited + ['CallAnalyticsJob']
        {
          call_analytics_job_name: 'call_analytics_job_name',
          call_analytics_job_status: 'call_analytics_job_status',
          language_code: 'language_code',
          media_sample_rate_hertz: 1,
          media_format: 'media_format',
          media: Media.default(visited),
          transcript: Transcript.default(visited),
          start_time: Time.now,
          creation_time: Time.now,
          completion_time: Time.now,
          failure_reason: 'failure_reason',
          data_access_role_arn: 'data_access_role_arn',
          identified_language_score: 1.0,
          settings: CallAnalyticsJobSettings.default(visited),
          channel_definitions: ChannelDefinitions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CallAnalyticsJob.new
        data = {}
        data['CallAnalyticsJobName'] = stub[:call_analytics_job_name] unless stub[:call_analytics_job_name].nil?
        data['CallAnalyticsJobStatus'] = stub[:call_analytics_job_status] unless stub[:call_analytics_job_status].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['MediaSampleRateHertz'] = stub[:media_sample_rate_hertz] unless stub[:media_sample_rate_hertz].nil?
        data['MediaFormat'] = stub[:media_format] unless stub[:media_format].nil?
        data['Media'] = Stubs::Media.stub(stub[:media]) unless stub[:media].nil?
        data['Transcript'] = Stubs::Transcript.stub(stub[:transcript]) unless stub[:transcript].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['CompletionTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completion_time]).to_i unless stub[:completion_time].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['DataAccessRoleArn'] = stub[:data_access_role_arn] unless stub[:data_access_role_arn].nil?
        data['IdentifiedLanguageScore'] = Hearth::NumberHelper.serialize(stub[:identified_language_score])
        data['Settings'] = Stubs::CallAnalyticsJobSettings.stub(stub[:settings]) unless stub[:settings].nil?
        data['ChannelDefinitions'] = Stubs::ChannelDefinitions.stub(stub[:channel_definitions]) unless stub[:channel_definitions].nil?
        data
      end
    end

    # List Stubber for ChannelDefinitions
    class ChannelDefinitions
      def self.default(visited=[])
        return nil if visited.include?('ChannelDefinitions')
        visited = visited + ['ChannelDefinitions']
        [
          ChannelDefinition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ChannelDefinition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ChannelDefinition
    class ChannelDefinition
      def self.default(visited=[])
        return nil if visited.include?('ChannelDefinition')
        visited = visited + ['ChannelDefinition']
        {
          channel_id: 1,
          participant_role: 'participant_role',
        }
      end

      def self.stub(stub)
        stub ||= Types::ChannelDefinition.new
        data = {}
        data['ChannelId'] = stub[:channel_id] unless stub[:channel_id].nil?
        data['ParticipantRole'] = stub[:participant_role] unless stub[:participant_role].nil?
        data
      end
    end

    # Structure Stubber for CallAnalyticsJobSettings
    class CallAnalyticsJobSettings
      def self.default(visited=[])
        return nil if visited.include?('CallAnalyticsJobSettings')
        visited = visited + ['CallAnalyticsJobSettings']
        {
          vocabulary_name: 'vocabulary_name',
          vocabulary_filter_name: 'vocabulary_filter_name',
          vocabulary_filter_method: 'vocabulary_filter_method',
          language_model_name: 'language_model_name',
          content_redaction: ContentRedaction.default(visited),
          language_options: LanguageOptions.default(visited),
          language_id_settings: LanguageIdSettingsMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CallAnalyticsJobSettings.new
        data = {}
        data['VocabularyName'] = stub[:vocabulary_name] unless stub[:vocabulary_name].nil?
        data['VocabularyFilterName'] = stub[:vocabulary_filter_name] unless stub[:vocabulary_filter_name].nil?
        data['VocabularyFilterMethod'] = stub[:vocabulary_filter_method] unless stub[:vocabulary_filter_method].nil?
        data['LanguageModelName'] = stub[:language_model_name] unless stub[:language_model_name].nil?
        data['ContentRedaction'] = Stubs::ContentRedaction.stub(stub[:content_redaction]) unless stub[:content_redaction].nil?
        data['LanguageOptions'] = Stubs::LanguageOptions.stub(stub[:language_options]) unless stub[:language_options].nil?
        data['LanguageIdSettings'] = Stubs::LanguageIdSettingsMap.stub(stub[:language_id_settings]) unless stub[:language_id_settings].nil?
        data
      end
    end

    # Map Stubber for LanguageIdSettingsMap
    class LanguageIdSettingsMap
      def self.default(visited=[])
        return nil if visited.include?('LanguageIdSettingsMap')
        visited = visited + ['LanguageIdSettingsMap']
        {
          test_key: LanguageIdSettings.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::LanguageIdSettings.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for LanguageIdSettings
    class LanguageIdSettings
      def self.default(visited=[])
        return nil if visited.include?('LanguageIdSettings')
        visited = visited + ['LanguageIdSettings']
        {
          vocabulary_name: 'vocabulary_name',
          vocabulary_filter_name: 'vocabulary_filter_name',
          language_model_name: 'language_model_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::LanguageIdSettings.new
        data = {}
        data['VocabularyName'] = stub[:vocabulary_name] unless stub[:vocabulary_name].nil?
        data['VocabularyFilterName'] = stub[:vocabulary_filter_name] unless stub[:vocabulary_filter_name].nil?
        data['LanguageModelName'] = stub[:language_model_name] unless stub[:language_model_name].nil?
        data
      end
    end

    # List Stubber for LanguageOptions
    class LanguageOptions
      def self.default(visited=[])
        return nil if visited.include?('LanguageOptions')
        visited = visited + ['LanguageOptions']
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

    # Structure Stubber for ContentRedaction
    class ContentRedaction
      def self.default(visited=[])
        return nil if visited.include?('ContentRedaction')
        visited = visited + ['ContentRedaction']
        {
          redaction_type: 'redaction_type',
          redaction_output: 'redaction_output',
          pii_entity_types: PiiEntityTypes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ContentRedaction.new
        data = {}
        data['RedactionType'] = stub[:redaction_type] unless stub[:redaction_type].nil?
        data['RedactionOutput'] = stub[:redaction_output] unless stub[:redaction_output].nil?
        data['PiiEntityTypes'] = Stubs::PiiEntityTypes.stub(stub[:pii_entity_types]) unless stub[:pii_entity_types].nil?
        data
      end
    end

    # List Stubber for PiiEntityTypes
    class PiiEntityTypes
      def self.default(visited=[])
        return nil if visited.include?('PiiEntityTypes')
        visited = visited + ['PiiEntityTypes']
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

    # Structure Stubber for Transcript
    class Transcript
      def self.default(visited=[])
        return nil if visited.include?('Transcript')
        visited = visited + ['Transcript']
        {
          transcript_file_uri: 'transcript_file_uri',
          redacted_transcript_file_uri: 'redacted_transcript_file_uri',
        }
      end

      def self.stub(stub)
        stub ||= Types::Transcript.new
        data = {}
        data['TranscriptFileUri'] = stub[:transcript_file_uri] unless stub[:transcript_file_uri].nil?
        data['RedactedTranscriptFileUri'] = stub[:redacted_transcript_file_uri] unless stub[:redacted_transcript_file_uri].nil?
        data
      end
    end

    # Structure Stubber for Media
    class Media
      def self.default(visited=[])
        return nil if visited.include?('Media')
        visited = visited + ['Media']
        {
          media_file_uri: 'media_file_uri',
          redacted_media_file_uri: 'redacted_media_file_uri',
        }
      end

      def self.stub(stub)
        stub ||= Types::Media.new
        data = {}
        data['MediaFileUri'] = stub[:media_file_uri] unless stub[:media_file_uri].nil?
        data['RedactedMediaFileUri'] = stub[:redacted_media_file_uri] unless stub[:redacted_media_file_uri].nil?
        data
      end
    end

    # Operation Stubber for GetMedicalTranscriptionJob
    class GetMedicalTranscriptionJob
      def self.default(visited=[])
        {
          medical_transcription_job: MedicalTranscriptionJob.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MedicalTranscriptionJob'] = Stubs::MedicalTranscriptionJob.stub(stub[:medical_transcription_job]) unless stub[:medical_transcription_job].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for MedicalTranscriptionJob
    class MedicalTranscriptionJob
      def self.default(visited=[])
        return nil if visited.include?('MedicalTranscriptionJob')
        visited = visited + ['MedicalTranscriptionJob']
        {
          medical_transcription_job_name: 'medical_transcription_job_name',
          transcription_job_status: 'transcription_job_status',
          language_code: 'language_code',
          media_sample_rate_hertz: 1,
          media_format: 'media_format',
          media: Media.default(visited),
          transcript: MedicalTranscript.default(visited),
          start_time: Time.now,
          creation_time: Time.now,
          completion_time: Time.now,
          failure_reason: 'failure_reason',
          settings: MedicalTranscriptionSetting.default(visited),
          content_identification_type: 'content_identification_type',
          specialty: 'specialty',
          type: 'type',
          tags: TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MedicalTranscriptionJob.new
        data = {}
        data['MedicalTranscriptionJobName'] = stub[:medical_transcription_job_name] unless stub[:medical_transcription_job_name].nil?
        data['TranscriptionJobStatus'] = stub[:transcription_job_status] unless stub[:transcription_job_status].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['MediaSampleRateHertz'] = stub[:media_sample_rate_hertz] unless stub[:media_sample_rate_hertz].nil?
        data['MediaFormat'] = stub[:media_format] unless stub[:media_format].nil?
        data['Media'] = Stubs::Media.stub(stub[:media]) unless stub[:media].nil?
        data['Transcript'] = Stubs::MedicalTranscript.stub(stub[:transcript]) unless stub[:transcript].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['CompletionTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completion_time]).to_i unless stub[:completion_time].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['Settings'] = Stubs::MedicalTranscriptionSetting.stub(stub[:settings]) unless stub[:settings].nil?
        data['ContentIdentificationType'] = stub[:content_identification_type] unless stub[:content_identification_type].nil?
        data['Specialty'] = stub[:specialty] unless stub[:specialty].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for MedicalTranscriptionSetting
    class MedicalTranscriptionSetting
      def self.default(visited=[])
        return nil if visited.include?('MedicalTranscriptionSetting')
        visited = visited + ['MedicalTranscriptionSetting']
        {
          show_speaker_labels: false,
          max_speaker_labels: 1,
          channel_identification: false,
          show_alternatives: false,
          max_alternatives: 1,
          vocabulary_name: 'vocabulary_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::MedicalTranscriptionSetting.new
        data = {}
        data['ShowSpeakerLabels'] = stub[:show_speaker_labels] unless stub[:show_speaker_labels].nil?
        data['MaxSpeakerLabels'] = stub[:max_speaker_labels] unless stub[:max_speaker_labels].nil?
        data['ChannelIdentification'] = stub[:channel_identification] unless stub[:channel_identification].nil?
        data['ShowAlternatives'] = stub[:show_alternatives] unless stub[:show_alternatives].nil?
        data['MaxAlternatives'] = stub[:max_alternatives] unless stub[:max_alternatives].nil?
        data['VocabularyName'] = stub[:vocabulary_name] unless stub[:vocabulary_name].nil?
        data
      end
    end

    # Structure Stubber for MedicalTranscript
    class MedicalTranscript
      def self.default(visited=[])
        return nil if visited.include?('MedicalTranscript')
        visited = visited + ['MedicalTranscript']
        {
          transcript_file_uri: 'transcript_file_uri',
        }
      end

      def self.stub(stub)
        stub ||= Types::MedicalTranscript.new
        data = {}
        data['TranscriptFileUri'] = stub[:transcript_file_uri] unless stub[:transcript_file_uri].nil?
        data
      end
    end

    # Operation Stubber for GetMedicalVocabulary
    class GetMedicalVocabulary
      def self.default(visited=[])
        {
          vocabulary_name: 'vocabulary_name',
          language_code: 'language_code',
          vocabulary_state: 'vocabulary_state',
          last_modified_time: Time.now,
          failure_reason: 'failure_reason',
          download_uri: 'download_uri',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['VocabularyName'] = stub[:vocabulary_name] unless stub[:vocabulary_name].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['VocabularyState'] = stub[:vocabulary_state] unless stub[:vocabulary_state].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['DownloadUri'] = stub[:download_uri] unless stub[:download_uri].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetTranscriptionJob
    class GetTranscriptionJob
      def self.default(visited=[])
        {
          transcription_job: TranscriptionJob.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TranscriptionJob'] = Stubs::TranscriptionJob.stub(stub[:transcription_job]) unless stub[:transcription_job].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for TranscriptionJob
    class TranscriptionJob
      def self.default(visited=[])
        return nil if visited.include?('TranscriptionJob')
        visited = visited + ['TranscriptionJob']
        {
          transcription_job_name: 'transcription_job_name',
          transcription_job_status: 'transcription_job_status',
          language_code: 'language_code',
          media_sample_rate_hertz: 1,
          media_format: 'media_format',
          media: Media.default(visited),
          transcript: Transcript.default(visited),
          start_time: Time.now,
          creation_time: Time.now,
          completion_time: Time.now,
          failure_reason: 'failure_reason',
          settings: Settings.default(visited),
          model_settings: ModelSettings.default(visited),
          job_execution_settings: JobExecutionSettings.default(visited),
          content_redaction: ContentRedaction.default(visited),
          identify_language: false,
          identify_multiple_languages: false,
          language_options: LanguageOptions.default(visited),
          identified_language_score: 1.0,
          language_codes: LanguageCodeList.default(visited),
          tags: TagList.default(visited),
          subtitles: SubtitlesOutput.default(visited),
          language_id_settings: LanguageIdSettingsMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TranscriptionJob.new
        data = {}
        data['TranscriptionJobName'] = stub[:transcription_job_name] unless stub[:transcription_job_name].nil?
        data['TranscriptionJobStatus'] = stub[:transcription_job_status] unless stub[:transcription_job_status].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['MediaSampleRateHertz'] = stub[:media_sample_rate_hertz] unless stub[:media_sample_rate_hertz].nil?
        data['MediaFormat'] = stub[:media_format] unless stub[:media_format].nil?
        data['Media'] = Stubs::Media.stub(stub[:media]) unless stub[:media].nil?
        data['Transcript'] = Stubs::Transcript.stub(stub[:transcript]) unless stub[:transcript].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['CompletionTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completion_time]).to_i unless stub[:completion_time].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['Settings'] = Stubs::Settings.stub(stub[:settings]) unless stub[:settings].nil?
        data['ModelSettings'] = Stubs::ModelSettings.stub(stub[:model_settings]) unless stub[:model_settings].nil?
        data['JobExecutionSettings'] = Stubs::JobExecutionSettings.stub(stub[:job_execution_settings]) unless stub[:job_execution_settings].nil?
        data['ContentRedaction'] = Stubs::ContentRedaction.stub(stub[:content_redaction]) unless stub[:content_redaction].nil?
        data['IdentifyLanguage'] = stub[:identify_language] unless stub[:identify_language].nil?
        data['IdentifyMultipleLanguages'] = stub[:identify_multiple_languages] unless stub[:identify_multiple_languages].nil?
        data['LanguageOptions'] = Stubs::LanguageOptions.stub(stub[:language_options]) unless stub[:language_options].nil?
        data['IdentifiedLanguageScore'] = Hearth::NumberHelper.serialize(stub[:identified_language_score])
        data['LanguageCodes'] = Stubs::LanguageCodeList.stub(stub[:language_codes]) unless stub[:language_codes].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['Subtitles'] = Stubs::SubtitlesOutput.stub(stub[:subtitles]) unless stub[:subtitles].nil?
        data['LanguageIdSettings'] = Stubs::LanguageIdSettingsMap.stub(stub[:language_id_settings]) unless stub[:language_id_settings].nil?
        data
      end
    end

    # Structure Stubber for SubtitlesOutput
    class SubtitlesOutput
      def self.default(visited=[])
        return nil if visited.include?('SubtitlesOutput')
        visited = visited + ['SubtitlesOutput']
        {
          formats: SubtitleFormats.default(visited),
          subtitle_file_uris: SubtitleFileUris.default(visited),
          output_start_index: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SubtitlesOutput.new
        data = {}
        data['Formats'] = Stubs::SubtitleFormats.stub(stub[:formats]) unless stub[:formats].nil?
        data['SubtitleFileUris'] = Stubs::SubtitleFileUris.stub(stub[:subtitle_file_uris]) unless stub[:subtitle_file_uris].nil?
        data['OutputStartIndex'] = stub[:output_start_index] unless stub[:output_start_index].nil?
        data
      end
    end

    # List Stubber for SubtitleFileUris
    class SubtitleFileUris
      def self.default(visited=[])
        return nil if visited.include?('SubtitleFileUris')
        visited = visited + ['SubtitleFileUris']
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

    # List Stubber for SubtitleFormats
    class SubtitleFormats
      def self.default(visited=[])
        return nil if visited.include?('SubtitleFormats')
        visited = visited + ['SubtitleFormats']
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

    # List Stubber for LanguageCodeList
    class LanguageCodeList
      def self.default(visited=[])
        return nil if visited.include?('LanguageCodeList')
        visited = visited + ['LanguageCodeList']
        [
          LanguageCodeItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LanguageCodeItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LanguageCodeItem
    class LanguageCodeItem
      def self.default(visited=[])
        return nil if visited.include?('LanguageCodeItem')
        visited = visited + ['LanguageCodeItem']
        {
          language_code: 'language_code',
          duration_in_seconds: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::LanguageCodeItem.new
        data = {}
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['DurationInSeconds'] = Hearth::NumberHelper.serialize(stub[:duration_in_seconds])
        data
      end
    end

    # Structure Stubber for JobExecutionSettings
    class JobExecutionSettings
      def self.default(visited=[])
        return nil if visited.include?('JobExecutionSettings')
        visited = visited + ['JobExecutionSettings']
        {
          allow_deferred_execution: false,
          data_access_role_arn: 'data_access_role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::JobExecutionSettings.new
        data = {}
        data['AllowDeferredExecution'] = stub[:allow_deferred_execution] unless stub[:allow_deferred_execution].nil?
        data['DataAccessRoleArn'] = stub[:data_access_role_arn] unless stub[:data_access_role_arn].nil?
        data
      end
    end

    # Structure Stubber for ModelSettings
    class ModelSettings
      def self.default(visited=[])
        return nil if visited.include?('ModelSettings')
        visited = visited + ['ModelSettings']
        {
          language_model_name: 'language_model_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ModelSettings.new
        data = {}
        data['LanguageModelName'] = stub[:language_model_name] unless stub[:language_model_name].nil?
        data
      end
    end

    # Structure Stubber for Settings
    class Settings
      def self.default(visited=[])
        return nil if visited.include?('Settings')
        visited = visited + ['Settings']
        {
          vocabulary_name: 'vocabulary_name',
          show_speaker_labels: false,
          max_speaker_labels: 1,
          channel_identification: false,
          show_alternatives: false,
          max_alternatives: 1,
          vocabulary_filter_name: 'vocabulary_filter_name',
          vocabulary_filter_method: 'vocabulary_filter_method',
        }
      end

      def self.stub(stub)
        stub ||= Types::Settings.new
        data = {}
        data['VocabularyName'] = stub[:vocabulary_name] unless stub[:vocabulary_name].nil?
        data['ShowSpeakerLabels'] = stub[:show_speaker_labels] unless stub[:show_speaker_labels].nil?
        data['MaxSpeakerLabels'] = stub[:max_speaker_labels] unless stub[:max_speaker_labels].nil?
        data['ChannelIdentification'] = stub[:channel_identification] unless stub[:channel_identification].nil?
        data['ShowAlternatives'] = stub[:show_alternatives] unless stub[:show_alternatives].nil?
        data['MaxAlternatives'] = stub[:max_alternatives] unless stub[:max_alternatives].nil?
        data['VocabularyFilterName'] = stub[:vocabulary_filter_name] unless stub[:vocabulary_filter_name].nil?
        data['VocabularyFilterMethod'] = stub[:vocabulary_filter_method] unless stub[:vocabulary_filter_method].nil?
        data
      end
    end

    # Operation Stubber for GetVocabulary
    class GetVocabulary
      def self.default(visited=[])
        {
          vocabulary_name: 'vocabulary_name',
          language_code: 'language_code',
          vocabulary_state: 'vocabulary_state',
          last_modified_time: Time.now,
          failure_reason: 'failure_reason',
          download_uri: 'download_uri',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['VocabularyName'] = stub[:vocabulary_name] unless stub[:vocabulary_name].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['VocabularyState'] = stub[:vocabulary_state] unless stub[:vocabulary_state].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['DownloadUri'] = stub[:download_uri] unless stub[:download_uri].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetVocabularyFilter
    class GetVocabularyFilter
      def self.default(visited=[])
        {
          vocabulary_filter_name: 'vocabulary_filter_name',
          language_code: 'language_code',
          last_modified_time: Time.now,
          download_uri: 'download_uri',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['VocabularyFilterName'] = stub[:vocabulary_filter_name] unless stub[:vocabulary_filter_name].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['DownloadUri'] = stub[:download_uri] unless stub[:download_uri].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListCallAnalyticsCategories
    class ListCallAnalyticsCategories
      def self.default(visited=[])
        {
          next_token: 'next_token',
          categories: CategoryPropertiesList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Categories'] = Stubs::CategoryPropertiesList.stub(stub[:categories]) unless stub[:categories].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CategoryPropertiesList
    class CategoryPropertiesList
      def self.default(visited=[])
        return nil if visited.include?('CategoryPropertiesList')
        visited = visited + ['CategoryPropertiesList']
        [
          CategoryProperties.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CategoryProperties.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListCallAnalyticsJobs
    class ListCallAnalyticsJobs
      def self.default(visited=[])
        {
          status: 'status',
          next_token: 'next_token',
          call_analytics_job_summaries: CallAnalyticsJobSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['CallAnalyticsJobSummaries'] = Stubs::CallAnalyticsJobSummaries.stub(stub[:call_analytics_job_summaries]) unless stub[:call_analytics_job_summaries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CallAnalyticsJobSummaries
    class CallAnalyticsJobSummaries
      def self.default(visited=[])
        return nil if visited.include?('CallAnalyticsJobSummaries')
        visited = visited + ['CallAnalyticsJobSummaries']
        [
          CallAnalyticsJobSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CallAnalyticsJobSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CallAnalyticsJobSummary
    class CallAnalyticsJobSummary
      def self.default(visited=[])
        return nil if visited.include?('CallAnalyticsJobSummary')
        visited = visited + ['CallAnalyticsJobSummary']
        {
          call_analytics_job_name: 'call_analytics_job_name',
          creation_time: Time.now,
          start_time: Time.now,
          completion_time: Time.now,
          language_code: 'language_code',
          call_analytics_job_status: 'call_analytics_job_status',
          failure_reason: 'failure_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::CallAnalyticsJobSummary.new
        data = {}
        data['CallAnalyticsJobName'] = stub[:call_analytics_job_name] unless stub[:call_analytics_job_name].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['CompletionTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completion_time]).to_i unless stub[:completion_time].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['CallAnalyticsJobStatus'] = stub[:call_analytics_job_status] unless stub[:call_analytics_job_status].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data
      end
    end

    # Operation Stubber for ListLanguageModels
    class ListLanguageModels
      def self.default(visited=[])
        {
          next_token: 'next_token',
          models: Models.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Models'] = Stubs::Models.stub(stub[:models]) unless stub[:models].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Models
    class Models
      def self.default(visited=[])
        return nil if visited.include?('Models')
        visited = visited + ['Models']
        [
          LanguageModel.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LanguageModel.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListMedicalTranscriptionJobs
    class ListMedicalTranscriptionJobs
      def self.default(visited=[])
        {
          status: 'status',
          next_token: 'next_token',
          medical_transcription_job_summaries: MedicalTranscriptionJobSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['MedicalTranscriptionJobSummaries'] = Stubs::MedicalTranscriptionJobSummaries.stub(stub[:medical_transcription_job_summaries]) unless stub[:medical_transcription_job_summaries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for MedicalTranscriptionJobSummaries
    class MedicalTranscriptionJobSummaries
      def self.default(visited=[])
        return nil if visited.include?('MedicalTranscriptionJobSummaries')
        visited = visited + ['MedicalTranscriptionJobSummaries']
        [
          MedicalTranscriptionJobSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MedicalTranscriptionJobSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MedicalTranscriptionJobSummary
    class MedicalTranscriptionJobSummary
      def self.default(visited=[])
        return nil if visited.include?('MedicalTranscriptionJobSummary')
        visited = visited + ['MedicalTranscriptionJobSummary']
        {
          medical_transcription_job_name: 'medical_transcription_job_name',
          creation_time: Time.now,
          start_time: Time.now,
          completion_time: Time.now,
          language_code: 'language_code',
          transcription_job_status: 'transcription_job_status',
          failure_reason: 'failure_reason',
          output_location_type: 'output_location_type',
          specialty: 'specialty',
          content_identification_type: 'content_identification_type',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::MedicalTranscriptionJobSummary.new
        data = {}
        data['MedicalTranscriptionJobName'] = stub[:medical_transcription_job_name] unless stub[:medical_transcription_job_name].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['CompletionTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completion_time]).to_i unless stub[:completion_time].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['TranscriptionJobStatus'] = stub[:transcription_job_status] unless stub[:transcription_job_status].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['OutputLocationType'] = stub[:output_location_type] unless stub[:output_location_type].nil?
        data['Specialty'] = stub[:specialty] unless stub[:specialty].nil?
        data['ContentIdentificationType'] = stub[:content_identification_type] unless stub[:content_identification_type].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Operation Stubber for ListMedicalVocabularies
    class ListMedicalVocabularies
      def self.default(visited=[])
        {
          status: 'status',
          next_token: 'next_token',
          vocabularies: Vocabularies.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Vocabularies'] = Stubs::Vocabularies.stub(stub[:vocabularies]) unless stub[:vocabularies].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Vocabularies
    class Vocabularies
      def self.default(visited=[])
        return nil if visited.include?('Vocabularies')
        visited = visited + ['Vocabularies']
        [
          VocabularyInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::VocabularyInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VocabularyInfo
    class VocabularyInfo
      def self.default(visited=[])
        return nil if visited.include?('VocabularyInfo')
        visited = visited + ['VocabularyInfo']
        {
          vocabulary_name: 'vocabulary_name',
          language_code: 'language_code',
          last_modified_time: Time.now,
          vocabulary_state: 'vocabulary_state',
        }
      end

      def self.stub(stub)
        stub ||= Types::VocabularyInfo.new
        data = {}
        data['VocabularyName'] = stub[:vocabulary_name] unless stub[:vocabulary_name].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['VocabularyState'] = stub[:vocabulary_state] unless stub[:vocabulary_state].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          resource_arn: 'resource_arn',
          tags: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceArn'] = stub[:resource_arn] unless stub[:resource_arn].nil?
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListTranscriptionJobs
    class ListTranscriptionJobs
      def self.default(visited=[])
        {
          status: 'status',
          next_token: 'next_token',
          transcription_job_summaries: TranscriptionJobSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['TranscriptionJobSummaries'] = Stubs::TranscriptionJobSummaries.stub(stub[:transcription_job_summaries]) unless stub[:transcription_job_summaries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TranscriptionJobSummaries
    class TranscriptionJobSummaries
      def self.default(visited=[])
        return nil if visited.include?('TranscriptionJobSummaries')
        visited = visited + ['TranscriptionJobSummaries']
        [
          TranscriptionJobSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TranscriptionJobSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TranscriptionJobSummary
    class TranscriptionJobSummary
      def self.default(visited=[])
        return nil if visited.include?('TranscriptionJobSummary')
        visited = visited + ['TranscriptionJobSummary']
        {
          transcription_job_name: 'transcription_job_name',
          creation_time: Time.now,
          start_time: Time.now,
          completion_time: Time.now,
          language_code: 'language_code',
          transcription_job_status: 'transcription_job_status',
          failure_reason: 'failure_reason',
          output_location_type: 'output_location_type',
          content_redaction: ContentRedaction.default(visited),
          model_settings: ModelSettings.default(visited),
          identify_language: false,
          identify_multiple_languages: false,
          identified_language_score: 1.0,
          language_codes: LanguageCodeList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TranscriptionJobSummary.new
        data = {}
        data['TranscriptionJobName'] = stub[:transcription_job_name] unless stub[:transcription_job_name].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['CompletionTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:completion_time]).to_i unless stub[:completion_time].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['TranscriptionJobStatus'] = stub[:transcription_job_status] unless stub[:transcription_job_status].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data['OutputLocationType'] = stub[:output_location_type] unless stub[:output_location_type].nil?
        data['ContentRedaction'] = Stubs::ContentRedaction.stub(stub[:content_redaction]) unless stub[:content_redaction].nil?
        data['ModelSettings'] = Stubs::ModelSettings.stub(stub[:model_settings]) unless stub[:model_settings].nil?
        data['IdentifyLanguage'] = stub[:identify_language] unless stub[:identify_language].nil?
        data['IdentifyMultipleLanguages'] = stub[:identify_multiple_languages] unless stub[:identify_multiple_languages].nil?
        data['IdentifiedLanguageScore'] = Hearth::NumberHelper.serialize(stub[:identified_language_score])
        data['LanguageCodes'] = Stubs::LanguageCodeList.stub(stub[:language_codes]) unless stub[:language_codes].nil?
        data
      end
    end

    # Operation Stubber for ListVocabularies
    class ListVocabularies
      def self.default(visited=[])
        {
          status: 'status',
          next_token: 'next_token',
          vocabularies: Vocabularies.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['Vocabularies'] = Stubs::Vocabularies.stub(stub[:vocabularies]) unless stub[:vocabularies].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListVocabularyFilters
    class ListVocabularyFilters
      def self.default(visited=[])
        {
          next_token: 'next_token',
          vocabulary_filters: VocabularyFilters.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['VocabularyFilters'] = Stubs::VocabularyFilters.stub(stub[:vocabulary_filters]) unless stub[:vocabulary_filters].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for VocabularyFilters
    class VocabularyFilters
      def self.default(visited=[])
        return nil if visited.include?('VocabularyFilters')
        visited = visited + ['VocabularyFilters']
        [
          VocabularyFilterInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::VocabularyFilterInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VocabularyFilterInfo
    class VocabularyFilterInfo
      def self.default(visited=[])
        return nil if visited.include?('VocabularyFilterInfo')
        visited = visited + ['VocabularyFilterInfo']
        {
          vocabulary_filter_name: 'vocabulary_filter_name',
          language_code: 'language_code',
          last_modified_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::VocabularyFilterInfo.new
        data = {}
        data['VocabularyFilterName'] = stub[:vocabulary_filter_name] unless stub[:vocabulary_filter_name].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data
      end
    end

    # Operation Stubber for StartCallAnalyticsJob
    class StartCallAnalyticsJob
      def self.default(visited=[])
        {
          call_analytics_job: CallAnalyticsJob.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CallAnalyticsJob'] = Stubs::CallAnalyticsJob.stub(stub[:call_analytics_job]) unless stub[:call_analytics_job].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartMedicalTranscriptionJob
    class StartMedicalTranscriptionJob
      def self.default(visited=[])
        {
          medical_transcription_job: MedicalTranscriptionJob.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MedicalTranscriptionJob'] = Stubs::MedicalTranscriptionJob.stub(stub[:medical_transcription_job]) unless stub[:medical_transcription_job].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartTranscriptionJob
    class StartTranscriptionJob
      def self.default(visited=[])
        {
          transcription_job: TranscriptionJob.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TranscriptionJob'] = Stubs::TranscriptionJob.stub(stub[:transcription_job]) unless stub[:transcription_job].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateCallAnalyticsCategory
    class UpdateCallAnalyticsCategory
      def self.default(visited=[])
        {
          category_properties: CategoryProperties.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['CategoryProperties'] = Stubs::CategoryProperties.stub(stub[:category_properties]) unless stub[:category_properties].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateMedicalVocabulary
    class UpdateMedicalVocabulary
      def self.default(visited=[])
        {
          vocabulary_name: 'vocabulary_name',
          language_code: 'language_code',
          last_modified_time: Time.now,
          vocabulary_state: 'vocabulary_state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['VocabularyName'] = stub[:vocabulary_name] unless stub[:vocabulary_name].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['VocabularyState'] = stub[:vocabulary_state] unless stub[:vocabulary_state].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateVocabulary
    class UpdateVocabulary
      def self.default(visited=[])
        {
          vocabulary_name: 'vocabulary_name',
          language_code: 'language_code',
          last_modified_time: Time.now,
          vocabulary_state: 'vocabulary_state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['VocabularyName'] = stub[:vocabulary_name] unless stub[:vocabulary_name].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data['VocabularyState'] = stub[:vocabulary_state] unless stub[:vocabulary_state].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateVocabularyFilter
    class UpdateVocabularyFilter
      def self.default(visited=[])
        {
          vocabulary_filter_name: 'vocabulary_filter_name',
          language_code: 'language_code',
          last_modified_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['VocabularyFilterName'] = stub[:vocabulary_filter_name] unless stub[:vocabulary_filter_name].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
