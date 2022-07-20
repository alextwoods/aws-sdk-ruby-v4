# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::AccessAnalyzer
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AccessPreview
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessPreview, context: context)
        type = Types::AccessPreview.new
        type.id = params[:id]
        type.analyzer_arn = params[:analyzer_arn]
        type.configurations = ConfigurationsMap.build(params[:configurations], context: "#{context}[:configurations]") unless params[:configurations].nil?
        type.created_at = params[:created_at]
        type.status = params[:status]
        type.status_reason = AccessPreviewStatusReason.build(params[:status_reason], context: "#{context}[:status_reason]") unless params[:status_reason].nil?
        type
      end
    end

    module AccessPreviewFinding
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessPreviewFinding, context: context)
        type = Types::AccessPreviewFinding.new
        type.id = params[:id]
        type.existing_finding_id = params[:existing_finding_id]
        type.existing_finding_status = params[:existing_finding_status]
        type.principal = PrincipalMap.build(params[:principal], context: "#{context}[:principal]") unless params[:principal].nil?
        type.action = ActionList.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type.condition = ConditionKeyMap.build(params[:condition], context: "#{context}[:condition]") unless params[:condition].nil?
        type.resource = params[:resource]
        type.is_public = params[:is_public]
        type.resource_type = params[:resource_type]
        type.created_at = params[:created_at]
        type.change_type = params[:change_type]
        type.status = params[:status]
        type.resource_owner_account = params[:resource_owner_account]
        type.error = params[:error]
        type.sources = FindingSourceList.build(params[:sources], context: "#{context}[:sources]") unless params[:sources].nil?
        type
      end
    end

    module AccessPreviewFindingsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccessPreviewFinding.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AccessPreviewStatusReason
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessPreviewStatusReason, context: context)
        type = Types::AccessPreviewStatusReason.new
        type.code = params[:code]
        type
      end
    end

    module AccessPreviewSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessPreviewSummary, context: context)
        type = Types::AccessPreviewSummary.new
        type.id = params[:id]
        type.analyzer_arn = params[:analyzer_arn]
        type.created_at = params[:created_at]
        type.status = params[:status]
        type.status_reason = AccessPreviewStatusReason.build(params[:status_reason], context: "#{context}[:status_reason]") unless params[:status_reason].nil?
        type
      end
    end

    module AccessPreviewsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccessPreviewSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AclGrantee
      def self.build(params, context: '')
        return params if params.is_a?(Types::AclGrantee)
        Hearth::Validator.validate!(params, ::Hash, Types::AclGrantee, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :id
          Types::AclGrantee::Id.new(
            params[:id]
          )
        when :uri
          Types::AclGrantee::Uri.new(
            params[:uri]
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :id, :uri set"
        end
      end
    end

    module ActionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AnalyzedResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnalyzedResource, context: context)
        type = Types::AnalyzedResource.new
        type.resource_arn = params[:resource_arn]
        type.resource_type = params[:resource_type]
        type.created_at = params[:created_at]
        type.analyzed_at = params[:analyzed_at]
        type.updated_at = params[:updated_at]
        type.is_public = params[:is_public]
        type.actions = ActionList.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.shared_via = SharedViaList.build(params[:shared_via], context: "#{context}[:shared_via]") unless params[:shared_via].nil?
        type.status = params[:status]
        type.resource_owner_account = params[:resource_owner_account]
        type.error = params[:error]
        type
      end
    end

    module AnalyzedResourceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnalyzedResourceSummary, context: context)
        type = Types::AnalyzedResourceSummary.new
        type.resource_arn = params[:resource_arn]
        type.resource_owner_account = params[:resource_owner_account]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module AnalyzedResourcesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AnalyzedResourceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AnalyzerSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnalyzerSummary, context: context)
        type = Types::AnalyzerSummary.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.type = params[:type]
        type.created_at = params[:created_at]
        type.last_resource_analyzed = params[:last_resource_analyzed]
        type.last_resource_analyzed_at = params[:last_resource_analyzed_at]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.status = params[:status]
        type.status_reason = StatusReason.build(params[:status_reason], context: "#{context}[:status_reason]") unless params[:status_reason].nil?
        type
      end
    end

    module AnalyzersList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AnalyzerSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ApplyArchiveRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplyArchiveRuleInput, context: context)
        type = Types::ApplyArchiveRuleInput.new
        type.analyzer_arn = params[:analyzer_arn]
        type.rule_name = params[:rule_name]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module ApplyArchiveRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplyArchiveRuleOutput, context: context)
        type = Types::ApplyArchiveRuleOutput.new
        type
      end
    end

    module ArchiveRuleSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ArchiveRuleSummary, context: context)
        type = Types::ArchiveRuleSummary.new
        type.rule_name = params[:rule_name]
        type.filter = FilterCriteriaMap.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module ArchiveRulesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ArchiveRuleSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CancelPolicyGenerationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelPolicyGenerationInput, context: context)
        type = Types::CancelPolicyGenerationInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module CancelPolicyGenerationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelPolicyGenerationOutput, context: context)
        type = Types::CancelPolicyGenerationOutput.new
        type
      end
    end

    module CloudTrailDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudTrailDetails, context: context)
        type = Types::CloudTrailDetails.new
        type.trails = TrailList.build(params[:trails], context: "#{context}[:trails]") unless params[:trails].nil?
        type.access_role = params[:access_role]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module CloudTrailProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudTrailProperties, context: context)
        type = Types::CloudTrailProperties.new
        type.trail_properties = TrailPropertiesList.build(params[:trail_properties], context: "#{context}[:trail_properties]") unless params[:trail_properties].nil?
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module ConditionKeyMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Configuration
      def self.build(params, context: '')
        return params if params.is_a?(Types::Configuration)
        Hearth::Validator.validate!(params, ::Hash, Types::Configuration, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :iam_role
          Types::Configuration::IamRole.new(
            (IamRoleConfiguration.build(params[:iam_role], context: "#{context}[:iam_role]") unless params[:iam_role].nil?)
          )
        when :kms_key
          Types::Configuration::KmsKey.new(
            (KmsKeyConfiguration.build(params[:kms_key], context: "#{context}[:kms_key]") unless params[:kms_key].nil?)
          )
        when :secrets_manager_secret
          Types::Configuration::SecretsManagerSecret.new(
            (SecretsManagerSecretConfiguration.build(params[:secrets_manager_secret], context: "#{context}[:secrets_manager_secret]") unless params[:secrets_manager_secret].nil?)
          )
        when :s3_bucket
          Types::Configuration::S3Bucket.new(
            (S3BucketConfiguration.build(params[:s3_bucket], context: "#{context}[:s3_bucket]") unless params[:s3_bucket].nil?)
          )
        when :sqs_queue
          Types::Configuration::SqsQueue.new(
            (SqsQueueConfiguration.build(params[:sqs_queue], context: "#{context}[:sqs_queue]") unless params[:sqs_queue].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :iam_role, :kms_key, :secrets_manager_secret, :s3_bucket, :sqs_queue set"
        end
      end
    end

    module ConfigurationsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = Configuration.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module CreateAccessPreviewInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAccessPreviewInput, context: context)
        type = Types::CreateAccessPreviewInput.new
        type.analyzer_arn = params[:analyzer_arn]
        type.configurations = ConfigurationsMap.build(params[:configurations], context: "#{context}[:configurations]") unless params[:configurations].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreateAccessPreviewOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAccessPreviewOutput, context: context)
        type = Types::CreateAccessPreviewOutput.new
        type.id = params[:id]
        type
      end
    end

    module CreateAnalyzerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAnalyzerInput, context: context)
        type = Types::CreateAnalyzerInput.new
        type.analyzer_name = params[:analyzer_name]
        type.type = params[:type]
        type.archive_rules = InlineArchiveRulesList.build(params[:archive_rules], context: "#{context}[:archive_rules]") unless params[:archive_rules].nil?
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreateAnalyzerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAnalyzerOutput, context: context)
        type = Types::CreateAnalyzerOutput.new
        type.arn = params[:arn]
        type
      end
    end

    module CreateArchiveRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateArchiveRuleInput, context: context)
        type = Types::CreateArchiveRuleInput.new
        type.analyzer_name = params[:analyzer_name]
        type.rule_name = params[:rule_name]
        type.filter = FilterCriteriaMap.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreateArchiveRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateArchiveRuleOutput, context: context)
        type = Types::CreateArchiveRuleOutput.new
        type
      end
    end

    module Criterion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Criterion, context: context)
        type = Types::Criterion.new
        type.eq = ValueList.build(params[:eq], context: "#{context}[:eq]") unless params[:eq].nil?
        type.neq = ValueList.build(params[:neq], context: "#{context}[:neq]") unless params[:neq].nil?
        type.contains = ValueList.build(params[:contains], context: "#{context}[:contains]") unless params[:contains].nil?
        type.exists = params[:exists]
        type
      end
    end

    module DeleteAnalyzerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAnalyzerInput, context: context)
        type = Types::DeleteAnalyzerInput.new
        type.analyzer_name = params[:analyzer_name]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module DeleteAnalyzerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAnalyzerOutput, context: context)
        type = Types::DeleteAnalyzerOutput.new
        type
      end
    end

    module DeleteArchiveRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteArchiveRuleInput, context: context)
        type = Types::DeleteArchiveRuleInput.new
        type.analyzer_name = params[:analyzer_name]
        type.rule_name = params[:rule_name]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module DeleteArchiveRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteArchiveRuleOutput, context: context)
        type = Types::DeleteArchiveRuleOutput.new
        type
      end
    end

    module FilterCriteriaMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = Criterion.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module Finding
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Finding, context: context)
        type = Types::Finding.new
        type.id = params[:id]
        type.principal = PrincipalMap.build(params[:principal], context: "#{context}[:principal]") unless params[:principal].nil?
        type.action = ActionList.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type.resource = params[:resource]
        type.is_public = params[:is_public]
        type.resource_type = params[:resource_type]
        type.condition = ConditionKeyMap.build(params[:condition], context: "#{context}[:condition]") unless params[:condition].nil?
        type.created_at = params[:created_at]
        type.analyzed_at = params[:analyzed_at]
        type.updated_at = params[:updated_at]
        type.status = params[:status]
        type.resource_owner_account = params[:resource_owner_account]
        type.error = params[:error]
        type.sources = FindingSourceList.build(params[:sources], context: "#{context}[:sources]") unless params[:sources].nil?
        type
      end
    end

    module FindingIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FindingSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FindingSource, context: context)
        type = Types::FindingSource.new
        type.type = params[:type]
        type.detail = FindingSourceDetail.build(params[:detail], context: "#{context}[:detail]") unless params[:detail].nil?
        type
      end
    end

    module FindingSourceDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FindingSourceDetail, context: context)
        type = Types::FindingSourceDetail.new
        type.access_point_arn = params[:access_point_arn]
        type
      end
    end

    module FindingSourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FindingSource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FindingSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FindingSummary, context: context)
        type = Types::FindingSummary.new
        type.id = params[:id]
        type.principal = PrincipalMap.build(params[:principal], context: "#{context}[:principal]") unless params[:principal].nil?
        type.action = ActionList.build(params[:action], context: "#{context}[:action]") unless params[:action].nil?
        type.resource = params[:resource]
        type.is_public = params[:is_public]
        type.resource_type = params[:resource_type]
        type.condition = ConditionKeyMap.build(params[:condition], context: "#{context}[:condition]") unless params[:condition].nil?
        type.created_at = params[:created_at]
        type.analyzed_at = params[:analyzed_at]
        type.updated_at = params[:updated_at]
        type.status = params[:status]
        type.resource_owner_account = params[:resource_owner_account]
        type.error = params[:error]
        type.sources = FindingSourceList.build(params[:sources], context: "#{context}[:sources]") unless params[:sources].nil?
        type
      end
    end

    module FindingsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FindingSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GeneratedPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GeneratedPolicy, context: context)
        type = Types::GeneratedPolicy.new
        type.policy = params[:policy]
        type
      end
    end

    module GeneratedPolicyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GeneratedPolicy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GeneratedPolicyProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GeneratedPolicyProperties, context: context)
        type = Types::GeneratedPolicyProperties.new
        type.is_complete = params[:is_complete]
        type.principal_arn = params[:principal_arn]
        type.cloud_trail_properties = CloudTrailProperties.build(params[:cloud_trail_properties], context: "#{context}[:cloud_trail_properties]") unless params[:cloud_trail_properties].nil?
        type
      end
    end

    module GeneratedPolicyResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GeneratedPolicyResult, context: context)
        type = Types::GeneratedPolicyResult.new
        type.properties = GeneratedPolicyProperties.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type.generated_policies = GeneratedPolicyList.build(params[:generated_policies], context: "#{context}[:generated_policies]") unless params[:generated_policies].nil?
        type
      end
    end

    module GetAccessPreviewInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccessPreviewInput, context: context)
        type = Types::GetAccessPreviewInput.new
        type.access_preview_id = params[:access_preview_id]
        type.analyzer_arn = params[:analyzer_arn]
        type
      end
    end

    module GetAccessPreviewOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccessPreviewOutput, context: context)
        type = Types::GetAccessPreviewOutput.new
        type.access_preview = AccessPreview.build(params[:access_preview], context: "#{context}[:access_preview]") unless params[:access_preview].nil?
        type
      end
    end

    module GetAnalyzedResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAnalyzedResourceInput, context: context)
        type = Types::GetAnalyzedResourceInput.new
        type.analyzer_arn = params[:analyzer_arn]
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module GetAnalyzedResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAnalyzedResourceOutput, context: context)
        type = Types::GetAnalyzedResourceOutput.new
        type.resource = AnalyzedResource.build(params[:resource], context: "#{context}[:resource]") unless params[:resource].nil?
        type
      end
    end

    module GetAnalyzerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAnalyzerInput, context: context)
        type = Types::GetAnalyzerInput.new
        type.analyzer_name = params[:analyzer_name]
        type
      end
    end

    module GetAnalyzerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAnalyzerOutput, context: context)
        type = Types::GetAnalyzerOutput.new
        type.analyzer = AnalyzerSummary.build(params[:analyzer], context: "#{context}[:analyzer]") unless params[:analyzer].nil?
        type
      end
    end

    module GetArchiveRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetArchiveRuleInput, context: context)
        type = Types::GetArchiveRuleInput.new
        type.analyzer_name = params[:analyzer_name]
        type.rule_name = params[:rule_name]
        type
      end
    end

    module GetArchiveRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetArchiveRuleOutput, context: context)
        type = Types::GetArchiveRuleOutput.new
        type.archive_rule = ArchiveRuleSummary.build(params[:archive_rule], context: "#{context}[:archive_rule]") unless params[:archive_rule].nil?
        type
      end
    end

    module GetFindingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFindingInput, context: context)
        type = Types::GetFindingInput.new
        type.analyzer_arn = params[:analyzer_arn]
        type.id = params[:id]
        type
      end
    end

    module GetFindingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFindingOutput, context: context)
        type = Types::GetFindingOutput.new
        type.finding = Finding.build(params[:finding], context: "#{context}[:finding]") unless params[:finding].nil?
        type
      end
    end

    module GetGeneratedPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGeneratedPolicyInput, context: context)
        type = Types::GetGeneratedPolicyInput.new
        type.job_id = params[:job_id]
        type.include_resource_placeholders = params[:include_resource_placeholders]
        type.include_service_level_template = params[:include_service_level_template]
        type
      end
    end

    module GetGeneratedPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGeneratedPolicyOutput, context: context)
        type = Types::GetGeneratedPolicyOutput.new
        type.job_details = JobDetails.build(params[:job_details], context: "#{context}[:job_details]") unless params[:job_details].nil?
        type.generated_policy_result = GeneratedPolicyResult.build(params[:generated_policy_result], context: "#{context}[:generated_policy_result]") unless params[:generated_policy_result].nil?
        type
      end
    end

    module IamRoleConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IamRoleConfiguration, context: context)
        type = Types::IamRoleConfiguration.new
        type.trust_policy = params[:trust_policy]
        type
      end
    end

    module InlineArchiveRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InlineArchiveRule, context: context)
        type = Types::InlineArchiveRule.new
        type.rule_name = params[:rule_name]
        type.filter = FilterCriteriaMap.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type
      end
    end

    module InlineArchiveRulesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InlineArchiveRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type.retry_after_seconds = params[:retry_after_seconds]
        type
      end
    end

    module InternetConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternetConfiguration, context: context)
        type = Types::InternetConfiguration.new
        type
      end
    end

    module JobDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobDetails, context: context)
        type = Types::JobDetails.new
        type.job_id = params[:job_id]
        type.status = params[:status]
        type.started_on = params[:started_on]
        type.completed_on = params[:completed_on]
        type.job_error = JobError.build(params[:job_error], context: "#{context}[:job_error]") unless params[:job_error].nil?
        type
      end
    end

    module JobError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobError, context: context)
        type = Types::JobError.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module KmsConstraintsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module KmsGrantConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KmsGrantConfiguration, context: context)
        type = Types::KmsGrantConfiguration.new
        type.operations = KmsGrantOperationsList.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type.grantee_principal = params[:grantee_principal]
        type.retiring_principal = params[:retiring_principal]
        type.constraints = KmsGrantConstraints.build(params[:constraints], context: "#{context}[:constraints]") unless params[:constraints].nil?
        type.issuing_account = params[:issuing_account]
        type
      end
    end

    module KmsGrantConfigurationsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << KmsGrantConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module KmsGrantConstraints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KmsGrantConstraints, context: context)
        type = Types::KmsGrantConstraints.new
        type.encryption_context_equals = KmsConstraintsMap.build(params[:encryption_context_equals], context: "#{context}[:encryption_context_equals]") unless params[:encryption_context_equals].nil?
        type.encryption_context_subset = KmsConstraintsMap.build(params[:encryption_context_subset], context: "#{context}[:encryption_context_subset]") unless params[:encryption_context_subset].nil?
        type
      end
    end

    module KmsGrantOperationsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module KmsKeyConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KmsKeyConfiguration, context: context)
        type = Types::KmsKeyConfiguration.new
        type.key_policies = KmsKeyPoliciesMap.build(params[:key_policies], context: "#{context}[:key_policies]") unless params[:key_policies].nil?
        type.grants = KmsGrantConfigurationsList.build(params[:grants], context: "#{context}[:grants]") unless params[:grants].nil?
        type
      end
    end

    module KmsKeyPoliciesMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ListAccessPreviewFindingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccessPreviewFindingsInput, context: context)
        type = Types::ListAccessPreviewFindingsInput.new
        type.access_preview_id = params[:access_preview_id]
        type.analyzer_arn = params[:analyzer_arn]
        type.filter = FilterCriteriaMap.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAccessPreviewFindingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccessPreviewFindingsOutput, context: context)
        type = Types::ListAccessPreviewFindingsOutput.new
        type.findings = AccessPreviewFindingsList.build(params[:findings], context: "#{context}[:findings]") unless params[:findings].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAccessPreviewsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccessPreviewsInput, context: context)
        type = Types::ListAccessPreviewsInput.new
        type.analyzer_arn = params[:analyzer_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAccessPreviewsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccessPreviewsOutput, context: context)
        type = Types::ListAccessPreviewsOutput.new
        type.access_previews = AccessPreviewsList.build(params[:access_previews], context: "#{context}[:access_previews]") unless params[:access_previews].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAnalyzedResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAnalyzedResourcesInput, context: context)
        type = Types::ListAnalyzedResourcesInput.new
        type.analyzer_arn = params[:analyzer_arn]
        type.resource_type = params[:resource_type]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAnalyzedResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAnalyzedResourcesOutput, context: context)
        type = Types::ListAnalyzedResourcesOutput.new
        type.analyzed_resources = AnalyzedResourcesList.build(params[:analyzed_resources], context: "#{context}[:analyzed_resources]") unless params[:analyzed_resources].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAnalyzersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAnalyzersInput, context: context)
        type = Types::ListAnalyzersInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.type = params[:type]
        type
      end
    end

    module ListAnalyzersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAnalyzersOutput, context: context)
        type = Types::ListAnalyzersOutput.new
        type.analyzers = AnalyzersList.build(params[:analyzers], context: "#{context}[:analyzers]") unless params[:analyzers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListArchiveRulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListArchiveRulesInput, context: context)
        type = Types::ListArchiveRulesInput.new
        type.analyzer_name = params[:analyzer_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListArchiveRulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListArchiveRulesOutput, context: context)
        type = Types::ListArchiveRulesOutput.new
        type.archive_rules = ArchiveRulesList.build(params[:archive_rules], context: "#{context}[:archive_rules]") unless params[:archive_rules].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFindingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFindingsInput, context: context)
        type = Types::ListFindingsInput.new
        type.analyzer_arn = params[:analyzer_arn]
        type.filter = FilterCriteriaMap.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.sort = SortCriteria.build(params[:sort], context: "#{context}[:sort]") unless params[:sort].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListFindingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFindingsOutput, context: context)
        type = Types::ListFindingsOutput.new
        type.findings = FindingsList.build(params[:findings], context: "#{context}[:findings]") unless params[:findings].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPolicyGenerationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPolicyGenerationsInput, context: context)
        type = Types::ListPolicyGenerationsInput.new
        type.principal_arn = params[:principal_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPolicyGenerationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPolicyGenerationsOutput, context: context)
        type = Types::ListPolicyGenerationsOutput.new
        type.policy_generations = PolicyGenerationList.build(params[:policy_generations], context: "#{context}[:policy_generations]") unless params[:policy_generations].nil?
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
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module Location
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Location, context: context)
        type = Types::Location.new
        type.path = PathElementList.build(params[:path], context: "#{context}[:path]") unless params[:path].nil?
        type.span = Span.build(params[:span], context: "#{context}[:span]") unless params[:span].nil?
        type
      end
    end

    module LocationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Location.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NetworkOriginConfiguration
      def self.build(params, context: '')
        return params if params.is_a?(Types::NetworkOriginConfiguration)
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkOriginConfiguration, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :vpc_configuration
          Types::NetworkOriginConfiguration::VpcConfiguration.new(
            (VpcConfiguration.build(params[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless params[:vpc_configuration].nil?)
          )
        when :internet_configuration
          Types::NetworkOriginConfiguration::InternetConfiguration.new(
            (InternetConfiguration.build(params[:internet_configuration], context: "#{context}[:internet_configuration]") unless params[:internet_configuration].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :vpc_configuration, :internet_configuration set"
        end
      end
    end

    module PathElement
      def self.build(params, context: '')
        return params if params.is_a?(Types::PathElement)
        Hearth::Validator.validate!(params, ::Hash, Types::PathElement, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :index
          Types::PathElement::Index.new(
            params[:index]
          )
        when :key
          Types::PathElement::Key.new(
            params[:key]
          )
        when :substring
          Types::PathElement::Substring.new(
            (Substring.build(params[:substring], context: "#{context}[:substring]") unless params[:substring].nil?)
          )
        when :value
          Types::PathElement::Value.new(
            params[:value]
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :index, :key, :substring, :value set"
        end
      end
    end

    module PathElementList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PathElement.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PolicyGeneration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyGeneration, context: context)
        type = Types::PolicyGeneration.new
        type.job_id = params[:job_id]
        type.principal_arn = params[:principal_arn]
        type.status = params[:status]
        type.started_on = params[:started_on]
        type.completed_on = params[:completed_on]
        type
      end
    end

    module PolicyGenerationDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyGenerationDetails, context: context)
        type = Types::PolicyGenerationDetails.new
        type.principal_arn = params[:principal_arn]
        type
      end
    end

    module PolicyGenerationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PolicyGeneration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Position
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Position, context: context)
        type = Types::Position.new
        type.line = params[:line]
        type.column = params[:column]
        type.offset = params[:offset]
        type
      end
    end

    module PrincipalMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module RegionList
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
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module S3AccessPointConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3AccessPointConfiguration, context: context)
        type = Types::S3AccessPointConfiguration.new
        type.access_point_policy = params[:access_point_policy]
        type.public_access_block = S3PublicAccessBlockConfiguration.build(params[:public_access_block], context: "#{context}[:public_access_block]") unless params[:public_access_block].nil?
        type.network_origin = NetworkOriginConfiguration.build(params[:network_origin], context: "#{context}[:network_origin]") unless params[:network_origin].nil?
        type
      end
    end

    module S3AccessPointConfigurationsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = S3AccessPointConfiguration.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module S3BucketAclGrantConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3BucketAclGrantConfiguration, context: context)
        type = Types::S3BucketAclGrantConfiguration.new
        type.permission = params[:permission]
        type.grantee = AclGrantee.build(params[:grantee], context: "#{context}[:grantee]") unless params[:grantee].nil?
        type
      end
    end

    module S3BucketAclGrantConfigurationsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << S3BucketAclGrantConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module S3BucketConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3BucketConfiguration, context: context)
        type = Types::S3BucketConfiguration.new
        type.bucket_policy = params[:bucket_policy]
        type.bucket_acl_grants = S3BucketAclGrantConfigurationsList.build(params[:bucket_acl_grants], context: "#{context}[:bucket_acl_grants]") unless params[:bucket_acl_grants].nil?
        type.bucket_public_access_block = S3PublicAccessBlockConfiguration.build(params[:bucket_public_access_block], context: "#{context}[:bucket_public_access_block]") unless params[:bucket_public_access_block].nil?
        type.access_points = S3AccessPointConfigurationsMap.build(params[:access_points], context: "#{context}[:access_points]") unless params[:access_points].nil?
        type
      end
    end

    module S3PublicAccessBlockConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3PublicAccessBlockConfiguration, context: context)
        type = Types::S3PublicAccessBlockConfiguration.new
        type.ignore_public_acls = params[:ignore_public_acls]
        type.restrict_public_buckets = params[:restrict_public_buckets]
        type
      end
    end

    module SecretsManagerSecretConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SecretsManagerSecretConfiguration, context: context)
        type = Types::SecretsManagerSecretConfiguration.new
        type.kms_key_id = params[:kms_key_id]
        type.secret_policy = params[:secret_policy]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module SharedViaList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SortCriteria
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SortCriteria, context: context)
        type = Types::SortCriteria.new
        type.attribute_name = params[:attribute_name]
        type.order_by = params[:order_by]
        type
      end
    end

    module Span
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Span, context: context)
        type = Types::Span.new
        type.start = Position.build(params[:start], context: "#{context}[:start]") unless params[:start].nil?
        type.end = Position.build(params[:end], context: "#{context}[:end]") unless params[:end].nil?
        type
      end
    end

    module SqsQueueConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SqsQueueConfiguration, context: context)
        type = Types::SqsQueueConfiguration.new
        type.queue_policy = params[:queue_policy]
        type
      end
    end

    module StartPolicyGenerationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartPolicyGenerationInput, context: context)
        type = Types::StartPolicyGenerationInput.new
        type.policy_generation_details = PolicyGenerationDetails.build(params[:policy_generation_details], context: "#{context}[:policy_generation_details]") unless params[:policy_generation_details].nil?
        type.cloud_trail_details = CloudTrailDetails.build(params[:cloud_trail_details], context: "#{context}[:cloud_trail_details]") unless params[:cloud_trail_details].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module StartPolicyGenerationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartPolicyGenerationOutput, context: context)
        type = Types::StartPolicyGenerationOutput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module StartResourceScanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartResourceScanInput, context: context)
        type = Types::StartResourceScanInput.new
        type.analyzer_arn = params[:analyzer_arn]
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module StartResourceScanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartResourceScanOutput, context: context)
        type = Types::StartResourceScanOutput.new
        type
      end
    end

    module StatusReason
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StatusReason, context: context)
        type = Types::StatusReason.new
        type.code = params[:code]
        type
      end
    end

    module Substring
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Substring, context: context)
        type = Types::Substring.new
        type.start = params[:start]
        type.length = params[:length]
        type
      end
    end

    module TagKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module TagsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type.retry_after_seconds = params[:retry_after_seconds]
        type
      end
    end

    module Trail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Trail, context: context)
        type = Types::Trail.new
        type.cloud_trail_arn = params[:cloud_trail_arn]
        type.regions = RegionList.build(params[:regions], context: "#{context}[:regions]") unless params[:regions].nil?
        type.all_regions = params[:all_regions]
        type
      end
    end

    module TrailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Trail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TrailProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrailProperties, context: context)
        type = Types::TrailProperties.new
        type.cloud_trail_arn = params[:cloud_trail_arn]
        type.regions = RegionList.build(params[:regions], context: "#{context}[:regions]") unless params[:regions].nil?
        type.all_regions = params[:all_regions]
        type
      end
    end

    module TrailPropertiesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TrailProperties.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeys.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateArchiveRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateArchiveRuleInput, context: context)
        type = Types::UpdateArchiveRuleInput.new
        type.analyzer_name = params[:analyzer_name]
        type.rule_name = params[:rule_name]
        type.filter = FilterCriteriaMap.build(params[:filter], context: "#{context}[:filter]") unless params[:filter].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module UpdateArchiveRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateArchiveRuleOutput, context: context)
        type = Types::UpdateArchiveRuleOutput.new
        type
      end
    end

    module UpdateFindingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFindingsInput, context: context)
        type = Types::UpdateFindingsInput.new
        type.analyzer_arn = params[:analyzer_arn]
        type.status = params[:status]
        type.ids = FindingIdList.build(params[:ids], context: "#{context}[:ids]") unless params[:ids].nil?
        type.resource_arn = params[:resource_arn]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module UpdateFindingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFindingsOutput, context: context)
        type = Types::UpdateFindingsOutput.new
        type
      end
    end

    module ValidatePolicyFinding
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidatePolicyFinding, context: context)
        type = Types::ValidatePolicyFinding.new
        type.finding_details = params[:finding_details]
        type.finding_type = params[:finding_type]
        type.issue_code = params[:issue_code]
        type.learn_more_link = params[:learn_more_link]
        type.locations = LocationList.build(params[:locations], context: "#{context}[:locations]") unless params[:locations].nil?
        type
      end
    end

    module ValidatePolicyFindingList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValidatePolicyFinding.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ValidatePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidatePolicyInput, context: context)
        type = Types::ValidatePolicyInput.new
        type.locale = params[:locale]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.policy_document = params[:policy_document]
        type.policy_type = params[:policy_type]
        type.validate_policy_resource_type = params[:validate_policy_resource_type]
        type
      end
    end

    module ValidatePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidatePolicyOutput, context: context)
        type = Types::ValidatePolicyOutput.new
        type.findings = ValidatePolicyFindingList.build(params[:findings], context: "#{context}[:findings]") unless params[:findings].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type.field_list = ValidationExceptionFieldList.build(params[:field_list], context: "#{context}[:field_list]") unless params[:field_list].nil?
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

    module ValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module VpcConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcConfiguration, context: context)
        type = Types::VpcConfiguration.new
        type.vpc_id = params[:vpc_id]
        type
      end
    end

  end
end
