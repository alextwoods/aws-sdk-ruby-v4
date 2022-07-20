# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::IoTThingsGraph
  module Builders

    # Operation Builder for AssociateEntityToThing
    class AssociateEntityToThing
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.AssociateEntityToThing'
        data = {}
        data['thingName'] = input[:thing_name] unless input[:thing_name].nil?
        data['entityId'] = input[:entity_id] unless input[:entity_id].nil?
        data['namespaceVersion'] = input[:namespace_version] unless input[:namespace_version].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateFlowTemplate
    class CreateFlowTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.CreateFlowTemplate'
        data = {}
        data['definition'] = DefinitionDocument.build(input[:definition]) unless input[:definition].nil?
        data['compatibleNamespaceVersion'] = input[:compatible_namespace_version] unless input[:compatible_namespace_version].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DefinitionDocument
    class DefinitionDocument
      def self.build(input)
        data = {}
        data['language'] = input[:language] unless input[:language].nil?
        data['text'] = input[:text] unless input[:text].nil?
        data
      end
    end

    # Operation Builder for CreateSystemInstance
    class CreateSystemInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.CreateSystemInstance'
        data = {}
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        data['definition'] = DefinitionDocument.build(input[:definition]) unless input[:definition].nil?
        data['target'] = input[:target] unless input[:target].nil?
        data['greengrassGroupName'] = input[:greengrass_group_name] unless input[:greengrass_group_name].nil?
        data['s3BucketName'] = input[:s3_bucket_name] unless input[:s3_bucket_name].nil?
        data['metricsConfiguration'] = MetricsConfiguration.build(input[:metrics_configuration]) unless input[:metrics_configuration].nil?
        data['flowActionsRoleArn'] = input[:flow_actions_role_arn] unless input[:flow_actions_role_arn].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for MetricsConfiguration
    class MetricsConfiguration
      def self.build(input)
        data = {}
        data['cloudMetricEnabled'] = input[:cloud_metric_enabled] unless input[:cloud_metric_enabled].nil?
        data['metricRuleRoleArn'] = input[:metric_rule_role_arn] unless input[:metric_rule_role_arn].nil?
        data
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateSystemTemplate
    class CreateSystemTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.CreateSystemTemplate'
        data = {}
        data['definition'] = DefinitionDocument.build(input[:definition]) unless input[:definition].nil?
        data['compatibleNamespaceVersion'] = input[:compatible_namespace_version] unless input[:compatible_namespace_version].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteFlowTemplate
    class DeleteFlowTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.DeleteFlowTemplate'
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteNamespace
    class DeleteNamespace
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.DeleteNamespace'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteSystemInstance
    class DeleteSystemInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.DeleteSystemInstance'
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteSystemTemplate
    class DeleteSystemTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.DeleteSystemTemplate'
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeploySystemInstance
    class DeploySystemInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.DeploySystemInstance'
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeprecateFlowTemplate
    class DeprecateFlowTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.DeprecateFlowTemplate'
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeprecateSystemTemplate
    class DeprecateSystemTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.DeprecateSystemTemplate'
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeNamespace
    class DescribeNamespace
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.DescribeNamespace'
        data = {}
        data['namespaceName'] = input[:namespace_name] unless input[:namespace_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DissociateEntityFromThing
    class DissociateEntityFromThing
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.DissociateEntityFromThing'
        data = {}
        data['thingName'] = input[:thing_name] unless input[:thing_name].nil?
        data['entityType'] = input[:entity_type] unless input[:entity_type].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetEntities
    class GetEntities
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.GetEntities'
        data = {}
        data['ids'] = Urns.build(input[:ids]) unless input[:ids].nil?
        data['namespaceVersion'] = input[:namespace_version] unless input[:namespace_version].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Urns
    class Urns
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetFlowTemplate
    class GetFlowTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.GetFlowTemplate'
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['revisionNumber'] = input[:revision_number] unless input[:revision_number].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetFlowTemplateRevisions
    class GetFlowTemplateRevisions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.GetFlowTemplateRevisions'
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetNamespaceDeletionStatus
    class GetNamespaceDeletionStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.GetNamespaceDeletionStatus'
        data = {}
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetSystemInstance
    class GetSystemInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.GetSystemInstance'
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetSystemTemplate
    class GetSystemTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.GetSystemTemplate'
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['revisionNumber'] = input[:revision_number] unless input[:revision_number].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetSystemTemplateRevisions
    class GetSystemTemplateRevisions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.GetSystemTemplateRevisions'
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetUploadStatus
    class GetUploadStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.GetUploadStatus'
        data = {}
        data['uploadId'] = input[:upload_id] unless input[:upload_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListFlowExecutionMessages
    class ListFlowExecutionMessages
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.ListFlowExecutionMessages'
        data = {}
        data['flowExecutionId'] = input[:flow_execution_id] unless input[:flow_execution_id].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.ListTagsForResource'
        data = {}
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SearchEntities
    class SearchEntities
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.SearchEntities'
        data = {}
        data['entityTypes'] = EntityTypes.build(input[:entity_types]) unless input[:entity_types].nil?
        data['filters'] = EntityFilters.build(input[:filters]) unless input[:filters].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['namespaceVersion'] = input[:namespace_version] unless input[:namespace_version].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for EntityFilters
    class EntityFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << EntityFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EntityFilter
    class EntityFilter
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['value'] = EntityFilterValues.build(input[:value]) unless input[:value].nil?
        data
      end
    end

    # List Builder for EntityFilterValues
    class EntityFilterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for EntityTypes
    class EntityTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for SearchFlowExecutions
    class SearchFlowExecutions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.SearchFlowExecutions'
        data = {}
        data['systemInstanceId'] = input[:system_instance_id] unless input[:system_instance_id].nil?
        data['flowExecutionId'] = input[:flow_execution_id] unless input[:flow_execution_id].nil?
        data['startTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['endTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SearchFlowTemplates
    class SearchFlowTemplates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.SearchFlowTemplates'
        data = {}
        data['filters'] = FlowTemplateFilters.build(input[:filters]) unless input[:filters].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for FlowTemplateFilters
    class FlowTemplateFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << FlowTemplateFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for FlowTemplateFilter
    class FlowTemplateFilter
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['value'] = FlowTemplateFilterValues.build(input[:value]) unless input[:value].nil?
        data
      end
    end

    # List Builder for FlowTemplateFilterValues
    class FlowTemplateFilterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for SearchSystemInstances
    class SearchSystemInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.SearchSystemInstances'
        data = {}
        data['filters'] = SystemInstanceFilters.build(input[:filters]) unless input[:filters].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SystemInstanceFilters
    class SystemInstanceFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << SystemInstanceFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SystemInstanceFilter
    class SystemInstanceFilter
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['value'] = SystemInstanceFilterValues.build(input[:value]) unless input[:value].nil?
        data
      end
    end

    # List Builder for SystemInstanceFilterValues
    class SystemInstanceFilterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for SearchSystemTemplates
    class SearchSystemTemplates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.SearchSystemTemplates'
        data = {}
        data['filters'] = SystemTemplateFilters.build(input[:filters]) unless input[:filters].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SystemTemplateFilters
    class SystemTemplateFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << SystemTemplateFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SystemTemplateFilter
    class SystemTemplateFilter
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['value'] = SystemTemplateFilterValues.build(input[:value]) unless input[:value].nil?
        data
      end
    end

    # List Builder for SystemTemplateFilterValues
    class SystemTemplateFilterValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for SearchThings
    class SearchThings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.SearchThings'
        data = {}
        data['entityId'] = input[:entity_id] unless input[:entity_id].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['namespaceVersion'] = input[:namespace_version] unless input[:namespace_version].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.TagResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tags'] = TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UndeploySystemInstance
    class UndeploySystemInstance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.UndeploySystemInstance'
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.UntagResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tagKeys'] = TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateFlowTemplate
    class UpdateFlowTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.UpdateFlowTemplate'
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['definition'] = DefinitionDocument.build(input[:definition]) unless input[:definition].nil?
        data['compatibleNamespaceVersion'] = input[:compatible_namespace_version] unless input[:compatible_namespace_version].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateSystemTemplate
    class UpdateSystemTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.UpdateSystemTemplate'
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['definition'] = DefinitionDocument.build(input[:definition]) unless input[:definition].nil?
        data['compatibleNamespaceVersion'] = input[:compatible_namespace_version] unless input[:compatible_namespace_version].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UploadEntityDefinitions
    class UploadEntityDefinitions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'IotThingsGraphFrontEndService.UploadEntityDefinitions'
        data = {}
        data['document'] = DefinitionDocument.build(input[:document]) unless input[:document].nil?
        data['syncWithPublicNamespace'] = input[:sync_with_public_namespace] unless input[:sync_with_public_namespace].nil?
        data['deprecateExistingEntities'] = input[:deprecate_existing_entities] unless input[:deprecate_existing_entities].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
