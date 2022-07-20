# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'
require 'stringio'

module AWS::SDK::Amp
  module Stubs

    # Operation Stubber for CreateAlertManagerDefinition
    class CreateAlertManagerDefinition
      def self.default(visited=[])
        {
          status: AlertManagerDefinitionStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['status'] = AlertManagerDefinitionStatus.stub(stub[:status]) unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AlertManagerDefinitionStatus
    class AlertManagerDefinitionStatus
      def self.default(visited=[])
        return nil if visited.include?('AlertManagerDefinitionStatus')
        visited = visited + ['AlertManagerDefinitionStatus']
        {
          status_code: 'status_code',
          status_reason: 'status_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::AlertManagerDefinitionStatus.new
        data = {}
        data['statusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['statusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data
      end
    end

    # Operation Stubber for CreateRuleGroupsNamespace
    class CreateRuleGroupsNamespace
      def self.default(visited=[])
        {
          name: 'name',
          arn: 'arn',
          status: RuleGroupsNamespaceStatus.default(visited),
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['status'] = RuleGroupsNamespaceStatus.stub(stub[:status]) unless stub[:status].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for RuleGroupsNamespaceStatus
    class RuleGroupsNamespaceStatus
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupsNamespaceStatus')
        visited = visited + ['RuleGroupsNamespaceStatus']
        {
          status_code: 'status_code',
          status_reason: 'status_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleGroupsNamespaceStatus.new
        data = {}
        data['statusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['statusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data
      end
    end

    # Operation Stubber for CreateWorkspace
    class CreateWorkspace
      def self.default(visited=[])
        {
          workspace_id: 'workspace_id',
          arn: 'arn',
          status: WorkspaceStatus.default(visited),
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['workspaceId'] = stub[:workspace_id] unless stub[:workspace_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['status'] = WorkspaceStatus.stub(stub[:status]) unless stub[:status].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for WorkspaceStatus
    class WorkspaceStatus
      def self.default(visited=[])
        return nil if visited.include?('WorkspaceStatus')
        visited = visited + ['WorkspaceStatus']
        {
          status_code: 'status_code',
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkspaceStatus.new
        data = {}
        data['statusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data
      end
    end

    # Operation Stubber for DeleteAlertManagerDefinition
    class DeleteAlertManagerDefinition
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
      end
    end

    # Operation Stubber for DeleteRuleGroupsNamespace
    class DeleteRuleGroupsNamespace
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
      end
    end

    # Operation Stubber for DeleteWorkspace
    class DeleteWorkspace
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
      end
    end

    # Operation Stubber for DescribeAlertManagerDefinition
    class DescribeAlertManagerDefinition
      def self.default(visited=[])
        {
          alert_manager_definition: AlertManagerDefinitionDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['alertManagerDefinition'] = AlertManagerDefinitionDescription.stub(stub[:alert_manager_definition]) unless stub[:alert_manager_definition].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AlertManagerDefinitionDescription
    class AlertManagerDefinitionDescription
      def self.default(visited=[])
        return nil if visited.include?('AlertManagerDefinitionDescription')
        visited = visited + ['AlertManagerDefinitionDescription']
        {
          status: AlertManagerDefinitionStatus.default(visited),
          data: 'data',
          created_at: Time.now,
          modified_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AlertManagerDefinitionDescription.new
        data = {}
        data['status'] = AlertManagerDefinitionStatus.stub(stub[:status]) unless stub[:status].nil?
        data['data'] = ::Base64::encode64(stub[:data]) unless stub[:data].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['modifiedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:modified_at]).to_i unless stub[:modified_at].nil?
        data
      end
    end

    # Operation Stubber for DescribeRuleGroupsNamespace
    class DescribeRuleGroupsNamespace
      def self.default(visited=[])
        {
          rule_groups_namespace: RuleGroupsNamespaceDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ruleGroupsNamespace'] = RuleGroupsNamespaceDescription.stub(stub[:rule_groups_namespace]) unless stub[:rule_groups_namespace].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for RuleGroupsNamespaceDescription
    class RuleGroupsNamespaceDescription
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupsNamespaceDescription')
        visited = visited + ['RuleGroupsNamespaceDescription']
        {
          arn: 'arn',
          name: 'name',
          status: RuleGroupsNamespaceStatus.default(visited),
          data: 'data',
          created_at: Time.now,
          modified_at: Time.now,
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleGroupsNamespaceDescription.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['status'] = RuleGroupsNamespaceStatus.stub(stub[:status]) unless stub[:status].nil?
        data['data'] = ::Base64::encode64(stub[:data]) unless stub[:data].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['modifiedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:modified_at]).to_i unless stub[:modified_at].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for DescribeWorkspace
    class DescribeWorkspace
      def self.default(visited=[])
        {
          workspace: WorkspaceDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['workspace'] = WorkspaceDescription.stub(stub[:workspace]) unless stub[:workspace].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for WorkspaceDescription
    class WorkspaceDescription
      def self.default(visited=[])
        return nil if visited.include?('WorkspaceDescription')
        visited = visited + ['WorkspaceDescription']
        {
          workspace_id: 'workspace_id',
          alias: 'alias',
          arn: 'arn',
          status: WorkspaceStatus.default(visited),
          prometheus_endpoint: 'prometheus_endpoint',
          created_at: Time.now,
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkspaceDescription.new
        data = {}
        data['workspaceId'] = stub[:workspace_id] unless stub[:workspace_id].nil?
        data['alias'] = stub[:alias] unless stub[:alias].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['status'] = WorkspaceStatus.stub(stub[:status]) unless stub[:status].nil?
        data['prometheusEndpoint'] = stub[:prometheus_endpoint] unless stub[:prometheus_endpoint].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListRuleGroupsNamespaces
    class ListRuleGroupsNamespaces
      def self.default(visited=[])
        {
          rule_groups_namespaces: RuleGroupsNamespaceSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ruleGroupsNamespaces'] = RuleGroupsNamespaceSummaryList.stub(stub[:rule_groups_namespaces]) unless stub[:rule_groups_namespaces].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RuleGroupsNamespaceSummaryList
    class RuleGroupsNamespaceSummaryList
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupsNamespaceSummaryList')
        visited = visited + ['RuleGroupsNamespaceSummaryList']
        [
          RuleGroupsNamespaceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RuleGroupsNamespaceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RuleGroupsNamespaceSummary
    class RuleGroupsNamespaceSummary
      def self.default(visited=[])
        return nil if visited.include?('RuleGroupsNamespaceSummary')
        visited = visited + ['RuleGroupsNamespaceSummary']
        {
          arn: 'arn',
          name: 'name',
          status: RuleGroupsNamespaceStatus.default(visited),
          created_at: Time.now,
          modified_at: Time.now,
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleGroupsNamespaceSummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['status'] = RuleGroupsNamespaceStatus.stub(stub[:status]) unless stub[:status].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['modifiedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:modified_at]).to_i unless stub[:modified_at].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListWorkspaces
    class ListWorkspaces
      def self.default(visited=[])
        {
          workspaces: WorkspaceSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['workspaces'] = WorkspaceSummaryList.stub(stub[:workspaces]) unless stub[:workspaces].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for WorkspaceSummaryList
    class WorkspaceSummaryList
      def self.default(visited=[])
        return nil if visited.include?('WorkspaceSummaryList')
        visited = visited + ['WorkspaceSummaryList']
        [
          WorkspaceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << WorkspaceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WorkspaceSummary
    class WorkspaceSummary
      def self.default(visited=[])
        return nil if visited.include?('WorkspaceSummary')
        visited = visited + ['WorkspaceSummary']
        {
          workspace_id: 'workspace_id',
          alias: 'alias',
          arn: 'arn',
          status: WorkspaceStatus.default(visited),
          created_at: Time.now,
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkspaceSummary.new
        data = {}
        data['workspaceId'] = stub[:workspace_id] unless stub[:workspace_id].nil?
        data['alias'] = stub[:alias] unless stub[:alias].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['status'] = WorkspaceStatus.stub(stub[:status]) unless stub[:status].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for PutAlertManagerDefinition
    class PutAlertManagerDefinition
      def self.default(visited=[])
        {
          status: AlertManagerDefinitionStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['status'] = AlertManagerDefinitionStatus.stub(stub[:status]) unless stub[:status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutRuleGroupsNamespace
    class PutRuleGroupsNamespace
      def self.default(visited=[])
        {
          name: 'name',
          arn: 'arn',
          status: RuleGroupsNamespaceStatus.default(visited),
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['name'] = stub[:name] unless stub[:name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['status'] = RuleGroupsNamespaceStatus.stub(stub[:status]) unless stub[:status].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateWorkspaceAlias
    class UpdateWorkspaceAlias
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end
  end
end
