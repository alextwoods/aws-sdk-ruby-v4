# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Route53
  module Params

    module AccountLimit
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountLimit, context: context)
        type = Types::AccountLimit.new
        type.type = params[:type]
        type.value = params[:value]
        type
      end
    end

    module ActivateKeySigningKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivateKeySigningKeyInput, context: context)
        type = Types::ActivateKeySigningKeyInput.new
        type.hosted_zone_id = params[:hosted_zone_id]
        type.name = params[:name]
        type
      end
    end

    module ActivateKeySigningKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivateKeySigningKeyOutput, context: context)
        type = Types::ActivateKeySigningKeyOutput.new
        type.change_info = ChangeInfo.build(params[:change_info], context: "#{context}[:change_info]") unless params[:change_info].nil?
        type
      end
    end

    module AlarmIdentifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlarmIdentifier, context: context)
        type = Types::AlarmIdentifier.new
        type.region = params[:region]
        type.name = params[:name]
        type
      end
    end

    module AliasTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AliasTarget, context: context)
        type = Types::AliasTarget.new
        type.hosted_zone_id = params[:hosted_zone_id]
        type.dns_name = params[:dns_name]
        type.evaluate_target_health = params[:evaluate_target_health]
        type
      end
    end

    module AssociateVPCWithHostedZoneInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateVPCWithHostedZoneInput, context: context)
        type = Types::AssociateVPCWithHostedZoneInput.new
        type.hosted_zone_id = params[:hosted_zone_id]
        type.vpc = VPC.build(params[:vpc], context: "#{context}[:vpc]") unless params[:vpc].nil?
        type.comment = params[:comment]
        type
      end
    end

    module AssociateVPCWithHostedZoneOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateVPCWithHostedZoneOutput, context: context)
        type = Types::AssociateVPCWithHostedZoneOutput.new
        type.change_info = ChangeInfo.build(params[:change_info], context: "#{context}[:change_info]") unless params[:change_info].nil?
        type
      end
    end

    module Change
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Change, context: context)
        type = Types::Change.new
        type.action = params[:action]
        type.resource_record_set = ResourceRecordSet.build(params[:resource_record_set], context: "#{context}[:resource_record_set]") unless params[:resource_record_set].nil?
        type
      end
    end

    module ChangeBatch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChangeBatch, context: context)
        type = Types::ChangeBatch.new
        type.comment = params[:comment]
        type.changes = Changes.build(params[:changes], context: "#{context}[:changes]") unless params[:changes].nil?
        type
      end
    end

    module ChangeCidrCollectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChangeCidrCollectionInput, context: context)
        type = Types::ChangeCidrCollectionInput.new
        type.id = params[:id]
        type.collection_version = params[:collection_version]
        type.changes = CidrCollectionChanges.build(params[:changes], context: "#{context}[:changes]") unless params[:changes].nil?
        type
      end
    end

    module ChangeCidrCollectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChangeCidrCollectionOutput, context: context)
        type = Types::ChangeCidrCollectionOutput.new
        type.id = params[:id]
        type
      end
    end

    module ChangeInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChangeInfo, context: context)
        type = Types::ChangeInfo.new
        type.id = params[:id]
        type.status = params[:status]
        type.submitted_at = params[:submitted_at]
        type.comment = params[:comment]
        type
      end
    end

    module ChangeResourceRecordSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChangeResourceRecordSetsInput, context: context)
        type = Types::ChangeResourceRecordSetsInput.new
        type.hosted_zone_id = params[:hosted_zone_id]
        type.change_batch = ChangeBatch.build(params[:change_batch], context: "#{context}[:change_batch]") unless params[:change_batch].nil?
        type
      end
    end

    module ChangeResourceRecordSetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChangeResourceRecordSetsOutput, context: context)
        type = Types::ChangeResourceRecordSetsOutput.new
        type.change_info = ChangeInfo.build(params[:change_info], context: "#{context}[:change_info]") unless params[:change_info].nil?
        type
      end
    end

    module ChangeTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChangeTagsForResourceInput, context: context)
        type = Types::ChangeTagsForResourceInput.new
        type.resource_type = params[:resource_type]
        type.resource_id = params[:resource_id]
        type.add_tags = TagList.build(params[:add_tags], context: "#{context}[:add_tags]") unless params[:add_tags].nil?
        type.remove_tag_keys = TagKeyList.build(params[:remove_tag_keys], context: "#{context}[:remove_tag_keys]") unless params[:remove_tag_keys].nil?
        type
      end
    end

    module ChangeTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChangeTagsForResourceOutput, context: context)
        type = Types::ChangeTagsForResourceOutput.new
        type
      end
    end

    module Changes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Change.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CheckerIpRanges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ChildHealthCheckList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CidrBlockInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CidrBlockInUseException, context: context)
        type = Types::CidrBlockInUseException.new
        type.message = params[:message]
        type
      end
    end

    module CidrBlockSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CidrBlockSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CidrBlockSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CidrBlockSummary, context: context)
        type = Types::CidrBlockSummary.new
        type.cidr_block = params[:cidr_block]
        type.location_name = params[:location_name]
        type
      end
    end

    module CidrCollection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CidrCollection, context: context)
        type = Types::CidrCollection.new
        type.arn = params[:arn]
        type.id = params[:id]
        type.name = params[:name]
        type.version = params[:version]
        type
      end
    end

    module CidrCollectionAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CidrCollectionAlreadyExistsException, context: context)
        type = Types::CidrCollectionAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module CidrCollectionChange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CidrCollectionChange, context: context)
        type = Types::CidrCollectionChange.new
        type.location_name = params[:location_name]
        type.action = params[:action]
        type.cidr_list = CidrList.build(params[:cidr_list], context: "#{context}[:cidr_list]") unless params[:cidr_list].nil?
        type
      end
    end

    module CidrCollectionChanges
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CidrCollectionChange.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CidrCollectionInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CidrCollectionInUseException, context: context)
        type = Types::CidrCollectionInUseException.new
        type.message = params[:message]
        type
      end
    end

    module CidrCollectionVersionMismatchException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CidrCollectionVersionMismatchException, context: context)
        type = Types::CidrCollectionVersionMismatchException.new
        type.message = params[:message]
        type
      end
    end

    module CidrList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CidrRoutingConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CidrRoutingConfig, context: context)
        type = Types::CidrRoutingConfig.new
        type.collection_id = params[:collection_id]
        type.location_name = params[:location_name]
        type
      end
    end

    module CloudWatchAlarmConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudWatchAlarmConfiguration, context: context)
        type = Types::CloudWatchAlarmConfiguration.new
        type.evaluation_periods = params[:evaluation_periods]
        type.threshold = params[:threshold]
        type.comparison_operator = params[:comparison_operator]
        type.period = params[:period]
        type.metric_name = params[:metric_name]
        type.namespace = params[:namespace]
        type.statistic = params[:statistic]
        type.dimensions = DimensionList.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type
      end
    end

    module CollectionSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CollectionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CollectionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CollectionSummary, context: context)
        type = Types::CollectionSummary.new
        type.arn = params[:arn]
        type.id = params[:id]
        type.name = params[:name]
        type.version = params[:version]
        type
      end
    end

    module ConcurrentModification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConcurrentModification, context: context)
        type = Types::ConcurrentModification.new
        type.message = params[:message]
        type
      end
    end

    module ConflictingDomainExists
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictingDomainExists, context: context)
        type = Types::ConflictingDomainExists.new
        type.message = params[:message]
        type
      end
    end

    module ConflictingTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictingTypes, context: context)
        type = Types::ConflictingTypes.new
        type.message = params[:message]
        type
      end
    end

    module CreateCidrCollectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCidrCollectionInput, context: context)
        type = Types::CreateCidrCollectionInput.new
        type.name = params[:name]
        type.caller_reference = params[:caller_reference]
        type
      end
    end

    module CreateCidrCollectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCidrCollectionOutput, context: context)
        type = Types::CreateCidrCollectionOutput.new
        type.collection = CidrCollection.build(params[:collection], context: "#{context}[:collection]") unless params[:collection].nil?
        type.location = params[:location]
        type
      end
    end

    module CreateHealthCheckInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHealthCheckInput, context: context)
        type = Types::CreateHealthCheckInput.new
        type.caller_reference = params[:caller_reference]
        type.health_check_config = HealthCheckConfig.build(params[:health_check_config], context: "#{context}[:health_check_config]") unless params[:health_check_config].nil?
        type
      end
    end

    module CreateHealthCheckOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHealthCheckOutput, context: context)
        type = Types::CreateHealthCheckOutput.new
        type.health_check = HealthCheck.build(params[:health_check], context: "#{context}[:health_check]") unless params[:health_check].nil?
        type.location = params[:location]
        type
      end
    end

    module CreateHostedZoneInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHostedZoneInput, context: context)
        type = Types::CreateHostedZoneInput.new
        type.name = params[:name]
        type.vpc = VPC.build(params[:vpc], context: "#{context}[:vpc]") unless params[:vpc].nil?
        type.caller_reference = params[:caller_reference]
        type.hosted_zone_config = HostedZoneConfig.build(params[:hosted_zone_config], context: "#{context}[:hosted_zone_config]") unless params[:hosted_zone_config].nil?
        type.delegation_set_id = params[:delegation_set_id]
        type
      end
    end

    module CreateHostedZoneOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHostedZoneOutput, context: context)
        type = Types::CreateHostedZoneOutput.new
        type.hosted_zone = HostedZone.build(params[:hosted_zone], context: "#{context}[:hosted_zone]") unless params[:hosted_zone].nil?
        type.change_info = ChangeInfo.build(params[:change_info], context: "#{context}[:change_info]") unless params[:change_info].nil?
        type.delegation_set = DelegationSet.build(params[:delegation_set], context: "#{context}[:delegation_set]") unless params[:delegation_set].nil?
        type.vpc = VPC.build(params[:vpc], context: "#{context}[:vpc]") unless params[:vpc].nil?
        type.location = params[:location]
        type
      end
    end

    module CreateKeySigningKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateKeySigningKeyInput, context: context)
        type = Types::CreateKeySigningKeyInput.new
        type.caller_reference = params[:caller_reference]
        type.hosted_zone_id = params[:hosted_zone_id]
        type.key_management_service_arn = params[:key_management_service_arn]
        type.name = params[:name]
        type.status = params[:status]
        type
      end
    end

    module CreateKeySigningKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateKeySigningKeyOutput, context: context)
        type = Types::CreateKeySigningKeyOutput.new
        type.change_info = ChangeInfo.build(params[:change_info], context: "#{context}[:change_info]") unless params[:change_info].nil?
        type.key_signing_key = KeySigningKey.build(params[:key_signing_key], context: "#{context}[:key_signing_key]") unless params[:key_signing_key].nil?
        type.location = params[:location]
        type
      end
    end

    module CreateQueryLoggingConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateQueryLoggingConfigInput, context: context)
        type = Types::CreateQueryLoggingConfigInput.new
        type.hosted_zone_id = params[:hosted_zone_id]
        type.cloud_watch_logs_log_group_arn = params[:cloud_watch_logs_log_group_arn]
        type
      end
    end

    module CreateQueryLoggingConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateQueryLoggingConfigOutput, context: context)
        type = Types::CreateQueryLoggingConfigOutput.new
        type.query_logging_config = QueryLoggingConfig.build(params[:query_logging_config], context: "#{context}[:query_logging_config]") unless params[:query_logging_config].nil?
        type.location = params[:location]
        type
      end
    end

    module CreateReusableDelegationSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReusableDelegationSetInput, context: context)
        type = Types::CreateReusableDelegationSetInput.new
        type.caller_reference = params[:caller_reference]
        type.hosted_zone_id = params[:hosted_zone_id]
        type
      end
    end

    module CreateReusableDelegationSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReusableDelegationSetOutput, context: context)
        type = Types::CreateReusableDelegationSetOutput.new
        type.delegation_set = DelegationSet.build(params[:delegation_set], context: "#{context}[:delegation_set]") unless params[:delegation_set].nil?
        type.location = params[:location]
        type
      end
    end

    module CreateTrafficPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTrafficPolicyInput, context: context)
        type = Types::CreateTrafficPolicyInput.new
        type.name = params[:name]
        type.document = params[:document]
        type.comment = params[:comment]
        type
      end
    end

    module CreateTrafficPolicyInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTrafficPolicyInstanceInput, context: context)
        type = Types::CreateTrafficPolicyInstanceInput.new
        type.hosted_zone_id = params[:hosted_zone_id]
        type.name = params[:name]
        type.ttl = params[:ttl]
        type.traffic_policy_id = params[:traffic_policy_id]
        type.traffic_policy_version = params[:traffic_policy_version]
        type
      end
    end

    module CreateTrafficPolicyInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTrafficPolicyInstanceOutput, context: context)
        type = Types::CreateTrafficPolicyInstanceOutput.new
        type.traffic_policy_instance = TrafficPolicyInstance.build(params[:traffic_policy_instance], context: "#{context}[:traffic_policy_instance]") unless params[:traffic_policy_instance].nil?
        type.location = params[:location]
        type
      end
    end

    module CreateTrafficPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTrafficPolicyOutput, context: context)
        type = Types::CreateTrafficPolicyOutput.new
        type.traffic_policy = TrafficPolicy.build(params[:traffic_policy], context: "#{context}[:traffic_policy]") unless params[:traffic_policy].nil?
        type.location = params[:location]
        type
      end
    end

    module CreateTrafficPolicyVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTrafficPolicyVersionInput, context: context)
        type = Types::CreateTrafficPolicyVersionInput.new
        type.id = params[:id]
        type.document = params[:document]
        type.comment = params[:comment]
        type
      end
    end

    module CreateTrafficPolicyVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTrafficPolicyVersionOutput, context: context)
        type = Types::CreateTrafficPolicyVersionOutput.new
        type.traffic_policy = TrafficPolicy.build(params[:traffic_policy], context: "#{context}[:traffic_policy]") unless params[:traffic_policy].nil?
        type.location = params[:location]
        type
      end
    end

    module CreateVPCAssociationAuthorizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVPCAssociationAuthorizationInput, context: context)
        type = Types::CreateVPCAssociationAuthorizationInput.new
        type.hosted_zone_id = params[:hosted_zone_id]
        type.vpc = VPC.build(params[:vpc], context: "#{context}[:vpc]") unless params[:vpc].nil?
        type
      end
    end

    module CreateVPCAssociationAuthorizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVPCAssociationAuthorizationOutput, context: context)
        type = Types::CreateVPCAssociationAuthorizationOutput.new
        type.hosted_zone_id = params[:hosted_zone_id]
        type.vpc = VPC.build(params[:vpc], context: "#{context}[:vpc]") unless params[:vpc].nil?
        type
      end
    end

    module DNSSECNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DNSSECNotFound, context: context)
        type = Types::DNSSECNotFound.new
        type.message = params[:message]
        type
      end
    end

    module DNSSECStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DNSSECStatus, context: context)
        type = Types::DNSSECStatus.new
        type.serve_signature = params[:serve_signature]
        type.status_message = params[:status_message]
        type
      end
    end

    module DeactivateKeySigningKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeactivateKeySigningKeyInput, context: context)
        type = Types::DeactivateKeySigningKeyInput.new
        type.hosted_zone_id = params[:hosted_zone_id]
        type.name = params[:name]
        type
      end
    end

    module DeactivateKeySigningKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeactivateKeySigningKeyOutput, context: context)
        type = Types::DeactivateKeySigningKeyOutput.new
        type.change_info = ChangeInfo.build(params[:change_info], context: "#{context}[:change_info]") unless params[:change_info].nil?
        type
      end
    end

    module DelegationSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DelegationSet, context: context)
        type = Types::DelegationSet.new
        type.id = params[:id]
        type.caller_reference = params[:caller_reference]
        type.name_servers = DelegationSetNameServers.build(params[:name_servers], context: "#{context}[:name_servers]") unless params[:name_servers].nil?
        type
      end
    end

    module DelegationSetAlreadyCreated
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DelegationSetAlreadyCreated, context: context)
        type = Types::DelegationSetAlreadyCreated.new
        type.message = params[:message]
        type
      end
    end

    module DelegationSetAlreadyReusable
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DelegationSetAlreadyReusable, context: context)
        type = Types::DelegationSetAlreadyReusable.new
        type.message = params[:message]
        type
      end
    end

    module DelegationSetInUse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DelegationSetInUse, context: context)
        type = Types::DelegationSetInUse.new
        type.message = params[:message]
        type
      end
    end

    module DelegationSetNameServers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DelegationSetNotAvailable
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DelegationSetNotAvailable, context: context)
        type = Types::DelegationSetNotAvailable.new
        type.message = params[:message]
        type
      end
    end

    module DelegationSetNotReusable
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DelegationSetNotReusable, context: context)
        type = Types::DelegationSetNotReusable.new
        type.message = params[:message]
        type
      end
    end

    module DelegationSets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DelegationSet.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteCidrCollectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCidrCollectionInput, context: context)
        type = Types::DeleteCidrCollectionInput.new
        type.id = params[:id]
        type
      end
    end

    module DeleteCidrCollectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCidrCollectionOutput, context: context)
        type = Types::DeleteCidrCollectionOutput.new
        type
      end
    end

    module DeleteHealthCheckInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteHealthCheckInput, context: context)
        type = Types::DeleteHealthCheckInput.new
        type.health_check_id = params[:health_check_id]
        type
      end
    end

    module DeleteHealthCheckOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteHealthCheckOutput, context: context)
        type = Types::DeleteHealthCheckOutput.new
        type
      end
    end

    module DeleteHostedZoneInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteHostedZoneInput, context: context)
        type = Types::DeleteHostedZoneInput.new
        type.id = params[:id]
        type
      end
    end

    module DeleteHostedZoneOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteHostedZoneOutput, context: context)
        type = Types::DeleteHostedZoneOutput.new
        type.change_info = ChangeInfo.build(params[:change_info], context: "#{context}[:change_info]") unless params[:change_info].nil?
        type
      end
    end

    module DeleteKeySigningKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteKeySigningKeyInput, context: context)
        type = Types::DeleteKeySigningKeyInput.new
        type.hosted_zone_id = params[:hosted_zone_id]
        type.name = params[:name]
        type
      end
    end

    module DeleteKeySigningKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteKeySigningKeyOutput, context: context)
        type = Types::DeleteKeySigningKeyOutput.new
        type.change_info = ChangeInfo.build(params[:change_info], context: "#{context}[:change_info]") unless params[:change_info].nil?
        type
      end
    end

    module DeleteQueryLoggingConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteQueryLoggingConfigInput, context: context)
        type = Types::DeleteQueryLoggingConfigInput.new
        type.id = params[:id]
        type
      end
    end

    module DeleteQueryLoggingConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteQueryLoggingConfigOutput, context: context)
        type = Types::DeleteQueryLoggingConfigOutput.new
        type
      end
    end

    module DeleteReusableDelegationSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReusableDelegationSetInput, context: context)
        type = Types::DeleteReusableDelegationSetInput.new
        type.id = params[:id]
        type
      end
    end

    module DeleteReusableDelegationSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReusableDelegationSetOutput, context: context)
        type = Types::DeleteReusableDelegationSetOutput.new
        type
      end
    end

    module DeleteTrafficPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTrafficPolicyInput, context: context)
        type = Types::DeleteTrafficPolicyInput.new
        type.id = params[:id]
        type.version = params[:version]
        type
      end
    end

    module DeleteTrafficPolicyInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTrafficPolicyInstanceInput, context: context)
        type = Types::DeleteTrafficPolicyInstanceInput.new
        type.id = params[:id]
        type
      end
    end

    module DeleteTrafficPolicyInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTrafficPolicyInstanceOutput, context: context)
        type = Types::DeleteTrafficPolicyInstanceOutput.new
        type
      end
    end

    module DeleteTrafficPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTrafficPolicyOutput, context: context)
        type = Types::DeleteTrafficPolicyOutput.new
        type
      end
    end

    module DeleteVPCAssociationAuthorizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVPCAssociationAuthorizationInput, context: context)
        type = Types::DeleteVPCAssociationAuthorizationInput.new
        type.hosted_zone_id = params[:hosted_zone_id]
        type.vpc = VPC.build(params[:vpc], context: "#{context}[:vpc]") unless params[:vpc].nil?
        type
      end
    end

    module DeleteVPCAssociationAuthorizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVPCAssociationAuthorizationOutput, context: context)
        type = Types::DeleteVPCAssociationAuthorizationOutput.new
        type
      end
    end

    module Dimension
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Dimension, context: context)
        type = Types::Dimension.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module DimensionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Dimension.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DisableHostedZoneDNSSECInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableHostedZoneDNSSECInput, context: context)
        type = Types::DisableHostedZoneDNSSECInput.new
        type.hosted_zone_id = params[:hosted_zone_id]
        type
      end
    end

    module DisableHostedZoneDNSSECOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableHostedZoneDNSSECOutput, context: context)
        type = Types::DisableHostedZoneDNSSECOutput.new
        type.change_info = ChangeInfo.build(params[:change_info], context: "#{context}[:change_info]") unless params[:change_info].nil?
        type
      end
    end

    module DisassociateVPCFromHostedZoneInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateVPCFromHostedZoneInput, context: context)
        type = Types::DisassociateVPCFromHostedZoneInput.new
        type.hosted_zone_id = params[:hosted_zone_id]
        type.vpc = VPC.build(params[:vpc], context: "#{context}[:vpc]") unless params[:vpc].nil?
        type.comment = params[:comment]
        type
      end
    end

    module DisassociateVPCFromHostedZoneOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateVPCFromHostedZoneOutput, context: context)
        type = Types::DisassociateVPCFromHostedZoneOutput.new
        type.change_info = ChangeInfo.build(params[:change_info], context: "#{context}[:change_info]") unless params[:change_info].nil?
        type
      end
    end

    module EnableHostedZoneDNSSECInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableHostedZoneDNSSECInput, context: context)
        type = Types::EnableHostedZoneDNSSECInput.new
        type.hosted_zone_id = params[:hosted_zone_id]
        type
      end
    end

    module EnableHostedZoneDNSSECOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableHostedZoneDNSSECOutput, context: context)
        type = Types::EnableHostedZoneDNSSECOutput.new
        type.change_info = ChangeInfo.build(params[:change_info], context: "#{context}[:change_info]") unless params[:change_info].nil?
        type
      end
    end

    module ErrorMessages
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GeoLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GeoLocation, context: context)
        type = Types::GeoLocation.new
        type.continent_code = params[:continent_code]
        type.country_code = params[:country_code]
        type.subdivision_code = params[:subdivision_code]
        type
      end
    end

    module GeoLocationDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GeoLocationDetails, context: context)
        type = Types::GeoLocationDetails.new
        type.continent_code = params[:continent_code]
        type.continent_name = params[:continent_name]
        type.country_code = params[:country_code]
        type.country_name = params[:country_name]
        type.subdivision_code = params[:subdivision_code]
        type.subdivision_name = params[:subdivision_name]
        type
      end
    end

    module GeoLocationDetailsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GeoLocationDetails.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetAccountLimitInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccountLimitInput, context: context)
        type = Types::GetAccountLimitInput.new
        type.type = params[:type]
        type
      end
    end

    module GetAccountLimitOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccountLimitOutput, context: context)
        type = Types::GetAccountLimitOutput.new
        type.limit = AccountLimit.build(params[:limit], context: "#{context}[:limit]") unless params[:limit].nil?
        type.count = params[:count]
        type
      end
    end

    module GetChangeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetChangeInput, context: context)
        type = Types::GetChangeInput.new
        type.id = params[:id]
        type
      end
    end

    module GetChangeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetChangeOutput, context: context)
        type = Types::GetChangeOutput.new
        type.change_info = ChangeInfo.build(params[:change_info], context: "#{context}[:change_info]") unless params[:change_info].nil?
        type
      end
    end

    module GetCheckerIpRangesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCheckerIpRangesInput, context: context)
        type = Types::GetCheckerIpRangesInput.new
        type
      end
    end

    module GetCheckerIpRangesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCheckerIpRangesOutput, context: context)
        type = Types::GetCheckerIpRangesOutput.new
        type.checker_ip_ranges = CheckerIpRanges.build(params[:checker_ip_ranges], context: "#{context}[:checker_ip_ranges]") unless params[:checker_ip_ranges].nil?
        type
      end
    end

    module GetDNSSECInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDNSSECInput, context: context)
        type = Types::GetDNSSECInput.new
        type.hosted_zone_id = params[:hosted_zone_id]
        type
      end
    end

    module GetDNSSECOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDNSSECOutput, context: context)
        type = Types::GetDNSSECOutput.new
        type.status = DNSSECStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.key_signing_keys = KeySigningKeys.build(params[:key_signing_keys], context: "#{context}[:key_signing_keys]") unless params[:key_signing_keys].nil?
        type
      end
    end

    module GetGeoLocationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGeoLocationInput, context: context)
        type = Types::GetGeoLocationInput.new
        type.continent_code = params[:continent_code]
        type.country_code = params[:country_code]
        type.subdivision_code = params[:subdivision_code]
        type
      end
    end

    module GetGeoLocationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGeoLocationOutput, context: context)
        type = Types::GetGeoLocationOutput.new
        type.geo_location_details = GeoLocationDetails.build(params[:geo_location_details], context: "#{context}[:geo_location_details]") unless params[:geo_location_details].nil?
        type
      end
    end

    module GetHealthCheckCountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetHealthCheckCountInput, context: context)
        type = Types::GetHealthCheckCountInput.new
        type
      end
    end

    module GetHealthCheckCountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetHealthCheckCountOutput, context: context)
        type = Types::GetHealthCheckCountOutput.new
        type.health_check_count = params[:health_check_count]
        type
      end
    end

    module GetHealthCheckInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetHealthCheckInput, context: context)
        type = Types::GetHealthCheckInput.new
        type.health_check_id = params[:health_check_id]
        type
      end
    end

    module GetHealthCheckLastFailureReasonInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetHealthCheckLastFailureReasonInput, context: context)
        type = Types::GetHealthCheckLastFailureReasonInput.new
        type.health_check_id = params[:health_check_id]
        type
      end
    end

    module GetHealthCheckLastFailureReasonOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetHealthCheckLastFailureReasonOutput, context: context)
        type = Types::GetHealthCheckLastFailureReasonOutput.new
        type.health_check_observations = HealthCheckObservations.build(params[:health_check_observations], context: "#{context}[:health_check_observations]") unless params[:health_check_observations].nil?
        type
      end
    end

    module GetHealthCheckOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetHealthCheckOutput, context: context)
        type = Types::GetHealthCheckOutput.new
        type.health_check = HealthCheck.build(params[:health_check], context: "#{context}[:health_check]") unless params[:health_check].nil?
        type
      end
    end

    module GetHealthCheckStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetHealthCheckStatusInput, context: context)
        type = Types::GetHealthCheckStatusInput.new
        type.health_check_id = params[:health_check_id]
        type
      end
    end

    module GetHealthCheckStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetHealthCheckStatusOutput, context: context)
        type = Types::GetHealthCheckStatusOutput.new
        type.health_check_observations = HealthCheckObservations.build(params[:health_check_observations], context: "#{context}[:health_check_observations]") unless params[:health_check_observations].nil?
        type
      end
    end

    module GetHostedZoneCountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetHostedZoneCountInput, context: context)
        type = Types::GetHostedZoneCountInput.new
        type
      end
    end

    module GetHostedZoneCountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetHostedZoneCountOutput, context: context)
        type = Types::GetHostedZoneCountOutput.new
        type.hosted_zone_count = params[:hosted_zone_count]
        type
      end
    end

    module GetHostedZoneInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetHostedZoneInput, context: context)
        type = Types::GetHostedZoneInput.new
        type.id = params[:id]
        type
      end
    end

    module GetHostedZoneLimitInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetHostedZoneLimitInput, context: context)
        type = Types::GetHostedZoneLimitInput.new
        type.type = params[:type]
        type.hosted_zone_id = params[:hosted_zone_id]
        type
      end
    end

    module GetHostedZoneLimitOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetHostedZoneLimitOutput, context: context)
        type = Types::GetHostedZoneLimitOutput.new
        type.limit = HostedZoneLimit.build(params[:limit], context: "#{context}[:limit]") unless params[:limit].nil?
        type.count = params[:count]
        type
      end
    end

    module GetHostedZoneOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetHostedZoneOutput, context: context)
        type = Types::GetHostedZoneOutput.new
        type.hosted_zone = HostedZone.build(params[:hosted_zone], context: "#{context}[:hosted_zone]") unless params[:hosted_zone].nil?
        type.delegation_set = DelegationSet.build(params[:delegation_set], context: "#{context}[:delegation_set]") unless params[:delegation_set].nil?
        type.vp_cs = VPCs.build(params[:vp_cs], context: "#{context}[:vp_cs]") unless params[:vp_cs].nil?
        type
      end
    end

    module GetQueryLoggingConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetQueryLoggingConfigInput, context: context)
        type = Types::GetQueryLoggingConfigInput.new
        type.id = params[:id]
        type
      end
    end

    module GetQueryLoggingConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetQueryLoggingConfigOutput, context: context)
        type = Types::GetQueryLoggingConfigOutput.new
        type.query_logging_config = QueryLoggingConfig.build(params[:query_logging_config], context: "#{context}[:query_logging_config]") unless params[:query_logging_config].nil?
        type
      end
    end

    module GetReusableDelegationSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetReusableDelegationSetInput, context: context)
        type = Types::GetReusableDelegationSetInput.new
        type.id = params[:id]
        type
      end
    end

    module GetReusableDelegationSetLimitInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetReusableDelegationSetLimitInput, context: context)
        type = Types::GetReusableDelegationSetLimitInput.new
        type.type = params[:type]
        type.delegation_set_id = params[:delegation_set_id]
        type
      end
    end

    module GetReusableDelegationSetLimitOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetReusableDelegationSetLimitOutput, context: context)
        type = Types::GetReusableDelegationSetLimitOutput.new
        type.limit = ReusableDelegationSetLimit.build(params[:limit], context: "#{context}[:limit]") unless params[:limit].nil?
        type.count = params[:count]
        type
      end
    end

    module GetReusableDelegationSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetReusableDelegationSetOutput, context: context)
        type = Types::GetReusableDelegationSetOutput.new
        type.delegation_set = DelegationSet.build(params[:delegation_set], context: "#{context}[:delegation_set]") unless params[:delegation_set].nil?
        type
      end
    end

    module GetTrafficPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTrafficPolicyInput, context: context)
        type = Types::GetTrafficPolicyInput.new
        type.id = params[:id]
        type.version = params[:version]
        type
      end
    end

    module GetTrafficPolicyInstanceCountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTrafficPolicyInstanceCountInput, context: context)
        type = Types::GetTrafficPolicyInstanceCountInput.new
        type
      end
    end

    module GetTrafficPolicyInstanceCountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTrafficPolicyInstanceCountOutput, context: context)
        type = Types::GetTrafficPolicyInstanceCountOutput.new
        type.traffic_policy_instance_count = params[:traffic_policy_instance_count]
        type
      end
    end

    module GetTrafficPolicyInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTrafficPolicyInstanceInput, context: context)
        type = Types::GetTrafficPolicyInstanceInput.new
        type.id = params[:id]
        type
      end
    end

    module GetTrafficPolicyInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTrafficPolicyInstanceOutput, context: context)
        type = Types::GetTrafficPolicyInstanceOutput.new
        type.traffic_policy_instance = TrafficPolicyInstance.build(params[:traffic_policy_instance], context: "#{context}[:traffic_policy_instance]") unless params[:traffic_policy_instance].nil?
        type
      end
    end

    module GetTrafficPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTrafficPolicyOutput, context: context)
        type = Types::GetTrafficPolicyOutput.new
        type.traffic_policy = TrafficPolicy.build(params[:traffic_policy], context: "#{context}[:traffic_policy]") unless params[:traffic_policy].nil?
        type
      end
    end

    module HealthCheck
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HealthCheck, context: context)
        type = Types::HealthCheck.new
        type.id = params[:id]
        type.caller_reference = params[:caller_reference]
        type.linked_service = LinkedService.build(params[:linked_service], context: "#{context}[:linked_service]") unless params[:linked_service].nil?
        type.health_check_config = HealthCheckConfig.build(params[:health_check_config], context: "#{context}[:health_check_config]") unless params[:health_check_config].nil?
        type.health_check_version = params[:health_check_version]
        type.cloud_watch_alarm_configuration = CloudWatchAlarmConfiguration.build(params[:cloud_watch_alarm_configuration], context: "#{context}[:cloud_watch_alarm_configuration]") unless params[:cloud_watch_alarm_configuration].nil?
        type
      end
    end

    module HealthCheckAlreadyExists
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HealthCheckAlreadyExists, context: context)
        type = Types::HealthCheckAlreadyExists.new
        type.message = params[:message]
        type
      end
    end

    module HealthCheckConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HealthCheckConfig, context: context)
        type = Types::HealthCheckConfig.new
        type.ip_address = params[:ip_address]
        type.port = params[:port]
        type.type = params[:type]
        type.resource_path = params[:resource_path]
        type.fully_qualified_domain_name = params[:fully_qualified_domain_name]
        type.search_string = params[:search_string]
        type.request_interval = params[:request_interval]
        type.failure_threshold = params[:failure_threshold]
        type.measure_latency = params[:measure_latency]
        type.inverted = params[:inverted]
        type.disabled = params[:disabled]
        type.health_threshold = params[:health_threshold]
        type.child_health_checks = ChildHealthCheckList.build(params[:child_health_checks], context: "#{context}[:child_health_checks]") unless params[:child_health_checks].nil?
        type.enable_sni = params[:enable_sni]
        type.regions = HealthCheckRegionList.build(params[:regions], context: "#{context}[:regions]") unless params[:regions].nil?
        type.alarm_identifier = AlarmIdentifier.build(params[:alarm_identifier], context: "#{context}[:alarm_identifier]") unless params[:alarm_identifier].nil?
        type.insufficient_data_health_status = params[:insufficient_data_health_status]
        type.routing_control_arn = params[:routing_control_arn]
        type
      end
    end

    module HealthCheckInUse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HealthCheckInUse, context: context)
        type = Types::HealthCheckInUse.new
        type.message = params[:message]
        type
      end
    end

    module HealthCheckObservation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HealthCheckObservation, context: context)
        type = Types::HealthCheckObservation.new
        type.region = params[:region]
        type.ip_address = params[:ip_address]
        type.status_report = StatusReport.build(params[:status_report], context: "#{context}[:status_report]") unless params[:status_report].nil?
        type
      end
    end

    module HealthCheckObservations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HealthCheckObservation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module HealthCheckRegionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module HealthCheckVersionMismatch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HealthCheckVersionMismatch, context: context)
        type = Types::HealthCheckVersionMismatch.new
        type.message = params[:message]
        type
      end
    end

    module HealthChecks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HealthCheck.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module HostedZone
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HostedZone, context: context)
        type = Types::HostedZone.new
        type.id = params[:id]
        type.name = params[:name]
        type.caller_reference = params[:caller_reference]
        type.config = HostedZoneConfig.build(params[:config], context: "#{context}[:config]") unless params[:config].nil?
        type.resource_record_set_count = params[:resource_record_set_count]
        type.linked_service = LinkedService.build(params[:linked_service], context: "#{context}[:linked_service]") unless params[:linked_service].nil?
        type
      end
    end

    module HostedZoneAlreadyExists
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HostedZoneAlreadyExists, context: context)
        type = Types::HostedZoneAlreadyExists.new
        type.message = params[:message]
        type
      end
    end

    module HostedZoneConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HostedZoneConfig, context: context)
        type = Types::HostedZoneConfig.new
        type.comment = params[:comment]
        type.private_zone = params[:private_zone]
        type
      end
    end

    module HostedZoneLimit
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HostedZoneLimit, context: context)
        type = Types::HostedZoneLimit.new
        type.type = params[:type]
        type.value = params[:value]
        type
      end
    end

    module HostedZoneNotEmpty
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HostedZoneNotEmpty, context: context)
        type = Types::HostedZoneNotEmpty.new
        type.message = params[:message]
        type
      end
    end

    module HostedZoneNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HostedZoneNotFound, context: context)
        type = Types::HostedZoneNotFound.new
        type.message = params[:message]
        type
      end
    end

    module HostedZoneNotPrivate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HostedZoneNotPrivate, context: context)
        type = Types::HostedZoneNotPrivate.new
        type.message = params[:message]
        type
      end
    end

    module HostedZoneOwner
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HostedZoneOwner, context: context)
        type = Types::HostedZoneOwner.new
        type.owning_account = params[:owning_account]
        type.owning_service = params[:owning_service]
        type
      end
    end

    module HostedZonePartiallyDelegated
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HostedZonePartiallyDelegated, context: context)
        type = Types::HostedZonePartiallyDelegated.new
        type.message = params[:message]
        type
      end
    end

    module HostedZoneSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HostedZoneSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module HostedZoneSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HostedZoneSummary, context: context)
        type = Types::HostedZoneSummary.new
        type.hosted_zone_id = params[:hosted_zone_id]
        type.name = params[:name]
        type.owner = HostedZoneOwner.build(params[:owner], context: "#{context}[:owner]") unless params[:owner].nil?
        type
      end
    end

    module HostedZones
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HostedZone.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IncompatibleVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IncompatibleVersion, context: context)
        type = Types::IncompatibleVersion.new
        type.message = params[:message]
        type
      end
    end

    module InsufficientCloudWatchLogsResourcePolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsufficientCloudWatchLogsResourcePolicy, context: context)
        type = Types::InsufficientCloudWatchLogsResourcePolicy.new
        type.message = params[:message]
        type
      end
    end

    module InvalidArgument
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidArgument, context: context)
        type = Types::InvalidArgument.new
        type.message = params[:message]
        type
      end
    end

    module InvalidChangeBatch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidChangeBatch, context: context)
        type = Types::InvalidChangeBatch.new
        type.messages = ErrorMessages.build(params[:messages], context: "#{context}[:messages]") unless params[:messages].nil?
        type.message = params[:message]
        type
      end
    end

    module InvalidDomainName
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDomainName, context: context)
        type = Types::InvalidDomainName.new
        type.message = params[:message]
        type
      end
    end

    module InvalidInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidInput, context: context)
        type = Types::InvalidInput.new
        type.message = params[:message]
        type
      end
    end

    module InvalidKMSArn
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidKMSArn, context: context)
        type = Types::InvalidKMSArn.new
        type.message = params[:message]
        type
      end
    end

    module InvalidKeySigningKeyName
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidKeySigningKeyName, context: context)
        type = Types::InvalidKeySigningKeyName.new
        type.message = params[:message]
        type
      end
    end

    module InvalidKeySigningKeyStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidKeySigningKeyStatus, context: context)
        type = Types::InvalidKeySigningKeyStatus.new
        type.message = params[:message]
        type
      end
    end

    module InvalidPaginationToken
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidPaginationToken, context: context)
        type = Types::InvalidPaginationToken.new
        type.message = params[:message]
        type
      end
    end

    module InvalidSigningStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSigningStatus, context: context)
        type = Types::InvalidSigningStatus.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTrafficPolicyDocument
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTrafficPolicyDocument, context: context)
        type = Types::InvalidTrafficPolicyDocument.new
        type.message = params[:message]
        type
      end
    end

    module InvalidVPCId
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidVPCId, context: context)
        type = Types::InvalidVPCId.new
        type.message = params[:message]
        type
      end
    end

    module KeySigningKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KeySigningKey, context: context)
        type = Types::KeySigningKey.new
        type.name = params[:name]
        type.kms_arn = params[:kms_arn]
        type.flag = params[:flag]
        type.signing_algorithm_mnemonic = params[:signing_algorithm_mnemonic]
        type.signing_algorithm_type = params[:signing_algorithm_type]
        type.digest_algorithm_mnemonic = params[:digest_algorithm_mnemonic]
        type.digest_algorithm_type = params[:digest_algorithm_type]
        type.key_tag = params[:key_tag]
        type.digest_value = params[:digest_value]
        type.public_key = params[:public_key]
        type.ds_record = params[:ds_record]
        type.dnskey_record = params[:dnskey_record]
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.created_date = params[:created_date]
        type.last_modified_date = params[:last_modified_date]
        type
      end
    end

    module KeySigningKeyAlreadyExists
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KeySigningKeyAlreadyExists, context: context)
        type = Types::KeySigningKeyAlreadyExists.new
        type.message = params[:message]
        type
      end
    end

    module KeySigningKeyInParentDSRecord
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KeySigningKeyInParentDSRecord, context: context)
        type = Types::KeySigningKeyInParentDSRecord.new
        type.message = params[:message]
        type
      end
    end

    module KeySigningKeyInUse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KeySigningKeyInUse, context: context)
        type = Types::KeySigningKeyInUse.new
        type.message = params[:message]
        type
      end
    end

    module KeySigningKeyWithActiveStatusNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KeySigningKeyWithActiveStatusNotFound, context: context)
        type = Types::KeySigningKeyWithActiveStatusNotFound.new
        type.message = params[:message]
        type
      end
    end

    module KeySigningKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << KeySigningKey.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LastVPCAssociation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LastVPCAssociation, context: context)
        type = Types::LastVPCAssociation.new
        type.message = params[:message]
        type
      end
    end

    module LimitsExceeded
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitsExceeded, context: context)
        type = Types::LimitsExceeded.new
        type.message = params[:message]
        type
      end
    end

    module LinkedService
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LinkedService, context: context)
        type = Types::LinkedService.new
        type.service_principal = params[:service_principal]
        type.description = params[:description]
        type
      end
    end

    module ListCidrBlocksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCidrBlocksInput, context: context)
        type = Types::ListCidrBlocksInput.new
        type.collection_id = params[:collection_id]
        type.location_name = params[:location_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListCidrBlocksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCidrBlocksOutput, context: context)
        type = Types::ListCidrBlocksOutput.new
        type.next_token = params[:next_token]
        type.cidr_blocks = CidrBlockSummaries.build(params[:cidr_blocks], context: "#{context}[:cidr_blocks]") unless params[:cidr_blocks].nil?
        type
      end
    end

    module ListCidrCollectionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCidrCollectionsInput, context: context)
        type = Types::ListCidrCollectionsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListCidrCollectionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCidrCollectionsOutput, context: context)
        type = Types::ListCidrCollectionsOutput.new
        type.next_token = params[:next_token]
        type.cidr_collections = CollectionSummaries.build(params[:cidr_collections], context: "#{context}[:cidr_collections]") unless params[:cidr_collections].nil?
        type
      end
    end

    module ListCidrLocationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCidrLocationsInput, context: context)
        type = Types::ListCidrLocationsInput.new
        type.collection_id = params[:collection_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListCidrLocationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCidrLocationsOutput, context: context)
        type = Types::ListCidrLocationsOutput.new
        type.next_token = params[:next_token]
        type.cidr_locations = LocationSummaries.build(params[:cidr_locations], context: "#{context}[:cidr_locations]") unless params[:cidr_locations].nil?
        type
      end
    end

    module ListGeoLocationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGeoLocationsInput, context: context)
        type = Types::ListGeoLocationsInput.new
        type.start_continent_code = params[:start_continent_code]
        type.start_country_code = params[:start_country_code]
        type.start_subdivision_code = params[:start_subdivision_code]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListGeoLocationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGeoLocationsOutput, context: context)
        type = Types::ListGeoLocationsOutput.new
        type.geo_location_details_list = GeoLocationDetailsList.build(params[:geo_location_details_list], context: "#{context}[:geo_location_details_list]") unless params[:geo_location_details_list].nil?
        type.is_truncated = params[:is_truncated]
        type.next_continent_code = params[:next_continent_code]
        type.next_country_code = params[:next_country_code]
        type.next_subdivision_code = params[:next_subdivision_code]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListHealthChecksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHealthChecksInput, context: context)
        type = Types::ListHealthChecksInput.new
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListHealthChecksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHealthChecksOutput, context: context)
        type = Types::ListHealthChecksOutput.new
        type.health_checks = HealthChecks.build(params[:health_checks], context: "#{context}[:health_checks]") unless params[:health_checks].nil?
        type.marker = params[:marker]
        type.is_truncated = params[:is_truncated]
        type.next_marker = params[:next_marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListHostedZonesByNameInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHostedZonesByNameInput, context: context)
        type = Types::ListHostedZonesByNameInput.new
        type.dns_name = params[:dns_name]
        type.hosted_zone_id = params[:hosted_zone_id]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListHostedZonesByNameOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHostedZonesByNameOutput, context: context)
        type = Types::ListHostedZonesByNameOutput.new
        type.hosted_zones = HostedZones.build(params[:hosted_zones], context: "#{context}[:hosted_zones]") unless params[:hosted_zones].nil?
        type.dns_name = params[:dns_name]
        type.hosted_zone_id = params[:hosted_zone_id]
        type.is_truncated = params[:is_truncated]
        type.next_dns_name = params[:next_dns_name]
        type.next_hosted_zone_id = params[:next_hosted_zone_id]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListHostedZonesByVPCInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHostedZonesByVPCInput, context: context)
        type = Types::ListHostedZonesByVPCInput.new
        type.vpc_id = params[:vpc_id]
        type.vpc_region = params[:vpc_region]
        type.max_items = params[:max_items]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListHostedZonesByVPCOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHostedZonesByVPCOutput, context: context)
        type = Types::ListHostedZonesByVPCOutput.new
        type.hosted_zone_summaries = HostedZoneSummaries.build(params[:hosted_zone_summaries], context: "#{context}[:hosted_zone_summaries]") unless params[:hosted_zone_summaries].nil?
        type.max_items = params[:max_items]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListHostedZonesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHostedZonesInput, context: context)
        type = Types::ListHostedZonesInput.new
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type.delegation_set_id = params[:delegation_set_id]
        type
      end
    end

    module ListHostedZonesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHostedZonesOutput, context: context)
        type = Types::ListHostedZonesOutput.new
        type.hosted_zones = HostedZones.build(params[:hosted_zones], context: "#{context}[:hosted_zones]") unless params[:hosted_zones].nil?
        type.marker = params[:marker]
        type.is_truncated = params[:is_truncated]
        type.next_marker = params[:next_marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListQueryLoggingConfigsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListQueryLoggingConfigsInput, context: context)
        type = Types::ListQueryLoggingConfigsInput.new
        type.hosted_zone_id = params[:hosted_zone_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListQueryLoggingConfigsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListQueryLoggingConfigsOutput, context: context)
        type = Types::ListQueryLoggingConfigsOutput.new
        type.query_logging_configs = QueryLoggingConfigs.build(params[:query_logging_configs], context: "#{context}[:query_logging_configs]") unless params[:query_logging_configs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListResourceRecordSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourceRecordSetsInput, context: context)
        type = Types::ListResourceRecordSetsInput.new
        type.hosted_zone_id = params[:hosted_zone_id]
        type.start_record_name = params[:start_record_name]
        type.start_record_type = params[:start_record_type]
        type.start_record_identifier = params[:start_record_identifier]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListResourceRecordSetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourceRecordSetsOutput, context: context)
        type = Types::ListResourceRecordSetsOutput.new
        type.resource_record_sets = ResourceRecordSets.build(params[:resource_record_sets], context: "#{context}[:resource_record_sets]") unless params[:resource_record_sets].nil?
        type.is_truncated = params[:is_truncated]
        type.next_record_name = params[:next_record_name]
        type.next_record_type = params[:next_record_type]
        type.next_record_identifier = params[:next_record_identifier]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListReusableDelegationSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReusableDelegationSetsInput, context: context)
        type = Types::ListReusableDelegationSetsInput.new
        type.marker = params[:marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListReusableDelegationSetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReusableDelegationSetsOutput, context: context)
        type = Types::ListReusableDelegationSetsOutput.new
        type.delegation_sets = DelegationSets.build(params[:delegation_sets], context: "#{context}[:delegation_sets]") unless params[:delegation_sets].nil?
        type.marker = params[:marker]
        type.is_truncated = params[:is_truncated]
        type.next_marker = params[:next_marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_type = params[:resource_type]
        type.resource_id = params[:resource_id]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.resource_tag_set = ResourceTagSet.build(params[:resource_tag_set], context: "#{context}[:resource_tag_set]") unless params[:resource_tag_set].nil?
        type
      end
    end

    module ListTagsForResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourcesInput, context: context)
        type = Types::ListTagsForResourcesInput.new
        type.resource_type = params[:resource_type]
        type.resource_ids = TagResourceIdList.build(params[:resource_ids], context: "#{context}[:resource_ids]") unless params[:resource_ids].nil?
        type
      end
    end

    module ListTagsForResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourcesOutput, context: context)
        type = Types::ListTagsForResourcesOutput.new
        type.resource_tag_sets = ResourceTagSetList.build(params[:resource_tag_sets], context: "#{context}[:resource_tag_sets]") unless params[:resource_tag_sets].nil?
        type
      end
    end

    module ListTrafficPoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTrafficPoliciesInput, context: context)
        type = Types::ListTrafficPoliciesInput.new
        type.traffic_policy_id_marker = params[:traffic_policy_id_marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListTrafficPoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTrafficPoliciesOutput, context: context)
        type = Types::ListTrafficPoliciesOutput.new
        type.traffic_policy_summaries = TrafficPolicySummaries.build(params[:traffic_policy_summaries], context: "#{context}[:traffic_policy_summaries]") unless params[:traffic_policy_summaries].nil?
        type.is_truncated = params[:is_truncated]
        type.traffic_policy_id_marker = params[:traffic_policy_id_marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListTrafficPolicyInstancesByHostedZoneInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTrafficPolicyInstancesByHostedZoneInput, context: context)
        type = Types::ListTrafficPolicyInstancesByHostedZoneInput.new
        type.hosted_zone_id = params[:hosted_zone_id]
        type.traffic_policy_instance_name_marker = params[:traffic_policy_instance_name_marker]
        type.traffic_policy_instance_type_marker = params[:traffic_policy_instance_type_marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListTrafficPolicyInstancesByHostedZoneOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTrafficPolicyInstancesByHostedZoneOutput, context: context)
        type = Types::ListTrafficPolicyInstancesByHostedZoneOutput.new
        type.traffic_policy_instances = TrafficPolicyInstances.build(params[:traffic_policy_instances], context: "#{context}[:traffic_policy_instances]") unless params[:traffic_policy_instances].nil?
        type.traffic_policy_instance_name_marker = params[:traffic_policy_instance_name_marker]
        type.traffic_policy_instance_type_marker = params[:traffic_policy_instance_type_marker]
        type.is_truncated = params[:is_truncated]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListTrafficPolicyInstancesByPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTrafficPolicyInstancesByPolicyInput, context: context)
        type = Types::ListTrafficPolicyInstancesByPolicyInput.new
        type.traffic_policy_id = params[:traffic_policy_id]
        type.traffic_policy_version = params[:traffic_policy_version]
        type.hosted_zone_id_marker = params[:hosted_zone_id_marker]
        type.traffic_policy_instance_name_marker = params[:traffic_policy_instance_name_marker]
        type.traffic_policy_instance_type_marker = params[:traffic_policy_instance_type_marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListTrafficPolicyInstancesByPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTrafficPolicyInstancesByPolicyOutput, context: context)
        type = Types::ListTrafficPolicyInstancesByPolicyOutput.new
        type.traffic_policy_instances = TrafficPolicyInstances.build(params[:traffic_policy_instances], context: "#{context}[:traffic_policy_instances]") unless params[:traffic_policy_instances].nil?
        type.hosted_zone_id_marker = params[:hosted_zone_id_marker]
        type.traffic_policy_instance_name_marker = params[:traffic_policy_instance_name_marker]
        type.traffic_policy_instance_type_marker = params[:traffic_policy_instance_type_marker]
        type.is_truncated = params[:is_truncated]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListTrafficPolicyInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTrafficPolicyInstancesInput, context: context)
        type = Types::ListTrafficPolicyInstancesInput.new
        type.hosted_zone_id_marker = params[:hosted_zone_id_marker]
        type.traffic_policy_instance_name_marker = params[:traffic_policy_instance_name_marker]
        type.traffic_policy_instance_type_marker = params[:traffic_policy_instance_type_marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListTrafficPolicyInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTrafficPolicyInstancesOutput, context: context)
        type = Types::ListTrafficPolicyInstancesOutput.new
        type.traffic_policy_instances = TrafficPolicyInstances.build(params[:traffic_policy_instances], context: "#{context}[:traffic_policy_instances]") unless params[:traffic_policy_instances].nil?
        type.hosted_zone_id_marker = params[:hosted_zone_id_marker]
        type.traffic_policy_instance_name_marker = params[:traffic_policy_instance_name_marker]
        type.traffic_policy_instance_type_marker = params[:traffic_policy_instance_type_marker]
        type.is_truncated = params[:is_truncated]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListTrafficPolicyVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTrafficPolicyVersionsInput, context: context)
        type = Types::ListTrafficPolicyVersionsInput.new
        type.id = params[:id]
        type.traffic_policy_version_marker = params[:traffic_policy_version_marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListTrafficPolicyVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTrafficPolicyVersionsOutput, context: context)
        type = Types::ListTrafficPolicyVersionsOutput.new
        type.traffic_policies = TrafficPolicies.build(params[:traffic_policies], context: "#{context}[:traffic_policies]") unless params[:traffic_policies].nil?
        type.is_truncated = params[:is_truncated]
        type.traffic_policy_version_marker = params[:traffic_policy_version_marker]
        type.max_items = params[:max_items]
        type
      end
    end

    module ListVPCAssociationAuthorizationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVPCAssociationAuthorizationsInput, context: context)
        type = Types::ListVPCAssociationAuthorizationsInput.new
        type.hosted_zone_id = params[:hosted_zone_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListVPCAssociationAuthorizationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListVPCAssociationAuthorizationsOutput, context: context)
        type = Types::ListVPCAssociationAuthorizationsOutput.new
        type.hosted_zone_id = params[:hosted_zone_id]
        type.next_token = params[:next_token]
        type.vp_cs = VPCs.build(params[:vp_cs], context: "#{context}[:vp_cs]") unless params[:vp_cs].nil?
        type
      end
    end

    module LocationSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LocationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LocationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LocationSummary, context: context)
        type = Types::LocationSummary.new
        type.location_name = params[:location_name]
        type
      end
    end

    module NoSuchChange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoSuchChange, context: context)
        type = Types::NoSuchChange.new
        type.message = params[:message]
        type
      end
    end

    module NoSuchCidrCollectionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoSuchCidrCollectionException, context: context)
        type = Types::NoSuchCidrCollectionException.new
        type.message = params[:message]
        type
      end
    end

    module NoSuchCidrLocationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoSuchCidrLocationException, context: context)
        type = Types::NoSuchCidrLocationException.new
        type.message = params[:message]
        type
      end
    end

    module NoSuchCloudWatchLogsLogGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoSuchCloudWatchLogsLogGroup, context: context)
        type = Types::NoSuchCloudWatchLogsLogGroup.new
        type.message = params[:message]
        type
      end
    end

    module NoSuchDelegationSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoSuchDelegationSet, context: context)
        type = Types::NoSuchDelegationSet.new
        type.message = params[:message]
        type
      end
    end

    module NoSuchGeoLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoSuchGeoLocation, context: context)
        type = Types::NoSuchGeoLocation.new
        type.message = params[:message]
        type
      end
    end

    module NoSuchHealthCheck
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoSuchHealthCheck, context: context)
        type = Types::NoSuchHealthCheck.new
        type.message = params[:message]
        type
      end
    end

    module NoSuchHostedZone
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoSuchHostedZone, context: context)
        type = Types::NoSuchHostedZone.new
        type.message = params[:message]
        type
      end
    end

    module NoSuchKeySigningKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoSuchKeySigningKey, context: context)
        type = Types::NoSuchKeySigningKey.new
        type.message = params[:message]
        type
      end
    end

    module NoSuchQueryLoggingConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoSuchQueryLoggingConfig, context: context)
        type = Types::NoSuchQueryLoggingConfig.new
        type.message = params[:message]
        type
      end
    end

    module NoSuchTrafficPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoSuchTrafficPolicy, context: context)
        type = Types::NoSuchTrafficPolicy.new
        type.message = params[:message]
        type
      end
    end

    module NoSuchTrafficPolicyInstance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoSuchTrafficPolicyInstance, context: context)
        type = Types::NoSuchTrafficPolicyInstance.new
        type.message = params[:message]
        type
      end
    end

    module NotAuthorizedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotAuthorizedException, context: context)
        type = Types::NotAuthorizedException.new
        type.message = params[:message]
        type
      end
    end

    module PriorRequestNotComplete
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PriorRequestNotComplete, context: context)
        type = Types::PriorRequestNotComplete.new
        type.message = params[:message]
        type
      end
    end

    module PublicZoneVPCAssociation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublicZoneVPCAssociation, context: context)
        type = Types::PublicZoneVPCAssociation.new
        type.message = params[:message]
        type
      end
    end

    module QueryLoggingConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryLoggingConfig, context: context)
        type = Types::QueryLoggingConfig.new
        type.id = params[:id]
        type.hosted_zone_id = params[:hosted_zone_id]
        type.cloud_watch_logs_log_group_arn = params[:cloud_watch_logs_log_group_arn]
        type
      end
    end

    module QueryLoggingConfigAlreadyExists
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryLoggingConfigAlreadyExists, context: context)
        type = Types::QueryLoggingConfigAlreadyExists.new
        type.message = params[:message]
        type
      end
    end

    module QueryLoggingConfigs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << QueryLoggingConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecordData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResettableElementNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceRecord
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceRecord, context: context)
        type = Types::ResourceRecord.new
        type.value = params[:value]
        type
      end
    end

    module ResourceRecordSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceRecordSet, context: context)
        type = Types::ResourceRecordSet.new
        type.name = params[:name]
        type.type = params[:type]
        type.set_identifier = params[:set_identifier]
        type.weight = params[:weight]
        type.region = params[:region]
        type.geo_location = GeoLocation.build(params[:geo_location], context: "#{context}[:geo_location]") unless params[:geo_location].nil?
        type.failover = params[:failover]
        type.multi_value_answer = params[:multi_value_answer]
        type.ttl = params[:ttl]
        type.resource_records = ResourceRecords.build(params[:resource_records], context: "#{context}[:resource_records]") unless params[:resource_records].nil?
        type.alias_target = AliasTarget.build(params[:alias_target], context: "#{context}[:alias_target]") unless params[:alias_target].nil?
        type.health_check_id = params[:health_check_id]
        type.traffic_policy_instance_id = params[:traffic_policy_instance_id]
        type.cidr_routing_config = CidrRoutingConfig.build(params[:cidr_routing_config], context: "#{context}[:cidr_routing_config]") unless params[:cidr_routing_config].nil?
        type
      end
    end

    module ResourceRecordSets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceRecordSet.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceRecords
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceRecord.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceTagSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceTagSet, context: context)
        type = Types::ResourceTagSet.new
        type.resource_type = params[:resource_type]
        type.resource_id = params[:resource_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ResourceTagSetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceTagSet.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReusableDelegationSetLimit
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReusableDelegationSetLimit, context: context)
        type = Types::ReusableDelegationSetLimit.new
        type.type = params[:type]
        type.value = params[:value]
        type
      end
    end

    module StatusReport
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StatusReport, context: context)
        type = Types::StatusReport.new
        type.status = params[:status]
        type.checked_time = params[:checked_time]
        type
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

    module TagResourceIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TestDNSAnswerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestDNSAnswerInput, context: context)
        type = Types::TestDNSAnswerInput.new
        type.hosted_zone_id = params[:hosted_zone_id]
        type.record_name = params[:record_name]
        type.record_type = params[:record_type]
        type.resolver_ip = params[:resolver_ip]
        type.edns0_client_subnet_ip = params[:edns0_client_subnet_ip]
        type.edns0_client_subnet_mask = params[:edns0_client_subnet_mask]
        type
      end
    end

    module TestDNSAnswerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestDNSAnswerOutput, context: context)
        type = Types::TestDNSAnswerOutput.new
        type.nameserver = params[:nameserver]
        type.record_name = params[:record_name]
        type.record_type = params[:record_type]
        type.record_data = RecordData.build(params[:record_data], context: "#{context}[:record_data]") unless params[:record_data].nil?
        type.response_code = params[:response_code]
        type.protocol = params[:protocol]
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module TooManyHealthChecks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyHealthChecks, context: context)
        type = Types::TooManyHealthChecks.new
        type.message = params[:message]
        type
      end
    end

    module TooManyHostedZones
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyHostedZones, context: context)
        type = Types::TooManyHostedZones.new
        type.message = params[:message]
        type
      end
    end

    module TooManyKeySigningKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyKeySigningKeys, context: context)
        type = Types::TooManyKeySigningKeys.new
        type.message = params[:message]
        type
      end
    end

    module TooManyTrafficPolicies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTrafficPolicies, context: context)
        type = Types::TooManyTrafficPolicies.new
        type.message = params[:message]
        type
      end
    end

    module TooManyTrafficPolicyInstances
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTrafficPolicyInstances, context: context)
        type = Types::TooManyTrafficPolicyInstances.new
        type.message = params[:message]
        type
      end
    end

    module TooManyTrafficPolicyVersionsForCurrentPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTrafficPolicyVersionsForCurrentPolicy, context: context)
        type = Types::TooManyTrafficPolicyVersionsForCurrentPolicy.new
        type.message = params[:message]
        type
      end
    end

    module TooManyVPCAssociationAuthorizations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyVPCAssociationAuthorizations, context: context)
        type = Types::TooManyVPCAssociationAuthorizations.new
        type.message = params[:message]
        type
      end
    end

    module TrafficPolicies
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TrafficPolicy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TrafficPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrafficPolicy, context: context)
        type = Types::TrafficPolicy.new
        type.id = params[:id]
        type.version = params[:version]
        type.name = params[:name]
        type.type = params[:type]
        type.document = params[:document]
        type.comment = params[:comment]
        type
      end
    end

    module TrafficPolicyAlreadyExists
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrafficPolicyAlreadyExists, context: context)
        type = Types::TrafficPolicyAlreadyExists.new
        type.message = params[:message]
        type
      end
    end

    module TrafficPolicyInUse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrafficPolicyInUse, context: context)
        type = Types::TrafficPolicyInUse.new
        type.message = params[:message]
        type
      end
    end

    module TrafficPolicyInstance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrafficPolicyInstance, context: context)
        type = Types::TrafficPolicyInstance.new
        type.id = params[:id]
        type.hosted_zone_id = params[:hosted_zone_id]
        type.name = params[:name]
        type.ttl = params[:ttl]
        type.state = params[:state]
        type.message = params[:message]
        type.traffic_policy_id = params[:traffic_policy_id]
        type.traffic_policy_version = params[:traffic_policy_version]
        type.traffic_policy_type = params[:traffic_policy_type]
        type
      end
    end

    module TrafficPolicyInstanceAlreadyExists
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrafficPolicyInstanceAlreadyExists, context: context)
        type = Types::TrafficPolicyInstanceAlreadyExists.new
        type.message = params[:message]
        type
      end
    end

    module TrafficPolicyInstances
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TrafficPolicyInstance.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TrafficPolicySummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TrafficPolicySummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TrafficPolicySummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrafficPolicySummary, context: context)
        type = Types::TrafficPolicySummary.new
        type.id = params[:id]
        type.name = params[:name]
        type.type = params[:type]
        type.latest_version = params[:latest_version]
        type.traffic_policy_count = params[:traffic_policy_count]
        type
      end
    end

    module UpdateHealthCheckInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateHealthCheckInput, context: context)
        type = Types::UpdateHealthCheckInput.new
        type.health_check_id = params[:health_check_id]
        type.health_check_version = params[:health_check_version]
        type.ip_address = params[:ip_address]
        type.port = params[:port]
        type.resource_path = params[:resource_path]
        type.fully_qualified_domain_name = params[:fully_qualified_domain_name]
        type.search_string = params[:search_string]
        type.failure_threshold = params[:failure_threshold]
        type.inverted = params[:inverted]
        type.disabled = params[:disabled]
        type.health_threshold = params[:health_threshold]
        type.child_health_checks = ChildHealthCheckList.build(params[:child_health_checks], context: "#{context}[:child_health_checks]") unless params[:child_health_checks].nil?
        type.enable_sni = params[:enable_sni]
        type.regions = HealthCheckRegionList.build(params[:regions], context: "#{context}[:regions]") unless params[:regions].nil?
        type.alarm_identifier = AlarmIdentifier.build(params[:alarm_identifier], context: "#{context}[:alarm_identifier]") unless params[:alarm_identifier].nil?
        type.insufficient_data_health_status = params[:insufficient_data_health_status]
        type.reset_elements = ResettableElementNameList.build(params[:reset_elements], context: "#{context}[:reset_elements]") unless params[:reset_elements].nil?
        type
      end
    end

    module UpdateHealthCheckOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateHealthCheckOutput, context: context)
        type = Types::UpdateHealthCheckOutput.new
        type.health_check = HealthCheck.build(params[:health_check], context: "#{context}[:health_check]") unless params[:health_check].nil?
        type
      end
    end

    module UpdateHostedZoneCommentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateHostedZoneCommentInput, context: context)
        type = Types::UpdateHostedZoneCommentInput.new
        type.id = params[:id]
        type.comment = params[:comment]
        type
      end
    end

    module UpdateHostedZoneCommentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateHostedZoneCommentOutput, context: context)
        type = Types::UpdateHostedZoneCommentOutput.new
        type.hosted_zone = HostedZone.build(params[:hosted_zone], context: "#{context}[:hosted_zone]") unless params[:hosted_zone].nil?
        type
      end
    end

    module UpdateTrafficPolicyCommentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTrafficPolicyCommentInput, context: context)
        type = Types::UpdateTrafficPolicyCommentInput.new
        type.id = params[:id]
        type.version = params[:version]
        type.comment = params[:comment]
        type
      end
    end

    module UpdateTrafficPolicyCommentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTrafficPolicyCommentOutput, context: context)
        type = Types::UpdateTrafficPolicyCommentOutput.new
        type.traffic_policy = TrafficPolicy.build(params[:traffic_policy], context: "#{context}[:traffic_policy]") unless params[:traffic_policy].nil?
        type
      end
    end

    module UpdateTrafficPolicyInstanceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTrafficPolicyInstanceInput, context: context)
        type = Types::UpdateTrafficPolicyInstanceInput.new
        type.id = params[:id]
        type.ttl = params[:ttl]
        type.traffic_policy_id = params[:traffic_policy_id]
        type.traffic_policy_version = params[:traffic_policy_version]
        type
      end
    end

    module UpdateTrafficPolicyInstanceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTrafficPolicyInstanceOutput, context: context)
        type = Types::UpdateTrafficPolicyInstanceOutput.new
        type.traffic_policy_instance = TrafficPolicyInstance.build(params[:traffic_policy_instance], context: "#{context}[:traffic_policy_instance]") unless params[:traffic_policy_instance].nil?
        type
      end
    end

    module VPC
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VPC, context: context)
        type = Types::VPC.new
        type.vpc_region = params[:vpc_region]
        type.vpc_id = params[:vpc_id]
        type
      end
    end

    module VPCAssociationAuthorizationNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VPCAssociationAuthorizationNotFound, context: context)
        type = Types::VPCAssociationAuthorizationNotFound.new
        type.message = params[:message]
        type
      end
    end

    module VPCAssociationNotFound
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VPCAssociationNotFound, context: context)
        type = Types::VPCAssociationNotFound.new
        type.message = params[:message]
        type
      end
    end

    module VPCs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VPC.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
