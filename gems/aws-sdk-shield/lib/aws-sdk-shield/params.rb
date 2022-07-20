# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Shield
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AccessDeniedForDependencyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedForDependencyException, context: context)
        type = Types::AccessDeniedForDependencyException.new
        type.message = params[:message]
        type
      end
    end

    module ApplicationLayerAutomaticResponseConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationLayerAutomaticResponseConfiguration, context: context)
        type = Types::ApplicationLayerAutomaticResponseConfiguration.new
        type.status = params[:status]
        type.action = ResponseAction.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type
      end
    end

    module AssociateDRTLogBucketInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateDRTLogBucketInput, context: context)
        type = Types::AssociateDRTLogBucketInput.new
        type.log_bucket = params[:log_bucket]
        type
      end
    end

    module AssociateDRTLogBucketOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateDRTLogBucketOutput, context: context)
        type = Types::AssociateDRTLogBucketOutput.new
        type
      end
    end

    module AssociateDRTRoleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateDRTRoleInput, context: context)
        type = Types::AssociateDRTRoleInput.new
        type.role_arn = params[:role_arn]
        type
      end
    end

    module AssociateDRTRoleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateDRTRoleOutput, context: context)
        type = Types::AssociateDRTRoleOutput.new
        type
      end
    end

    module AssociateHealthCheckInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateHealthCheckInput, context: context)
        type = Types::AssociateHealthCheckInput.new
        type.protection_id = params[:protection_id]
        type.health_check_arn = params[:health_check_arn]
        type
      end
    end

    module AssociateHealthCheckOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateHealthCheckOutput, context: context)
        type = Types::AssociateHealthCheckOutput.new
        type
      end
    end

    module AssociateProactiveEngagementDetailsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateProactiveEngagementDetailsInput, context: context)
        type = Types::AssociateProactiveEngagementDetailsInput.new
        type.emergency_contact_list = EmergencyContactList.build(params[:emergency_contact_list], context: "#{context}[:emergency_contact_list]") unless params[:emergency_contact_list].nil?
        type
      end
    end

    module AssociateProactiveEngagementDetailsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateProactiveEngagementDetailsOutput, context: context)
        type = Types::AssociateProactiveEngagementDetailsOutput.new
        type
      end
    end

    module AttackDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttackDetail, context: context)
        type = Types::AttackDetail.new
        type.attack_id = params[:attack_id]
        type.resource_arn = params[:resource_arn]
        type.sub_resources = SubResourceSummaryList.build(params[:sub_resources], context: "#{context}[:sub_resources]") unless params[:sub_resources].nil?
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.attack_counters = SummarizedCounterList.build(params[:attack_counters], context: "#{context}[:attack_counters]") unless params[:attack_counters].nil?
        type.attack_properties = AttackProperties.build(params[:attack_properties], context: "#{context}[:attack_properties]") unless params[:attack_properties].nil?
        type.mitigations = MitigationList.build(params[:mitigations], context: "#{context}[:mitigations]") unless params[:mitigations].nil?
        type
      end
    end

    module AttackProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttackProperty.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AttackProperty
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttackProperty, context: context)
        type = Types::AttackProperty.new
        type.attack_layer = params[:attack_layer]
        type.attack_property_identifier = params[:attack_property_identifier]
        type.top_contributors = TopContributors.build(params[:top_contributors], context: "#{context}[:top_contributors]") unless params[:top_contributors].nil?
        type.unit = params[:unit]
        type.total = params[:total]
        type
      end
    end

    module AttackStatisticsDataItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttackStatisticsDataItem, context: context)
        type = Types::AttackStatisticsDataItem.new
        type.attack_volume = AttackVolume.build(params[:attack_volume], context: "#{context}[:attack_volume]") unless params[:attack_volume].nil?
        type.attack_count = params[:attack_count]
        type
      end
    end

    module AttackStatisticsDataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttackStatisticsDataItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AttackSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttackSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AttackSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttackSummary, context: context)
        type = Types::AttackSummary.new
        type.attack_id = params[:attack_id]
        type.resource_arn = params[:resource_arn]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.attack_vectors = AttackVectorDescriptionList.build(params[:attack_vectors], context: "#{context}[:attack_vectors]") unless params[:attack_vectors].nil?
        type
      end
    end

    module AttackVectorDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttackVectorDescription, context: context)
        type = Types::AttackVectorDescription.new
        type.vector_type = params[:vector_type]
        type
      end
    end

    module AttackVectorDescriptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttackVectorDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AttackVolume
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttackVolume, context: context)
        type = Types::AttackVolume.new
        type.bits_per_second = AttackVolumeStatistics.build(params[:bits_per_second], context: "#{context}[:bits_per_second]") unless params[:bits_per_second].nil?
        type.packets_per_second = AttackVolumeStatistics.build(params[:packets_per_second], context: "#{context}[:packets_per_second]") unless params[:packets_per_second].nil?
        type.requests_per_second = AttackVolumeStatistics.build(params[:requests_per_second], context: "#{context}[:requests_per_second]") unless params[:requests_per_second].nil?
        type
      end
    end

    module AttackVolumeStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttackVolumeStatistics, context: context)
        type = Types::AttackVolumeStatistics.new
        type.max = params[:max]
        type
      end
    end

    module BlockAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BlockAction, context: context)
        type = Types::BlockAction.new
        type
      end
    end

    module Contributor
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Contributor, context: context)
        type = Types::Contributor.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module CountAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CountAction, context: context)
        type = Types::CountAction.new
        type
      end
    end

    module CreateProtectionGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProtectionGroupInput, context: context)
        type = Types::CreateProtectionGroupInput.new
        type.protection_group_id = params[:protection_group_id]
        type.aggregation = params[:aggregation]
        type.pattern = params[:pattern]
        type.resource_type = params[:resource_type]
        type.members = ProtectionGroupMembers.build(params[:members], context: "#{context}[:members]") unless params[:members].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateProtectionGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProtectionGroupOutput, context: context)
        type = Types::CreateProtectionGroupOutput.new
        type
      end
    end

    module CreateProtectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProtectionInput, context: context)
        type = Types::CreateProtectionInput.new
        type.name = params[:name]
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateProtectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProtectionOutput, context: context)
        type = Types::CreateProtectionOutput.new
        type.protection_id = params[:protection_id]
        type
      end
    end

    module CreateSubscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSubscriptionInput, context: context)
        type = Types::CreateSubscriptionInput.new
        type
      end
    end

    module CreateSubscriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSubscriptionOutput, context: context)
        type = Types::CreateSubscriptionOutput.new
        type
      end
    end

    module DeleteProtectionGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProtectionGroupInput, context: context)
        type = Types::DeleteProtectionGroupInput.new
        type.protection_group_id = params[:protection_group_id]
        type
      end
    end

    module DeleteProtectionGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProtectionGroupOutput, context: context)
        type = Types::DeleteProtectionGroupOutput.new
        type
      end
    end

    module DeleteProtectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProtectionInput, context: context)
        type = Types::DeleteProtectionInput.new
        type.protection_id = params[:protection_id]
        type
      end
    end

    module DeleteProtectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProtectionOutput, context: context)
        type = Types::DeleteProtectionOutput.new
        type
      end
    end

    module DeleteSubscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSubscriptionInput, context: context)
        type = Types::DeleteSubscriptionInput.new
        type
      end
    end

    module DeleteSubscriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSubscriptionOutput, context: context)
        type = Types::DeleteSubscriptionOutput.new
        type
      end
    end

    module DescribeAttackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAttackInput, context: context)
        type = Types::DescribeAttackInput.new
        type.attack_id = params[:attack_id]
        type
      end
    end

    module DescribeAttackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAttackOutput, context: context)
        type = Types::DescribeAttackOutput.new
        type.attack = AttackDetail.build(params[:attack], context: "#{context}[:attack]") unless params[:attack].nil?
        type
      end
    end

    module DescribeAttackStatisticsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAttackStatisticsInput, context: context)
        type = Types::DescribeAttackStatisticsInput.new
        type
      end
    end

    module DescribeAttackStatisticsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAttackStatisticsOutput, context: context)
        type = Types::DescribeAttackStatisticsOutput.new
        type.time_range = TimeRange.build(params[:time_range], context: "#{context}[:time_range]") unless params[:time_range].nil?
        type.data_items = AttackStatisticsDataList.build(params[:data_items], context: "#{context}[:data_items]") unless params[:data_items].nil?
        type
      end
    end

    module DescribeDRTAccessInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDRTAccessInput, context: context)
        type = Types::DescribeDRTAccessInput.new
        type
      end
    end

    module DescribeDRTAccessOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDRTAccessOutput, context: context)
        type = Types::DescribeDRTAccessOutput.new
        type.role_arn = params[:role_arn]
        type.log_bucket_list = LogBucketList.build(params[:log_bucket_list], context: "#{context}[:log_bucket_list]") unless params[:log_bucket_list].nil?
        type
      end
    end

    module DescribeEmergencyContactSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEmergencyContactSettingsInput, context: context)
        type = Types::DescribeEmergencyContactSettingsInput.new
        type
      end
    end

    module DescribeEmergencyContactSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEmergencyContactSettingsOutput, context: context)
        type = Types::DescribeEmergencyContactSettingsOutput.new
        type.emergency_contact_list = EmergencyContactList.build(params[:emergency_contact_list], context: "#{context}[:emergency_contact_list]") unless params[:emergency_contact_list].nil?
        type
      end
    end

    module DescribeProtectionGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProtectionGroupInput, context: context)
        type = Types::DescribeProtectionGroupInput.new
        type.protection_group_id = params[:protection_group_id]
        type
      end
    end

    module DescribeProtectionGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProtectionGroupOutput, context: context)
        type = Types::DescribeProtectionGroupOutput.new
        type.protection_group = ProtectionGroup.build(params[:protection_group], context: "#{context}[:protection_group]") unless params[:protection_group].nil?
        type
      end
    end

    module DescribeProtectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProtectionInput, context: context)
        type = Types::DescribeProtectionInput.new
        type.protection_id = params[:protection_id]
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module DescribeProtectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProtectionOutput, context: context)
        type = Types::DescribeProtectionOutput.new
        type.protection = Protection.build(params[:protection], context: "#{context}[:protection]") unless params[:protection].nil?
        type
      end
    end

    module DescribeSubscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSubscriptionInput, context: context)
        type = Types::DescribeSubscriptionInput.new
        type
      end
    end

    module DescribeSubscriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSubscriptionOutput, context: context)
        type = Types::DescribeSubscriptionOutput.new
        type.subscription = Subscription.build(params[:subscription], context: "#{context}[:subscription]") unless params[:subscription].nil?
        type
      end
    end

    module DisableApplicationLayerAutomaticResponseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableApplicationLayerAutomaticResponseInput, context: context)
        type = Types::DisableApplicationLayerAutomaticResponseInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module DisableApplicationLayerAutomaticResponseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableApplicationLayerAutomaticResponseOutput, context: context)
        type = Types::DisableApplicationLayerAutomaticResponseOutput.new
        type
      end
    end

    module DisableProactiveEngagementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableProactiveEngagementInput, context: context)
        type = Types::DisableProactiveEngagementInput.new
        type
      end
    end

    module DisableProactiveEngagementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableProactiveEngagementOutput, context: context)
        type = Types::DisableProactiveEngagementOutput.new
        type
      end
    end

    module DisassociateDRTLogBucketInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateDRTLogBucketInput, context: context)
        type = Types::DisassociateDRTLogBucketInput.new
        type.log_bucket = params[:log_bucket]
        type
      end
    end

    module DisassociateDRTLogBucketOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateDRTLogBucketOutput, context: context)
        type = Types::DisassociateDRTLogBucketOutput.new
        type
      end
    end

    module DisassociateDRTRoleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateDRTRoleInput, context: context)
        type = Types::DisassociateDRTRoleInput.new
        type
      end
    end

    module DisassociateDRTRoleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateDRTRoleOutput, context: context)
        type = Types::DisassociateDRTRoleOutput.new
        type
      end
    end

    module DisassociateHealthCheckInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateHealthCheckInput, context: context)
        type = Types::DisassociateHealthCheckInput.new
        type.protection_id = params[:protection_id]
        type.health_check_arn = params[:health_check_arn]
        type
      end
    end

    module DisassociateHealthCheckOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateHealthCheckOutput, context: context)
        type = Types::DisassociateHealthCheckOutput.new
        type
      end
    end

    module EmergencyContact
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EmergencyContact, context: context)
        type = Types::EmergencyContact.new
        type.email_address = params[:email_address]
        type.phone_number = params[:phone_number]
        type.contact_notes = params[:contact_notes]
        type
      end
    end

    module EmergencyContactList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EmergencyContact.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EnableApplicationLayerAutomaticResponseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableApplicationLayerAutomaticResponseInput, context: context)
        type = Types::EnableApplicationLayerAutomaticResponseInput.new
        type.resource_arn = params[:resource_arn]
        type.action = ResponseAction.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type
      end
    end

    module EnableApplicationLayerAutomaticResponseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableApplicationLayerAutomaticResponseOutput, context: context)
        type = Types::EnableApplicationLayerAutomaticResponseOutput.new
        type
      end
    end

    module EnableProactiveEngagementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableProactiveEngagementInput, context: context)
        type = Types::EnableProactiveEngagementInput.new
        type
      end
    end

    module EnableProactiveEngagementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableProactiveEngagementOutput, context: context)
        type = Types::EnableProactiveEngagementOutput.new
        type
      end
    end

    module GetSubscriptionStateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSubscriptionStateInput, context: context)
        type = Types::GetSubscriptionStateInput.new
        type
      end
    end

    module GetSubscriptionStateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSubscriptionStateOutput, context: context)
        type = Types::GetSubscriptionStateOutput.new
        type.subscription_state = params[:subscription_state]
        type
      end
    end

    module HealthCheckIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InternalErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalErrorException, context: context)
        type = Types::InternalErrorException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidOperationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidOperationException, context: context)
        type = Types::InvalidOperationException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidPaginationTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidPaginationTokenException, context: context)
        type = Types::InvalidPaginationTokenException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterException, context: context)
        type = Types::InvalidParameterException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type.fields = ValidationExceptionFieldList.build(params[:fields], context: "#{context}[:fields]") unless params[:fields].nil?
        type
      end
    end

    module InvalidResourceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidResourceException, context: context)
        type = Types::InvalidResourceException.new
        type.message = params[:message]
        type
      end
    end

    module Limit
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Limit, context: context)
        type = Types::Limit.new
        type.type = params[:type]
        type.max = params[:max]
        type
      end
    end

    module Limits
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Limit.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LimitsExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitsExceededException, context: context)
        type = Types::LimitsExceededException.new
        type.message = params[:message]
        type.type = params[:type]
        type.limit = params[:limit]
        type
      end
    end

    module ListAttacksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAttacksInput, context: context)
        type = Types::ListAttacksInput.new
        type.resource_arns = ResourceArnFilterList.build(params[:resource_arns], context: "#{context}[:resource_arns]") unless params[:resource_arns].nil?
        type.start_time = TimeRange.build(params[:start_time], context: "#{context}[:start_time]") unless params[:start_time].nil?
        type.end_time = TimeRange.build(params[:end_time], context: "#{context}[:end_time]") unless params[:end_time].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAttacksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAttacksOutput, context: context)
        type = Types::ListAttacksOutput.new
        type.attack_summaries = AttackSummaries.build(params[:attack_summaries], context: "#{context}[:attack_summaries]") unless params[:attack_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListProtectionGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProtectionGroupsInput, context: context)
        type = Types::ListProtectionGroupsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListProtectionGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProtectionGroupsOutput, context: context)
        type = Types::ListProtectionGroupsOutput.new
        type.protection_groups = ProtectionGroups.build(params[:protection_groups], context: "#{context}[:protection_groups]") unless params[:protection_groups].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListProtectionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProtectionsInput, context: context)
        type = Types::ListProtectionsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListProtectionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProtectionsOutput, context: context)
        type = Types::ListProtectionsOutput.new
        type.protections = Protections.build(params[:protections], context: "#{context}[:protections]") unless params[:protections].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListResourcesInProtectionGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourcesInProtectionGroupInput, context: context)
        type = Types::ListResourcesInProtectionGroupInput.new
        type.protection_group_id = params[:protection_group_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListResourcesInProtectionGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourcesInProtectionGroupOutput, context: context)
        type = Types::ListResourcesInProtectionGroupOutput.new
        type.resource_arns = ResourceArnList.build(params[:resource_arns], context: "#{context}[:resource_arns]") unless params[:resource_arns].nil?
        type.next_token = params[:next_token]
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
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module LockedSubscriptionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LockedSubscriptionException, context: context)
        type = Types::LockedSubscriptionException.new
        type.message = params[:message]
        type
      end
    end

    module LogBucketList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Mitigation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Mitigation, context: context)
        type = Types::Mitigation.new
        type.mitigation_name = params[:mitigation_name]
        type
      end
    end

    module MitigationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Mitigation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NoAssociatedRoleException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoAssociatedRoleException, context: context)
        type = Types::NoAssociatedRoleException.new
        type.message = params[:message]
        type
      end
    end

    module OptimisticLockException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OptimisticLockException, context: context)
        type = Types::OptimisticLockException.new
        type.message = params[:message]
        type
      end
    end

    module Protection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Protection, context: context)
        type = Types::Protection.new
        type.id = params[:id]
        type.name = params[:name]
        type.resource_arn = params[:resource_arn]
        type.health_check_ids = HealthCheckIds.build(params[:health_check_ids], context: "#{context}[:health_check_ids]") unless params[:health_check_ids].nil?
        type.protection_arn = params[:protection_arn]
        type.application_layer_automatic_response_configuration = ApplicationLayerAutomaticResponseConfiguration.build(params[:application_layer_automatic_response_configuration], context: "#{context}[:application_layer_automatic_response_configuration]") unless params[:application_layer_automatic_response_configuration].nil?
        type
      end
    end

    module ProtectionGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProtectionGroup, context: context)
        type = Types::ProtectionGroup.new
        type.protection_group_id = params[:protection_group_id]
        type.aggregation = params[:aggregation]
        type.pattern = params[:pattern]
        type.resource_type = params[:resource_type]
        type.members = ProtectionGroupMembers.build(params[:members], context: "#{context}[:members]") unless params[:members].nil?
        type.protection_group_arn = params[:protection_group_arn]
        type
      end
    end

    module ProtectionGroupArbitraryPatternLimits
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProtectionGroupArbitraryPatternLimits, context: context)
        type = Types::ProtectionGroupArbitraryPatternLimits.new
        type.max_members = params[:max_members]
        type
      end
    end

    module ProtectionGroupLimits
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProtectionGroupLimits, context: context)
        type = Types::ProtectionGroupLimits.new
        type.max_protection_groups = params[:max_protection_groups]
        type.pattern_type_limits = ProtectionGroupPatternTypeLimits.build(params[:pattern_type_limits], context: "#{context}[:pattern_type_limits]") unless params[:pattern_type_limits].nil?
        type
      end
    end

    module ProtectionGroupMembers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ProtectionGroupPatternTypeLimits
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProtectionGroupPatternTypeLimits, context: context)
        type = Types::ProtectionGroupPatternTypeLimits.new
        type.arbitrary_pattern_limits = ProtectionGroupArbitraryPatternLimits.build(params[:arbitrary_pattern_limits], context: "#{context}[:arbitrary_pattern_limits]") unless params[:arbitrary_pattern_limits].nil?
        type
      end
    end

    module ProtectionGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProtectionGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProtectionLimits
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProtectionLimits, context: context)
        type = Types::ProtectionLimits.new
        type.protected_resource_type_limits = Limits.build(params[:protected_resource_type_limits], context: "#{context}[:protected_resource_type_limits]") unless params[:protected_resource_type_limits].nil?
        type
      end
    end

    module Protections
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Protection.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceAlreadyExistsException, context: context)
        type = Types::ResourceAlreadyExistsException.new
        type.message = params[:message]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module ResourceArnFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceArnList
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
        type.resource_type = params[:resource_type]
        type
      end
    end

    module ResponseAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResponseAction, context: context)
        type = Types::ResponseAction.new
        type.block = BlockAction.build(params[:block], context: "#{context}[:block]") unless params[:block].nil?
        type.count = CountAction.build(params[:count], context: "#{context}[:count]") unless params[:count].nil?
        type
      end
    end

    module SubResourceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubResourceSummary, context: context)
        type = Types::SubResourceSummary.new
        type.type = params[:type]
        type.id = params[:id]
        type.attack_vectors = SummarizedAttackVectorList.build(params[:attack_vectors], context: "#{context}[:attack_vectors]") unless params[:attack_vectors].nil?
        type.counters = SummarizedCounterList.build(params[:counters], context: "#{context}[:counters]") unless params[:counters].nil?
        type
      end
    end

    module SubResourceSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SubResourceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Subscription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Subscription, context: context)
        type = Types::Subscription.new
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.time_commitment_in_seconds = params[:time_commitment_in_seconds]
        type.auto_renew = params[:auto_renew]
        type.limits = Limits.build(params[:limits], context: "#{context}[:limits]") unless params[:limits].nil?
        type.proactive_engagement_status = params[:proactive_engagement_status]
        type.subscription_limits = SubscriptionLimits.build(params[:subscription_limits], context: "#{context}[:subscription_limits]") unless params[:subscription_limits].nil?
        type.subscription_arn = params[:subscription_arn]
        type
      end
    end

    module SubscriptionLimits
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubscriptionLimits, context: context)
        type = Types::SubscriptionLimits.new
        type.protection_limits = ProtectionLimits.build(params[:protection_limits], context: "#{context}[:protection_limits]") unless params[:protection_limits].nil?
        type.protection_group_limits = ProtectionGroupLimits.build(params[:protection_group_limits], context: "#{context}[:protection_group_limits]") unless params[:protection_group_limits].nil?
        type
      end
    end

    module SummarizedAttackVector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SummarizedAttackVector, context: context)
        type = Types::SummarizedAttackVector.new
        type.vector_type = params[:vector_type]
        type.vector_counters = SummarizedCounterList.build(params[:vector_counters], context: "#{context}[:vector_counters]") unless params[:vector_counters].nil?
        type
      end
    end

    module SummarizedAttackVectorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SummarizedAttackVector.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SummarizedCounter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SummarizedCounter, context: context)
        type = Types::SummarizedCounter.new
        type.name = params[:name]
        type.max = params[:max]
        type.average = params[:average]
        type.sum = params[:sum]
        type.n = params[:n]
        type.unit = params[:unit]
        type
      end
    end

    module SummarizedCounterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SummarizedCounter.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module TimeRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimeRange, context: context)
        type = Types::TimeRange.new
        type.from_inclusive = params[:from_inclusive]
        type.to_exclusive = params[:to_exclusive]
        type
      end
    end

    module TopContributors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Contributor.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module UpdateApplicationLayerAutomaticResponseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationLayerAutomaticResponseInput, context: context)
        type = Types::UpdateApplicationLayerAutomaticResponseInput.new
        type.resource_arn = params[:resource_arn]
        type.action = ResponseAction.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type
      end
    end

    module UpdateApplicationLayerAutomaticResponseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationLayerAutomaticResponseOutput, context: context)
        type = Types::UpdateApplicationLayerAutomaticResponseOutput.new
        type
      end
    end

    module UpdateEmergencyContactSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEmergencyContactSettingsInput, context: context)
        type = Types::UpdateEmergencyContactSettingsInput.new
        type.emergency_contact_list = EmergencyContactList.build(params[:emergency_contact_list], context: "#{context}[:emergency_contact_list]") unless params[:emergency_contact_list].nil?
        type
      end
    end

    module UpdateEmergencyContactSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEmergencyContactSettingsOutput, context: context)
        type = Types::UpdateEmergencyContactSettingsOutput.new
        type
      end
    end

    module UpdateProtectionGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProtectionGroupInput, context: context)
        type = Types::UpdateProtectionGroupInput.new
        type.protection_group_id = params[:protection_group_id]
        type.aggregation = params[:aggregation]
        type.pattern = params[:pattern]
        type.resource_type = params[:resource_type]
        type.members = ProtectionGroupMembers.build(params[:members], context: "#{context}[:members]") unless params[:members].nil?
        type
      end
    end

    module UpdateProtectionGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProtectionGroupOutput, context: context)
        type = Types::UpdateProtectionGroupOutput.new
        type
      end
    end

    module UpdateSubscriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSubscriptionInput, context: context)
        type = Types::UpdateSubscriptionInput.new
        type.auto_renew = params[:auto_renew]
        type
      end
    end

    module UpdateSubscriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSubscriptionOutput, context: context)
        type = Types::UpdateSubscriptionOutput.new
        type
      end
    end

    module ValidationExceptionField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationExceptionField, context: context)
        type = Types::ValidationExceptionField.new
        type.name = params[:name]
        type.message = params[:message]
        type
      end
    end

    module ValidationExceptionFieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValidationExceptionField.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
