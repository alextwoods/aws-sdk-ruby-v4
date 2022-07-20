# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Shield
  module Parsers

    # Operation Parser for AssociateDRTLogBucket
    class AssociateDRTLogBucket
      def self.parse(http_resp)
        data = Types::AssociateDRTLogBucketOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidOperationException
    class InvalidOperationException
      def self.parse(http_resp)
        data = Types::InvalidOperationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Error Parser for AccessDeniedForDependencyException
    class AccessDeniedForDependencyException
      def self.parse(http_resp)
        data = Types::AccessDeniedForDependencyException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidParameterException
    class InvalidParameterException
      def self.parse(http_resp)
        data = Types::InvalidParameterException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.reason = map['reason']
        data.fields = (Parsers::ValidationExceptionFieldList.parse(map['fields']) unless map['fields'].nil?)
        data
      end
    end

    class ValidationExceptionFieldList
      def self.parse(list)
        list.map do |value|
          Parsers::ValidationExceptionField.parse(value) unless value.nil?
        end
      end
    end

    class ValidationExceptionField
      def self.parse(map)
        data = Types::ValidationExceptionField.new
        data.name = map['name']
        data.message = map['message']
        return data
      end
    end

    # Error Parser for NoAssociatedRoleException
    class NoAssociatedRoleException
      def self.parse(http_resp)
        data = Types::NoAssociatedRoleException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for OptimisticLockException
    class OptimisticLockException
      def self.parse(http_resp)
        data = Types::OptimisticLockException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InternalErrorException
    class InternalErrorException
      def self.parse(http_resp)
        data = Types::InternalErrorException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for LimitsExceededException
    class LimitsExceededException
      def self.parse(http_resp)
        data = Types::LimitsExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.type = map['Type']
        data.limit = map['Limit']
        data
      end
    end

    # Operation Parser for AssociateDRTRole
    class AssociateDRTRole
      def self.parse(http_resp)
        data = Types::AssociateDRTRoleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for AssociateHealthCheck
    class AssociateHealthCheck
      def self.parse(http_resp)
        data = Types::AssociateHealthCheckOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidResourceException
    class InvalidResourceException
      def self.parse(http_resp)
        data = Types::InvalidResourceException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for AssociateProactiveEngagementDetails
    class AssociateProactiveEngagementDetails
      def self.parse(http_resp)
        data = Types::AssociateProactiveEngagementDetailsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateProtection
    class CreateProtection
      def self.parse(http_resp)
        data = Types::CreateProtectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.protection_id = map['ProtectionId']
        data
      end
    end

    # Error Parser for ResourceAlreadyExistsException
    class ResourceAlreadyExistsException
      def self.parse(http_resp)
        data = Types::ResourceAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Operation Parser for CreateProtectionGroup
    class CreateProtectionGroup
      def self.parse(http_resp)
        data = Types::CreateProtectionGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateSubscription
    class CreateSubscription
      def self.parse(http_resp)
        data = Types::CreateSubscriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteProtection
    class DeleteProtection
      def self.parse(http_resp)
        data = Types::DeleteProtectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteProtectionGroup
    class DeleteProtectionGroup
      def self.parse(http_resp)
        data = Types::DeleteProtectionGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteSubscription
    class DeleteSubscription
      def self.parse(http_resp)
        data = Types::DeleteSubscriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for LockedSubscriptionException
    class LockedSubscriptionException
      def self.parse(http_resp)
        data = Types::LockedSubscriptionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DescribeAttack
    class DescribeAttack
      def self.parse(http_resp)
        data = Types::DescribeAttackOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.attack = (Parsers::AttackDetail.parse(map['Attack']) unless map['Attack'].nil?)
        data
      end
    end

    class AttackDetail
      def self.parse(map)
        data = Types::AttackDetail.new
        data.attack_id = map['AttackId']
        data.resource_arn = map['ResourceArn']
        data.sub_resources = (Parsers::SubResourceSummaryList.parse(map['SubResources']) unless map['SubResources'].nil?)
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.attack_counters = (Parsers::SummarizedCounterList.parse(map['AttackCounters']) unless map['AttackCounters'].nil?)
        data.attack_properties = (Parsers::AttackProperties.parse(map['AttackProperties']) unless map['AttackProperties'].nil?)
        data.mitigations = (Parsers::MitigationList.parse(map['Mitigations']) unless map['Mitigations'].nil?)
        return data
      end
    end

    class MitigationList
      def self.parse(list)
        list.map do |value|
          Parsers::Mitigation.parse(value) unless value.nil?
        end
      end
    end

    class Mitigation
      def self.parse(map)
        data = Types::Mitigation.new
        data.mitigation_name = map['MitigationName']
        return data
      end
    end

    class AttackProperties
      def self.parse(list)
        list.map do |value|
          Parsers::AttackProperty.parse(value) unless value.nil?
        end
      end
    end

    class AttackProperty
      def self.parse(map)
        data = Types::AttackProperty.new
        data.attack_layer = map['AttackLayer']
        data.attack_property_identifier = map['AttackPropertyIdentifier']
        data.top_contributors = (Parsers::TopContributors.parse(map['TopContributors']) unless map['TopContributors'].nil?)
        data.unit = map['Unit']
        data.total = map['Total']
        return data
      end
    end

    class TopContributors
      def self.parse(list)
        list.map do |value|
          Parsers::Contributor.parse(value) unless value.nil?
        end
      end
    end

    class Contributor
      def self.parse(map)
        data = Types::Contributor.new
        data.name = map['Name']
        data.value = map['Value']
        return data
      end
    end

    class SummarizedCounterList
      def self.parse(list)
        list.map do |value|
          Parsers::SummarizedCounter.parse(value) unless value.nil?
        end
      end
    end

    class SummarizedCounter
      def self.parse(map)
        data = Types::SummarizedCounter.new
        data.name = map['Name']
        data.max = Hearth::NumberHelper.deserialize(map['Max'])
        data.average = Hearth::NumberHelper.deserialize(map['Average'])
        data.sum = Hearth::NumberHelper.deserialize(map['Sum'])
        data.n = map['N']
        data.unit = map['Unit']
        return data
      end
    end

    class SubResourceSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::SubResourceSummary.parse(value) unless value.nil?
        end
      end
    end

    class SubResourceSummary
      def self.parse(map)
        data = Types::SubResourceSummary.new
        data.type = map['Type']
        data.id = map['Id']
        data.attack_vectors = (Parsers::SummarizedAttackVectorList.parse(map['AttackVectors']) unless map['AttackVectors'].nil?)
        data.counters = (Parsers::SummarizedCounterList.parse(map['Counters']) unless map['Counters'].nil?)
        return data
      end
    end

    class SummarizedAttackVectorList
      def self.parse(list)
        list.map do |value|
          Parsers::SummarizedAttackVector.parse(value) unless value.nil?
        end
      end
    end

    class SummarizedAttackVector
      def self.parse(map)
        data = Types::SummarizedAttackVector.new
        data.vector_type = map['VectorType']
        data.vector_counters = (Parsers::SummarizedCounterList.parse(map['VectorCounters']) unless map['VectorCounters'].nil?)
        return data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DescribeAttackStatistics
    class DescribeAttackStatistics
      def self.parse(http_resp)
        data = Types::DescribeAttackStatisticsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.time_range = (Parsers::TimeRange.parse(map['TimeRange']) unless map['TimeRange'].nil?)
        data.data_items = (Parsers::AttackStatisticsDataList.parse(map['DataItems']) unless map['DataItems'].nil?)
        data
      end
    end

    class AttackStatisticsDataList
      def self.parse(list)
        list.map do |value|
          Parsers::AttackStatisticsDataItem.parse(value) unless value.nil?
        end
      end
    end

    class AttackStatisticsDataItem
      def self.parse(map)
        data = Types::AttackStatisticsDataItem.new
        data.attack_volume = (Parsers::AttackVolume.parse(map['AttackVolume']) unless map['AttackVolume'].nil?)
        data.attack_count = map['AttackCount']
        return data
      end
    end

    class AttackVolume
      def self.parse(map)
        data = Types::AttackVolume.new
        data.bits_per_second = (Parsers::AttackVolumeStatistics.parse(map['BitsPerSecond']) unless map['BitsPerSecond'].nil?)
        data.packets_per_second = (Parsers::AttackVolumeStatistics.parse(map['PacketsPerSecond']) unless map['PacketsPerSecond'].nil?)
        data.requests_per_second = (Parsers::AttackVolumeStatistics.parse(map['RequestsPerSecond']) unless map['RequestsPerSecond'].nil?)
        return data
      end
    end

    class AttackVolumeStatistics
      def self.parse(map)
        data = Types::AttackVolumeStatistics.new
        data.max = Hearth::NumberHelper.deserialize(map['Max'])
        return data
      end
    end

    class TimeRange
      def self.parse(map)
        data = Types::TimeRange.new
        data.from_inclusive = Time.at(map['FromInclusive'].to_i) if map['FromInclusive']
        data.to_exclusive = Time.at(map['ToExclusive'].to_i) if map['ToExclusive']
        return data
      end
    end

    # Operation Parser for DescribeDRTAccess
    class DescribeDRTAccess
      def self.parse(http_resp)
        data = Types::DescribeDRTAccessOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.role_arn = map['RoleArn']
        data.log_bucket_list = (Parsers::LogBucketList.parse(map['LogBucketList']) unless map['LogBucketList'].nil?)
        data
      end
    end

    class LogBucketList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeEmergencyContactSettings
    class DescribeEmergencyContactSettings
      def self.parse(http_resp)
        data = Types::DescribeEmergencyContactSettingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.emergency_contact_list = (Parsers::EmergencyContactList.parse(map['EmergencyContactList']) unless map['EmergencyContactList'].nil?)
        data
      end
    end

    class EmergencyContactList
      def self.parse(list)
        list.map do |value|
          Parsers::EmergencyContact.parse(value) unless value.nil?
        end
      end
    end

    class EmergencyContact
      def self.parse(map)
        data = Types::EmergencyContact.new
        data.email_address = map['EmailAddress']
        data.phone_number = map['PhoneNumber']
        data.contact_notes = map['ContactNotes']
        return data
      end
    end

    # Operation Parser for DescribeProtection
    class DescribeProtection
      def self.parse(http_resp)
        data = Types::DescribeProtectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.protection = (Parsers::Protection.parse(map['Protection']) unless map['Protection'].nil?)
        data
      end
    end

    class Protection
      def self.parse(map)
        data = Types::Protection.new
        data.id = map['Id']
        data.name = map['Name']
        data.resource_arn = map['ResourceArn']
        data.health_check_ids = (Parsers::HealthCheckIds.parse(map['HealthCheckIds']) unless map['HealthCheckIds'].nil?)
        data.protection_arn = map['ProtectionArn']
        data.application_layer_automatic_response_configuration = (Parsers::ApplicationLayerAutomaticResponseConfiguration.parse(map['ApplicationLayerAutomaticResponseConfiguration']) unless map['ApplicationLayerAutomaticResponseConfiguration'].nil?)
        return data
      end
    end

    class ApplicationLayerAutomaticResponseConfiguration
      def self.parse(map)
        data = Types::ApplicationLayerAutomaticResponseConfiguration.new
        data.status = map['Status']
        data.action = (Parsers::ResponseAction.parse(map['Action']) unless map['Action'].nil?)
        return data
      end
    end

    class ResponseAction
      def self.parse(map)
        data = Types::ResponseAction.new
        data.block = (Parsers::BlockAction.parse(map['Block']) unless map['Block'].nil?)
        data.count = (Parsers::CountAction.parse(map['Count']) unless map['Count'].nil?)
        return data
      end
    end

    class CountAction
      def self.parse(map)
        data = Types::CountAction.new
        return data
      end
    end

    class BlockAction
      def self.parse(map)
        data = Types::BlockAction.new
        return data
      end
    end

    class HealthCheckIds
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeProtectionGroup
    class DescribeProtectionGroup
      def self.parse(http_resp)
        data = Types::DescribeProtectionGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.protection_group = (Parsers::ProtectionGroup.parse(map['ProtectionGroup']) unless map['ProtectionGroup'].nil?)
        data
      end
    end

    class ProtectionGroup
      def self.parse(map)
        data = Types::ProtectionGroup.new
        data.protection_group_id = map['ProtectionGroupId']
        data.aggregation = map['Aggregation']
        data.pattern = map['Pattern']
        data.resource_type = map['ResourceType']
        data.members = (Parsers::ProtectionGroupMembers.parse(map['Members']) unless map['Members'].nil?)
        data.protection_group_arn = map['ProtectionGroupArn']
        return data
      end
    end

    class ProtectionGroupMembers
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeSubscription
    class DescribeSubscription
      def self.parse(http_resp)
        data = Types::DescribeSubscriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.subscription = (Parsers::Subscription.parse(map['Subscription']) unless map['Subscription'].nil?)
        data
      end
    end

    class Subscription
      def self.parse(map)
        data = Types::Subscription.new
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.time_commitment_in_seconds = map['TimeCommitmentInSeconds']
        data.auto_renew = map['AutoRenew']
        data.limits = (Parsers::Limits.parse(map['Limits']) unless map['Limits'].nil?)
        data.proactive_engagement_status = map['ProactiveEngagementStatus']
        data.subscription_limits = (Parsers::SubscriptionLimits.parse(map['SubscriptionLimits']) unless map['SubscriptionLimits'].nil?)
        data.subscription_arn = map['SubscriptionArn']
        return data
      end
    end

    class SubscriptionLimits
      def self.parse(map)
        data = Types::SubscriptionLimits.new
        data.protection_limits = (Parsers::ProtectionLimits.parse(map['ProtectionLimits']) unless map['ProtectionLimits'].nil?)
        data.protection_group_limits = (Parsers::ProtectionGroupLimits.parse(map['ProtectionGroupLimits']) unless map['ProtectionGroupLimits'].nil?)
        return data
      end
    end

    class ProtectionGroupLimits
      def self.parse(map)
        data = Types::ProtectionGroupLimits.new
        data.max_protection_groups = map['MaxProtectionGroups']
        data.pattern_type_limits = (Parsers::ProtectionGroupPatternTypeLimits.parse(map['PatternTypeLimits']) unless map['PatternTypeLimits'].nil?)
        return data
      end
    end

    class ProtectionGroupPatternTypeLimits
      def self.parse(map)
        data = Types::ProtectionGroupPatternTypeLimits.new
        data.arbitrary_pattern_limits = (Parsers::ProtectionGroupArbitraryPatternLimits.parse(map['ArbitraryPatternLimits']) unless map['ArbitraryPatternLimits'].nil?)
        return data
      end
    end

    class ProtectionGroupArbitraryPatternLimits
      def self.parse(map)
        data = Types::ProtectionGroupArbitraryPatternLimits.new
        data.max_members = map['MaxMembers']
        return data
      end
    end

    class ProtectionLimits
      def self.parse(map)
        data = Types::ProtectionLimits.new
        data.protected_resource_type_limits = (Parsers::Limits.parse(map['ProtectedResourceTypeLimits']) unless map['ProtectedResourceTypeLimits'].nil?)
        return data
      end
    end

    class Limits
      def self.parse(list)
        list.map do |value|
          Parsers::Limit.parse(value) unless value.nil?
        end
      end
    end

    class Limit
      def self.parse(map)
        data = Types::Limit.new
        data.type = map['Type']
        data.max = map['Max']
        return data
      end
    end

    # Operation Parser for DisableApplicationLayerAutomaticResponse
    class DisableApplicationLayerAutomaticResponse
      def self.parse(http_resp)
        data = Types::DisableApplicationLayerAutomaticResponseOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DisableProactiveEngagement
    class DisableProactiveEngagement
      def self.parse(http_resp)
        data = Types::DisableProactiveEngagementOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DisassociateDRTLogBucket
    class DisassociateDRTLogBucket
      def self.parse(http_resp)
        data = Types::DisassociateDRTLogBucketOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DisassociateDRTRole
    class DisassociateDRTRole
      def self.parse(http_resp)
        data = Types::DisassociateDRTRoleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DisassociateHealthCheck
    class DisassociateHealthCheck
      def self.parse(http_resp)
        data = Types::DisassociateHealthCheckOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for EnableApplicationLayerAutomaticResponse
    class EnableApplicationLayerAutomaticResponse
      def self.parse(http_resp)
        data = Types::EnableApplicationLayerAutomaticResponseOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for EnableProactiveEngagement
    class EnableProactiveEngagement
      def self.parse(http_resp)
        data = Types::EnableProactiveEngagementOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for GetSubscriptionState
    class GetSubscriptionState
      def self.parse(http_resp)
        data = Types::GetSubscriptionStateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.subscription_state = map['SubscriptionState']
        data
      end
    end

    # Operation Parser for ListAttacks
    class ListAttacks
      def self.parse(http_resp)
        data = Types::ListAttacksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.attack_summaries = (Parsers::AttackSummaries.parse(map['AttackSummaries']) unless map['AttackSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AttackSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::AttackSummary.parse(value) unless value.nil?
        end
      end
    end

    class AttackSummary
      def self.parse(map)
        data = Types::AttackSummary.new
        data.attack_id = map['AttackId']
        data.resource_arn = map['ResourceArn']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.attack_vectors = (Parsers::AttackVectorDescriptionList.parse(map['AttackVectors']) unless map['AttackVectors'].nil?)
        return data
      end
    end

    class AttackVectorDescriptionList
      def self.parse(list)
        list.map do |value|
          Parsers::AttackVectorDescription.parse(value) unless value.nil?
        end
      end
    end

    class AttackVectorDescription
      def self.parse(map)
        data = Types::AttackVectorDescription.new
        data.vector_type = map['VectorType']
        return data
      end
    end

    # Operation Parser for ListProtectionGroups
    class ListProtectionGroups
      def self.parse(http_resp)
        data = Types::ListProtectionGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.protection_groups = (Parsers::ProtectionGroups.parse(map['ProtectionGroups']) unless map['ProtectionGroups'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ProtectionGroups
      def self.parse(list)
        list.map do |value|
          Parsers::ProtectionGroup.parse(value) unless value.nil?
        end
      end
    end

    # Error Parser for InvalidPaginationTokenException
    class InvalidPaginationTokenException
      def self.parse(http_resp)
        data = Types::InvalidPaginationTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ListProtections
    class ListProtections
      def self.parse(http_resp)
        data = Types::ListProtectionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.protections = (Parsers::Protections.parse(map['Protections']) unless map['Protections'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Protections
      def self.parse(list)
        list.map do |value|
          Parsers::Protection.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListResourcesInProtectionGroup
    class ListResourcesInProtectionGroup
      def self.parse(http_resp)
        data = Types::ListResourcesInProtectionGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_arns = (Parsers::ResourceArnList.parse(map['ResourceArns']) unless map['ResourceArns'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ResourceArnList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
        end
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

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateApplicationLayerAutomaticResponse
    class UpdateApplicationLayerAutomaticResponse
      def self.parse(http_resp)
        data = Types::UpdateApplicationLayerAutomaticResponseOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateEmergencyContactSettings
    class UpdateEmergencyContactSettings
      def self.parse(http_resp)
        data = Types::UpdateEmergencyContactSettingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateProtectionGroup
    class UpdateProtectionGroup
      def self.parse(http_resp)
        data = Types::UpdateProtectionGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateSubscription
    class UpdateSubscription
      def self.parse(http_resp)
        data = Types::UpdateSubscriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
