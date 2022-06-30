# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::PersonalizeEvents
  module Params

    module Event
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Event, context: context)
        type = Types::Event.new
        type.event_id = params[:event_id]
        type.event_type = params[:event_type]
        type.event_value = params[:event_value]
        type.item_id = params[:item_id]
        type.properties = params[:properties]
        type.sent_at = params[:sent_at]
        type.recommendation_id = params[:recommendation_id]
        type.impression = Impression.build(params[:impression], context: "#{context}[:impression]") unless params[:impression].nil?
        type
      end
    end

    module EventList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Event.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Impression
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InvalidInputException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidInputException, context: context)
        type = Types::InvalidInputException.new
        type.message = params[:message]
        type
      end
    end

    module Item
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Item, context: context)
        type = Types::Item.new
        type.item_id = params[:item_id]
        type.properties = params[:properties]
        type
      end
    end

    module ItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Item.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEventsInput, context: context)
        type = Types::PutEventsInput.new
        type.tracking_id = params[:tracking_id]
        type.user_id = params[:user_id]
        type.session_id = params[:session_id]
        type.event_list = EventList.build(params[:event_list], context: "#{context}[:event_list]") unless params[:event_list].nil?
        type
      end
    end

    module PutEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEventsOutput, context: context)
        type = Types::PutEventsOutput.new
        type
      end
    end

    module PutItemsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutItemsInput, context: context)
        type = Types::PutItemsInput.new
        type.dataset_arn = params[:dataset_arn]
        type.items = ItemList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module PutItemsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutItemsOutput, context: context)
        type = Types::PutItemsOutput.new
        type
      end
    end

    module PutUsersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutUsersInput, context: context)
        type = Types::PutUsersInput.new
        type.dataset_arn = params[:dataset_arn]
        type.users = UserList.build(params[:users], context: "#{context}[:users]") unless params[:users].nil?
        type
      end
    end

    module PutUsersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutUsersOutput, context: context)
        type = Types::PutUsersOutput.new
        type
      end
    end

    module ResourceInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInUseException, context: context)
        type = Types::ResourceInUseException.new
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

    module User
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::User, context: context)
        type = Types::User.new
        type.user_id = params[:user_id]
        type.properties = params[:properties]
        type
      end
    end

    module UserList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << User.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
