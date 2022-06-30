# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::DataPipeline
  module Parsers

    # Operation Parser for ActivatePipeline
    class ActivatePipeline
      def self.parse(http_resp)
        data = Types::ActivatePipelineOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InternalServiceError
    class InternalServiceError
      def self.parse(http_resp)
        data = Types::InternalServiceError.new
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

    # Error Parser for PipelineDeletedException
    class PipelineDeletedException
      def self.parse(http_resp)
        data = Types::PipelineDeletedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for PipelineNotFoundException
    class PipelineNotFoundException
      def self.parse(http_resp)
        data = Types::PipelineNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for AddTags
    class AddTags
      def self.parse(http_resp)
        data = Types::AddTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreatePipeline
    class CreatePipeline
      def self.parse(http_resp)
        data = Types::CreatePipelineOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pipeline_id = map['pipelineId']
        data
      end
    end

    # Operation Parser for DeactivatePipeline
    class DeactivatePipeline
      def self.parse(http_resp)
        data = Types::DeactivatePipelineOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeletePipeline
    class DeletePipeline
      def self.parse(http_resp)
        data = Types::DeletePipelineOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeObjects
    class DescribeObjects
      def self.parse(http_resp)
        data = Types::DescribeObjectsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pipeline_objects = (Parsers::PipelineObjectList.parse(map['pipelineObjects']) unless map['pipelineObjects'].nil?)
        data.marker = map['marker']
        data.has_more_results = map['hasMoreResults']
        data
      end
    end

    class PipelineObjectList
      def self.parse(list)
        list.map do |value|
          Parsers::PipelineObject.parse(value) unless value.nil?
        end
      end
    end

    class PipelineObject
      def self.parse(map)
        data = Types::PipelineObject.new
        data.id = map['id']
        data.name = map['name']
        data.fields = (Parsers::FieldList.parse(map['fields']) unless map['fields'].nil?)
        return data
      end
    end

    class FieldList
      def self.parse(list)
        list.map do |value|
          Parsers::Field.parse(value) unless value.nil?
        end
      end
    end

    class Field
      def self.parse(map)
        data = Types::Field.new
        data.key = map['key']
        data.string_value = map['stringValue']
        data.ref_value = map['refValue']
        return data
      end
    end

    # Operation Parser for DescribePipelines
    class DescribePipelines
      def self.parse(http_resp)
        data = Types::DescribePipelinesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pipeline_description_list = (Parsers::PipelineDescriptionList.parse(map['pipelineDescriptionList']) unless map['pipelineDescriptionList'].nil?)
        data
      end
    end

    class PipelineDescriptionList
      def self.parse(list)
        list.map do |value|
          Parsers::PipelineDescription.parse(value) unless value.nil?
        end
      end
    end

    class PipelineDescription
      def self.parse(map)
        data = Types::PipelineDescription.new
        data.pipeline_id = map['pipelineId']
        data.name = map['name']
        data.fields = (Parsers::FieldList.parse(map['fields']) unless map['fields'].nil?)
        data.description = map['description']
        data.tags = (Parsers::TagList.parse(map['tags']) unless map['tags'].nil?)
        return data
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

    # Operation Parser for EvaluateExpression
    class EvaluateExpression
      def self.parse(http_resp)
        data = Types::EvaluateExpressionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.evaluated_expression = map['evaluatedExpression']
        data
      end
    end

    # Error Parser for TaskNotFoundException
    class TaskNotFoundException
      def self.parse(http_resp)
        data = Types::TaskNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for GetPipelineDefinition
    class GetPipelineDefinition
      def self.parse(http_resp)
        data = Types::GetPipelineDefinitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pipeline_objects = (Parsers::PipelineObjectList.parse(map['pipelineObjects']) unless map['pipelineObjects'].nil?)
        data.parameter_objects = (Parsers::ParameterObjectList.parse(map['parameterObjects']) unless map['parameterObjects'].nil?)
        data.parameter_values = (Parsers::ParameterValueList.parse(map['parameterValues']) unless map['parameterValues'].nil?)
        data
      end
    end

    class ParameterValueList
      def self.parse(list)
        list.map do |value|
          Parsers::ParameterValue.parse(value) unless value.nil?
        end
      end
    end

    class ParameterValue
      def self.parse(map)
        data = Types::ParameterValue.new
        data.id = map['id']
        data.string_value = map['stringValue']
        return data
      end
    end

    class ParameterObjectList
      def self.parse(list)
        list.map do |value|
          Parsers::ParameterObject.parse(value) unless value.nil?
        end
      end
    end

    class ParameterObject
      def self.parse(map)
        data = Types::ParameterObject.new
        data.id = map['id']
        data.attributes = (Parsers::ParameterAttributeList.parse(map['attributes']) unless map['attributes'].nil?)
        return data
      end
    end

    class ParameterAttributeList
      def self.parse(list)
        list.map do |value|
          Parsers::ParameterAttribute.parse(value) unless value.nil?
        end
      end
    end

    class ParameterAttribute
      def self.parse(map)
        data = Types::ParameterAttribute.new
        data.key = map['key']
        data.string_value = map['stringValue']
        return data
      end
    end

    # Operation Parser for ListPipelines
    class ListPipelines
      def self.parse(http_resp)
        data = Types::ListPipelinesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pipeline_id_list = (Parsers::PipelineList.parse(map['pipelineIdList']) unless map['pipelineIdList'].nil?)
        data.marker = map['marker']
        data.has_more_results = map['hasMoreResults']
        data
      end
    end

    class PipelineList
      def self.parse(list)
        list.map do |value|
          Parsers::PipelineIdName.parse(value) unless value.nil?
        end
      end
    end

    class PipelineIdName
      def self.parse(map)
        data = Types::PipelineIdName.new
        data.id = map['id']
        data.name = map['name']
        return data
      end
    end

    # Operation Parser for PollForTask
    class PollForTask
      def self.parse(http_resp)
        data = Types::PollForTaskOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.task_object = (Parsers::TaskObject.parse(map['taskObject']) unless map['taskObject'].nil?)
        data
      end
    end

    class TaskObject
      def self.parse(map)
        data = Types::TaskObject.new
        data.task_id = map['taskId']
        data.pipeline_id = map['pipelineId']
        data.attempt_id = map['attemptId']
        data.objects = (Parsers::PipelineObjectMap.parse(map['objects']) unless map['objects'].nil?)
        return data
      end
    end

    class PipelineObjectMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::PipelineObject.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for PutPipelineDefinition
    class PutPipelineDefinition
      def self.parse(http_resp)
        data = Types::PutPipelineDefinitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.validation_errors = (Parsers::ValidationErrors.parse(map['validationErrors']) unless map['validationErrors'].nil?)
        data.validation_warnings = (Parsers::ValidationWarnings.parse(map['validationWarnings']) unless map['validationWarnings'].nil?)
        data.errored = map['errored']
        data
      end
    end

    class ValidationWarnings
      def self.parse(list)
        list.map do |value|
          Parsers::ValidationWarning.parse(value) unless value.nil?
        end
      end
    end

    class ValidationWarning
      def self.parse(map)
        data = Types::ValidationWarning.new
        data.id = map['id']
        data.warnings = (Parsers::ValidationMessages.parse(map['warnings']) unless map['warnings'].nil?)
        return data
      end
    end

    class ValidationMessages
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ValidationErrors
      def self.parse(list)
        list.map do |value|
          Parsers::ValidationError.parse(value) unless value.nil?
        end
      end
    end

    class ValidationError
      def self.parse(map)
        data = Types::ValidationError.new
        data.id = map['id']
        data.errors = (Parsers::ValidationMessages.parse(map['errors']) unless map['errors'].nil?)
        return data
      end
    end

    # Operation Parser for QueryObjects
    class QueryObjects
      def self.parse(http_resp)
        data = Types::QueryObjectsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ids = (Parsers::IdList.parse(map['ids']) unless map['ids'].nil?)
        data.marker = map['marker']
        data.has_more_results = map['hasMoreResults']
        data
      end
    end

    class IdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for RemoveTags
    class RemoveTags
      def self.parse(http_resp)
        data = Types::RemoveTagsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ReportTaskProgress
    class ReportTaskProgress
      def self.parse(http_resp)
        data = Types::ReportTaskProgressOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.canceled = map['canceled']
        data
      end
    end

    # Operation Parser for ReportTaskRunnerHeartbeat
    class ReportTaskRunnerHeartbeat
      def self.parse(http_resp)
        data = Types::ReportTaskRunnerHeartbeatOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.terminate = map['terminate']
        data
      end
    end

    # Operation Parser for SetStatus
    class SetStatus
      def self.parse(http_resp)
        data = Types::SetStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for SetTaskStatus
    class SetTaskStatus
      def self.parse(http_resp)
        data = Types::SetTaskStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ValidatePipelineDefinition
    class ValidatePipelineDefinition
      def self.parse(http_resp)
        data = Types::ValidatePipelineDefinitionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.validation_errors = (Parsers::ValidationErrors.parse(map['validationErrors']) unless map['validationErrors'].nil?)
        data.validation_warnings = (Parsers::ValidationWarnings.parse(map['validationWarnings']) unless map['validationWarnings'].nil?)
        data.errored = map['errored']
        data
      end
    end
  end
end
