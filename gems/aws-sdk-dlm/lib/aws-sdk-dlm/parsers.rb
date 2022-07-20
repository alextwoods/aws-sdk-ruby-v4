# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DLM
  module Parsers

    # Operation Parser for CreateLifecyclePolicy
    class CreateLifecyclePolicy
      def self.parse(http_resp)
        data = Types::CreateLifecyclePolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy_id = map['PolicyId']
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.code = map['Code']
        data.required_parameters = (ParameterList.parse(map['RequiredParameters']) unless map['RequiredParameters'].nil?)
        data.mutually_exclusive_parameters = (ParameterList.parse(map['MutuallyExclusiveParameters']) unless map['MutuallyExclusiveParameters'].nil?)
        data
      end
    end

    class ParameterList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.code = map['Code']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.code = map['Code']
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Operation Parser for DeleteLifecyclePolicy
    class DeleteLifecyclePolicy
      def self.parse(http_resp)
        data = Types::DeleteLifecyclePolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.code = map['Code']
        data.resource_type = map['ResourceType']
        data.resource_ids = (PolicyIdList.parse(map['ResourceIds']) unless map['ResourceIds'].nil?)
        data
      end
    end

    class PolicyIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetLifecyclePolicies
    class GetLifecyclePolicies
      def self.parse(http_resp)
        data = Types::GetLifecyclePoliciesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policies = (LifecyclePolicySummaryList.parse(map['Policies']) unless map['Policies'].nil?)
        data
      end
    end

    class LifecyclePolicySummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << LifecyclePolicySummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class LifecyclePolicySummary
      def self.parse(map)
        data = Types::LifecyclePolicySummary.new
        data.policy_id = map['PolicyId']
        data.description = map['Description']
        data.state = map['State']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.policy_type = map['PolicyType']
        return data
      end
    end

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetLifecyclePolicy
    class GetLifecyclePolicy
      def self.parse(http_resp)
        data = Types::GetLifecyclePolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy = (LifecyclePolicy.parse(map['Policy']) unless map['Policy'].nil?)
        data
      end
    end

    class LifecyclePolicy
      def self.parse(map)
        data = Types::LifecyclePolicy.new
        data.policy_id = map['PolicyId']
        data.description = map['Description']
        data.state = map['State']
        data.status_message = map['StatusMessage']
        data.execution_role_arn = map['ExecutionRoleArn']
        data.date_created = Time.at(map['DateCreated'].to_i) if map['DateCreated']
        data.date_modified = Time.at(map['DateModified'].to_i) if map['DateModified']
        data.policy_details = (PolicyDetails.parse(map['PolicyDetails']) unless map['PolicyDetails'].nil?)
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.policy_arn = map['PolicyArn']
        return data
      end
    end

    class PolicyDetails
      def self.parse(map)
        data = Types::PolicyDetails.new
        data.policy_type = map['PolicyType']
        data.resource_types = (ResourceTypeValuesList.parse(map['ResourceTypes']) unless map['ResourceTypes'].nil?)
        data.resource_locations = (ResourceLocationList.parse(map['ResourceLocations']) unless map['ResourceLocations'].nil?)
        data.target_tags = (TargetTagList.parse(map['TargetTags']) unless map['TargetTags'].nil?)
        data.schedules = (ScheduleList.parse(map['Schedules']) unless map['Schedules'].nil?)
        data.parameters = (Parameters.parse(map['Parameters']) unless map['Parameters'].nil?)
        data.event_source = (EventSource.parse(map['EventSource']) unless map['EventSource'].nil?)
        data.actions = (ActionList.parse(map['Actions']) unless map['Actions'].nil?)
        return data
      end
    end

    class ActionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Action.parse(value) unless value.nil?
        end
        data
      end
    end

    class Action
      def self.parse(map)
        data = Types::Action.new
        data.name = map['Name']
        data.cross_region_copy = (CrossRegionCopyActionList.parse(map['CrossRegionCopy']) unless map['CrossRegionCopy'].nil?)
        return data
      end
    end

    class CrossRegionCopyActionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << CrossRegionCopyAction.parse(value) unless value.nil?
        end
        data
      end
    end

    class CrossRegionCopyAction
      def self.parse(map)
        data = Types::CrossRegionCopyAction.new
        data.target = map['Target']
        data.encryption_configuration = (EncryptionConfiguration.parse(map['EncryptionConfiguration']) unless map['EncryptionConfiguration'].nil?)
        data.retain_rule = (CrossRegionCopyRetainRule.parse(map['RetainRule']) unless map['RetainRule'].nil?)
        return data
      end
    end

    class CrossRegionCopyRetainRule
      def self.parse(map)
        data = Types::CrossRegionCopyRetainRule.new
        data.interval = map['Interval']
        data.interval_unit = map['IntervalUnit']
        return data
      end
    end

    class EncryptionConfiguration
      def self.parse(map)
        data = Types::EncryptionConfiguration.new
        data.encrypted = map['Encrypted']
        data.cmk_arn = map['CmkArn']
        return data
      end
    end

    class EventSource
      def self.parse(map)
        data = Types::EventSource.new
        data.type = map['Type']
        data.parameters = (EventParameters.parse(map['Parameters']) unless map['Parameters'].nil?)
        return data
      end
    end

    class EventParameters
      def self.parse(map)
        data = Types::EventParameters.new
        data.event_type = map['EventType']
        data.snapshot_owner = (SnapshotOwnerList.parse(map['SnapshotOwner']) unless map['SnapshotOwner'].nil?)
        data.description_regex = map['DescriptionRegex']
        return data
      end
    end

    class SnapshotOwnerList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class Parameters
      def self.parse(map)
        data = Types::Parameters.new
        data.exclude_boot_volume = map['ExcludeBootVolume']
        data.no_reboot = map['NoReboot']
        return data
      end
    end

    class ScheduleList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Schedule.parse(value) unless value.nil?
        end
        data
      end
    end

    class Schedule
      def self.parse(map)
        data = Types::Schedule.new
        data.name = map['Name']
        data.copy_tags = map['CopyTags']
        data.tags_to_add = (TagsToAddList.parse(map['TagsToAdd']) unless map['TagsToAdd'].nil?)
        data.variable_tags = (VariableTagsList.parse(map['VariableTags']) unless map['VariableTags'].nil?)
        data.create_rule = (CreateRule.parse(map['CreateRule']) unless map['CreateRule'].nil?)
        data.retain_rule = (RetainRule.parse(map['RetainRule']) unless map['RetainRule'].nil?)
        data.fast_restore_rule = (FastRestoreRule.parse(map['FastRestoreRule']) unless map['FastRestoreRule'].nil?)
        data.cross_region_copy_rules = (CrossRegionCopyRules.parse(map['CrossRegionCopyRules']) unless map['CrossRegionCopyRules'].nil?)
        data.share_rules = (ShareRules.parse(map['ShareRules']) unless map['ShareRules'].nil?)
        data.deprecate_rule = (DeprecateRule.parse(map['DeprecateRule']) unless map['DeprecateRule'].nil?)
        return data
      end
    end

    class DeprecateRule
      def self.parse(map)
        data = Types::DeprecateRule.new
        data.count = map['Count']
        data.interval = map['Interval']
        data.interval_unit = map['IntervalUnit']
        return data
      end
    end

    class ShareRules
      def self.parse(list)
        data = []
        list.map do |value|
          data << ShareRule.parse(value) unless value.nil?
        end
        data
      end
    end

    class ShareRule
      def self.parse(map)
        data = Types::ShareRule.new
        data.target_accounts = (ShareTargetAccountList.parse(map['TargetAccounts']) unless map['TargetAccounts'].nil?)
        data.unshare_interval = map['UnshareInterval']
        data.unshare_interval_unit = map['UnshareIntervalUnit']
        return data
      end
    end

    class ShareTargetAccountList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class CrossRegionCopyRules
      def self.parse(list)
        data = []
        list.map do |value|
          data << CrossRegionCopyRule.parse(value) unless value.nil?
        end
        data
      end
    end

    class CrossRegionCopyRule
      def self.parse(map)
        data = Types::CrossRegionCopyRule.new
        data.target_region = map['TargetRegion']
        data.target = map['Target']
        data.encrypted = map['Encrypted']
        data.cmk_arn = map['CmkArn']
        data.copy_tags = map['CopyTags']
        data.retain_rule = (CrossRegionCopyRetainRule.parse(map['RetainRule']) unless map['RetainRule'].nil?)
        data.deprecate_rule = (CrossRegionCopyDeprecateRule.parse(map['DeprecateRule']) unless map['DeprecateRule'].nil?)
        return data
      end
    end

    class CrossRegionCopyDeprecateRule
      def self.parse(map)
        data = Types::CrossRegionCopyDeprecateRule.new
        data.interval = map['Interval']
        data.interval_unit = map['IntervalUnit']
        return data
      end
    end

    class FastRestoreRule
      def self.parse(map)
        data = Types::FastRestoreRule.new
        data.count = map['Count']
        data.interval = map['Interval']
        data.interval_unit = map['IntervalUnit']
        data.availability_zones = (AvailabilityZoneList.parse(map['AvailabilityZones']) unless map['AvailabilityZones'].nil?)
        return data
      end
    end

    class AvailabilityZoneList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class RetainRule
      def self.parse(map)
        data = Types::RetainRule.new
        data.count = map['Count']
        data.interval = map['Interval']
        data.interval_unit = map['IntervalUnit']
        return data
      end
    end

    class CreateRule
      def self.parse(map)
        data = Types::CreateRule.new
        data.location = map['Location']
        data.interval = map['Interval']
        data.interval_unit = map['IntervalUnit']
        data.times = (TimesList.parse(map['Times']) unless map['Times'].nil?)
        data.cron_expression = map['CronExpression']
        return data
      end
    end

    class TimesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class VariableTagsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Tag.parse(value) unless value.nil?
        end
        data
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    class TagsToAddList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Tag.parse(value) unless value.nil?
        end
        data
      end
    end

    class TargetTagList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Tag.parse(value) unless value.nil?
        end
        data
      end
    end

    class ResourceLocationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ResourceTypeValuesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateLifecyclePolicy
    class UpdateLifecyclePolicy
      def self.parse(http_resp)
        data = Types::UpdateLifecyclePolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
