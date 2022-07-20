# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DataPipeline
  module Stubs

    # Operation Stubber for ActivatePipeline
    class ActivatePipeline
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for AddTags
    class AddTags
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreatePipeline
    class CreatePipeline
      def self.default(visited=[])
        {
          pipeline_id: 'pipeline_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['pipelineId'] = stub[:pipeline_id] unless stub[:pipeline_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeactivatePipeline
    class DeactivatePipeline
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeletePipeline
    class DeletePipeline
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeObjects
    class DescribeObjects
      def self.default(visited=[])
        {
          pipeline_objects: PipelineObjectList.default(visited),
          marker: 'marker',
          has_more_results: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['pipelineObjects'] = Stubs::PipelineObjectList.stub(stub[:pipeline_objects]) unless stub[:pipeline_objects].nil?
        data['marker'] = stub[:marker] unless stub[:marker].nil?
        data['hasMoreResults'] = stub[:has_more_results] unless stub[:has_more_results].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PipelineObjectList
    class PipelineObjectList
      def self.default(visited=[])
        return nil if visited.include?('PipelineObjectList')
        visited = visited + ['PipelineObjectList']
        [
          PipelineObject.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PipelineObject.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PipelineObject
    class PipelineObject
      def self.default(visited=[])
        return nil if visited.include?('PipelineObject')
        visited = visited + ['PipelineObject']
        {
          id: 'id',
          name: 'name',
          fields: FieldList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PipelineObject.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['fields'] = Stubs::FieldList.stub(stub[:fields]) unless stub[:fields].nil?
        data
      end
    end

    # List Stubber for fieldList
    class FieldList
      def self.default(visited=[])
        return nil if visited.include?('FieldList')
        visited = visited + ['FieldList']
        [
          Field.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Field.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Field
    class Field
      def self.default(visited=[])
        return nil if visited.include?('Field')
        visited = visited + ['Field']
        {
          key: 'key',
          string_value: 'string_value',
          ref_value: 'ref_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Field.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['stringValue'] = stub[:string_value] unless stub[:string_value].nil?
        data['refValue'] = stub[:ref_value] unless stub[:ref_value].nil?
        data
      end
    end

    # Operation Stubber for DescribePipelines
    class DescribePipelines
      def self.default(visited=[])
        {
          pipeline_description_list: PipelineDescriptionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['pipelineDescriptionList'] = Stubs::PipelineDescriptionList.stub(stub[:pipeline_description_list]) unless stub[:pipeline_description_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PipelineDescriptionList
    class PipelineDescriptionList
      def self.default(visited=[])
        return nil if visited.include?('PipelineDescriptionList')
        visited = visited + ['PipelineDescriptionList']
        [
          PipelineDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PipelineDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PipelineDescription
    class PipelineDescription
      def self.default(visited=[])
        return nil if visited.include?('PipelineDescription')
        visited = visited + ['PipelineDescription']
        {
          pipeline_id: 'pipeline_id',
          name: 'name',
          fields: FieldList.default(visited),
          description: 'description',
          tags: TagList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PipelineDescription.new
        data = {}
        data['pipelineId'] = stub[:pipeline_id] unless stub[:pipeline_id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['fields'] = Stubs::FieldList.stub(stub[:fields]) unless stub[:fields].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # List Stubber for tagList
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
          data << Stubs::Tag.stub(element) unless element.nil?
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

    # Operation Stubber for EvaluateExpression
    class EvaluateExpression
      def self.default(visited=[])
        {
          evaluated_expression: 'evaluated_expression',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['evaluatedExpression'] = stub[:evaluated_expression] unless stub[:evaluated_expression].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetPipelineDefinition
    class GetPipelineDefinition
      def self.default(visited=[])
        {
          pipeline_objects: PipelineObjectList.default(visited),
          parameter_objects: ParameterObjectList.default(visited),
          parameter_values: ParameterValueList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['pipelineObjects'] = Stubs::PipelineObjectList.stub(stub[:pipeline_objects]) unless stub[:pipeline_objects].nil?
        data['parameterObjects'] = Stubs::ParameterObjectList.stub(stub[:parameter_objects]) unless stub[:parameter_objects].nil?
        data['parameterValues'] = Stubs::ParameterValueList.stub(stub[:parameter_values]) unless stub[:parameter_values].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ParameterValueList
    class ParameterValueList
      def self.default(visited=[])
        return nil if visited.include?('ParameterValueList')
        visited = visited + ['ParameterValueList']
        [
          ParameterValue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ParameterValue.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ParameterValue
    class ParameterValue
      def self.default(visited=[])
        return nil if visited.include?('ParameterValue')
        visited = visited + ['ParameterValue']
        {
          id: 'id',
          string_value: 'string_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::ParameterValue.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['stringValue'] = stub[:string_value] unless stub[:string_value].nil?
        data
      end
    end

    # List Stubber for ParameterObjectList
    class ParameterObjectList
      def self.default(visited=[])
        return nil if visited.include?('ParameterObjectList')
        visited = visited + ['ParameterObjectList']
        [
          ParameterObject.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ParameterObject.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ParameterObject
    class ParameterObject
      def self.default(visited=[])
        return nil if visited.include?('ParameterObject')
        visited = visited + ['ParameterObject']
        {
          id: 'id',
          attributes: ParameterAttributeList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ParameterObject.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['attributes'] = Stubs::ParameterAttributeList.stub(stub[:attributes]) unless stub[:attributes].nil?
        data
      end
    end

    # List Stubber for ParameterAttributeList
    class ParameterAttributeList
      def self.default(visited=[])
        return nil if visited.include?('ParameterAttributeList')
        visited = visited + ['ParameterAttributeList']
        [
          ParameterAttribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ParameterAttribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ParameterAttribute
    class ParameterAttribute
      def self.default(visited=[])
        return nil if visited.include?('ParameterAttribute')
        visited = visited + ['ParameterAttribute']
        {
          key: 'key',
          string_value: 'string_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::ParameterAttribute.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['stringValue'] = stub[:string_value] unless stub[:string_value].nil?
        data
      end
    end

    # Operation Stubber for ListPipelines
    class ListPipelines
      def self.default(visited=[])
        {
          pipeline_id_list: PipelineList.default(visited),
          marker: 'marker',
          has_more_results: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['pipelineIdList'] = Stubs::PipelineList.stub(stub[:pipeline_id_list]) unless stub[:pipeline_id_list].nil?
        data['marker'] = stub[:marker] unless stub[:marker].nil?
        data['hasMoreResults'] = stub[:has_more_results] unless stub[:has_more_results].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for pipelineList
    class PipelineList
      def self.default(visited=[])
        return nil if visited.include?('PipelineList')
        visited = visited + ['PipelineList']
        [
          PipelineIdName.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PipelineIdName.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PipelineIdName
    class PipelineIdName
      def self.default(visited=[])
        return nil if visited.include?('PipelineIdName')
        visited = visited + ['PipelineIdName']
        {
          id: 'id',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::PipelineIdName.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for PollForTask
    class PollForTask
      def self.default(visited=[])
        {
          task_object: TaskObject.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['taskObject'] = Stubs::TaskObject.stub(stub[:task_object]) unless stub[:task_object].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for TaskObject
    class TaskObject
      def self.default(visited=[])
        return nil if visited.include?('TaskObject')
        visited = visited + ['TaskObject']
        {
          task_id: 'task_id',
          pipeline_id: 'pipeline_id',
          attempt_id: 'attempt_id',
          objects: PipelineObjectMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TaskObject.new
        data = {}
        data['taskId'] = stub[:task_id] unless stub[:task_id].nil?
        data['pipelineId'] = stub[:pipeline_id] unless stub[:pipeline_id].nil?
        data['attemptId'] = stub[:attempt_id] unless stub[:attempt_id].nil?
        data['objects'] = Stubs::PipelineObjectMap.stub(stub[:objects]) unless stub[:objects].nil?
        data
      end
    end

    # Map Stubber for PipelineObjectMap
    class PipelineObjectMap
      def self.default(visited=[])
        return nil if visited.include?('PipelineObjectMap')
        visited = visited + ['PipelineObjectMap']
        {
          test_key: PipelineObject.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::PipelineObject.stub(value) unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for PutPipelineDefinition
    class PutPipelineDefinition
      def self.default(visited=[])
        {
          validation_errors: ValidationErrors.default(visited),
          validation_warnings: ValidationWarnings.default(visited),
          errored: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['validationErrors'] = Stubs::ValidationErrors.stub(stub[:validation_errors]) unless stub[:validation_errors].nil?
        data['validationWarnings'] = Stubs::ValidationWarnings.stub(stub[:validation_warnings]) unless stub[:validation_warnings].nil?
        data['errored'] = stub[:errored] unless stub[:errored].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ValidationWarnings
    class ValidationWarnings
      def self.default(visited=[])
        return nil if visited.include?('ValidationWarnings')
        visited = visited + ['ValidationWarnings']
        [
          ValidationWarning.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ValidationWarning.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ValidationWarning
    class ValidationWarning
      def self.default(visited=[])
        return nil if visited.include?('ValidationWarning')
        visited = visited + ['ValidationWarning']
        {
          id: 'id',
          warnings: ValidationMessages.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ValidationWarning.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['warnings'] = Stubs::ValidationMessages.stub(stub[:warnings]) unless stub[:warnings].nil?
        data
      end
    end

    # List Stubber for validationMessages
    class ValidationMessages
      def self.default(visited=[])
        return nil if visited.include?('ValidationMessages')
        visited = visited + ['ValidationMessages']
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

    # List Stubber for ValidationErrors
    class ValidationErrors
      def self.default(visited=[])
        return nil if visited.include?('ValidationErrors')
        visited = visited + ['ValidationErrors']
        [
          ValidationError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ValidationError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ValidationError
    class ValidationError
      def self.default(visited=[])
        return nil if visited.include?('ValidationError')
        visited = visited + ['ValidationError']
        {
          id: 'id',
          errors: ValidationMessages.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ValidationError.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['errors'] = Stubs::ValidationMessages.stub(stub[:errors]) unless stub[:errors].nil?
        data
      end
    end

    # Operation Stubber for QueryObjects
    class QueryObjects
      def self.default(visited=[])
        {
          ids: IdList.default(visited),
          marker: 'marker',
          has_more_results: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ids'] = Stubs::IdList.stub(stub[:ids]) unless stub[:ids].nil?
        data['marker'] = stub[:marker] unless stub[:marker].nil?
        data['hasMoreResults'] = stub[:has_more_results] unless stub[:has_more_results].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for idList
    class IdList
      def self.default(visited=[])
        return nil if visited.include?('IdList')
        visited = visited + ['IdList']
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

    # Operation Stubber for RemoveTags
    class RemoveTags
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ReportTaskProgress
    class ReportTaskProgress
      def self.default(visited=[])
        {
          canceled: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['canceled'] = stub[:canceled] unless stub[:canceled].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ReportTaskRunnerHeartbeat
    class ReportTaskRunnerHeartbeat
      def self.default(visited=[])
        {
          terminate: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['terminate'] = stub[:terminate] unless stub[:terminate].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetStatus
    class SetStatus
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SetTaskStatus
    class SetTaskStatus
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ValidatePipelineDefinition
    class ValidatePipelineDefinition
      def self.default(visited=[])
        {
          validation_errors: ValidationErrors.default(visited),
          validation_warnings: ValidationWarnings.default(visited),
          errored: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['validationErrors'] = Stubs::ValidationErrors.stub(stub[:validation_errors]) unless stub[:validation_errors].nil?
        data['validationWarnings'] = Stubs::ValidationWarnings.stub(stub[:validation_warnings]) unless stub[:validation_warnings].nil?
        data['errored'] = stub[:errored] unless stub[:errored].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
