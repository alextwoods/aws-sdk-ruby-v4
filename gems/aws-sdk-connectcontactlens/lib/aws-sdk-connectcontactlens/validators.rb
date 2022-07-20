# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ConnectContactLens
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Categories
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Categories, context: context)
        MatchedCategories.validate!(input[:matched_categories], context: "#{context}[:matched_categories]") unless input[:matched_categories].nil?
        MatchedDetails.validate!(input[:matched_details], context: "#{context}[:matched_details]") unless input[:matched_details].nil?
      end
    end

    class CategoryDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CategoryDetails, context: context)
        PointsOfInterest.validate!(input[:points_of_interest], context: "#{context}[:points_of_interest]") unless input[:points_of_interest].nil?
      end
    end

    class CharacterOffsets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CharacterOffsets, context: context)
        Hearth::Validator.validate!(input[:begin_offset_char], ::Integer, context: "#{context}[:begin_offset_char]")
        Hearth::Validator.validate!(input[:end_offset_char], ::Integer, context: "#{context}[:end_offset_char]")
      end
    end

    class InternalServiceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServiceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IssueDetected
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IssueDetected, context: context)
        CharacterOffsets.validate!(input[:character_offsets], context: "#{context}[:character_offsets]") unless input[:character_offsets].nil?
      end
    end

    class IssuesDetected
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          IssueDetected.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListRealtimeContactAnalysisSegmentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRealtimeContactAnalysisSegmentsInput, context: context)
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:contact_id], ::String, context: "#{context}[:contact_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRealtimeContactAnalysisSegmentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRealtimeContactAnalysisSegmentsOutput, context: context)
        RealtimeContactAnalysisSegments.validate!(input[:segments], context: "#{context}[:segments]") unless input[:segments].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class MatchedCategories
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MatchedDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          CategoryDetails.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class PointOfInterest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PointOfInterest, context: context)
        Hearth::Validator.validate!(input[:begin_offset_millis], ::Integer, context: "#{context}[:begin_offset_millis]")
        Hearth::Validator.validate!(input[:end_offset_millis], ::Integer, context: "#{context}[:end_offset_millis]")
      end
    end

    class PointsOfInterest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PointOfInterest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RealtimeContactAnalysisSegment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RealtimeContactAnalysisSegment, context: context)
        Transcript.validate!(input[:transcript], context: "#{context}[:transcript]") unless input[:transcript].nil?
        Categories.validate!(input[:categories], context: "#{context}[:categories]") unless input[:categories].nil?
      end
    end

    class RealtimeContactAnalysisSegments
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RealtimeContactAnalysisSegment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Transcript
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Transcript, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:participant_id], ::String, context: "#{context}[:participant_id]")
        Hearth::Validator.validate!(input[:participant_role], ::String, context: "#{context}[:participant_role]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:begin_offset_millis], ::Integer, context: "#{context}[:begin_offset_millis]")
        Hearth::Validator.validate!(input[:end_offset_millis], ::Integer, context: "#{context}[:end_offset_millis]")
        Hearth::Validator.validate!(input[:sentiment], ::String, context: "#{context}[:sentiment]")
        IssuesDetected.validate!(input[:issues_detected], context: "#{context}[:issues_detected]") unless input[:issues_detected].nil?
      end
    end

  end
end
