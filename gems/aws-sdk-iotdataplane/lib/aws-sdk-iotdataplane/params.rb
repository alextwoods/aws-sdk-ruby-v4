# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::IoTDataPlane
  module Params

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module DeleteThingShadowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteThingShadowInput, context: context)
        type = Types::DeleteThingShadowInput.new
        type.thing_name = params[:thing_name]
        type.shadow_name = params[:shadow_name]
        type
      end
    end

    module DeleteThingShadowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteThingShadowOutput, context: context)
        type = Types::DeleteThingShadowOutput.new
        type.payload = params[:payload]
        type
      end
    end

    module GetRetainedMessageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRetainedMessageInput, context: context)
        type = Types::GetRetainedMessageInput.new
        type.topic = params[:topic]
        type
      end
    end

    module GetRetainedMessageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRetainedMessageOutput, context: context)
        type = Types::GetRetainedMessageOutput.new
        type.topic = params[:topic]
        type.payload = params[:payload]
        type.qos = params[:qos]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module GetThingShadowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetThingShadowInput, context: context)
        type = Types::GetThingShadowInput.new
        type.thing_name = params[:thing_name]
        type.shadow_name = params[:shadow_name]
        type
      end
    end

    module GetThingShadowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetThingShadowOutput, context: context)
        type = Types::GetThingShadowOutput.new
        type.payload = params[:payload]
        type
      end
    end

    module InternalFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalFailureException, context: context)
        type = Types::InternalFailureException.new
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

    module ListNamedShadowsForThingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNamedShadowsForThingInput, context: context)
        type = Types::ListNamedShadowsForThingInput.new
        type.thing_name = params[:thing_name]
        type.next_token = params[:next_token]
        type.page_size = params[:page_size]
        type
      end
    end

    module ListNamedShadowsForThingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNamedShadowsForThingOutput, context: context)
        type = Types::ListNamedShadowsForThingOutput.new
        type.results = NamedShadowList.build(params[:results], context: "#{context}[:results]") unless params[:results].nil?
        type.next_token = params[:next_token]
        type.timestamp = params[:timestamp]
        type
      end
    end

    module ListRetainedMessagesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRetainedMessagesInput, context: context)
        type = Types::ListRetainedMessagesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListRetainedMessagesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRetainedMessagesOutput, context: context)
        type = Types::ListRetainedMessagesOutput.new
        type.retained_topics = RetainedMessageList.build(params[:retained_topics], context: "#{context}[:retained_topics]") unless params[:retained_topics].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module MethodNotAllowedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MethodNotAllowedException, context: context)
        type = Types::MethodNotAllowedException.new
        type.message = params[:message]
        type
      end
    end

    module NamedShadowList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PublishInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublishInput, context: context)
        type = Types::PublishInput.new
        type.topic = params[:topic]
        type.qos = params[:qos]
        type.retain = params[:retain]
        type.payload = params[:payload]
        type
      end
    end

    module PublishOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublishOutput, context: context)
        type = Types::PublishOutput.new
        type
      end
    end

    module RequestEntityTooLargeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestEntityTooLargeException, context: context)
        type = Types::RequestEntityTooLargeException.new
        type.message = params[:message]
        type
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

    module RetainedMessageList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RetainedMessageSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RetainedMessageSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetainedMessageSummary, context: context)
        type = Types::RetainedMessageSummary.new
        type.topic = params[:topic]
        type.payload_size = params[:payload_size]
        type.qos = params[:qos]
        type.last_modified_time = params[:last_modified_time]
        type
      end
    end

    module ServiceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableException, context: context)
        type = Types::ServiceUnavailableException.new
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

    module UnauthorizedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnauthorizedException, context: context)
        type = Types::UnauthorizedException.new
        type.message = params[:message]
        type
      end
    end

    module UnsupportedDocumentEncodingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedDocumentEncodingException, context: context)
        type = Types::UnsupportedDocumentEncodingException.new
        type.message = params[:message]
        type
      end
    end

    module UpdateThingShadowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateThingShadowInput, context: context)
        type = Types::UpdateThingShadowInput.new
        type.thing_name = params[:thing_name]
        type.shadow_name = params[:shadow_name]
        type.payload = params[:payload]
        type
      end
    end

    module UpdateThingShadowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateThingShadowOutput, context: context)
        type = Types::UpdateThingShadowOutput.new
        type.payload = params[:payload]
        type
      end
    end

  end
end
