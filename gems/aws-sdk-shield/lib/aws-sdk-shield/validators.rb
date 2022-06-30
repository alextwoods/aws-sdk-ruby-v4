# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Shield
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AccessDeniedForDependencyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedForDependencyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ApplicationLayerAutomaticResponseConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationLayerAutomaticResponseConfiguration, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::ResponseAction.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
      end
    end

    class AssociateDRTLogBucketInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateDRTLogBucketInput, context: context)
        Hearth::Validator.validate!(input[:log_bucket], ::String, context: "#{context}[:log_bucket]")
      end
    end

    class AssociateDRTLogBucketOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateDRTLogBucketOutput, context: context)
      end
    end

    class AssociateDRTRoleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateDRTRoleInput, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class AssociateDRTRoleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateDRTRoleOutput, context: context)
      end
    end

    class AssociateHealthCheckInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateHealthCheckInput, context: context)
        Hearth::Validator.validate!(input[:protection_id], ::String, context: "#{context}[:protection_id]")
        Hearth::Validator.validate!(input[:health_check_arn], ::String, context: "#{context}[:health_check_arn]")
      end
    end

    class AssociateHealthCheckOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateHealthCheckOutput, context: context)
      end
    end

    class AssociateProactiveEngagementDetailsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateProactiveEngagementDetailsInput, context: context)
        Validators::EmergencyContactList.validate!(input[:emergency_contact_list], context: "#{context}[:emergency_contact_list]") unless input[:emergency_contact_list].nil?
      end
    end

    class AssociateProactiveEngagementDetailsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateProactiveEngagementDetailsOutput, context: context)
      end
    end

    class AttackDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttackDetail, context: context)
        Hearth::Validator.validate!(input[:attack_id], ::String, context: "#{context}[:attack_id]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::SubResourceSummaryList.validate!(input[:sub_resources], context: "#{context}[:sub_resources]") unless input[:sub_resources].nil?
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Validators::SummarizedCounterList.validate!(input[:attack_counters], context: "#{context}[:attack_counters]") unless input[:attack_counters].nil?
        Validators::AttackProperties.validate!(input[:attack_properties], context: "#{context}[:attack_properties]") unless input[:attack_properties].nil?
        Validators::MitigationList.validate!(input[:mitigations], context: "#{context}[:mitigations]") unless input[:mitigations].nil?
      end
    end

    class AttackProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AttackProperty.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AttackProperty
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttackProperty, context: context)
        Hearth::Validator.validate!(input[:attack_layer], ::String, context: "#{context}[:attack_layer]")
        Hearth::Validator.validate!(input[:attack_property_identifier], ::String, context: "#{context}[:attack_property_identifier]")
        Validators::TopContributors.validate!(input[:top_contributors], context: "#{context}[:top_contributors]") unless input[:top_contributors].nil?
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
        Hearth::Validator.validate!(input[:total], ::Integer, context: "#{context}[:total]")
      end
    end

    class AttackStatisticsDataItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttackStatisticsDataItem, context: context)
        Validators::AttackVolume.validate!(input[:attack_volume], context: "#{context}[:attack_volume]") unless input[:attack_volume].nil?
        Hearth::Validator.validate!(input[:attack_count], ::Integer, context: "#{context}[:attack_count]")
      end
    end

    class AttackStatisticsDataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AttackStatisticsDataItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AttackSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AttackSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AttackSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttackSummary, context: context)
        Hearth::Validator.validate!(input[:attack_id], ::String, context: "#{context}[:attack_id]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Validators::AttackVectorDescriptionList.validate!(input[:attack_vectors], context: "#{context}[:attack_vectors]") unless input[:attack_vectors].nil?
      end
    end

    class AttackVectorDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttackVectorDescription, context: context)
        Hearth::Validator.validate!(input[:vector_type], ::String, context: "#{context}[:vector_type]")
      end
    end

    class AttackVectorDescriptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AttackVectorDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AttackVolume
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttackVolume, context: context)
        Validators::AttackVolumeStatistics.validate!(input[:bits_per_second], context: "#{context}[:bits_per_second]") unless input[:bits_per_second].nil?
        Validators::AttackVolumeStatistics.validate!(input[:packets_per_second], context: "#{context}[:packets_per_second]") unless input[:packets_per_second].nil?
        Validators::AttackVolumeStatistics.validate!(input[:requests_per_second], context: "#{context}[:requests_per_second]") unless input[:requests_per_second].nil?
      end
    end

    class AttackVolumeStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttackVolumeStatistics, context: context)
        Hearth::Validator.validate!(input[:max], ::Float, context: "#{context}[:max]")
      end
    end

    class BlockAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BlockAction, context: context)
      end
    end

    class Contributor
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Contributor, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::Integer, context: "#{context}[:value]")
      end
    end

    class CountAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CountAction, context: context)
      end
    end

    class CreateProtectionGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProtectionGroupInput, context: context)
        Hearth::Validator.validate!(input[:protection_group_id], ::String, context: "#{context}[:protection_group_id]")
        Hearth::Validator.validate!(input[:aggregation], ::String, context: "#{context}[:aggregation]")
        Hearth::Validator.validate!(input[:pattern], ::String, context: "#{context}[:pattern]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Validators::ProtectionGroupMembers.validate!(input[:members], context: "#{context}[:members]") unless input[:members].nil?
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateProtectionGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProtectionGroupOutput, context: context)
      end
    end

    class CreateProtectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProtectionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateProtectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProtectionOutput, context: context)
        Hearth::Validator.validate!(input[:protection_id], ::String, context: "#{context}[:protection_id]")
      end
    end

    class CreateSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSubscriptionInput, context: context)
      end
    end

    class CreateSubscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSubscriptionOutput, context: context)
      end
    end

    class DeleteProtectionGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProtectionGroupInput, context: context)
        Hearth::Validator.validate!(input[:protection_group_id], ::String, context: "#{context}[:protection_group_id]")
      end
    end

    class DeleteProtectionGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProtectionGroupOutput, context: context)
      end
    end

    class DeleteProtectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProtectionInput, context: context)
        Hearth::Validator.validate!(input[:protection_id], ::String, context: "#{context}[:protection_id]")
      end
    end

    class DeleteProtectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProtectionOutput, context: context)
      end
    end

    class DeleteSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSubscriptionInput, context: context)
      end
    end

    class DeleteSubscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSubscriptionOutput, context: context)
      end
    end

    class DescribeAttackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAttackInput, context: context)
        Hearth::Validator.validate!(input[:attack_id], ::String, context: "#{context}[:attack_id]")
      end
    end

    class DescribeAttackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAttackOutput, context: context)
        Validators::AttackDetail.validate!(input[:attack], context: "#{context}[:attack]") unless input[:attack].nil?
      end
    end

    class DescribeAttackStatisticsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAttackStatisticsInput, context: context)
      end
    end

    class DescribeAttackStatisticsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAttackStatisticsOutput, context: context)
        Validators::TimeRange.validate!(input[:time_range], context: "#{context}[:time_range]") unless input[:time_range].nil?
        Validators::AttackStatisticsDataList.validate!(input[:data_items], context: "#{context}[:data_items]") unless input[:data_items].nil?
      end
    end

    class DescribeDRTAccessInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDRTAccessInput, context: context)
      end
    end

    class DescribeDRTAccessOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDRTAccessOutput, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::LogBucketList.validate!(input[:log_bucket_list], context: "#{context}[:log_bucket_list]") unless input[:log_bucket_list].nil?
      end
    end

    class DescribeEmergencyContactSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEmergencyContactSettingsInput, context: context)
      end
    end

    class DescribeEmergencyContactSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEmergencyContactSettingsOutput, context: context)
        Validators::EmergencyContactList.validate!(input[:emergency_contact_list], context: "#{context}[:emergency_contact_list]") unless input[:emergency_contact_list].nil?
      end
    end

    class DescribeProtectionGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProtectionGroupInput, context: context)
        Hearth::Validator.validate!(input[:protection_group_id], ::String, context: "#{context}[:protection_group_id]")
      end
    end

    class DescribeProtectionGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProtectionGroupOutput, context: context)
        Validators::ProtectionGroup.validate!(input[:protection_group], context: "#{context}[:protection_group]") unless input[:protection_group].nil?
      end
    end

    class DescribeProtectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProtectionInput, context: context)
        Hearth::Validator.validate!(input[:protection_id], ::String, context: "#{context}[:protection_id]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class DescribeProtectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProtectionOutput, context: context)
        Validators::Protection.validate!(input[:protection], context: "#{context}[:protection]") unless input[:protection].nil?
      end
    end

    class DescribeSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSubscriptionInput, context: context)
      end
    end

    class DescribeSubscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSubscriptionOutput, context: context)
        Validators::Subscription.validate!(input[:subscription], context: "#{context}[:subscription]") unless input[:subscription].nil?
      end
    end

    class DisableApplicationLayerAutomaticResponseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableApplicationLayerAutomaticResponseInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class DisableApplicationLayerAutomaticResponseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableApplicationLayerAutomaticResponseOutput, context: context)
      end
    end

    class DisableProactiveEngagementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableProactiveEngagementInput, context: context)
      end
    end

    class DisableProactiveEngagementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableProactiveEngagementOutput, context: context)
      end
    end

    class DisassociateDRTLogBucketInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateDRTLogBucketInput, context: context)
        Hearth::Validator.validate!(input[:log_bucket], ::String, context: "#{context}[:log_bucket]")
      end
    end

    class DisassociateDRTLogBucketOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateDRTLogBucketOutput, context: context)
      end
    end

    class DisassociateDRTRoleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateDRTRoleInput, context: context)
      end
    end

    class DisassociateDRTRoleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateDRTRoleOutput, context: context)
      end
    end

    class DisassociateHealthCheckInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateHealthCheckInput, context: context)
        Hearth::Validator.validate!(input[:protection_id], ::String, context: "#{context}[:protection_id]")
        Hearth::Validator.validate!(input[:health_check_arn], ::String, context: "#{context}[:health_check_arn]")
      end
    end

    class DisassociateHealthCheckOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateHealthCheckOutput, context: context)
      end
    end

    class EmergencyContact
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EmergencyContact, context: context)
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
        Hearth::Validator.validate!(input[:contact_notes], ::String, context: "#{context}[:contact_notes]")
      end
    end

    class EmergencyContactList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EmergencyContact.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EnableApplicationLayerAutomaticResponseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableApplicationLayerAutomaticResponseInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::ResponseAction.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
      end
    end

    class EnableApplicationLayerAutomaticResponseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableApplicationLayerAutomaticResponseOutput, context: context)
      end
    end

    class EnableProactiveEngagementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableProactiveEngagementInput, context: context)
      end
    end

    class EnableProactiveEngagementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableProactiveEngagementOutput, context: context)
      end
    end

    class GetSubscriptionStateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSubscriptionStateInput, context: context)
      end
    end

    class GetSubscriptionStateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSubscriptionStateOutput, context: context)
        Hearth::Validator.validate!(input[:subscription_state], ::String, context: "#{context}[:subscription_state]")
      end
    end

    class HealthCheckIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InternalErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidOperationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidOperationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidPaginationTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidPaginationTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Validators::ValidationExceptionFieldList.validate!(input[:fields], context: "#{context}[:fields]") unless input[:fields].nil?
      end
    end

    class InvalidResourceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidResourceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Limit
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Limit, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:max], ::Integer, context: "#{context}[:max]")
      end
    end

    class Limits
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Limit.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LimitsExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitsExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class ListAttacksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAttacksInput, context: context)
        Validators::ResourceArnFilterList.validate!(input[:resource_arns], context: "#{context}[:resource_arns]") unless input[:resource_arns].nil?
        Validators::TimeRange.validate!(input[:start_time], context: "#{context}[:start_time]") unless input[:start_time].nil?
        Validators::TimeRange.validate!(input[:end_time], context: "#{context}[:end_time]") unless input[:end_time].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAttacksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAttacksOutput, context: context)
        Validators::AttackSummaries.validate!(input[:attack_summaries], context: "#{context}[:attack_summaries]") unless input[:attack_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListProtectionGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProtectionGroupsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListProtectionGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProtectionGroupsOutput, context: context)
        Validators::ProtectionGroups.validate!(input[:protection_groups], context: "#{context}[:protection_groups]") unless input[:protection_groups].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListProtectionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProtectionsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListProtectionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProtectionsOutput, context: context)
        Validators::Protections.validate!(input[:protections], context: "#{context}[:protections]") unless input[:protections].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListResourcesInProtectionGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourcesInProtectionGroupInput, context: context)
        Hearth::Validator.validate!(input[:protection_group_id], ::String, context: "#{context}[:protection_group_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListResourcesInProtectionGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourcesInProtectionGroupOutput, context: context)
        Validators::ResourceArnList.validate!(input[:resource_arns], context: "#{context}[:resource_arns]") unless input[:resource_arns].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
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
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class LockedSubscriptionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LockedSubscriptionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LogBucketList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Mitigation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Mitigation, context: context)
        Hearth::Validator.validate!(input[:mitigation_name], ::String, context: "#{context}[:mitigation_name]")
      end
    end

    class MitigationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Mitigation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NoAssociatedRoleException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoAssociatedRoleException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OptimisticLockException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OptimisticLockException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Protection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Protection, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::HealthCheckIds.validate!(input[:health_check_ids], context: "#{context}[:health_check_ids]") unless input[:health_check_ids].nil?
        Hearth::Validator.validate!(input[:protection_arn], ::String, context: "#{context}[:protection_arn]")
        Validators::ApplicationLayerAutomaticResponseConfiguration.validate!(input[:application_layer_automatic_response_configuration], context: "#{context}[:application_layer_automatic_response_configuration]") unless input[:application_layer_automatic_response_configuration].nil?
      end
    end

    class ProtectionGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProtectionGroup, context: context)
        Hearth::Validator.validate!(input[:protection_group_id], ::String, context: "#{context}[:protection_group_id]")
        Hearth::Validator.validate!(input[:aggregation], ::String, context: "#{context}[:aggregation]")
        Hearth::Validator.validate!(input[:pattern], ::String, context: "#{context}[:pattern]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Validators::ProtectionGroupMembers.validate!(input[:members], context: "#{context}[:members]") unless input[:members].nil?
        Hearth::Validator.validate!(input[:protection_group_arn], ::String, context: "#{context}[:protection_group_arn]")
      end
    end

    class ProtectionGroupArbitraryPatternLimits
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProtectionGroupArbitraryPatternLimits, context: context)
        Hearth::Validator.validate!(input[:max_members], ::Integer, context: "#{context}[:max_members]")
      end
    end

    class ProtectionGroupLimits
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProtectionGroupLimits, context: context)
        Hearth::Validator.validate!(input[:max_protection_groups], ::Integer, context: "#{context}[:max_protection_groups]")
        Validators::ProtectionGroupPatternTypeLimits.validate!(input[:pattern_type_limits], context: "#{context}[:pattern_type_limits]") unless input[:pattern_type_limits].nil?
      end
    end

    class ProtectionGroupMembers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProtectionGroupPatternTypeLimits
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProtectionGroupPatternTypeLimits, context: context)
        Validators::ProtectionGroupArbitraryPatternLimits.validate!(input[:arbitrary_pattern_limits], context: "#{context}[:arbitrary_pattern_limits]") unless input[:arbitrary_pattern_limits].nil?
      end
    end

    class ProtectionGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ProtectionGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProtectionLimits
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProtectionLimits, context: context)
        Validators::Limits.validate!(input[:protected_resource_type_limits], context: "#{context}[:protected_resource_type_limits]") unless input[:protected_resource_type_limits].nil?
      end
    end

    class Protections
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Protection.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class ResourceArnFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceArnList
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
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class ResponseAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResponseAction, context: context)
        Validators::BlockAction.validate!(input[:block], context: "#{context}[:block]") unless input[:block].nil?
        Validators::CountAction.validate!(input[:count], context: "#{context}[:count]") unless input[:count].nil?
      end
    end

    class SubResourceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubResourceSummary, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::SummarizedAttackVectorList.validate!(input[:attack_vectors], context: "#{context}[:attack_vectors]") unless input[:attack_vectors].nil?
        Validators::SummarizedCounterList.validate!(input[:counters], context: "#{context}[:counters]") unless input[:counters].nil?
      end
    end

    class SubResourceSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SubResourceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Subscription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Subscription, context: context)
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:time_commitment_in_seconds], ::Integer, context: "#{context}[:time_commitment_in_seconds]")
        Hearth::Validator.validate!(input[:auto_renew], ::String, context: "#{context}[:auto_renew]")
        Validators::Limits.validate!(input[:limits], context: "#{context}[:limits]") unless input[:limits].nil?
        Hearth::Validator.validate!(input[:proactive_engagement_status], ::String, context: "#{context}[:proactive_engagement_status]")
        Validators::SubscriptionLimits.validate!(input[:subscription_limits], context: "#{context}[:subscription_limits]") unless input[:subscription_limits].nil?
        Hearth::Validator.validate!(input[:subscription_arn], ::String, context: "#{context}[:subscription_arn]")
      end
    end

    class SubscriptionLimits
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubscriptionLimits, context: context)
        Validators::ProtectionLimits.validate!(input[:protection_limits], context: "#{context}[:protection_limits]") unless input[:protection_limits].nil?
        Validators::ProtectionGroupLimits.validate!(input[:protection_group_limits], context: "#{context}[:protection_group_limits]") unless input[:protection_group_limits].nil?
      end
    end

    class SummarizedAttackVector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SummarizedAttackVector, context: context)
        Hearth::Validator.validate!(input[:vector_type], ::String, context: "#{context}[:vector_type]")
        Validators::SummarizedCounterList.validate!(input[:vector_counters], context: "#{context}[:vector_counters]") unless input[:vector_counters].nil?
      end
    end

    class SummarizedAttackVectorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SummarizedAttackVector.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SummarizedCounter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SummarizedCounter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:max], ::Float, context: "#{context}[:max]")
        Hearth::Validator.validate!(input[:average], ::Float, context: "#{context}[:average]")
        Hearth::Validator.validate!(input[:sum], ::Float, context: "#{context}[:sum]")
        Hearth::Validator.validate!(input[:n], ::Integer, context: "#{context}[:n]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
      end
    end

    class SummarizedCounterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SummarizedCounter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
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

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TimeRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimeRange, context: context)
        Hearth::Validator.validate!(input[:from_inclusive], ::Time, context: "#{context}[:from_inclusive]")
        Hearth::Validator.validate!(input[:to_exclusive], ::Time, context: "#{context}[:to_exclusive]")
      end
    end

    class TopContributors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Contributor.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateApplicationLayerAutomaticResponseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationLayerAutomaticResponseInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::ResponseAction.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
      end
    end

    class UpdateApplicationLayerAutomaticResponseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationLayerAutomaticResponseOutput, context: context)
      end
    end

    class UpdateEmergencyContactSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEmergencyContactSettingsInput, context: context)
        Validators::EmergencyContactList.validate!(input[:emergency_contact_list], context: "#{context}[:emergency_contact_list]") unless input[:emergency_contact_list].nil?
      end
    end

    class UpdateEmergencyContactSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEmergencyContactSettingsOutput, context: context)
      end
    end

    class UpdateProtectionGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProtectionGroupInput, context: context)
        Hearth::Validator.validate!(input[:protection_group_id], ::String, context: "#{context}[:protection_group_id]")
        Hearth::Validator.validate!(input[:aggregation], ::String, context: "#{context}[:aggregation]")
        Hearth::Validator.validate!(input[:pattern], ::String, context: "#{context}[:pattern]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Validators::ProtectionGroupMembers.validate!(input[:members], context: "#{context}[:members]") unless input[:members].nil?
      end
    end

    class UpdateProtectionGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProtectionGroupOutput, context: context)
      end
    end

    class UpdateSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSubscriptionInput, context: context)
        Hearth::Validator.validate!(input[:auto_renew], ::String, context: "#{context}[:auto_renew]")
      end
    end

    class UpdateSubscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSubscriptionOutput, context: context)
      end
    end

    class ValidationExceptionField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationExceptionField, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ValidationExceptionFieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ValidationExceptionField.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
