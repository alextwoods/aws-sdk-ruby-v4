# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Route53
  module Validators

    class AccountLimit
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountLimit, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:value], ::Integer, context: "#{context}[:value]")
      end
    end

    class ActivateKeySigningKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivateKeySigningKeyInput, context: context)
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class ActivateKeySigningKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivateKeySigningKeyOutput, context: context)
        Validators::ChangeInfo.validate!(input[:change_info], context: "#{context}[:change_info]") unless input[:change_info].nil?
      end
    end

    class AlarmIdentifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlarmIdentifier, context: context)
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class AliasTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AliasTarget, context: context)
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
        Hearth::Validator.validate!(input[:dns_name], ::String, context: "#{context}[:dns_name]")
        Hearth::Validator.validate!(input[:evaluate_target_health], ::TrueClass, ::FalseClass, context: "#{context}[:evaluate_target_health]")
      end
    end

    class AssociateVPCWithHostedZoneInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateVPCWithHostedZoneInput, context: context)
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
        Validators::VPC.validate!(input[:vpc], context: "#{context}[:vpc]") unless input[:vpc].nil?
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
      end
    end

    class AssociateVPCWithHostedZoneOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateVPCWithHostedZoneOutput, context: context)
        Validators::ChangeInfo.validate!(input[:change_info], context: "#{context}[:change_info]") unless input[:change_info].nil?
      end
    end

    class Change
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Change, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Validators::ResourceRecordSet.validate!(input[:resource_record_set], context: "#{context}[:resource_record_set]") unless input[:resource_record_set].nil?
      end
    end

    class ChangeBatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChangeBatch, context: context)
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Validators::Changes.validate!(input[:changes], context: "#{context}[:changes]") unless input[:changes].nil?
      end
    end

    class ChangeCidrCollectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChangeCidrCollectionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:collection_version], ::Integer, context: "#{context}[:collection_version]")
        Validators::CidrCollectionChanges.validate!(input[:changes], context: "#{context}[:changes]") unless input[:changes].nil?
      end
    end

    class ChangeCidrCollectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChangeCidrCollectionOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class ChangeInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChangeInfo, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:submitted_at], ::Time, context: "#{context}[:submitted_at]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
      end
    end

    class ChangeResourceRecordSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChangeResourceRecordSetsInput, context: context)
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
        Validators::ChangeBatch.validate!(input[:change_batch], context: "#{context}[:change_batch]") unless input[:change_batch].nil?
      end
    end

    class ChangeResourceRecordSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChangeResourceRecordSetsOutput, context: context)
        Validators::ChangeInfo.validate!(input[:change_info], context: "#{context}[:change_info]") unless input[:change_info].nil?
      end
    end

    class ChangeTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChangeTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Validators::TagList.validate!(input[:add_tags], context: "#{context}[:add_tags]") unless input[:add_tags].nil?
        Validators::TagKeyList.validate!(input[:remove_tag_keys], context: "#{context}[:remove_tag_keys]") unless input[:remove_tag_keys].nil?
      end
    end

    class ChangeTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChangeTagsForResourceOutput, context: context)
      end
    end

    class Changes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Change.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CheckerIpRanges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ChildHealthCheckList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CidrBlockInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CidrBlockInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CidrBlockSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CidrBlockSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CidrBlockSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CidrBlockSummary, context: context)
        Hearth::Validator.validate!(input[:cidr_block], ::String, context: "#{context}[:cidr_block]")
        Hearth::Validator.validate!(input[:location_name], ::String, context: "#{context}[:location_name]")
      end
    end

    class CidrCollection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CidrCollection, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
      end
    end

    class CidrCollectionAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CidrCollectionAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CidrCollectionChange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CidrCollectionChange, context: context)
        Hearth::Validator.validate!(input[:location_name], ::String, context: "#{context}[:location_name]")
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Validators::CidrList.validate!(input[:cidr_list], context: "#{context}[:cidr_list]") unless input[:cidr_list].nil?
      end
    end

    class CidrCollectionChanges
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CidrCollectionChange.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CidrCollectionInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CidrCollectionInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CidrCollectionVersionMismatchException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CidrCollectionVersionMismatchException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CidrList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CidrRoutingConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CidrRoutingConfig, context: context)
        Hearth::Validator.validate!(input[:collection_id], ::String, context: "#{context}[:collection_id]")
        Hearth::Validator.validate!(input[:location_name], ::String, context: "#{context}[:location_name]")
      end
    end

    class CloudWatchAlarmConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudWatchAlarmConfiguration, context: context)
        Hearth::Validator.validate!(input[:evaluation_periods], ::Integer, context: "#{context}[:evaluation_periods]")
        Hearth::Validator.validate!(input[:threshold], ::Float, context: "#{context}[:threshold]")
        Hearth::Validator.validate!(input[:comparison_operator], ::String, context: "#{context}[:comparison_operator]")
        Hearth::Validator.validate!(input[:period], ::Integer, context: "#{context}[:period]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:namespace], ::String, context: "#{context}[:namespace]")
        Hearth::Validator.validate!(input[:statistic], ::String, context: "#{context}[:statistic]")
        Validators::DimensionList.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
      end
    end

    class CollectionSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CollectionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CollectionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CollectionSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
      end
    end

    class ConcurrentModification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentModification, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConflictingDomainExists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictingDomainExists, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConflictingTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictingTypes, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateCidrCollectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCidrCollectionInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:caller_reference], ::String, context: "#{context}[:caller_reference]")
      end
    end

    class CreateCidrCollectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCidrCollectionOutput, context: context)
        Validators::CidrCollection.validate!(input[:collection], context: "#{context}[:collection]") unless input[:collection].nil?
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class CreateHealthCheckInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHealthCheckInput, context: context)
        Hearth::Validator.validate!(input[:caller_reference], ::String, context: "#{context}[:caller_reference]")
        Validators::HealthCheckConfig.validate!(input[:health_check_config], context: "#{context}[:health_check_config]") unless input[:health_check_config].nil?
      end
    end

    class CreateHealthCheckOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHealthCheckOutput, context: context)
        Validators::HealthCheck.validate!(input[:health_check], context: "#{context}[:health_check]") unless input[:health_check].nil?
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class CreateHostedZoneInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHostedZoneInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::VPC.validate!(input[:vpc], context: "#{context}[:vpc]") unless input[:vpc].nil?
        Hearth::Validator.validate!(input[:caller_reference], ::String, context: "#{context}[:caller_reference]")
        Validators::HostedZoneConfig.validate!(input[:hosted_zone_config], context: "#{context}[:hosted_zone_config]") unless input[:hosted_zone_config].nil?
        Hearth::Validator.validate!(input[:delegation_set_id], ::String, context: "#{context}[:delegation_set_id]")
      end
    end

    class CreateHostedZoneOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHostedZoneOutput, context: context)
        Validators::HostedZone.validate!(input[:hosted_zone], context: "#{context}[:hosted_zone]") unless input[:hosted_zone].nil?
        Validators::ChangeInfo.validate!(input[:change_info], context: "#{context}[:change_info]") unless input[:change_info].nil?
        Validators::DelegationSet.validate!(input[:delegation_set], context: "#{context}[:delegation_set]") unless input[:delegation_set].nil?
        Validators::VPC.validate!(input[:vpc], context: "#{context}[:vpc]") unless input[:vpc].nil?
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class CreateKeySigningKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateKeySigningKeyInput, context: context)
        Hearth::Validator.validate!(input[:caller_reference], ::String, context: "#{context}[:caller_reference]")
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
        Hearth::Validator.validate!(input[:key_management_service_arn], ::String, context: "#{context}[:key_management_service_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class CreateKeySigningKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateKeySigningKeyOutput, context: context)
        Validators::ChangeInfo.validate!(input[:change_info], context: "#{context}[:change_info]") unless input[:change_info].nil?
        Validators::KeySigningKey.validate!(input[:key_signing_key], context: "#{context}[:key_signing_key]") unless input[:key_signing_key].nil?
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class CreateQueryLoggingConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateQueryLoggingConfigInput, context: context)
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
        Hearth::Validator.validate!(input[:cloud_watch_logs_log_group_arn], ::String, context: "#{context}[:cloud_watch_logs_log_group_arn]")
      end
    end

    class CreateQueryLoggingConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateQueryLoggingConfigOutput, context: context)
        Validators::QueryLoggingConfig.validate!(input[:query_logging_config], context: "#{context}[:query_logging_config]") unless input[:query_logging_config].nil?
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class CreateReusableDelegationSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReusableDelegationSetInput, context: context)
        Hearth::Validator.validate!(input[:caller_reference], ::String, context: "#{context}[:caller_reference]")
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
      end
    end

    class CreateReusableDelegationSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReusableDelegationSetOutput, context: context)
        Validators::DelegationSet.validate!(input[:delegation_set], context: "#{context}[:delegation_set]") unless input[:delegation_set].nil?
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class CreateTrafficPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTrafficPolicyInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:document], ::String, context: "#{context}[:document]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
      end
    end

    class CreateTrafficPolicyInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTrafficPolicyInstanceInput, context: context)
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:ttl], ::Integer, context: "#{context}[:ttl]")
        Hearth::Validator.validate!(input[:traffic_policy_id], ::String, context: "#{context}[:traffic_policy_id]")
        Hearth::Validator.validate!(input[:traffic_policy_version], ::Integer, context: "#{context}[:traffic_policy_version]")
      end
    end

    class CreateTrafficPolicyInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTrafficPolicyInstanceOutput, context: context)
        Validators::TrafficPolicyInstance.validate!(input[:traffic_policy_instance], context: "#{context}[:traffic_policy_instance]") unless input[:traffic_policy_instance].nil?
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class CreateTrafficPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTrafficPolicyOutput, context: context)
        Validators::TrafficPolicy.validate!(input[:traffic_policy], context: "#{context}[:traffic_policy]") unless input[:traffic_policy].nil?
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class CreateTrafficPolicyVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTrafficPolicyVersionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:document], ::String, context: "#{context}[:document]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
      end
    end

    class CreateTrafficPolicyVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTrafficPolicyVersionOutput, context: context)
        Validators::TrafficPolicy.validate!(input[:traffic_policy], context: "#{context}[:traffic_policy]") unless input[:traffic_policy].nil?
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class CreateVPCAssociationAuthorizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVPCAssociationAuthorizationInput, context: context)
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
        Validators::VPC.validate!(input[:vpc], context: "#{context}[:vpc]") unless input[:vpc].nil?
      end
    end

    class CreateVPCAssociationAuthorizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVPCAssociationAuthorizationOutput, context: context)
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
        Validators::VPC.validate!(input[:vpc], context: "#{context}[:vpc]") unless input[:vpc].nil?
      end
    end

    class DNSSECNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DNSSECNotFound, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DNSSECStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DNSSECStatus, context: context)
        Hearth::Validator.validate!(input[:serve_signature], ::String, context: "#{context}[:serve_signature]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
      end
    end

    class DeactivateKeySigningKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeactivateKeySigningKeyInput, context: context)
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeactivateKeySigningKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeactivateKeySigningKeyOutput, context: context)
        Validators::ChangeInfo.validate!(input[:change_info], context: "#{context}[:change_info]") unless input[:change_info].nil?
      end
    end

    class DelegationSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DelegationSet, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:caller_reference], ::String, context: "#{context}[:caller_reference]")
        Validators::DelegationSetNameServers.validate!(input[:name_servers], context: "#{context}[:name_servers]") unless input[:name_servers].nil?
      end
    end

    class DelegationSetAlreadyCreated
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DelegationSetAlreadyCreated, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DelegationSetAlreadyReusable
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DelegationSetAlreadyReusable, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DelegationSetInUse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DelegationSetInUse, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DelegationSetNameServers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DelegationSetNotAvailable
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DelegationSetNotAvailable, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DelegationSetNotReusable
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DelegationSetNotReusable, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DelegationSets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DelegationSet.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteCidrCollectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCidrCollectionInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteCidrCollectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCidrCollectionOutput, context: context)
      end
    end

    class DeleteHealthCheckInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteHealthCheckInput, context: context)
        Hearth::Validator.validate!(input[:health_check_id], ::String, context: "#{context}[:health_check_id]")
      end
    end

    class DeleteHealthCheckOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteHealthCheckOutput, context: context)
      end
    end

    class DeleteHostedZoneInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteHostedZoneInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteHostedZoneOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteHostedZoneOutput, context: context)
        Validators::ChangeInfo.validate!(input[:change_info], context: "#{context}[:change_info]") unless input[:change_info].nil?
      end
    end

    class DeleteKeySigningKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteKeySigningKeyInput, context: context)
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteKeySigningKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteKeySigningKeyOutput, context: context)
        Validators::ChangeInfo.validate!(input[:change_info], context: "#{context}[:change_info]") unless input[:change_info].nil?
      end
    end

    class DeleteQueryLoggingConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteQueryLoggingConfigInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteQueryLoggingConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteQueryLoggingConfigOutput, context: context)
      end
    end

    class DeleteReusableDelegationSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReusableDelegationSetInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteReusableDelegationSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReusableDelegationSetOutput, context: context)
      end
    end

    class DeleteTrafficPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTrafficPolicyInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
      end
    end

    class DeleteTrafficPolicyInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTrafficPolicyInstanceInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteTrafficPolicyInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTrafficPolicyInstanceOutput, context: context)
      end
    end

    class DeleteTrafficPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTrafficPolicyOutput, context: context)
      end
    end

    class DeleteVPCAssociationAuthorizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVPCAssociationAuthorizationInput, context: context)
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
        Validators::VPC.validate!(input[:vpc], context: "#{context}[:vpc]") unless input[:vpc].nil?
      end
    end

    class DeleteVPCAssociationAuthorizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVPCAssociationAuthorizationOutput, context: context)
      end
    end

    class Dimension
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Dimension, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class DimensionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Dimension.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DisableHostedZoneDNSSECInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableHostedZoneDNSSECInput, context: context)
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
      end
    end

    class DisableHostedZoneDNSSECOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableHostedZoneDNSSECOutput, context: context)
        Validators::ChangeInfo.validate!(input[:change_info], context: "#{context}[:change_info]") unless input[:change_info].nil?
      end
    end

    class DisassociateVPCFromHostedZoneInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateVPCFromHostedZoneInput, context: context)
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
        Validators::VPC.validate!(input[:vpc], context: "#{context}[:vpc]") unless input[:vpc].nil?
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
      end
    end

    class DisassociateVPCFromHostedZoneOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateVPCFromHostedZoneOutput, context: context)
        Validators::ChangeInfo.validate!(input[:change_info], context: "#{context}[:change_info]") unless input[:change_info].nil?
      end
    end

    class EnableHostedZoneDNSSECInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableHostedZoneDNSSECInput, context: context)
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
      end
    end

    class EnableHostedZoneDNSSECOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableHostedZoneDNSSECOutput, context: context)
        Validators::ChangeInfo.validate!(input[:change_info], context: "#{context}[:change_info]") unless input[:change_info].nil?
      end
    end

    class ErrorMessages
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GeoLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GeoLocation, context: context)
        Hearth::Validator.validate!(input[:continent_code], ::String, context: "#{context}[:continent_code]")
        Hearth::Validator.validate!(input[:country_code], ::String, context: "#{context}[:country_code]")
        Hearth::Validator.validate!(input[:subdivision_code], ::String, context: "#{context}[:subdivision_code]")
      end
    end

    class GeoLocationDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GeoLocationDetails, context: context)
        Hearth::Validator.validate!(input[:continent_code], ::String, context: "#{context}[:continent_code]")
        Hearth::Validator.validate!(input[:continent_name], ::String, context: "#{context}[:continent_name]")
        Hearth::Validator.validate!(input[:country_code], ::String, context: "#{context}[:country_code]")
        Hearth::Validator.validate!(input[:country_name], ::String, context: "#{context}[:country_name]")
        Hearth::Validator.validate!(input[:subdivision_code], ::String, context: "#{context}[:subdivision_code]")
        Hearth::Validator.validate!(input[:subdivision_name], ::String, context: "#{context}[:subdivision_name]")
      end
    end

    class GeoLocationDetailsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::GeoLocationDetails.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetAccountLimitInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccountLimitInput, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class GetAccountLimitOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccountLimitOutput, context: context)
        Validators::AccountLimit.validate!(input[:limit], context: "#{context}[:limit]") unless input[:limit].nil?
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
      end
    end

    class GetChangeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetChangeInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetChangeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetChangeOutput, context: context)
        Validators::ChangeInfo.validate!(input[:change_info], context: "#{context}[:change_info]") unless input[:change_info].nil?
      end
    end

    class GetCheckerIpRangesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCheckerIpRangesInput, context: context)
      end
    end

    class GetCheckerIpRangesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCheckerIpRangesOutput, context: context)
        Validators::CheckerIpRanges.validate!(input[:checker_ip_ranges], context: "#{context}[:checker_ip_ranges]") unless input[:checker_ip_ranges].nil?
      end
    end

    class GetDNSSECInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDNSSECInput, context: context)
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
      end
    end

    class GetDNSSECOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDNSSECOutput, context: context)
        Validators::DNSSECStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        Validators::KeySigningKeys.validate!(input[:key_signing_keys], context: "#{context}[:key_signing_keys]") unless input[:key_signing_keys].nil?
      end
    end

    class GetGeoLocationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGeoLocationInput, context: context)
        Hearth::Validator.validate!(input[:continent_code], ::String, context: "#{context}[:continent_code]")
        Hearth::Validator.validate!(input[:country_code], ::String, context: "#{context}[:country_code]")
        Hearth::Validator.validate!(input[:subdivision_code], ::String, context: "#{context}[:subdivision_code]")
      end
    end

    class GetGeoLocationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGeoLocationOutput, context: context)
        Validators::GeoLocationDetails.validate!(input[:geo_location_details], context: "#{context}[:geo_location_details]") unless input[:geo_location_details].nil?
      end
    end

    class GetHealthCheckCountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetHealthCheckCountInput, context: context)
      end
    end

    class GetHealthCheckCountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetHealthCheckCountOutput, context: context)
        Hearth::Validator.validate!(input[:health_check_count], ::Integer, context: "#{context}[:health_check_count]")
      end
    end

    class GetHealthCheckInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetHealthCheckInput, context: context)
        Hearth::Validator.validate!(input[:health_check_id], ::String, context: "#{context}[:health_check_id]")
      end
    end

    class GetHealthCheckLastFailureReasonInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetHealthCheckLastFailureReasonInput, context: context)
        Hearth::Validator.validate!(input[:health_check_id], ::String, context: "#{context}[:health_check_id]")
      end
    end

    class GetHealthCheckLastFailureReasonOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetHealthCheckLastFailureReasonOutput, context: context)
        Validators::HealthCheckObservations.validate!(input[:health_check_observations], context: "#{context}[:health_check_observations]") unless input[:health_check_observations].nil?
      end
    end

    class GetHealthCheckOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetHealthCheckOutput, context: context)
        Validators::HealthCheck.validate!(input[:health_check], context: "#{context}[:health_check]") unless input[:health_check].nil?
      end
    end

    class GetHealthCheckStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetHealthCheckStatusInput, context: context)
        Hearth::Validator.validate!(input[:health_check_id], ::String, context: "#{context}[:health_check_id]")
      end
    end

    class GetHealthCheckStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetHealthCheckStatusOutput, context: context)
        Validators::HealthCheckObservations.validate!(input[:health_check_observations], context: "#{context}[:health_check_observations]") unless input[:health_check_observations].nil?
      end
    end

    class GetHostedZoneCountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetHostedZoneCountInput, context: context)
      end
    end

    class GetHostedZoneCountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetHostedZoneCountOutput, context: context)
        Hearth::Validator.validate!(input[:hosted_zone_count], ::Integer, context: "#{context}[:hosted_zone_count]")
      end
    end

    class GetHostedZoneInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetHostedZoneInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetHostedZoneLimitInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetHostedZoneLimitInput, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
      end
    end

    class GetHostedZoneLimitOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetHostedZoneLimitOutput, context: context)
        Validators::HostedZoneLimit.validate!(input[:limit], context: "#{context}[:limit]") unless input[:limit].nil?
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
      end
    end

    class GetHostedZoneOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetHostedZoneOutput, context: context)
        Validators::HostedZone.validate!(input[:hosted_zone], context: "#{context}[:hosted_zone]") unless input[:hosted_zone].nil?
        Validators::DelegationSet.validate!(input[:delegation_set], context: "#{context}[:delegation_set]") unless input[:delegation_set].nil?
        Validators::VPCs.validate!(input[:vp_cs], context: "#{context}[:vp_cs]") unless input[:vp_cs].nil?
      end
    end

    class GetQueryLoggingConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetQueryLoggingConfigInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetQueryLoggingConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetQueryLoggingConfigOutput, context: context)
        Validators::QueryLoggingConfig.validate!(input[:query_logging_config], context: "#{context}[:query_logging_config]") unless input[:query_logging_config].nil?
      end
    end

    class GetReusableDelegationSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetReusableDelegationSetInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetReusableDelegationSetLimitInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetReusableDelegationSetLimitInput, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:delegation_set_id], ::String, context: "#{context}[:delegation_set_id]")
      end
    end

    class GetReusableDelegationSetLimitOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetReusableDelegationSetLimitOutput, context: context)
        Validators::ReusableDelegationSetLimit.validate!(input[:limit], context: "#{context}[:limit]") unless input[:limit].nil?
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
      end
    end

    class GetReusableDelegationSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetReusableDelegationSetOutput, context: context)
        Validators::DelegationSet.validate!(input[:delegation_set], context: "#{context}[:delegation_set]") unless input[:delegation_set].nil?
      end
    end

    class GetTrafficPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTrafficPolicyInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
      end
    end

    class GetTrafficPolicyInstanceCountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTrafficPolicyInstanceCountInput, context: context)
      end
    end

    class GetTrafficPolicyInstanceCountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTrafficPolicyInstanceCountOutput, context: context)
        Hearth::Validator.validate!(input[:traffic_policy_instance_count], ::Integer, context: "#{context}[:traffic_policy_instance_count]")
      end
    end

    class GetTrafficPolicyInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTrafficPolicyInstanceInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetTrafficPolicyInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTrafficPolicyInstanceOutput, context: context)
        Validators::TrafficPolicyInstance.validate!(input[:traffic_policy_instance], context: "#{context}[:traffic_policy_instance]") unless input[:traffic_policy_instance].nil?
      end
    end

    class GetTrafficPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTrafficPolicyOutput, context: context)
        Validators::TrafficPolicy.validate!(input[:traffic_policy], context: "#{context}[:traffic_policy]") unless input[:traffic_policy].nil?
      end
    end

    class HealthCheck
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HealthCheck, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:caller_reference], ::String, context: "#{context}[:caller_reference]")
        Validators::LinkedService.validate!(input[:linked_service], context: "#{context}[:linked_service]") unless input[:linked_service].nil?
        Validators::HealthCheckConfig.validate!(input[:health_check_config], context: "#{context}[:health_check_config]") unless input[:health_check_config].nil?
        Hearth::Validator.validate!(input[:health_check_version], ::Integer, context: "#{context}[:health_check_version]")
        Validators::CloudWatchAlarmConfiguration.validate!(input[:cloud_watch_alarm_configuration], context: "#{context}[:cloud_watch_alarm_configuration]") unless input[:cloud_watch_alarm_configuration].nil?
      end
    end

    class HealthCheckAlreadyExists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HealthCheckAlreadyExists, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class HealthCheckConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HealthCheckConfig, context: context)
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:resource_path], ::String, context: "#{context}[:resource_path]")
        Hearth::Validator.validate!(input[:fully_qualified_domain_name], ::String, context: "#{context}[:fully_qualified_domain_name]")
        Hearth::Validator.validate!(input[:search_string], ::String, context: "#{context}[:search_string]")
        Hearth::Validator.validate!(input[:request_interval], ::Integer, context: "#{context}[:request_interval]")
        Hearth::Validator.validate!(input[:failure_threshold], ::Integer, context: "#{context}[:failure_threshold]")
        Hearth::Validator.validate!(input[:measure_latency], ::TrueClass, ::FalseClass, context: "#{context}[:measure_latency]")
        Hearth::Validator.validate!(input[:inverted], ::TrueClass, ::FalseClass, context: "#{context}[:inverted]")
        Hearth::Validator.validate!(input[:disabled], ::TrueClass, ::FalseClass, context: "#{context}[:disabled]")
        Hearth::Validator.validate!(input[:health_threshold], ::Integer, context: "#{context}[:health_threshold]")
        Validators::ChildHealthCheckList.validate!(input[:child_health_checks], context: "#{context}[:child_health_checks]") unless input[:child_health_checks].nil?
        Hearth::Validator.validate!(input[:enable_sni], ::TrueClass, ::FalseClass, context: "#{context}[:enable_sni]")
        Validators::HealthCheckRegionList.validate!(input[:regions], context: "#{context}[:regions]") unless input[:regions].nil?
        Validators::AlarmIdentifier.validate!(input[:alarm_identifier], context: "#{context}[:alarm_identifier]") unless input[:alarm_identifier].nil?
        Hearth::Validator.validate!(input[:insufficient_data_health_status], ::String, context: "#{context}[:insufficient_data_health_status]")
        Hearth::Validator.validate!(input[:routing_control_arn], ::String, context: "#{context}[:routing_control_arn]")
      end
    end

    class HealthCheckInUse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HealthCheckInUse, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class HealthCheckObservation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HealthCheckObservation, context: context)
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Validators::StatusReport.validate!(input[:status_report], context: "#{context}[:status_report]") unless input[:status_report].nil?
      end
    end

    class HealthCheckObservations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::HealthCheckObservation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HealthCheckRegionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class HealthCheckVersionMismatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HealthCheckVersionMismatch, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class HealthChecks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::HealthCheck.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HostedZone
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HostedZone, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:caller_reference], ::String, context: "#{context}[:caller_reference]")
        Validators::HostedZoneConfig.validate!(input[:config], context: "#{context}[:config]") unless input[:config].nil?
        Hearth::Validator.validate!(input[:resource_record_set_count], ::Integer, context: "#{context}[:resource_record_set_count]")
        Validators::LinkedService.validate!(input[:linked_service], context: "#{context}[:linked_service]") unless input[:linked_service].nil?
      end
    end

    class HostedZoneAlreadyExists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HostedZoneAlreadyExists, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class HostedZoneConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HostedZoneConfig, context: context)
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
        Hearth::Validator.validate!(input[:private_zone], ::TrueClass, ::FalseClass, context: "#{context}[:private_zone]")
      end
    end

    class HostedZoneLimit
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HostedZoneLimit, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:value], ::Integer, context: "#{context}[:value]")
      end
    end

    class HostedZoneNotEmpty
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HostedZoneNotEmpty, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class HostedZoneNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HostedZoneNotFound, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class HostedZoneNotPrivate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HostedZoneNotPrivate, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class HostedZoneOwner
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HostedZoneOwner, context: context)
        Hearth::Validator.validate!(input[:owning_account], ::String, context: "#{context}[:owning_account]")
        Hearth::Validator.validate!(input[:owning_service], ::String, context: "#{context}[:owning_service]")
      end
    end

    class HostedZonePartiallyDelegated
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HostedZonePartiallyDelegated, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class HostedZoneSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::HostedZoneSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HostedZoneSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HostedZoneSummary, context: context)
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::HostedZoneOwner.validate!(input[:owner], context: "#{context}[:owner]") unless input[:owner].nil?
      end
    end

    class HostedZones
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::HostedZone.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IncompatibleVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IncompatibleVersion, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InsufficientCloudWatchLogsResourcePolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsufficientCloudWatchLogsResourcePolicy, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidArgument
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidArgument, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidChangeBatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidChangeBatch, context: context)
        Validators::ErrorMessages.validate!(input[:messages], context: "#{context}[:messages]") unless input[:messages].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDomainName
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDomainName, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidInput, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidKMSArn
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidKMSArn, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidKeySigningKeyName
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidKeySigningKeyName, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidKeySigningKeyStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidKeySigningKeyStatus, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidPaginationToken
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidPaginationToken, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSigningStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSigningStatus, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTrafficPolicyDocument
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTrafficPolicyDocument, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidVPCId
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidVPCId, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KeySigningKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeySigningKey, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:kms_arn], ::String, context: "#{context}[:kms_arn]")
        Hearth::Validator.validate!(input[:flag], ::Integer, context: "#{context}[:flag]")
        Hearth::Validator.validate!(input[:signing_algorithm_mnemonic], ::String, context: "#{context}[:signing_algorithm_mnemonic]")
        Hearth::Validator.validate!(input[:signing_algorithm_type], ::Integer, context: "#{context}[:signing_algorithm_type]")
        Hearth::Validator.validate!(input[:digest_algorithm_mnemonic], ::String, context: "#{context}[:digest_algorithm_mnemonic]")
        Hearth::Validator.validate!(input[:digest_algorithm_type], ::Integer, context: "#{context}[:digest_algorithm_type]")
        Hearth::Validator.validate!(input[:key_tag], ::Integer, context: "#{context}[:key_tag]")
        Hearth::Validator.validate!(input[:digest_value], ::String, context: "#{context}[:digest_value]")
        Hearth::Validator.validate!(input[:public_key], ::String, context: "#{context}[:public_key]")
        Hearth::Validator.validate!(input[:ds_record], ::String, context: "#{context}[:ds_record]")
        Hearth::Validator.validate!(input[:dnskey_record], ::String, context: "#{context}[:dnskey_record]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
      end
    end

    class KeySigningKeyAlreadyExists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeySigningKeyAlreadyExists, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KeySigningKeyInParentDSRecord
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeySigningKeyInParentDSRecord, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KeySigningKeyInUse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeySigningKeyInUse, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KeySigningKeyWithActiveStatusNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeySigningKeyWithActiveStatusNotFound, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KeySigningKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::KeySigningKey.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LastVPCAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LastVPCAssociation, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LimitsExceeded
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitsExceeded, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LinkedService
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LinkedService, context: context)
        Hearth::Validator.validate!(input[:service_principal], ::String, context: "#{context}[:service_principal]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class ListCidrBlocksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCidrBlocksInput, context: context)
        Hearth::Validator.validate!(input[:collection_id], ::String, context: "#{context}[:collection_id]")
        Hearth::Validator.validate!(input[:location_name], ::String, context: "#{context}[:location_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListCidrBlocksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCidrBlocksOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::CidrBlockSummaries.validate!(input[:cidr_blocks], context: "#{context}[:cidr_blocks]") unless input[:cidr_blocks].nil?
      end
    end

    class ListCidrCollectionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCidrCollectionsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListCidrCollectionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCidrCollectionsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::CollectionSummaries.validate!(input[:cidr_collections], context: "#{context}[:cidr_collections]") unless input[:cidr_collections].nil?
      end
    end

    class ListCidrLocationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCidrLocationsInput, context: context)
        Hearth::Validator.validate!(input[:collection_id], ::String, context: "#{context}[:collection_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListCidrLocationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCidrLocationsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::LocationSummaries.validate!(input[:cidr_locations], context: "#{context}[:cidr_locations]") unless input[:cidr_locations].nil?
      end
    end

    class ListGeoLocationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGeoLocationsInput, context: context)
        Hearth::Validator.validate!(input[:start_continent_code], ::String, context: "#{context}[:start_continent_code]")
        Hearth::Validator.validate!(input[:start_country_code], ::String, context: "#{context}[:start_country_code]")
        Hearth::Validator.validate!(input[:start_subdivision_code], ::String, context: "#{context}[:start_subdivision_code]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListGeoLocationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGeoLocationsOutput, context: context)
        Validators::GeoLocationDetailsList.validate!(input[:geo_location_details_list], context: "#{context}[:geo_location_details_list]") unless input[:geo_location_details_list].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:next_continent_code], ::String, context: "#{context}[:next_continent_code]")
        Hearth::Validator.validate!(input[:next_country_code], ::String, context: "#{context}[:next_country_code]")
        Hearth::Validator.validate!(input[:next_subdivision_code], ::String, context: "#{context}[:next_subdivision_code]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListHealthChecksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHealthChecksInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListHealthChecksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHealthChecksOutput, context: context)
        Validators::HealthChecks.validate!(input[:health_checks], context: "#{context}[:health_checks]") unless input[:health_checks].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListHostedZonesByNameInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHostedZonesByNameInput, context: context)
        Hearth::Validator.validate!(input[:dns_name], ::String, context: "#{context}[:dns_name]")
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListHostedZonesByNameOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHostedZonesByNameOutput, context: context)
        Validators::HostedZones.validate!(input[:hosted_zones], context: "#{context}[:hosted_zones]") unless input[:hosted_zones].nil?
        Hearth::Validator.validate!(input[:dns_name], ::String, context: "#{context}[:dns_name]")
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:next_dns_name], ::String, context: "#{context}[:next_dns_name]")
        Hearth::Validator.validate!(input[:next_hosted_zone_id], ::String, context: "#{context}[:next_hosted_zone_id]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListHostedZonesByVPCInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHostedZonesByVPCInput, context: context)
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:vpc_region], ::String, context: "#{context}[:vpc_region]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListHostedZonesByVPCOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHostedZonesByVPCOutput, context: context)
        Validators::HostedZoneSummaries.validate!(input[:hosted_zone_summaries], context: "#{context}[:hosted_zone_summaries]") unless input[:hosted_zone_summaries].nil?
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListHostedZonesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHostedZonesInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
        Hearth::Validator.validate!(input[:delegation_set_id], ::String, context: "#{context}[:delegation_set_id]")
      end
    end

    class ListHostedZonesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHostedZonesOutput, context: context)
        Validators::HostedZones.validate!(input[:hosted_zones], context: "#{context}[:hosted_zones]") unless input[:hosted_zones].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListQueryLoggingConfigsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListQueryLoggingConfigsInput, context: context)
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListQueryLoggingConfigsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListQueryLoggingConfigsOutput, context: context)
        Validators::QueryLoggingConfigs.validate!(input[:query_logging_configs], context: "#{context}[:query_logging_configs]") unless input[:query_logging_configs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListResourceRecordSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourceRecordSetsInput, context: context)
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
        Hearth::Validator.validate!(input[:start_record_name], ::String, context: "#{context}[:start_record_name]")
        Hearth::Validator.validate!(input[:start_record_type], ::String, context: "#{context}[:start_record_type]")
        Hearth::Validator.validate!(input[:start_record_identifier], ::String, context: "#{context}[:start_record_identifier]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListResourceRecordSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourceRecordSetsOutput, context: context)
        Validators::ResourceRecordSets.validate!(input[:resource_record_sets], context: "#{context}[:resource_record_sets]") unless input[:resource_record_sets].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:next_record_name], ::String, context: "#{context}[:next_record_name]")
        Hearth::Validator.validate!(input[:next_record_type], ::String, context: "#{context}[:next_record_type]")
        Hearth::Validator.validate!(input[:next_record_identifier], ::String, context: "#{context}[:next_record_identifier]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListReusableDelegationSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReusableDelegationSetsInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListReusableDelegationSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReusableDelegationSetsOutput, context: context)
        Validators::DelegationSets.validate!(input[:delegation_sets], context: "#{context}[:delegation_sets]") unless input[:delegation_sets].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:next_marker], ::String, context: "#{context}[:next_marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::ResourceTagSet.validate!(input[:resource_tag_set], context: "#{context}[:resource_tag_set]") unless input[:resource_tag_set].nil?
      end
    end

    class ListTagsForResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourcesInput, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Validators::TagResourceIdList.validate!(input[:resource_ids], context: "#{context}[:resource_ids]") unless input[:resource_ids].nil?
      end
    end

    class ListTagsForResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourcesOutput, context: context)
        Validators::ResourceTagSetList.validate!(input[:resource_tag_sets], context: "#{context}[:resource_tag_sets]") unless input[:resource_tag_sets].nil?
      end
    end

    class ListTrafficPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTrafficPoliciesInput, context: context)
        Hearth::Validator.validate!(input[:traffic_policy_id_marker], ::String, context: "#{context}[:traffic_policy_id_marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListTrafficPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTrafficPoliciesOutput, context: context)
        Validators::TrafficPolicySummaries.validate!(input[:traffic_policy_summaries], context: "#{context}[:traffic_policy_summaries]") unless input[:traffic_policy_summaries].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:traffic_policy_id_marker], ::String, context: "#{context}[:traffic_policy_id_marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListTrafficPolicyInstancesByHostedZoneInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTrafficPolicyInstancesByHostedZoneInput, context: context)
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
        Hearth::Validator.validate!(input[:traffic_policy_instance_name_marker], ::String, context: "#{context}[:traffic_policy_instance_name_marker]")
        Hearth::Validator.validate!(input[:traffic_policy_instance_type_marker], ::String, context: "#{context}[:traffic_policy_instance_type_marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListTrafficPolicyInstancesByHostedZoneOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTrafficPolicyInstancesByHostedZoneOutput, context: context)
        Validators::TrafficPolicyInstances.validate!(input[:traffic_policy_instances], context: "#{context}[:traffic_policy_instances]") unless input[:traffic_policy_instances].nil?
        Hearth::Validator.validate!(input[:traffic_policy_instance_name_marker], ::String, context: "#{context}[:traffic_policy_instance_name_marker]")
        Hearth::Validator.validate!(input[:traffic_policy_instance_type_marker], ::String, context: "#{context}[:traffic_policy_instance_type_marker]")
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListTrafficPolicyInstancesByPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTrafficPolicyInstancesByPolicyInput, context: context)
        Hearth::Validator.validate!(input[:traffic_policy_id], ::String, context: "#{context}[:traffic_policy_id]")
        Hearth::Validator.validate!(input[:traffic_policy_version], ::Integer, context: "#{context}[:traffic_policy_version]")
        Hearth::Validator.validate!(input[:hosted_zone_id_marker], ::String, context: "#{context}[:hosted_zone_id_marker]")
        Hearth::Validator.validate!(input[:traffic_policy_instance_name_marker], ::String, context: "#{context}[:traffic_policy_instance_name_marker]")
        Hearth::Validator.validate!(input[:traffic_policy_instance_type_marker], ::String, context: "#{context}[:traffic_policy_instance_type_marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListTrafficPolicyInstancesByPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTrafficPolicyInstancesByPolicyOutput, context: context)
        Validators::TrafficPolicyInstances.validate!(input[:traffic_policy_instances], context: "#{context}[:traffic_policy_instances]") unless input[:traffic_policy_instances].nil?
        Hearth::Validator.validate!(input[:hosted_zone_id_marker], ::String, context: "#{context}[:hosted_zone_id_marker]")
        Hearth::Validator.validate!(input[:traffic_policy_instance_name_marker], ::String, context: "#{context}[:traffic_policy_instance_name_marker]")
        Hearth::Validator.validate!(input[:traffic_policy_instance_type_marker], ::String, context: "#{context}[:traffic_policy_instance_type_marker]")
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListTrafficPolicyInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTrafficPolicyInstancesInput, context: context)
        Hearth::Validator.validate!(input[:hosted_zone_id_marker], ::String, context: "#{context}[:hosted_zone_id_marker]")
        Hearth::Validator.validate!(input[:traffic_policy_instance_name_marker], ::String, context: "#{context}[:traffic_policy_instance_name_marker]")
        Hearth::Validator.validate!(input[:traffic_policy_instance_type_marker], ::String, context: "#{context}[:traffic_policy_instance_type_marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListTrafficPolicyInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTrafficPolicyInstancesOutput, context: context)
        Validators::TrafficPolicyInstances.validate!(input[:traffic_policy_instances], context: "#{context}[:traffic_policy_instances]") unless input[:traffic_policy_instances].nil?
        Hearth::Validator.validate!(input[:hosted_zone_id_marker], ::String, context: "#{context}[:hosted_zone_id_marker]")
        Hearth::Validator.validate!(input[:traffic_policy_instance_name_marker], ::String, context: "#{context}[:traffic_policy_instance_name_marker]")
        Hearth::Validator.validate!(input[:traffic_policy_instance_type_marker], ::String, context: "#{context}[:traffic_policy_instance_type_marker]")
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListTrafficPolicyVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTrafficPolicyVersionsInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:traffic_policy_version_marker], ::String, context: "#{context}[:traffic_policy_version_marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListTrafficPolicyVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTrafficPolicyVersionsOutput, context: context)
        Validators::TrafficPolicies.validate!(input[:traffic_policies], context: "#{context}[:traffic_policies]") unless input[:traffic_policies].nil?
        Hearth::Validator.validate!(input[:is_truncated], ::TrueClass, ::FalseClass, context: "#{context}[:is_truncated]")
        Hearth::Validator.validate!(input[:traffic_policy_version_marker], ::String, context: "#{context}[:traffic_policy_version_marker]")
        Hearth::Validator.validate!(input[:max_items], ::Integer, context: "#{context}[:max_items]")
      end
    end

    class ListVPCAssociationAuthorizationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVPCAssociationAuthorizationsInput, context: context)
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListVPCAssociationAuthorizationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListVPCAssociationAuthorizationsOutput, context: context)
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::VPCs.validate!(input[:vp_cs], context: "#{context}[:vp_cs]") unless input[:vp_cs].nil?
      end
    end

    class LocationSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LocationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LocationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LocationSummary, context: context)
        Hearth::Validator.validate!(input[:location_name], ::String, context: "#{context}[:location_name]")
      end
    end

    class NoSuchChange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchChange, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchCidrCollectionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchCidrCollectionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchCidrLocationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchCidrLocationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchCloudWatchLogsLogGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchCloudWatchLogsLogGroup, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchDelegationSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchDelegationSet, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchGeoLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchGeoLocation, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchHealthCheck
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchHealthCheck, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchHostedZone
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchHostedZone, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchKeySigningKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchKeySigningKey, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchQueryLoggingConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchQueryLoggingConfig, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchTrafficPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchTrafficPolicy, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchTrafficPolicyInstance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchTrafficPolicyInstance, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NotAuthorizedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotAuthorizedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PriorRequestNotComplete
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PriorRequestNotComplete, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PublicZoneVPCAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublicZoneVPCAssociation, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class QueryLoggingConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryLoggingConfig, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
        Hearth::Validator.validate!(input[:cloud_watch_logs_log_group_arn], ::String, context: "#{context}[:cloud_watch_logs_log_group_arn]")
      end
    end

    class QueryLoggingConfigAlreadyExists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryLoggingConfigAlreadyExists, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class QueryLoggingConfigs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::QueryLoggingConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecordData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResettableElementNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceRecord
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceRecord, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ResourceRecordSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceRecordSet, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:set_identifier], ::String, context: "#{context}[:set_identifier]")
        Hearth::Validator.validate!(input[:weight], ::Integer, context: "#{context}[:weight]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
        Validators::GeoLocation.validate!(input[:geo_location], context: "#{context}[:geo_location]") unless input[:geo_location].nil?
        Hearth::Validator.validate!(input[:failover], ::String, context: "#{context}[:failover]")
        Hearth::Validator.validate!(input[:multi_value_answer], ::TrueClass, ::FalseClass, context: "#{context}[:multi_value_answer]")
        Hearth::Validator.validate!(input[:ttl], ::Integer, context: "#{context}[:ttl]")
        Validators::ResourceRecords.validate!(input[:resource_records], context: "#{context}[:resource_records]") unless input[:resource_records].nil?
        Validators::AliasTarget.validate!(input[:alias_target], context: "#{context}[:alias_target]") unless input[:alias_target].nil?
        Hearth::Validator.validate!(input[:health_check_id], ::String, context: "#{context}[:health_check_id]")
        Hearth::Validator.validate!(input[:traffic_policy_instance_id], ::String, context: "#{context}[:traffic_policy_instance_id]")
        Validators::CidrRoutingConfig.validate!(input[:cidr_routing_config], context: "#{context}[:cidr_routing_config]") unless input[:cidr_routing_config].nil?
      end
    end

    class ResourceRecordSets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResourceRecordSet.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceRecords
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResourceRecord.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceTagSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceTagSet, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ResourceTagSetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ResourceTagSet.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReusableDelegationSetLimit
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReusableDelegationSetLimit, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:value], ::Integer, context: "#{context}[:value]")
      end
    end

    class StatusReport
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StatusReport, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:checked_time], ::Time, context: "#{context}[:checked_time]")
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

    class TagResourceIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TestDNSAnswerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestDNSAnswerInput, context: context)
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
        Hearth::Validator.validate!(input[:record_name], ::String, context: "#{context}[:record_name]")
        Hearth::Validator.validate!(input[:record_type], ::String, context: "#{context}[:record_type]")
        Hearth::Validator.validate!(input[:resolver_ip], ::String, context: "#{context}[:resolver_ip]")
        Hearth::Validator.validate!(input[:edns0_client_subnet_ip], ::String, context: "#{context}[:edns0_client_subnet_ip]")
        Hearth::Validator.validate!(input[:edns0_client_subnet_mask], ::String, context: "#{context}[:edns0_client_subnet_mask]")
      end
    end

    class TestDNSAnswerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestDNSAnswerOutput, context: context)
        Hearth::Validator.validate!(input[:nameserver], ::String, context: "#{context}[:nameserver]")
        Hearth::Validator.validate!(input[:record_name], ::String, context: "#{context}[:record_name]")
        Hearth::Validator.validate!(input[:record_type], ::String, context: "#{context}[:record_type]")
        Validators::RecordData.validate!(input[:record_data], context: "#{context}[:record_data]") unless input[:record_data].nil?
        Hearth::Validator.validate!(input[:response_code], ::String, context: "#{context}[:response_code]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyHealthChecks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyHealthChecks, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyHostedZones
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyHostedZones, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyKeySigningKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyKeySigningKeys, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyTrafficPolicies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTrafficPolicies, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyTrafficPolicyInstances
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTrafficPolicyInstances, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyTrafficPolicyVersionsForCurrentPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTrafficPolicyVersionsForCurrentPolicy, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyVPCAssociationAuthorizations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyVPCAssociationAuthorizations, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TrafficPolicies
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TrafficPolicy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TrafficPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrafficPolicy, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:document], ::String, context: "#{context}[:document]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
      end
    end

    class TrafficPolicyAlreadyExists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrafficPolicyAlreadyExists, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TrafficPolicyInUse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrafficPolicyInUse, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TrafficPolicyInstance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrafficPolicyInstance, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:ttl], ::Integer, context: "#{context}[:ttl]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:traffic_policy_id], ::String, context: "#{context}[:traffic_policy_id]")
        Hearth::Validator.validate!(input[:traffic_policy_version], ::Integer, context: "#{context}[:traffic_policy_version]")
        Hearth::Validator.validate!(input[:traffic_policy_type], ::String, context: "#{context}[:traffic_policy_type]")
      end
    end

    class TrafficPolicyInstanceAlreadyExists
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrafficPolicyInstanceAlreadyExists, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TrafficPolicyInstances
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TrafficPolicyInstance.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TrafficPolicySummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TrafficPolicySummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TrafficPolicySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrafficPolicySummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:latest_version], ::Integer, context: "#{context}[:latest_version]")
        Hearth::Validator.validate!(input[:traffic_policy_count], ::Integer, context: "#{context}[:traffic_policy_count]")
      end
    end

    class UpdateHealthCheckInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateHealthCheckInput, context: context)
        Hearth::Validator.validate!(input[:health_check_id], ::String, context: "#{context}[:health_check_id]")
        Hearth::Validator.validate!(input[:health_check_version], ::Integer, context: "#{context}[:health_check_version]")
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:resource_path], ::String, context: "#{context}[:resource_path]")
        Hearth::Validator.validate!(input[:fully_qualified_domain_name], ::String, context: "#{context}[:fully_qualified_domain_name]")
        Hearth::Validator.validate!(input[:search_string], ::String, context: "#{context}[:search_string]")
        Hearth::Validator.validate!(input[:failure_threshold], ::Integer, context: "#{context}[:failure_threshold]")
        Hearth::Validator.validate!(input[:inverted], ::TrueClass, ::FalseClass, context: "#{context}[:inverted]")
        Hearth::Validator.validate!(input[:disabled], ::TrueClass, ::FalseClass, context: "#{context}[:disabled]")
        Hearth::Validator.validate!(input[:health_threshold], ::Integer, context: "#{context}[:health_threshold]")
        Validators::ChildHealthCheckList.validate!(input[:child_health_checks], context: "#{context}[:child_health_checks]") unless input[:child_health_checks].nil?
        Hearth::Validator.validate!(input[:enable_sni], ::TrueClass, ::FalseClass, context: "#{context}[:enable_sni]")
        Validators::HealthCheckRegionList.validate!(input[:regions], context: "#{context}[:regions]") unless input[:regions].nil?
        Validators::AlarmIdentifier.validate!(input[:alarm_identifier], context: "#{context}[:alarm_identifier]") unless input[:alarm_identifier].nil?
        Hearth::Validator.validate!(input[:insufficient_data_health_status], ::String, context: "#{context}[:insufficient_data_health_status]")
        Validators::ResettableElementNameList.validate!(input[:reset_elements], context: "#{context}[:reset_elements]") unless input[:reset_elements].nil?
      end
    end

    class UpdateHealthCheckOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateHealthCheckOutput, context: context)
        Validators::HealthCheck.validate!(input[:health_check], context: "#{context}[:health_check]") unless input[:health_check].nil?
      end
    end

    class UpdateHostedZoneCommentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateHostedZoneCommentInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
      end
    end

    class UpdateHostedZoneCommentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateHostedZoneCommentOutput, context: context)
        Validators::HostedZone.validate!(input[:hosted_zone], context: "#{context}[:hosted_zone]") unless input[:hosted_zone].nil?
      end
    end

    class UpdateTrafficPolicyCommentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTrafficPolicyCommentInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:version], ::Integer, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:comment], ::String, context: "#{context}[:comment]")
      end
    end

    class UpdateTrafficPolicyCommentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTrafficPolicyCommentOutput, context: context)
        Validators::TrafficPolicy.validate!(input[:traffic_policy], context: "#{context}[:traffic_policy]") unless input[:traffic_policy].nil?
      end
    end

    class UpdateTrafficPolicyInstanceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTrafficPolicyInstanceInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:ttl], ::Integer, context: "#{context}[:ttl]")
        Hearth::Validator.validate!(input[:traffic_policy_id], ::String, context: "#{context}[:traffic_policy_id]")
        Hearth::Validator.validate!(input[:traffic_policy_version], ::Integer, context: "#{context}[:traffic_policy_version]")
      end
    end

    class UpdateTrafficPolicyInstanceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTrafficPolicyInstanceOutput, context: context)
        Validators::TrafficPolicyInstance.validate!(input[:traffic_policy_instance], context: "#{context}[:traffic_policy_instance]") unless input[:traffic_policy_instance].nil?
      end
    end

    class VPC
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VPC, context: context)
        Hearth::Validator.validate!(input[:vpc_region], ::String, context: "#{context}[:vpc_region]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
      end
    end

    class VPCAssociationAuthorizationNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VPCAssociationAuthorizationNotFound, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class VPCAssociationNotFound
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VPCAssociationNotFound, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class VPCs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::VPC.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
