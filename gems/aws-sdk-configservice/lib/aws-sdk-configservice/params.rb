# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ConfigService
  module Params

    module AccountAggregationSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccountAggregationSource, context: context)
        type = Types::AccountAggregationSource.new
        type.account_ids = AccountAggregationSourceAccountList.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type.all_aws_regions = params[:all_aws_regions]
        type.aws_regions = AggregatorRegionList.build(params[:aws_regions], context: "#{context}[:aws_regions]") unless params[:aws_regions].nil?
        type
      end
    end

    module AccountAggregationSourceAccountList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AccountAggregationSourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccountAggregationSource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AggregateComplianceByConfigRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AggregateComplianceByConfigRule, context: context)
        type = Types::AggregateComplianceByConfigRule.new
        type.config_rule_name = params[:config_rule_name]
        type.compliance = Compliance.build(params[:compliance], context: "#{context}[:compliance]") unless params[:compliance].nil?
        type.account_id = params[:account_id]
        type.aws_region = params[:aws_region]
        type
      end
    end

    module AggregateComplianceByConfigRuleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AggregateComplianceByConfigRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AggregateComplianceByConformancePack
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AggregateComplianceByConformancePack, context: context)
        type = Types::AggregateComplianceByConformancePack.new
        type.conformance_pack_name = params[:conformance_pack_name]
        type.compliance = AggregateConformancePackCompliance.build(params[:compliance], context: "#{context}[:compliance]") unless params[:compliance].nil?
        type.account_id = params[:account_id]
        type.aws_region = params[:aws_region]
        type
      end
    end

    module AggregateComplianceByConformancePackList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AggregateComplianceByConformancePack.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AggregateComplianceCount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AggregateComplianceCount, context: context)
        type = Types::AggregateComplianceCount.new
        type.group_name = params[:group_name]
        type.compliance_summary = ComplianceSummary.build(params[:compliance_summary], context: "#{context}[:compliance_summary]") unless params[:compliance_summary].nil?
        type
      end
    end

    module AggregateComplianceCountList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AggregateComplianceCount.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AggregateConformancePackCompliance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AggregateConformancePackCompliance, context: context)
        type = Types::AggregateConformancePackCompliance.new
        type.compliance_type = params[:compliance_type]
        type.compliant_rule_count = params[:compliant_rule_count]
        type.non_compliant_rule_count = params[:non_compliant_rule_count]
        type.total_rule_count = params[:total_rule_count]
        type
      end
    end

    module AggregateConformancePackComplianceCount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AggregateConformancePackComplianceCount, context: context)
        type = Types::AggregateConformancePackComplianceCount.new
        type.compliant_conformance_pack_count = params[:compliant_conformance_pack_count]
        type.non_compliant_conformance_pack_count = params[:non_compliant_conformance_pack_count]
        type
      end
    end

    module AggregateConformancePackComplianceFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AggregateConformancePackComplianceFilters, context: context)
        type = Types::AggregateConformancePackComplianceFilters.new
        type.conformance_pack_name = params[:conformance_pack_name]
        type.compliance_type = params[:compliance_type]
        type.account_id = params[:account_id]
        type.aws_region = params[:aws_region]
        type
      end
    end

    module AggregateConformancePackComplianceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AggregateConformancePackComplianceSummary, context: context)
        type = Types::AggregateConformancePackComplianceSummary.new
        type.compliance_summary = AggregateConformancePackComplianceCount.build(params[:compliance_summary], context: "#{context}[:compliance_summary]") unless params[:compliance_summary].nil?
        type.group_name = params[:group_name]
        type
      end
    end

    module AggregateConformancePackComplianceSummaryFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AggregateConformancePackComplianceSummaryFilters, context: context)
        type = Types::AggregateConformancePackComplianceSummaryFilters.new
        type.account_id = params[:account_id]
        type.aws_region = params[:aws_region]
        type
      end
    end

    module AggregateConformancePackComplianceSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AggregateConformancePackComplianceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AggregateEvaluationResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AggregateEvaluationResult, context: context)
        type = Types::AggregateEvaluationResult.new
        type.evaluation_result_identifier = EvaluationResultIdentifier.build(params[:evaluation_result_identifier], context: "#{context}[:evaluation_result_identifier]") unless params[:evaluation_result_identifier].nil?
        type.compliance_type = params[:compliance_type]
        type.result_recorded_time = params[:result_recorded_time]
        type.config_rule_invoked_time = params[:config_rule_invoked_time]
        type.annotation = params[:annotation]
        type.account_id = params[:account_id]
        type.aws_region = params[:aws_region]
        type
      end
    end

    module AggregateEvaluationResultList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AggregateEvaluationResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AggregateResourceIdentifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AggregateResourceIdentifier, context: context)
        type = Types::AggregateResourceIdentifier.new
        type.source_account_id = params[:source_account_id]
        type.source_region = params[:source_region]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type.resource_name = params[:resource_name]
        type
      end
    end

    module AggregatedSourceStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AggregatedSourceStatus, context: context)
        type = Types::AggregatedSourceStatus.new
        type.source_id = params[:source_id]
        type.source_type = params[:source_type]
        type.aws_region = params[:aws_region]
        type.last_update_status = params[:last_update_status]
        type.last_update_time = params[:last_update_time]
        type.last_error_code = params[:last_error_code]
        type.last_error_message = params[:last_error_message]
        type
      end
    end

    module AggregatedSourceStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AggregatedSourceStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AggregatedSourceStatusTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AggregationAuthorization
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AggregationAuthorization, context: context)
        type = Types::AggregationAuthorization.new
        type.aggregation_authorization_arn = params[:aggregation_authorization_arn]
        type.authorized_account_id = params[:authorized_account_id]
        type.authorized_aws_region = params[:authorized_aws_region]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module AggregationAuthorizationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AggregationAuthorization.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AggregatorRegionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BaseConfigurationItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BaseConfigurationItem, context: context)
        type = Types::BaseConfigurationItem.new
        type.version = params[:version]
        type.account_id = params[:account_id]
        type.configuration_item_capture_time = params[:configuration_item_capture_time]
        type.configuration_item_status = params[:configuration_item_status]
        type.configuration_state_id = params[:configuration_state_id]
        type.arn = params[:arn]
        type.resource_type = params[:resource_type]
        type.resource_id = params[:resource_id]
        type.resource_name = params[:resource_name]
        type.aws_region = params[:aws_region]
        type.availability_zone = params[:availability_zone]
        type.resource_creation_time = params[:resource_creation_time]
        type.configuration = params[:configuration]
        type.supplementary_configuration = SupplementaryConfiguration.build(params[:supplementary_configuration], context: "#{context}[:supplementary_configuration]") unless params[:supplementary_configuration].nil?
        type
      end
    end

    module BaseConfigurationItems
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BaseConfigurationItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchGetAggregateResourceConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetAggregateResourceConfigInput, context: context)
        type = Types::BatchGetAggregateResourceConfigInput.new
        type.configuration_aggregator_name = params[:configuration_aggregator_name]
        type.resource_identifiers = ResourceIdentifiersList.build(params[:resource_identifiers], context: "#{context}[:resource_identifiers]") unless params[:resource_identifiers].nil?
        type
      end
    end

    module BatchGetAggregateResourceConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetAggregateResourceConfigOutput, context: context)
        type = Types::BatchGetAggregateResourceConfigOutput.new
        type.base_configuration_items = BaseConfigurationItems.build(params[:base_configuration_items], context: "#{context}[:base_configuration_items]") unless params[:base_configuration_items].nil?
        type.unprocessed_resource_identifiers = UnprocessedResourceIdentifierList.build(params[:unprocessed_resource_identifiers], context: "#{context}[:unprocessed_resource_identifiers]") unless params[:unprocessed_resource_identifiers].nil?
        type
      end
    end

    module BatchGetResourceConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetResourceConfigInput, context: context)
        type = Types::BatchGetResourceConfigInput.new
        type.resource_keys = ResourceKeys.build(params[:resource_keys], context: "#{context}[:resource_keys]") unless params[:resource_keys].nil?
        type
      end
    end

    module BatchGetResourceConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetResourceConfigOutput, context: context)
        type = Types::BatchGetResourceConfigOutput.new
        type.base_configuration_items = BaseConfigurationItems.build(params[:base_configuration_items], context: "#{context}[:base_configuration_items]") unless params[:base_configuration_items].nil?
        type.unprocessed_resource_keys = ResourceKeys.build(params[:unprocessed_resource_keys], context: "#{context}[:unprocessed_resource_keys]") unless params[:unprocessed_resource_keys].nil?
        type
      end
    end

    module Compliance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Compliance, context: context)
        type = Types::Compliance.new
        type.compliance_type = params[:compliance_type]
        type.compliance_contributor_count = ComplianceContributorCount.build(params[:compliance_contributor_count], context: "#{context}[:compliance_contributor_count]") unless params[:compliance_contributor_count].nil?
        type
      end
    end

    module ComplianceByConfigRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComplianceByConfigRule, context: context)
        type = Types::ComplianceByConfigRule.new
        type.config_rule_name = params[:config_rule_name]
        type.compliance = Compliance.build(params[:compliance], context: "#{context}[:compliance]") unless params[:compliance].nil?
        type
      end
    end

    module ComplianceByConfigRules
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ComplianceByConfigRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ComplianceByResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComplianceByResource, context: context)
        type = Types::ComplianceByResource.new
        type.resource_type = params[:resource_type]
        type.resource_id = params[:resource_id]
        type.compliance = Compliance.build(params[:compliance], context: "#{context}[:compliance]") unless params[:compliance].nil?
        type
      end
    end

    module ComplianceByResources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ComplianceByResource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ComplianceContributorCount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComplianceContributorCount, context: context)
        type = Types::ComplianceContributorCount.new
        type.capped_count = params[:capped_count]
        type.cap_exceeded = params[:cap_exceeded]
        type
      end
    end

    module ComplianceResourceTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ComplianceSummariesByResourceType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ComplianceSummaryByResourceType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ComplianceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComplianceSummary, context: context)
        type = Types::ComplianceSummary.new
        type.compliant_resource_count = ComplianceContributorCount.build(params[:compliant_resource_count], context: "#{context}[:compliant_resource_count]") unless params[:compliant_resource_count].nil?
        type.non_compliant_resource_count = ComplianceContributorCount.build(params[:non_compliant_resource_count], context: "#{context}[:non_compliant_resource_count]") unless params[:non_compliant_resource_count].nil?
        type.compliance_summary_timestamp = params[:compliance_summary_timestamp]
        type
      end
    end

    module ComplianceSummaryByResourceType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComplianceSummaryByResourceType, context: context)
        type = Types::ComplianceSummaryByResourceType.new
        type.resource_type = params[:resource_type]
        type.compliance_summary = ComplianceSummary.build(params[:compliance_summary], context: "#{context}[:compliance_summary]") unless params[:compliance_summary].nil?
        type
      end
    end

    module ComplianceTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConfigExportDeliveryInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigExportDeliveryInfo, context: context)
        type = Types::ConfigExportDeliveryInfo.new
        type.last_status = params[:last_status]
        type.last_error_code = params[:last_error_code]
        type.last_error_message = params[:last_error_message]
        type.last_attempt_time = params[:last_attempt_time]
        type.last_successful_time = params[:last_successful_time]
        type.next_delivery_time = params[:next_delivery_time]
        type
      end
    end

    module ConfigRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigRule, context: context)
        type = Types::ConfigRule.new
        type.config_rule_name = params[:config_rule_name]
        type.config_rule_arn = params[:config_rule_arn]
        type.config_rule_id = params[:config_rule_id]
        type.description = params[:description]
        type.scope = Scope.build(params[:scope], context: "#{context}[:scope]") unless params[:scope].nil?
        type.source = Source.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.input_parameters = params[:input_parameters]
        type.maximum_execution_frequency = params[:maximum_execution_frequency]
        type.config_rule_state = params[:config_rule_state]
        type.created_by = params[:created_by]
        type
      end
    end

    module ConfigRuleComplianceFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigRuleComplianceFilters, context: context)
        type = Types::ConfigRuleComplianceFilters.new
        type.config_rule_name = params[:config_rule_name]
        type.compliance_type = params[:compliance_type]
        type.account_id = params[:account_id]
        type.aws_region = params[:aws_region]
        type
      end
    end

    module ConfigRuleComplianceSummaryFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigRuleComplianceSummaryFilters, context: context)
        type = Types::ConfigRuleComplianceSummaryFilters.new
        type.account_id = params[:account_id]
        type.aws_region = params[:aws_region]
        type
      end
    end

    module ConfigRuleEvaluationStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigRuleEvaluationStatus, context: context)
        type = Types::ConfigRuleEvaluationStatus.new
        type.config_rule_name = params[:config_rule_name]
        type.config_rule_arn = params[:config_rule_arn]
        type.config_rule_id = params[:config_rule_id]
        type.last_successful_invocation_time = params[:last_successful_invocation_time]
        type.last_failed_invocation_time = params[:last_failed_invocation_time]
        type.last_successful_evaluation_time = params[:last_successful_evaluation_time]
        type.last_failed_evaluation_time = params[:last_failed_evaluation_time]
        type.first_activated_time = params[:first_activated_time]
        type.last_deactivated_time = params[:last_deactivated_time]
        type.last_error_code = params[:last_error_code]
        type.last_error_message = params[:last_error_message]
        type.first_evaluation_started = params[:first_evaluation_started]
        type.last_debug_log_delivery_status = params[:last_debug_log_delivery_status]
        type.last_debug_log_delivery_status_reason = params[:last_debug_log_delivery_status_reason]
        type.last_debug_log_delivery_time = params[:last_debug_log_delivery_time]
        type
      end
    end

    module ConfigRuleEvaluationStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConfigRuleEvaluationStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConfigRuleNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConfigRules
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConfigRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConfigSnapshotDeliveryProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigSnapshotDeliveryProperties, context: context)
        type = Types::ConfigSnapshotDeliveryProperties.new
        type.delivery_frequency = params[:delivery_frequency]
        type
      end
    end

    module ConfigStreamDeliveryInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigStreamDeliveryInfo, context: context)
        type = Types::ConfigStreamDeliveryInfo.new
        type.last_status = params[:last_status]
        type.last_error_code = params[:last_error_code]
        type.last_error_message = params[:last_error_message]
        type.last_status_change_time = params[:last_status_change_time]
        type
      end
    end

    module ConfigurationAggregator
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigurationAggregator, context: context)
        type = Types::ConfigurationAggregator.new
        type.configuration_aggregator_name = params[:configuration_aggregator_name]
        type.configuration_aggregator_arn = params[:configuration_aggregator_arn]
        type.account_aggregation_sources = AccountAggregationSourceList.build(params[:account_aggregation_sources], context: "#{context}[:account_aggregation_sources]") unless params[:account_aggregation_sources].nil?
        type.organization_aggregation_source = OrganizationAggregationSource.build(params[:organization_aggregation_source], context: "#{context}[:organization_aggregation_source]") unless params[:organization_aggregation_source].nil?
        type.creation_time = params[:creation_time]
        type.last_updated_time = params[:last_updated_time]
        type.created_by = params[:created_by]
        type
      end
    end

    module ConfigurationAggregatorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConfigurationAggregator.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConfigurationAggregatorNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConfigurationItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigurationItem, context: context)
        type = Types::ConfigurationItem.new
        type.version = params[:version]
        type.account_id = params[:account_id]
        type.configuration_item_capture_time = params[:configuration_item_capture_time]
        type.configuration_item_status = params[:configuration_item_status]
        type.configuration_state_id = params[:configuration_state_id]
        type.configuration_item_md5_hash = params[:configuration_item_md5_hash]
        type.arn = params[:arn]
        type.resource_type = params[:resource_type]
        type.resource_id = params[:resource_id]
        type.resource_name = params[:resource_name]
        type.aws_region = params[:aws_region]
        type.availability_zone = params[:availability_zone]
        type.resource_creation_time = params[:resource_creation_time]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.related_events = RelatedEventList.build(params[:related_events], context: "#{context}[:related_events]") unless params[:related_events].nil?
        type.relationships = RelationshipList.build(params[:relationships], context: "#{context}[:relationships]") unless params[:relationships].nil?
        type.configuration = params[:configuration]
        type.supplementary_configuration = SupplementaryConfiguration.build(params[:supplementary_configuration], context: "#{context}[:supplementary_configuration]") unless params[:supplementary_configuration].nil?
        type
      end
    end

    module ConfigurationItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConfigurationItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConfigurationRecorder
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigurationRecorder, context: context)
        type = Types::ConfigurationRecorder.new
        type.name = params[:name]
        type.role_arn = params[:role_arn]
        type.recording_group = RecordingGroup.build(params[:recording_group], context: "#{context}[:recording_group]") unless params[:recording_group].nil?
        type
      end
    end

    module ConfigurationRecorderList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConfigurationRecorder.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConfigurationRecorderNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConfigurationRecorderStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigurationRecorderStatus, context: context)
        type = Types::ConfigurationRecorderStatus.new
        type.name = params[:name]
        type.last_start_time = params[:last_start_time]
        type.last_stop_time = params[:last_stop_time]
        type.recording = params[:recording]
        type.last_status = params[:last_status]
        type.last_error_code = params[:last_error_code]
        type.last_error_message = params[:last_error_message]
        type.last_status_change_time = params[:last_status_change_time]
        type
      end
    end

    module ConfigurationRecorderStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConfigurationRecorderStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConformancePackComplianceFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConformancePackComplianceFilters, context: context)
        type = Types::ConformancePackComplianceFilters.new
        type.config_rule_names = ConformancePackConfigRuleNames.build(params[:config_rule_names], context: "#{context}[:config_rule_names]") unless params[:config_rule_names].nil?
        type.compliance_type = params[:compliance_type]
        type
      end
    end

    module ConformancePackComplianceResourceIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConformancePackComplianceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConformancePackComplianceSummary, context: context)
        type = Types::ConformancePackComplianceSummary.new
        type.conformance_pack_name = params[:conformance_pack_name]
        type.conformance_pack_compliance_status = params[:conformance_pack_compliance_status]
        type
      end
    end

    module ConformancePackComplianceSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConformancePackComplianceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConformancePackConfigRuleNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConformancePackDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConformancePackDetail, context: context)
        type = Types::ConformancePackDetail.new
        type.conformance_pack_name = params[:conformance_pack_name]
        type.conformance_pack_arn = params[:conformance_pack_arn]
        type.conformance_pack_id = params[:conformance_pack_id]
        type.delivery_s3_bucket = params[:delivery_s3_bucket]
        type.delivery_s3_key_prefix = params[:delivery_s3_key_prefix]
        type.conformance_pack_input_parameters = ConformancePackInputParameters.build(params[:conformance_pack_input_parameters], context: "#{context}[:conformance_pack_input_parameters]") unless params[:conformance_pack_input_parameters].nil?
        type.last_update_requested_time = params[:last_update_requested_time]
        type.created_by = params[:created_by]
        type
      end
    end

    module ConformancePackDetailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConformancePackDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConformancePackEvaluationFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConformancePackEvaluationFilters, context: context)
        type = Types::ConformancePackEvaluationFilters.new
        type.config_rule_names = ConformancePackConfigRuleNames.build(params[:config_rule_names], context: "#{context}[:config_rule_names]") unless params[:config_rule_names].nil?
        type.compliance_type = params[:compliance_type]
        type.resource_type = params[:resource_type]
        type.resource_ids = ConformancePackComplianceResourceIds.build(params[:resource_ids], context: "#{context}[:resource_ids]") unless params[:resource_ids].nil?
        type
      end
    end

    module ConformancePackEvaluationResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConformancePackEvaluationResult, context: context)
        type = Types::ConformancePackEvaluationResult.new
        type.compliance_type = params[:compliance_type]
        type.evaluation_result_identifier = EvaluationResultIdentifier.build(params[:evaluation_result_identifier], context: "#{context}[:evaluation_result_identifier]") unless params[:evaluation_result_identifier].nil?
        type.config_rule_invoked_time = params[:config_rule_invoked_time]
        type.result_recorded_time = params[:result_recorded_time]
        type.annotation = params[:annotation]
        type
      end
    end

    module ConformancePackInputParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConformancePackInputParameter, context: context)
        type = Types::ConformancePackInputParameter.new
        type.parameter_name = params[:parameter_name]
        type.parameter_value = params[:parameter_value]
        type
      end
    end

    module ConformancePackInputParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConformancePackInputParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConformancePackNamesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConformancePackNamesToSummarizeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConformancePackRuleCompliance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConformancePackRuleCompliance, context: context)
        type = Types::ConformancePackRuleCompliance.new
        type.config_rule_name = params[:config_rule_name]
        type.compliance_type = params[:compliance_type]
        type.controls = ControlsList.build(params[:controls], context: "#{context}[:controls]") unless params[:controls].nil?
        type
      end
    end

    module ConformancePackRuleComplianceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConformancePackRuleCompliance.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConformancePackRuleEvaluationResultsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConformancePackEvaluationResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConformancePackStatusDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConformancePackStatusDetail, context: context)
        type = Types::ConformancePackStatusDetail.new
        type.conformance_pack_name = params[:conformance_pack_name]
        type.conformance_pack_id = params[:conformance_pack_id]
        type.conformance_pack_arn = params[:conformance_pack_arn]
        type.conformance_pack_state = params[:conformance_pack_state]
        type.stack_arn = params[:stack_arn]
        type.conformance_pack_status_reason = params[:conformance_pack_status_reason]
        type.last_update_requested_time = params[:last_update_requested_time]
        type.last_update_completed_time = params[:last_update_completed_time]
        type
      end
    end

    module ConformancePackStatusDetailsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConformancePackStatusDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConformancePackTemplateValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConformancePackTemplateValidationException, context: context)
        type = Types::ConformancePackTemplateValidationException.new
        type.message = params[:message]
        type
      end
    end

    module ControlsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CustomPolicyDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomPolicyDetails, context: context)
        type = Types::CustomPolicyDetails.new
        type.policy_runtime = params[:policy_runtime]
        type.policy_text = params[:policy_text]
        type.enable_debug_log_delivery = params[:enable_debug_log_delivery]
        type
      end
    end

    module DebugLogDeliveryAccounts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DeleteAggregationAuthorizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAggregationAuthorizationInput, context: context)
        type = Types::DeleteAggregationAuthorizationInput.new
        type.authorized_account_id = params[:authorized_account_id]
        type.authorized_aws_region = params[:authorized_aws_region]
        type
      end
    end

    module DeleteAggregationAuthorizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAggregationAuthorizationOutput, context: context)
        type = Types::DeleteAggregationAuthorizationOutput.new
        type
      end
    end

    module DeleteConfigRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConfigRuleInput, context: context)
        type = Types::DeleteConfigRuleInput.new
        type.config_rule_name = params[:config_rule_name]
        type
      end
    end

    module DeleteConfigRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConfigRuleOutput, context: context)
        type = Types::DeleteConfigRuleOutput.new
        type
      end
    end

    module DeleteConfigurationAggregatorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConfigurationAggregatorInput, context: context)
        type = Types::DeleteConfigurationAggregatorInput.new
        type.configuration_aggregator_name = params[:configuration_aggregator_name]
        type
      end
    end

    module DeleteConfigurationAggregatorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConfigurationAggregatorOutput, context: context)
        type = Types::DeleteConfigurationAggregatorOutput.new
        type
      end
    end

    module DeleteConfigurationRecorderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConfigurationRecorderInput, context: context)
        type = Types::DeleteConfigurationRecorderInput.new
        type.configuration_recorder_name = params[:configuration_recorder_name]
        type
      end
    end

    module DeleteConfigurationRecorderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConfigurationRecorderOutput, context: context)
        type = Types::DeleteConfigurationRecorderOutput.new
        type
      end
    end

    module DeleteConformancePackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConformancePackInput, context: context)
        type = Types::DeleteConformancePackInput.new
        type.conformance_pack_name = params[:conformance_pack_name]
        type
      end
    end

    module DeleteConformancePackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConformancePackOutput, context: context)
        type = Types::DeleteConformancePackOutput.new
        type
      end
    end

    module DeleteDeliveryChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDeliveryChannelInput, context: context)
        type = Types::DeleteDeliveryChannelInput.new
        type.delivery_channel_name = params[:delivery_channel_name]
        type
      end
    end

    module DeleteDeliveryChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDeliveryChannelOutput, context: context)
        type = Types::DeleteDeliveryChannelOutput.new
        type
      end
    end

    module DeleteEvaluationResultsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEvaluationResultsInput, context: context)
        type = Types::DeleteEvaluationResultsInput.new
        type.config_rule_name = params[:config_rule_name]
        type
      end
    end

    module DeleteEvaluationResultsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEvaluationResultsOutput, context: context)
        type = Types::DeleteEvaluationResultsOutput.new
        type
      end
    end

    module DeleteOrganizationConfigRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteOrganizationConfigRuleInput, context: context)
        type = Types::DeleteOrganizationConfigRuleInput.new
        type.organization_config_rule_name = params[:organization_config_rule_name]
        type
      end
    end

    module DeleteOrganizationConfigRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteOrganizationConfigRuleOutput, context: context)
        type = Types::DeleteOrganizationConfigRuleOutput.new
        type
      end
    end

    module DeleteOrganizationConformancePackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteOrganizationConformancePackInput, context: context)
        type = Types::DeleteOrganizationConformancePackInput.new
        type.organization_conformance_pack_name = params[:organization_conformance_pack_name]
        type
      end
    end

    module DeleteOrganizationConformancePackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteOrganizationConformancePackOutput, context: context)
        type = Types::DeleteOrganizationConformancePackOutput.new
        type
      end
    end

    module DeletePendingAggregationRequestInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePendingAggregationRequestInput, context: context)
        type = Types::DeletePendingAggregationRequestInput.new
        type.requester_account_id = params[:requester_account_id]
        type.requester_aws_region = params[:requester_aws_region]
        type
      end
    end

    module DeletePendingAggregationRequestOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePendingAggregationRequestOutput, context: context)
        type = Types::DeletePendingAggregationRequestOutput.new
        type
      end
    end

    module DeleteRemediationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRemediationConfigurationInput, context: context)
        type = Types::DeleteRemediationConfigurationInput.new
        type.config_rule_name = params[:config_rule_name]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module DeleteRemediationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRemediationConfigurationOutput, context: context)
        type = Types::DeleteRemediationConfigurationOutput.new
        type
      end
    end

    module DeleteRemediationExceptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRemediationExceptionsInput, context: context)
        type = Types::DeleteRemediationExceptionsInput.new
        type.config_rule_name = params[:config_rule_name]
        type.resource_keys = RemediationExceptionResourceKeys.build(params[:resource_keys], context: "#{context}[:resource_keys]") unless params[:resource_keys].nil?
        type
      end
    end

    module DeleteRemediationExceptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRemediationExceptionsOutput, context: context)
        type = Types::DeleteRemediationExceptionsOutput.new
        type.failed_batches = FailedDeleteRemediationExceptionsBatches.build(params[:failed_batches], context: "#{context}[:failed_batches]") unless params[:failed_batches].nil?
        type
      end
    end

    module DeleteResourceConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourceConfigInput, context: context)
        type = Types::DeleteResourceConfigInput.new
        type.resource_type = params[:resource_type]
        type.resource_id = params[:resource_id]
        type
      end
    end

    module DeleteResourceConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourceConfigOutput, context: context)
        type = Types::DeleteResourceConfigOutput.new
        type
      end
    end

    module DeleteRetentionConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRetentionConfigurationInput, context: context)
        type = Types::DeleteRetentionConfigurationInput.new
        type.retention_configuration_name = params[:retention_configuration_name]
        type
      end
    end

    module DeleteRetentionConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRetentionConfigurationOutput, context: context)
        type = Types::DeleteRetentionConfigurationOutput.new
        type
      end
    end

    module DeleteStoredQueryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStoredQueryInput, context: context)
        type = Types::DeleteStoredQueryInput.new
        type.query_name = params[:query_name]
        type
      end
    end

    module DeleteStoredQueryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStoredQueryOutput, context: context)
        type = Types::DeleteStoredQueryOutput.new
        type
      end
    end

    module DeliverConfigSnapshotInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeliverConfigSnapshotInput, context: context)
        type = Types::DeliverConfigSnapshotInput.new
        type.delivery_channel_name = params[:delivery_channel_name]
        type
      end
    end

    module DeliverConfigSnapshotOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeliverConfigSnapshotOutput, context: context)
        type = Types::DeliverConfigSnapshotOutput.new
        type.config_snapshot_id = params[:config_snapshot_id]
        type
      end
    end

    module DeliveryChannel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeliveryChannel, context: context)
        type = Types::DeliveryChannel.new
        type.name = params[:name]
        type.s3_bucket_name = params[:s3_bucket_name]
        type.s3_key_prefix = params[:s3_key_prefix]
        type.s3_kms_key_arn = params[:s3_kms_key_arn]
        type.sns_topic_arn = params[:sns_topic_arn]
        type.config_snapshot_delivery_properties = ConfigSnapshotDeliveryProperties.build(params[:config_snapshot_delivery_properties], context: "#{context}[:config_snapshot_delivery_properties]") unless params[:config_snapshot_delivery_properties].nil?
        type
      end
    end

    module DeliveryChannelList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeliveryChannel.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeliveryChannelNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DeliveryChannelStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeliveryChannelStatus, context: context)
        type = Types::DeliveryChannelStatus.new
        type.name = params[:name]
        type.config_snapshot_delivery_info = ConfigExportDeliveryInfo.build(params[:config_snapshot_delivery_info], context: "#{context}[:config_snapshot_delivery_info]") unless params[:config_snapshot_delivery_info].nil?
        type.config_history_delivery_info = ConfigExportDeliveryInfo.build(params[:config_history_delivery_info], context: "#{context}[:config_history_delivery_info]") unless params[:config_history_delivery_info].nil?
        type.config_stream_delivery_info = ConfigStreamDeliveryInfo.build(params[:config_stream_delivery_info], context: "#{context}[:config_stream_delivery_info]") unless params[:config_stream_delivery_info].nil?
        type
      end
    end

    module DeliveryChannelStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeliveryChannelStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DescribeAggregateComplianceByConfigRulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAggregateComplianceByConfigRulesInput, context: context)
        type = Types::DescribeAggregateComplianceByConfigRulesInput.new
        type.configuration_aggregator_name = params[:configuration_aggregator_name]
        type.filters = ConfigRuleComplianceFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeAggregateComplianceByConfigRulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAggregateComplianceByConfigRulesOutput, context: context)
        type = Types::DescribeAggregateComplianceByConfigRulesOutput.new
        type.aggregate_compliance_by_config_rules = AggregateComplianceByConfigRuleList.build(params[:aggregate_compliance_by_config_rules], context: "#{context}[:aggregate_compliance_by_config_rules]") unless params[:aggregate_compliance_by_config_rules].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeAggregateComplianceByConformancePacksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAggregateComplianceByConformancePacksInput, context: context)
        type = Types::DescribeAggregateComplianceByConformancePacksInput.new
        type.configuration_aggregator_name = params[:configuration_aggregator_name]
        type.filters = AggregateConformancePackComplianceFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeAggregateComplianceByConformancePacksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAggregateComplianceByConformancePacksOutput, context: context)
        type = Types::DescribeAggregateComplianceByConformancePacksOutput.new
        type.aggregate_compliance_by_conformance_packs = AggregateComplianceByConformancePackList.build(params[:aggregate_compliance_by_conformance_packs], context: "#{context}[:aggregate_compliance_by_conformance_packs]") unless params[:aggregate_compliance_by_conformance_packs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeAggregationAuthorizationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAggregationAuthorizationsInput, context: context)
        type = Types::DescribeAggregationAuthorizationsInput.new
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeAggregationAuthorizationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAggregationAuthorizationsOutput, context: context)
        type = Types::DescribeAggregationAuthorizationsOutput.new
        type.aggregation_authorizations = AggregationAuthorizationList.build(params[:aggregation_authorizations], context: "#{context}[:aggregation_authorizations]") unless params[:aggregation_authorizations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeComplianceByConfigRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeComplianceByConfigRuleInput, context: context)
        type = Types::DescribeComplianceByConfigRuleInput.new
        type.config_rule_names = ConfigRuleNames.build(params[:config_rule_names], context: "#{context}[:config_rule_names]") unless params[:config_rule_names].nil?
        type.compliance_types = ComplianceTypes.build(params[:compliance_types], context: "#{context}[:compliance_types]") unless params[:compliance_types].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeComplianceByConfigRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeComplianceByConfigRuleOutput, context: context)
        type = Types::DescribeComplianceByConfigRuleOutput.new
        type.compliance_by_config_rules = ComplianceByConfigRules.build(params[:compliance_by_config_rules], context: "#{context}[:compliance_by_config_rules]") unless params[:compliance_by_config_rules].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeComplianceByResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeComplianceByResourceInput, context: context)
        type = Types::DescribeComplianceByResourceInput.new
        type.resource_type = params[:resource_type]
        type.resource_id = params[:resource_id]
        type.compliance_types = ComplianceTypes.build(params[:compliance_types], context: "#{context}[:compliance_types]") unless params[:compliance_types].nil?
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeComplianceByResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeComplianceByResourceOutput, context: context)
        type = Types::DescribeComplianceByResourceOutput.new
        type.compliance_by_resources = ComplianceByResources.build(params[:compliance_by_resources], context: "#{context}[:compliance_by_resources]") unless params[:compliance_by_resources].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeConfigRuleEvaluationStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConfigRuleEvaluationStatusInput, context: context)
        type = Types::DescribeConfigRuleEvaluationStatusInput.new
        type.config_rule_names = ConfigRuleNames.build(params[:config_rule_names], context: "#{context}[:config_rule_names]") unless params[:config_rule_names].nil?
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module DescribeConfigRuleEvaluationStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConfigRuleEvaluationStatusOutput, context: context)
        type = Types::DescribeConfigRuleEvaluationStatusOutput.new
        type.config_rules_evaluation_status = ConfigRuleEvaluationStatusList.build(params[:config_rules_evaluation_status], context: "#{context}[:config_rules_evaluation_status]") unless params[:config_rules_evaluation_status].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeConfigRulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConfigRulesInput, context: context)
        type = Types::DescribeConfigRulesInput.new
        type.config_rule_names = ConfigRuleNames.build(params[:config_rule_names], context: "#{context}[:config_rule_names]") unless params[:config_rule_names].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeConfigRulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConfigRulesOutput, context: context)
        type = Types::DescribeConfigRulesOutput.new
        type.config_rules = ConfigRules.build(params[:config_rules], context: "#{context}[:config_rules]") unless params[:config_rules].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeConfigurationAggregatorSourcesStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConfigurationAggregatorSourcesStatusInput, context: context)
        type = Types::DescribeConfigurationAggregatorSourcesStatusInput.new
        type.configuration_aggregator_name = params[:configuration_aggregator_name]
        type.update_status = AggregatedSourceStatusTypeList.build(params[:update_status], context: "#{context}[:update_status]") unless params[:update_status].nil?
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module DescribeConfigurationAggregatorSourcesStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConfigurationAggregatorSourcesStatusOutput, context: context)
        type = Types::DescribeConfigurationAggregatorSourcesStatusOutput.new
        type.aggregated_source_status_list = AggregatedSourceStatusList.build(params[:aggregated_source_status_list], context: "#{context}[:aggregated_source_status_list]") unless params[:aggregated_source_status_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeConfigurationAggregatorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConfigurationAggregatorsInput, context: context)
        type = Types::DescribeConfigurationAggregatorsInput.new
        type.configuration_aggregator_names = ConfigurationAggregatorNameList.build(params[:configuration_aggregator_names], context: "#{context}[:configuration_aggregator_names]") unless params[:configuration_aggregator_names].nil?
        type.next_token = params[:next_token]
        type.limit = params[:limit]
        type
      end
    end

    module DescribeConfigurationAggregatorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConfigurationAggregatorsOutput, context: context)
        type = Types::DescribeConfigurationAggregatorsOutput.new
        type.configuration_aggregators = ConfigurationAggregatorList.build(params[:configuration_aggregators], context: "#{context}[:configuration_aggregators]") unless params[:configuration_aggregators].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeConfigurationRecorderStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConfigurationRecorderStatusInput, context: context)
        type = Types::DescribeConfigurationRecorderStatusInput.new
        type.configuration_recorder_names = ConfigurationRecorderNameList.build(params[:configuration_recorder_names], context: "#{context}[:configuration_recorder_names]") unless params[:configuration_recorder_names].nil?
        type
      end
    end

    module DescribeConfigurationRecorderStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConfigurationRecorderStatusOutput, context: context)
        type = Types::DescribeConfigurationRecorderStatusOutput.new
        type.configuration_recorders_status = ConfigurationRecorderStatusList.build(params[:configuration_recorders_status], context: "#{context}[:configuration_recorders_status]") unless params[:configuration_recorders_status].nil?
        type
      end
    end

    module DescribeConfigurationRecordersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConfigurationRecordersInput, context: context)
        type = Types::DescribeConfigurationRecordersInput.new
        type.configuration_recorder_names = ConfigurationRecorderNameList.build(params[:configuration_recorder_names], context: "#{context}[:configuration_recorder_names]") unless params[:configuration_recorder_names].nil?
        type
      end
    end

    module DescribeConfigurationRecordersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConfigurationRecordersOutput, context: context)
        type = Types::DescribeConfigurationRecordersOutput.new
        type.configuration_recorders = ConfigurationRecorderList.build(params[:configuration_recorders], context: "#{context}[:configuration_recorders]") unless params[:configuration_recorders].nil?
        type
      end
    end

    module DescribeConformancePackComplianceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConformancePackComplianceInput, context: context)
        type = Types::DescribeConformancePackComplianceInput.new
        type.conformance_pack_name = params[:conformance_pack_name]
        type.filters = ConformancePackComplianceFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeConformancePackComplianceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConformancePackComplianceOutput, context: context)
        type = Types::DescribeConformancePackComplianceOutput.new
        type.conformance_pack_name = params[:conformance_pack_name]
        type.conformance_pack_rule_compliance_list = ConformancePackRuleComplianceList.build(params[:conformance_pack_rule_compliance_list], context: "#{context}[:conformance_pack_rule_compliance_list]") unless params[:conformance_pack_rule_compliance_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeConformancePackStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConformancePackStatusInput, context: context)
        type = Types::DescribeConformancePackStatusInput.new
        type.conformance_pack_names = ConformancePackNamesList.build(params[:conformance_pack_names], context: "#{context}[:conformance_pack_names]") unless params[:conformance_pack_names].nil?
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeConformancePackStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConformancePackStatusOutput, context: context)
        type = Types::DescribeConformancePackStatusOutput.new
        type.conformance_pack_status_details = ConformancePackStatusDetailsList.build(params[:conformance_pack_status_details], context: "#{context}[:conformance_pack_status_details]") unless params[:conformance_pack_status_details].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeConformancePacksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConformancePacksInput, context: context)
        type = Types::DescribeConformancePacksInput.new
        type.conformance_pack_names = ConformancePackNamesList.build(params[:conformance_pack_names], context: "#{context}[:conformance_pack_names]") unless params[:conformance_pack_names].nil?
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeConformancePacksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConformancePacksOutput, context: context)
        type = Types::DescribeConformancePacksOutput.new
        type.conformance_pack_details = ConformancePackDetailList.build(params[:conformance_pack_details], context: "#{context}[:conformance_pack_details]") unless params[:conformance_pack_details].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeDeliveryChannelStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDeliveryChannelStatusInput, context: context)
        type = Types::DescribeDeliveryChannelStatusInput.new
        type.delivery_channel_names = DeliveryChannelNameList.build(params[:delivery_channel_names], context: "#{context}[:delivery_channel_names]") unless params[:delivery_channel_names].nil?
        type
      end
    end

    module DescribeDeliveryChannelStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDeliveryChannelStatusOutput, context: context)
        type = Types::DescribeDeliveryChannelStatusOutput.new
        type.delivery_channels_status = DeliveryChannelStatusList.build(params[:delivery_channels_status], context: "#{context}[:delivery_channels_status]") unless params[:delivery_channels_status].nil?
        type
      end
    end

    module DescribeDeliveryChannelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDeliveryChannelsInput, context: context)
        type = Types::DescribeDeliveryChannelsInput.new
        type.delivery_channel_names = DeliveryChannelNameList.build(params[:delivery_channel_names], context: "#{context}[:delivery_channel_names]") unless params[:delivery_channel_names].nil?
        type
      end
    end

    module DescribeDeliveryChannelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDeliveryChannelsOutput, context: context)
        type = Types::DescribeDeliveryChannelsOutput.new
        type.delivery_channels = DeliveryChannelList.build(params[:delivery_channels], context: "#{context}[:delivery_channels]") unless params[:delivery_channels].nil?
        type
      end
    end

    module DescribeOrganizationConfigRuleStatusesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrganizationConfigRuleStatusesInput, context: context)
        type = Types::DescribeOrganizationConfigRuleStatusesInput.new
        type.organization_config_rule_names = OrganizationConfigRuleNames.build(params[:organization_config_rule_names], context: "#{context}[:organization_config_rule_names]") unless params[:organization_config_rule_names].nil?
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeOrganizationConfigRuleStatusesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrganizationConfigRuleStatusesOutput, context: context)
        type = Types::DescribeOrganizationConfigRuleStatusesOutput.new
        type.organization_config_rule_statuses = OrganizationConfigRuleStatuses.build(params[:organization_config_rule_statuses], context: "#{context}[:organization_config_rule_statuses]") unless params[:organization_config_rule_statuses].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeOrganizationConfigRulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrganizationConfigRulesInput, context: context)
        type = Types::DescribeOrganizationConfigRulesInput.new
        type.organization_config_rule_names = OrganizationConfigRuleNames.build(params[:organization_config_rule_names], context: "#{context}[:organization_config_rule_names]") unless params[:organization_config_rule_names].nil?
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeOrganizationConfigRulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrganizationConfigRulesOutput, context: context)
        type = Types::DescribeOrganizationConfigRulesOutput.new
        type.organization_config_rules = OrganizationConfigRules.build(params[:organization_config_rules], context: "#{context}[:organization_config_rules]") unless params[:organization_config_rules].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeOrganizationConformancePackStatusesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrganizationConformancePackStatusesInput, context: context)
        type = Types::DescribeOrganizationConformancePackStatusesInput.new
        type.organization_conformance_pack_names = OrganizationConformancePackNames.build(params[:organization_conformance_pack_names], context: "#{context}[:organization_conformance_pack_names]") unless params[:organization_conformance_pack_names].nil?
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeOrganizationConformancePackStatusesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrganizationConformancePackStatusesOutput, context: context)
        type = Types::DescribeOrganizationConformancePackStatusesOutput.new
        type.organization_conformance_pack_statuses = OrganizationConformancePackStatuses.build(params[:organization_conformance_pack_statuses], context: "#{context}[:organization_conformance_pack_statuses]") unless params[:organization_conformance_pack_statuses].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeOrganizationConformancePacksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrganizationConformancePacksInput, context: context)
        type = Types::DescribeOrganizationConformancePacksInput.new
        type.organization_conformance_pack_names = OrganizationConformancePackNames.build(params[:organization_conformance_pack_names], context: "#{context}[:organization_conformance_pack_names]") unless params[:organization_conformance_pack_names].nil?
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeOrganizationConformancePacksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrganizationConformancePacksOutput, context: context)
        type = Types::DescribeOrganizationConformancePacksOutput.new
        type.organization_conformance_packs = OrganizationConformancePacks.build(params[:organization_conformance_packs], context: "#{context}[:organization_conformance_packs]") unless params[:organization_conformance_packs].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribePendingAggregationRequestsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePendingAggregationRequestsInput, context: context)
        type = Types::DescribePendingAggregationRequestsInput.new
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribePendingAggregationRequestsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePendingAggregationRequestsOutput, context: context)
        type = Types::DescribePendingAggregationRequestsOutput.new
        type.pending_aggregation_requests = PendingAggregationRequestList.build(params[:pending_aggregation_requests], context: "#{context}[:pending_aggregation_requests]") unless params[:pending_aggregation_requests].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeRemediationConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRemediationConfigurationsInput, context: context)
        type = Types::DescribeRemediationConfigurationsInput.new
        type.config_rule_names = ConfigRuleNames.build(params[:config_rule_names], context: "#{context}[:config_rule_names]") unless params[:config_rule_names].nil?
        type
      end
    end

    module DescribeRemediationConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRemediationConfigurationsOutput, context: context)
        type = Types::DescribeRemediationConfigurationsOutput.new
        type.remediation_configurations = RemediationConfigurations.build(params[:remediation_configurations], context: "#{context}[:remediation_configurations]") unless params[:remediation_configurations].nil?
        type
      end
    end

    module DescribeRemediationExceptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRemediationExceptionsInput, context: context)
        type = Types::DescribeRemediationExceptionsInput.new
        type.config_rule_name = params[:config_rule_name]
        type.resource_keys = RemediationExceptionResourceKeys.build(params[:resource_keys], context: "#{context}[:resource_keys]") unless params[:resource_keys].nil?
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeRemediationExceptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRemediationExceptionsOutput, context: context)
        type = Types::DescribeRemediationExceptionsOutput.new
        type.remediation_exceptions = RemediationExceptions.build(params[:remediation_exceptions], context: "#{context}[:remediation_exceptions]") unless params[:remediation_exceptions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeRemediationExecutionStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRemediationExecutionStatusInput, context: context)
        type = Types::DescribeRemediationExecutionStatusInput.new
        type.config_rule_name = params[:config_rule_name]
        type.resource_keys = ResourceKeys.build(params[:resource_keys], context: "#{context}[:resource_keys]") unless params[:resource_keys].nil?
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeRemediationExecutionStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRemediationExecutionStatusOutput, context: context)
        type = Types::DescribeRemediationExecutionStatusOutput.new
        type.remediation_execution_statuses = RemediationExecutionStatuses.build(params[:remediation_execution_statuses], context: "#{context}[:remediation_execution_statuses]") unless params[:remediation_execution_statuses].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeRetentionConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRetentionConfigurationsInput, context: context)
        type = Types::DescribeRetentionConfigurationsInput.new
        type.retention_configuration_names = RetentionConfigurationNameList.build(params[:retention_configuration_names], context: "#{context}[:retention_configuration_names]") unless params[:retention_configuration_names].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeRetentionConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRetentionConfigurationsOutput, context: context)
        type = Types::DescribeRetentionConfigurationsOutput.new
        type.retention_configurations = RetentionConfigurationList.build(params[:retention_configurations], context: "#{context}[:retention_configurations]") unless params[:retention_configurations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DiscoveredResourceIdentifierList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AggregateResourceIdentifier.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Evaluation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Evaluation, context: context)
        type = Types::Evaluation.new
        type.compliance_resource_type = params[:compliance_resource_type]
        type.compliance_resource_id = params[:compliance_resource_id]
        type.compliance_type = params[:compliance_type]
        type.annotation = params[:annotation]
        type.ordering_timestamp = params[:ordering_timestamp]
        type
      end
    end

    module EvaluationResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EvaluationResult, context: context)
        type = Types::EvaluationResult.new
        type.evaluation_result_identifier = EvaluationResultIdentifier.build(params[:evaluation_result_identifier], context: "#{context}[:evaluation_result_identifier]") unless params[:evaluation_result_identifier].nil?
        type.compliance_type = params[:compliance_type]
        type.result_recorded_time = params[:result_recorded_time]
        type.config_rule_invoked_time = params[:config_rule_invoked_time]
        type.annotation = params[:annotation]
        type.result_token = params[:result_token]
        type
      end
    end

    module EvaluationResultIdentifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EvaluationResultIdentifier, context: context)
        type = Types::EvaluationResultIdentifier.new
        type.evaluation_result_qualifier = EvaluationResultQualifier.build(params[:evaluation_result_qualifier], context: "#{context}[:evaluation_result_qualifier]") unless params[:evaluation_result_qualifier].nil?
        type.ordering_timestamp = params[:ordering_timestamp]
        type
      end
    end

    module EvaluationResultQualifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EvaluationResultQualifier, context: context)
        type = Types::EvaluationResultQualifier.new
        type.config_rule_name = params[:config_rule_name]
        type.resource_type = params[:resource_type]
        type.resource_id = params[:resource_id]
        type
      end
    end

    module EvaluationResults
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EvaluationResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Evaluations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Evaluation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExcludedAccounts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ExecutionControls
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecutionControls, context: context)
        type = Types::ExecutionControls.new
        type.ssm_controls = SsmControls.build(params[:ssm_controls], context: "#{context}[:ssm_controls]") unless params[:ssm_controls].nil?
        type
      end
    end

    module ExternalEvaluation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExternalEvaluation, context: context)
        type = Types::ExternalEvaluation.new
        type.compliance_resource_type = params[:compliance_resource_type]
        type.compliance_resource_id = params[:compliance_resource_id]
        type.compliance_type = params[:compliance_type]
        type.annotation = params[:annotation]
        type.ordering_timestamp = params[:ordering_timestamp]
        type
      end
    end

    module FailedDeleteRemediationExceptionsBatch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailedDeleteRemediationExceptionsBatch, context: context)
        type = Types::FailedDeleteRemediationExceptionsBatch.new
        type.failure_message = params[:failure_message]
        type.failed_items = RemediationExceptionResourceKeys.build(params[:failed_items], context: "#{context}[:failed_items]") unless params[:failed_items].nil?
        type
      end
    end

    module FailedDeleteRemediationExceptionsBatches
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FailedDeleteRemediationExceptionsBatch.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FailedRemediationBatch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailedRemediationBatch, context: context)
        type = Types::FailedRemediationBatch.new
        type.failure_message = params[:failure_message]
        type.failed_items = RemediationConfigurations.build(params[:failed_items], context: "#{context}[:failed_items]") unless params[:failed_items].nil?
        type
      end
    end

    module FailedRemediationBatches
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FailedRemediationBatch.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FailedRemediationExceptionBatch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailedRemediationExceptionBatch, context: context)
        type = Types::FailedRemediationExceptionBatch.new
        type.failure_message = params[:failure_message]
        type.failed_items = RemediationExceptions.build(params[:failed_items], context: "#{context}[:failed_items]") unless params[:failed_items].nil?
        type
      end
    end

    module FailedRemediationExceptionBatches
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FailedRemediationExceptionBatch.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FieldInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FieldInfo, context: context)
        type = Types::FieldInfo.new
        type.name = params[:name]
        type
      end
    end

    module FieldInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FieldInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetAggregateComplianceDetailsByConfigRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAggregateComplianceDetailsByConfigRuleInput, context: context)
        type = Types::GetAggregateComplianceDetailsByConfigRuleInput.new
        type.configuration_aggregator_name = params[:configuration_aggregator_name]
        type.config_rule_name = params[:config_rule_name]
        type.account_id = params[:account_id]
        type.aws_region = params[:aws_region]
        type.compliance_type = params[:compliance_type]
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetAggregateComplianceDetailsByConfigRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAggregateComplianceDetailsByConfigRuleOutput, context: context)
        type = Types::GetAggregateComplianceDetailsByConfigRuleOutput.new
        type.aggregate_evaluation_results = AggregateEvaluationResultList.build(params[:aggregate_evaluation_results], context: "#{context}[:aggregate_evaluation_results]") unless params[:aggregate_evaluation_results].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetAggregateConfigRuleComplianceSummaryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAggregateConfigRuleComplianceSummaryInput, context: context)
        type = Types::GetAggregateConfigRuleComplianceSummaryInput.new
        type.configuration_aggregator_name = params[:configuration_aggregator_name]
        type.filters = ConfigRuleComplianceSummaryFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.group_by_key = params[:group_by_key]
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetAggregateConfigRuleComplianceSummaryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAggregateConfigRuleComplianceSummaryOutput, context: context)
        type = Types::GetAggregateConfigRuleComplianceSummaryOutput.new
        type.group_by_key = params[:group_by_key]
        type.aggregate_compliance_counts = AggregateComplianceCountList.build(params[:aggregate_compliance_counts], context: "#{context}[:aggregate_compliance_counts]") unless params[:aggregate_compliance_counts].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetAggregateConformancePackComplianceSummaryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAggregateConformancePackComplianceSummaryInput, context: context)
        type = Types::GetAggregateConformancePackComplianceSummaryInput.new
        type.configuration_aggregator_name = params[:configuration_aggregator_name]
        type.filters = AggregateConformancePackComplianceSummaryFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.group_by_key = params[:group_by_key]
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetAggregateConformancePackComplianceSummaryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAggregateConformancePackComplianceSummaryOutput, context: context)
        type = Types::GetAggregateConformancePackComplianceSummaryOutput.new
        type.aggregate_conformance_pack_compliance_summaries = AggregateConformancePackComplianceSummaryList.build(params[:aggregate_conformance_pack_compliance_summaries], context: "#{context}[:aggregate_conformance_pack_compliance_summaries]") unless params[:aggregate_conformance_pack_compliance_summaries].nil?
        type.group_by_key = params[:group_by_key]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetAggregateDiscoveredResourceCountsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAggregateDiscoveredResourceCountsInput, context: context)
        type = Types::GetAggregateDiscoveredResourceCountsInput.new
        type.configuration_aggregator_name = params[:configuration_aggregator_name]
        type.filters = ResourceCountFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.group_by_key = params[:group_by_key]
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetAggregateDiscoveredResourceCountsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAggregateDiscoveredResourceCountsOutput, context: context)
        type = Types::GetAggregateDiscoveredResourceCountsOutput.new
        type.total_discovered_resources = params[:total_discovered_resources]
        type.group_by_key = params[:group_by_key]
        type.grouped_resource_counts = GroupedResourceCountList.build(params[:grouped_resource_counts], context: "#{context}[:grouped_resource_counts]") unless params[:grouped_resource_counts].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetAggregateResourceConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAggregateResourceConfigInput, context: context)
        type = Types::GetAggregateResourceConfigInput.new
        type.configuration_aggregator_name = params[:configuration_aggregator_name]
        type.resource_identifier = AggregateResourceIdentifier.build(params[:resource_identifier], context: "#{context}[:resource_identifier]") unless params[:resource_identifier].nil?
        type
      end
    end

    module GetAggregateResourceConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAggregateResourceConfigOutput, context: context)
        type = Types::GetAggregateResourceConfigOutput.new
        type.configuration_item = ConfigurationItem.build(params[:configuration_item], context: "#{context}[:configuration_item]") unless params[:configuration_item].nil?
        type
      end
    end

    module GetComplianceDetailsByConfigRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetComplianceDetailsByConfigRuleInput, context: context)
        type = Types::GetComplianceDetailsByConfigRuleInput.new
        type.config_rule_name = params[:config_rule_name]
        type.compliance_types = ComplianceTypes.build(params[:compliance_types], context: "#{context}[:compliance_types]") unless params[:compliance_types].nil?
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetComplianceDetailsByConfigRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetComplianceDetailsByConfigRuleOutput, context: context)
        type = Types::GetComplianceDetailsByConfigRuleOutput.new
        type.evaluation_results = EvaluationResults.build(params[:evaluation_results], context: "#{context}[:evaluation_results]") unless params[:evaluation_results].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetComplianceDetailsByResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetComplianceDetailsByResourceInput, context: context)
        type = Types::GetComplianceDetailsByResourceInput.new
        type.resource_type = params[:resource_type]
        type.resource_id = params[:resource_id]
        type.compliance_types = ComplianceTypes.build(params[:compliance_types], context: "#{context}[:compliance_types]") unless params[:compliance_types].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetComplianceDetailsByResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetComplianceDetailsByResourceOutput, context: context)
        type = Types::GetComplianceDetailsByResourceOutput.new
        type.evaluation_results = EvaluationResults.build(params[:evaluation_results], context: "#{context}[:evaluation_results]") unless params[:evaluation_results].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetComplianceSummaryByConfigRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetComplianceSummaryByConfigRuleInput, context: context)
        type = Types::GetComplianceSummaryByConfigRuleInput.new
        type
      end
    end

    module GetComplianceSummaryByConfigRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetComplianceSummaryByConfigRuleOutput, context: context)
        type = Types::GetComplianceSummaryByConfigRuleOutput.new
        type.compliance_summary = ComplianceSummary.build(params[:compliance_summary], context: "#{context}[:compliance_summary]") unless params[:compliance_summary].nil?
        type
      end
    end

    module GetComplianceSummaryByResourceTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetComplianceSummaryByResourceTypeInput, context: context)
        type = Types::GetComplianceSummaryByResourceTypeInput.new
        type.resource_types = ResourceTypes.build(params[:resource_types], context: "#{context}[:resource_types]") unless params[:resource_types].nil?
        type
      end
    end

    module GetComplianceSummaryByResourceTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetComplianceSummaryByResourceTypeOutput, context: context)
        type = Types::GetComplianceSummaryByResourceTypeOutput.new
        type.compliance_summaries_by_resource_type = ComplianceSummariesByResourceType.build(params[:compliance_summaries_by_resource_type], context: "#{context}[:compliance_summaries_by_resource_type]") unless params[:compliance_summaries_by_resource_type].nil?
        type
      end
    end

    module GetConformancePackComplianceDetailsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConformancePackComplianceDetailsInput, context: context)
        type = Types::GetConformancePackComplianceDetailsInput.new
        type.conformance_pack_name = params[:conformance_pack_name]
        type.filters = ConformancePackEvaluationFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetConformancePackComplianceDetailsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConformancePackComplianceDetailsOutput, context: context)
        type = Types::GetConformancePackComplianceDetailsOutput.new
        type.conformance_pack_name = params[:conformance_pack_name]
        type.conformance_pack_rule_evaluation_results = ConformancePackRuleEvaluationResultsList.build(params[:conformance_pack_rule_evaluation_results], context: "#{context}[:conformance_pack_rule_evaluation_results]") unless params[:conformance_pack_rule_evaluation_results].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetConformancePackComplianceSummaryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConformancePackComplianceSummaryInput, context: context)
        type = Types::GetConformancePackComplianceSummaryInput.new
        type.conformance_pack_names = ConformancePackNamesToSummarizeList.build(params[:conformance_pack_names], context: "#{context}[:conformance_pack_names]") unless params[:conformance_pack_names].nil?
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetConformancePackComplianceSummaryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConformancePackComplianceSummaryOutput, context: context)
        type = Types::GetConformancePackComplianceSummaryOutput.new
        type.conformance_pack_compliance_summary_list = ConformancePackComplianceSummaryList.build(params[:conformance_pack_compliance_summary_list], context: "#{context}[:conformance_pack_compliance_summary_list]") unless params[:conformance_pack_compliance_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetCustomRulePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCustomRulePolicyInput, context: context)
        type = Types::GetCustomRulePolicyInput.new
        type.config_rule_name = params[:config_rule_name]
        type
      end
    end

    module GetCustomRulePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCustomRulePolicyOutput, context: context)
        type = Types::GetCustomRulePolicyOutput.new
        type.policy_text = params[:policy_text]
        type
      end
    end

    module GetDiscoveredResourceCountsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDiscoveredResourceCountsInput, context: context)
        type = Types::GetDiscoveredResourceCountsInput.new
        type.resource_types = ResourceTypes.build(params[:resource_types], context: "#{context}[:resource_types]") unless params[:resource_types].nil?
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetDiscoveredResourceCountsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDiscoveredResourceCountsOutput, context: context)
        type = Types::GetDiscoveredResourceCountsOutput.new
        type.total_discovered_resources = params[:total_discovered_resources]
        type.resource_counts = ResourceCounts.build(params[:resource_counts], context: "#{context}[:resource_counts]") unless params[:resource_counts].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetOrganizationConfigRuleDetailedStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOrganizationConfigRuleDetailedStatusInput, context: context)
        type = Types::GetOrganizationConfigRuleDetailedStatusInput.new
        type.organization_config_rule_name = params[:organization_config_rule_name]
        type.filters = StatusDetailFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetOrganizationConfigRuleDetailedStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOrganizationConfigRuleDetailedStatusOutput, context: context)
        type = Types::GetOrganizationConfigRuleDetailedStatusOutput.new
        type.organization_config_rule_detailed_status = OrganizationConfigRuleDetailedStatus.build(params[:organization_config_rule_detailed_status], context: "#{context}[:organization_config_rule_detailed_status]") unless params[:organization_config_rule_detailed_status].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetOrganizationConformancePackDetailedStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOrganizationConformancePackDetailedStatusInput, context: context)
        type = Types::GetOrganizationConformancePackDetailedStatusInput.new
        type.organization_conformance_pack_name = params[:organization_conformance_pack_name]
        type.filters = OrganizationResourceDetailedStatusFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetOrganizationConformancePackDetailedStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOrganizationConformancePackDetailedStatusOutput, context: context)
        type = Types::GetOrganizationConformancePackDetailedStatusOutput.new
        type.organization_conformance_pack_detailed_statuses = OrganizationConformancePackDetailedStatuses.build(params[:organization_conformance_pack_detailed_statuses], context: "#{context}[:organization_conformance_pack_detailed_statuses]") unless params[:organization_conformance_pack_detailed_statuses].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetOrganizationCustomRulePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOrganizationCustomRulePolicyInput, context: context)
        type = Types::GetOrganizationCustomRulePolicyInput.new
        type.organization_config_rule_name = params[:organization_config_rule_name]
        type
      end
    end

    module GetOrganizationCustomRulePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetOrganizationCustomRulePolicyOutput, context: context)
        type = Types::GetOrganizationCustomRulePolicyOutput.new
        type.policy_text = params[:policy_text]
        type
      end
    end

    module GetResourceConfigHistoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourceConfigHistoryInput, context: context)
        type = Types::GetResourceConfigHistoryInput.new
        type.resource_type = params[:resource_type]
        type.resource_id = params[:resource_id]
        type.later_time = params[:later_time]
        type.earlier_time = params[:earlier_time]
        type.chronological_order = params[:chronological_order]
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetResourceConfigHistoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourceConfigHistoryOutput, context: context)
        type = Types::GetResourceConfigHistoryOutput.new
        type.configuration_items = ConfigurationItemList.build(params[:configuration_items], context: "#{context}[:configuration_items]") unless params[:configuration_items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetStoredQueryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStoredQueryInput, context: context)
        type = Types::GetStoredQueryInput.new
        type.query_name = params[:query_name]
        type
      end
    end

    module GetStoredQueryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStoredQueryOutput, context: context)
        type = Types::GetStoredQueryOutput.new
        type.stored_query = StoredQuery.build(params[:stored_query], context: "#{context}[:stored_query]") unless params[:stored_query].nil?
        type
      end
    end

    module GroupedResourceCount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GroupedResourceCount, context: context)
        type = Types::GroupedResourceCount.new
        type.group_name = params[:group_name]
        type.resource_count = params[:resource_count]
        type
      end
    end

    module GroupedResourceCountList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GroupedResourceCount.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InsufficientDeliveryPolicyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsufficientDeliveryPolicyException, context: context)
        type = Types::InsufficientDeliveryPolicyException.new
        type.message = params[:message]
        type
      end
    end

    module InsufficientPermissionsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InsufficientPermissionsException, context: context)
        type = Types::InsufficientPermissionsException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidConfigurationRecorderNameException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidConfigurationRecorderNameException, context: context)
        type = Types::InvalidConfigurationRecorderNameException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDeliveryChannelNameException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDeliveryChannelNameException, context: context)
        type = Types::InvalidDeliveryChannelNameException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidExpressionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidExpressionException, context: context)
        type = Types::InvalidExpressionException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidLimitException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidLimitException, context: context)
        type = Types::InvalidLimitException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidNextTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNextTokenException, context: context)
        type = Types::InvalidNextTokenException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterValueException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterValueException, context: context)
        type = Types::InvalidParameterValueException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRecordingGroupException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRecordingGroupException, context: context)
        type = Types::InvalidRecordingGroupException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidResultTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidResultTokenException, context: context)
        type = Types::InvalidResultTokenException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRoleException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRoleException, context: context)
        type = Types::InvalidRoleException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidS3KeyPrefixException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidS3KeyPrefixException, context: context)
        type = Types::InvalidS3KeyPrefixException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidS3KmsKeyArnException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidS3KmsKeyArnException, context: context)
        type = Types::InvalidS3KmsKeyArnException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidSNSTopicARNException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSNSTopicARNException, context: context)
        type = Types::InvalidSNSTopicARNException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTimeRangeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTimeRangeException, context: context)
        type = Types::InvalidTimeRangeException.new
        type.message = params[:message]
        type
      end
    end

    module LastDeliveryChannelDeleteFailedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LastDeliveryChannelDeleteFailedException, context: context)
        type = Types::LastDeliveryChannelDeleteFailedException.new
        type.message = params[:message]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListAggregateDiscoveredResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAggregateDiscoveredResourcesInput, context: context)
        type = Types::ListAggregateDiscoveredResourcesInput.new
        type.configuration_aggregator_name = params[:configuration_aggregator_name]
        type.resource_type = params[:resource_type]
        type.filters = ResourceFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAggregateDiscoveredResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAggregateDiscoveredResourcesOutput, context: context)
        type = Types::ListAggregateDiscoveredResourcesOutput.new
        type.resource_identifiers = DiscoveredResourceIdentifierList.build(params[:resource_identifiers], context: "#{context}[:resource_identifiers]") unless params[:resource_identifiers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDiscoveredResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDiscoveredResourcesInput, context: context)
        type = Types::ListDiscoveredResourcesInput.new
        type.resource_type = params[:resource_type]
        type.resource_ids = ResourceIdList.build(params[:resource_ids], context: "#{context}[:resource_ids]") unless params[:resource_ids].nil?
        type.resource_name = params[:resource_name]
        type.limit = params[:limit]
        type.include_deleted_resources = params[:include_deleted_resources]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDiscoveredResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDiscoveredResourcesOutput, context: context)
        type = Types::ListDiscoveredResourcesOutput.new
        type.resource_identifiers = ResourceIdentifierList.build(params[:resource_identifiers], context: "#{context}[:resource_identifiers]") unless params[:resource_identifiers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListStoredQueriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStoredQueriesInput, context: context)
        type = Types::ListStoredQueriesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListStoredQueriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListStoredQueriesOutput, context: context)
        type = Types::ListStoredQueriesOutput.new
        type.stored_query_metadata = StoredQueryMetadataList.build(params[:stored_query_metadata], context: "#{context}[:stored_query_metadata]") unless params[:stored_query_metadata].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module MaxActiveResourcesExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaxActiveResourcesExceededException, context: context)
        type = Types::MaxActiveResourcesExceededException.new
        type.message = params[:message]
        type
      end
    end

    module MaxNumberOfConfigRulesExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaxNumberOfConfigRulesExceededException, context: context)
        type = Types::MaxNumberOfConfigRulesExceededException.new
        type.message = params[:message]
        type
      end
    end

    module MaxNumberOfConfigurationRecordersExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaxNumberOfConfigurationRecordersExceededException, context: context)
        type = Types::MaxNumberOfConfigurationRecordersExceededException.new
        type.message = params[:message]
        type
      end
    end

    module MaxNumberOfConformancePacksExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaxNumberOfConformancePacksExceededException, context: context)
        type = Types::MaxNumberOfConformancePacksExceededException.new
        type.message = params[:message]
        type
      end
    end

    module MaxNumberOfDeliveryChannelsExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaxNumberOfDeliveryChannelsExceededException, context: context)
        type = Types::MaxNumberOfDeliveryChannelsExceededException.new
        type.message = params[:message]
        type
      end
    end

    module MaxNumberOfOrganizationConfigRulesExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaxNumberOfOrganizationConfigRulesExceededException, context: context)
        type = Types::MaxNumberOfOrganizationConfigRulesExceededException.new
        type.message = params[:message]
        type
      end
    end

    module MaxNumberOfOrganizationConformancePacksExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaxNumberOfOrganizationConformancePacksExceededException, context: context)
        type = Types::MaxNumberOfOrganizationConformancePacksExceededException.new
        type.message = params[:message]
        type
      end
    end

    module MaxNumberOfRetentionConfigurationsExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaxNumberOfRetentionConfigurationsExceededException, context: context)
        type = Types::MaxNumberOfRetentionConfigurationsExceededException.new
        type.message = params[:message]
        type
      end
    end

    module MemberAccountStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MemberAccountStatus, context: context)
        type = Types::MemberAccountStatus.new
        type.account_id = params[:account_id]
        type.config_rule_name = params[:config_rule_name]
        type.member_account_rule_status = params[:member_account_rule_status]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type.last_update_time = params[:last_update_time]
        type
      end
    end

    module NoAvailableConfigurationRecorderException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoAvailableConfigurationRecorderException, context: context)
        type = Types::NoAvailableConfigurationRecorderException.new
        type.message = params[:message]
        type
      end
    end

    module NoAvailableDeliveryChannelException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoAvailableDeliveryChannelException, context: context)
        type = Types::NoAvailableDeliveryChannelException.new
        type.message = params[:message]
        type
      end
    end

    module NoAvailableOrganizationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoAvailableOrganizationException, context: context)
        type = Types::NoAvailableOrganizationException.new
        type.message = params[:message]
        type
      end
    end

    module NoRunningConfigurationRecorderException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoRunningConfigurationRecorderException, context: context)
        type = Types::NoRunningConfigurationRecorderException.new
        type.message = params[:message]
        type
      end
    end

    module NoSuchBucketException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoSuchBucketException, context: context)
        type = Types::NoSuchBucketException.new
        type.message = params[:message]
        type
      end
    end

    module NoSuchConfigRuleException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoSuchConfigRuleException, context: context)
        type = Types::NoSuchConfigRuleException.new
        type.message = params[:message]
        type
      end
    end

    module NoSuchConfigRuleInConformancePackException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoSuchConfigRuleInConformancePackException, context: context)
        type = Types::NoSuchConfigRuleInConformancePackException.new
        type.message = params[:message]
        type
      end
    end

    module NoSuchConfigurationAggregatorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoSuchConfigurationAggregatorException, context: context)
        type = Types::NoSuchConfigurationAggregatorException.new
        type.message = params[:message]
        type
      end
    end

    module NoSuchConfigurationRecorderException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoSuchConfigurationRecorderException, context: context)
        type = Types::NoSuchConfigurationRecorderException.new
        type.message = params[:message]
        type
      end
    end

    module NoSuchConformancePackException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoSuchConformancePackException, context: context)
        type = Types::NoSuchConformancePackException.new
        type.message = params[:message]
        type
      end
    end

    module NoSuchDeliveryChannelException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoSuchDeliveryChannelException, context: context)
        type = Types::NoSuchDeliveryChannelException.new
        type.message = params[:message]
        type
      end
    end

    module NoSuchOrganizationConfigRuleException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoSuchOrganizationConfigRuleException, context: context)
        type = Types::NoSuchOrganizationConfigRuleException.new
        type.message = params[:message]
        type
      end
    end

    module NoSuchOrganizationConformancePackException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoSuchOrganizationConformancePackException, context: context)
        type = Types::NoSuchOrganizationConformancePackException.new
        type.message = params[:message]
        type
      end
    end

    module NoSuchRemediationConfigurationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoSuchRemediationConfigurationException, context: context)
        type = Types::NoSuchRemediationConfigurationException.new
        type.message = params[:message]
        type
      end
    end

    module NoSuchRemediationExceptionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoSuchRemediationExceptionException, context: context)
        type = Types::NoSuchRemediationExceptionException.new
        type.message = params[:message]
        type
      end
    end

    module NoSuchRetentionConfigurationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoSuchRetentionConfigurationException, context: context)
        type = Types::NoSuchRetentionConfigurationException.new
        type.message = params[:message]
        type
      end
    end

    module OrganizationAccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationAccessDeniedException, context: context)
        type = Types::OrganizationAccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module OrganizationAggregationSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationAggregationSource, context: context)
        type = Types::OrganizationAggregationSource.new
        type.role_arn = params[:role_arn]
        type.aws_regions = AggregatorRegionList.build(params[:aws_regions], context: "#{context}[:aws_regions]") unless params[:aws_regions].nil?
        type.all_aws_regions = params[:all_aws_regions]
        type
      end
    end

    module OrganizationAllFeaturesNotEnabledException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationAllFeaturesNotEnabledException, context: context)
        type = Types::OrganizationAllFeaturesNotEnabledException.new
        type.message = params[:message]
        type
      end
    end

    module OrganizationConfigRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationConfigRule, context: context)
        type = Types::OrganizationConfigRule.new
        type.organization_config_rule_name = params[:organization_config_rule_name]
        type.organization_config_rule_arn = params[:organization_config_rule_arn]
        type.organization_managed_rule_metadata = OrganizationManagedRuleMetadata.build(params[:organization_managed_rule_metadata], context: "#{context}[:organization_managed_rule_metadata]") unless params[:organization_managed_rule_metadata].nil?
        type.organization_custom_rule_metadata = OrganizationCustomRuleMetadata.build(params[:organization_custom_rule_metadata], context: "#{context}[:organization_custom_rule_metadata]") unless params[:organization_custom_rule_metadata].nil?
        type.excluded_accounts = ExcludedAccounts.build(params[:excluded_accounts], context: "#{context}[:excluded_accounts]") unless params[:excluded_accounts].nil?
        type.last_update_time = params[:last_update_time]
        type.organization_custom_policy_rule_metadata = OrganizationCustomPolicyRuleMetadataNoPolicy.build(params[:organization_custom_policy_rule_metadata], context: "#{context}[:organization_custom_policy_rule_metadata]") unless params[:organization_custom_policy_rule_metadata].nil?
        type
      end
    end

    module OrganizationConfigRuleDetailedStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MemberAccountStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OrganizationConfigRuleNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OrganizationConfigRuleStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationConfigRuleStatus, context: context)
        type = Types::OrganizationConfigRuleStatus.new
        type.organization_config_rule_name = params[:organization_config_rule_name]
        type.organization_rule_status = params[:organization_rule_status]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type.last_update_time = params[:last_update_time]
        type
      end
    end

    module OrganizationConfigRuleStatuses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OrganizationConfigRuleStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OrganizationConfigRuleTriggerTypeNoSNs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OrganizationConfigRuleTriggerTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OrganizationConfigRules
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OrganizationConfigRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OrganizationConformancePack
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationConformancePack, context: context)
        type = Types::OrganizationConformancePack.new
        type.organization_conformance_pack_name = params[:organization_conformance_pack_name]
        type.organization_conformance_pack_arn = params[:organization_conformance_pack_arn]
        type.delivery_s3_bucket = params[:delivery_s3_bucket]
        type.delivery_s3_key_prefix = params[:delivery_s3_key_prefix]
        type.conformance_pack_input_parameters = ConformancePackInputParameters.build(params[:conformance_pack_input_parameters], context: "#{context}[:conformance_pack_input_parameters]") unless params[:conformance_pack_input_parameters].nil?
        type.excluded_accounts = ExcludedAccounts.build(params[:excluded_accounts], context: "#{context}[:excluded_accounts]") unless params[:excluded_accounts].nil?
        type.last_update_time = params[:last_update_time]
        type
      end
    end

    module OrganizationConformancePackDetailedStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationConformancePackDetailedStatus, context: context)
        type = Types::OrganizationConformancePackDetailedStatus.new
        type.account_id = params[:account_id]
        type.conformance_pack_name = params[:conformance_pack_name]
        type.status = params[:status]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type.last_update_time = params[:last_update_time]
        type
      end
    end

    module OrganizationConformancePackDetailedStatuses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OrganizationConformancePackDetailedStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OrganizationConformancePackNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OrganizationConformancePackStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationConformancePackStatus, context: context)
        type = Types::OrganizationConformancePackStatus.new
        type.organization_conformance_pack_name = params[:organization_conformance_pack_name]
        type.status = params[:status]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type.last_update_time = params[:last_update_time]
        type
      end
    end

    module OrganizationConformancePackStatuses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OrganizationConformancePackStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OrganizationConformancePackTemplateValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationConformancePackTemplateValidationException, context: context)
        type = Types::OrganizationConformancePackTemplateValidationException.new
        type.message = params[:message]
        type
      end
    end

    module OrganizationConformancePacks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OrganizationConformancePack.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OrganizationCustomPolicyRuleMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationCustomPolicyRuleMetadata, context: context)
        type = Types::OrganizationCustomPolicyRuleMetadata.new
        type.description = params[:description]
        type.organization_config_rule_trigger_types = OrganizationConfigRuleTriggerTypeNoSNs.build(params[:organization_config_rule_trigger_types], context: "#{context}[:organization_config_rule_trigger_types]") unless params[:organization_config_rule_trigger_types].nil?
        type.input_parameters = params[:input_parameters]
        type.maximum_execution_frequency = params[:maximum_execution_frequency]
        type.resource_types_scope = ResourceTypesScope.build(params[:resource_types_scope], context: "#{context}[:resource_types_scope]") unless params[:resource_types_scope].nil?
        type.resource_id_scope = params[:resource_id_scope]
        type.tag_key_scope = params[:tag_key_scope]
        type.tag_value_scope = params[:tag_value_scope]
        type.policy_runtime = params[:policy_runtime]
        type.policy_text = params[:policy_text]
        type.debug_log_delivery_accounts = DebugLogDeliveryAccounts.build(params[:debug_log_delivery_accounts], context: "#{context}[:debug_log_delivery_accounts]") unless params[:debug_log_delivery_accounts].nil?
        type
      end
    end

    module OrganizationCustomPolicyRuleMetadataNoPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationCustomPolicyRuleMetadataNoPolicy, context: context)
        type = Types::OrganizationCustomPolicyRuleMetadataNoPolicy.new
        type.description = params[:description]
        type.organization_config_rule_trigger_types = OrganizationConfigRuleTriggerTypeNoSNs.build(params[:organization_config_rule_trigger_types], context: "#{context}[:organization_config_rule_trigger_types]") unless params[:organization_config_rule_trigger_types].nil?
        type.input_parameters = params[:input_parameters]
        type.maximum_execution_frequency = params[:maximum_execution_frequency]
        type.resource_types_scope = ResourceTypesScope.build(params[:resource_types_scope], context: "#{context}[:resource_types_scope]") unless params[:resource_types_scope].nil?
        type.resource_id_scope = params[:resource_id_scope]
        type.tag_key_scope = params[:tag_key_scope]
        type.tag_value_scope = params[:tag_value_scope]
        type.policy_runtime = params[:policy_runtime]
        type.debug_log_delivery_accounts = DebugLogDeliveryAccounts.build(params[:debug_log_delivery_accounts], context: "#{context}[:debug_log_delivery_accounts]") unless params[:debug_log_delivery_accounts].nil?
        type
      end
    end

    module OrganizationCustomRuleMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationCustomRuleMetadata, context: context)
        type = Types::OrganizationCustomRuleMetadata.new
        type.description = params[:description]
        type.lambda_function_arn = params[:lambda_function_arn]
        type.organization_config_rule_trigger_types = OrganizationConfigRuleTriggerTypes.build(params[:organization_config_rule_trigger_types], context: "#{context}[:organization_config_rule_trigger_types]") unless params[:organization_config_rule_trigger_types].nil?
        type.input_parameters = params[:input_parameters]
        type.maximum_execution_frequency = params[:maximum_execution_frequency]
        type.resource_types_scope = ResourceTypesScope.build(params[:resource_types_scope], context: "#{context}[:resource_types_scope]") unless params[:resource_types_scope].nil?
        type.resource_id_scope = params[:resource_id_scope]
        type.tag_key_scope = params[:tag_key_scope]
        type.tag_value_scope = params[:tag_value_scope]
        type
      end
    end

    module OrganizationManagedRuleMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationManagedRuleMetadata, context: context)
        type = Types::OrganizationManagedRuleMetadata.new
        type.description = params[:description]
        type.rule_identifier = params[:rule_identifier]
        type.input_parameters = params[:input_parameters]
        type.maximum_execution_frequency = params[:maximum_execution_frequency]
        type.resource_types_scope = ResourceTypesScope.build(params[:resource_types_scope], context: "#{context}[:resource_types_scope]") unless params[:resource_types_scope].nil?
        type.resource_id_scope = params[:resource_id_scope]
        type.tag_key_scope = params[:tag_key_scope]
        type.tag_value_scope = params[:tag_value_scope]
        type
      end
    end

    module OrganizationResourceDetailedStatusFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OrganizationResourceDetailedStatusFilters, context: context)
        type = Types::OrganizationResourceDetailedStatusFilters.new
        type.account_id = params[:account_id]
        type.status = params[:status]
        type
      end
    end

    module OversizedConfigurationItemException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OversizedConfigurationItemException, context: context)
        type = Types::OversizedConfigurationItemException.new
        type.message = params[:message]
        type
      end
    end

    module PendingAggregationRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PendingAggregationRequest, context: context)
        type = Types::PendingAggregationRequest.new
        type.requester_account_id = params[:requester_account_id]
        type.requester_aws_region = params[:requester_aws_region]
        type
      end
    end

    module PendingAggregationRequestList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PendingAggregationRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutAggregationAuthorizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAggregationAuthorizationInput, context: context)
        type = Types::PutAggregationAuthorizationInput.new
        type.authorized_account_id = params[:authorized_account_id]
        type.authorized_aws_region = params[:authorized_aws_region]
        type.tags = TagsList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PutAggregationAuthorizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAggregationAuthorizationOutput, context: context)
        type = Types::PutAggregationAuthorizationOutput.new
        type.aggregation_authorization = AggregationAuthorization.build(params[:aggregation_authorization], context: "#{context}[:aggregation_authorization]") unless params[:aggregation_authorization].nil?
        type
      end
    end

    module PutConfigRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutConfigRuleInput, context: context)
        type = Types::PutConfigRuleInput.new
        type.config_rule = ConfigRule.build(params[:config_rule], context: "#{context}[:config_rule]") unless params[:config_rule].nil?
        type.tags = TagsList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PutConfigRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutConfigRuleOutput, context: context)
        type = Types::PutConfigRuleOutput.new
        type
      end
    end

    module PutConfigurationAggregatorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutConfigurationAggregatorInput, context: context)
        type = Types::PutConfigurationAggregatorInput.new
        type.configuration_aggregator_name = params[:configuration_aggregator_name]
        type.account_aggregation_sources = AccountAggregationSourceList.build(params[:account_aggregation_sources], context: "#{context}[:account_aggregation_sources]") unless params[:account_aggregation_sources].nil?
        type.organization_aggregation_source = OrganizationAggregationSource.build(params[:organization_aggregation_source], context: "#{context}[:organization_aggregation_source]") unless params[:organization_aggregation_source].nil?
        type.tags = TagsList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PutConfigurationAggregatorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutConfigurationAggregatorOutput, context: context)
        type = Types::PutConfigurationAggregatorOutput.new
        type.configuration_aggregator = ConfigurationAggregator.build(params[:configuration_aggregator], context: "#{context}[:configuration_aggregator]") unless params[:configuration_aggregator].nil?
        type
      end
    end

    module PutConfigurationRecorderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutConfigurationRecorderInput, context: context)
        type = Types::PutConfigurationRecorderInput.new
        type.configuration_recorder = ConfigurationRecorder.build(params[:configuration_recorder], context: "#{context}[:configuration_recorder]") unless params[:configuration_recorder].nil?
        type
      end
    end

    module PutConfigurationRecorderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutConfigurationRecorderOutput, context: context)
        type = Types::PutConfigurationRecorderOutput.new
        type
      end
    end

    module PutConformancePackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutConformancePackInput, context: context)
        type = Types::PutConformancePackInput.new
        type.conformance_pack_name = params[:conformance_pack_name]
        type.template_s3_uri = params[:template_s3_uri]
        type.template_body = params[:template_body]
        type.delivery_s3_bucket = params[:delivery_s3_bucket]
        type.delivery_s3_key_prefix = params[:delivery_s3_key_prefix]
        type.conformance_pack_input_parameters = ConformancePackInputParameters.build(params[:conformance_pack_input_parameters], context: "#{context}[:conformance_pack_input_parameters]") unless params[:conformance_pack_input_parameters].nil?
        type
      end
    end

    module PutConformancePackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutConformancePackOutput, context: context)
        type = Types::PutConformancePackOutput.new
        type.conformance_pack_arn = params[:conformance_pack_arn]
        type
      end
    end

    module PutDeliveryChannelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutDeliveryChannelInput, context: context)
        type = Types::PutDeliveryChannelInput.new
        type.delivery_channel = DeliveryChannel.build(params[:delivery_channel], context: "#{context}[:delivery_channel]") unless params[:delivery_channel].nil?
        type
      end
    end

    module PutDeliveryChannelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutDeliveryChannelOutput, context: context)
        type = Types::PutDeliveryChannelOutput.new
        type
      end
    end

    module PutEvaluationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEvaluationsInput, context: context)
        type = Types::PutEvaluationsInput.new
        type.evaluations = Evaluations.build(params[:evaluations], context: "#{context}[:evaluations]") unless params[:evaluations].nil?
        type.result_token = params[:result_token]
        type.test_mode = params[:test_mode]
        type
      end
    end

    module PutEvaluationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutEvaluationsOutput, context: context)
        type = Types::PutEvaluationsOutput.new
        type.failed_evaluations = Evaluations.build(params[:failed_evaluations], context: "#{context}[:failed_evaluations]") unless params[:failed_evaluations].nil?
        type
      end
    end

    module PutExternalEvaluationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutExternalEvaluationInput, context: context)
        type = Types::PutExternalEvaluationInput.new
        type.config_rule_name = params[:config_rule_name]
        type.external_evaluation = ExternalEvaluation.build(params[:external_evaluation], context: "#{context}[:external_evaluation]") unless params[:external_evaluation].nil?
        type
      end
    end

    module PutExternalEvaluationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutExternalEvaluationOutput, context: context)
        type = Types::PutExternalEvaluationOutput.new
        type
      end
    end

    module PutOrganizationConfigRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutOrganizationConfigRuleInput, context: context)
        type = Types::PutOrganizationConfigRuleInput.new
        type.organization_config_rule_name = params[:organization_config_rule_name]
        type.organization_managed_rule_metadata = OrganizationManagedRuleMetadata.build(params[:organization_managed_rule_metadata], context: "#{context}[:organization_managed_rule_metadata]") unless params[:organization_managed_rule_metadata].nil?
        type.organization_custom_rule_metadata = OrganizationCustomRuleMetadata.build(params[:organization_custom_rule_metadata], context: "#{context}[:organization_custom_rule_metadata]") unless params[:organization_custom_rule_metadata].nil?
        type.excluded_accounts = ExcludedAccounts.build(params[:excluded_accounts], context: "#{context}[:excluded_accounts]") unless params[:excluded_accounts].nil?
        type.organization_custom_policy_rule_metadata = OrganizationCustomPolicyRuleMetadata.build(params[:organization_custom_policy_rule_metadata], context: "#{context}[:organization_custom_policy_rule_metadata]") unless params[:organization_custom_policy_rule_metadata].nil?
        type
      end
    end

    module PutOrganizationConfigRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutOrganizationConfigRuleOutput, context: context)
        type = Types::PutOrganizationConfigRuleOutput.new
        type.organization_config_rule_arn = params[:organization_config_rule_arn]
        type
      end
    end

    module PutOrganizationConformancePackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutOrganizationConformancePackInput, context: context)
        type = Types::PutOrganizationConformancePackInput.new
        type.organization_conformance_pack_name = params[:organization_conformance_pack_name]
        type.template_s3_uri = params[:template_s3_uri]
        type.template_body = params[:template_body]
        type.delivery_s3_bucket = params[:delivery_s3_bucket]
        type.delivery_s3_key_prefix = params[:delivery_s3_key_prefix]
        type.conformance_pack_input_parameters = ConformancePackInputParameters.build(params[:conformance_pack_input_parameters], context: "#{context}[:conformance_pack_input_parameters]") unless params[:conformance_pack_input_parameters].nil?
        type.excluded_accounts = ExcludedAccounts.build(params[:excluded_accounts], context: "#{context}[:excluded_accounts]") unless params[:excluded_accounts].nil?
        type
      end
    end

    module PutOrganizationConformancePackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutOrganizationConformancePackOutput, context: context)
        type = Types::PutOrganizationConformancePackOutput.new
        type.organization_conformance_pack_arn = params[:organization_conformance_pack_arn]
        type
      end
    end

    module PutRemediationConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRemediationConfigurationsInput, context: context)
        type = Types::PutRemediationConfigurationsInput.new
        type.remediation_configurations = RemediationConfigurations.build(params[:remediation_configurations], context: "#{context}[:remediation_configurations]") unless params[:remediation_configurations].nil?
        type
      end
    end

    module PutRemediationConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRemediationConfigurationsOutput, context: context)
        type = Types::PutRemediationConfigurationsOutput.new
        type.failed_batches = FailedRemediationBatches.build(params[:failed_batches], context: "#{context}[:failed_batches]") unless params[:failed_batches].nil?
        type
      end
    end

    module PutRemediationExceptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRemediationExceptionsInput, context: context)
        type = Types::PutRemediationExceptionsInput.new
        type.config_rule_name = params[:config_rule_name]
        type.resource_keys = RemediationExceptionResourceKeys.build(params[:resource_keys], context: "#{context}[:resource_keys]") unless params[:resource_keys].nil?
        type.message = params[:message]
        type.expiration_time = params[:expiration_time]
        type
      end
    end

    module PutRemediationExceptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRemediationExceptionsOutput, context: context)
        type = Types::PutRemediationExceptionsOutput.new
        type.failed_batches = FailedRemediationExceptionBatches.build(params[:failed_batches], context: "#{context}[:failed_batches]") unless params[:failed_batches].nil?
        type
      end
    end

    module PutResourceConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutResourceConfigInput, context: context)
        type = Types::PutResourceConfigInput.new
        type.resource_type = params[:resource_type]
        type.schema_version_id = params[:schema_version_id]
        type.resource_id = params[:resource_id]
        type.resource_name = params[:resource_name]
        type.configuration = params[:configuration]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PutResourceConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutResourceConfigOutput, context: context)
        type = Types::PutResourceConfigOutput.new
        type
      end
    end

    module PutRetentionConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRetentionConfigurationInput, context: context)
        type = Types::PutRetentionConfigurationInput.new
        type.retention_period_in_days = params[:retention_period_in_days]
        type
      end
    end

    module PutRetentionConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRetentionConfigurationOutput, context: context)
        type = Types::PutRetentionConfigurationOutput.new
        type.retention_configuration = RetentionConfiguration.build(params[:retention_configuration], context: "#{context}[:retention_configuration]") unless params[:retention_configuration].nil?
        type
      end
    end

    module PutStoredQueryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutStoredQueryInput, context: context)
        type = Types::PutStoredQueryInput.new
        type.stored_query = StoredQuery.build(params[:stored_query], context: "#{context}[:stored_query]") unless params[:stored_query].nil?
        type.tags = TagsList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PutStoredQueryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutStoredQueryOutput, context: context)
        type = Types::PutStoredQueryOutput.new
        type.query_arn = params[:query_arn]
        type
      end
    end

    module QueryInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryInfo, context: context)
        type = Types::QueryInfo.new
        type.select_fields = FieldInfoList.build(params[:select_fields], context: "#{context}[:select_fields]") unless params[:select_fields].nil?
        type
      end
    end

    module RecordingGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecordingGroup, context: context)
        type = Types::RecordingGroup.new
        type.all_supported = params[:all_supported]
        type.include_global_resource_types = params[:include_global_resource_types]
        type.resource_types = ResourceTypeList.build(params[:resource_types], context: "#{context}[:resource_types]") unless params[:resource_types].nil?
        type
      end
    end

    module ReevaluateConfigRuleNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RelatedEventList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Relationship
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Relationship, context: context)
        type = Types::Relationship.new
        type.resource_type = params[:resource_type]
        type.resource_id = params[:resource_id]
        type.resource_name = params[:resource_name]
        type.relationship_name = params[:relationship_name]
        type
      end
    end

    module RelationshipList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Relationship.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RemediationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemediationConfiguration, context: context)
        type = Types::RemediationConfiguration.new
        type.config_rule_name = params[:config_rule_name]
        type.target_type = params[:target_type]
        type.target_id = params[:target_id]
        type.target_version = params[:target_version]
        type.parameters = RemediationParameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.resource_type = params[:resource_type]
        type.automatic = params[:automatic]
        type.execution_controls = ExecutionControls.build(params[:execution_controls], context: "#{context}[:execution_controls]") unless params[:execution_controls].nil?
        type.maximum_automatic_attempts = params[:maximum_automatic_attempts]
        type.retry_attempt_seconds = params[:retry_attempt_seconds]
        type.arn = params[:arn]
        type.created_by_service = params[:created_by_service]
        type
      end
    end

    module RemediationConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RemediationConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RemediationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemediationException, context: context)
        type = Types::RemediationException.new
        type.config_rule_name = params[:config_rule_name]
        type.resource_type = params[:resource_type]
        type.resource_id = params[:resource_id]
        type.message = params[:message]
        type.expiration_time = params[:expiration_time]
        type
      end
    end

    module RemediationExceptionResourceKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemediationExceptionResourceKey, context: context)
        type = Types::RemediationExceptionResourceKey.new
        type.resource_type = params[:resource_type]
        type.resource_id = params[:resource_id]
        type
      end
    end

    module RemediationExceptionResourceKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RemediationExceptionResourceKey.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RemediationExceptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RemediationException.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RemediationExecutionStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemediationExecutionStatus, context: context)
        type = Types::RemediationExecutionStatus.new
        type.resource_key = ResourceKey.build(params[:resource_key], context: "#{context}[:resource_key]") unless params[:resource_key].nil?
        type.state = params[:state]
        type.step_details = RemediationExecutionSteps.build(params[:step_details], context: "#{context}[:step_details]") unless params[:step_details].nil?
        type.invocation_time = params[:invocation_time]
        type.last_updated_time = params[:last_updated_time]
        type
      end
    end

    module RemediationExecutionStatuses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RemediationExecutionStatus.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RemediationExecutionStep
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemediationExecutionStep, context: context)
        type = Types::RemediationExecutionStep.new
        type.name = params[:name]
        type.state = params[:state]
        type.error_message = params[:error_message]
        type.start_time = params[:start_time]
        type.stop_time = params[:stop_time]
        type
      end
    end

    module RemediationExecutionSteps
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RemediationExecutionStep.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RemediationInProgressException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemediationInProgressException, context: context)
        type = Types::RemediationInProgressException.new
        type.message = params[:message]
        type
      end
    end

    module RemediationParameterValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemediationParameterValue, context: context)
        type = Types::RemediationParameterValue.new
        type.resource_value = ResourceValue.build(params[:resource_value], context: "#{context}[:resource_value]") unless params[:resource_value].nil?
        type.static_value = StaticValue.build(params[:static_value], context: "#{context}[:static_value]") unless params[:static_value].nil?
        type
      end
    end

    module RemediationParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = RemediationParameterValue.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ResourceConcurrentModificationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceConcurrentModificationException, context: context)
        type = Types::ResourceConcurrentModificationException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceCount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceCount, context: context)
        type = Types::ResourceCount.new
        type.resource_type = params[:resource_type]
        type.count = params[:count]
        type
      end
    end

    module ResourceCountFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceCountFilters, context: context)
        type = Types::ResourceCountFilters.new
        type.resource_type = params[:resource_type]
        type.account_id = params[:account_id]
        type.region = params[:region]
        type
      end
    end

    module ResourceCounts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceCount.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceFilters, context: context)
        type = Types::ResourceFilters.new
        type.account_id = params[:account_id]
        type.resource_id = params[:resource_id]
        type.resource_name = params[:resource_name]
        type.region = params[:region]
        type
      end
    end

    module ResourceIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceIdentifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceIdentifier, context: context)
        type = Types::ResourceIdentifier.new
        type.resource_type = params[:resource_type]
        type.resource_id = params[:resource_id]
        type.resource_name = params[:resource_name]
        type.resource_deletion_time = params[:resource_deletion_time]
        type
      end
    end

    module ResourceIdentifierList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceIdentifier.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceIdentifiersList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AggregateResourceIdentifier.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInUseException, context: context)
        type = Types::ResourceInUseException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceKey, context: context)
        type = Types::ResourceKey.new
        type.resource_type = params[:resource_type]
        type.resource_id = params[:resource_id]
        type
      end
    end

    module ResourceKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceKey.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceNotDiscoveredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotDiscoveredException, context: context)
        type = Types::ResourceNotDiscoveredException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceTypesScope
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceValue, context: context)
        type = Types::ResourceValue.new
        type.value = params[:value]
        type
      end
    end

    module Results
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RetentionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetentionConfiguration, context: context)
        type = Types::RetentionConfiguration.new
        type.name = params[:name]
        type.retention_period_in_days = params[:retention_period_in_days]
        type
      end
    end

    module RetentionConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RetentionConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RetentionConfigurationNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Scope
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Scope, context: context)
        type = Types::Scope.new
        type.compliance_resource_types = ComplianceResourceTypes.build(params[:compliance_resource_types], context: "#{context}[:compliance_resource_types]") unless params[:compliance_resource_types].nil?
        type.tag_key = params[:tag_key]
        type.tag_value = params[:tag_value]
        type.compliance_resource_id = params[:compliance_resource_id]
        type
      end
    end

    module SelectAggregateResourceConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SelectAggregateResourceConfigInput, context: context)
        type = Types::SelectAggregateResourceConfigInput.new
        type.expression = params[:expression]
        type.configuration_aggregator_name = params[:configuration_aggregator_name]
        type.limit = params[:limit]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module SelectAggregateResourceConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SelectAggregateResourceConfigOutput, context: context)
        type = Types::SelectAggregateResourceConfigOutput.new
        type.results = Results.build(params[:results], context: "#{context}[:results]") unless params[:results].nil?
        type.query_info = QueryInfo.build(params[:query_info], context: "#{context}[:query_info]") unless params[:query_info].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module SelectResourceConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SelectResourceConfigInput, context: context)
        type = Types::SelectResourceConfigInput.new
        type.expression = params[:expression]
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module SelectResourceConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SelectResourceConfigOutput, context: context)
        type = Types::SelectResourceConfigOutput.new
        type.results = Results.build(params[:results], context: "#{context}[:results]") unless params[:results].nil?
        type.query_info = QueryInfo.build(params[:query_info], context: "#{context}[:query_info]") unless params[:query_info].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module Source
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Source, context: context)
        type = Types::Source.new
        type.owner = params[:owner]
        type.source_identifier = params[:source_identifier]
        type.source_details = SourceDetails.build(params[:source_details], context: "#{context}[:source_details]") unless params[:source_details].nil?
        type.custom_policy_details = CustomPolicyDetails.build(params[:custom_policy_details], context: "#{context}[:custom_policy_details]") unless params[:custom_policy_details].nil?
        type
      end
    end

    module SourceDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceDetail, context: context)
        type = Types::SourceDetail.new
        type.event_source = params[:event_source]
        type.message_type = params[:message_type]
        type.maximum_execution_frequency = params[:maximum_execution_frequency]
        type
      end
    end

    module SourceDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SourceDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SsmControls
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SsmControls, context: context)
        type = Types::SsmControls.new
        type.concurrent_execution_rate_percentage = params[:concurrent_execution_rate_percentage]
        type.error_percentage = params[:error_percentage]
        type
      end
    end

    module StartConfigRulesEvaluationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartConfigRulesEvaluationInput, context: context)
        type = Types::StartConfigRulesEvaluationInput.new
        type.config_rule_names = ReevaluateConfigRuleNames.build(params[:config_rule_names], context: "#{context}[:config_rule_names]") unless params[:config_rule_names].nil?
        type
      end
    end

    module StartConfigRulesEvaluationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartConfigRulesEvaluationOutput, context: context)
        type = Types::StartConfigRulesEvaluationOutput.new
        type
      end
    end

    module StartConfigurationRecorderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartConfigurationRecorderInput, context: context)
        type = Types::StartConfigurationRecorderInput.new
        type.configuration_recorder_name = params[:configuration_recorder_name]
        type
      end
    end

    module StartConfigurationRecorderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartConfigurationRecorderOutput, context: context)
        type = Types::StartConfigurationRecorderOutput.new
        type
      end
    end

    module StartRemediationExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartRemediationExecutionInput, context: context)
        type = Types::StartRemediationExecutionInput.new
        type.config_rule_name = params[:config_rule_name]
        type.resource_keys = ResourceKeys.build(params[:resource_keys], context: "#{context}[:resource_keys]") unless params[:resource_keys].nil?
        type
      end
    end

    module StartRemediationExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartRemediationExecutionOutput, context: context)
        type = Types::StartRemediationExecutionOutput.new
        type.failure_message = params[:failure_message]
        type.failed_items = ResourceKeys.build(params[:failed_items], context: "#{context}[:failed_items]") unless params[:failed_items].nil?
        type
      end
    end

    module StaticParameterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StaticValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StaticValue, context: context)
        type = Types::StaticValue.new
        type.values = StaticParameterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module StatusDetailFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StatusDetailFilters, context: context)
        type = Types::StatusDetailFilters.new
        type.account_id = params[:account_id]
        type.member_account_rule_status = params[:member_account_rule_status]
        type
      end
    end

    module StopConfigurationRecorderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopConfigurationRecorderInput, context: context)
        type = Types::StopConfigurationRecorderInput.new
        type.configuration_recorder_name = params[:configuration_recorder_name]
        type
      end
    end

    module StopConfigurationRecorderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopConfigurationRecorderOutput, context: context)
        type = Types::StopConfigurationRecorderOutput.new
        type
      end
    end

    module StoredQuery
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StoredQuery, context: context)
        type = Types::StoredQuery.new
        type.query_id = params[:query_id]
        type.query_arn = params[:query_arn]
        type.query_name = params[:query_name]
        type.description = params[:description]
        type.expression = params[:expression]
        type
      end
    end

    module StoredQueryMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StoredQueryMetadata, context: context)
        type = Types::StoredQueryMetadata.new
        type.query_id = params[:query_id]
        type.query_arn = params[:query_arn]
        type.query_name = params[:query_name]
        type.description = params[:description]
        type
      end
    end

    module StoredQueryMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StoredQueryMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SupplementaryConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
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

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TooManyTagsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTagsException, context: context)
        type = Types::TooManyTagsException.new
        type.message = params[:message]
        type
      end
    end

    module UnprocessedResourceIdentifierList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AggregateResourceIdentifier.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

  end
end
