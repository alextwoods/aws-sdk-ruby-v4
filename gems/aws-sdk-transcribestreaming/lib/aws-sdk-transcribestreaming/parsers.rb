# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::TranscribeStreaming
  # @api private
  module Parsers

    module EventStream

      class BadRequestException
        def self.parse(message)
          data = Types::BadRequestException.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.message = map['Message']
          data
        end
      end

      class CategoryEvent
        def self.parse(message)
          data = Types::CategoryEvent.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.matched_categories = (StringList.parse(map['MatchedCategories']) unless map['MatchedCategories'].nil?)
          data.matched_details = (MatchedCategoryDetails.parse(map['MatchedDetails']) unless map['MatchedDetails'].nil?)
          data
        end
      end

      class ConflictException
        def self.parse(message)
          data = Types::ConflictException.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.message = map['Message']
          data
        end
      end

      class InternalFailureException
        def self.parse(message)
          data = Types::InternalFailureException.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.message = map['Message']
          data
        end
      end

      class LimitExceededException
        def self.parse(message)
          data = Types::LimitExceededException.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.message = map['Message']
          data
        end
      end

      class MedicalTranscriptEvent
        def self.parse(message)
          data = Types::MedicalTranscriptEvent.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.transcript = (MedicalTranscript.parse(map['Transcript']) unless map['Transcript'].nil?)
          data
        end
      end

      class ServiceUnavailableException
        def self.parse(message)
          data = Types::ServiceUnavailableException.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.message = map['Message']
          data
        end
      end

      class TranscriptEvent
        def self.parse(message)
          data = Types::TranscriptEvent.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.transcript = (Transcript.parse(map['Transcript']) unless map['Transcript'].nil?)
          data
        end
      end

      class UtteranceEvent
        def self.parse(message)
          data = Types::UtteranceEvent.new
          payload = message.payload.read
          return data if payload.empty?
          map = Hearth::JSON.parse(payload)
          data.utterance_id = map['UtteranceId']
          data.is_partial = map['IsPartial']
          data.participant_role = map['ParticipantRole']
          data.begin_offset_millis = map['BeginOffsetMillis']
          data.end_offset_millis = map['EndOffsetMillis']
          data.transcript = map['Transcript']
          data.items = (CallAnalyticsItemList.parse(map['Items']) unless map['Items'].nil?)
          data.entities = (CallAnalyticsEntityList.parse(map['Entities']) unless map['Entities'].nil?)
          data.sentiment = map['Sentiment']
          data.issues_detected = (IssuesDetected.parse(map['IssuesDetected']) unless map['IssuesDetected'].nil?)
          data
        end
      end
    end
  end
end
