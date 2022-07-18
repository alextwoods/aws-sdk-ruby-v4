# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::ConfigService
  module Validators

    class AccountAggregationSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccountAggregationSource, context: context)
        AccountAggregationSourceAccountList.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
        Hearth::Validator.validate!(input[:all_aws_regions], ::TrueClass, ::FalseClass, context: "#{context}[:all_aws_regions]")
        AggregatorRegionList.validate!(input[:aws_regions], context: "#{context}[:aws_regions]") unless input[:aws_regions].nil?
      end
    end

    class AccountAggregationSourceAccountList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AccountAggregationSourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AccountAggregationSource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AggregateComplianceByConfigRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AggregateComplianceByConfigRule, context: context)
        Hearth::Validator.validate!(input[:config_rule_name], ::String, context: "#{context}[:config_rule_name]")
        Compliance.validate!(input[:compliance], context: "#{context}[:compliance]") unless input[:compliance].nil?
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
      end
    end

    class AggregateComplianceByConfigRuleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AggregateComplianceByConfigRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AggregateComplianceByConformancePack
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AggregateComplianceByConformancePack, context: context)
        Hearth::Validator.validate!(input[:conformance_pack_name], ::String, context: "#{context}[:conformance_pack_name]")
        AggregateConformancePackCompliance.validate!(input[:compliance], context: "#{context}[:compliance]") unless input[:compliance].nil?
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
      end
    end

    class AggregateComplianceByConformancePackList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AggregateComplianceByConformancePack.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AggregateComplianceCount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AggregateComplianceCount, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        ComplianceSummary.validate!(input[:compliance_summary], context: "#{context}[:compliance_summary]") unless input[:compliance_summary].nil?
      end
    end

    class AggregateComplianceCountList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AggregateComplianceCount.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AggregateConformancePackCompliance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AggregateConformancePackCompliance, context: context)
        Hearth::Validator.validate!(input[:compliance_type], ::String, context: "#{context}[:compliance_type]")
        Hearth::Validator.validate!(input[:compliant_rule_count], ::Integer, context: "#{context}[:compliant_rule_count]")
        Hearth::Validator.validate!(input[:non_compliant_rule_count], ::Integer, context: "#{context}[:non_compliant_rule_count]")
        Hearth::Validator.validate!(input[:total_rule_count], ::Integer, context: "#{context}[:total_rule_count]")
      end
    end

    class AggregateConformancePackComplianceCount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AggregateConformancePackComplianceCount, context: context)
        Hearth::Validator.validate!(input[:compliant_conformance_pack_count], ::Integer, context: "#{context}[:compliant_conformance_pack_count]")
        Hearth::Validator.validate!(input[:non_compliant_conformance_pack_count], ::Integer, context: "#{context}[:non_compliant_conformance_pack_count]")
      end
    end

    class AggregateConformancePackComplianceFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AggregateConformancePackComplianceFilters, context: context)
        Hearth::Validator.validate!(input[:conformance_pack_name], ::String, context: "#{context}[:conformance_pack_name]")
        Hearth::Validator.validate!(input[:compliance_type], ::String, context: "#{context}[:compliance_type]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
      end
    end

    class AggregateConformancePackComplianceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AggregateConformancePackComplianceSummary, context: context)
        AggregateConformancePackComplianceCount.validate!(input[:compliance_summary], context: "#{context}[:compliance_summary]") unless input[:compliance_summary].nil?
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
      end
    end

    class AggregateConformancePackComplianceSummaryFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AggregateConformancePackComplianceSummaryFilters, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
      end
    end

    class AggregateConformancePackComplianceSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AggregateConformancePackComplianceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AggregateEvaluationResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AggregateEvaluationResult, context: context)
        EvaluationResultIdentifier.validate!(input[:evaluation_result_identifier], context: "#{context}[:evaluation_result_identifier]") unless input[:evaluation_result_identifier].nil?
        Hearth::Validator.validate!(input[:compliance_type], ::String, context: "#{context}[:compliance_type]")
        Hearth::Validator.validate!(input[:result_recorded_time], ::Time, context: "#{context}[:result_recorded_time]")
        Hearth::Validator.validate!(input[:config_rule_invoked_time], ::Time, context: "#{context}[:config_rule_invoked_time]")
        Hearth::Validator.validate!(input[:annotation], ::String, context: "#{context}[:annotation]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
      end
    end

    class AggregateEvaluationResultList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AggregateEvaluationResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AggregateResourceIdentifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AggregateResourceIdentifier, context: context)
        Hearth::Validator.validate!(input[:source_account_id], ::String, context: "#{context}[:source_account_id]")
        Hearth::Validator.validate!(input[:source_region], ::String, context: "#{context}[:source_region]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class AggregatedSourceStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AggregatedSourceStatus, context: context)
        Hearth::Validator.validate!(input[:source_id], ::String, context: "#{context}[:source_id]")
        Hearth::Validator.validate!(input[:source_type], ::String, context: "#{context}[:source_type]")
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
        Hearth::Validator.validate!(input[:last_update_status], ::String, context: "#{context}[:last_update_status]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
        Hearth::Validator.validate!(input[:last_error_code], ::String, context: "#{context}[:last_error_code]")
        Hearth::Validator.validate!(input[:last_error_message], ::String, context: "#{context}[:last_error_message]")
      end
    end

    class AggregatedSourceStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AggregatedSourceStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AggregatedSourceStatusTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AggregationAuthorization
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AggregationAuthorization, context: context)
        Hearth::Validator.validate!(input[:aggregation_authorization_arn], ::String, context: "#{context}[:aggregation_authorization_arn]")
        Hearth::Validator.validate!(input[:authorized_account_id], ::String, context: "#{context}[:authorized_account_id]")
        Hearth::Validator.validate!(input[:authorized_aws_region], ::String, context: "#{context}[:authorized_aws_region]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class AggregationAuthorizationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AggregationAuthorization.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AggregatorRegionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BaseConfigurationItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BaseConfigurationItem, context: context)
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:configuration_item_capture_time], ::Time, context: "#{context}[:configuration_item_capture_time]")
        Hearth::Validator.validate!(input[:configuration_item_status], ::String, context: "#{context}[:configuration_item_status]")
        Hearth::Validator.validate!(input[:configuration_state_id], ::String, context: "#{context}[:configuration_state_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:resource_creation_time], ::Time, context: "#{context}[:resource_creation_time]")
        Hearth::Validator.validate!(input[:configuration], ::String, context: "#{context}[:configuration]")
        SupplementaryConfiguration.validate!(input[:supplementary_configuration], context: "#{context}[:supplementary_configuration]") unless input[:supplementary_configuration].nil?
      end
    end

    class BaseConfigurationItems
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BaseConfigurationItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchGetAggregateResourceConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetAggregateResourceConfigInput, context: context)
        Hearth::Validator.validate!(input[:configuration_aggregator_name], ::String, context: "#{context}[:configuration_aggregator_name]")
        ResourceIdentifiersList.validate!(input[:resource_identifiers], context: "#{context}[:resource_identifiers]") unless input[:resource_identifiers].nil?
      end
    end

    class BatchGetAggregateResourceConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetAggregateResourceConfigOutput, context: context)
        BaseConfigurationItems.validate!(input[:base_configuration_items], context: "#{context}[:base_configuration_items]") unless input[:base_configuration_items].nil?
        UnprocessedResourceIdentifierList.validate!(input[:unprocessed_resource_identifiers], context: "#{context}[:unprocessed_resource_identifiers]") unless input[:unprocessed_resource_identifiers].nil?
      end
    end

    class BatchGetResourceConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetResourceConfigInput, context: context)
        ResourceKeys.validate!(input[:resource_keys], context: "#{context}[:resource_keys]") unless input[:resource_keys].nil?
      end
    end

    class BatchGetResourceConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetResourceConfigOutput, context: context)
        BaseConfigurationItems.validate!(input[:base_configuration_items], context: "#{context}[:base_configuration_items]") unless input[:base_configuration_items].nil?
        ResourceKeys.validate!(input[:unprocessed_resource_keys], context: "#{context}[:unprocessed_resource_keys]") unless input[:unprocessed_resource_keys].nil?
      end
    end

    class Compliance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Compliance, context: context)
        Hearth::Validator.validate!(input[:compliance_type], ::String, context: "#{context}[:compliance_type]")
        ComplianceContributorCount.validate!(input[:compliance_contributor_count], context: "#{context}[:compliance_contributor_count]") unless input[:compliance_contributor_count].nil?
      end
    end

    class ComplianceByConfigRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComplianceByConfigRule, context: context)
        Hearth::Validator.validate!(input[:config_rule_name], ::String, context: "#{context}[:config_rule_name]")
        Compliance.validate!(input[:compliance], context: "#{context}[:compliance]") unless input[:compliance].nil?
      end
    end

    class ComplianceByConfigRules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ComplianceByConfigRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ComplianceByResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComplianceByResource, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Compliance.validate!(input[:compliance], context: "#{context}[:compliance]") unless input[:compliance].nil?
      end
    end

    class ComplianceByResources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ComplianceByResource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ComplianceContributorCount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComplianceContributorCount, context: context)
        Hearth::Validator.validate!(input[:capped_count], ::Integer, context: "#{context}[:capped_count]")
        Hearth::Validator.validate!(input[:cap_exceeded], ::TrueClass, ::FalseClass, context: "#{context}[:cap_exceeded]")
      end
    end

    class ComplianceResourceTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ComplianceSummariesByResourceType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ComplianceSummaryByResourceType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ComplianceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComplianceSummary, context: context)
        ComplianceContributorCount.validate!(input[:compliant_resource_count], context: "#{context}[:compliant_resource_count]") unless input[:compliant_resource_count].nil?
        ComplianceContributorCount.validate!(input[:non_compliant_resource_count], context: "#{context}[:non_compliant_resource_count]") unless input[:non_compliant_resource_count].nil?
        Hearth::Validator.validate!(input[:compliance_summary_timestamp], ::Time, context: "#{context}[:compliance_summary_timestamp]")
      end
    end

    class ComplianceSummaryByResourceType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComplianceSummaryByResourceType, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        ComplianceSummary.validate!(input[:compliance_summary], context: "#{context}[:compliance_summary]") unless input[:compliance_summary].nil?
      end
    end

    class ComplianceTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConfigExportDeliveryInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigExportDeliveryInfo, context: context)
        Hearth::Validator.validate!(input[:last_status], ::String, context: "#{context}[:last_status]")
        Hearth::Validator.validate!(input[:last_error_code], ::String, context: "#{context}[:last_error_code]")
        Hearth::Validator.validate!(input[:last_error_message], ::String, context: "#{context}[:last_error_message]")
        Hearth::Validator.validate!(input[:last_attempt_time], ::Time, context: "#{context}[:last_attempt_time]")
        Hearth::Validator.validate!(input[:last_successful_time], ::Time, context: "#{context}[:last_successful_time]")
        Hearth::Validator.validate!(input[:next_delivery_time], ::Time, context: "#{context}[:next_delivery_time]")
      end
    end

    class ConfigRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigRule, context: context)
        Hearth::Validator.validate!(input[:config_rule_name], ::String, context: "#{context}[:config_rule_name]")
        Hearth::Validator.validate!(input[:config_rule_arn], ::String, context: "#{context}[:config_rule_arn]")
        Hearth::Validator.validate!(input[:config_rule_id], ::String, context: "#{context}[:config_rule_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Scope.validate!(input[:scope], context: "#{context}[:scope]") unless input[:scope].nil?
        Source.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        Hearth::Validator.validate!(input[:input_parameters], ::String, context: "#{context}[:input_parameters]")
        Hearth::Validator.validate!(input[:maximum_execution_frequency], ::String, context: "#{context}[:maximum_execution_frequency]")
        Hearth::Validator.validate!(input[:config_rule_state], ::String, context: "#{context}[:config_rule_state]")
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
      end
    end

    class ConfigRuleComplianceFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigRuleComplianceFilters, context: context)
        Hearth::Validator.validate!(input[:config_rule_name], ::String, context: "#{context}[:config_rule_name]")
        Hearth::Validator.validate!(input[:compliance_type], ::String, context: "#{context}[:compliance_type]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
      end
    end

    class ConfigRuleComplianceSummaryFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigRuleComplianceSummaryFilters, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
      end
    end

    class ConfigRuleEvaluationStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigRuleEvaluationStatus, context: context)
        Hearth::Validator.validate!(input[:config_rule_name], ::String, context: "#{context}[:config_rule_name]")
        Hearth::Validator.validate!(input[:config_rule_arn], ::String, context: "#{context}[:config_rule_arn]")
        Hearth::Validator.validate!(input[:config_rule_id], ::String, context: "#{context}[:config_rule_id]")
        Hearth::Validator.validate!(input[:last_successful_invocation_time], ::Time, context: "#{context}[:last_successful_invocation_time]")
        Hearth::Validator.validate!(input[:last_failed_invocation_time], ::Time, context: "#{context}[:last_failed_invocation_time]")
        Hearth::Validator.validate!(input[:last_successful_evaluation_time], ::Time, context: "#{context}[:last_successful_evaluation_time]")
        Hearth::Validator.validate!(input[:last_failed_evaluation_time], ::Time, context: "#{context}[:last_failed_evaluation_time]")
        Hearth::Validator.validate!(input[:first_activated_time], ::Time, context: "#{context}[:first_activated_time]")
        Hearth::Validator.validate!(input[:last_deactivated_time], ::Time, context: "#{context}[:last_deactivated_time]")
        Hearth::Validator.validate!(input[:last_error_code], ::String, context: "#{context}[:last_error_code]")
        Hearth::Validator.validate!(input[:last_error_message], ::String, context: "#{context}[:last_error_message]")
        Hearth::Validator.validate!(input[:first_evaluation_started], ::TrueClass, ::FalseClass, context: "#{context}[:first_evaluation_started]")
        Hearth::Validator.validate!(input[:last_debug_log_delivery_status], ::String, context: "#{context}[:last_debug_log_delivery_status]")
        Hearth::Validator.validate!(input[:last_debug_log_delivery_status_reason], ::String, context: "#{context}[:last_debug_log_delivery_status_reason]")
        Hearth::Validator.validate!(input[:last_debug_log_delivery_time], ::Time, context: "#{context}[:last_debug_log_delivery_time]")
      end
    end

    class ConfigRuleEvaluationStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ConfigRuleEvaluationStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConfigRuleNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConfigRules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ConfigRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConfigSnapshotDeliveryProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigSnapshotDeliveryProperties, context: context)
        Hearth::Validator.validate!(input[:delivery_frequency], ::String, context: "#{context}[:delivery_frequency]")
      end
    end

    class ConfigStreamDeliveryInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigStreamDeliveryInfo, context: context)
        Hearth::Validator.validate!(input[:last_status], ::String, context: "#{context}[:last_status]")
        Hearth::Validator.validate!(input[:last_error_code], ::String, context: "#{context}[:last_error_code]")
        Hearth::Validator.validate!(input[:last_error_message], ::String, context: "#{context}[:last_error_message]")
        Hearth::Validator.validate!(input[:last_status_change_time], ::Time, context: "#{context}[:last_status_change_time]")
      end
    end

    class ConfigurationAggregator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigurationAggregator, context: context)
        Hearth::Validator.validate!(input[:configuration_aggregator_name], ::String, context: "#{context}[:configuration_aggregator_name]")
        Hearth::Validator.validate!(input[:configuration_aggregator_arn], ::String, context: "#{context}[:configuration_aggregator_arn]")
        AccountAggregationSourceList.validate!(input[:account_aggregation_sources], context: "#{context}[:account_aggregation_sources]") unless input[:account_aggregation_sources].nil?
        OrganizationAggregationSource.validate!(input[:organization_aggregation_source], context: "#{context}[:organization_aggregation_source]") unless input[:organization_aggregation_source].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
      end
    end

    class ConfigurationAggregatorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ConfigurationAggregator.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConfigurationAggregatorNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConfigurationItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigurationItem, context: context)
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:configuration_item_capture_time], ::Time, context: "#{context}[:configuration_item_capture_time]")
        Hearth::Validator.validate!(input[:configuration_item_status], ::String, context: "#{context}[:configuration_item_status]")
        Hearth::Validator.validate!(input[:configuration_state_id], ::String, context: "#{context}[:configuration_state_id]")
        Hearth::Validator.validate!(input[:configuration_item_md5_hash], ::String, context: "#{context}[:configuration_item_md5_hash]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:resource_creation_time], ::Time, context: "#{context}[:resource_creation_time]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        RelatedEventList.validate!(input[:related_events], context: "#{context}[:related_events]") unless input[:related_events].nil?
        RelationshipList.validate!(input[:relationships], context: "#{context}[:relationships]") unless input[:relationships].nil?
        Hearth::Validator.validate!(input[:configuration], ::String, context: "#{context}[:configuration]")
        SupplementaryConfiguration.validate!(input[:supplementary_configuration], context: "#{context}[:supplementary_configuration]") unless input[:supplementary_configuration].nil?
      end
    end

    class ConfigurationItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ConfigurationItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConfigurationRecorder
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigurationRecorder, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        RecordingGroup.validate!(input[:recording_group], context: "#{context}[:recording_group]") unless input[:recording_group].nil?
      end
    end

    class ConfigurationRecorderList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ConfigurationRecorder.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConfigurationRecorderNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConfigurationRecorderStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigurationRecorderStatus, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:last_start_time], ::Time, context: "#{context}[:last_start_time]")
        Hearth::Validator.validate!(input[:last_stop_time], ::Time, context: "#{context}[:last_stop_time]")
        Hearth::Validator.validate!(input[:recording], ::TrueClass, ::FalseClass, context: "#{context}[:recording]")
        Hearth::Validator.validate!(input[:last_status], ::String, context: "#{context}[:last_status]")
        Hearth::Validator.validate!(input[:last_error_code], ::String, context: "#{context}[:last_error_code]")
        Hearth::Validator.validate!(input[:last_error_message], ::String, context: "#{context}[:last_error_message]")
        Hearth::Validator.validate!(input[:last_status_change_time], ::Time, context: "#{context}[:last_status_change_time]")
      end
    end

    class ConfigurationRecorderStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ConfigurationRecorderStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConformancePackComplianceFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConformancePackComplianceFilters, context: context)
        ConformancePackConfigRuleNames.validate!(input[:config_rule_names], context: "#{context}[:config_rule_names]") unless input[:config_rule_names].nil?
        Hearth::Validator.validate!(input[:compliance_type], ::String, context: "#{context}[:compliance_type]")
      end
    end

    class ConformancePackComplianceResourceIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConformancePackComplianceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConformancePackComplianceSummary, context: context)
        Hearth::Validator.validate!(input[:conformance_pack_name], ::String, context: "#{context}[:conformance_pack_name]")
        Hearth::Validator.validate!(input[:conformance_pack_compliance_status], ::String, context: "#{context}[:conformance_pack_compliance_status]")
      end
    end

    class ConformancePackComplianceSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ConformancePackComplianceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConformancePackConfigRuleNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConformancePackDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConformancePackDetail, context: context)
        Hearth::Validator.validate!(input[:conformance_pack_name], ::String, context: "#{context}[:conformance_pack_name]")
        Hearth::Validator.validate!(input[:conformance_pack_arn], ::String, context: "#{context}[:conformance_pack_arn]")
        Hearth::Validator.validate!(input[:conformance_pack_id], ::String, context: "#{context}[:conformance_pack_id]")
        Hearth::Validator.validate!(input[:delivery_s3_bucket], ::String, context: "#{context}[:delivery_s3_bucket]")
        Hearth::Validator.validate!(input[:delivery_s3_key_prefix], ::String, context: "#{context}[:delivery_s3_key_prefix]")
        ConformancePackInputParameters.validate!(input[:conformance_pack_input_parameters], context: "#{context}[:conformance_pack_input_parameters]") unless input[:conformance_pack_input_parameters].nil?
        Hearth::Validator.validate!(input[:last_update_requested_time], ::Time, context: "#{context}[:last_update_requested_time]")
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
      end
    end

    class ConformancePackDetailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ConformancePackDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConformancePackEvaluationFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConformancePackEvaluationFilters, context: context)
        ConformancePackConfigRuleNames.validate!(input[:config_rule_names], context: "#{context}[:config_rule_names]") unless input[:config_rule_names].nil?
        Hearth::Validator.validate!(input[:compliance_type], ::String, context: "#{context}[:compliance_type]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        ConformancePackComplianceResourceIds.validate!(input[:resource_ids], context: "#{context}[:resource_ids]") unless input[:resource_ids].nil?
      end
    end

    class ConformancePackEvaluationResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConformancePackEvaluationResult, context: context)
        Hearth::Validator.validate!(input[:compliance_type], ::String, context: "#{context}[:compliance_type]")
        EvaluationResultIdentifier.validate!(input[:evaluation_result_identifier], context: "#{context}[:evaluation_result_identifier]") unless input[:evaluation_result_identifier].nil?
        Hearth::Validator.validate!(input[:config_rule_invoked_time], ::Time, context: "#{context}[:config_rule_invoked_time]")
        Hearth::Validator.validate!(input[:result_recorded_time], ::Time, context: "#{context}[:result_recorded_time]")
        Hearth::Validator.validate!(input[:annotation], ::String, context: "#{context}[:annotation]")
      end
    end

    class ConformancePackInputParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConformancePackInputParameter, context: context)
        Hearth::Validator.validate!(input[:parameter_name], ::String, context: "#{context}[:parameter_name]")
        Hearth::Validator.validate!(input[:parameter_value], ::String, context: "#{context}[:parameter_value]")
      end
    end

    class ConformancePackInputParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ConformancePackInputParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConformancePackNamesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConformancePackNamesToSummarizeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConformancePackRuleCompliance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConformancePackRuleCompliance, context: context)
        Hearth::Validator.validate!(input[:config_rule_name], ::String, context: "#{context}[:config_rule_name]")
        Hearth::Validator.validate!(input[:compliance_type], ::String, context: "#{context}[:compliance_type]")
        ControlsList.validate!(input[:controls], context: "#{context}[:controls]") unless input[:controls].nil?
      end
    end

    class ConformancePackRuleComplianceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ConformancePackRuleCompliance.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConformancePackRuleEvaluationResultsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ConformancePackEvaluationResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConformancePackStatusDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConformancePackStatusDetail, context: context)
        Hearth::Validator.validate!(input[:conformance_pack_name], ::String, context: "#{context}[:conformance_pack_name]")
        Hearth::Validator.validate!(input[:conformance_pack_id], ::String, context: "#{context}[:conformance_pack_id]")
        Hearth::Validator.validate!(input[:conformance_pack_arn], ::String, context: "#{context}[:conformance_pack_arn]")
        Hearth::Validator.validate!(input[:conformance_pack_state], ::String, context: "#{context}[:conformance_pack_state]")
        Hearth::Validator.validate!(input[:stack_arn], ::String, context: "#{context}[:stack_arn]")
        Hearth::Validator.validate!(input[:conformance_pack_status_reason], ::String, context: "#{context}[:conformance_pack_status_reason]")
        Hearth::Validator.validate!(input[:last_update_requested_time], ::Time, context: "#{context}[:last_update_requested_time]")
        Hearth::Validator.validate!(input[:last_update_completed_time], ::Time, context: "#{context}[:last_update_completed_time]")
      end
    end

    class ConformancePackStatusDetailsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ConformancePackStatusDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConformancePackTemplateValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConformancePackTemplateValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ControlsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CustomPolicyDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomPolicyDetails, context: context)
        Hearth::Validator.validate!(input[:policy_runtime], ::String, context: "#{context}[:policy_runtime]")
        Hearth::Validator.validate!(input[:policy_text], ::String, context: "#{context}[:policy_text]")
        Hearth::Validator.validate!(input[:enable_debug_log_delivery], ::TrueClass, ::FalseClass, context: "#{context}[:enable_debug_log_delivery]")
      end
    end

    class DebugLogDeliveryAccounts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DeleteAggregationAuthorizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAggregationAuthorizationInput, context: context)
        Hearth::Validator.validate!(input[:authorized_account_id], ::String, context: "#{context}[:authorized_account_id]")
        Hearth::Validator.validate!(input[:authorized_aws_region], ::String, context: "#{context}[:authorized_aws_region]")
      end
    end

    class DeleteAggregationAuthorizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAggregationAuthorizationOutput, context: context)
      end
    end

    class DeleteConfigRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConfigRuleInput, context: context)
        Hearth::Validator.validate!(input[:config_rule_name], ::String, context: "#{context}[:config_rule_name]")
      end
    end

    class DeleteConfigRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConfigRuleOutput, context: context)
      end
    end

    class DeleteConfigurationAggregatorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConfigurationAggregatorInput, context: context)
        Hearth::Validator.validate!(input[:configuration_aggregator_name], ::String, context: "#{context}[:configuration_aggregator_name]")
      end
    end

    class DeleteConfigurationAggregatorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConfigurationAggregatorOutput, context: context)
      end
    end

    class DeleteConfigurationRecorderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConfigurationRecorderInput, context: context)
        Hearth::Validator.validate!(input[:configuration_recorder_name], ::String, context: "#{context}[:configuration_recorder_name]")
      end
    end

    class DeleteConfigurationRecorderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConfigurationRecorderOutput, context: context)
      end
    end

    class DeleteConformancePackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConformancePackInput, context: context)
        Hearth::Validator.validate!(input[:conformance_pack_name], ::String, context: "#{context}[:conformance_pack_name]")
      end
    end

    class DeleteConformancePackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConformancePackOutput, context: context)
      end
    end

    class DeleteDeliveryChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDeliveryChannelInput, context: context)
        Hearth::Validator.validate!(input[:delivery_channel_name], ::String, context: "#{context}[:delivery_channel_name]")
      end
    end

    class DeleteDeliveryChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDeliveryChannelOutput, context: context)
      end
    end

    class DeleteEvaluationResultsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEvaluationResultsInput, context: context)
        Hearth::Validator.validate!(input[:config_rule_name], ::String, context: "#{context}[:config_rule_name]")
      end
    end

    class DeleteEvaluationResultsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEvaluationResultsOutput, context: context)
      end
    end

    class DeleteOrganizationConfigRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteOrganizationConfigRuleInput, context: context)
        Hearth::Validator.validate!(input[:organization_config_rule_name], ::String, context: "#{context}[:organization_config_rule_name]")
      end
    end

    class DeleteOrganizationConfigRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteOrganizationConfigRuleOutput, context: context)
      end
    end

    class DeleteOrganizationConformancePackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteOrganizationConformancePackInput, context: context)
        Hearth::Validator.validate!(input[:organization_conformance_pack_name], ::String, context: "#{context}[:organization_conformance_pack_name]")
      end
    end

    class DeleteOrganizationConformancePackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteOrganizationConformancePackOutput, context: context)
      end
    end

    class DeletePendingAggregationRequestInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePendingAggregationRequestInput, context: context)
        Hearth::Validator.validate!(input[:requester_account_id], ::String, context: "#{context}[:requester_account_id]")
        Hearth::Validator.validate!(input[:requester_aws_region], ::String, context: "#{context}[:requester_aws_region]")
      end
    end

    class DeletePendingAggregationRequestOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePendingAggregationRequestOutput, context: context)
      end
    end

    class DeleteRemediationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRemediationConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:config_rule_name], ::String, context: "#{context}[:config_rule_name]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class DeleteRemediationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRemediationConfigurationOutput, context: context)
      end
    end

    class DeleteRemediationExceptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRemediationExceptionsInput, context: context)
        Hearth::Validator.validate!(input[:config_rule_name], ::String, context: "#{context}[:config_rule_name]")
        RemediationExceptionResourceKeys.validate!(input[:resource_keys], context: "#{context}[:resource_keys]") unless input[:resource_keys].nil?
      end
    end

    class DeleteRemediationExceptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRemediationExceptionsOutput, context: context)
        FailedDeleteRemediationExceptionsBatches.validate!(input[:failed_batches], context: "#{context}[:failed_batches]") unless input[:failed_batches].nil?
      end
    end

    class DeleteResourceConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourceConfigInput, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
      end
    end

    class DeleteResourceConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourceConfigOutput, context: context)
      end
    end

    class DeleteRetentionConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRetentionConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:retention_configuration_name], ::String, context: "#{context}[:retention_configuration_name]")
      end
    end

    class DeleteRetentionConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRetentionConfigurationOutput, context: context)
      end
    end

    class DeleteStoredQueryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStoredQueryInput, context: context)
        Hearth::Validator.validate!(input[:query_name], ::String, context: "#{context}[:query_name]")
      end
    end

    class DeleteStoredQueryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStoredQueryOutput, context: context)
      end
    end

    class DeliverConfigSnapshotInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeliverConfigSnapshotInput, context: context)
        Hearth::Validator.validate!(input[:delivery_channel_name], ::String, context: "#{context}[:delivery_channel_name]")
      end
    end

    class DeliverConfigSnapshotOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeliverConfigSnapshotOutput, context: context)
        Hearth::Validator.validate!(input[:config_snapshot_id], ::String, context: "#{context}[:config_snapshot_id]")
      end
    end

    class DeliveryChannel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeliveryChannel, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:s3_key_prefix], ::String, context: "#{context}[:s3_key_prefix]")
        Hearth::Validator.validate!(input[:s3_kms_key_arn], ::String, context: "#{context}[:s3_kms_key_arn]")
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        ConfigSnapshotDeliveryProperties.validate!(input[:config_snapshot_delivery_properties], context: "#{context}[:config_snapshot_delivery_properties]") unless input[:config_snapshot_delivery_properties].nil?
      end
    end

    class DeliveryChannelList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DeliveryChannel.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeliveryChannelNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DeliveryChannelStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeliveryChannelStatus, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        ConfigExportDeliveryInfo.validate!(input[:config_snapshot_delivery_info], context: "#{context}[:config_snapshot_delivery_info]") unless input[:config_snapshot_delivery_info].nil?
        ConfigExportDeliveryInfo.validate!(input[:config_history_delivery_info], context: "#{context}[:config_history_delivery_info]") unless input[:config_history_delivery_info].nil?
        ConfigStreamDeliveryInfo.validate!(input[:config_stream_delivery_info], context: "#{context}[:config_stream_delivery_info]") unless input[:config_stream_delivery_info].nil?
      end
    end

    class DeliveryChannelStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DeliveryChannelStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DescribeAggregateComplianceByConfigRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAggregateComplianceByConfigRulesInput, context: context)
        Hearth::Validator.validate!(input[:configuration_aggregator_name], ::String, context: "#{context}[:configuration_aggregator_name]")
        ConfigRuleComplianceFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAggregateComplianceByConfigRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAggregateComplianceByConfigRulesOutput, context: context)
        AggregateComplianceByConfigRuleList.validate!(input[:aggregate_compliance_by_config_rules], context: "#{context}[:aggregate_compliance_by_config_rules]") unless input[:aggregate_compliance_by_config_rules].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAggregateComplianceByConformancePacksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAggregateComplianceByConformancePacksInput, context: context)
        Hearth::Validator.validate!(input[:configuration_aggregator_name], ::String, context: "#{context}[:configuration_aggregator_name]")
        AggregateConformancePackComplianceFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAggregateComplianceByConformancePacksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAggregateComplianceByConformancePacksOutput, context: context)
        AggregateComplianceByConformancePackList.validate!(input[:aggregate_compliance_by_conformance_packs], context: "#{context}[:aggregate_compliance_by_conformance_packs]") unless input[:aggregate_compliance_by_conformance_packs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAggregationAuthorizationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAggregationAuthorizationsInput, context: context)
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAggregationAuthorizationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAggregationAuthorizationsOutput, context: context)
        AggregationAuthorizationList.validate!(input[:aggregation_authorizations], context: "#{context}[:aggregation_authorizations]") unless input[:aggregation_authorizations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeComplianceByConfigRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeComplianceByConfigRuleInput, context: context)
        ConfigRuleNames.validate!(input[:config_rule_names], context: "#{context}[:config_rule_names]") unless input[:config_rule_names].nil?
        ComplianceTypes.validate!(input[:compliance_types], context: "#{context}[:compliance_types]") unless input[:compliance_types].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeComplianceByConfigRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeComplianceByConfigRuleOutput, context: context)
        ComplianceByConfigRules.validate!(input[:compliance_by_config_rules], context: "#{context}[:compliance_by_config_rules]") unless input[:compliance_by_config_rules].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeComplianceByResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeComplianceByResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        ComplianceTypes.validate!(input[:compliance_types], context: "#{context}[:compliance_types]") unless input[:compliance_types].nil?
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeComplianceByResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeComplianceByResourceOutput, context: context)
        ComplianceByResources.validate!(input[:compliance_by_resources], context: "#{context}[:compliance_by_resources]") unless input[:compliance_by_resources].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeConfigRuleEvaluationStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConfigRuleEvaluationStatusInput, context: context)
        ConfigRuleNames.validate!(input[:config_rule_names], context: "#{context}[:config_rule_names]") unless input[:config_rule_names].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class DescribeConfigRuleEvaluationStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConfigRuleEvaluationStatusOutput, context: context)
        ConfigRuleEvaluationStatusList.validate!(input[:config_rules_evaluation_status], context: "#{context}[:config_rules_evaluation_status]") unless input[:config_rules_evaluation_status].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeConfigRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConfigRulesInput, context: context)
        ConfigRuleNames.validate!(input[:config_rule_names], context: "#{context}[:config_rule_names]") unless input[:config_rule_names].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeConfigRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConfigRulesOutput, context: context)
        ConfigRules.validate!(input[:config_rules], context: "#{context}[:config_rules]") unless input[:config_rules].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeConfigurationAggregatorSourcesStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConfigurationAggregatorSourcesStatusInput, context: context)
        Hearth::Validator.validate!(input[:configuration_aggregator_name], ::String, context: "#{context}[:configuration_aggregator_name]")
        AggregatedSourceStatusTypeList.validate!(input[:update_status], context: "#{context}[:update_status]") unless input[:update_status].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class DescribeConfigurationAggregatorSourcesStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConfigurationAggregatorSourcesStatusOutput, context: context)
        AggregatedSourceStatusList.validate!(input[:aggregated_source_status_list], context: "#{context}[:aggregated_source_status_list]") unless input[:aggregated_source_status_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeConfigurationAggregatorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConfigurationAggregatorsInput, context: context)
        ConfigurationAggregatorNameList.validate!(input[:configuration_aggregator_names], context: "#{context}[:configuration_aggregator_names]") unless input[:configuration_aggregator_names].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class DescribeConfigurationAggregatorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConfigurationAggregatorsOutput, context: context)
        ConfigurationAggregatorList.validate!(input[:configuration_aggregators], context: "#{context}[:configuration_aggregators]") unless input[:configuration_aggregators].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeConfigurationRecorderStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConfigurationRecorderStatusInput, context: context)
        ConfigurationRecorderNameList.validate!(input[:configuration_recorder_names], context: "#{context}[:configuration_recorder_names]") unless input[:configuration_recorder_names].nil?
      end
    end

    class DescribeConfigurationRecorderStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConfigurationRecorderStatusOutput, context: context)
        ConfigurationRecorderStatusList.validate!(input[:configuration_recorders_status], context: "#{context}[:configuration_recorders_status]") unless input[:configuration_recorders_status].nil?
      end
    end

    class DescribeConfigurationRecordersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConfigurationRecordersInput, context: context)
        ConfigurationRecorderNameList.validate!(input[:configuration_recorder_names], context: "#{context}[:configuration_recorder_names]") unless input[:configuration_recorder_names].nil?
      end
    end

    class DescribeConfigurationRecordersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConfigurationRecordersOutput, context: context)
        ConfigurationRecorderList.validate!(input[:configuration_recorders], context: "#{context}[:configuration_recorders]") unless input[:configuration_recorders].nil?
      end
    end

    class DescribeConformancePackComplianceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConformancePackComplianceInput, context: context)
        Hearth::Validator.validate!(input[:conformance_pack_name], ::String, context: "#{context}[:conformance_pack_name]")
        ConformancePackComplianceFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeConformancePackComplianceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConformancePackComplianceOutput, context: context)
        Hearth::Validator.validate!(input[:conformance_pack_name], ::String, context: "#{context}[:conformance_pack_name]")
        ConformancePackRuleComplianceList.validate!(input[:conformance_pack_rule_compliance_list], context: "#{context}[:conformance_pack_rule_compliance_list]") unless input[:conformance_pack_rule_compliance_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeConformancePackStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConformancePackStatusInput, context: context)
        ConformancePackNamesList.validate!(input[:conformance_pack_names], context: "#{context}[:conformance_pack_names]") unless input[:conformance_pack_names].nil?
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeConformancePackStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConformancePackStatusOutput, context: context)
        ConformancePackStatusDetailsList.validate!(input[:conformance_pack_status_details], context: "#{context}[:conformance_pack_status_details]") unless input[:conformance_pack_status_details].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeConformancePacksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConformancePacksInput, context: context)
        ConformancePackNamesList.validate!(input[:conformance_pack_names], context: "#{context}[:conformance_pack_names]") unless input[:conformance_pack_names].nil?
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeConformancePacksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConformancePacksOutput, context: context)
        ConformancePackDetailList.validate!(input[:conformance_pack_details], context: "#{context}[:conformance_pack_details]") unless input[:conformance_pack_details].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeDeliveryChannelStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDeliveryChannelStatusInput, context: context)
        DeliveryChannelNameList.validate!(input[:delivery_channel_names], context: "#{context}[:delivery_channel_names]") unless input[:delivery_channel_names].nil?
      end
    end

    class DescribeDeliveryChannelStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDeliveryChannelStatusOutput, context: context)
        DeliveryChannelStatusList.validate!(input[:delivery_channels_status], context: "#{context}[:delivery_channels_status]") unless input[:delivery_channels_status].nil?
      end
    end

    class DescribeDeliveryChannelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDeliveryChannelsInput, context: context)
        DeliveryChannelNameList.validate!(input[:delivery_channel_names], context: "#{context}[:delivery_channel_names]") unless input[:delivery_channel_names].nil?
      end
    end

    class DescribeDeliveryChannelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDeliveryChannelsOutput, context: context)
        DeliveryChannelList.validate!(input[:delivery_channels], context: "#{context}[:delivery_channels]") unless input[:delivery_channels].nil?
      end
    end

    class DescribeOrganizationConfigRuleStatusesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrganizationConfigRuleStatusesInput, context: context)
        OrganizationConfigRuleNames.validate!(input[:organization_config_rule_names], context: "#{context}[:organization_config_rule_names]") unless input[:organization_config_rule_names].nil?
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeOrganizationConfigRuleStatusesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrganizationConfigRuleStatusesOutput, context: context)
        OrganizationConfigRuleStatuses.validate!(input[:organization_config_rule_statuses], context: "#{context}[:organization_config_rule_statuses]") unless input[:organization_config_rule_statuses].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeOrganizationConfigRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrganizationConfigRulesInput, context: context)
        OrganizationConfigRuleNames.validate!(input[:organization_config_rule_names], context: "#{context}[:organization_config_rule_names]") unless input[:organization_config_rule_names].nil?
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeOrganizationConfigRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrganizationConfigRulesOutput, context: context)
        OrganizationConfigRules.validate!(input[:organization_config_rules], context: "#{context}[:organization_config_rules]") unless input[:organization_config_rules].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeOrganizationConformancePackStatusesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrganizationConformancePackStatusesInput, context: context)
        OrganizationConformancePackNames.validate!(input[:organization_conformance_pack_names], context: "#{context}[:organization_conformance_pack_names]") unless input[:organization_conformance_pack_names].nil?
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeOrganizationConformancePackStatusesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrganizationConformancePackStatusesOutput, context: context)
        OrganizationConformancePackStatuses.validate!(input[:organization_conformance_pack_statuses], context: "#{context}[:organization_conformance_pack_statuses]") unless input[:organization_conformance_pack_statuses].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeOrganizationConformancePacksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrganizationConformancePacksInput, context: context)
        OrganizationConformancePackNames.validate!(input[:organization_conformance_pack_names], context: "#{context}[:organization_conformance_pack_names]") unless input[:organization_conformance_pack_names].nil?
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeOrganizationConformancePacksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrganizationConformancePacksOutput, context: context)
        OrganizationConformancePacks.validate!(input[:organization_conformance_packs], context: "#{context}[:organization_conformance_packs]") unless input[:organization_conformance_packs].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribePendingAggregationRequestsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePendingAggregationRequestsInput, context: context)
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribePendingAggregationRequestsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePendingAggregationRequestsOutput, context: context)
        PendingAggregationRequestList.validate!(input[:pending_aggregation_requests], context: "#{context}[:pending_aggregation_requests]") unless input[:pending_aggregation_requests].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeRemediationConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRemediationConfigurationsInput, context: context)
        ConfigRuleNames.validate!(input[:config_rule_names], context: "#{context}[:config_rule_names]") unless input[:config_rule_names].nil?
      end
    end

    class DescribeRemediationConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRemediationConfigurationsOutput, context: context)
        RemediationConfigurations.validate!(input[:remediation_configurations], context: "#{context}[:remediation_configurations]") unless input[:remediation_configurations].nil?
      end
    end

    class DescribeRemediationExceptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRemediationExceptionsInput, context: context)
        Hearth::Validator.validate!(input[:config_rule_name], ::String, context: "#{context}[:config_rule_name]")
        RemediationExceptionResourceKeys.validate!(input[:resource_keys], context: "#{context}[:resource_keys]") unless input[:resource_keys].nil?
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeRemediationExceptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRemediationExceptionsOutput, context: context)
        RemediationExceptions.validate!(input[:remediation_exceptions], context: "#{context}[:remediation_exceptions]") unless input[:remediation_exceptions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeRemediationExecutionStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRemediationExecutionStatusInput, context: context)
        Hearth::Validator.validate!(input[:config_rule_name], ::String, context: "#{context}[:config_rule_name]")
        ResourceKeys.validate!(input[:resource_keys], context: "#{context}[:resource_keys]") unless input[:resource_keys].nil?
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeRemediationExecutionStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRemediationExecutionStatusOutput, context: context)
        RemediationExecutionStatuses.validate!(input[:remediation_execution_statuses], context: "#{context}[:remediation_execution_statuses]") unless input[:remediation_execution_statuses].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeRetentionConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRetentionConfigurationsInput, context: context)
        RetentionConfigurationNameList.validate!(input[:retention_configuration_names], context: "#{context}[:retention_configuration_names]") unless input[:retention_configuration_names].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeRetentionConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRetentionConfigurationsOutput, context: context)
        RetentionConfigurationList.validate!(input[:retention_configurations], context: "#{context}[:retention_configurations]") unless input[:retention_configurations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DiscoveredResourceIdentifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AggregateResourceIdentifier.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Evaluation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Evaluation, context: context)
        Hearth::Validator.validate!(input[:compliance_resource_type], ::String, context: "#{context}[:compliance_resource_type]")
        Hearth::Validator.validate!(input[:compliance_resource_id], ::String, context: "#{context}[:compliance_resource_id]")
        Hearth::Validator.validate!(input[:compliance_type], ::String, context: "#{context}[:compliance_type]")
        Hearth::Validator.validate!(input[:annotation], ::String, context: "#{context}[:annotation]")
        Hearth::Validator.validate!(input[:ordering_timestamp], ::Time, context: "#{context}[:ordering_timestamp]")
      end
    end

    class EvaluationResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EvaluationResult, context: context)
        EvaluationResultIdentifier.validate!(input[:evaluation_result_identifier], context: "#{context}[:evaluation_result_identifier]") unless input[:evaluation_result_identifier].nil?
        Hearth::Validator.validate!(input[:compliance_type], ::String, context: "#{context}[:compliance_type]")
        Hearth::Validator.validate!(input[:result_recorded_time], ::Time, context: "#{context}[:result_recorded_time]")
        Hearth::Validator.validate!(input[:config_rule_invoked_time], ::Time, context: "#{context}[:config_rule_invoked_time]")
        Hearth::Validator.validate!(input[:annotation], ::String, context: "#{context}[:annotation]")
        Hearth::Validator.validate!(input[:result_token], ::String, context: "#{context}[:result_token]")
      end
    end

    class EvaluationResultIdentifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EvaluationResultIdentifier, context: context)
        EvaluationResultQualifier.validate!(input[:evaluation_result_qualifier], context: "#{context}[:evaluation_result_qualifier]") unless input[:evaluation_result_qualifier].nil?
        Hearth::Validator.validate!(input[:ordering_timestamp], ::Time, context: "#{context}[:ordering_timestamp]")
      end
    end

    class EvaluationResultQualifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EvaluationResultQualifier, context: context)
        Hearth::Validator.validate!(input[:config_rule_name], ::String, context: "#{context}[:config_rule_name]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
      end
    end

    class EvaluationResults
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EvaluationResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Evaluations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Evaluation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExcludedAccounts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ExecutionControls
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecutionControls, context: context)
        SsmControls.validate!(input[:ssm_controls], context: "#{context}[:ssm_controls]") unless input[:ssm_controls].nil?
      end
    end

    class ExternalEvaluation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExternalEvaluation, context: context)
        Hearth::Validator.validate!(input[:compliance_resource_type], ::String, context: "#{context}[:compliance_resource_type]")
        Hearth::Validator.validate!(input[:compliance_resource_id], ::String, context: "#{context}[:compliance_resource_id]")
        Hearth::Validator.validate!(input[:compliance_type], ::String, context: "#{context}[:compliance_type]")
        Hearth::Validator.validate!(input[:annotation], ::String, context: "#{context}[:annotation]")
        Hearth::Validator.validate!(input[:ordering_timestamp], ::Time, context: "#{context}[:ordering_timestamp]")
      end
    end

    class FailedDeleteRemediationExceptionsBatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailedDeleteRemediationExceptionsBatch, context: context)
        Hearth::Validator.validate!(input[:failure_message], ::String, context: "#{context}[:failure_message]")
        RemediationExceptionResourceKeys.validate!(input[:failed_items], context: "#{context}[:failed_items]") unless input[:failed_items].nil?
      end
    end

    class FailedDeleteRemediationExceptionsBatches
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FailedDeleteRemediationExceptionsBatch.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FailedRemediationBatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailedRemediationBatch, context: context)
        Hearth::Validator.validate!(input[:failure_message], ::String, context: "#{context}[:failure_message]")
        RemediationConfigurations.validate!(input[:failed_items], context: "#{context}[:failed_items]") unless input[:failed_items].nil?
      end
    end

    class FailedRemediationBatches
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FailedRemediationBatch.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FailedRemediationExceptionBatch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailedRemediationExceptionBatch, context: context)
        Hearth::Validator.validate!(input[:failure_message], ::String, context: "#{context}[:failure_message]")
        RemediationExceptions.validate!(input[:failed_items], context: "#{context}[:failed_items]") unless input[:failed_items].nil?
      end
    end

    class FailedRemediationExceptionBatches
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FailedRemediationExceptionBatch.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FieldInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FieldInfo, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class FieldInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FieldInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetAggregateComplianceDetailsByConfigRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAggregateComplianceDetailsByConfigRuleInput, context: context)
        Hearth::Validator.validate!(input[:configuration_aggregator_name], ::String, context: "#{context}[:configuration_aggregator_name]")
        Hearth::Validator.validate!(input[:config_rule_name], ::String, context: "#{context}[:config_rule_name]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:aws_region], ::String, context: "#{context}[:aws_region]")
        Hearth::Validator.validate!(input[:compliance_type], ::String, context: "#{context}[:compliance_type]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetAggregateComplianceDetailsByConfigRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAggregateComplianceDetailsByConfigRuleOutput, context: context)
        AggregateEvaluationResultList.validate!(input[:aggregate_evaluation_results], context: "#{context}[:aggregate_evaluation_results]") unless input[:aggregate_evaluation_results].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetAggregateConfigRuleComplianceSummaryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAggregateConfigRuleComplianceSummaryInput, context: context)
        Hearth::Validator.validate!(input[:configuration_aggregator_name], ::String, context: "#{context}[:configuration_aggregator_name]")
        ConfigRuleComplianceSummaryFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:group_by_key], ::String, context: "#{context}[:group_by_key]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetAggregateConfigRuleComplianceSummaryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAggregateConfigRuleComplianceSummaryOutput, context: context)
        Hearth::Validator.validate!(input[:group_by_key], ::String, context: "#{context}[:group_by_key]")
        AggregateComplianceCountList.validate!(input[:aggregate_compliance_counts], context: "#{context}[:aggregate_compliance_counts]") unless input[:aggregate_compliance_counts].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetAggregateConformancePackComplianceSummaryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAggregateConformancePackComplianceSummaryInput, context: context)
        Hearth::Validator.validate!(input[:configuration_aggregator_name], ::String, context: "#{context}[:configuration_aggregator_name]")
        AggregateConformancePackComplianceSummaryFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:group_by_key], ::String, context: "#{context}[:group_by_key]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetAggregateConformancePackComplianceSummaryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAggregateConformancePackComplianceSummaryOutput, context: context)
        AggregateConformancePackComplianceSummaryList.validate!(input[:aggregate_conformance_pack_compliance_summaries], context: "#{context}[:aggregate_conformance_pack_compliance_summaries]") unless input[:aggregate_conformance_pack_compliance_summaries].nil?
        Hearth::Validator.validate!(input[:group_by_key], ::String, context: "#{context}[:group_by_key]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetAggregateDiscoveredResourceCountsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAggregateDiscoveredResourceCountsInput, context: context)
        Hearth::Validator.validate!(input[:configuration_aggregator_name], ::String, context: "#{context}[:configuration_aggregator_name]")
        ResourceCountFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:group_by_key], ::String, context: "#{context}[:group_by_key]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetAggregateDiscoveredResourceCountsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAggregateDiscoveredResourceCountsOutput, context: context)
        Hearth::Validator.validate!(input[:total_discovered_resources], ::Integer, context: "#{context}[:total_discovered_resources]")
        Hearth::Validator.validate!(input[:group_by_key], ::String, context: "#{context}[:group_by_key]")
        GroupedResourceCountList.validate!(input[:grouped_resource_counts], context: "#{context}[:grouped_resource_counts]") unless input[:grouped_resource_counts].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetAggregateResourceConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAggregateResourceConfigInput, context: context)
        Hearth::Validator.validate!(input[:configuration_aggregator_name], ::String, context: "#{context}[:configuration_aggregator_name]")
        AggregateResourceIdentifier.validate!(input[:resource_identifier], context: "#{context}[:resource_identifier]") unless input[:resource_identifier].nil?
      end
    end

    class GetAggregateResourceConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAggregateResourceConfigOutput, context: context)
        ConfigurationItem.validate!(input[:configuration_item], context: "#{context}[:configuration_item]") unless input[:configuration_item].nil?
      end
    end

    class GetComplianceDetailsByConfigRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetComplianceDetailsByConfigRuleInput, context: context)
        Hearth::Validator.validate!(input[:config_rule_name], ::String, context: "#{context}[:config_rule_name]")
        ComplianceTypes.validate!(input[:compliance_types], context: "#{context}[:compliance_types]") unless input[:compliance_types].nil?
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetComplianceDetailsByConfigRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetComplianceDetailsByConfigRuleOutput, context: context)
        EvaluationResults.validate!(input[:evaluation_results], context: "#{context}[:evaluation_results]") unless input[:evaluation_results].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetComplianceDetailsByResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetComplianceDetailsByResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        ComplianceTypes.validate!(input[:compliance_types], context: "#{context}[:compliance_types]") unless input[:compliance_types].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetComplianceDetailsByResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetComplianceDetailsByResourceOutput, context: context)
        EvaluationResults.validate!(input[:evaluation_results], context: "#{context}[:evaluation_results]") unless input[:evaluation_results].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetComplianceSummaryByConfigRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetComplianceSummaryByConfigRuleInput, context: context)
      end
    end

    class GetComplianceSummaryByConfigRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetComplianceSummaryByConfigRuleOutput, context: context)
        ComplianceSummary.validate!(input[:compliance_summary], context: "#{context}[:compliance_summary]") unless input[:compliance_summary].nil?
      end
    end

    class GetComplianceSummaryByResourceTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetComplianceSummaryByResourceTypeInput, context: context)
        ResourceTypes.validate!(input[:resource_types], context: "#{context}[:resource_types]") unless input[:resource_types].nil?
      end
    end

    class GetComplianceSummaryByResourceTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetComplianceSummaryByResourceTypeOutput, context: context)
        ComplianceSummariesByResourceType.validate!(input[:compliance_summaries_by_resource_type], context: "#{context}[:compliance_summaries_by_resource_type]") unless input[:compliance_summaries_by_resource_type].nil?
      end
    end

    class GetConformancePackComplianceDetailsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConformancePackComplianceDetailsInput, context: context)
        Hearth::Validator.validate!(input[:conformance_pack_name], ::String, context: "#{context}[:conformance_pack_name]")
        ConformancePackEvaluationFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetConformancePackComplianceDetailsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConformancePackComplianceDetailsOutput, context: context)
        Hearth::Validator.validate!(input[:conformance_pack_name], ::String, context: "#{context}[:conformance_pack_name]")
        ConformancePackRuleEvaluationResultsList.validate!(input[:conformance_pack_rule_evaluation_results], context: "#{context}[:conformance_pack_rule_evaluation_results]") unless input[:conformance_pack_rule_evaluation_results].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetConformancePackComplianceSummaryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConformancePackComplianceSummaryInput, context: context)
        ConformancePackNamesToSummarizeList.validate!(input[:conformance_pack_names], context: "#{context}[:conformance_pack_names]") unless input[:conformance_pack_names].nil?
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetConformancePackComplianceSummaryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConformancePackComplianceSummaryOutput, context: context)
        ConformancePackComplianceSummaryList.validate!(input[:conformance_pack_compliance_summary_list], context: "#{context}[:conformance_pack_compliance_summary_list]") unless input[:conformance_pack_compliance_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetCustomRulePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCustomRulePolicyInput, context: context)
        Hearth::Validator.validate!(input[:config_rule_name], ::String, context: "#{context}[:config_rule_name]")
      end
    end

    class GetCustomRulePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCustomRulePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:policy_text], ::String, context: "#{context}[:policy_text]")
      end
    end

    class GetDiscoveredResourceCountsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDiscoveredResourceCountsInput, context: context)
        ResourceTypes.validate!(input[:resource_types], context: "#{context}[:resource_types]") unless input[:resource_types].nil?
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetDiscoveredResourceCountsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDiscoveredResourceCountsOutput, context: context)
        Hearth::Validator.validate!(input[:total_discovered_resources], ::Integer, context: "#{context}[:total_discovered_resources]")
        ResourceCounts.validate!(input[:resource_counts], context: "#{context}[:resource_counts]") unless input[:resource_counts].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetOrganizationConfigRuleDetailedStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOrganizationConfigRuleDetailedStatusInput, context: context)
        Hearth::Validator.validate!(input[:organization_config_rule_name], ::String, context: "#{context}[:organization_config_rule_name]")
        StatusDetailFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetOrganizationConfigRuleDetailedStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOrganizationConfigRuleDetailedStatusOutput, context: context)
        OrganizationConfigRuleDetailedStatus.validate!(input[:organization_config_rule_detailed_status], context: "#{context}[:organization_config_rule_detailed_status]") unless input[:organization_config_rule_detailed_status].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetOrganizationConformancePackDetailedStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOrganizationConformancePackDetailedStatusInput, context: context)
        Hearth::Validator.validate!(input[:organization_conformance_pack_name], ::String, context: "#{context}[:organization_conformance_pack_name]")
        OrganizationResourceDetailedStatusFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetOrganizationConformancePackDetailedStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOrganizationConformancePackDetailedStatusOutput, context: context)
        OrganizationConformancePackDetailedStatuses.validate!(input[:organization_conformance_pack_detailed_statuses], context: "#{context}[:organization_conformance_pack_detailed_statuses]") unless input[:organization_conformance_pack_detailed_statuses].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetOrganizationCustomRulePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOrganizationCustomRulePolicyInput, context: context)
        Hearth::Validator.validate!(input[:organization_config_rule_name], ::String, context: "#{context}[:organization_config_rule_name]")
      end
    end

    class GetOrganizationCustomRulePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetOrganizationCustomRulePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:policy_text], ::String, context: "#{context}[:policy_text]")
      end
    end

    class GetResourceConfigHistoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourceConfigHistoryInput, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:later_time], ::Time, context: "#{context}[:later_time]")
        Hearth::Validator.validate!(input[:earlier_time], ::Time, context: "#{context}[:earlier_time]")
        Hearth::Validator.validate!(input[:chronological_order], ::String, context: "#{context}[:chronological_order]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetResourceConfigHistoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourceConfigHistoryOutput, context: context)
        ConfigurationItemList.validate!(input[:configuration_items], context: "#{context}[:configuration_items]") unless input[:configuration_items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetStoredQueryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStoredQueryInput, context: context)
        Hearth::Validator.validate!(input[:query_name], ::String, context: "#{context}[:query_name]")
      end
    end

    class GetStoredQueryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStoredQueryOutput, context: context)
        StoredQuery.validate!(input[:stored_query], context: "#{context}[:stored_query]") unless input[:stored_query].nil?
      end
    end

    class GroupedResourceCount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GroupedResourceCount, context: context)
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:resource_count], ::Integer, context: "#{context}[:resource_count]")
      end
    end

    class GroupedResourceCountList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GroupedResourceCount.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InsufficientDeliveryPolicyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsufficientDeliveryPolicyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InsufficientPermissionsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InsufficientPermissionsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidConfigurationRecorderNameException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidConfigurationRecorderNameException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDeliveryChannelNameException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDeliveryChannelNameException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidExpressionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidExpressionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidLimitException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidLimitException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidNextTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNextTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterValueException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterValueException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRecordingGroupException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRecordingGroupException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidResultTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidResultTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRoleException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRoleException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidS3KeyPrefixException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidS3KeyPrefixException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidS3KmsKeyArnException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidS3KmsKeyArnException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSNSTopicARNException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSNSTopicARNException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTimeRangeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTimeRangeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LastDeliveryChannelDeleteFailedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LastDeliveryChannelDeleteFailedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListAggregateDiscoveredResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAggregateDiscoveredResourcesInput, context: context)
        Hearth::Validator.validate!(input[:configuration_aggregator_name], ::String, context: "#{context}[:configuration_aggregator_name]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        ResourceFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAggregateDiscoveredResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAggregateDiscoveredResourcesOutput, context: context)
        DiscoveredResourceIdentifierList.validate!(input[:resource_identifiers], context: "#{context}[:resource_identifiers]") unless input[:resource_identifiers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDiscoveredResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDiscoveredResourcesInput, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        ResourceIdList.validate!(input[:resource_ids], context: "#{context}[:resource_ids]") unless input[:resource_ids].nil?
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:include_deleted_resources], ::TrueClass, ::FalseClass, context: "#{context}[:include_deleted_resources]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDiscoveredResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDiscoveredResourcesOutput, context: context)
        ResourceIdentifierList.validate!(input[:resource_identifiers], context: "#{context}[:resource_identifiers]") unless input[:resource_identifiers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListStoredQueriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStoredQueriesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListStoredQueriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListStoredQueriesOutput, context: context)
        StoredQueryMetadataList.validate!(input[:stored_query_metadata], context: "#{context}[:stored_query_metadata]") unless input[:stored_query_metadata].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class MaxActiveResourcesExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaxActiveResourcesExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MaxNumberOfConfigRulesExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaxNumberOfConfigRulesExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MaxNumberOfConfigurationRecordersExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaxNumberOfConfigurationRecordersExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MaxNumberOfConformancePacksExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaxNumberOfConformancePacksExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MaxNumberOfDeliveryChannelsExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaxNumberOfDeliveryChannelsExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MaxNumberOfOrganizationConfigRulesExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaxNumberOfOrganizationConfigRulesExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MaxNumberOfOrganizationConformancePacksExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaxNumberOfOrganizationConformancePacksExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MaxNumberOfRetentionConfigurationsExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaxNumberOfRetentionConfigurationsExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MemberAccountStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MemberAccountStatus, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:config_rule_name], ::String, context: "#{context}[:config_rule_name]")
        Hearth::Validator.validate!(input[:member_account_rule_status], ::String, context: "#{context}[:member_account_rule_status]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
      end
    end

    class NoAvailableConfigurationRecorderException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoAvailableConfigurationRecorderException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoAvailableDeliveryChannelException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoAvailableDeliveryChannelException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoAvailableOrganizationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoAvailableOrganizationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoRunningConfigurationRecorderException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoRunningConfigurationRecorderException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchBucketException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchBucketException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchConfigRuleException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchConfigRuleException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchConfigRuleInConformancePackException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchConfigRuleInConformancePackException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchConfigurationAggregatorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchConfigurationAggregatorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchConfigurationRecorderException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchConfigurationRecorderException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchConformancePackException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchConformancePackException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchDeliveryChannelException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchDeliveryChannelException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchOrganizationConfigRuleException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchOrganizationConfigRuleException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchOrganizationConformancePackException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchOrganizationConformancePackException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchRemediationConfigurationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchRemediationConfigurationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchRemediationExceptionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchRemediationExceptionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoSuchRetentionConfigurationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoSuchRetentionConfigurationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OrganizationAccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationAccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OrganizationAggregationSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationAggregationSource, context: context)
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        AggregatorRegionList.validate!(input[:aws_regions], context: "#{context}[:aws_regions]") unless input[:aws_regions].nil?
        Hearth::Validator.validate!(input[:all_aws_regions], ::TrueClass, ::FalseClass, context: "#{context}[:all_aws_regions]")
      end
    end

    class OrganizationAllFeaturesNotEnabledException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationAllFeaturesNotEnabledException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OrganizationConfigRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationConfigRule, context: context)
        Hearth::Validator.validate!(input[:organization_config_rule_name], ::String, context: "#{context}[:organization_config_rule_name]")
        Hearth::Validator.validate!(input[:organization_config_rule_arn], ::String, context: "#{context}[:organization_config_rule_arn]")
        OrganizationManagedRuleMetadata.validate!(input[:organization_managed_rule_metadata], context: "#{context}[:organization_managed_rule_metadata]") unless input[:organization_managed_rule_metadata].nil?
        OrganizationCustomRuleMetadata.validate!(input[:organization_custom_rule_metadata], context: "#{context}[:organization_custom_rule_metadata]") unless input[:organization_custom_rule_metadata].nil?
        ExcludedAccounts.validate!(input[:excluded_accounts], context: "#{context}[:excluded_accounts]") unless input[:excluded_accounts].nil?
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
        OrganizationCustomPolicyRuleMetadataNoPolicy.validate!(input[:organization_custom_policy_rule_metadata], context: "#{context}[:organization_custom_policy_rule_metadata]") unless input[:organization_custom_policy_rule_metadata].nil?
      end
    end

    class OrganizationConfigRuleDetailedStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MemberAccountStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OrganizationConfigRuleNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OrganizationConfigRuleStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationConfigRuleStatus, context: context)
        Hearth::Validator.validate!(input[:organization_config_rule_name], ::String, context: "#{context}[:organization_config_rule_name]")
        Hearth::Validator.validate!(input[:organization_rule_status], ::String, context: "#{context}[:organization_rule_status]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
      end
    end

    class OrganizationConfigRuleStatuses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OrganizationConfigRuleStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OrganizationConfigRuleTriggerTypeNoSNs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OrganizationConfigRuleTriggerTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OrganizationConfigRules
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OrganizationConfigRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OrganizationConformancePack
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationConformancePack, context: context)
        Hearth::Validator.validate!(input[:organization_conformance_pack_name], ::String, context: "#{context}[:organization_conformance_pack_name]")
        Hearth::Validator.validate!(input[:organization_conformance_pack_arn], ::String, context: "#{context}[:organization_conformance_pack_arn]")
        Hearth::Validator.validate!(input[:delivery_s3_bucket], ::String, context: "#{context}[:delivery_s3_bucket]")
        Hearth::Validator.validate!(input[:delivery_s3_key_prefix], ::String, context: "#{context}[:delivery_s3_key_prefix]")
        ConformancePackInputParameters.validate!(input[:conformance_pack_input_parameters], context: "#{context}[:conformance_pack_input_parameters]") unless input[:conformance_pack_input_parameters].nil?
        ExcludedAccounts.validate!(input[:excluded_accounts], context: "#{context}[:excluded_accounts]") unless input[:excluded_accounts].nil?
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
      end
    end

    class OrganizationConformancePackDetailedStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationConformancePackDetailedStatus, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:conformance_pack_name], ::String, context: "#{context}[:conformance_pack_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
      end
    end

    class OrganizationConformancePackDetailedStatuses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OrganizationConformancePackDetailedStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OrganizationConformancePackNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OrganizationConformancePackStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationConformancePackStatus, context: context)
        Hearth::Validator.validate!(input[:organization_conformance_pack_name], ::String, context: "#{context}[:organization_conformance_pack_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:last_update_time], ::Time, context: "#{context}[:last_update_time]")
      end
    end

    class OrganizationConformancePackStatuses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OrganizationConformancePackStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OrganizationConformancePackTemplateValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationConformancePackTemplateValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OrganizationConformancePacks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          OrganizationConformancePack.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OrganizationCustomPolicyRuleMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationCustomPolicyRuleMetadata, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        OrganizationConfigRuleTriggerTypeNoSNs.validate!(input[:organization_config_rule_trigger_types], context: "#{context}[:organization_config_rule_trigger_types]") unless input[:organization_config_rule_trigger_types].nil?
        Hearth::Validator.validate!(input[:input_parameters], ::String, context: "#{context}[:input_parameters]")
        Hearth::Validator.validate!(input[:maximum_execution_frequency], ::String, context: "#{context}[:maximum_execution_frequency]")
        ResourceTypesScope.validate!(input[:resource_types_scope], context: "#{context}[:resource_types_scope]") unless input[:resource_types_scope].nil?
        Hearth::Validator.validate!(input[:resource_id_scope], ::String, context: "#{context}[:resource_id_scope]")
        Hearth::Validator.validate!(input[:tag_key_scope], ::String, context: "#{context}[:tag_key_scope]")
        Hearth::Validator.validate!(input[:tag_value_scope], ::String, context: "#{context}[:tag_value_scope]")
        Hearth::Validator.validate!(input[:policy_runtime], ::String, context: "#{context}[:policy_runtime]")
        Hearth::Validator.validate!(input[:policy_text], ::String, context: "#{context}[:policy_text]")
        DebugLogDeliveryAccounts.validate!(input[:debug_log_delivery_accounts], context: "#{context}[:debug_log_delivery_accounts]") unless input[:debug_log_delivery_accounts].nil?
      end
    end

    class OrganizationCustomPolicyRuleMetadataNoPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationCustomPolicyRuleMetadataNoPolicy, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        OrganizationConfigRuleTriggerTypeNoSNs.validate!(input[:organization_config_rule_trigger_types], context: "#{context}[:organization_config_rule_trigger_types]") unless input[:organization_config_rule_trigger_types].nil?
        Hearth::Validator.validate!(input[:input_parameters], ::String, context: "#{context}[:input_parameters]")
        Hearth::Validator.validate!(input[:maximum_execution_frequency], ::String, context: "#{context}[:maximum_execution_frequency]")
        ResourceTypesScope.validate!(input[:resource_types_scope], context: "#{context}[:resource_types_scope]") unless input[:resource_types_scope].nil?
        Hearth::Validator.validate!(input[:resource_id_scope], ::String, context: "#{context}[:resource_id_scope]")
        Hearth::Validator.validate!(input[:tag_key_scope], ::String, context: "#{context}[:tag_key_scope]")
        Hearth::Validator.validate!(input[:tag_value_scope], ::String, context: "#{context}[:tag_value_scope]")
        Hearth::Validator.validate!(input[:policy_runtime], ::String, context: "#{context}[:policy_runtime]")
        DebugLogDeliveryAccounts.validate!(input[:debug_log_delivery_accounts], context: "#{context}[:debug_log_delivery_accounts]") unless input[:debug_log_delivery_accounts].nil?
      end
    end

    class OrganizationCustomRuleMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationCustomRuleMetadata, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:lambda_function_arn], ::String, context: "#{context}[:lambda_function_arn]")
        OrganizationConfigRuleTriggerTypes.validate!(input[:organization_config_rule_trigger_types], context: "#{context}[:organization_config_rule_trigger_types]") unless input[:organization_config_rule_trigger_types].nil?
        Hearth::Validator.validate!(input[:input_parameters], ::String, context: "#{context}[:input_parameters]")
        Hearth::Validator.validate!(input[:maximum_execution_frequency], ::String, context: "#{context}[:maximum_execution_frequency]")
        ResourceTypesScope.validate!(input[:resource_types_scope], context: "#{context}[:resource_types_scope]") unless input[:resource_types_scope].nil?
        Hearth::Validator.validate!(input[:resource_id_scope], ::String, context: "#{context}[:resource_id_scope]")
        Hearth::Validator.validate!(input[:tag_key_scope], ::String, context: "#{context}[:tag_key_scope]")
        Hearth::Validator.validate!(input[:tag_value_scope], ::String, context: "#{context}[:tag_value_scope]")
      end
    end

    class OrganizationManagedRuleMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationManagedRuleMetadata, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:rule_identifier], ::String, context: "#{context}[:rule_identifier]")
        Hearth::Validator.validate!(input[:input_parameters], ::String, context: "#{context}[:input_parameters]")
        Hearth::Validator.validate!(input[:maximum_execution_frequency], ::String, context: "#{context}[:maximum_execution_frequency]")
        ResourceTypesScope.validate!(input[:resource_types_scope], context: "#{context}[:resource_types_scope]") unless input[:resource_types_scope].nil?
        Hearth::Validator.validate!(input[:resource_id_scope], ::String, context: "#{context}[:resource_id_scope]")
        Hearth::Validator.validate!(input[:tag_key_scope], ::String, context: "#{context}[:tag_key_scope]")
        Hearth::Validator.validate!(input[:tag_value_scope], ::String, context: "#{context}[:tag_value_scope]")
      end
    end

    class OrganizationResourceDetailedStatusFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OrganizationResourceDetailedStatusFilters, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class OversizedConfigurationItemException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OversizedConfigurationItemException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PendingAggregationRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PendingAggregationRequest, context: context)
        Hearth::Validator.validate!(input[:requester_account_id], ::String, context: "#{context}[:requester_account_id]")
        Hearth::Validator.validate!(input[:requester_aws_region], ::String, context: "#{context}[:requester_aws_region]")
      end
    end

    class PendingAggregationRequestList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PendingAggregationRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutAggregationAuthorizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAggregationAuthorizationInput, context: context)
        Hearth::Validator.validate!(input[:authorized_account_id], ::String, context: "#{context}[:authorized_account_id]")
        Hearth::Validator.validate!(input[:authorized_aws_region], ::String, context: "#{context}[:authorized_aws_region]")
        TagsList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PutAggregationAuthorizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAggregationAuthorizationOutput, context: context)
        AggregationAuthorization.validate!(input[:aggregation_authorization], context: "#{context}[:aggregation_authorization]") unless input[:aggregation_authorization].nil?
      end
    end

    class PutConfigRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutConfigRuleInput, context: context)
        ConfigRule.validate!(input[:config_rule], context: "#{context}[:config_rule]") unless input[:config_rule].nil?
        TagsList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PutConfigRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutConfigRuleOutput, context: context)
      end
    end

    class PutConfigurationAggregatorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutConfigurationAggregatorInput, context: context)
        Hearth::Validator.validate!(input[:configuration_aggregator_name], ::String, context: "#{context}[:configuration_aggregator_name]")
        AccountAggregationSourceList.validate!(input[:account_aggregation_sources], context: "#{context}[:account_aggregation_sources]") unless input[:account_aggregation_sources].nil?
        OrganizationAggregationSource.validate!(input[:organization_aggregation_source], context: "#{context}[:organization_aggregation_source]") unless input[:organization_aggregation_source].nil?
        TagsList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PutConfigurationAggregatorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutConfigurationAggregatorOutput, context: context)
        ConfigurationAggregator.validate!(input[:configuration_aggregator], context: "#{context}[:configuration_aggregator]") unless input[:configuration_aggregator].nil?
      end
    end

    class PutConfigurationRecorderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutConfigurationRecorderInput, context: context)
        ConfigurationRecorder.validate!(input[:configuration_recorder], context: "#{context}[:configuration_recorder]") unless input[:configuration_recorder].nil?
      end
    end

    class PutConfigurationRecorderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutConfigurationRecorderOutput, context: context)
      end
    end

    class PutConformancePackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutConformancePackInput, context: context)
        Hearth::Validator.validate!(input[:conformance_pack_name], ::String, context: "#{context}[:conformance_pack_name]")
        Hearth::Validator.validate!(input[:template_s3_uri], ::String, context: "#{context}[:template_s3_uri]")
        Hearth::Validator.validate!(input[:template_body], ::String, context: "#{context}[:template_body]")
        Hearth::Validator.validate!(input[:delivery_s3_bucket], ::String, context: "#{context}[:delivery_s3_bucket]")
        Hearth::Validator.validate!(input[:delivery_s3_key_prefix], ::String, context: "#{context}[:delivery_s3_key_prefix]")
        ConformancePackInputParameters.validate!(input[:conformance_pack_input_parameters], context: "#{context}[:conformance_pack_input_parameters]") unless input[:conformance_pack_input_parameters].nil?
      end
    end

    class PutConformancePackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutConformancePackOutput, context: context)
        Hearth::Validator.validate!(input[:conformance_pack_arn], ::String, context: "#{context}[:conformance_pack_arn]")
      end
    end

    class PutDeliveryChannelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutDeliveryChannelInput, context: context)
        DeliveryChannel.validate!(input[:delivery_channel], context: "#{context}[:delivery_channel]") unless input[:delivery_channel].nil?
      end
    end

    class PutDeliveryChannelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutDeliveryChannelOutput, context: context)
      end
    end

    class PutEvaluationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEvaluationsInput, context: context)
        Evaluations.validate!(input[:evaluations], context: "#{context}[:evaluations]") unless input[:evaluations].nil?
        Hearth::Validator.validate!(input[:result_token], ::String, context: "#{context}[:result_token]")
        Hearth::Validator.validate!(input[:test_mode], ::TrueClass, ::FalseClass, context: "#{context}[:test_mode]")
      end
    end

    class PutEvaluationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutEvaluationsOutput, context: context)
        Evaluations.validate!(input[:failed_evaluations], context: "#{context}[:failed_evaluations]") unless input[:failed_evaluations].nil?
      end
    end

    class PutExternalEvaluationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutExternalEvaluationInput, context: context)
        Hearth::Validator.validate!(input[:config_rule_name], ::String, context: "#{context}[:config_rule_name]")
        ExternalEvaluation.validate!(input[:external_evaluation], context: "#{context}[:external_evaluation]") unless input[:external_evaluation].nil?
      end
    end

    class PutExternalEvaluationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutExternalEvaluationOutput, context: context)
      end
    end

    class PutOrganizationConfigRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutOrganizationConfigRuleInput, context: context)
        Hearth::Validator.validate!(input[:organization_config_rule_name], ::String, context: "#{context}[:organization_config_rule_name]")
        OrganizationManagedRuleMetadata.validate!(input[:organization_managed_rule_metadata], context: "#{context}[:organization_managed_rule_metadata]") unless input[:organization_managed_rule_metadata].nil?
        OrganizationCustomRuleMetadata.validate!(input[:organization_custom_rule_metadata], context: "#{context}[:organization_custom_rule_metadata]") unless input[:organization_custom_rule_metadata].nil?
        ExcludedAccounts.validate!(input[:excluded_accounts], context: "#{context}[:excluded_accounts]") unless input[:excluded_accounts].nil?
        OrganizationCustomPolicyRuleMetadata.validate!(input[:organization_custom_policy_rule_metadata], context: "#{context}[:organization_custom_policy_rule_metadata]") unless input[:organization_custom_policy_rule_metadata].nil?
      end
    end

    class PutOrganizationConfigRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutOrganizationConfigRuleOutput, context: context)
        Hearth::Validator.validate!(input[:organization_config_rule_arn], ::String, context: "#{context}[:organization_config_rule_arn]")
      end
    end

    class PutOrganizationConformancePackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutOrganizationConformancePackInput, context: context)
        Hearth::Validator.validate!(input[:organization_conformance_pack_name], ::String, context: "#{context}[:organization_conformance_pack_name]")
        Hearth::Validator.validate!(input[:template_s3_uri], ::String, context: "#{context}[:template_s3_uri]")
        Hearth::Validator.validate!(input[:template_body], ::String, context: "#{context}[:template_body]")
        Hearth::Validator.validate!(input[:delivery_s3_bucket], ::String, context: "#{context}[:delivery_s3_bucket]")
        Hearth::Validator.validate!(input[:delivery_s3_key_prefix], ::String, context: "#{context}[:delivery_s3_key_prefix]")
        ConformancePackInputParameters.validate!(input[:conformance_pack_input_parameters], context: "#{context}[:conformance_pack_input_parameters]") unless input[:conformance_pack_input_parameters].nil?
        ExcludedAccounts.validate!(input[:excluded_accounts], context: "#{context}[:excluded_accounts]") unless input[:excluded_accounts].nil?
      end
    end

    class PutOrganizationConformancePackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutOrganizationConformancePackOutput, context: context)
        Hearth::Validator.validate!(input[:organization_conformance_pack_arn], ::String, context: "#{context}[:organization_conformance_pack_arn]")
      end
    end

    class PutRemediationConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRemediationConfigurationsInput, context: context)
        RemediationConfigurations.validate!(input[:remediation_configurations], context: "#{context}[:remediation_configurations]") unless input[:remediation_configurations].nil?
      end
    end

    class PutRemediationConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRemediationConfigurationsOutput, context: context)
        FailedRemediationBatches.validate!(input[:failed_batches], context: "#{context}[:failed_batches]") unless input[:failed_batches].nil?
      end
    end

    class PutRemediationExceptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRemediationExceptionsInput, context: context)
        Hearth::Validator.validate!(input[:config_rule_name], ::String, context: "#{context}[:config_rule_name]")
        RemediationExceptionResourceKeys.validate!(input[:resource_keys], context: "#{context}[:resource_keys]") unless input[:resource_keys].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:expiration_time], ::Time, context: "#{context}[:expiration_time]")
      end
    end

    class PutRemediationExceptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRemediationExceptionsOutput, context: context)
        FailedRemediationExceptionBatches.validate!(input[:failed_batches], context: "#{context}[:failed_batches]") unless input[:failed_batches].nil?
      end
    end

    class PutResourceConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutResourceConfigInput, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:schema_version_id], ::String, context: "#{context}[:schema_version_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        Hearth::Validator.validate!(input[:configuration], ::String, context: "#{context}[:configuration]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PutResourceConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutResourceConfigOutput, context: context)
      end
    end

    class PutRetentionConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRetentionConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:retention_period_in_days], ::Integer, context: "#{context}[:retention_period_in_days]")
      end
    end

    class PutRetentionConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRetentionConfigurationOutput, context: context)
        RetentionConfiguration.validate!(input[:retention_configuration], context: "#{context}[:retention_configuration]") unless input[:retention_configuration].nil?
      end
    end

    class PutStoredQueryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutStoredQueryInput, context: context)
        StoredQuery.validate!(input[:stored_query], context: "#{context}[:stored_query]") unless input[:stored_query].nil?
        TagsList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PutStoredQueryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutStoredQueryOutput, context: context)
        Hearth::Validator.validate!(input[:query_arn], ::String, context: "#{context}[:query_arn]")
      end
    end

    class QueryInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryInfo, context: context)
        FieldInfoList.validate!(input[:select_fields], context: "#{context}[:select_fields]") unless input[:select_fields].nil?
      end
    end

    class RecordingGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecordingGroup, context: context)
        Hearth::Validator.validate!(input[:all_supported], ::TrueClass, ::FalseClass, context: "#{context}[:all_supported]")
        Hearth::Validator.validate!(input[:include_global_resource_types], ::TrueClass, ::FalseClass, context: "#{context}[:include_global_resource_types]")
        ResourceTypeList.validate!(input[:resource_types], context: "#{context}[:resource_types]") unless input[:resource_types].nil?
      end
    end

    class ReevaluateConfigRuleNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RelatedEventList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Relationship
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Relationship, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        Hearth::Validator.validate!(input[:relationship_name], ::String, context: "#{context}[:relationship_name]")
      end
    end

    class RelationshipList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Relationship.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RemediationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemediationConfiguration, context: context)
        Hearth::Validator.validate!(input[:config_rule_name], ::String, context: "#{context}[:config_rule_name]")
        Hearth::Validator.validate!(input[:target_type], ::String, context: "#{context}[:target_type]")
        Hearth::Validator.validate!(input[:target_id], ::String, context: "#{context}[:target_id]")
        Hearth::Validator.validate!(input[:target_version], ::String, context: "#{context}[:target_version]")
        RemediationParameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:automatic], ::TrueClass, ::FalseClass, context: "#{context}[:automatic]")
        ExecutionControls.validate!(input[:execution_controls], context: "#{context}[:execution_controls]") unless input[:execution_controls].nil?
        Hearth::Validator.validate!(input[:maximum_automatic_attempts], ::Integer, context: "#{context}[:maximum_automatic_attempts]")
        Hearth::Validator.validate!(input[:retry_attempt_seconds], ::Integer, context: "#{context}[:retry_attempt_seconds]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_by_service], ::String, context: "#{context}[:created_by_service]")
      end
    end

    class RemediationConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RemediationConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RemediationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemediationException, context: context)
        Hearth::Validator.validate!(input[:config_rule_name], ::String, context: "#{context}[:config_rule_name]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:expiration_time], ::Time, context: "#{context}[:expiration_time]")
      end
    end

    class RemediationExceptionResourceKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemediationExceptionResourceKey, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
      end
    end

    class RemediationExceptionResourceKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RemediationExceptionResourceKey.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RemediationExceptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RemediationException.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RemediationExecutionStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemediationExecutionStatus, context: context)
        ResourceKey.validate!(input[:resource_key], context: "#{context}[:resource_key]") unless input[:resource_key].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        RemediationExecutionSteps.validate!(input[:step_details], context: "#{context}[:step_details]") unless input[:step_details].nil?
        Hearth::Validator.validate!(input[:invocation_time], ::Time, context: "#{context}[:invocation_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
      end
    end

    class RemediationExecutionStatuses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RemediationExecutionStatus.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RemediationExecutionStep
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemediationExecutionStep, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:stop_time], ::Time, context: "#{context}[:stop_time]")
      end
    end

    class RemediationExecutionSteps
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RemediationExecutionStep.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RemediationInProgressException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemediationInProgressException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RemediationParameterValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemediationParameterValue, context: context)
        ResourceValue.validate!(input[:resource_value], context: "#{context}[:resource_value]") unless input[:resource_value].nil?
        StaticValue.validate!(input[:static_value], context: "#{context}[:static_value]") unless input[:static_value].nil?
      end
    end

    class RemediationParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          RemediationParameterValue.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ResourceConcurrentModificationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceConcurrentModificationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceCount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceCount, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
      end
    end

    class ResourceCountFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceCountFilters, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
      end
    end

    class ResourceCounts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourceCount.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceFilters, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
      end
    end

    class ResourceIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceIdentifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceIdentifier, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
        Hearth::Validator.validate!(input[:resource_deletion_time], ::Time, context: "#{context}[:resource_deletion_time]")
      end
    end

    class ResourceIdentifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourceIdentifier.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceIdentifiersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AggregateResourceIdentifier.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceKey, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
      end
    end

    class ResourceKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourceKey.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceNotDiscoveredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotDiscoveredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceTypesScope
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceValue, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class Results
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RetentionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetentionConfiguration, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:retention_period_in_days], ::Integer, context: "#{context}[:retention_period_in_days]")
      end
    end

    class RetentionConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RetentionConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RetentionConfigurationNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Scope
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Scope, context: context)
        ComplianceResourceTypes.validate!(input[:compliance_resource_types], context: "#{context}[:compliance_resource_types]") unless input[:compliance_resource_types].nil?
        Hearth::Validator.validate!(input[:tag_key], ::String, context: "#{context}[:tag_key]")
        Hearth::Validator.validate!(input[:tag_value], ::String, context: "#{context}[:tag_value]")
        Hearth::Validator.validate!(input[:compliance_resource_id], ::String, context: "#{context}[:compliance_resource_id]")
      end
    end

    class SelectAggregateResourceConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SelectAggregateResourceConfigInput, context: context)
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
        Hearth::Validator.validate!(input[:configuration_aggregator_name], ::String, context: "#{context}[:configuration_aggregator_name]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class SelectAggregateResourceConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SelectAggregateResourceConfigOutput, context: context)
        Results.validate!(input[:results], context: "#{context}[:results]") unless input[:results].nil?
        QueryInfo.validate!(input[:query_info], context: "#{context}[:query_info]") unless input[:query_info].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class SelectResourceConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SelectResourceConfigInput, context: context)
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class SelectResourceConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SelectResourceConfigOutput, context: context)
        Results.validate!(input[:results], context: "#{context}[:results]") unless input[:results].nil?
        QueryInfo.validate!(input[:query_info], context: "#{context}[:query_info]") unless input[:query_info].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class Source
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Source, context: context)
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:source_identifier], ::String, context: "#{context}[:source_identifier]")
        SourceDetails.validate!(input[:source_details], context: "#{context}[:source_details]") unless input[:source_details].nil?
        CustomPolicyDetails.validate!(input[:custom_policy_details], context: "#{context}[:custom_policy_details]") unless input[:custom_policy_details].nil?
      end
    end

    class SourceDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceDetail, context: context)
        Hearth::Validator.validate!(input[:event_source], ::String, context: "#{context}[:event_source]")
        Hearth::Validator.validate!(input[:message_type], ::String, context: "#{context}[:message_type]")
        Hearth::Validator.validate!(input[:maximum_execution_frequency], ::String, context: "#{context}[:maximum_execution_frequency]")
      end
    end

    class SourceDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SourceDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SsmControls
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SsmControls, context: context)
        Hearth::Validator.validate!(input[:concurrent_execution_rate_percentage], ::Integer, context: "#{context}[:concurrent_execution_rate_percentage]")
        Hearth::Validator.validate!(input[:error_percentage], ::Integer, context: "#{context}[:error_percentage]")
      end
    end

    class StartConfigRulesEvaluationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartConfigRulesEvaluationInput, context: context)
        ReevaluateConfigRuleNames.validate!(input[:config_rule_names], context: "#{context}[:config_rule_names]") unless input[:config_rule_names].nil?
      end
    end

    class StartConfigRulesEvaluationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartConfigRulesEvaluationOutput, context: context)
      end
    end

    class StartConfigurationRecorderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartConfigurationRecorderInput, context: context)
        Hearth::Validator.validate!(input[:configuration_recorder_name], ::String, context: "#{context}[:configuration_recorder_name]")
      end
    end

    class StartConfigurationRecorderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartConfigurationRecorderOutput, context: context)
      end
    end

    class StartRemediationExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartRemediationExecutionInput, context: context)
        Hearth::Validator.validate!(input[:config_rule_name], ::String, context: "#{context}[:config_rule_name]")
        ResourceKeys.validate!(input[:resource_keys], context: "#{context}[:resource_keys]") unless input[:resource_keys].nil?
      end
    end

    class StartRemediationExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartRemediationExecutionOutput, context: context)
        Hearth::Validator.validate!(input[:failure_message], ::String, context: "#{context}[:failure_message]")
        ResourceKeys.validate!(input[:failed_items], context: "#{context}[:failed_items]") unless input[:failed_items].nil?
      end
    end

    class StaticParameterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StaticValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StaticValue, context: context)
        StaticParameterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class StatusDetailFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StatusDetailFilters, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:member_account_rule_status], ::String, context: "#{context}[:member_account_rule_status]")
      end
    end

    class StopConfigurationRecorderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopConfigurationRecorderInput, context: context)
        Hearth::Validator.validate!(input[:configuration_recorder_name], ::String, context: "#{context}[:configuration_recorder_name]")
      end
    end

    class StopConfigurationRecorderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopConfigurationRecorderOutput, context: context)
      end
    end

    class StoredQuery
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StoredQuery, context: context)
        Hearth::Validator.validate!(input[:query_id], ::String, context: "#{context}[:query_id]")
        Hearth::Validator.validate!(input[:query_arn], ::String, context: "#{context}[:query_arn]")
        Hearth::Validator.validate!(input[:query_name], ::String, context: "#{context}[:query_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
      end
    end

    class StoredQueryMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StoredQueryMetadata, context: context)
        Hearth::Validator.validate!(input[:query_id], ::String, context: "#{context}[:query_id]")
        Hearth::Validator.validate!(input[:query_arn], ::String, context: "#{context}[:query_arn]")
        Hearth::Validator.validate!(input[:query_name], ::String, context: "#{context}[:query_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class StoredQueryMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StoredQueryMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SupplementaryConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
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
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TooManyTagsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTagsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnprocessedResourceIdentifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AggregateResourceIdentifier.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
