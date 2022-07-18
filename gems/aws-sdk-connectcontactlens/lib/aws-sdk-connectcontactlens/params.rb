# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ConnectContactLens
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module Categories
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Categories, context: context)
        type = Types::Categories.new
        type.matched_categories = MatchedCategories.build(params[:matched_categories], context: "#{context}[:matched_categories]") unless params[:matched_categories].nil?
        type.matched_details = MatchedDetails.build(params[:matched_details], context: "#{context}[:matched_details]") unless params[:matched_details].nil?
        type
      end
    end

    module CategoryDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CategoryDetails, context: context)
        type = Types::CategoryDetails.new
        type.points_of_interest = PointsOfInterest.build(params[:points_of_interest], context: "#{context}[:points_of_interest]") unless params[:points_of_interest].nil?
        type
      end
    end

    module CharacterOffsets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CharacterOffsets, context: context)
        type = Types::CharacterOffsets.new
        type.begin_offset_char = params[:begin_offset_char]
        type.end_offset_char = params[:end_offset_char]
        type
      end
    end

    module InternalServiceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServiceException, context: context)
        type = Types::InternalServiceException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.message = params[:message]
        type
      end
    end

    module IssueDetected
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IssueDetected, context: context)
        type = Types::IssueDetected.new
        type.character_offsets = CharacterOffsets.build(params[:character_offsets], context: "#{context}[:character_offsets]") unless params[:character_offsets].nil?
        type
      end
    end

    module IssuesDetected
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IssueDetected.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListRealtimeContactAnalysisSegmentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRealtimeContactAnalysisSegmentsInput, context: context)
        type = Types::ListRealtimeContactAnalysisSegmentsInput.new
        type.instance_id = params[:instance_id]
        type.contact_id = params[:contact_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRealtimeContactAnalysisSegmentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRealtimeContactAnalysisSegmentsOutput, context: context)
        type = Types::ListRealtimeContactAnalysisSegmentsOutput.new
        type.segments = RealtimeContactAnalysisSegments.build(params[:segments], context: "#{context}[:segments]") unless params[:segments].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module MatchedCategories
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MatchedDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = CategoryDetails.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module PointOfInterest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PointOfInterest, context: context)
        type = Types::PointOfInterest.new
        type.begin_offset_millis = params[:begin_offset_millis]
        type.end_offset_millis = params[:end_offset_millis]
        type
      end
    end

    module PointsOfInterest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PointOfInterest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RealtimeContactAnalysisSegment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RealtimeContactAnalysisSegment, context: context)
        type = Types::RealtimeContactAnalysisSegment.new
        type.transcript = Transcript.build(params[:transcript], context: "#{context}[:transcript]") unless params[:transcript].nil?
        type.categories = Categories.build(params[:categories], context: "#{context}[:categories]") unless params[:categories].nil?
        type
      end
    end

    module RealtimeContactAnalysisSegments
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RealtimeContactAnalysisSegment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module Transcript
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Transcript, context: context)
        type = Types::Transcript.new
        type.id = params[:id]
        type.participant_id = params[:participant_id]
        type.participant_role = params[:participant_role]
        type.content = params[:content]
        type.begin_offset_millis = params[:begin_offset_millis]
        type.end_offset_millis = params[:end_offset_millis]
        type.sentiment = params[:sentiment]
        type.issues_detected = IssuesDetected.build(params[:issues_detected], context: "#{context}[:issues_detected]") unless params[:issues_detected].nil?
        type
      end
    end

  end
end
