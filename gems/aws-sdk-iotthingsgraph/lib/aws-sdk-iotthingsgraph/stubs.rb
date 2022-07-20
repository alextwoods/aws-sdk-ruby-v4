# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::IoTThingsGraph
  module Stubs

    # Operation Stubber for AssociateEntityToThing
    class AssociateEntityToThing
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateFlowTemplate
    class CreateFlowTemplate
      def self.default(visited=[])
        {
          summary: FlowTemplateSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['summary'] = FlowTemplateSummary.stub(stub[:summary]) unless stub[:summary].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for FlowTemplateSummary
    class FlowTemplateSummary
      def self.default(visited=[])
        return nil if visited.include?('FlowTemplateSummary')
        visited = visited + ['FlowTemplateSummary']
        {
          id: 'id',
          arn: 'arn',
          revision_number: 1,
          created_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::FlowTemplateSummary.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['revisionNumber'] = stub[:revision_number] unless stub[:revision_number].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data
      end
    end

    # Operation Stubber for CreateSystemInstance
    class CreateSystemInstance
      def self.default(visited=[])
        {
          summary: SystemInstanceSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['summary'] = SystemInstanceSummary.stub(stub[:summary]) unless stub[:summary].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for SystemInstanceSummary
    class SystemInstanceSummary
      def self.default(visited=[])
        return nil if visited.include?('SystemInstanceSummary')
        visited = visited + ['SystemInstanceSummary']
        {
          id: 'id',
          arn: 'arn',
          status: 'status',
          target: 'target',
          greengrass_group_name: 'greengrass_group_name',
          created_at: Time.now,
          updated_at: Time.now,
          greengrass_group_id: 'greengrass_group_id',
          greengrass_group_version_id: 'greengrass_group_version_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::SystemInstanceSummary.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['target'] = stub[:target] unless stub[:target].nil?
        data['greengrassGroupName'] = stub[:greengrass_group_name] unless stub[:greengrass_group_name].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['updatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['greengrassGroupId'] = stub[:greengrass_group_id] unless stub[:greengrass_group_id].nil?
        data['greengrassGroupVersionId'] = stub[:greengrass_group_version_id] unless stub[:greengrass_group_version_id].nil?
        data
      end
    end

    # Operation Stubber for CreateSystemTemplate
    class CreateSystemTemplate
      def self.default(visited=[])
        {
          summary: SystemTemplateSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['summary'] = SystemTemplateSummary.stub(stub[:summary]) unless stub[:summary].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for SystemTemplateSummary
    class SystemTemplateSummary
      def self.default(visited=[])
        return nil if visited.include?('SystemTemplateSummary')
        visited = visited + ['SystemTemplateSummary']
        {
          id: 'id',
          arn: 'arn',
          revision_number: 1,
          created_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::SystemTemplateSummary.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['revisionNumber'] = stub[:revision_number] unless stub[:revision_number].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data
      end
    end

    # Operation Stubber for DeleteFlowTemplate
    class DeleteFlowTemplate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteNamespace
    class DeleteNamespace
      def self.default(visited=[])
        {
          namespace_arn: 'namespace_arn',
          namespace_name: 'namespace_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['namespaceArn'] = stub[:namespace_arn] unless stub[:namespace_arn].nil?
        data['namespaceName'] = stub[:namespace_name] unless stub[:namespace_name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSystemInstance
    class DeleteSystemInstance
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSystemTemplate
    class DeleteSystemTemplate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeploySystemInstance
    class DeploySystemInstance
      def self.default(visited=[])
        {
          summary: SystemInstanceSummary.default(visited),
          greengrass_deployment_id: 'greengrass_deployment_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['summary'] = SystemInstanceSummary.stub(stub[:summary]) unless stub[:summary].nil?
        data['greengrassDeploymentId'] = stub[:greengrass_deployment_id] unless stub[:greengrass_deployment_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeprecateFlowTemplate
    class DeprecateFlowTemplate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeprecateSystemTemplate
    class DeprecateSystemTemplate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeNamespace
    class DescribeNamespace
      def self.default(visited=[])
        {
          namespace_arn: 'namespace_arn',
          namespace_name: 'namespace_name',
          tracking_namespace_name: 'tracking_namespace_name',
          tracking_namespace_version: 1,
          namespace_version: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['namespaceArn'] = stub[:namespace_arn] unless stub[:namespace_arn].nil?
        data['namespaceName'] = stub[:namespace_name] unless stub[:namespace_name].nil?
        data['trackingNamespaceName'] = stub[:tracking_namespace_name] unless stub[:tracking_namespace_name].nil?
        data['trackingNamespaceVersion'] = stub[:tracking_namespace_version] unless stub[:tracking_namespace_version].nil?
        data['namespaceVersion'] = stub[:namespace_version] unless stub[:namespace_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DissociateEntityFromThing
    class DissociateEntityFromThing
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetEntities
    class GetEntities
      def self.default(visited=[])
        {
          descriptions: EntityDescriptions.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['descriptions'] = EntityDescriptions.stub(stub[:descriptions]) unless stub[:descriptions].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EntityDescriptions
    class EntityDescriptions
      def self.default(visited=[])
        return nil if visited.include?('EntityDescriptions')
        visited = visited + ['EntityDescriptions']
        [
          EntityDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EntityDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EntityDescription
    class EntityDescription
      def self.default(visited=[])
        return nil if visited.include?('EntityDescription')
        visited = visited + ['EntityDescription']
        {
          id: 'id',
          arn: 'arn',
          type: 'type',
          created_at: Time.now,
          definition: DefinitionDocument.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EntityDescription.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['definition'] = DefinitionDocument.stub(stub[:definition]) unless stub[:definition].nil?
        data
      end
    end

    # Structure Stubber for DefinitionDocument
    class DefinitionDocument
      def self.default(visited=[])
        return nil if visited.include?('DefinitionDocument')
        visited = visited + ['DefinitionDocument']
        {
          language: 'language',
          text: 'text',
        }
      end

      def self.stub(stub)
        stub ||= Types::DefinitionDocument.new
        data = {}
        data['language'] = stub[:language] unless stub[:language].nil?
        data['text'] = stub[:text] unless stub[:text].nil?
        data
      end
    end

    # Operation Stubber for GetFlowTemplate
    class GetFlowTemplate
      def self.default(visited=[])
        {
          description: FlowTemplateDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['description'] = FlowTemplateDescription.stub(stub[:description]) unless stub[:description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for FlowTemplateDescription
    class FlowTemplateDescription
      def self.default(visited=[])
        return nil if visited.include?('FlowTemplateDescription')
        visited = visited + ['FlowTemplateDescription']
        {
          summary: FlowTemplateSummary.default(visited),
          definition: DefinitionDocument.default(visited),
          validated_namespace_version: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::FlowTemplateDescription.new
        data = {}
        data['summary'] = FlowTemplateSummary.stub(stub[:summary]) unless stub[:summary].nil?
        data['definition'] = DefinitionDocument.stub(stub[:definition]) unless stub[:definition].nil?
        data['validatedNamespaceVersion'] = stub[:validated_namespace_version] unless stub[:validated_namespace_version].nil?
        data
      end
    end

    # Operation Stubber for GetFlowTemplateRevisions
    class GetFlowTemplateRevisions
      def self.default(visited=[])
        {
          summaries: FlowTemplateSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['summaries'] = FlowTemplateSummaries.stub(stub[:summaries]) unless stub[:summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FlowTemplateSummaries
    class FlowTemplateSummaries
      def self.default(visited=[])
        return nil if visited.include?('FlowTemplateSummaries')
        visited = visited + ['FlowTemplateSummaries']
        [
          FlowTemplateSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FlowTemplateSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetNamespaceDeletionStatus
    class GetNamespaceDeletionStatus
      def self.default(visited=[])
        {
          namespace_arn: 'namespace_arn',
          namespace_name: 'namespace_name',
          status: 'status',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['namespaceArn'] = stub[:namespace_arn] unless stub[:namespace_arn].nil?
        data['namespaceName'] = stub[:namespace_name] unless stub[:namespace_name].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetSystemInstance
    class GetSystemInstance
      def self.default(visited=[])
        {
          description: SystemInstanceDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['description'] = SystemInstanceDescription.stub(stub[:description]) unless stub[:description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for SystemInstanceDescription
    class SystemInstanceDescription
      def self.default(visited=[])
        return nil if visited.include?('SystemInstanceDescription')
        visited = visited + ['SystemInstanceDescription']
        {
          summary: SystemInstanceSummary.default(visited),
          definition: DefinitionDocument.default(visited),
          s3_bucket_name: 's3_bucket_name',
          metrics_configuration: MetricsConfiguration.default(visited),
          validated_namespace_version: 1,
          validated_dependency_revisions: DependencyRevisions.default(visited),
          flow_actions_role_arn: 'flow_actions_role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::SystemInstanceDescription.new
        data = {}
        data['summary'] = SystemInstanceSummary.stub(stub[:summary]) unless stub[:summary].nil?
        data['definition'] = DefinitionDocument.stub(stub[:definition]) unless stub[:definition].nil?
        data['s3BucketName'] = stub[:s3_bucket_name] unless stub[:s3_bucket_name].nil?
        data['metricsConfiguration'] = MetricsConfiguration.stub(stub[:metrics_configuration]) unless stub[:metrics_configuration].nil?
        data['validatedNamespaceVersion'] = stub[:validated_namespace_version] unless stub[:validated_namespace_version].nil?
        data['validatedDependencyRevisions'] = DependencyRevisions.stub(stub[:validated_dependency_revisions]) unless stub[:validated_dependency_revisions].nil?
        data['flowActionsRoleArn'] = stub[:flow_actions_role_arn] unless stub[:flow_actions_role_arn].nil?
        data
      end
    end

    # List Stubber for DependencyRevisions
    class DependencyRevisions
      def self.default(visited=[])
        return nil if visited.include?('DependencyRevisions')
        visited = visited + ['DependencyRevisions']
        [
          DependencyRevision.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DependencyRevision.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DependencyRevision
    class DependencyRevision
      def self.default(visited=[])
        return nil if visited.include?('DependencyRevision')
        visited = visited + ['DependencyRevision']
        {
          id: 'id',
          revision_number: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::DependencyRevision.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['revisionNumber'] = stub[:revision_number] unless stub[:revision_number].nil?
        data
      end
    end

    # Structure Stubber for MetricsConfiguration
    class MetricsConfiguration
      def self.default(visited=[])
        return nil if visited.include?('MetricsConfiguration')
        visited = visited + ['MetricsConfiguration']
        {
          cloud_metric_enabled: false,
          metric_rule_role_arn: 'metric_rule_role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::MetricsConfiguration.new
        data = {}
        data['cloudMetricEnabled'] = stub[:cloud_metric_enabled] unless stub[:cloud_metric_enabled].nil?
        data['metricRuleRoleArn'] = stub[:metric_rule_role_arn] unless stub[:metric_rule_role_arn].nil?
        data
      end
    end

    # Operation Stubber for GetSystemTemplate
    class GetSystemTemplate
      def self.default(visited=[])
        {
          description: SystemTemplateDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['description'] = SystemTemplateDescription.stub(stub[:description]) unless stub[:description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for SystemTemplateDescription
    class SystemTemplateDescription
      def self.default(visited=[])
        return nil if visited.include?('SystemTemplateDescription')
        visited = visited + ['SystemTemplateDescription']
        {
          summary: SystemTemplateSummary.default(visited),
          definition: DefinitionDocument.default(visited),
          validated_namespace_version: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SystemTemplateDescription.new
        data = {}
        data['summary'] = SystemTemplateSummary.stub(stub[:summary]) unless stub[:summary].nil?
        data['definition'] = DefinitionDocument.stub(stub[:definition]) unless stub[:definition].nil?
        data['validatedNamespaceVersion'] = stub[:validated_namespace_version] unless stub[:validated_namespace_version].nil?
        data
      end
    end

    # Operation Stubber for GetSystemTemplateRevisions
    class GetSystemTemplateRevisions
      def self.default(visited=[])
        {
          summaries: SystemTemplateSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['summaries'] = SystemTemplateSummaries.stub(stub[:summaries]) unless stub[:summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SystemTemplateSummaries
    class SystemTemplateSummaries
      def self.default(visited=[])
        return nil if visited.include?('SystemTemplateSummaries')
        visited = visited + ['SystemTemplateSummaries']
        [
          SystemTemplateSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SystemTemplateSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetUploadStatus
    class GetUploadStatus
      def self.default(visited=[])
        {
          upload_id: 'upload_id',
          upload_status: 'upload_status',
          namespace_arn: 'namespace_arn',
          namespace_name: 'namespace_name',
          namespace_version: 1,
          failure_reason: StringList.default(visited),
          created_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['uploadId'] = stub[:upload_id] unless stub[:upload_id].nil?
        data['uploadStatus'] = stub[:upload_status] unless stub[:upload_status].nil?
        data['namespaceArn'] = stub[:namespace_arn] unless stub[:namespace_arn].nil?
        data['namespaceName'] = stub[:namespace_name] unless stub[:namespace_name].nil?
        data['namespaceVersion'] = stub[:namespace_version] unless stub[:namespace_version].nil?
        data['failureReason'] = StringList.stub(stub[:failure_reason]) unless stub[:failure_reason].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for StringList
    class StringList
      def self.default(visited=[])
        return nil if visited.include?('StringList')
        visited = visited + ['StringList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListFlowExecutionMessages
    class ListFlowExecutionMessages
      def self.default(visited=[])
        {
          messages: FlowExecutionMessages.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['messages'] = FlowExecutionMessages.stub(stub[:messages]) unless stub[:messages].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FlowExecutionMessages
    class FlowExecutionMessages
      def self.default(visited=[])
        return nil if visited.include?('FlowExecutionMessages')
        visited = visited + ['FlowExecutionMessages']
        [
          FlowExecutionMessage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FlowExecutionMessage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FlowExecutionMessage
    class FlowExecutionMessage
      def self.default(visited=[])
        return nil if visited.include?('FlowExecutionMessage')
        visited = visited + ['FlowExecutionMessage']
        {
          message_id: 'message_id',
          event_type: 'event_type',
          timestamp: Time.now,
          payload: 'payload',
        }
      end

      def self.stub(stub)
        stub ||= Types::FlowExecutionMessage.new
        data = {}
        data['messageId'] = stub[:message_id] unless stub[:message_id].nil?
        data['eventType'] = stub[:event_type] unless stub[:event_type].nil?
        data['timestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:timestamp]).to_i unless stub[:timestamp].nil?
        data['payload'] = stub[:payload] unless stub[:payload].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for SearchEntities
    class SearchEntities
      def self.default(visited=[])
        {
          descriptions: EntityDescriptions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['descriptions'] = EntityDescriptions.stub(stub[:descriptions]) unless stub[:descriptions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SearchFlowExecutions
    class SearchFlowExecutions
      def self.default(visited=[])
        {
          summaries: FlowExecutionSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['summaries'] = FlowExecutionSummaries.stub(stub[:summaries]) unless stub[:summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FlowExecutionSummaries
    class FlowExecutionSummaries
      def self.default(visited=[])
        return nil if visited.include?('FlowExecutionSummaries')
        visited = visited + ['FlowExecutionSummaries']
        [
          FlowExecutionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FlowExecutionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FlowExecutionSummary
    class FlowExecutionSummary
      def self.default(visited=[])
        return nil if visited.include?('FlowExecutionSummary')
        visited = visited + ['FlowExecutionSummary']
        {
          flow_execution_id: 'flow_execution_id',
          status: 'status',
          system_instance_id: 'system_instance_id',
          flow_template_id: 'flow_template_id',
          created_at: Time.now,
          updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::FlowExecutionSummary.new
        data = {}
        data['flowExecutionId'] = stub[:flow_execution_id] unless stub[:flow_execution_id].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['systemInstanceId'] = stub[:system_instance_id] unless stub[:system_instance_id].nil?
        data['flowTemplateId'] = stub[:flow_template_id] unless stub[:flow_template_id].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['updatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data
      end
    end

    # Operation Stubber for SearchFlowTemplates
    class SearchFlowTemplates
      def self.default(visited=[])
        {
          summaries: FlowTemplateSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['summaries'] = FlowTemplateSummaries.stub(stub[:summaries]) unless stub[:summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SearchSystemInstances
    class SearchSystemInstances
      def self.default(visited=[])
        {
          summaries: SystemInstanceSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['summaries'] = SystemInstanceSummaries.stub(stub[:summaries]) unless stub[:summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SystemInstanceSummaries
    class SystemInstanceSummaries
      def self.default(visited=[])
        return nil if visited.include?('SystemInstanceSummaries')
        visited = visited + ['SystemInstanceSummaries']
        [
          SystemInstanceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SystemInstanceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for SearchSystemTemplates
    class SearchSystemTemplates
      def self.default(visited=[])
        {
          summaries: SystemTemplateSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['summaries'] = SystemTemplateSummaries.stub(stub[:summaries]) unless stub[:summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SearchThings
    class SearchThings
      def self.default(visited=[])
        {
          things: Things.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['things'] = Things.stub(stub[:things]) unless stub[:things].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Things
    class Things
      def self.default(visited=[])
        return nil if visited.include?('Things')
        visited = visited + ['Things']
        [
          Thing.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Thing.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Thing
    class Thing
      def self.default(visited=[])
        return nil if visited.include?('Thing')
        visited = visited + ['Thing']
        {
          thing_arn: 'thing_arn',
          thing_name: 'thing_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::Thing.new
        data = {}
        data['thingArn'] = stub[:thing_arn] unless stub[:thing_arn].nil?
        data['thingName'] = stub[:thing_name] unless stub[:thing_name].nil?
        data
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UndeploySystemInstance
    class UndeploySystemInstance
      def self.default(visited=[])
        {
          summary: SystemInstanceSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['summary'] = SystemInstanceSummary.stub(stub[:summary]) unless stub[:summary].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateFlowTemplate
    class UpdateFlowTemplate
      def self.default(visited=[])
        {
          summary: FlowTemplateSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['summary'] = FlowTemplateSummary.stub(stub[:summary]) unless stub[:summary].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateSystemTemplate
    class UpdateSystemTemplate
      def self.default(visited=[])
        {
          summary: SystemTemplateSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['summary'] = SystemTemplateSummary.stub(stub[:summary]) unless stub[:summary].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UploadEntityDefinitions
    class UploadEntityDefinitions
      def self.default(visited=[])
        {
          upload_id: 'upload_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['uploadId'] = stub[:upload_id] unless stub[:upload_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
