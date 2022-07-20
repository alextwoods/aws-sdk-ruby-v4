# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ConnectContactLens
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides the category rules that are used to automatically categorize contacts based on
    #       uttered keywords and phrases.</p>
    #
    # @!attribute matched_categories
    #   <p>The category rules that have been matched in the analyzed segment.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute matched_details
    #   <p>The category rule that was matched and when it occurred in the transcript.</p>
    #
    #   @return [Hash<String, CategoryDetails>]
    #
    Categories = ::Struct.new(
      :matched_categories,
      :matched_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about the category rule that was matched.</p>
    #
    # @!attribute points_of_interest
    #   <p>The section of audio where the category rule was detected.</p>
    #
    #   @return [Array<PointOfInterest>]
    #
    CategoryDetails = ::Struct.new(
      :points_of_interest,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For characters that were detected as issues, where they occur in the transcript.</p>
    #
    # @!attribute begin_offset_char
    #   <p>The beginning of the issue.</p>
    #
    #   @return [Integer]
    #
    # @!attribute end_offset_char
    #   <p>The end of the issue.</p>
    #
    #   @return [Integer]
    #
    CharacterOffsets = ::Struct.new(
      :begin_offset_char,
      :end_offset_char,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.begin_offset_char ||= 0
        self.end_offset_char ||= 0
      end
    end

    # <p>Request processing failed due to an error or failure with the service.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServiceException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Potential issues that are detected based on an artificial intelligence analysis of each
    #       turn in the conversation.</p>
    #
    # @!attribute character_offsets
    #   <p>The offset for when the issue was detected in the segment.</p>
    #
    #   @return [CharacterOffsets]
    #
    IssueDetected = ::Struct.new(
      :character_offsets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute instance_id
    #   <p>The identifier of the Amazon Connect instance.</p>
    #
    #   @return [String]
    #
    # @!attribute contact_id
    #   <p>The identifier of the contact.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximimum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    ListRealtimeContactAnalysisSegmentsInput = ::Struct.new(
      :instance_id,
      :contact_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute segments
    #   <p>An analyzed transcript or category.</p>
    #
    #   @return [Array<RealtimeContactAnalysisSegment>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results. If response includes <code>nextToken</code> there are two possible scenarios:</p>
    #            <ul>
    #               <li>
    #                  <p>There are more segments so another call is required to get them.</p>
    #               </li>
    #               <li>
    #                  <p>There are no more segments at this time, but more may be available later (real-time
    #             analysis is in progress) so the client should call the operation again to get new
    #             segments.</p>
    #               </li>
    #            </ul>
    #            <p>If response does not include <code>nextToken</code>, the analysis is completed (successfully or failed) and there are no more segments to retrieve.</p>
    #
    #   @return [String]
    #
    ListRealtimeContactAnalysisSegmentsOutput = ::Struct.new(
      :segments,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The section of the contact audio where that category rule was detected.</p>
    #
    # @!attribute begin_offset_millis
    #   <p>The beginning offset in milliseconds where the category rule was detected.</p>
    #
    #   @return [Integer]
    #
    # @!attribute end_offset_millis
    #   <p>The ending offset in milliseconds where the category rule was detected.</p>
    #
    #   @return [Integer]
    #
    PointOfInterest = ::Struct.new(
      :begin_offset_millis,
      :end_offset_millis,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.begin_offset_millis ||= 0
        self.end_offset_millis ||= 0
      end
    end

    # <p>An analyzed segment for a real-time analysis session.</p>
    #
    # @!attribute transcript
    #   <p>The analyzed transcript.</p>
    #
    #   @return [Transcript]
    #
    # @!attribute categories
    #   <p>The matched category rules.</p>
    #
    #   @return [Categories]
    #
    RealtimeContactAnalysisSegment = ::Struct.new(
      :transcript,
      :categories,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource was not found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SentimentValue
    #
    module SentimentValue
      # No documentation available.
      #
      POSITIVE = "POSITIVE"

      # No documentation available.
      #
      NEUTRAL = "NEUTRAL"

      # No documentation available.
      #
      NEGATIVE = "NEGATIVE"
    end

    # <p>The throttling limit has been exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of messages in the session.</p>
    #
    # @!attribute id
    #   <p>The identifier of the transcript.</p>
    #
    #   @return [String]
    #
    # @!attribute participant_id
    #   <p>The identifier of the participant.</p>
    #
    #   @return [String]
    #
    # @!attribute participant_role
    #   <p>The role of participant. For example, is it a customer, agent, or system.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The content of the transcript.</p>
    #
    #   @return [String]
    #
    # @!attribute begin_offset_millis
    #   <p>The beginning offset in the contact for this transcript.</p>
    #
    #   @return [Integer]
    #
    # @!attribute end_offset_millis
    #   <p>The end offset in the contact for this transcript.</p>
    #
    #   @return [Integer]
    #
    # @!attribute sentiment
    #   <p>The sentiment of the detected for this piece of transcript.</p>
    #
    #   Enum, one of: ["POSITIVE", "NEUTRAL", "NEGATIVE"]
    #
    #   @return [String]
    #
    # @!attribute issues_detected
    #   <p>List of positions where issues were detected on the transcript.</p>
    #
    #   @return [Array<IssueDetected>]
    #
    Transcript = ::Struct.new(
      :id,
      :participant_id,
      :participant_role,
      :content,
      :begin_offset_millis,
      :end_offset_millis,
      :sentiment,
      :issues_detected,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.begin_offset_millis ||= 0
        self.end_offset_millis ||= 0
      end
    end

  end
end
