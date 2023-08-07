# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::TranscribeStreaming
  # @api private
  module Stubs

    class Alternative
      def self.default(visited = [])
        return nil if visited.include?('Alternative')
        visited = visited + ['Alternative']
        {
          transcript: 'transcript',
          items: ItemList.default(visited),
          entities: EntityList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Alternative.new
        data = {}
        data['Transcript'] = stub[:transcript] unless stub[:transcript].nil?
        data['Items'] = ItemList.stub(stub[:items]) unless stub[:items].nil?
        data['Entities'] = EntityList.stub(stub[:entities]) unless stub[:entities].nil?
        data
      end
    end

    class AlternativeList
      def self.default(visited = [])
        return nil if visited.include?('AlternativeList')
        visited = visited + ['AlternativeList']
        [
          Alternative.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Alternative.stub(element) unless element.nil?
        end
        data
      end
    end

    class BadRequestException
      def self.build(params, context:)
        Params::BadRequestException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::BadRequestException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 400
        http_resp.headers['Content-Type'] = 'application/json'
        data['Message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class CallAnalyticsEntity
      def self.default(visited = [])
        return nil if visited.include?('CallAnalyticsEntity')
        visited = visited + ['CallAnalyticsEntity']
        {
          begin_offset_millis: 1,
          end_offset_millis: 1,
          category: 'category',
          type: 'type',
          content: 'content',
          confidence: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::CallAnalyticsEntity.new
        data = {}
        data['BeginOffsetMillis'] = stub[:begin_offset_millis] unless stub[:begin_offset_millis].nil?
        data['EndOffsetMillis'] = stub[:end_offset_millis] unless stub[:end_offset_millis].nil?
        data['Category'] = stub[:category] unless stub[:category].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Content'] = stub[:content] unless stub[:content].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data
      end
    end

    class CallAnalyticsEntityList
      def self.default(visited = [])
        return nil if visited.include?('CallAnalyticsEntityList')
        visited = visited + ['CallAnalyticsEntityList']
        [
          CallAnalyticsEntity.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CallAnalyticsEntity.stub(element) unless element.nil?
        end
        data
      end
    end

    class CallAnalyticsItem
      def self.default(visited = [])
        return nil if visited.include?('CallAnalyticsItem')
        visited = visited + ['CallAnalyticsItem']
        {
          begin_offset_millis: 1,
          end_offset_millis: 1,
          type: 'type',
          content: 'content',
          confidence: 1.0,
          vocabulary_filter_match: false,
          stable: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::CallAnalyticsItem.new
        data = {}
        data['BeginOffsetMillis'] = stub[:begin_offset_millis] unless stub[:begin_offset_millis].nil?
        data['EndOffsetMillis'] = stub[:end_offset_millis] unless stub[:end_offset_millis].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Content'] = stub[:content] unless stub[:content].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data['VocabularyFilterMatch'] = stub[:vocabulary_filter_match] unless stub[:vocabulary_filter_match].nil?
        data['Stable'] = stub[:stable] unless stub[:stable].nil?
        data
      end
    end

    class CallAnalyticsItemList
      def self.default(visited = [])
        return nil if visited.include?('CallAnalyticsItemList')
        visited = visited + ['CallAnalyticsItemList']
        [
          CallAnalyticsItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CallAnalyticsItem.stub(element) unless element.nil?
        end
        data
      end
    end

    class CallAnalyticsTranscriptResultStream
      def self.default(visited = [])
        return nil if visited.include?('CallAnalyticsTranscriptResultStream')
        visited = visited + ['CallAnalyticsTranscriptResultStream']
        {
          utterance_event: UtteranceEvent.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::CallAnalyticsTranscriptResultStream::UtteranceEvent
          data['UtteranceEvent'] = (UtteranceEvent.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::CallAnalyticsTranscriptResultStream::CategoryEvent
          data['CategoryEvent'] = (CategoryEvent.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::CallAnalyticsTranscriptResultStream::BadRequestException
          data['BadRequestException'] = (BadRequestException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::CallAnalyticsTranscriptResultStream::LimitExceededException
          data['LimitExceededException'] = (LimitExceededException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::CallAnalyticsTranscriptResultStream::InternalFailureException
          data['InternalFailureException'] = (InternalFailureException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::CallAnalyticsTranscriptResultStream::ConflictException
          data['ConflictException'] = (ConflictException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::CallAnalyticsTranscriptResultStream::ServiceUnavailableException
          data['ServiceUnavailableException'] = (ServiceUnavailableException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::CallAnalyticsTranscriptResultStream"
        end

        data
      end
    end

    class CategoryEvent
      def self.default(visited = [])
        return nil if visited.include?('CategoryEvent')
        visited = visited + ['CategoryEvent']
        {
          matched_categories: StringList.default(visited),
          matched_details: MatchedCategoryDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CategoryEvent.new
        data = {}
        data['MatchedCategories'] = StringList.stub(stub[:matched_categories]) unless stub[:matched_categories].nil?
        data['MatchedDetails'] = MatchedCategoryDetails.stub(stub[:matched_details]) unless stub[:matched_details].nil?
        data
      end
    end

    class CharacterOffsets
      def self.default(visited = [])
        return nil if visited.include?('CharacterOffsets')
        visited = visited + ['CharacterOffsets']
        {
          begin: 1,
          end: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::CharacterOffsets.new
        data = {}
        data['Begin'] = stub[:begin] unless stub[:begin].nil?
        data['End'] = stub[:end] unless stub[:end].nil?
        data
      end
    end

    class ConflictException
      def self.build(params, context:)
        Params::ConflictException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ConflictException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 409
        http_resp.headers['Content-Type'] = 'application/json'
        data['Message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class Entity
      def self.default(visited = [])
        return nil if visited.include?('Entity')
        visited = visited + ['Entity']
        {
          start_time: 1.0,
          end_time: 1.0,
          category: 'category',
          type: 'type',
          content: 'content',
          confidence: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::Entity.new
        data = {}
        data['StartTime'] = Hearth::NumberHelper.serialize(stub[:start_time])
        data['EndTime'] = Hearth::NumberHelper.serialize(stub[:end_time])
        data['Category'] = stub[:category] unless stub[:category].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Content'] = stub[:content] unless stub[:content].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data
      end
    end

    class EntityList
      def self.default(visited = [])
        return nil if visited.include?('EntityList')
        visited = visited + ['EntityList']
        [
          Entity.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Entity.stub(element) unless element.nil?
        end
        data
      end
    end

    class InternalFailureException
      def self.build(params, context:)
        Params::InternalFailureException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::InternalFailureException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 500
        http_resp.headers['Content-Type'] = 'application/json'
        data['Message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class IssueDetected
      def self.default(visited = [])
        return nil if visited.include?('IssueDetected')
        visited = visited + ['IssueDetected']
        {
          character_offsets: CharacterOffsets.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::IssueDetected.new
        data = {}
        data['CharacterOffsets'] = CharacterOffsets.stub(stub[:character_offsets]) unless stub[:character_offsets].nil?
        data
      end
    end

    class IssuesDetected
      def self.default(visited = [])
        return nil if visited.include?('IssuesDetected')
        visited = visited + ['IssuesDetected']
        [
          IssueDetected.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << IssueDetected.stub(element) unless element.nil?
        end
        data
      end
    end

    class Item
      def self.default(visited = [])
        return nil if visited.include?('Item')
        visited = visited + ['Item']
        {
          start_time: 1.0,
          end_time: 1.0,
          type: 'type',
          content: 'content',
          vocabulary_filter_match: false,
          speaker: 'speaker',
          confidence: 1.0,
          stable: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Item.new
        data = {}
        data['StartTime'] = Hearth::NumberHelper.serialize(stub[:start_time])
        data['EndTime'] = Hearth::NumberHelper.serialize(stub[:end_time])
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Content'] = stub[:content] unless stub[:content].nil?
        data['VocabularyFilterMatch'] = stub[:vocabulary_filter_match] unless stub[:vocabulary_filter_match].nil?
        data['Speaker'] = stub[:speaker] unless stub[:speaker].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data['Stable'] = stub[:stable] unless stub[:stable].nil?
        data
      end
    end

    class ItemList
      def self.default(visited = [])
        return nil if visited.include?('ItemList')
        visited = visited + ['ItemList']
        [
          Item.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Item.stub(element) unless element.nil?
        end
        data
      end
    end

    class LanguageIdentification
      def self.default(visited = [])
        return nil if visited.include?('LanguageIdentification')
        visited = visited + ['LanguageIdentification']
        [
          LanguageWithScore.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LanguageWithScore.stub(element) unless element.nil?
        end
        data
      end
    end

    class LanguageWithScore
      def self.default(visited = [])
        return nil if visited.include?('LanguageWithScore')
        visited = visited + ['LanguageWithScore']
        {
          language_code: 'language_code',
          score: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::LanguageWithScore.new
        data = {}
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['Score'] = Hearth::NumberHelper.serialize(stub[:score])
        data
      end
    end

    class LimitExceededException
      def self.build(params, context:)
        Params::LimitExceededException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::LimitExceededException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 429
        http_resp.headers['Content-Type'] = 'application/json'
        data['Message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class MatchedCategoryDetails
      def self.default(visited = [])
        return nil if visited.include?('MatchedCategoryDetails')
        visited = visited + ['MatchedCategoryDetails']
        {
          key: PointsOfInterest.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = PointsOfInterest.stub(value) unless value.nil?
        end
        data
      end
    end

    class MedicalAlternative
      def self.default(visited = [])
        return nil if visited.include?('MedicalAlternative')
        visited = visited + ['MedicalAlternative']
        {
          transcript: 'transcript',
          items: MedicalItemList.default(visited),
          entities: MedicalEntityList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MedicalAlternative.new
        data = {}
        data['Transcript'] = stub[:transcript] unless stub[:transcript].nil?
        data['Items'] = MedicalItemList.stub(stub[:items]) unless stub[:items].nil?
        data['Entities'] = MedicalEntityList.stub(stub[:entities]) unless stub[:entities].nil?
        data
      end
    end

    class MedicalAlternativeList
      def self.default(visited = [])
        return nil if visited.include?('MedicalAlternativeList')
        visited = visited + ['MedicalAlternativeList']
        [
          MedicalAlternative.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MedicalAlternative.stub(element) unless element.nil?
        end
        data
      end
    end

    class MedicalEntity
      def self.default(visited = [])
        return nil if visited.include?('MedicalEntity')
        visited = visited + ['MedicalEntity']
        {
          start_time: 1.0,
          end_time: 1.0,
          category: 'category',
          content: 'content',
          confidence: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::MedicalEntity.new
        data = {}
        data['StartTime'] = Hearth::NumberHelper.serialize(stub[:start_time])
        data['EndTime'] = Hearth::NumberHelper.serialize(stub[:end_time])
        data['Category'] = stub[:category] unless stub[:category].nil?
        data['Content'] = stub[:content] unless stub[:content].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data
      end
    end

    class MedicalEntityList
      def self.default(visited = [])
        return nil if visited.include?('MedicalEntityList')
        visited = visited + ['MedicalEntityList']
        [
          MedicalEntity.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MedicalEntity.stub(element) unless element.nil?
        end
        data
      end
    end

    class MedicalItem
      def self.default(visited = [])
        return nil if visited.include?('MedicalItem')
        visited = visited + ['MedicalItem']
        {
          start_time: 1.0,
          end_time: 1.0,
          type: 'type',
          content: 'content',
          confidence: 1.0,
          speaker: 'speaker',
        }
      end

      def self.stub(stub)
        stub ||= Types::MedicalItem.new
        data = {}
        data['StartTime'] = Hearth::NumberHelper.serialize(stub[:start_time])
        data['EndTime'] = Hearth::NumberHelper.serialize(stub[:end_time])
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Content'] = stub[:content] unless stub[:content].nil?
        data['Confidence'] = Hearth::NumberHelper.serialize(stub[:confidence])
        data['Speaker'] = stub[:speaker] unless stub[:speaker].nil?
        data
      end
    end

    class MedicalItemList
      def self.default(visited = [])
        return nil if visited.include?('MedicalItemList')
        visited = visited + ['MedicalItemList']
        [
          MedicalItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MedicalItem.stub(element) unless element.nil?
        end
        data
      end
    end

    class MedicalResult
      def self.default(visited = [])
        return nil if visited.include?('MedicalResult')
        visited = visited + ['MedicalResult']
        {
          result_id: 'result_id',
          start_time: 1.0,
          end_time: 1.0,
          is_partial: false,
          alternatives: MedicalAlternativeList.default(visited),
          channel_id: 'channel_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::MedicalResult.new
        data = {}
        data['ResultId'] = stub[:result_id] unless stub[:result_id].nil?
        data['StartTime'] = Hearth::NumberHelper.serialize(stub[:start_time])
        data['EndTime'] = Hearth::NumberHelper.serialize(stub[:end_time])
        data['IsPartial'] = stub[:is_partial] unless stub[:is_partial].nil?
        data['Alternatives'] = MedicalAlternativeList.stub(stub[:alternatives]) unless stub[:alternatives].nil?
        data['ChannelId'] = stub[:channel_id] unless stub[:channel_id].nil?
        data
      end
    end

    class MedicalResultList
      def self.default(visited = [])
        return nil if visited.include?('MedicalResultList')
        visited = visited + ['MedicalResultList']
        [
          MedicalResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MedicalResult.stub(element) unless element.nil?
        end
        data
      end
    end

    class MedicalTranscript
      def self.default(visited = [])
        return nil if visited.include?('MedicalTranscript')
        visited = visited + ['MedicalTranscript']
        {
          results: MedicalResultList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MedicalTranscript.new
        data = {}
        data['Results'] = MedicalResultList.stub(stub[:results]) unless stub[:results].nil?
        data
      end
    end

    class MedicalTranscriptEvent
      def self.default(visited = [])
        return nil if visited.include?('MedicalTranscriptEvent')
        visited = visited + ['MedicalTranscriptEvent']
        {
          transcript: MedicalTranscript.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MedicalTranscriptEvent.new
        data = {}
        data['Transcript'] = MedicalTranscript.stub(stub[:transcript]) unless stub[:transcript].nil?
        data
      end
    end

    class MedicalTranscriptResultStream
      def self.default(visited = [])
        return nil if visited.include?('MedicalTranscriptResultStream')
        visited = visited + ['MedicalTranscriptResultStream']
        {
          transcript_event: MedicalTranscriptEvent.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::MedicalTranscriptResultStream::TranscriptEvent
          data['TranscriptEvent'] = (MedicalTranscriptEvent.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::MedicalTranscriptResultStream::BadRequestException
          data['BadRequestException'] = (BadRequestException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::MedicalTranscriptResultStream::LimitExceededException
          data['LimitExceededException'] = (LimitExceededException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::MedicalTranscriptResultStream::InternalFailureException
          data['InternalFailureException'] = (InternalFailureException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::MedicalTranscriptResultStream::ConflictException
          data['ConflictException'] = (ConflictException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::MedicalTranscriptResultStream::ServiceUnavailableException
          data['ServiceUnavailableException'] = (ServiceUnavailableException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::MedicalTranscriptResultStream"
        end

        data
      end
    end

    class PointsOfInterest
      def self.default(visited = [])
        return nil if visited.include?('PointsOfInterest')
        visited = visited + ['PointsOfInterest']
        {
          timestamp_ranges: TimestampRanges.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PointsOfInterest.new
        data = {}
        data['TimestampRanges'] = TimestampRanges.stub(stub[:timestamp_ranges]) unless stub[:timestamp_ranges].nil?
        data
      end
    end

    class Result
      def self.default(visited = [])
        return nil if visited.include?('Result')
        visited = visited + ['Result']
        {
          result_id: 'result_id',
          start_time: 1.0,
          end_time: 1.0,
          is_partial: false,
          alternatives: AlternativeList.default(visited),
          channel_id: 'channel_id',
          language_code: 'language_code',
          language_identification: LanguageIdentification.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Result.new
        data = {}
        data['ResultId'] = stub[:result_id] unless stub[:result_id].nil?
        data['StartTime'] = Hearth::NumberHelper.serialize(stub[:start_time])
        data['EndTime'] = Hearth::NumberHelper.serialize(stub[:end_time])
        data['IsPartial'] = stub[:is_partial] unless stub[:is_partial].nil?
        data['Alternatives'] = AlternativeList.stub(stub[:alternatives]) unless stub[:alternatives].nil?
        data['ChannelId'] = stub[:channel_id] unless stub[:channel_id].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['LanguageIdentification'] = LanguageIdentification.stub(stub[:language_identification]) unless stub[:language_identification].nil?
        data
      end
    end

    class ResultList
      def self.default(visited = [])
        return nil if visited.include?('ResultList')
        visited = visited + ['ResultList']
        [
          Result.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Result.stub(element) unless element.nil?
        end
        data
      end
    end

    class ServiceUnavailableException
      def self.build(params, context:)
        Params::ServiceUnavailableException.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::ServiceUnavailableException.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 503
        http_resp.headers['Content-Type'] = 'application/json'
        data['Message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    class StartCallAnalyticsStreamTranscription
      def self.build(params, context:)
        Params::StartCallAnalyticsStreamTranscriptionOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::StartCallAnalyticsStreamTranscriptionOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          request_id: 'request_id',
          language_code: 'language_code',
          media_sample_rate_hertz: 1,
          media_encoding: 'media_encoding',
          vocabulary_name: 'vocabulary_name',
          session_id: 'session_id',
          call_analytics_transcript_result_stream: CallAnalyticsTranscriptResultStream.default(visited),
          vocabulary_filter_name: 'vocabulary_filter_name',
          vocabulary_filter_method: 'vocabulary_filter_method',
          language_model_name: 'language_model_name',
          enable_partial_results_stabilization: false,
          partial_results_stability: 'partial_results_stability',
          content_identification_type: 'content_identification_type',
          content_redaction_type: 'content_redaction_type',
          pii_entity_types: 'pii_entity_types',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['x-amzn-request-id'] = stub[:request_id] unless stub[:request_id].nil? || stub[:request_id].empty?
        http_resp.headers['x-amzn-transcribe-language-code'] = stub[:language_code] unless stub[:language_code].nil? || stub[:language_code].empty?
        http_resp.headers['x-amzn-transcribe-sample-rate'] = stub[:media_sample_rate_hertz].to_s unless stub[:media_sample_rate_hertz].nil?
        http_resp.headers['x-amzn-transcribe-media-encoding'] = stub[:media_encoding] unless stub[:media_encoding].nil? || stub[:media_encoding].empty?
        http_resp.headers['x-amzn-transcribe-vocabulary-name'] = stub[:vocabulary_name] unless stub[:vocabulary_name].nil? || stub[:vocabulary_name].empty?
        http_resp.headers['x-amzn-transcribe-session-id'] = stub[:session_id] unless stub[:session_id].nil? || stub[:session_id].empty?
        http_resp.headers['x-amzn-transcribe-vocabulary-filter-name'] = stub[:vocabulary_filter_name] unless stub[:vocabulary_filter_name].nil? || stub[:vocabulary_filter_name].empty?
        http_resp.headers['x-amzn-transcribe-vocabulary-filter-method'] = stub[:vocabulary_filter_method] unless stub[:vocabulary_filter_method].nil? || stub[:vocabulary_filter_method].empty?
        http_resp.headers['x-amzn-transcribe-language-model-name'] = stub[:language_model_name] unless stub[:language_model_name].nil? || stub[:language_model_name].empty?
        http_resp.headers['x-amzn-transcribe-enable-partial-results-stabilization'] = stub[:enable_partial_results_stabilization].to_s unless stub[:enable_partial_results_stabilization].nil?
        http_resp.headers['x-amzn-transcribe-partial-results-stability'] = stub[:partial_results_stability] unless stub[:partial_results_stability].nil? || stub[:partial_results_stability].empty?
        http_resp.headers['x-amzn-transcribe-content-identification-type'] = stub[:content_identification_type] unless stub[:content_identification_type].nil? || stub[:content_identification_type].empty?
        http_resp.headers['x-amzn-transcribe-content-redaction-type'] = stub[:content_redaction_type] unless stub[:content_redaction_type].nil? || stub[:content_redaction_type].empty?
        http_resp.headers['x-amzn-transcribe-pii-entity-types'] = stub[:pii_entity_types] unless stub[:pii_entity_types].nil? || stub[:pii_entity_types].empty?
        IO.copy_stream(stub[:call_analytics_transcript_result_stream], http_resp.body)
      end
    end

    class StartMedicalStreamTranscription
      def self.build(params, context:)
        Params::StartMedicalStreamTranscriptionOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::StartMedicalStreamTranscriptionOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          request_id: 'request_id',
          language_code: 'language_code',
          media_sample_rate_hertz: 1,
          media_encoding: 'media_encoding',
          vocabulary_name: 'vocabulary_name',
          specialty: 'specialty',
          type: 'type',
          show_speaker_label: false,
          session_id: 'session_id',
          transcript_result_stream: MedicalTranscriptResultStream.default(visited),
          enable_channel_identification: false,
          number_of_channels: 1,
          content_identification_type: 'content_identification_type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['x-amzn-request-id'] = stub[:request_id] unless stub[:request_id].nil? || stub[:request_id].empty?
        http_resp.headers['x-amzn-transcribe-language-code'] = stub[:language_code] unless stub[:language_code].nil? || stub[:language_code].empty?
        http_resp.headers['x-amzn-transcribe-sample-rate'] = stub[:media_sample_rate_hertz].to_s unless stub[:media_sample_rate_hertz].nil?
        http_resp.headers['x-amzn-transcribe-media-encoding'] = stub[:media_encoding] unless stub[:media_encoding].nil? || stub[:media_encoding].empty?
        http_resp.headers['x-amzn-transcribe-vocabulary-name'] = stub[:vocabulary_name] unless stub[:vocabulary_name].nil? || stub[:vocabulary_name].empty?
        http_resp.headers['x-amzn-transcribe-specialty'] = stub[:specialty] unless stub[:specialty].nil? || stub[:specialty].empty?
        http_resp.headers['x-amzn-transcribe-type'] = stub[:type] unless stub[:type].nil? || stub[:type].empty?
        http_resp.headers['x-amzn-transcribe-show-speaker-label'] = stub[:show_speaker_label].to_s unless stub[:show_speaker_label].nil?
        http_resp.headers['x-amzn-transcribe-session-id'] = stub[:session_id] unless stub[:session_id].nil? || stub[:session_id].empty?
        http_resp.headers['x-amzn-transcribe-enable-channel-identification'] = stub[:enable_channel_identification].to_s unless stub[:enable_channel_identification].nil?
        http_resp.headers['x-amzn-transcribe-number-of-channels'] = stub[:number_of_channels].to_s unless stub[:number_of_channels].nil?
        http_resp.headers['x-amzn-transcribe-content-identification-type'] = stub[:content_identification_type] unless stub[:content_identification_type].nil? || stub[:content_identification_type].empty?
        IO.copy_stream(stub[:transcript_result_stream], http_resp.body)
      end
    end

    class StartStreamTranscription
      def self.build(params, context:)
        Params::StartStreamTranscriptionOutput.build(params, context: context)
      end

      def self.validate!(output, context:)
        Validators::StartStreamTranscriptionOutput.validate!(output, context: context)
      end

      def self.default(visited = [])
        {
          request_id: 'request_id',
          language_code: 'language_code',
          media_sample_rate_hertz: 1,
          media_encoding: 'media_encoding',
          vocabulary_name: 'vocabulary_name',
          session_id: 'session_id',
          transcript_result_stream: TranscriptResultStream.default(visited),
          vocabulary_filter_name: 'vocabulary_filter_name',
          vocabulary_filter_method: 'vocabulary_filter_method',
          show_speaker_label: false,
          enable_channel_identification: false,
          number_of_channels: 1,
          enable_partial_results_stabilization: false,
          partial_results_stability: 'partial_results_stability',
          content_identification_type: 'content_identification_type',
          content_redaction_type: 'content_redaction_type',
          pii_entity_types: 'pii_entity_types',
          language_model_name: 'language_model_name',
          identify_language: false,
          language_options: 'language_options',
          preferred_language: 'preferred_language',
          vocabulary_names: 'vocabulary_names',
          vocabulary_filter_names: 'vocabulary_filter_names',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['x-amzn-request-id'] = stub[:request_id] unless stub[:request_id].nil? || stub[:request_id].empty?
        http_resp.headers['x-amzn-transcribe-language-code'] = stub[:language_code] unless stub[:language_code].nil? || stub[:language_code].empty?
        http_resp.headers['x-amzn-transcribe-sample-rate'] = stub[:media_sample_rate_hertz].to_s unless stub[:media_sample_rate_hertz].nil?
        http_resp.headers['x-amzn-transcribe-media-encoding'] = stub[:media_encoding] unless stub[:media_encoding].nil? || stub[:media_encoding].empty?
        http_resp.headers['x-amzn-transcribe-vocabulary-name'] = stub[:vocabulary_name] unless stub[:vocabulary_name].nil? || stub[:vocabulary_name].empty?
        http_resp.headers['x-amzn-transcribe-session-id'] = stub[:session_id] unless stub[:session_id].nil? || stub[:session_id].empty?
        http_resp.headers['x-amzn-transcribe-vocabulary-filter-name'] = stub[:vocabulary_filter_name] unless stub[:vocabulary_filter_name].nil? || stub[:vocabulary_filter_name].empty?
        http_resp.headers['x-amzn-transcribe-vocabulary-filter-method'] = stub[:vocabulary_filter_method] unless stub[:vocabulary_filter_method].nil? || stub[:vocabulary_filter_method].empty?
        http_resp.headers['x-amzn-transcribe-show-speaker-label'] = stub[:show_speaker_label].to_s unless stub[:show_speaker_label].nil?
        http_resp.headers['x-amzn-transcribe-enable-channel-identification'] = stub[:enable_channel_identification].to_s unless stub[:enable_channel_identification].nil?
        http_resp.headers['x-amzn-transcribe-number-of-channels'] = stub[:number_of_channels].to_s unless stub[:number_of_channels].nil?
        http_resp.headers['x-amzn-transcribe-enable-partial-results-stabilization'] = stub[:enable_partial_results_stabilization].to_s unless stub[:enable_partial_results_stabilization].nil?
        http_resp.headers['x-amzn-transcribe-partial-results-stability'] = stub[:partial_results_stability] unless stub[:partial_results_stability].nil? || stub[:partial_results_stability].empty?
        http_resp.headers['x-amzn-transcribe-content-identification-type'] = stub[:content_identification_type] unless stub[:content_identification_type].nil? || stub[:content_identification_type].empty?
        http_resp.headers['x-amzn-transcribe-content-redaction-type'] = stub[:content_redaction_type] unless stub[:content_redaction_type].nil? || stub[:content_redaction_type].empty?
        http_resp.headers['x-amzn-transcribe-pii-entity-types'] = stub[:pii_entity_types] unless stub[:pii_entity_types].nil? || stub[:pii_entity_types].empty?
        http_resp.headers['x-amzn-transcribe-language-model-name'] = stub[:language_model_name] unless stub[:language_model_name].nil? || stub[:language_model_name].empty?
        http_resp.headers['x-amzn-transcribe-identify-language'] = stub[:identify_language].to_s unless stub[:identify_language].nil?
        http_resp.headers['x-amzn-transcribe-language-options'] = stub[:language_options] unless stub[:language_options].nil? || stub[:language_options].empty?
        http_resp.headers['x-amzn-transcribe-preferred-language'] = stub[:preferred_language] unless stub[:preferred_language].nil? || stub[:preferred_language].empty?
        http_resp.headers['x-amzn-transcribe-vocabulary-names'] = stub[:vocabulary_names] unless stub[:vocabulary_names].nil? || stub[:vocabulary_names].empty?
        http_resp.headers['x-amzn-transcribe-vocabulary-filter-names'] = stub[:vocabulary_filter_names] unless stub[:vocabulary_filter_names].nil? || stub[:vocabulary_filter_names].empty?
        IO.copy_stream(stub[:transcript_result_stream], http_resp.body)
      end
    end

    class StringList
      def self.default(visited = [])
        return nil if visited.include?('StringList')
        visited = visited + ['StringList']
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

    class TimestampRange
      def self.default(visited = [])
        return nil if visited.include?('TimestampRange')
        visited = visited + ['TimestampRange']
        {
          begin_offset_millis: 1,
          end_offset_millis: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::TimestampRange.new
        data = {}
        data['BeginOffsetMillis'] = stub[:begin_offset_millis] unless stub[:begin_offset_millis].nil?
        data['EndOffsetMillis'] = stub[:end_offset_millis] unless stub[:end_offset_millis].nil?
        data
      end
    end

    class TimestampRanges
      def self.default(visited = [])
        return nil if visited.include?('TimestampRanges')
        visited = visited + ['TimestampRanges']
        [
          TimestampRange.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << TimestampRange.stub(element) unless element.nil?
        end
        data
      end
    end

    class Transcript
      def self.default(visited = [])
        return nil if visited.include?('Transcript')
        visited = visited + ['Transcript']
        {
          results: ResultList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Transcript.new
        data = {}
        data['Results'] = ResultList.stub(stub[:results]) unless stub[:results].nil?
        data
      end
    end

    class TranscriptEvent
      def self.default(visited = [])
        return nil if visited.include?('TranscriptEvent')
        visited = visited + ['TranscriptEvent']
        {
          transcript: Transcript.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TranscriptEvent.new
        data = {}
        data['Transcript'] = Transcript.stub(stub[:transcript]) unless stub[:transcript].nil?
        data
      end
    end

    class TranscriptResultStream
      def self.default(visited = [])
        return nil if visited.include?('TranscriptResultStream')
        visited = visited + ['TranscriptResultStream']
        {
          transcript_event: TranscriptEvent.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::TranscriptResultStream::TranscriptEvent
          data['TranscriptEvent'] = (TranscriptEvent.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::TranscriptResultStream::BadRequestException
          data['BadRequestException'] = (BadRequestException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::TranscriptResultStream::LimitExceededException
          data['LimitExceededException'] = (LimitExceededException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::TranscriptResultStream::InternalFailureException
          data['InternalFailureException'] = (InternalFailureException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::TranscriptResultStream::ConflictException
          data['ConflictException'] = (ConflictException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::TranscriptResultStream::ServiceUnavailableException
          data['ServiceUnavailableException'] = (ServiceUnavailableException.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::TranscriptResultStream"
        end

        data
      end
    end

    class UtteranceEvent
      def self.default(visited = [])
        return nil if visited.include?('UtteranceEvent')
        visited = visited + ['UtteranceEvent']
        {
          utterance_id: 'utterance_id',
          is_partial: false,
          participant_role: 'participant_role',
          begin_offset_millis: 1,
          end_offset_millis: 1,
          transcript: 'transcript',
          items: CallAnalyticsItemList.default(visited),
          entities: CallAnalyticsEntityList.default(visited),
          sentiment: 'sentiment',
          issues_detected: IssuesDetected.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UtteranceEvent.new
        data = {}
        data['UtteranceId'] = stub[:utterance_id] unless stub[:utterance_id].nil?
        data['IsPartial'] = stub[:is_partial] unless stub[:is_partial].nil?
        data['ParticipantRole'] = stub[:participant_role] unless stub[:participant_role].nil?
        data['BeginOffsetMillis'] = stub[:begin_offset_millis] unless stub[:begin_offset_millis].nil?
        data['EndOffsetMillis'] = stub[:end_offset_millis] unless stub[:end_offset_millis].nil?
        data['Transcript'] = stub[:transcript] unless stub[:transcript].nil?
        data['Items'] = CallAnalyticsItemList.stub(stub[:items]) unless stub[:items].nil?
        data['Entities'] = CallAnalyticsEntityList.stub(stub[:entities]) unless stub[:entities].nil?
        data['Sentiment'] = stub[:sentiment] unless stub[:sentiment].nil?
        data['IssuesDetected'] = IssuesDetected.stub(stub[:issues_detected]) unless stub[:issues_detected].nil?
        data
      end
    end
  end
end
