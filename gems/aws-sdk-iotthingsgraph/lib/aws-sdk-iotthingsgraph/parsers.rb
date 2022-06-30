# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::IoTThingsGraph
  module Parsers

    # Operation Parser for AssociateEntityToThing
    class AssociateEntityToThing
      def self.parse(http_resp)
        data = Types::AssociateEntityToThingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InternalFailureException
    class InternalFailureException
      def self.parse(http_resp)
        data = Types::InternalFailureException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateFlowTemplate
    class CreateFlowTemplate
      def self.parse(http_resp)
        data = Types::CreateFlowTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.summary = (Parsers::FlowTemplateSummary.parse(map['summary']) unless map['summary'].nil?)
        data
      end
    end

    class FlowTemplateSummary
      def self.parse(map)
        data = Types::FlowTemplateSummary.new
        data.id = map['id']
        data.arn = map['arn']
        data.revision_number = map['revisionNumber']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        return data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ResourceAlreadyExistsException
    class ResourceAlreadyExistsException
      def self.parse(http_resp)
        data = Types::ResourceAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateSystemInstance
    class CreateSystemInstance
      def self.parse(http_resp)
        data = Types::CreateSystemInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.summary = (Parsers::SystemInstanceSummary.parse(map['summary']) unless map['summary'].nil?)
        data
      end
    end

    class SystemInstanceSummary
      def self.parse(map)
        data = Types::SystemInstanceSummary.new
        data.id = map['id']
        data.arn = map['arn']
        data.status = map['status']
        data.target = map['target']
        data.greengrass_group_name = map['greengrassGroupName']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.updated_at = Time.at(map['updatedAt'].to_i) if map['updatedAt']
        data.greengrass_group_id = map['greengrassGroupId']
        data.greengrass_group_version_id = map['greengrassGroupVersionId']
        return data
      end
    end

    # Operation Parser for CreateSystemTemplate
    class CreateSystemTemplate
      def self.parse(http_resp)
        data = Types::CreateSystemTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.summary = (Parsers::SystemTemplateSummary.parse(map['summary']) unless map['summary'].nil?)
        data
      end
    end

    class SystemTemplateSummary
      def self.parse(map)
        data = Types::SystemTemplateSummary.new
        data.id = map['id']
        data.arn = map['arn']
        data.revision_number = map['revisionNumber']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        return data
      end
    end

    # Operation Parser for DeleteFlowTemplate
    class DeleteFlowTemplate
      def self.parse(http_resp)
        data = Types::DeleteFlowTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ResourceInUseException
    class ResourceInUseException
      def self.parse(http_resp)
        data = Types::ResourceInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteNamespace
    class DeleteNamespace
      def self.parse(http_resp)
        data = Types::DeleteNamespaceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.namespace_arn = map['namespaceArn']
        data.namespace_name = map['namespaceName']
        data
      end
    end

    # Operation Parser for DeleteSystemInstance
    class DeleteSystemInstance
      def self.parse(http_resp)
        data = Types::DeleteSystemInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteSystemTemplate
    class DeleteSystemTemplate
      def self.parse(http_resp)
        data = Types::DeleteSystemTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeploySystemInstance
    class DeploySystemInstance
      def self.parse(http_resp)
        data = Types::DeploySystemInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.summary = (Parsers::SystemInstanceSummary.parse(map['summary']) unless map['summary'].nil?)
        data.greengrass_deployment_id = map['greengrassDeploymentId']
        data
      end
    end

    # Operation Parser for DeprecateFlowTemplate
    class DeprecateFlowTemplate
      def self.parse(http_resp)
        data = Types::DeprecateFlowTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeprecateSystemTemplate
    class DeprecateSystemTemplate
      def self.parse(http_resp)
        data = Types::DeprecateSystemTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeNamespace
    class DescribeNamespace
      def self.parse(http_resp)
        data = Types::DescribeNamespaceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.namespace_arn = map['namespaceArn']
        data.namespace_name = map['namespaceName']
        data.tracking_namespace_name = map['trackingNamespaceName']
        data.tracking_namespace_version = map['trackingNamespaceVersion']
        data.namespace_version = map['namespaceVersion']
        data
      end
    end

    # Operation Parser for DissociateEntityFromThing
    class DissociateEntityFromThing
      def self.parse(http_resp)
        data = Types::DissociateEntityFromThingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for GetEntities
    class GetEntities
      def self.parse(http_resp)
        data = Types::GetEntitiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.descriptions = (Parsers::EntityDescriptions.parse(map['descriptions']) unless map['descriptions'].nil?)
        data
      end
    end

    class EntityDescriptions
      def self.parse(list)
        list.map do |value|
          Parsers::EntityDescription.parse(value) unless value.nil?
        end
      end
    end

    class EntityDescription
      def self.parse(map)
        data = Types::EntityDescription.new
        data.id = map['id']
        data.arn = map['arn']
        data.type = map['type']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.definition = (Parsers::DefinitionDocument.parse(map['definition']) unless map['definition'].nil?)
        return data
      end
    end

    class DefinitionDocument
      def self.parse(map)
        data = Types::DefinitionDocument.new
        data.language = map['language']
        data.text = map['text']
        return data
      end
    end

    # Operation Parser for GetFlowTemplate
    class GetFlowTemplate
      def self.parse(http_resp)
        data = Types::GetFlowTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.description = (Parsers::FlowTemplateDescription.parse(map['description']) unless map['description'].nil?)
        data
      end
    end

    class FlowTemplateDescription
      def self.parse(map)
        data = Types::FlowTemplateDescription.new
        data.summary = (Parsers::FlowTemplateSummary.parse(map['summary']) unless map['summary'].nil?)
        data.definition = (Parsers::DefinitionDocument.parse(map['definition']) unless map['definition'].nil?)
        data.validated_namespace_version = map['validatedNamespaceVersion']
        return data
      end
    end

    # Operation Parser for GetFlowTemplateRevisions
    class GetFlowTemplateRevisions
      def self.parse(http_resp)
        data = Types::GetFlowTemplateRevisionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.summaries = (Parsers::FlowTemplateSummaries.parse(map['summaries']) unless map['summaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class FlowTemplateSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::FlowTemplateSummary.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for GetNamespaceDeletionStatus
    class GetNamespaceDeletionStatus
      def self.parse(http_resp)
        data = Types::GetNamespaceDeletionStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.namespace_arn = map['namespaceArn']
        data.namespace_name = map['namespaceName']
        data.status = map['status']
        data.error_code = map['errorCode']
        data.error_message = map['errorMessage']
        data
      end
    end

    # Operation Parser for GetSystemInstance
    class GetSystemInstance
      def self.parse(http_resp)
        data = Types::GetSystemInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.description = (Parsers::SystemInstanceDescription.parse(map['description']) unless map['description'].nil?)
        data
      end
    end

    class SystemInstanceDescription
      def self.parse(map)
        data = Types::SystemInstanceDescription.new
        data.summary = (Parsers::SystemInstanceSummary.parse(map['summary']) unless map['summary'].nil?)
        data.definition = (Parsers::DefinitionDocument.parse(map['definition']) unless map['definition'].nil?)
        data.s3_bucket_name = map['s3BucketName']
        data.metrics_configuration = (Parsers::MetricsConfiguration.parse(map['metricsConfiguration']) unless map['metricsConfiguration'].nil?)
        data.validated_namespace_version = map['validatedNamespaceVersion']
        data.validated_dependency_revisions = (Parsers::DependencyRevisions.parse(map['validatedDependencyRevisions']) unless map['validatedDependencyRevisions'].nil?)
        data.flow_actions_role_arn = map['flowActionsRoleArn']
        return data
      end
    end

    class DependencyRevisions
      def self.parse(list)
        list.map do |value|
          Parsers::DependencyRevision.parse(value) unless value.nil?
        end
      end
    end

    class DependencyRevision
      def self.parse(map)
        data = Types::DependencyRevision.new
        data.id = map['id']
        data.revision_number = map['revisionNumber']
        return data
      end
    end

    class MetricsConfiguration
      def self.parse(map)
        data = Types::MetricsConfiguration.new
        data.cloud_metric_enabled = map['cloudMetricEnabled']
        data.metric_rule_role_arn = map['metricRuleRoleArn']
        return data
      end
    end

    # Operation Parser for GetSystemTemplate
    class GetSystemTemplate
      def self.parse(http_resp)
        data = Types::GetSystemTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.description = (Parsers::SystemTemplateDescription.parse(map['description']) unless map['description'].nil?)
        data
      end
    end

    class SystemTemplateDescription
      def self.parse(map)
        data = Types::SystemTemplateDescription.new
        data.summary = (Parsers::SystemTemplateSummary.parse(map['summary']) unless map['summary'].nil?)
        data.definition = (Parsers::DefinitionDocument.parse(map['definition']) unless map['definition'].nil?)
        data.validated_namespace_version = map['validatedNamespaceVersion']
        return data
      end
    end

    # Operation Parser for GetSystemTemplateRevisions
    class GetSystemTemplateRevisions
      def self.parse(http_resp)
        data = Types::GetSystemTemplateRevisionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.summaries = (Parsers::SystemTemplateSummaries.parse(map['summaries']) unless map['summaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class SystemTemplateSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::SystemTemplateSummary.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for GetUploadStatus
    class GetUploadStatus
      def self.parse(http_resp)
        data = Types::GetUploadStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.upload_id = map['uploadId']
        data.upload_status = map['uploadStatus']
        data.namespace_arn = map['namespaceArn']
        data.namespace_name = map['namespaceName']
        data.namespace_version = map['namespaceVersion']
        data.failure_reason = (Parsers::StringList.parse(map['failureReason']) unless map['failureReason'].nil?)
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data
      end
    end

    class StringList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListFlowExecutionMessages
    class ListFlowExecutionMessages
      def self.parse(http_resp)
        data = Types::ListFlowExecutionMessagesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.messages = (Parsers::FlowExecutionMessages.parse(map['messages']) unless map['messages'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class FlowExecutionMessages
      def self.parse(list)
        list.map do |value|
          Parsers::FlowExecutionMessage.parse(value) unless value.nil?
        end
      end
    end

    class FlowExecutionMessage
      def self.parse(map)
        data = Types::FlowExecutionMessage.new
        data.message_id = map['messageId']
        data.event_type = map['eventType']
        data.timestamp = Time.at(map['timestamp'].to_i) if map['timestamp']
        data.payload = map['payload']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Parsers::TagList.parse(map['tags']) unless map['tags'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['key']
        data.value = map['value']
        return data
      end
    end

    # Operation Parser for SearchEntities
    class SearchEntities
      def self.parse(http_resp)
        data = Types::SearchEntitiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.descriptions = (Parsers::EntityDescriptions.parse(map['descriptions']) unless map['descriptions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for SearchFlowExecutions
    class SearchFlowExecutions
      def self.parse(http_resp)
        data = Types::SearchFlowExecutionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.summaries = (Parsers::FlowExecutionSummaries.parse(map['summaries']) unless map['summaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class FlowExecutionSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::FlowExecutionSummary.parse(value) unless value.nil?
        end
      end
    end

    class FlowExecutionSummary
      def self.parse(map)
        data = Types::FlowExecutionSummary.new
        data.flow_execution_id = map['flowExecutionId']
        data.status = map['status']
        data.system_instance_id = map['systemInstanceId']
        data.flow_template_id = map['flowTemplateId']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.updated_at = Time.at(map['updatedAt'].to_i) if map['updatedAt']
        return data
      end
    end

    # Operation Parser for SearchFlowTemplates
    class SearchFlowTemplates
      def self.parse(http_resp)
        data = Types::SearchFlowTemplatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.summaries = (Parsers::FlowTemplateSummaries.parse(map['summaries']) unless map['summaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for SearchSystemInstances
    class SearchSystemInstances
      def self.parse(http_resp)
        data = Types::SearchSystemInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.summaries = (Parsers::SystemInstanceSummaries.parse(map['summaries']) unless map['summaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class SystemInstanceSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::SystemInstanceSummary.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for SearchSystemTemplates
    class SearchSystemTemplates
      def self.parse(http_resp)
        data = Types::SearchSystemTemplatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.summaries = (Parsers::SystemTemplateSummaries.parse(map['summaries']) unless map['summaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for SearchThings
    class SearchThings
      def self.parse(http_resp)
        data = Types::SearchThingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.things = (Parsers::Things.parse(map['things']) unless map['things'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Things
      def self.parse(list)
        list.map do |value|
          Parsers::Thing.parse(value) unless value.nil?
        end
      end
    end

    class Thing
      def self.parse(map)
        data = Types::Thing.new
        data.thing_arn = map['thingArn']
        data.thing_name = map['thingName']
        return data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UndeploySystemInstance
    class UndeploySystemInstance
      def self.parse(http_resp)
        data = Types::UndeploySystemInstanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.summary = (Parsers::SystemInstanceSummary.parse(map['summary']) unless map['summary'].nil?)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateFlowTemplate
    class UpdateFlowTemplate
      def self.parse(http_resp)
        data = Types::UpdateFlowTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.summary = (Parsers::FlowTemplateSummary.parse(map['summary']) unless map['summary'].nil?)
        data
      end
    end

    # Operation Parser for UpdateSystemTemplate
    class UpdateSystemTemplate
      def self.parse(http_resp)
        data = Types::UpdateSystemTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.summary = (Parsers::SystemTemplateSummary.parse(map['summary']) unless map['summary'].nil?)
        data
      end
    end

    # Operation Parser for UploadEntityDefinitions
    class UploadEntityDefinitions
      def self.parse(http_resp)
        data = Types::UploadEntityDefinitionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.upload_id = map['uploadId']
        data
      end
    end
  end
end
