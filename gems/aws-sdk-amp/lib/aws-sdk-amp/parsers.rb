# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Amp
  module Parsers

    # Operation Parser for CreateAlertManagerDefinition
    class CreateAlertManagerDefinition
      def self.parse(http_resp)
        data = Types::CreateAlertManagerDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.status = (Parsers::AlertManagerDefinitionStatus.parse(map['status']) unless map['status'].nil?)
        data
      end
    end

    class AlertManagerDefinitionStatus
      def self.parse(map)
        data = Types::AlertManagerDefinitionStatus.new
        data.status_code = map['statusCode']
        data.status_reason = map['statusReason']
        return data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        data.retry_after_seconds = http_resp.headers['Retry-After'].to_i unless http_resp.headers['Retry-After'].nil?
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.reason = map['reason']
        data.field_list = (Parsers::ValidationExceptionFieldList.parse(map['fieldList']) unless map['fieldList'].nil?)
        data
      end
    end

    class ValidationExceptionFieldList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ValidationExceptionField.parse(value) unless value.nil?
        end
        data
      end
    end

    class ValidationExceptionField
      def self.parse(map)
        data = Types::ValidationExceptionField.new
        data.name = map['name']
        data.message = map['message'] || map['Message']
        return data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        data.retry_after_seconds = http_resp.headers['Retry-After'].to_i unless http_resp.headers['Retry-After'].nil?
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.service_code = map['serviceCode']
        data.quota_code = map['quotaCode']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data.service_code = map['serviceCode']
        data.quota_code = map['quotaCode']
        data
      end
    end

    # Operation Parser for CreateRuleGroupsNamespace
    class CreateRuleGroupsNamespace
      def self.parse(http_resp)
        data = Types::CreateRuleGroupsNamespaceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['name']
        data.arn = map['arn']
        data.status = (Parsers::RuleGroupsNamespaceStatus.parse(map['status']) unless map['status'].nil?)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class RuleGroupsNamespaceStatus
      def self.parse(map)
        data = Types::RuleGroupsNamespaceStatus.new
        data.status_code = map['statusCode']
        data.status_reason = map['statusReason']
        return data
      end
    end

    # Operation Parser for CreateWorkspace
    class CreateWorkspace
      def self.parse(http_resp)
        data = Types::CreateWorkspaceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workspace_id = map['workspaceId']
        data.arn = map['arn']
        data.status = (Parsers::WorkspaceStatus.parse(map['status']) unless map['status'].nil?)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class WorkspaceStatus
      def self.parse(map)
        data = Types::WorkspaceStatus.new
        data.status_code = map['statusCode']
        return data
      end
    end

    # Operation Parser for DeleteAlertManagerDefinition
    class DeleteAlertManagerDefinition
      def self.parse(http_resp)
        data = Types::DeleteAlertManagerDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteRuleGroupsNamespace
    class DeleteRuleGroupsNamespace
      def self.parse(http_resp)
        data = Types::DeleteRuleGroupsNamespaceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteWorkspace
    class DeleteWorkspace
      def self.parse(http_resp)
        data = Types::DeleteWorkspaceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeAlertManagerDefinition
    class DescribeAlertManagerDefinition
      def self.parse(http_resp)
        data = Types::DescribeAlertManagerDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.alert_manager_definition = (Parsers::AlertManagerDefinitionDescription.parse(map['alertManagerDefinition']) unless map['alertManagerDefinition'].nil?)
        data
      end
    end

    class AlertManagerDefinitionDescription
      def self.parse(map)
        data = Types::AlertManagerDefinitionDescription.new
        data.status = (Parsers::AlertManagerDefinitionStatus.parse(map['status']) unless map['status'].nil?)
        data.data = Base64::decode64(map['data']) unless map['data'].nil?
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.modified_at = Time.at(map['modifiedAt'].to_i) if map['modifiedAt']
        return data
      end
    end

    # Operation Parser for DescribeRuleGroupsNamespace
    class DescribeRuleGroupsNamespace
      def self.parse(http_resp)
        data = Types::DescribeRuleGroupsNamespaceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.rule_groups_namespace = (Parsers::RuleGroupsNamespaceDescription.parse(map['ruleGroupsNamespace']) unless map['ruleGroupsNamespace'].nil?)
        data
      end
    end

    class RuleGroupsNamespaceDescription
      def self.parse(map)
        data = Types::RuleGroupsNamespaceDescription.new
        data.arn = map['arn']
        data.name = map['name']
        data.status = (Parsers::RuleGroupsNamespaceStatus.parse(map['status']) unless map['status'].nil?)
        data.data = Base64::decode64(map['data']) unless map['data'].nil?
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.modified_at = Time.at(map['modifiedAt'].to_i) if map['modifiedAt']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeWorkspace
    class DescribeWorkspace
      def self.parse(http_resp)
        data = Types::DescribeWorkspaceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workspace = (Parsers::WorkspaceDescription.parse(map['workspace']) unless map['workspace'].nil?)
        data
      end
    end

    class WorkspaceDescription
      def self.parse(map)
        data = Types::WorkspaceDescription.new
        data.workspace_id = map['workspaceId']
        data.alias = map['alias']
        data.arn = map['arn']
        data.status = (Parsers::WorkspaceStatus.parse(map['status']) unless map['status'].nil?)
        data.prometheus_endpoint = map['prometheusEndpoint']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListRuleGroupsNamespaces
    class ListRuleGroupsNamespaces
      def self.parse(http_resp)
        data = Types::ListRuleGroupsNamespacesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.rule_groups_namespaces = (Parsers::RuleGroupsNamespaceSummaryList.parse(map['ruleGroupsNamespaces']) unless map['ruleGroupsNamespaces'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class RuleGroupsNamespaceSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RuleGroupsNamespaceSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class RuleGroupsNamespaceSummary
      def self.parse(map)
        data = Types::RuleGroupsNamespaceSummary.new
        data.arn = map['arn']
        data.name = map['name']
        data.status = (Parsers::RuleGroupsNamespaceStatus.parse(map['status']) unless map['status'].nil?)
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.modified_at = Time.at(map['modifiedAt'].to_i) if map['modifiedAt']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for ListWorkspaces
    class ListWorkspaces
      def self.parse(http_resp)
        data = Types::ListWorkspacesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workspaces = (Parsers::WorkspaceSummaryList.parse(map['workspaces']) unless map['workspaces'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class WorkspaceSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::WorkspaceSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class WorkspaceSummary
      def self.parse(map)
        data = Types::WorkspaceSummary.new
        data.workspace_id = map['workspaceId']
        data.alias = map['alias']
        data.arn = map['arn']
        data.status = (Parsers::WorkspaceStatus.parse(map['status']) unless map['status'].nil?)
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for PutAlertManagerDefinition
    class PutAlertManagerDefinition
      def self.parse(http_resp)
        data = Types::PutAlertManagerDefinitionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.status = (Parsers::AlertManagerDefinitionStatus.parse(map['status']) unless map['status'].nil?)
        data
      end
    end

    # Operation Parser for PutRuleGroupsNamespace
    class PutRuleGroupsNamespace
      def self.parse(http_resp)
        data = Types::PutRuleGroupsNamespaceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['name']
        data.arn = map['arn']
        data.status = (Parsers::RuleGroupsNamespaceStatus.parse(map['status']) unless map['status'].nil?)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateWorkspaceAlias
    class UpdateWorkspaceAlias
      def self.parse(http_resp)
        data = Types::UpdateWorkspaceAliasOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
