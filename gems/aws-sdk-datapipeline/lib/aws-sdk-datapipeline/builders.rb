# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::DataPipeline
  module Builders

    # Operation Builder for ActivatePipeline
    class ActivatePipeline
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DataPipeline.ActivatePipeline'
        data = {}
        data['pipelineId'] = input[:pipeline_id] unless input[:pipeline_id].nil?
        data['parameterValues'] = Builders::ParameterValueList.build(input[:parameter_values]) unless input[:parameter_values].nil?
        data['startTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_timestamp]).to_i unless input[:start_timestamp].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ParameterValueList
    class ParameterValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ParameterValue.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ParameterValue
    class ParameterValue
      def self.build(input)
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['stringValue'] = input[:string_value] unless input[:string_value].nil?
        data
      end
    end

    # Operation Builder for AddTags
    class AddTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DataPipeline.AddTags'
        data = {}
        data['pipelineId'] = input[:pipeline_id] unless input[:pipeline_id].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for tagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
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

    # Operation Builder for CreatePipeline
    class CreatePipeline
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DataPipeline.CreatePipeline'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['uniqueId'] = input[:unique_id] unless input[:unique_id].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeactivatePipeline
    class DeactivatePipeline
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DataPipeline.DeactivatePipeline'
        data = {}
        data['pipelineId'] = input[:pipeline_id] unless input[:pipeline_id].nil?
        data['cancelActive'] = input[:cancel_active] unless input[:cancel_active].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeletePipeline
    class DeletePipeline
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DataPipeline.DeletePipeline'
        data = {}
        data['pipelineId'] = input[:pipeline_id] unless input[:pipeline_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeObjects
    class DescribeObjects
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DataPipeline.DescribeObjects'
        data = {}
        data['pipelineId'] = input[:pipeline_id] unless input[:pipeline_id].nil?
        data['objectIds'] = Builders::IdList.build(input[:object_ids]) unless input[:object_ids].nil?
        data['evaluateExpressions'] = input[:evaluate_expressions] unless input[:evaluate_expressions].nil?
        data['marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for idList
    class IdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribePipelines
    class DescribePipelines
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DataPipeline.DescribePipelines'
        data = {}
        data['pipelineIds'] = Builders::IdList.build(input[:pipeline_ids]) unless input[:pipeline_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for EvaluateExpression
    class EvaluateExpression
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DataPipeline.EvaluateExpression'
        data = {}
        data['pipelineId'] = input[:pipeline_id] unless input[:pipeline_id].nil?
        data['objectId'] = input[:member_object_id] unless input[:member_object_id].nil?
        data['expression'] = input[:expression] unless input[:expression].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetPipelineDefinition
    class GetPipelineDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DataPipeline.GetPipelineDefinition'
        data = {}
        data['pipelineId'] = input[:pipeline_id] unless input[:pipeline_id].nil?
        data['version'] = input[:version] unless input[:version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPipelines
    class ListPipelines
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DataPipeline.ListPipelines'
        data = {}
        data['marker'] = input[:marker] unless input[:marker].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PollForTask
    class PollForTask
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DataPipeline.PollForTask'
        data = {}
        data['workerGroup'] = input[:worker_group] unless input[:worker_group].nil?
        data['hostname'] = input[:hostname] unless input[:hostname].nil?
        data['instanceIdentity'] = Builders::InstanceIdentity.build(input[:instance_identity]) unless input[:instance_identity].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for InstanceIdentity
    class InstanceIdentity
      def self.build(input)
        data = {}
        data['document'] = input[:document] unless input[:document].nil?
        data['signature'] = input[:signature] unless input[:signature].nil?
        data
      end
    end

    # Operation Builder for PutPipelineDefinition
    class PutPipelineDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DataPipeline.PutPipelineDefinition'
        data = {}
        data['pipelineId'] = input[:pipeline_id] unless input[:pipeline_id].nil?
        data['pipelineObjects'] = Builders::PipelineObjectList.build(input[:pipeline_objects]) unless input[:pipeline_objects].nil?
        data['parameterObjects'] = Builders::ParameterObjectList.build(input[:parameter_objects]) unless input[:parameter_objects].nil?
        data['parameterValues'] = Builders::ParameterValueList.build(input[:parameter_values]) unless input[:parameter_values].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ParameterObjectList
    class ParameterObjectList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ParameterObject.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ParameterObject
    class ParameterObject
      def self.build(input)
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['attributes'] = Builders::ParameterAttributeList.build(input[:attributes]) unless input[:attributes].nil?
        data
      end
    end

    # List Builder for ParameterAttributeList
    class ParameterAttributeList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ParameterAttribute.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ParameterAttribute
    class ParameterAttribute
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['stringValue'] = input[:string_value] unless input[:string_value].nil?
        data
      end
    end

    # List Builder for PipelineObjectList
    class PipelineObjectList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PipelineObject.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PipelineObject
    class PipelineObject
      def self.build(input)
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['fields'] = Builders::FieldList.build(input[:fields]) unless input[:fields].nil?
        data
      end
    end

    # List Builder for fieldList
    class FieldList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Field.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Field
    class Field
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['stringValue'] = input[:string_value] unless input[:string_value].nil?
        data['refValue'] = input[:ref_value] unless input[:ref_value].nil?
        data
      end
    end

    # Operation Builder for QueryObjects
    class QueryObjects
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DataPipeline.QueryObjects'
        data = {}
        data['pipelineId'] = input[:pipeline_id] unless input[:pipeline_id].nil?
        data['query'] = Builders::Query.build(input[:query]) unless input[:query].nil?
        data['sphere'] = input[:sphere] unless input[:sphere].nil?
        data['marker'] = input[:marker] unless input[:marker].nil?
        data['limit'] = input[:limit] unless input[:limit].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Query
    class Query
      def self.build(input)
        data = {}
        data['selectors'] = Builders::SelectorList.build(input[:selectors]) unless input[:selectors].nil?
        data
      end
    end

    # List Builder for SelectorList
    class SelectorList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Selector.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Selector
    class Selector
      def self.build(input)
        data = {}
        data['fieldName'] = input[:field_name] unless input[:field_name].nil?
        data['operator'] = Builders::Operator.build(input[:operator]) unless input[:operator].nil?
        data
      end
    end

    # Structure Builder for Operator
    class Operator
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['values'] = Builders::StringList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for stringList
    class StringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for RemoveTags
    class RemoveTags
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DataPipeline.RemoveTags'
        data = {}
        data['pipelineId'] = input[:pipeline_id] unless input[:pipeline_id].nil?
        data['tagKeys'] = Builders::StringList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ReportTaskProgress
    class ReportTaskProgress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DataPipeline.ReportTaskProgress'
        data = {}
        data['taskId'] = input[:task_id] unless input[:task_id].nil?
        data['fields'] = Builders::FieldList.build(input[:fields]) unless input[:fields].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ReportTaskRunnerHeartbeat
    class ReportTaskRunnerHeartbeat
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DataPipeline.ReportTaskRunnerHeartbeat'
        data = {}
        data['taskrunnerId'] = input[:taskrunner_id] unless input[:taskrunner_id].nil?
        data['workerGroup'] = input[:worker_group] unless input[:worker_group].nil?
        data['hostname'] = input[:hostname] unless input[:hostname].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SetStatus
    class SetStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DataPipeline.SetStatus'
        data = {}
        data['pipelineId'] = input[:pipeline_id] unless input[:pipeline_id].nil?
        data['objectIds'] = Builders::IdList.build(input[:object_ids]) unless input[:object_ids].nil?
        data['status'] = input[:status] unless input[:status].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SetTaskStatus
    class SetTaskStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DataPipeline.SetTaskStatus'
        data = {}
        data['taskId'] = input[:task_id] unless input[:task_id].nil?
        data['taskStatus'] = input[:task_status] unless input[:task_status].nil?
        data['errorId'] = input[:error_id] unless input[:error_id].nil?
        data['errorMessage'] = input[:error_message] unless input[:error_message].nil?
        data['errorStackTrace'] = input[:error_stack_trace] unless input[:error_stack_trace].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ValidatePipelineDefinition
    class ValidatePipelineDefinition
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'DataPipeline.ValidatePipelineDefinition'
        data = {}
        data['pipelineId'] = input[:pipeline_id] unless input[:pipeline_id].nil?
        data['pipelineObjects'] = Builders::PipelineObjectList.build(input[:pipeline_objects]) unless input[:pipeline_objects].nil?
        data['parameterObjects'] = Builders::ParameterObjectList.build(input[:parameter_objects]) unless input[:parameter_objects].nil?
        data['parameterValues'] = Builders::ParameterValueList.build(input[:parameter_values]) unless input[:parameter_values].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
