# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::CodestarNotifications
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module ConcurrentModificationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConcurrentModificationException, context: context)
        type = Types::ConcurrentModificationException.new
        type.message = params[:message]
        type
      end
    end

    module ConfigurationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigurationException, context: context)
        type = Types::ConfigurationException.new
        type.message = params[:message]
        type
      end
    end

    module CreateNotificationRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNotificationRuleInput, context: context)
        type = Types::CreateNotificationRuleInput.new
        type.name = params[:name]
        type.event_type_ids = EventTypeIds.build(params[:event_type_ids], context: "#{context}[:event_type_ids]") unless params[:event_type_ids].nil?
        type.resource = params[:resource]
        type.targets = Targets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.detail_type = params[:detail_type]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.status = params[:status]
        type
      end
    end

    module CreateNotificationRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNotificationRuleOutput, context: context)
        type = Types::CreateNotificationRuleOutput.new
        type.arn = params[:arn]
        type
      end
    end

    module DeleteNotificationRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNotificationRuleInput, context: context)
        type = Types::DeleteNotificationRuleInput.new
        type.arn = params[:arn]
        type
      end
    end

    module DeleteNotificationRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNotificationRuleOutput, context: context)
        type = Types::DeleteNotificationRuleOutput.new
        type.arn = params[:arn]
        type
      end
    end

    module DeleteTargetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTargetInput, context: context)
        type = Types::DeleteTargetInput.new
        type.target_address = params[:target_address]
        type.force_unsubscribe_all = params[:force_unsubscribe_all]
        type
      end
    end

    module DeleteTargetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTargetOutput, context: context)
        type = Types::DeleteTargetOutput.new
        type
      end
    end

    module DescribeNotificationRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNotificationRuleInput, context: context)
        type = Types::DescribeNotificationRuleInput.new
        type.arn = params[:arn]
        type
      end
    end

    module DescribeNotificationRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeNotificationRuleOutput, context: context)
        type = Types::DescribeNotificationRuleOutput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.event_types = EventTypeBatch.build(params[:event_types], context: "#{context}[:event_types]") unless params[:event_types].nil?
        type.resource = params[:resource]
        type.targets = TargetsBatch.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.detail_type = params[:detail_type]
        type.created_by = params[:created_by]
        type.status = params[:status]
        type.created_timestamp = params[:created_timestamp]
        type.last_modified_timestamp = params[:last_modified_timestamp]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module EventTypeBatch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventTypeSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EventTypeIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EventTypeSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventTypeSummary, context: context)
        type = Types::EventTypeSummary.new
        type.event_type_id = params[:event_type_id]
        type.service_name = params[:service_name]
        type.event_type_name = params[:event_type_name]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module InvalidNextTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNextTokenException, context: context)
        type = Types::InvalidNextTokenException.new
        type.message = params[:message]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListEventTypesFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEventTypesFilter, context: context)
        type = Types::ListEventTypesFilter.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module ListEventTypesFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListEventTypesFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListEventTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEventTypesInput, context: context)
        type = Types::ListEventTypesInput.new
        type.filters = ListEventTypesFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListEventTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEventTypesOutput, context: context)
        type = Types::ListEventTypesOutput.new
        type.event_types = EventTypeBatch.build(params[:event_types], context: "#{context}[:event_types]") unless params[:event_types].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListNotificationRulesFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNotificationRulesFilter, context: context)
        type = Types::ListNotificationRulesFilter.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module ListNotificationRulesFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListNotificationRulesFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListNotificationRulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNotificationRulesInput, context: context)
        type = Types::ListNotificationRulesInput.new
        type.filters = ListNotificationRulesFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListNotificationRulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNotificationRulesOutput, context: context)
        type = Types::ListNotificationRulesOutput.new
        type.next_token = params[:next_token]
        type.notification_rules = NotificationRuleBatch.build(params[:notification_rules], context: "#{context}[:notification_rules]") unless params[:notification_rules].nil?
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.arn = params[:arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListTargetsFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTargetsFilter, context: context)
        type = Types::ListTargetsFilter.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module ListTargetsFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListTargetsFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListTargetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTargetsInput, context: context)
        type = Types::ListTargetsInput.new
        type.filters = ListTargetsFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTargetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTargetsOutput, context: context)
        type = Types::ListTargetsOutput.new
        type.targets = TargetsBatch.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module NotificationRuleBatch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NotificationRuleSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NotificationRuleSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotificationRuleSummary, context: context)
        type = Types::NotificationRuleSummary.new
        type.id = params[:id]
        type.arn = params[:arn]
        type
      end
    end

    module ResourceAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceAlreadyExistsException, context: context)
        type = Types::ResourceAlreadyExistsException.new
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

    module SubscribeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubscribeInput, context: context)
        type = Types::SubscribeInput.new
        type.arn = params[:arn]
        type.target = Target.build(params[:target], context: "#{context}[:target]") unless params[:target].nil?
        type.client_request_token = params[:client_request_token]
        type
      end
    end

    module SubscribeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubscribeOutput, context: context)
        type = Types::SubscribeOutput.new
        type.arn = params[:arn]
        type
      end
    end

    module TagKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.arn = params[:arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Target
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Target, context: context)
        type = Types::Target.new
        type.target_type = params[:target_type]
        type.target_address = params[:target_address]
        type
      end
    end

    module TargetSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetSummary, context: context)
        type = Types::TargetSummary.new
        type.target_address = params[:target_address]
        type.target_type = params[:target_type]
        type.target_status = params[:target_status]
        type
      end
    end

    module Targets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Target.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TargetsBatch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TargetSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UnsubscribeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsubscribeInput, context: context)
        type = Types::UnsubscribeInput.new
        type.arn = params[:arn]
        type.target_address = params[:target_address]
        type
      end
    end

    module UnsubscribeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsubscribeOutput, context: context)
        type = Types::UnsubscribeOutput.new
        type.arn = params[:arn]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.arn = params[:arn]
        type.tag_keys = TagKeys.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateNotificationRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNotificationRuleInput, context: context)
        type = Types::UpdateNotificationRuleInput.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.status = params[:status]
        type.event_type_ids = EventTypeIds.build(params[:event_type_ids], context: "#{context}[:event_type_ids]") unless params[:event_type_ids].nil?
        type.targets = Targets.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.detail_type = params[:detail_type]
        type
      end
    end

    module UpdateNotificationRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNotificationRuleOutput, context: context)
        type = Types::UpdateNotificationRuleOutput.new
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

  end
end
