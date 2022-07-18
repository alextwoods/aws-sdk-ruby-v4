# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ConnectContactLens
  module Stubs

    # Operation Stubber for ListRealtimeContactAnalysisSegments
    class ListRealtimeContactAnalysisSegments
      def self.default(visited=[])
        {
          segments: RealtimeContactAnalysisSegments.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Segments'] = Stubs::RealtimeContactAnalysisSegments.stub(stub[:segments]) unless stub[:segments].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RealtimeContactAnalysisSegments
    class RealtimeContactAnalysisSegments
      def self.default(visited=[])
        return nil if visited.include?('RealtimeContactAnalysisSegments')
        visited = visited + ['RealtimeContactAnalysisSegments']
        [
          RealtimeContactAnalysisSegment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RealtimeContactAnalysisSegment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RealtimeContactAnalysisSegment
    class RealtimeContactAnalysisSegment
      def self.default(visited=[])
        return nil if visited.include?('RealtimeContactAnalysisSegment')
        visited = visited + ['RealtimeContactAnalysisSegment']
        {
          transcript: Transcript.default(visited),
          categories: Categories.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RealtimeContactAnalysisSegment.new
        data = {}
        data['Transcript'] = Stubs::Transcript.stub(stub[:transcript]) unless stub[:transcript].nil?
        data['Categories'] = Stubs::Categories.stub(stub[:categories]) unless stub[:categories].nil?
        data
      end
    end

    # Structure Stubber for Categories
    class Categories
      def self.default(visited=[])
        return nil if visited.include?('Categories')
        visited = visited + ['Categories']
        {
          matched_categories: MatchedCategories.default(visited),
          matched_details: MatchedDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Categories.new
        data = {}
        data['MatchedCategories'] = Stubs::MatchedCategories.stub(stub[:matched_categories]) unless stub[:matched_categories].nil?
        data['MatchedDetails'] = Stubs::MatchedDetails.stub(stub[:matched_details]) unless stub[:matched_details].nil?
        data
      end
    end

    # Map Stubber for MatchedDetails
    class MatchedDetails
      def self.default(visited=[])
        return nil if visited.include?('MatchedDetails')
        visited = visited + ['MatchedDetails']
        {
          test_key: CategoryDetails.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::CategoryDetails.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for CategoryDetails
    class CategoryDetails
      def self.default(visited=[])
        return nil if visited.include?('CategoryDetails')
        visited = visited + ['CategoryDetails']
        {
          points_of_interest: PointsOfInterest.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CategoryDetails.new
        data = {}
        data['PointsOfInterest'] = Stubs::PointsOfInterest.stub(stub[:points_of_interest]) unless stub[:points_of_interest].nil?
        data
      end
    end

    # List Stubber for PointsOfInterest
    class PointsOfInterest
      def self.default(visited=[])
        return nil if visited.include?('PointsOfInterest')
        visited = visited + ['PointsOfInterest']
        [
          PointOfInterest.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PointOfInterest.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PointOfInterest
    class PointOfInterest
      def self.default(visited=[])
        return nil if visited.include?('PointOfInterest')
        visited = visited + ['PointOfInterest']
        {
          begin_offset_millis: 1,
          end_offset_millis: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::PointOfInterest.new
        data = {}
        data['BeginOffsetMillis'] = stub[:begin_offset_millis] unless stub[:begin_offset_millis].nil?
        data['EndOffsetMillis'] = stub[:end_offset_millis] unless stub[:end_offset_millis].nil?
        data
      end
    end

    # List Stubber for MatchedCategories
    class MatchedCategories
      def self.default(visited=[])
        return nil if visited.include?('MatchedCategories')
        visited = visited + ['MatchedCategories']
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
          id: 'id',
          participant_id: 'participant_id',
          participant_role: 'participant_role',
          content: 'content',
          begin_offset_millis: 1,
          end_offset_millis: 1,
          sentiment: 'sentiment',
          issues_detected: IssuesDetected.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Transcript.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['ParticipantId'] = stub[:participant_id] unless stub[:participant_id].nil?
        data['ParticipantRole'] = stub[:participant_role] unless stub[:participant_role].nil?
        data['Content'] = stub[:content] unless stub[:content].nil?
        data['BeginOffsetMillis'] = stub[:begin_offset_millis] unless stub[:begin_offset_millis].nil?
        data['EndOffsetMillis'] = stub[:end_offset_millis] unless stub[:end_offset_millis].nil?
        data['Sentiment'] = stub[:sentiment] unless stub[:sentiment].nil?
        data['IssuesDetected'] = Stubs::IssuesDetected.stub(stub[:issues_detected]) unless stub[:issues_detected].nil?
        data
      end
    end

    # List Stubber for IssuesDetected
    class IssuesDetected
      def self.default(visited=[])
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
          data << Stubs::IssueDetected.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IssueDetected
    class IssueDetected
      def self.default(visited=[])
        return nil if visited.include?('IssueDetected')
        visited = visited + ['IssueDetected']
        {
          character_offsets: CharacterOffsets.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::IssueDetected.new
        data = {}
        data['CharacterOffsets'] = Stubs::CharacterOffsets.stub(stub[:character_offsets]) unless stub[:character_offsets].nil?
        data
      end
    end

    # Structure Stubber for CharacterOffsets
    class CharacterOffsets
      def self.default(visited=[])
        return nil if visited.include?('CharacterOffsets')
        visited = visited + ['CharacterOffsets']
        {
          begin_offset_char: 1,
          end_offset_char: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::CharacterOffsets.new
        data = {}
        data['BeginOffsetChar'] = stub[:begin_offset_char] unless stub[:begin_offset_char].nil?
        data['EndOffsetChar'] = stub[:end_offset_char] unless stub[:end_offset_char].nil?
        data
      end
    end
  end
end
