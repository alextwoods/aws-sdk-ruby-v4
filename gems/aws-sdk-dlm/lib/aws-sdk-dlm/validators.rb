# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::DLM
  module Validators

    class Action
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Action, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        CrossRegionCopyActionList.validate!(input[:cross_region_copy], context: "#{context}[:cross_region_copy]") unless input[:cross_region_copy].nil?
      end
    end

    class ActionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Action.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AvailabilityZoneList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CreateLifecyclePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLifecyclePolicyInput, context: context)
        Hearth::Validator.validate!(input[:execution_role_arn], ::String, context: "#{context}[:execution_role_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        PolicyDetails.validate!(input[:policy_details], context: "#{context}[:policy_details]") unless input[:policy_details].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateLifecyclePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLifecyclePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:policy_id], ::String, context: "#{context}[:policy_id]")
      end
    end

    class CreateRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRule, context: context)
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:interval], ::Integer, context: "#{context}[:interval]")
        Hearth::Validator.validate!(input[:interval_unit], ::String, context: "#{context}[:interval_unit]")
        TimesList.validate!(input[:times], context: "#{context}[:times]") unless input[:times].nil?
        Hearth::Validator.validate!(input[:cron_expression], ::String, context: "#{context}[:cron_expression]")
      end
    end

    class CrossRegionCopyAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CrossRegionCopyAction, context: context)
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
        EncryptionConfiguration.validate!(input[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless input[:encryption_configuration].nil?
        CrossRegionCopyRetainRule.validate!(input[:retain_rule], context: "#{context}[:retain_rule]") unless input[:retain_rule].nil?
      end
    end

    class CrossRegionCopyActionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CrossRegionCopyAction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CrossRegionCopyDeprecateRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CrossRegionCopyDeprecateRule, context: context)
        Hearth::Validator.validate!(input[:interval], ::Integer, context: "#{context}[:interval]")
        Hearth::Validator.validate!(input[:interval_unit], ::String, context: "#{context}[:interval_unit]")
      end
    end

    class CrossRegionCopyRetainRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CrossRegionCopyRetainRule, context: context)
        Hearth::Validator.validate!(input[:interval], ::Integer, context: "#{context}[:interval]")
        Hearth::Validator.validate!(input[:interval_unit], ::String, context: "#{context}[:interval_unit]")
      end
    end

    class CrossRegionCopyRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CrossRegionCopyRule, context: context)
        Hearth::Validator.validate!(input[:target_region], ::String, context: "#{context}[:target_region]")
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        Hearth::Validator.validate!(input[:cmk_arn], ::String, context: "#{context}[:cmk_arn]")
        Hearth::Validator.validate!(input[:copy_tags], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags]")
        CrossRegionCopyRetainRule.validate!(input[:retain_rule], context: "#{context}[:retain_rule]") unless input[:retain_rule].nil?
        CrossRegionCopyDeprecateRule.validate!(input[:deprecate_rule], context: "#{context}[:deprecate_rule]") unless input[:deprecate_rule].nil?
      end
    end

    class CrossRegionCopyRules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CrossRegionCopyRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteLifecyclePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLifecyclePolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_id], ::String, context: "#{context}[:policy_id]")
      end
    end

    class DeleteLifecyclePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLifecyclePolicyOutput, context: context)
      end
    end

    class DeprecateRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeprecateRule, context: context)
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:interval], ::Integer, context: "#{context}[:interval]")
        Hearth::Validator.validate!(input[:interval_unit], ::String, context: "#{context}[:interval_unit]")
      end
    end

    class EncryptionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptionConfiguration, context: context)
        Hearth::Validator.validate!(input[:encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:encrypted]")
        Hearth::Validator.validate!(input[:cmk_arn], ::String, context: "#{context}[:cmk_arn]")
      end
    end

    class EventParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventParameters, context: context)
        Hearth::Validator.validate!(input[:event_type], ::String, context: "#{context}[:event_type]")
        SnapshotOwnerList.validate!(input[:snapshot_owner], context: "#{context}[:snapshot_owner]") unless input[:snapshot_owner].nil?
        Hearth::Validator.validate!(input[:description_regex], ::String, context: "#{context}[:description_regex]")
      end
    end

    class EventSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventSource, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        EventParameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class FastRestoreRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FastRestoreRule, context: context)
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:interval], ::Integer, context: "#{context}[:interval]")
        Hearth::Validator.validate!(input[:interval_unit], ::String, context: "#{context}[:interval_unit]")
        AvailabilityZoneList.validate!(input[:availability_zones], context: "#{context}[:availability_zones]") unless input[:availability_zones].nil?
      end
    end

    class GetLifecyclePoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLifecyclePoliciesInput, context: context)
        PolicyIdList.validate!(input[:policy_ids], context: "#{context}[:policy_ids]") unless input[:policy_ids].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        ResourceTypeValuesList.validate!(input[:resource_types], context: "#{context}[:resource_types]") unless input[:resource_types].nil?
        TargetTagsFilterList.validate!(input[:target_tags], context: "#{context}[:target_tags]") unless input[:target_tags].nil?
        TagsToAddFilterList.validate!(input[:tags_to_add], context: "#{context}[:tags_to_add]") unless input[:tags_to_add].nil?
      end
    end

    class GetLifecyclePoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLifecyclePoliciesOutput, context: context)
        LifecyclePolicySummaryList.validate!(input[:policies], context: "#{context}[:policies]") unless input[:policies].nil?
      end
    end

    class GetLifecyclePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLifecyclePolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_id], ::String, context: "#{context}[:policy_id]")
      end
    end

    class GetLifecyclePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLifecyclePolicyOutput, context: context)
        LifecyclePolicy.validate!(input[:policy], context: "#{context}[:policy]") unless input[:policy].nil?
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        ParameterList.validate!(input[:required_parameters], context: "#{context}[:required_parameters]") unless input[:required_parameters].nil?
        ParameterList.validate!(input[:mutually_exclusive_parameters], context: "#{context}[:mutually_exclusive_parameters]") unless input[:mutually_exclusive_parameters].nil?
      end
    end

    class LifecyclePolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifecyclePolicy, context: context)
        Hearth::Validator.validate!(input[:policy_id], ::String, context: "#{context}[:policy_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:execution_role_arn], ::String, context: "#{context}[:execution_role_arn]")
        Hearth::Validator.validate!(input[:date_created], ::Time, context: "#{context}[:date_created]")
        Hearth::Validator.validate!(input[:date_modified], ::Time, context: "#{context}[:date_modified]")
        PolicyDetails.validate!(input[:policy_details], context: "#{context}[:policy_details]") unless input[:policy_details].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:policy_arn], ::String, context: "#{context}[:policy_arn]")
      end
    end

    class LifecyclePolicySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LifecyclePolicySummary, context: context)
        Hearth::Validator.validate!(input[:policy_id], ::String, context: "#{context}[:policy_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:policy_type], ::String, context: "#{context}[:policy_type]")
      end
    end

    class LifecyclePolicySummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LifecyclePolicySummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ParameterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Parameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Parameters, context: context)
        Hearth::Validator.validate!(input[:exclude_boot_volume], ::TrueClass, ::FalseClass, context: "#{context}[:exclude_boot_volume]")
        Hearth::Validator.validate!(input[:no_reboot], ::TrueClass, ::FalseClass, context: "#{context}[:no_reboot]")
      end
    end

    class PolicyDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyDetails, context: context)
        Hearth::Validator.validate!(input[:policy_type], ::String, context: "#{context}[:policy_type]")
        ResourceTypeValuesList.validate!(input[:resource_types], context: "#{context}[:resource_types]") unless input[:resource_types].nil?
        ResourceLocationList.validate!(input[:resource_locations], context: "#{context}[:resource_locations]") unless input[:resource_locations].nil?
        TargetTagList.validate!(input[:target_tags], context: "#{context}[:target_tags]") unless input[:target_tags].nil?
        ScheduleList.validate!(input[:schedules], context: "#{context}[:schedules]") unless input[:schedules].nil?
        Parameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        EventSource.validate!(input[:event_source], context: "#{context}[:event_source]") unless input[:event_source].nil?
        ActionList.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
      end
    end

    class PolicyIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceLocationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        PolicyIdList.validate!(input[:resource_ids], context: "#{context}[:resource_ids]") unless input[:resource_ids].nil?
      end
    end

    class ResourceTypeValuesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RetainRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetainRule, context: context)
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Hearth::Validator.validate!(input[:interval], ::Integer, context: "#{context}[:interval]")
        Hearth::Validator.validate!(input[:interval_unit], ::String, context: "#{context}[:interval_unit]")
      end
    end

    class Schedule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Schedule, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:copy_tags], ::TrueClass, ::FalseClass, context: "#{context}[:copy_tags]")
        TagsToAddList.validate!(input[:tags_to_add], context: "#{context}[:tags_to_add]") unless input[:tags_to_add].nil?
        VariableTagsList.validate!(input[:variable_tags], context: "#{context}[:variable_tags]") unless input[:variable_tags].nil?
        CreateRule.validate!(input[:create_rule], context: "#{context}[:create_rule]") unless input[:create_rule].nil?
        RetainRule.validate!(input[:retain_rule], context: "#{context}[:retain_rule]") unless input[:retain_rule].nil?
        FastRestoreRule.validate!(input[:fast_restore_rule], context: "#{context}[:fast_restore_rule]") unless input[:fast_restore_rule].nil?
        CrossRegionCopyRules.validate!(input[:cross_region_copy_rules], context: "#{context}[:cross_region_copy_rules]") unless input[:cross_region_copy_rules].nil?
        ShareRules.validate!(input[:share_rules], context: "#{context}[:share_rules]") unless input[:share_rules].nil?
        DeprecateRule.validate!(input[:deprecate_rule], context: "#{context}[:deprecate_rule]") unless input[:deprecate_rule].nil?
      end
    end

    class ScheduleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Schedule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ShareRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ShareRule, context: context)
        ShareTargetAccountList.validate!(input[:target_accounts], context: "#{context}[:target_accounts]") unless input[:target_accounts].nil?
        Hearth::Validator.validate!(input[:unshare_interval], ::Integer, context: "#{context}[:unshare_interval]")
        Hearth::Validator.validate!(input[:unshare_interval_unit], ::String, context: "#{context}[:unshare_interval_unit]")
      end
    end

    class ShareRules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ShareRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ShareTargetAccountList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SnapshotOwnerList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TagsToAddFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagsToAddList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TargetTagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TargetTagsFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TimesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateLifecyclePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLifecyclePolicyInput, context: context)
        Hearth::Validator.validate!(input[:policy_id], ::String, context: "#{context}[:policy_id]")
        Hearth::Validator.validate!(input[:execution_role_arn], ::String, context: "#{context}[:execution_role_arn]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        PolicyDetails.validate!(input[:policy_details], context: "#{context}[:policy_details]") unless input[:policy_details].nil?
      end
    end

    class UpdateLifecyclePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLifecyclePolicyOutput, context: context)
      end
    end

    class VariableTagsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
