# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::DLM
  module Stubs

    # Operation Stubber for CreateLifecyclePolicy
    class CreateLifecyclePolicy
      def self.default(visited=[])
        {
          policy_id: 'policy_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['PolicyId'] = stub[:policy_id] unless stub[:policy_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteLifecyclePolicy
    class DeleteLifecyclePolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetLifecyclePolicies
    class GetLifecyclePolicies
      def self.default(visited=[])
        {
          policies: LifecyclePolicySummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Policies'] = LifecyclePolicySummaryList.stub(stub[:policies]) unless stub[:policies].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for LifecyclePolicySummaryList
    class LifecyclePolicySummaryList
      def self.default(visited=[])
        return nil if visited.include?('LifecyclePolicySummaryList')
        visited = visited + ['LifecyclePolicySummaryList']
        [
          LifecyclePolicySummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LifecyclePolicySummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LifecyclePolicySummary
    class LifecyclePolicySummary
      def self.default(visited=[])
        return nil if visited.include?('LifecyclePolicySummary')
        visited = visited + ['LifecyclePolicySummary']
        {
          policy_id: 'policy_id',
          description: 'description',
          state: 'state',
          tags: TagMap.default(visited),
          policy_type: 'policy_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::LifecyclePolicySummary.new
        data = {}
        data['PolicyId'] = stub[:policy_id] unless stub[:policy_id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['PolicyType'] = stub[:policy_type] unless stub[:policy_type].nil?
        data
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for GetLifecyclePolicy
    class GetLifecyclePolicy
      def self.default(visited=[])
        {
          policy: LifecyclePolicy.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Policy'] = LifecyclePolicy.stub(stub[:policy]) unless stub[:policy].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for LifecyclePolicy
    class LifecyclePolicy
      def self.default(visited=[])
        return nil if visited.include?('LifecyclePolicy')
        visited = visited + ['LifecyclePolicy']
        {
          policy_id: 'policy_id',
          description: 'description',
          state: 'state',
          status_message: 'status_message',
          execution_role_arn: 'execution_role_arn',
          date_created: Time.now,
          date_modified: Time.now,
          policy_details: PolicyDetails.default(visited),
          tags: TagMap.default(visited),
          policy_arn: 'policy_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::LifecyclePolicy.new
        data = {}
        data['PolicyId'] = stub[:policy_id] unless stub[:policy_id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['ExecutionRoleArn'] = stub[:execution_role_arn] unless stub[:execution_role_arn].nil?
        data['DateCreated'] = Hearth::TimeHelper.to_epoch_seconds(stub[:date_created]).to_i unless stub[:date_created].nil?
        data['DateModified'] = Hearth::TimeHelper.to_epoch_seconds(stub[:date_modified]).to_i unless stub[:date_modified].nil?
        data['PolicyDetails'] = PolicyDetails.stub(stub[:policy_details]) unless stub[:policy_details].nil?
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['PolicyArn'] = stub[:policy_arn] unless stub[:policy_arn].nil?
        data
      end
    end

    # Structure Stubber for PolicyDetails
    class PolicyDetails
      def self.default(visited=[])
        return nil if visited.include?('PolicyDetails')
        visited = visited + ['PolicyDetails']
        {
          policy_type: 'policy_type',
          resource_types: ResourceTypeValuesList.default(visited),
          resource_locations: ResourceLocationList.default(visited),
          target_tags: TargetTagList.default(visited),
          schedules: ScheduleList.default(visited),
          parameters: Parameters.default(visited),
          event_source: EventSource.default(visited),
          actions: ActionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PolicyDetails.new
        data = {}
        data['PolicyType'] = stub[:policy_type] unless stub[:policy_type].nil?
        data['ResourceTypes'] = ResourceTypeValuesList.stub(stub[:resource_types]) unless stub[:resource_types].nil?
        data['ResourceLocations'] = ResourceLocationList.stub(stub[:resource_locations]) unless stub[:resource_locations].nil?
        data['TargetTags'] = TargetTagList.stub(stub[:target_tags]) unless stub[:target_tags].nil?
        data['Schedules'] = ScheduleList.stub(stub[:schedules]) unless stub[:schedules].nil?
        data['Parameters'] = Parameters.stub(stub[:parameters]) unless stub[:parameters].nil?
        data['EventSource'] = EventSource.stub(stub[:event_source]) unless stub[:event_source].nil?
        data['Actions'] = ActionList.stub(stub[:actions]) unless stub[:actions].nil?
        data
      end
    end

    # List Stubber for ActionList
    class ActionList
      def self.default(visited=[])
        return nil if visited.include?('ActionList')
        visited = visited + ['ActionList']
        [
          Action.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Action.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Action
    class Action
      def self.default(visited=[])
        return nil if visited.include?('Action')
        visited = visited + ['Action']
        {
          name: 'name',
          cross_region_copy: CrossRegionCopyActionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Action.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['CrossRegionCopy'] = CrossRegionCopyActionList.stub(stub[:cross_region_copy]) unless stub[:cross_region_copy].nil?
        data
      end
    end

    # List Stubber for CrossRegionCopyActionList
    class CrossRegionCopyActionList
      def self.default(visited=[])
        return nil if visited.include?('CrossRegionCopyActionList')
        visited = visited + ['CrossRegionCopyActionList']
        [
          CrossRegionCopyAction.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CrossRegionCopyAction.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CrossRegionCopyAction
    class CrossRegionCopyAction
      def self.default(visited=[])
        return nil if visited.include?('CrossRegionCopyAction')
        visited = visited + ['CrossRegionCopyAction']
        {
          target: 'target',
          encryption_configuration: EncryptionConfiguration.default(visited),
          retain_rule: CrossRegionCopyRetainRule.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CrossRegionCopyAction.new
        data = {}
        data['Target'] = stub[:target] unless stub[:target].nil?
        data['EncryptionConfiguration'] = EncryptionConfiguration.stub(stub[:encryption_configuration]) unless stub[:encryption_configuration].nil?
        data['RetainRule'] = CrossRegionCopyRetainRule.stub(stub[:retain_rule]) unless stub[:retain_rule].nil?
        data
      end
    end

    # Structure Stubber for CrossRegionCopyRetainRule
    class CrossRegionCopyRetainRule
      def self.default(visited=[])
        return nil if visited.include?('CrossRegionCopyRetainRule')
        visited = visited + ['CrossRegionCopyRetainRule']
        {
          interval: 1,
          interval_unit: 'interval_unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::CrossRegionCopyRetainRule.new
        data = {}
        data['Interval'] = stub[:interval] unless stub[:interval].nil?
        data['IntervalUnit'] = stub[:interval_unit] unless stub[:interval_unit].nil?
        data
      end
    end

    # Structure Stubber for EncryptionConfiguration
    class EncryptionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('EncryptionConfiguration')
        visited = visited + ['EncryptionConfiguration']
        {
          encrypted: false,
          cmk_arn: 'cmk_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::EncryptionConfiguration.new
        data = {}
        data['Encrypted'] = stub[:encrypted] unless stub[:encrypted].nil?
        data['CmkArn'] = stub[:cmk_arn] unless stub[:cmk_arn].nil?
        data
      end
    end

    # Structure Stubber for EventSource
    class EventSource
      def self.default(visited=[])
        return nil if visited.include?('EventSource')
        visited = visited + ['EventSource']
        {
          type: 'type',
          parameters: EventParameters.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EventSource.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Parameters'] = EventParameters.stub(stub[:parameters]) unless stub[:parameters].nil?
        data
      end
    end

    # Structure Stubber for EventParameters
    class EventParameters
      def self.default(visited=[])
        return nil if visited.include?('EventParameters')
        visited = visited + ['EventParameters']
        {
          event_type: 'event_type',
          snapshot_owner: SnapshotOwnerList.default(visited),
          description_regex: 'description_regex',
        }
      end

      def self.stub(stub)
        stub ||= Types::EventParameters.new
        data = {}
        data['EventType'] = stub[:event_type] unless stub[:event_type].nil?
        data['SnapshotOwner'] = SnapshotOwnerList.stub(stub[:snapshot_owner]) unless stub[:snapshot_owner].nil?
        data['DescriptionRegex'] = stub[:description_regex] unless stub[:description_regex].nil?
        data
      end
    end

    # List Stubber for SnapshotOwnerList
    class SnapshotOwnerList
      def self.default(visited=[])
        return nil if visited.include?('SnapshotOwnerList')
        visited = visited + ['SnapshotOwnerList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Parameters
    class Parameters
      def self.default(visited=[])
        return nil if visited.include?('Parameters')
        visited = visited + ['Parameters']
        {
          exclude_boot_volume: false,
          no_reboot: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Parameters.new
        data = {}
        data['ExcludeBootVolume'] = stub[:exclude_boot_volume] unless stub[:exclude_boot_volume].nil?
        data['NoReboot'] = stub[:no_reboot] unless stub[:no_reboot].nil?
        data
      end
    end

    # List Stubber for ScheduleList
    class ScheduleList
      def self.default(visited=[])
        return nil if visited.include?('ScheduleList')
        visited = visited + ['ScheduleList']
        [
          Schedule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Schedule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Schedule
    class Schedule
      def self.default(visited=[])
        return nil if visited.include?('Schedule')
        visited = visited + ['Schedule']
        {
          name: 'name',
          copy_tags: false,
          tags_to_add: TagsToAddList.default(visited),
          variable_tags: VariableTagsList.default(visited),
          create_rule: CreateRule.default(visited),
          retain_rule: RetainRule.default(visited),
          fast_restore_rule: FastRestoreRule.default(visited),
          cross_region_copy_rules: CrossRegionCopyRules.default(visited),
          share_rules: ShareRules.default(visited),
          deprecate_rule: DeprecateRule.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Schedule.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['CopyTags'] = stub[:copy_tags] unless stub[:copy_tags].nil?
        data['TagsToAdd'] = TagsToAddList.stub(stub[:tags_to_add]) unless stub[:tags_to_add].nil?
        data['VariableTags'] = VariableTagsList.stub(stub[:variable_tags]) unless stub[:variable_tags].nil?
        data['CreateRule'] = CreateRule.stub(stub[:create_rule]) unless stub[:create_rule].nil?
        data['RetainRule'] = RetainRule.stub(stub[:retain_rule]) unless stub[:retain_rule].nil?
        data['FastRestoreRule'] = FastRestoreRule.stub(stub[:fast_restore_rule]) unless stub[:fast_restore_rule].nil?
        data['CrossRegionCopyRules'] = CrossRegionCopyRules.stub(stub[:cross_region_copy_rules]) unless stub[:cross_region_copy_rules].nil?
        data['ShareRules'] = ShareRules.stub(stub[:share_rules]) unless stub[:share_rules].nil?
        data['DeprecateRule'] = DeprecateRule.stub(stub[:deprecate_rule]) unless stub[:deprecate_rule].nil?
        data
      end
    end

    # Structure Stubber for DeprecateRule
    class DeprecateRule
      def self.default(visited=[])
        return nil if visited.include?('DeprecateRule')
        visited = visited + ['DeprecateRule']
        {
          count: 1,
          interval: 1,
          interval_unit: 'interval_unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::DeprecateRule.new
        data = {}
        data['Count'] = stub[:count] unless stub[:count].nil?
        data['Interval'] = stub[:interval] unless stub[:interval].nil?
        data['IntervalUnit'] = stub[:interval_unit] unless stub[:interval_unit].nil?
        data
      end
    end

    # List Stubber for ShareRules
    class ShareRules
      def self.default(visited=[])
        return nil if visited.include?('ShareRules')
        visited = visited + ['ShareRules']
        [
          ShareRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ShareRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ShareRule
    class ShareRule
      def self.default(visited=[])
        return nil if visited.include?('ShareRule')
        visited = visited + ['ShareRule']
        {
          target_accounts: ShareTargetAccountList.default(visited),
          unshare_interval: 1,
          unshare_interval_unit: 'unshare_interval_unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::ShareRule.new
        data = {}
        data['TargetAccounts'] = ShareTargetAccountList.stub(stub[:target_accounts]) unless stub[:target_accounts].nil?
        data['UnshareInterval'] = stub[:unshare_interval] unless stub[:unshare_interval].nil?
        data['UnshareIntervalUnit'] = stub[:unshare_interval_unit] unless stub[:unshare_interval_unit].nil?
        data
      end
    end

    # List Stubber for ShareTargetAccountList
    class ShareTargetAccountList
      def self.default(visited=[])
        return nil if visited.include?('ShareTargetAccountList')
        visited = visited + ['ShareTargetAccountList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for CrossRegionCopyRules
    class CrossRegionCopyRules
      def self.default(visited=[])
        return nil if visited.include?('CrossRegionCopyRules')
        visited = visited + ['CrossRegionCopyRules']
        [
          CrossRegionCopyRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CrossRegionCopyRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CrossRegionCopyRule
    class CrossRegionCopyRule
      def self.default(visited=[])
        return nil if visited.include?('CrossRegionCopyRule')
        visited = visited + ['CrossRegionCopyRule']
        {
          target_region: 'target_region',
          target: 'target',
          encrypted: false,
          cmk_arn: 'cmk_arn',
          copy_tags: false,
          retain_rule: CrossRegionCopyRetainRule.default(visited),
          deprecate_rule: CrossRegionCopyDeprecateRule.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CrossRegionCopyRule.new
        data = {}
        data['TargetRegion'] = stub[:target_region] unless stub[:target_region].nil?
        data['Target'] = stub[:target] unless stub[:target].nil?
        data['Encrypted'] = stub[:encrypted] unless stub[:encrypted].nil?
        data['CmkArn'] = stub[:cmk_arn] unless stub[:cmk_arn].nil?
        data['CopyTags'] = stub[:copy_tags] unless stub[:copy_tags].nil?
        data['RetainRule'] = CrossRegionCopyRetainRule.stub(stub[:retain_rule]) unless stub[:retain_rule].nil?
        data['DeprecateRule'] = CrossRegionCopyDeprecateRule.stub(stub[:deprecate_rule]) unless stub[:deprecate_rule].nil?
        data
      end
    end

    # Structure Stubber for CrossRegionCopyDeprecateRule
    class CrossRegionCopyDeprecateRule
      def self.default(visited=[])
        return nil if visited.include?('CrossRegionCopyDeprecateRule')
        visited = visited + ['CrossRegionCopyDeprecateRule']
        {
          interval: 1,
          interval_unit: 'interval_unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::CrossRegionCopyDeprecateRule.new
        data = {}
        data['Interval'] = stub[:interval] unless stub[:interval].nil?
        data['IntervalUnit'] = stub[:interval_unit] unless stub[:interval_unit].nil?
        data
      end
    end

    # Structure Stubber for FastRestoreRule
    class FastRestoreRule
      def self.default(visited=[])
        return nil if visited.include?('FastRestoreRule')
        visited = visited + ['FastRestoreRule']
        {
          count: 1,
          interval: 1,
          interval_unit: 'interval_unit',
          availability_zones: AvailabilityZoneList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FastRestoreRule.new
        data = {}
        data['Count'] = stub[:count] unless stub[:count].nil?
        data['Interval'] = stub[:interval] unless stub[:interval].nil?
        data['IntervalUnit'] = stub[:interval_unit] unless stub[:interval_unit].nil?
        data['AvailabilityZones'] = AvailabilityZoneList.stub(stub[:availability_zones]) unless stub[:availability_zones].nil?
        data
      end
    end

    # List Stubber for AvailabilityZoneList
    class AvailabilityZoneList
      def self.default(visited=[])
        return nil if visited.include?('AvailabilityZoneList')
        visited = visited + ['AvailabilityZoneList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RetainRule
    class RetainRule
      def self.default(visited=[])
        return nil if visited.include?('RetainRule')
        visited = visited + ['RetainRule']
        {
          count: 1,
          interval: 1,
          interval_unit: 'interval_unit',
        }
      end

      def self.stub(stub)
        stub ||= Types::RetainRule.new
        data = {}
        data['Count'] = stub[:count] unless stub[:count].nil?
        data['Interval'] = stub[:interval] unless stub[:interval].nil?
        data['IntervalUnit'] = stub[:interval_unit] unless stub[:interval_unit].nil?
        data
      end
    end

    # Structure Stubber for CreateRule
    class CreateRule
      def self.default(visited=[])
        return nil if visited.include?('CreateRule')
        visited = visited + ['CreateRule']
        {
          location: 'location',
          interval: 1,
          interval_unit: 'interval_unit',
          times: TimesList.default(visited),
          cron_expression: 'cron_expression',
        }
      end

      def self.stub(stub)
        stub ||= Types::CreateRule.new
        data = {}
        data['Location'] = stub[:location] unless stub[:location].nil?
        data['Interval'] = stub[:interval] unless stub[:interval].nil?
        data['IntervalUnit'] = stub[:interval_unit] unless stub[:interval_unit].nil?
        data['Times'] = TimesList.stub(stub[:times]) unless stub[:times].nil?
        data['CronExpression'] = stub[:cron_expression] unless stub[:cron_expression].nil?
        data
      end
    end

    # List Stubber for TimesList
    class TimesList
      def self.default(visited=[])
        return nil if visited.include?('TimesList')
        visited = visited + ['TimesList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for VariableTagsList
    class VariableTagsList
      def self.default(visited=[])
        return nil if visited.include?('VariableTagsList')
        visited = visited + ['VariableTagsList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # List Stubber for TagsToAddList
    class TagsToAddList
      def self.default(visited=[])
        return nil if visited.include?('TagsToAddList')
        visited = visited + ['TagsToAddList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for TargetTagList
    class TargetTagList
      def self.default(visited=[])
        return nil if visited.include?('TargetTagList')
        visited = visited + ['TargetTagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for ResourceLocationList
    class ResourceLocationList
      def self.default(visited=[])
        return nil if visited.include?('ResourceLocationList')
        visited = visited + ['ResourceLocationList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for ResourceTypeValuesList
    class ResourceTypeValuesList
      def self.default(visited=[])
        return nil if visited.include?('ResourceTypeValuesList')
        visited = visited + ['ResourceTypeValuesList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateLifecyclePolicy
    class UpdateLifecyclePolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end
  end
end
