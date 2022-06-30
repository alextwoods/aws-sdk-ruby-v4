# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Amp
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AlertManagerDefinitionDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlertManagerDefinitionDescription, context: context)
        Validators::AlertManagerDefinitionStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        Hearth::Validator.validate!(input[:data], ::String, context: "#{context}[:data]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:modified_at], ::Time, context: "#{context}[:modified_at]")
      end
    end

    class AlertManagerDefinitionStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlertManagerDefinitionStatus, context: context)
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
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

    class CreateAlertManagerDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAlertManagerDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:data], ::String, context: "#{context}[:data]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateAlertManagerDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAlertManagerDefinitionOutput, context: context)
        Validators::AlertManagerDefinitionStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class CreateRuleGroupsNamespaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRuleGroupsNamespaceInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:data], ::String, context: "#{context}[:data]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateRuleGroupsNamespaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRuleGroupsNamespaceOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::RuleGroupsNamespaceStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateWorkspaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorkspaceInput, context: context)
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateWorkspaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorkspaceOutput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::WorkspaceStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DeleteAlertManagerDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAlertManagerDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class DeleteAlertManagerDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAlertManagerDefinitionOutput, context: context)
      end
    end

    class DeleteRuleGroupsNamespaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRuleGroupsNamespaceInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class DeleteRuleGroupsNamespaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRuleGroupsNamespaceOutput, context: context)
      end
    end

    class DeleteWorkspaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWorkspaceInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class DeleteWorkspaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWorkspaceOutput, context: context)
      end
    end

    class DescribeAlertManagerDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAlertManagerDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
      end
    end

    class DescribeAlertManagerDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAlertManagerDefinitionOutput, context: context)
        Validators::AlertManagerDefinitionDescription.validate!(input[:alert_manager_definition], context: "#{context}[:alert_manager_definition]") unless input[:alert_manager_definition].nil?
      end
    end

    class DescribeRuleGroupsNamespaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRuleGroupsNamespaceInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DescribeRuleGroupsNamespaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRuleGroupsNamespaceOutput, context: context)
        Validators::RuleGroupsNamespaceDescription.validate!(input[:rule_groups_namespace], context: "#{context}[:rule_groups_namespace]") unless input[:rule_groups_namespace].nil?
      end
    end

    class DescribeWorkspaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkspaceInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
      end
    end

    class DescribeWorkspaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeWorkspaceOutput, context: context)
        Validators::WorkspaceDescription.validate!(input[:workspace], context: "#{context}[:workspace]") unless input[:workspace].nil?
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
      end
    end

    class ListRuleGroupsNamespacesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRuleGroupsNamespacesInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListRuleGroupsNamespacesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRuleGroupsNamespacesOutput, context: context)
        Validators::RuleGroupsNamespaceSummaryList.validate!(input[:rule_groups_namespaces], context: "#{context}[:rule_groups_namespaces]") unless input[:rule_groups_namespaces].nil?
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
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListWorkspacesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorkspacesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListWorkspacesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorkspacesOutput, context: context)
        Validators::WorkspaceSummaryList.validate!(input[:workspaces], context: "#{context}[:workspaces]") unless input[:workspaces].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class PutAlertManagerDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAlertManagerDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:data], ::String, context: "#{context}[:data]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class PutAlertManagerDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutAlertManagerDefinitionOutput, context: context)
        Validators::AlertManagerDefinitionStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class PutRuleGroupsNamespaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRuleGroupsNamespaceInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:data], ::String, context: "#{context}[:data]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class PutRuleGroupsNamespaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRuleGroupsNamespaceOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::RuleGroupsNamespaceStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
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

    class RuleGroupsNamespaceDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleGroupsNamespaceDescription, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::RuleGroupsNamespaceStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        Hearth::Validator.validate!(input[:data], ::String, context: "#{context}[:data]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:modified_at], ::Time, context: "#{context}[:modified_at]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class RuleGroupsNamespaceStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleGroupsNamespaceStatus, context: context)
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
      end
    end

    class RuleGroupsNamespaceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleGroupsNamespaceSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::RuleGroupsNamespaceStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:modified_at], ::Time, context: "#{context}[:modified_at]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class RuleGroupsNamespaceSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RuleGroupsNamespaceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
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

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeys.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateWorkspaceAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWorkspaceAliasInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class UpdateWorkspaceAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWorkspaceAliasOutput, context: context)
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Validators::ValidationExceptionFieldList.validate!(input[:field_list], context: "#{context}[:field_list]") unless input[:field_list].nil?
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

    class WorkspaceDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkspaceDescription, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::WorkspaceStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        Hearth::Validator.validate!(input[:prometheus_endpoint], ::String, context: "#{context}[:prometheus_endpoint]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class WorkspaceStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkspaceStatus, context: context)
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
      end
    end

    class WorkspaceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkspaceSummary, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:alias], ::String, context: "#{context}[:alias]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Validators::WorkspaceStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class WorkspaceSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::WorkspaceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
