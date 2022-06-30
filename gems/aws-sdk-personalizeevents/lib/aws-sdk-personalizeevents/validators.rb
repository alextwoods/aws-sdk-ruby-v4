# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::PersonalizeEvents
  module Validators

    class Event
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Event, context: context)
        Hearth::Validator.validate!(input[:event_id], ::String, context: "#{context}[:event_id]")
        Hearth::Validator.validate!(input[:event_type], ::String, context: "#{context}[:event_type]")
        Hearth::Validator.validate!(input[:event_value], ::Float, context: "#{context}[:event_value]")
        Hearth::Validator.validate!(input[:item_id], ::String, context: "#{context}[:item_id]")
        Hearth::Validator.validate!(input[:properties], ::String, context: "#{context}[:properties]")
        Hearth::Validator.validate!(input[:sent_at], ::Time, context: "#{context}[:sent_at]")
        Hearth::Validator.validate!(input[:recommendation_id], ::String, context: "#{context}[:recommendation_id]")
        Validators::Impression.validate!(input[:impression], context: "#{context}[:impression]") unless input[:impression].nil?
      end
    end

    class EventList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Event.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Impression
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InvalidInputException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidInputException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Item
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Item, context: context)
        Hearth::Validator.validate!(input[:item_id], ::String, context: "#{context}[:item_id]")
        Hearth::Validator.validate!(input[:properties], ::String, context: "#{context}[:properties]")
      end
    end

    class ItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Item.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEventsInput, context: context)
        Hearth::Validator.validate!(input[:tracking_id], ::String, context: "#{context}[:tracking_id]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Validators::EventList.validate!(input[:event_list], context: "#{context}[:event_list]") unless input[:event_list].nil?
      end
    end

    class PutEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEventsOutput, context: context)
      end
    end

    class PutItemsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutItemsInput, context: context)
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
        Validators::ItemList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class PutItemsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutItemsOutput, context: context)
      end
    end

    class PutUsersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutUsersInput, context: context)
        Hearth::Validator.validate!(input[:dataset_arn], ::String, context: "#{context}[:dataset_arn]")
        Validators::UserList.validate!(input[:users], context: "#{context}[:users]") unless input[:users].nil?
      end
    end

    class PutUsersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutUsersOutput, context: context)
      end
    end

    class ResourceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class User
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::User, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:properties], ::String, context: "#{context}[:properties]")
      end
    end

    class UserList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::User.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
