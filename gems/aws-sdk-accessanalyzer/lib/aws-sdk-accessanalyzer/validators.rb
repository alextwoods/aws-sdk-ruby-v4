# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::AccessAnalyzer
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AccessPreview
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessPreview, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:analyzer_arn], ::String, context: "#{context}[:analyzer_arn]")
        ConfigurationsMap.validate!(input[:configurations], context: "#{context}[:configurations]") unless input[:configurations].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        AccessPreviewStatusReason.validate!(input[:status_reason], context: "#{context}[:status_reason]") unless input[:status_reason].nil?
      end
    end

    class AccessPreviewFinding
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessPreviewFinding, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:existing_finding_id], ::String, context: "#{context}[:existing_finding_id]")
        Hearth::Validator.validate!(input[:existing_finding_status], ::String, context: "#{context}[:existing_finding_status]")
        PrincipalMap.validate!(input[:principal], context: "#{context}[:principal]") unless input[:principal].nil?
        ActionList.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
        ConditionKeyMap.validate!(input[:condition], context: "#{context}[:condition]") unless input[:condition].nil?
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
        Hearth::Validator.validate!(input[:is_public], ::TrueClass, ::FalseClass, context: "#{context}[:is_public]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:change_type], ::String, context: "#{context}[:change_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:resource_owner_account], ::String, context: "#{context}[:resource_owner_account]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        FindingSourceList.validate!(input[:sources], context: "#{context}[:sources]") unless input[:sources].nil?
      end
    end

    class AccessPreviewFindingsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AccessPreviewFinding.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AccessPreviewStatusReason
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessPreviewStatusReason, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class AccessPreviewSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessPreviewSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:analyzer_arn], ::String, context: "#{context}[:analyzer_arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        AccessPreviewStatusReason.validate!(input[:status_reason], context: "#{context}[:status_reason]") unless input[:status_reason].nil?
      end
    end

    class AccessPreviewsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AccessPreviewSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AclGrantee
      def self.validate!(input, context:)
        case input
        when Types::AclGrantee::Id
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::AclGrantee::Uri
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::AclGrantee, got #{input.class}."
        end
      end

      class Id
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class Uri
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end
    end

    class ActionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AnalyzedResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnalyzedResource, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:analyzed_at], ::Time, context: "#{context}[:analyzed_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:is_public], ::TrueClass, ::FalseClass, context: "#{context}[:is_public]")
        ActionList.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        SharedViaList.validate!(input[:shared_via], context: "#{context}[:shared_via]") unless input[:shared_via].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:resource_owner_account], ::String, context: "#{context}[:resource_owner_account]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
      end
    end

    class AnalyzedResourceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnalyzedResourceSummary, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:resource_owner_account], ::String, context: "#{context}[:resource_owner_account]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class AnalyzedResourcesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AnalyzedResourceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AnalyzerSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnalyzerSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_resource_analyzed], ::String, context: "#{context}[:last_resource_analyzed]")
        Hearth::Validator.validate!(input[:last_resource_analyzed_at], ::Time, context: "#{context}[:last_resource_analyzed_at]")
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        StatusReason.validate!(input[:status_reason], context: "#{context}[:status_reason]") unless input[:status_reason].nil?
      end
    end

    class AnalyzersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AnalyzerSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ApplyArchiveRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplyArchiveRuleInput, context: context)
        Hearth::Validator.validate!(input[:analyzer_arn], ::String, context: "#{context}[:analyzer_arn]")
        Hearth::Validator.validate!(input[:rule_name], ::String, context: "#{context}[:rule_name]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class ApplyArchiveRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplyArchiveRuleOutput, context: context)
      end
    end

    class ArchiveRuleSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ArchiveRuleSummary, context: context)
        Hearth::Validator.validate!(input[:rule_name], ::String, context: "#{context}[:rule_name]")
        FilterCriteriaMap.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class ArchiveRulesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ArchiveRuleSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CancelPolicyGenerationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelPolicyGenerationInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class CancelPolicyGenerationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelPolicyGenerationOutput, context: context)
      end
    end

    class CloudTrailDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudTrailDetails, context: context)
        TrailList.validate!(input[:trails], context: "#{context}[:trails]") unless input[:trails].nil?
        Hearth::Validator.validate!(input[:access_role], ::String, context: "#{context}[:access_role]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class CloudTrailProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudTrailProperties, context: context)
        TrailPropertiesList.validate!(input[:trail_properties], context: "#{context}[:trail_properties]") unless input[:trail_properties].nil?
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class ConditionKeyMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Configuration
      def self.validate!(input, context:)
        case input
        when Types::Configuration::IamRole
          IamRoleConfiguration.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::Configuration::KmsKey
          KmsKeyConfiguration.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::Configuration::SecretsManagerSecret
          SecretsManagerSecretConfiguration.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::Configuration::S3Bucket
          S3BucketConfiguration.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::Configuration::SqsQueue
          SqsQueueConfiguration.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::Configuration, got #{input.class}."
        end
      end

      class IamRole
        def self.validate!(input, context:)
          Validators::IamRoleConfiguration.validate!(input, context: context) unless input.nil?
        end
      end

      class KmsKey
        def self.validate!(input, context:)
          Validators::KmsKeyConfiguration.validate!(input, context: context) unless input.nil?
        end
      end

      class SecretsManagerSecret
        def self.validate!(input, context:)
          Validators::SecretsManagerSecretConfiguration.validate!(input, context: context) unless input.nil?
        end
      end

      class S3Bucket
        def self.validate!(input, context:)
          Validators::S3BucketConfiguration.validate!(input, context: context) unless input.nil?
        end
      end

      class SqsQueue
        def self.validate!(input, context:)
          Validators::SqsQueueConfiguration.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class ConfigurationsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Configuration.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class CreateAccessPreviewInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAccessPreviewInput, context: context)
        Hearth::Validator.validate!(input[:analyzer_arn], ::String, context: "#{context}[:analyzer_arn]")
        ConfigurationsMap.validate!(input[:configurations], context: "#{context}[:configurations]") unless input[:configurations].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateAccessPreviewOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAccessPreviewOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class CreateAnalyzerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAnalyzerInput, context: context)
        Hearth::Validator.validate!(input[:analyzer_name], ::String, context: "#{context}[:analyzer_name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        InlineArchiveRulesList.validate!(input[:archive_rules], context: "#{context}[:archive_rules]") unless input[:archive_rules].nil?
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateAnalyzerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAnalyzerOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class CreateArchiveRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateArchiveRuleInput, context: context)
        Hearth::Validator.validate!(input[:analyzer_name], ::String, context: "#{context}[:analyzer_name]")
        Hearth::Validator.validate!(input[:rule_name], ::String, context: "#{context}[:rule_name]")
        FilterCriteriaMap.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateArchiveRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateArchiveRuleOutput, context: context)
      end
    end

    class Criterion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Criterion, context: context)
        ValueList.validate!(input[:eq], context: "#{context}[:eq]") unless input[:eq].nil?
        ValueList.validate!(input[:neq], context: "#{context}[:neq]") unless input[:neq].nil?
        ValueList.validate!(input[:contains], context: "#{context}[:contains]") unless input[:contains].nil?
        Hearth::Validator.validate!(input[:exists], ::TrueClass, ::FalseClass, context: "#{context}[:exists]")
      end
    end

    class DeleteAnalyzerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAnalyzerInput, context: context)
        Hearth::Validator.validate!(input[:analyzer_name], ::String, context: "#{context}[:analyzer_name]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class DeleteAnalyzerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAnalyzerOutput, context: context)
      end
    end

    class DeleteArchiveRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteArchiveRuleInput, context: context)
        Hearth::Validator.validate!(input[:analyzer_name], ::String, context: "#{context}[:analyzer_name]")
        Hearth::Validator.validate!(input[:rule_name], ::String, context: "#{context}[:rule_name]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class DeleteArchiveRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteArchiveRuleOutput, context: context)
      end
    end

    class FilterCriteriaMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Criterion.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class Finding
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Finding, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        PrincipalMap.validate!(input[:principal], context: "#{context}[:principal]") unless input[:principal].nil?
        ActionList.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
        Hearth::Validator.validate!(input[:is_public], ::TrueClass, ::FalseClass, context: "#{context}[:is_public]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        ConditionKeyMap.validate!(input[:condition], context: "#{context}[:condition]") unless input[:condition].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:analyzed_at], ::Time, context: "#{context}[:analyzed_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:resource_owner_account], ::String, context: "#{context}[:resource_owner_account]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        FindingSourceList.validate!(input[:sources], context: "#{context}[:sources]") unless input[:sources].nil?
      end
    end

    class FindingIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FindingSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FindingSource, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        FindingSourceDetail.validate!(input[:detail], context: "#{context}[:detail]") unless input[:detail].nil?
      end
    end

    class FindingSourceDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FindingSourceDetail, context: context)
        Hearth::Validator.validate!(input[:access_point_arn], ::String, context: "#{context}[:access_point_arn]")
      end
    end

    class FindingSourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FindingSource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FindingSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FindingSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        PrincipalMap.validate!(input[:principal], context: "#{context}[:principal]") unless input[:principal].nil?
        ActionList.validate!(input[:action], context: "#{context}[:action]") unless input[:action].nil?
        Hearth::Validator.validate!(input[:resource], ::String, context: "#{context}[:resource]")
        Hearth::Validator.validate!(input[:is_public], ::TrueClass, ::FalseClass, context: "#{context}[:is_public]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        ConditionKeyMap.validate!(input[:condition], context: "#{context}[:condition]") unless input[:condition].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:analyzed_at], ::Time, context: "#{context}[:analyzed_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:resource_owner_account], ::String, context: "#{context}[:resource_owner_account]")
        Hearth::Validator.validate!(input[:error], ::String, context: "#{context}[:error]")
        FindingSourceList.validate!(input[:sources], context: "#{context}[:sources]") unless input[:sources].nil?
      end
    end

    class FindingsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FindingSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GeneratedPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GeneratedPolicy, context: context)
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class GeneratedPolicyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GeneratedPolicy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GeneratedPolicyProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GeneratedPolicyProperties, context: context)
        Hearth::Validator.validate!(input[:is_complete], ::TrueClass, ::FalseClass, context: "#{context}[:is_complete]")
        Hearth::Validator.validate!(input[:principal_arn], ::String, context: "#{context}[:principal_arn]")
        CloudTrailProperties.validate!(input[:cloud_trail_properties], context: "#{context}[:cloud_trail_properties]") unless input[:cloud_trail_properties].nil?
      end
    end

    class GeneratedPolicyResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GeneratedPolicyResult, context: context)
        GeneratedPolicyProperties.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
        GeneratedPolicyList.validate!(input[:generated_policies], context: "#{context}[:generated_policies]") unless input[:generated_policies].nil?
      end
    end

    class GetAccessPreviewInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccessPreviewInput, context: context)
        Hearth::Validator.validate!(input[:access_preview_id], ::String, context: "#{context}[:access_preview_id]")
        Hearth::Validator.validate!(input[:analyzer_arn], ::String, context: "#{context}[:analyzer_arn]")
      end
    end

    class GetAccessPreviewOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccessPreviewOutput, context: context)
        AccessPreview.validate!(input[:access_preview], context: "#{context}[:access_preview]") unless input[:access_preview].nil?
      end
    end

    class GetAnalyzedResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAnalyzedResourceInput, context: context)
        Hearth::Validator.validate!(input[:analyzer_arn], ::String, context: "#{context}[:analyzer_arn]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class GetAnalyzedResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAnalyzedResourceOutput, context: context)
        AnalyzedResource.validate!(input[:resource], context: "#{context}[:resource]") unless input[:resource].nil?
      end
    end

    class GetAnalyzerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAnalyzerInput, context: context)
        Hearth::Validator.validate!(input[:analyzer_name], ::String, context: "#{context}[:analyzer_name]")
      end
    end

    class GetAnalyzerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAnalyzerOutput, context: context)
        AnalyzerSummary.validate!(input[:analyzer], context: "#{context}[:analyzer]") unless input[:analyzer].nil?
      end
    end

    class GetArchiveRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetArchiveRuleInput, context: context)
        Hearth::Validator.validate!(input[:analyzer_name], ::String, context: "#{context}[:analyzer_name]")
        Hearth::Validator.validate!(input[:rule_name], ::String, context: "#{context}[:rule_name]")
      end
    end

    class GetArchiveRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetArchiveRuleOutput, context: context)
        ArchiveRuleSummary.validate!(input[:archive_rule], context: "#{context}[:archive_rule]") unless input[:archive_rule].nil?
      end
    end

    class GetFindingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFindingInput, context: context)
        Hearth::Validator.validate!(input[:analyzer_arn], ::String, context: "#{context}[:analyzer_arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetFindingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFindingOutput, context: context)
        Finding.validate!(input[:finding], context: "#{context}[:finding]") unless input[:finding].nil?
      end
    end

    class GetGeneratedPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGeneratedPolicyInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:include_resource_placeholders], ::TrueClass, ::FalseClass, context: "#{context}[:include_resource_placeholders]")
        Hearth::Validator.validate!(input[:include_service_level_template], ::TrueClass, ::FalseClass, context: "#{context}[:include_service_level_template]")
      end
    end

    class GetGeneratedPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGeneratedPolicyOutput, context: context)
        JobDetails.validate!(input[:job_details], context: "#{context}[:job_details]") unless input[:job_details].nil?
        GeneratedPolicyResult.validate!(input[:generated_policy_result], context: "#{context}[:generated_policy_result]") unless input[:generated_policy_result].nil?
      end
    end

    class IamRoleConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IamRoleConfiguration, context: context)
        Hearth::Validator.validate!(input[:trust_policy], ::String, context: "#{context}[:trust_policy]")
      end
    end

    class InlineArchiveRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InlineArchiveRule, context: context)
        Hearth::Validator.validate!(input[:rule_name], ::String, context: "#{context}[:rule_name]")
        FilterCriteriaMap.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
      end
    end

    class InlineArchiveRulesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InlineArchiveRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
      end
    end

    class InternetConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternetConfiguration, context: context)
      end
    end

    class JobDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobDetails, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:started_on], ::Time, context: "#{context}[:started_on]")
        Hearth::Validator.validate!(input[:completed_on], ::Time, context: "#{context}[:completed_on]")
        JobError.validate!(input[:job_error], context: "#{context}[:job_error]") unless input[:job_error].nil?
      end
    end

    class JobError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobError, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KmsConstraintsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class KmsGrantConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KmsGrantConfiguration, context: context)
        KmsGrantOperationsList.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
        Hearth::Validator.validate!(input[:grantee_principal], ::String, context: "#{context}[:grantee_principal]")
        Hearth::Validator.validate!(input[:retiring_principal], ::String, context: "#{context}[:retiring_principal]")
        KmsGrantConstraints.validate!(input[:constraints], context: "#{context}[:constraints]") unless input[:constraints].nil?
        Hearth::Validator.validate!(input[:issuing_account], ::String, context: "#{context}[:issuing_account]")
      end
    end

    class KmsGrantConfigurationsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          KmsGrantConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class KmsGrantConstraints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KmsGrantConstraints, context: context)
        KmsConstraintsMap.validate!(input[:encryption_context_equals], context: "#{context}[:encryption_context_equals]") unless input[:encryption_context_equals].nil?
        KmsConstraintsMap.validate!(input[:encryption_context_subset], context: "#{context}[:encryption_context_subset]") unless input[:encryption_context_subset].nil?
      end
    end

    class KmsGrantOperationsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class KmsKeyConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KmsKeyConfiguration, context: context)
        KmsKeyPoliciesMap.validate!(input[:key_policies], context: "#{context}[:key_policies]") unless input[:key_policies].nil?
        KmsGrantConfigurationsList.validate!(input[:grants], context: "#{context}[:grants]") unless input[:grants].nil?
      end
    end

    class KmsKeyPoliciesMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ListAccessPreviewFindingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccessPreviewFindingsInput, context: context)
        Hearth::Validator.validate!(input[:access_preview_id], ::String, context: "#{context}[:access_preview_id]")
        Hearth::Validator.validate!(input[:analyzer_arn], ::String, context: "#{context}[:analyzer_arn]")
        FilterCriteriaMap.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAccessPreviewFindingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccessPreviewFindingsOutput, context: context)
        AccessPreviewFindingsList.validate!(input[:findings], context: "#{context}[:findings]") unless input[:findings].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAccessPreviewsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccessPreviewsInput, context: context)
        Hearth::Validator.validate!(input[:analyzer_arn], ::String, context: "#{context}[:analyzer_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAccessPreviewsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccessPreviewsOutput, context: context)
        AccessPreviewsList.validate!(input[:access_previews], context: "#{context}[:access_previews]") unless input[:access_previews].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAnalyzedResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAnalyzedResourcesInput, context: context)
        Hearth::Validator.validate!(input[:analyzer_arn], ::String, context: "#{context}[:analyzer_arn]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAnalyzedResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAnalyzedResourcesOutput, context: context)
        AnalyzedResourcesList.validate!(input[:analyzed_resources], context: "#{context}[:analyzed_resources]") unless input[:analyzed_resources].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAnalyzersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAnalyzersInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class ListAnalyzersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAnalyzersOutput, context: context)
        AnalyzersList.validate!(input[:analyzers], context: "#{context}[:analyzers]") unless input[:analyzers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListArchiveRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListArchiveRulesInput, context: context)
        Hearth::Validator.validate!(input[:analyzer_name], ::String, context: "#{context}[:analyzer_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListArchiveRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListArchiveRulesOutput, context: context)
        ArchiveRulesList.validate!(input[:archive_rules], context: "#{context}[:archive_rules]") unless input[:archive_rules].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFindingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFindingsInput, context: context)
        Hearth::Validator.validate!(input[:analyzer_arn], ::String, context: "#{context}[:analyzer_arn]")
        FilterCriteriaMap.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        SortCriteria.validate!(input[:sort], context: "#{context}[:sort]") unless input[:sort].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListFindingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFindingsOutput, context: context)
        FindingsList.validate!(input[:findings], context: "#{context}[:findings]") unless input[:findings].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPolicyGenerationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPolicyGenerationsInput, context: context)
        Hearth::Validator.validate!(input[:principal_arn], ::String, context: "#{context}[:principal_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPolicyGenerationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPolicyGenerationsOutput, context: context)
        PolicyGenerationList.validate!(input[:policy_generations], context: "#{context}[:policy_generations]") unless input[:policy_generations].nil?
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
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class Location
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Location, context: context)
        PathElementList.validate!(input[:path], context: "#{context}[:path]") unless input[:path].nil?
        Span.validate!(input[:span], context: "#{context}[:span]") unless input[:span].nil?
      end
    end

    class LocationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Location.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NetworkOriginConfiguration
      def self.validate!(input, context:)
        case input
        when Types::NetworkOriginConfiguration::VpcConfiguration
          VpcConfiguration.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::NetworkOriginConfiguration::InternetConfiguration
          InternetConfiguration.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::NetworkOriginConfiguration, got #{input.class}."
        end
      end

      class VpcConfiguration
        def self.validate!(input, context:)
          Validators::VpcConfiguration.validate!(input, context: context) unless input.nil?
        end
      end

      class InternetConfiguration
        def self.validate!(input, context:)
          Validators::InternetConfiguration.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class PathElement
      def self.validate!(input, context:)
        case input
        when Types::PathElement::Index
          Hearth::Validator.validate!(input.__getobj__, ::Integer, context: context)
        when Types::PathElement::Key
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::PathElement::Substring
          Substring.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::PathElement::Value
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::PathElement, got #{input.class}."
        end
      end

      class Index
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::Integer, context: context)
        end
      end

      class Key
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class Substring
        def self.validate!(input, context:)
          Validators::Substring.validate!(input, context: context) unless input.nil?
        end
      end

      class Value
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end
    end

    class PathElementList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PathElement.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PolicyGeneration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyGeneration, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:principal_arn], ::String, context: "#{context}[:principal_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:started_on], ::Time, context: "#{context}[:started_on]")
        Hearth::Validator.validate!(input[:completed_on], ::Time, context: "#{context}[:completed_on]")
      end
    end

    class PolicyGenerationDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyGenerationDetails, context: context)
        Hearth::Validator.validate!(input[:principal_arn], ::String, context: "#{context}[:principal_arn]")
      end
    end

    class PolicyGenerationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PolicyGeneration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Position
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Position, context: context)
        Hearth::Validator.validate!(input[:line], ::Integer, context: "#{context}[:line]")
        Hearth::Validator.validate!(input[:column], ::Integer, context: "#{context}[:column]")
        Hearth::Validator.validate!(input[:offset], ::Integer, context: "#{context}[:offset]")
      end
    end

    class PrincipalMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class RegionList
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
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class S3AccessPointConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3AccessPointConfiguration, context: context)
        Hearth::Validator.validate!(input[:access_point_policy], ::String, context: "#{context}[:access_point_policy]")
        S3PublicAccessBlockConfiguration.validate!(input[:public_access_block], context: "#{context}[:public_access_block]") unless input[:public_access_block].nil?
        NetworkOriginConfiguration.validate!(input[:network_origin], context: "#{context}[:network_origin]") unless input[:network_origin].nil?
      end
    end

    class S3AccessPointConfigurationsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          S3AccessPointConfiguration.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class S3BucketAclGrantConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3BucketAclGrantConfiguration, context: context)
        Hearth::Validator.validate!(input[:permission], ::String, context: "#{context}[:permission]")
        AclGrantee.validate!(input[:grantee], context: "#{context}[:grantee]") unless input[:grantee].nil?
      end
    end

    class S3BucketAclGrantConfigurationsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          S3BucketAclGrantConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class S3BucketConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3BucketConfiguration, context: context)
        Hearth::Validator.validate!(input[:bucket_policy], ::String, context: "#{context}[:bucket_policy]")
        S3BucketAclGrantConfigurationsList.validate!(input[:bucket_acl_grants], context: "#{context}[:bucket_acl_grants]") unless input[:bucket_acl_grants].nil?
        S3PublicAccessBlockConfiguration.validate!(input[:bucket_public_access_block], context: "#{context}[:bucket_public_access_block]") unless input[:bucket_public_access_block].nil?
        S3AccessPointConfigurationsMap.validate!(input[:access_points], context: "#{context}[:access_points]") unless input[:access_points].nil?
      end
    end

    class S3PublicAccessBlockConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3PublicAccessBlockConfiguration, context: context)
        Hearth::Validator.validate!(input[:ignore_public_acls], ::TrueClass, ::FalseClass, context: "#{context}[:ignore_public_acls]")
        Hearth::Validator.validate!(input[:restrict_public_buckets], ::TrueClass, ::FalseClass, context: "#{context}[:restrict_public_buckets]")
      end
    end

    class SecretsManagerSecretConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SecretsManagerSecretConfiguration, context: context)
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:secret_policy], ::String, context: "#{context}[:secret_policy]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class SharedViaList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SortCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SortCriteria, context: context)
        Hearth::Validator.validate!(input[:attribute_name], ::String, context: "#{context}[:attribute_name]")
        Hearth::Validator.validate!(input[:order_by], ::String, context: "#{context}[:order_by]")
      end
    end

    class Span
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Span, context: context)
        Position.validate!(input[:start], context: "#{context}[:start]") unless input[:start].nil?
        Position.validate!(input[:end], context: "#{context}[:end]") unless input[:end].nil?
      end
    end

    class SqsQueueConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SqsQueueConfiguration, context: context)
        Hearth::Validator.validate!(input[:queue_policy], ::String, context: "#{context}[:queue_policy]")
      end
    end

    class StartPolicyGenerationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartPolicyGenerationInput, context: context)
        PolicyGenerationDetails.validate!(input[:policy_generation_details], context: "#{context}[:policy_generation_details]") unless input[:policy_generation_details].nil?
        CloudTrailDetails.validate!(input[:cloud_trail_details], context: "#{context}[:cloud_trail_details]") unless input[:cloud_trail_details].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class StartPolicyGenerationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartPolicyGenerationOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class StartResourceScanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartResourceScanInput, context: context)
        Hearth::Validator.validate!(input[:analyzer_arn], ::String, context: "#{context}[:analyzer_arn]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class StartResourceScanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartResourceScanOutput, context: context)
      end
    end

    class StatusReason
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StatusReason, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class Substring
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Substring, context: context)
        Hearth::Validator.validate!(input[:start], ::Integer, context: "#{context}[:start]")
        Hearth::Validator.validate!(input[:length], ::Integer, context: "#{context}[:length]")
      end
    end

    class TagKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TagsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
      end
    end

    class Trail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Trail, context: context)
        Hearth::Validator.validate!(input[:cloud_trail_arn], ::String, context: "#{context}[:cloud_trail_arn]")
        RegionList.validate!(input[:regions], context: "#{context}[:regions]") unless input[:regions].nil?
        Hearth::Validator.validate!(input[:all_regions], ::TrueClass, ::FalseClass, context: "#{context}[:all_regions]")
      end
    end

    class TrailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Trail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TrailProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrailProperties, context: context)
        Hearth::Validator.validate!(input[:cloud_trail_arn], ::String, context: "#{context}[:cloud_trail_arn]")
        RegionList.validate!(input[:regions], context: "#{context}[:regions]") unless input[:regions].nil?
        Hearth::Validator.validate!(input[:all_regions], ::TrueClass, ::FalseClass, context: "#{context}[:all_regions]")
      end
    end

    class TrailPropertiesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TrailProperties.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeys.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateArchiveRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateArchiveRuleInput, context: context)
        Hearth::Validator.validate!(input[:analyzer_name], ::String, context: "#{context}[:analyzer_name]")
        Hearth::Validator.validate!(input[:rule_name], ::String, context: "#{context}[:rule_name]")
        FilterCriteriaMap.validate!(input[:filter], context: "#{context}[:filter]") unless input[:filter].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class UpdateArchiveRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateArchiveRuleOutput, context: context)
      end
    end

    class UpdateFindingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFindingsInput, context: context)
        Hearth::Validator.validate!(input[:analyzer_arn], ::String, context: "#{context}[:analyzer_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        FindingIdList.validate!(input[:ids], context: "#{context}[:ids]") unless input[:ids].nil?
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class UpdateFindingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFindingsOutput, context: context)
      end
    end

    class ValidatePolicyFinding
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidatePolicyFinding, context: context)
        Hearth::Validator.validate!(input[:finding_details], ::String, context: "#{context}[:finding_details]")
        Hearth::Validator.validate!(input[:finding_type], ::String, context: "#{context}[:finding_type]")
        Hearth::Validator.validate!(input[:issue_code], ::String, context: "#{context}[:issue_code]")
        Hearth::Validator.validate!(input[:learn_more_link], ::String, context: "#{context}[:learn_more_link]")
        LocationList.validate!(input[:locations], context: "#{context}[:locations]") unless input[:locations].nil?
      end
    end

    class ValidatePolicyFindingList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ValidatePolicyFinding.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ValidatePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidatePolicyInput, context: context)
        Hearth::Validator.validate!(input[:locale], ::String, context: "#{context}[:locale]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:policy_document], ::String, context: "#{context}[:policy_document]")
        Hearth::Validator.validate!(input[:policy_type], ::String, context: "#{context}[:policy_type]")
        Hearth::Validator.validate!(input[:validate_policy_resource_type], ::String, context: "#{context}[:validate_policy_resource_type]")
      end
    end

    class ValidatePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidatePolicyOutput, context: context)
        ValidatePolicyFindingList.validate!(input[:findings], context: "#{context}[:findings]") unless input[:findings].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        ValidationExceptionFieldList.validate!(input[:field_list], context: "#{context}[:field_list]") unless input[:field_list].nil?
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
          ValidationExceptionField.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class VpcConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcConfiguration, context: context)
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
      end
    end

  end
end
