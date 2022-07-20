# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ConnectContactLens
  module Parsers

    # Operation Parser for ListRealtimeContactAnalysisSegments
    class ListRealtimeContactAnalysisSegments
      def self.parse(http_resp)
        data = Types::ListRealtimeContactAnalysisSegmentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.segments = (RealtimeContactAnalysisSegments.parse(map['Segments']) unless map['Segments'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class RealtimeContactAnalysisSegments
      def self.parse(list)
        data = []
        list.map do |value|
          data << RealtimeContactAnalysisSegment.parse(value) unless value.nil?
        end
        data
      end
    end

    class RealtimeContactAnalysisSegment
      def self.parse(map)
        data = Types::RealtimeContactAnalysisSegment.new
        data.transcript = (Transcript.parse(map['Transcript']) unless map['Transcript'].nil?)
        data.categories = (Categories.parse(map['Categories']) unless map['Categories'].nil?)
        return data
      end
    end

    class Categories
      def self.parse(map)
        data = Types::Categories.new
        data.matched_categories = (MatchedCategories.parse(map['MatchedCategories']) unless map['MatchedCategories'].nil?)
        data.matched_details = (MatchedDetails.parse(map['MatchedDetails']) unless map['MatchedDetails'].nil?)
        return data
      end
    end

    class MatchedDetails
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = CategoryDetails.parse(value) unless value.nil?
        end
        data
      end
    end

    class CategoryDetails
      def self.parse(map)
        data = Types::CategoryDetails.new
        data.points_of_interest = (PointsOfInterest.parse(map['PointsOfInterest']) unless map['PointsOfInterest'].nil?)
        return data
      end
    end

    class PointsOfInterest
      def self.parse(list)
        data = []
        list.map do |value|
          data << PointOfInterest.parse(value) unless value.nil?
        end
        data
      end
    end

    class PointOfInterest
      def self.parse(map)
        data = Types::PointOfInterest.new
        data.begin_offset_millis = map['BeginOffsetMillis']
        data.end_offset_millis = map['EndOffsetMillis']
        return data
      end
    end

    class MatchedCategories
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class Transcript
      def self.parse(map)
        data = Types::Transcript.new
        data.id = map['Id']
        data.participant_id = map['ParticipantId']
        data.participant_role = map['ParticipantRole']
        data.content = map['Content']
        data.begin_offset_millis = map['BeginOffsetMillis']
        data.end_offset_millis = map['EndOffsetMillis']
        data.sentiment = map['Sentiment']
        data.issues_detected = (IssuesDetected.parse(map['IssuesDetected']) unless map['IssuesDetected'].nil?)
        return data
      end
    end

    class IssuesDetected
      def self.parse(list)
        data = []
        list.map do |value|
          data << IssueDetected.parse(value) unless value.nil?
        end
        data
      end
    end

    class IssueDetected
      def self.parse(map)
        data = Types::IssueDetected.new
        data.character_offsets = (CharacterOffsets.parse(map['CharacterOffsets']) unless map['CharacterOffsets'].nil?)
        return data
      end
    end

    class CharacterOffsets
      def self.parse(map)
        data = Types::CharacterOffsets.new
        data.begin_offset_char = map['BeginOffsetChar']
        data.end_offset_char = map['EndOffsetChar']
        return data
      end
    end

    # Error Parser for InternalServiceException
    class InternalServiceException
      def self.parse(http_resp)
        data = Types::InternalServiceException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end
  end
end
