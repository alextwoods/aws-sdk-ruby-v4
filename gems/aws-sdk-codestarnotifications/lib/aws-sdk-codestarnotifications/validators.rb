# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::CodestarNotifications
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConcurrentModificationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentModificationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConfigurationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigurationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateNotificationRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNotificationRuleInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        EventTypeIds.validate!(input[:event_type_ids], context: "#{context}[:event_type_ids]") unless input[:event_type_ids].nil?
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
        Targets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:detail_type], ::String, context: "#{context}[:detail_type]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class CreateNotificationRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNotificationRuleOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeleteNotificationRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNotificationRuleInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeleteNotificationRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNotificationRuleOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DeleteTargetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTargetInput, context: context)
        Hearth::Validator.validate!(input[:target_address], ::String, context: "#{context}[:target_address]")
        Hearth::Validator.validate!(input[:force_unsubscribe_all], ::TrueClass, ::FalseClass, context: "#{context}[:force_unsubscribe_all]")
      end
    end

    class DeleteTargetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTargetOutput, context: context)
      end
    end

    class DescribeNotificationRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNotificationRuleInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class DescribeNotificationRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeNotificationRuleOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        EventTypeBatch.validate!(input[:event_types], context: "#{context}[:event_types]") unless input[:event_types].nil?
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
        TargetsBatch.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:detail_type], ::String, context: "#{context}[:detail_type]")
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:last_modified_timestamp], ::Time, context: "#{context}[:last_modified_timestamp]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class EventTypeBatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EventTypeSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EventTypeIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EventTypeSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventTypeSummary, context: context)
        Hearth::Validator.validate!(input[:event_type_id], ::String, context: "#{context}[:event_type_id]")
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:event_type_name], ::String, context: "#{context}[:event_type_name]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class InvalidNextTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNextTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListEventTypesFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEventTypesFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ListEventTypesFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ListEventTypesFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListEventTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEventTypesInput, context: context)
        ListEventTypesFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListEventTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEventTypesOutput, context: context)
        EventTypeBatch.validate!(input[:event_types], context: "#{context}[:event_types]") unless input[:event_types].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListNotificationRulesFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNotificationRulesFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ListNotificationRulesFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ListNotificationRulesFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListNotificationRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNotificationRulesInput, context: context)
        ListNotificationRulesFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListNotificationRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNotificationRulesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        NotificationRuleBatch.validate!(input[:notification_rules], context: "#{context}[:notification_rules]") unless input[:notification_rules].nil?
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListTargetsFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTargetsFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ListTargetsFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ListTargetsFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListTargetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTargetsInput, context: context)
        ListTargetsFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTargetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTargetsOutput, context: context)
        TargetsBatch.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class NotificationRuleBatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NotificationRuleSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NotificationRuleSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotificationRuleSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class ResourceAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SubscribeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubscribeInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Target.validate!(input[:target], context: "#{context}[:target]") unless input[:target].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class SubscribeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubscribeOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class TagKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Target
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Target, context: context)
        Hearth::Validator.validate!(input[:target_type], ::String, context: "#{context}[:target_type]")
        Hearth::Validator.validate!(input[:target_address], ::String, context: "#{context}[:target_address]")
      end
    end

    class TargetSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetSummary, context: context)
        Hearth::Validator.validate!(input[:target_address], ::String, context: "#{context}[:target_address]")
        Hearth::Validator.validate!(input[:target_type], ::String, context: "#{context}[:target_type]")
        Hearth::Validator.validate!(input[:target_status], ::String, context: "#{context}[:target_status]")
      end
    end

    class Targets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Target.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TargetsBatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TargetSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UnsubscribeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsubscribeInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:target_address], ::String, context: "#{context}[:target_address]")
      end
    end

    class UnsubscribeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsubscribeOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        TagKeys.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateNotificationRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNotificationRuleInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        EventTypeIds.validate!(input[:event_type_ids], context: "#{context}[:event_type_ids]") unless input[:event_type_ids].nil?
        Targets.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:detail_type], ::String, context: "#{context}[:detail_type]")
      end
    end

    class UpdateNotificationRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNotificationRuleOutput, context: context)
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
