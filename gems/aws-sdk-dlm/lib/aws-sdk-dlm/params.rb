# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DLM
  module Params

    module Action
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Action, context: context)
        type = Types::Action.new
        type.name = params[:name]
        type.cross_region_copy = CrossRegionCopyActionList.build(params[:cross_region_copy], context: "#{context}[:cross_region_copy]") unless params[:cross_region_copy].nil?
        type
      end
    end

    module ActionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Action.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AvailabilityZoneList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CreateLifecyclePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLifecyclePolicyInput, context: context)
        type = Types::CreateLifecyclePolicyInput.new
        type.execution_role_arn = params[:execution_role_arn]
        type.description = params[:description]
        type.state = params[:state]
        type.policy_details = PolicyDetails.build(params[:policy_details], context: "#{context}[:policy_details]") unless params[:policy_details].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateLifecyclePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLifecyclePolicyOutput, context: context)
        type = Types::CreateLifecyclePolicyOutput.new
        type.policy_id = params[:policy_id]
        type
      end
    end

    module CreateRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRule, context: context)
        type = Types::CreateRule.new
        type.location = params[:location]
        type.interval = params[:interval]
        type.interval_unit = params[:interval_unit]
        type.times = TimesList.build(params[:times], context: "#{context}[:times]") unless params[:times].nil?
        type.cron_expression = params[:cron_expression]
        type
      end
    end

    module CrossRegionCopyAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CrossRegionCopyAction, context: context)
        type = Types::CrossRegionCopyAction.new
        type.target = params[:target]
        type.encryption_configuration = EncryptionConfiguration.build(params[:encryption_configuration], context: "#{context}[:encryption_configuration]") unless params[:encryption_configuration].nil?
        type.retain_rule = CrossRegionCopyRetainRule.build(params[:retain_rule], context: "#{context}[:retain_rule]") unless params[:retain_rule].nil?
        type
      end
    end

    module CrossRegionCopyActionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CrossRegionCopyAction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CrossRegionCopyDeprecateRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CrossRegionCopyDeprecateRule, context: context)
        type = Types::CrossRegionCopyDeprecateRule.new
        type.interval = params[:interval]
        type.interval_unit = params[:interval_unit]
        type
      end
    end

    module CrossRegionCopyRetainRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CrossRegionCopyRetainRule, context: context)
        type = Types::CrossRegionCopyRetainRule.new
        type.interval = params[:interval]
        type.interval_unit = params[:interval_unit]
        type
      end
    end

    module CrossRegionCopyRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CrossRegionCopyRule, context: context)
        type = Types::CrossRegionCopyRule.new
        type.target_region = params[:target_region]
        type.target = params[:target]
        type.encrypted = params[:encrypted]
        type.cmk_arn = params[:cmk_arn]
        type.copy_tags = params[:copy_tags]
        type.retain_rule = CrossRegionCopyRetainRule.build(params[:retain_rule], context: "#{context}[:retain_rule]") unless params[:retain_rule].nil?
        type.deprecate_rule = CrossRegionCopyDeprecateRule.build(params[:deprecate_rule], context: "#{context}[:deprecate_rule]") unless params[:deprecate_rule].nil?
        type
      end
    end

    module CrossRegionCopyRules
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CrossRegionCopyRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteLifecyclePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLifecyclePolicyInput, context: context)
        type = Types::DeleteLifecyclePolicyInput.new
        type.policy_id = params[:policy_id]
        type
      end
    end

    module DeleteLifecyclePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLifecyclePolicyOutput, context: context)
        type = Types::DeleteLifecyclePolicyOutput.new
        type
      end
    end

    module DeprecateRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeprecateRule, context: context)
        type = Types::DeprecateRule.new
        type.count = params[:count]
        type.interval = params[:interval]
        type.interval_unit = params[:interval_unit]
        type
      end
    end

    module EncryptionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncryptionConfiguration, context: context)
        type = Types::EncryptionConfiguration.new
        type.encrypted = params[:encrypted]
        type.cmk_arn = params[:cmk_arn]
        type
      end
    end

    module EventParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventParameters, context: context)
        type = Types::EventParameters.new
        type.event_type = params[:event_type]
        type.snapshot_owner = SnapshotOwnerList.build(params[:snapshot_owner], context: "#{context}[:snapshot_owner]") unless params[:snapshot_owner].nil?
        type.description_regex = params[:description_regex]
        type
      end
    end

    module EventSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventSource, context: context)
        type = Types::EventSource.new
        type.type = params[:type]
        type.parameters = EventParameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module FastRestoreRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FastRestoreRule, context: context)
        type = Types::FastRestoreRule.new
        type.count = params[:count]
        type.interval = params[:interval]
        type.interval_unit = params[:interval_unit]
        type.availability_zones = AvailabilityZoneList.build(params[:availability_zones], context: "#{context}[:availability_zones]") unless params[:availability_zones].nil?
        type
      end
    end

    module GetLifecyclePoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLifecyclePoliciesInput, context: context)
        type = Types::GetLifecyclePoliciesInput.new
        type.policy_ids = PolicyIdList.build(params[:policy_ids], context: "#{context}[:policy_ids]") unless params[:policy_ids].nil?
        type.state = params[:state]
        type.resource_types = ResourceTypeValuesList.build(params[:resource_types], context: "#{context}[:resource_types]") unless params[:resource_types].nil?
        type.target_tags = TargetTagsFilterList.build(params[:target_tags], context: "#{context}[:target_tags]") unless params[:target_tags].nil?
        type.tags_to_add = TagsToAddFilterList.build(params[:tags_to_add], context: "#{context}[:tags_to_add]") unless params[:tags_to_add].nil?
        type
      end
    end

    module GetLifecyclePoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLifecyclePoliciesOutput, context: context)
        type = Types::GetLifecyclePoliciesOutput.new
        type.policies = LifecyclePolicySummaryList.build(params[:policies], context: "#{context}[:policies]") unless params[:policies].nil?
        type
      end
    end

    module GetLifecyclePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLifecyclePolicyInput, context: context)
        type = Types::GetLifecyclePolicyInput.new
        type.policy_id = params[:policy_id]
        type
      end
    end

    module GetLifecyclePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLifecyclePolicyOutput, context: context)
        type = Types::GetLifecyclePolicyOutput.new
        type.policy = LifecyclePolicy.build(params[:policy], context: "#{context}[:policy]") unless params[:policy].nil?
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.message = params[:message]
        type.code = params[:code]
        type.required_parameters = ParameterList.build(params[:required_parameters], context: "#{context}[:required_parameters]") unless params[:required_parameters].nil?
        type.mutually_exclusive_parameters = ParameterList.build(params[:mutually_exclusive_parameters], context: "#{context}[:mutually_exclusive_parameters]") unless params[:mutually_exclusive_parameters].nil?
        type
      end
    end

    module LifecyclePolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LifecyclePolicy, context: context)
        type = Types::LifecyclePolicy.new
        type.policy_id = params[:policy_id]
        type.description = params[:description]
        type.state = params[:state]
        type.status_message = params[:status_message]
        type.execution_role_arn = params[:execution_role_arn]
        type.date_created = params[:date_created]
        type.date_modified = params[:date_modified]
        type.policy_details = PolicyDetails.build(params[:policy_details], context: "#{context}[:policy_details]") unless params[:policy_details].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.policy_arn = params[:policy_arn]
        type
      end
    end

    module LifecyclePolicySummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LifecyclePolicySummary, context: context)
        type = Types::LifecyclePolicySummary.new
        type.policy_id = params[:policy_id]
        type.description = params[:description]
        type.state = params[:state]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.policy_type = params[:policy_type]
        type
      end
    end

    module LifecyclePolicySummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LifecyclePolicySummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type.code = params[:code]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ParameterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Parameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Parameters, context: context)
        type = Types::Parameters.new
        type.exclude_boot_volume = params[:exclude_boot_volume]
        type.no_reboot = params[:no_reboot]
        type
      end
    end

    module PolicyDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyDetails, context: context)
        type = Types::PolicyDetails.new
        type.policy_type = params[:policy_type]
        type.resource_types = ResourceTypeValuesList.build(params[:resource_types], context: "#{context}[:resource_types]") unless params[:resource_types].nil?
        type.resource_locations = ResourceLocationList.build(params[:resource_locations], context: "#{context}[:resource_locations]") unless params[:resource_locations].nil?
        type.target_tags = TargetTagList.build(params[:target_tags], context: "#{context}[:target_tags]") unless params[:target_tags].nil?
        type.schedules = ScheduleList.build(params[:schedules], context: "#{context}[:schedules]") unless params[:schedules].nil?
        type.parameters = Parameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.event_source = EventSource.build(params[:event_source], context: "#{context}[:event_source]") unless params[:event_source].nil?
        type.actions = ActionList.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type
      end
    end

    module PolicyIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceLocationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.code = params[:code]
        type.resource_type = params[:resource_type]
        type.resource_ids = PolicyIdList.build(params[:resource_ids], context: "#{context}[:resource_ids]") unless params[:resource_ids].nil?
        type
      end
    end

    module ResourceTypeValuesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RetainRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetainRule, context: context)
        type = Types::RetainRule.new
        type.count = params[:count]
        type.interval = params[:interval]
        type.interval_unit = params[:interval_unit]
        type
      end
    end

    module Schedule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Schedule, context: context)
        type = Types::Schedule.new
        type.name = params[:name]
        type.copy_tags = params[:copy_tags]
        type.tags_to_add = TagsToAddList.build(params[:tags_to_add], context: "#{context}[:tags_to_add]") unless params[:tags_to_add].nil?
        type.variable_tags = VariableTagsList.build(params[:variable_tags], context: "#{context}[:variable_tags]") unless params[:variable_tags].nil?
        type.create_rule = CreateRule.build(params[:create_rule], context: "#{context}[:create_rule]") unless params[:create_rule].nil?
        type.retain_rule = RetainRule.build(params[:retain_rule], context: "#{context}[:retain_rule]") unless params[:retain_rule].nil?
        type.fast_restore_rule = FastRestoreRule.build(params[:fast_restore_rule], context: "#{context}[:fast_restore_rule]") unless params[:fast_restore_rule].nil?
        type.cross_region_copy_rules = CrossRegionCopyRules.build(params[:cross_region_copy_rules], context: "#{context}[:cross_region_copy_rules]") unless params[:cross_region_copy_rules].nil?
        type.share_rules = ShareRules.build(params[:share_rules], context: "#{context}[:share_rules]") unless params[:share_rules].nil?
        type.deprecate_rule = DeprecateRule.build(params[:deprecate_rule], context: "#{context}[:deprecate_rule]") unless params[:deprecate_rule].nil?
        type
      end
    end

    module ScheduleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Schedule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ShareRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ShareRule, context: context)
        type = Types::ShareRule.new
        type.target_accounts = ShareTargetAccountList.build(params[:target_accounts], context: "#{context}[:target_accounts]") unless params[:target_accounts].nil?
        type.unshare_interval = params[:unshare_interval]
        type.unshare_interval_unit = params[:unshare_interval_unit]
        type
      end
    end

    module ShareRules
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ShareRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ShareTargetAccountList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SnapshotOwnerList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module TagsToAddFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagsToAddList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TargetTagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TargetTagsFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TimesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateLifecyclePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLifecyclePolicyInput, context: context)
        type = Types::UpdateLifecyclePolicyInput.new
        type.policy_id = params[:policy_id]
        type.execution_role_arn = params[:execution_role_arn]
        type.state = params[:state]
        type.description = params[:description]
        type.policy_details = PolicyDetails.build(params[:policy_details], context: "#{context}[:policy_details]") unless params[:policy_details].nil?
        type
      end
    end

    module UpdateLifecyclePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLifecyclePolicyOutput, context: context)
        type = Types::UpdateLifecyclePolicyOutput.new
        type
      end
    end

    module VariableTagsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
