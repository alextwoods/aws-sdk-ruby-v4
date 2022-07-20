# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Shield
  module Builders

    # Operation Builder for AssociateDRTLogBucket
    class AssociateDRTLogBucket
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.AssociateDRTLogBucket'
        data = {}
        data['LogBucket'] = input[:log_bucket] unless input[:log_bucket].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateDRTRole
    class AssociateDRTRole
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.AssociateDRTRole'
        data = {}
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateHealthCheck
    class AssociateHealthCheck
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.AssociateHealthCheck'
        data = {}
        data['ProtectionId'] = input[:protection_id] unless input[:protection_id].nil?
        data['HealthCheckArn'] = input[:health_check_arn] unless input[:health_check_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateProactiveEngagementDetails
    class AssociateProactiveEngagementDetails
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.AssociateProactiveEngagementDetails'
        data = {}
        data['EmergencyContactList'] = EmergencyContactList.build(input[:emergency_contact_list]) unless input[:emergency_contact_list].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for EmergencyContactList
    class EmergencyContactList
      def self.build(input)
        data = []
        input.each do |element|
          data << EmergencyContact.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EmergencyContact
    class EmergencyContact
      def self.build(input)
        data = {}
        data['EmailAddress'] = input[:email_address] unless input[:email_address].nil?
        data['PhoneNumber'] = input[:phone_number] unless input[:phone_number].nil?
        data['ContactNotes'] = input[:contact_notes] unless input[:contact_notes].nil?
        data
      end
    end

    # Operation Builder for CreateProtection
    class CreateProtection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.CreateProtection'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
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

    # Operation Builder for CreateProtectionGroup
    class CreateProtectionGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.CreateProtectionGroup'
        data = {}
        data['ProtectionGroupId'] = input[:protection_group_id] unless input[:protection_group_id].nil?
        data['Aggregation'] = input[:aggregation] unless input[:aggregation].nil?
        data['Pattern'] = input[:pattern] unless input[:pattern].nil?
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['Members'] = ProtectionGroupMembers.build(input[:members]) unless input[:members].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ProtectionGroupMembers
    class ProtectionGroupMembers
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateSubscription
    class CreateSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.CreateSubscription'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteProtection
    class DeleteProtection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.DeleteProtection'
        data = {}
        data['ProtectionId'] = input[:protection_id] unless input[:protection_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteProtectionGroup
    class DeleteProtectionGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.DeleteProtectionGroup'
        data = {}
        data['ProtectionGroupId'] = input[:protection_group_id] unless input[:protection_group_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteSubscription
    class DeleteSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.DeleteSubscription'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAttack
    class DescribeAttack
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.DescribeAttack'
        data = {}
        data['AttackId'] = input[:attack_id] unless input[:attack_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAttackStatistics
    class DescribeAttackStatistics
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.DescribeAttackStatistics'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDRTAccess
    class DescribeDRTAccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.DescribeDRTAccess'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEmergencyContactSettings
    class DescribeEmergencyContactSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.DescribeEmergencyContactSettings'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeProtection
    class DescribeProtection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.DescribeProtection'
        data = {}
        data['ProtectionId'] = input[:protection_id] unless input[:protection_id].nil?
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeProtectionGroup
    class DescribeProtectionGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.DescribeProtectionGroup'
        data = {}
        data['ProtectionGroupId'] = input[:protection_group_id] unless input[:protection_group_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeSubscription
    class DescribeSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.DescribeSubscription'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisableApplicationLayerAutomaticResponse
    class DisableApplicationLayerAutomaticResponse
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.DisableApplicationLayerAutomaticResponse'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisableProactiveEngagement
    class DisableProactiveEngagement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.DisableProactiveEngagement'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateDRTLogBucket
    class DisassociateDRTLogBucket
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.DisassociateDRTLogBucket'
        data = {}
        data['LogBucket'] = input[:log_bucket] unless input[:log_bucket].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateDRTRole
    class DisassociateDRTRole
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.DisassociateDRTRole'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateHealthCheck
    class DisassociateHealthCheck
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.DisassociateHealthCheck'
        data = {}
        data['ProtectionId'] = input[:protection_id] unless input[:protection_id].nil?
        data['HealthCheckArn'] = input[:health_check_arn] unless input[:health_check_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for EnableApplicationLayerAutomaticResponse
    class EnableApplicationLayerAutomaticResponse
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.EnableApplicationLayerAutomaticResponse'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Action'] = ResponseAction.build(input[:action]) unless input[:action].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ResponseAction
    class ResponseAction
      def self.build(input)
        data = {}
        data['Block'] = BlockAction.build(input[:block]) unless input[:block].nil?
        data['Count'] = CountAction.build(input[:count]) unless input[:count].nil?
        data
      end
    end

    # Structure Builder for CountAction
    class CountAction
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for BlockAction
    class BlockAction
      def self.build(input)
        data = {}
        data
      end
    end

    # Operation Builder for EnableProactiveEngagement
    class EnableProactiveEngagement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.EnableProactiveEngagement'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetSubscriptionState
    class GetSubscriptionState
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.GetSubscriptionState'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAttacks
    class ListAttacks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.ListAttacks'
        data = {}
        data['ResourceArns'] = ResourceArnFilterList.build(input[:resource_arns]) unless input[:resource_arns].nil?
        data['StartTime'] = TimeRange.build(input[:start_time]) unless input[:start_time].nil?
        data['EndTime'] = TimeRange.build(input[:end_time]) unless input[:end_time].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TimeRange
    class TimeRange
      def self.build(input)
        data = {}
        data['FromInclusive'] = Hearth::TimeHelper.to_epoch_seconds(input[:from_inclusive]).to_i unless input[:from_inclusive].nil?
        data['ToExclusive'] = Hearth::TimeHelper.to_epoch_seconds(input[:to_exclusive]).to_i unless input[:to_exclusive].nil?
        data
      end
    end

    # List Builder for ResourceArnFilterList
    class ResourceArnFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListProtectionGroups
    class ListProtectionGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.ListProtectionGroups'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListProtections
    class ListProtections
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.ListProtections'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListResourcesInProtectionGroup
    class ListResourcesInProtectionGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.ListResourcesInProtectionGroup'
        data = {}
        data['ProtectionGroupId'] = input[:protection_group_id] unless input[:protection_group_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.ListTagsForResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.TagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.UntagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for UpdateApplicationLayerAutomaticResponse
    class UpdateApplicationLayerAutomaticResponse
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.UpdateApplicationLayerAutomaticResponse'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Action'] = ResponseAction.build(input[:action]) unless input[:action].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateEmergencyContactSettings
    class UpdateEmergencyContactSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.UpdateEmergencyContactSettings'
        data = {}
        data['EmergencyContactList'] = EmergencyContactList.build(input[:emergency_contact_list]) unless input[:emergency_contact_list].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateProtectionGroup
    class UpdateProtectionGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.UpdateProtectionGroup'
        data = {}
        data['ProtectionGroupId'] = input[:protection_group_id] unless input[:protection_group_id].nil?
        data['Aggregation'] = input[:aggregation] unless input[:aggregation].nil?
        data['Pattern'] = input[:pattern] unless input[:pattern].nil?
        data['ResourceType'] = input[:resource_type] unless input[:resource_type].nil?
        data['Members'] = ProtectionGroupMembers.build(input[:members]) unless input[:members].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateSubscription
    class UpdateSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSShield_20160616.UpdateSubscription'
        data = {}
        data['AutoRenew'] = input[:auto_renew] unless input[:auto_renew].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
