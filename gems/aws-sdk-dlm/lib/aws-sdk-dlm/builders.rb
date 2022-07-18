# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DLM
  module Builders

    # Operation Builder for CreateLifecyclePolicy
    class CreateLifecyclePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/policies')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ExecutionRoleArn'] = input[:execution_role_arn] unless input[:execution_role_arn].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['State'] = input[:state] unless input[:state].nil?
        data['PolicyDetails'] = Builders::PolicyDetails.build(input[:policy_details]) unless input[:policy_details].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for PolicyDetails
    class PolicyDetails
      def self.build(input)
        data = {}
        data['PolicyType'] = input[:policy_type] unless input[:policy_type].nil?
        data['ResourceTypes'] = Builders::ResourceTypeValuesList.build(input[:resource_types]) unless input[:resource_types].nil?
        data['ResourceLocations'] = Builders::ResourceLocationList.build(input[:resource_locations]) unless input[:resource_locations].nil?
        data['TargetTags'] = Builders::TargetTagList.build(input[:target_tags]) unless input[:target_tags].nil?
        data['Schedules'] = Builders::ScheduleList.build(input[:schedules]) unless input[:schedules].nil?
        data['Parameters'] = Builders::Parameters.build(input[:parameters]) unless input[:parameters].nil?
        data['EventSource'] = Builders::EventSource.build(input[:event_source]) unless input[:event_source].nil?
        data['Actions'] = Builders::ActionList.build(input[:actions]) unless input[:actions].nil?
        data
      end
    end

    # List Builder for ActionList
    class ActionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Action.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Action
    class Action
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['CrossRegionCopy'] = Builders::CrossRegionCopyActionList.build(input[:cross_region_copy]) unless input[:cross_region_copy].nil?
        data
      end
    end

    # List Builder for CrossRegionCopyActionList
    class CrossRegionCopyActionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CrossRegionCopyAction.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CrossRegionCopyAction
    class CrossRegionCopyAction
      def self.build(input)
        data = {}
        data['Target'] = input[:target] unless input[:target].nil?
        data['EncryptionConfiguration'] = Builders::EncryptionConfiguration.build(input[:encryption_configuration]) unless input[:encryption_configuration].nil?
        data['RetainRule'] = Builders::CrossRegionCopyRetainRule.build(input[:retain_rule]) unless input[:retain_rule].nil?
        data
      end
    end

    # Structure Builder for CrossRegionCopyRetainRule
    class CrossRegionCopyRetainRule
      def self.build(input)
        data = {}
        data['Interval'] = input[:interval] unless input[:interval].nil?
        data['IntervalUnit'] = input[:interval_unit] unless input[:interval_unit].nil?
        data
      end
    end

    # Structure Builder for EncryptionConfiguration
    class EncryptionConfiguration
      def self.build(input)
        data = {}
        data['Encrypted'] = input[:encrypted] unless input[:encrypted].nil?
        data['CmkArn'] = input[:cmk_arn] unless input[:cmk_arn].nil?
        data
      end
    end

    # Structure Builder for EventSource
    class EventSource
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['Parameters'] = Builders::EventParameters.build(input[:parameters]) unless input[:parameters].nil?
        data
      end
    end

    # Structure Builder for EventParameters
    class EventParameters
      def self.build(input)
        data = {}
        data['EventType'] = input[:event_type] unless input[:event_type].nil?
        data['SnapshotOwner'] = Builders::SnapshotOwnerList.build(input[:snapshot_owner]) unless input[:snapshot_owner].nil?
        data['DescriptionRegex'] = input[:description_regex] unless input[:description_regex].nil?
        data
      end
    end

    # List Builder for SnapshotOwnerList
    class SnapshotOwnerList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Parameters
    class Parameters
      def self.build(input)
        data = {}
        data['ExcludeBootVolume'] = input[:exclude_boot_volume] unless input[:exclude_boot_volume].nil?
        data['NoReboot'] = input[:no_reboot] unless input[:no_reboot].nil?
        data
      end
    end

    # List Builder for ScheduleList
    class ScheduleList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Schedule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Schedule
    class Schedule
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['CopyTags'] = input[:copy_tags] unless input[:copy_tags].nil?
        data['TagsToAdd'] = Builders::TagsToAddList.build(input[:tags_to_add]) unless input[:tags_to_add].nil?
        data['VariableTags'] = Builders::VariableTagsList.build(input[:variable_tags]) unless input[:variable_tags].nil?
        data['CreateRule'] = Builders::CreateRule.build(input[:create_rule]) unless input[:create_rule].nil?
        data['RetainRule'] = Builders::RetainRule.build(input[:retain_rule]) unless input[:retain_rule].nil?
        data['FastRestoreRule'] = Builders::FastRestoreRule.build(input[:fast_restore_rule]) unless input[:fast_restore_rule].nil?
        data['CrossRegionCopyRules'] = Builders::CrossRegionCopyRules.build(input[:cross_region_copy_rules]) unless input[:cross_region_copy_rules].nil?
        data['ShareRules'] = Builders::ShareRules.build(input[:share_rules]) unless input[:share_rules].nil?
        data['DeprecateRule'] = Builders::DeprecateRule.build(input[:deprecate_rule]) unless input[:deprecate_rule].nil?
        data
      end
    end

    # Structure Builder for DeprecateRule
    class DeprecateRule
      def self.build(input)
        data = {}
        data['Count'] = input[:count] unless input[:count].nil?
        data['Interval'] = input[:interval] unless input[:interval].nil?
        data['IntervalUnit'] = input[:interval_unit] unless input[:interval_unit].nil?
        data
      end
    end

    # List Builder for ShareRules
    class ShareRules
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ShareRule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ShareRule
    class ShareRule
      def self.build(input)
        data = {}
        data['TargetAccounts'] = Builders::ShareTargetAccountList.build(input[:target_accounts]) unless input[:target_accounts].nil?
        data['UnshareInterval'] = input[:unshare_interval] unless input[:unshare_interval].nil?
        data['UnshareIntervalUnit'] = input[:unshare_interval_unit] unless input[:unshare_interval_unit].nil?
        data
      end
    end

    # List Builder for ShareTargetAccountList
    class ShareTargetAccountList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for CrossRegionCopyRules
    class CrossRegionCopyRules
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CrossRegionCopyRule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CrossRegionCopyRule
    class CrossRegionCopyRule
      def self.build(input)
        data = {}
        data['TargetRegion'] = input[:target_region] unless input[:target_region].nil?
        data['Target'] = input[:target] unless input[:target].nil?
        data['Encrypted'] = input[:encrypted] unless input[:encrypted].nil?
        data['CmkArn'] = input[:cmk_arn] unless input[:cmk_arn].nil?
        data['CopyTags'] = input[:copy_tags] unless input[:copy_tags].nil?
        data['RetainRule'] = Builders::CrossRegionCopyRetainRule.build(input[:retain_rule]) unless input[:retain_rule].nil?
        data['DeprecateRule'] = Builders::CrossRegionCopyDeprecateRule.build(input[:deprecate_rule]) unless input[:deprecate_rule].nil?
        data
      end
    end

    # Structure Builder for CrossRegionCopyDeprecateRule
    class CrossRegionCopyDeprecateRule
      def self.build(input)
        data = {}
        data['Interval'] = input[:interval] unless input[:interval].nil?
        data['IntervalUnit'] = input[:interval_unit] unless input[:interval_unit].nil?
        data
      end
    end

    # Structure Builder for FastRestoreRule
    class FastRestoreRule
      def self.build(input)
        data = {}
        data['Count'] = input[:count] unless input[:count].nil?
        data['Interval'] = input[:interval] unless input[:interval].nil?
        data['IntervalUnit'] = input[:interval_unit] unless input[:interval_unit].nil?
        data['AvailabilityZones'] = Builders::AvailabilityZoneList.build(input[:availability_zones]) unless input[:availability_zones].nil?
        data
      end
    end

    # List Builder for AvailabilityZoneList
    class AvailabilityZoneList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RetainRule
    class RetainRule
      def self.build(input)
        data = {}
        data['Count'] = input[:count] unless input[:count].nil?
        data['Interval'] = input[:interval] unless input[:interval].nil?
        data['IntervalUnit'] = input[:interval_unit] unless input[:interval_unit].nil?
        data
      end
    end

    # Structure Builder for CreateRule
    class CreateRule
      def self.build(input)
        data = {}
        data['Location'] = input[:location] unless input[:location].nil?
        data['Interval'] = input[:interval] unless input[:interval].nil?
        data['IntervalUnit'] = input[:interval_unit] unless input[:interval_unit].nil?
        data['Times'] = Builders::TimesList.build(input[:times]) unless input[:times].nil?
        data['CronExpression'] = input[:cron_expression] unless input[:cron_expression].nil?
        data
      end
    end

    # List Builder for TimesList
    class TimesList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for VariableTagsList
    class VariableTagsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # List Builder for TagsToAddList
    class TagsToAddList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # List Builder for TargetTagList
    class TargetTagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # List Builder for ResourceLocationList
    class ResourceLocationList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ResourceTypeValuesList
    class ResourceTypeValuesList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteLifecyclePolicy
    class DeleteLifecyclePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:policy_id].to_s.empty?
          raise ArgumentError, "HTTP label :policy_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/policies/%<PolicyId>s',
            PolicyId: Hearth::HTTP.uri_escape(input[:policy_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetLifecyclePolicies
    class GetLifecyclePolicies
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/policies')
        params = Hearth::Query::ParamList.new
        unless input[:policy_ids].nil? || input[:policy_ids].empty?
          params['policyIds'] = input[:policy_ids].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['state'] = input[:state].to_s unless input[:state].nil?
        unless input[:resource_types].nil? || input[:resource_types].empty?
          params['resourceTypes'] = input[:resource_types].map do |value|
            value.to_s unless value.nil?
          end
        end
        unless input[:target_tags].nil? || input[:target_tags].empty?
          params['targetTags'] = input[:target_tags].map do |value|
            value.to_s unless value.nil?
          end
        end
        unless input[:tags_to_add].nil? || input[:tags_to_add].empty?
          params['tagsToAdd'] = input[:tags_to_add].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagsToAddFilterList
    class TagsToAddFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for TargetTagsFilterList
    class TargetTagsFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for PolicyIdList
    class PolicyIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetLifecyclePolicy
    class GetLifecyclePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:policy_id].to_s.empty?
          raise ArgumentError, "HTTP label :policy_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/policies/%<PolicyId>s',
            PolicyId: Hearth::HTTP.uri_escape(input[:policy_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateLifecyclePolicy
    class UpdateLifecyclePolicy
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:policy_id].to_s.empty?
          raise ArgumentError, "HTTP label :policy_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/policies/%<PolicyId>s',
            PolicyId: Hearth::HTTP.uri_escape(input[:policy_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ExecutionRoleArn'] = input[:execution_role_arn] unless input[:execution_role_arn].nil?
        data['State'] = input[:state] unless input[:state].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['PolicyDetails'] = Builders::PolicyDetails.build(input[:policy_details]) unless input[:policy_details].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
