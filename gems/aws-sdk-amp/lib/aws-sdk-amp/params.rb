# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Amp
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AlertManagerDefinitionDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlertManagerDefinitionDescription, context: context)
        type = Types::AlertManagerDefinitionDescription.new
        type.status = AlertManagerDefinitionStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.data = params[:data]
        type.created_at = params[:created_at]
        type.modified_at = params[:modified_at]
        type
      end
    end

    module AlertManagerDefinitionStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlertManagerDefinitionStatus, context: context)
        type = Types::AlertManagerDefinitionStatus.new
        type.status_code = params[:status_code]
        type.status_reason = params[:status_reason]
        type
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

    module CreateAlertManagerDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAlertManagerDefinitionInput, context: context)
        type = Types::CreateAlertManagerDefinitionInput.new
        type.workspace_id = params[:workspace_id]
        type.data = params[:data]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreateAlertManagerDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAlertManagerDefinitionOutput, context: context)
        type = Types::CreateAlertManagerDefinitionOutput.new
        type.status = AlertManagerDefinitionStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module CreateRuleGroupsNamespaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRuleGroupsNamespaceInput, context: context)
        type = Types::CreateRuleGroupsNamespaceInput.new
        type.workspace_id = params[:workspace_id]
        type.name = params[:name]
        type.data = params[:data]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateRuleGroupsNamespaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRuleGroupsNamespaceOutput, context: context)
        type = Types::CreateRuleGroupsNamespaceOutput.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.status = RuleGroupsNamespaceStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateWorkspaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorkspaceInput, context: context)
        type = Types::CreateWorkspaceInput.new
        type.alias = params[:alias]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateWorkspaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorkspaceOutput, context: context)
        type = Types::CreateWorkspaceOutput.new
        type.workspace_id = params[:workspace_id]
        type.arn = params[:arn]
        type.status = WorkspaceStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DeleteAlertManagerDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAlertManagerDefinitionInput, context: context)
        type = Types::DeleteAlertManagerDefinitionInput.new
        type.workspace_id = params[:workspace_id]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module DeleteAlertManagerDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAlertManagerDefinitionOutput, context: context)
        type = Types::DeleteAlertManagerDefinitionOutput.new
        type
      end
    end

    module DeleteRuleGroupsNamespaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRuleGroupsNamespaceInput, context: context)
        type = Types::DeleteRuleGroupsNamespaceInput.new
        type.workspace_id = params[:workspace_id]
        type.name = params[:name]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module DeleteRuleGroupsNamespaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRuleGroupsNamespaceOutput, context: context)
        type = Types::DeleteRuleGroupsNamespaceOutput.new
        type
      end
    end

    module DeleteWorkspaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWorkspaceInput, context: context)
        type = Types::DeleteWorkspaceInput.new
        type.workspace_id = params[:workspace_id]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module DeleteWorkspaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWorkspaceOutput, context: context)
        type = Types::DeleteWorkspaceOutput.new
        type
      end
    end

    module DescribeAlertManagerDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAlertManagerDefinitionInput, context: context)
        type = Types::DescribeAlertManagerDefinitionInput.new
        type.workspace_id = params[:workspace_id]
        type
      end
    end

    module DescribeAlertManagerDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAlertManagerDefinitionOutput, context: context)
        type = Types::DescribeAlertManagerDefinitionOutput.new
        type.alert_manager_definition = AlertManagerDefinitionDescription.build(params[:alert_manager_definition], context: "#{context}[:alert_manager_definition]") unless params[:alert_manager_definition].nil?
        type
      end
    end

    module DescribeRuleGroupsNamespaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRuleGroupsNamespaceInput, context: context)
        type = Types::DescribeRuleGroupsNamespaceInput.new
        type.workspace_id = params[:workspace_id]
        type.name = params[:name]
        type
      end
    end

    module DescribeRuleGroupsNamespaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRuleGroupsNamespaceOutput, context: context)
        type = Types::DescribeRuleGroupsNamespaceOutput.new
        type.rule_groups_namespace = RuleGroupsNamespaceDescription.build(params[:rule_groups_namespace], context: "#{context}[:rule_groups_namespace]") unless params[:rule_groups_namespace].nil?
        type
      end
    end

    module DescribeWorkspaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkspaceInput, context: context)
        type = Types::DescribeWorkspaceInput.new
        type.workspace_id = params[:workspace_id]
        type
      end
    end

    module DescribeWorkspaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeWorkspaceOutput, context: context)
        type = Types::DescribeWorkspaceOutput.new
        type.workspace = WorkspaceDescription.build(params[:workspace], context: "#{context}[:workspace]") unless params[:workspace].nil?
        type
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

    module ListRuleGroupsNamespacesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRuleGroupsNamespacesInput, context: context)
        type = Types::ListRuleGroupsNamespacesInput.new
        type.workspace_id = params[:workspace_id]
        type.name = params[:name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListRuleGroupsNamespacesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRuleGroupsNamespacesOutput, context: context)
        type = Types::ListRuleGroupsNamespacesOutput.new
        type.rule_groups_namespaces = RuleGroupsNamespaceSummaryList.build(params[:rule_groups_namespaces], context: "#{context}[:rule_groups_namespaces]") unless params[:rule_groups_namespaces].nil?
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
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListWorkspacesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorkspacesInput, context: context)
        type = Types::ListWorkspacesInput.new
        type.next_token = params[:next_token]
        type.alias = params[:alias]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListWorkspacesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorkspacesOutput, context: context)
        type = Types::ListWorkspacesOutput.new
        type.workspaces = WorkspaceSummaryList.build(params[:workspaces], context: "#{context}[:workspaces]") unless params[:workspaces].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module PutAlertManagerDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAlertManagerDefinitionInput, context: context)
        type = Types::PutAlertManagerDefinitionInput.new
        type.workspace_id = params[:workspace_id]
        type.data = params[:data]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module PutAlertManagerDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutAlertManagerDefinitionOutput, context: context)
        type = Types::PutAlertManagerDefinitionOutput.new
        type.status = AlertManagerDefinitionStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module PutRuleGroupsNamespaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRuleGroupsNamespaceInput, context: context)
        type = Types::PutRuleGroupsNamespaceInput.new
        type.workspace_id = params[:workspace_id]
        type.name = params[:name]
        type.data = params[:data]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module PutRuleGroupsNamespaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRuleGroupsNamespaceOutput, context: context)
        type = Types::PutRuleGroupsNamespaceOutput.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.status = RuleGroupsNamespaceStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
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

    module RuleGroupsNamespaceDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleGroupsNamespaceDescription, context: context)
        type = Types::RuleGroupsNamespaceDescription.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.status = RuleGroupsNamespaceStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.data = params[:data]
        type.created_at = params[:created_at]
        type.modified_at = params[:modified_at]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module RuleGroupsNamespaceStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleGroupsNamespaceStatus, context: context)
        type = Types::RuleGroupsNamespaceStatus.new
        type.status_code = params[:status_code]
        type.status_reason = params[:status_reason]
        type
      end
    end

    module RuleGroupsNamespaceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleGroupsNamespaceSummary, context: context)
        type = Types::RuleGroupsNamespaceSummary.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.status = RuleGroupsNamespaceStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.created_at = params[:created_at]
        type.modified_at = params[:modified_at]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module RuleGroupsNamespaceSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RuleGroupsNamespaceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type.service_code = params[:service_code]
        type.quota_code = params[:quota_code]
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

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type.service_code = params[:service_code]
        type.quota_code = params[:quota_code]
        type.retry_after_seconds = params[:retry_after_seconds]
        type
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

    module UpdateWorkspaceAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWorkspaceAliasInput, context: context)
        type = Types::UpdateWorkspaceAliasInput.new
        type.workspace_id = params[:workspace_id]
        type.alias = params[:alias]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module UpdateWorkspaceAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWorkspaceAliasOutput, context: context)
        type = Types::UpdateWorkspaceAliasOutput.new
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

    module WorkspaceDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkspaceDescription, context: context)
        type = Types::WorkspaceDescription.new
        type.workspace_id = params[:workspace_id]
        type.alias = params[:alias]
        type.arn = params[:arn]
        type.status = WorkspaceStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.prometheus_endpoint = params[:prometheus_endpoint]
        type.created_at = params[:created_at]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module WorkspaceStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkspaceStatus, context: context)
        type = Types::WorkspaceStatus.new
        type.status_code = params[:status_code]
        type
      end
    end

    module WorkspaceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkspaceSummary, context: context)
        type = Types::WorkspaceSummary.new
        type.workspace_id = params[:workspace_id]
        type.alias = params[:alias]
        type.arn = params[:arn]
        type.status = WorkspaceStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.created_at = params[:created_at]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module WorkspaceSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WorkspaceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
