# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::DataPipeline
  module Params

    module ActivatePipelineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivatePipelineInput, context: context)
        type = Types::ActivatePipelineInput.new
        type.pipeline_id = params[:pipeline_id]
        type.parameter_values = ParameterValueList.build(params[:parameter_values], context: "#{context}[:parameter_values]") unless params[:parameter_values].nil?
        type.start_timestamp = params[:start_timestamp]
        type
      end
    end

    module ActivatePipelineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActivatePipelineOutput, context: context)
        type = Types::ActivatePipelineOutput.new
        type
      end
    end

    module AddTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsInput, context: context)
        type = Types::AddTagsInput.new
        type.pipeline_id = params[:pipeline_id]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module AddTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsOutput, context: context)
        type = Types::AddTagsOutput.new
        type
      end
    end

    module CreatePipelineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePipelineInput, context: context)
        type = Types::CreatePipelineInput.new
        type.name = params[:name]
        type.unique_id = params[:unique_id]
        type.description = params[:description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreatePipelineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePipelineOutput, context: context)
        type = Types::CreatePipelineOutput.new
        type.pipeline_id = params[:pipeline_id]
        type
      end
    end

    module DeactivatePipelineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeactivatePipelineInput, context: context)
        type = Types::DeactivatePipelineInput.new
        type.pipeline_id = params[:pipeline_id]
        type.cancel_active = params[:cancel_active]
        type
      end
    end

    module DeactivatePipelineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeactivatePipelineOutput, context: context)
        type = Types::DeactivatePipelineOutput.new
        type
      end
    end

    module DeletePipelineInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePipelineInput, context: context)
        type = Types::DeletePipelineInput.new
        type.pipeline_id = params[:pipeline_id]
        type
      end
    end

    module DeletePipelineOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePipelineOutput, context: context)
        type = Types::DeletePipelineOutput.new
        type
      end
    end

    module DescribeObjectsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeObjectsInput, context: context)
        type = Types::DescribeObjectsInput.new
        type.pipeline_id = params[:pipeline_id]
        type.object_ids = IdList.build(params[:object_ids], context: "#{context}[:object_ids]") unless params[:object_ids].nil?
        type.evaluate_expressions = params[:evaluate_expressions]
        type.marker = params[:marker]
        type
      end
    end

    module DescribeObjectsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeObjectsOutput, context: context)
        type = Types::DescribeObjectsOutput.new
        type.pipeline_objects = PipelineObjectList.build(params[:pipeline_objects], context: "#{context}[:pipeline_objects]") unless params[:pipeline_objects].nil?
        type.marker = params[:marker]
        type.has_more_results = params[:has_more_results]
        type
      end
    end

    module DescribePipelinesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePipelinesInput, context: context)
        type = Types::DescribePipelinesInput.new
        type.pipeline_ids = IdList.build(params[:pipeline_ids], context: "#{context}[:pipeline_ids]") unless params[:pipeline_ids].nil?
        type
      end
    end

    module DescribePipelinesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePipelinesOutput, context: context)
        type = Types::DescribePipelinesOutput.new
        type.pipeline_description_list = PipelineDescriptionList.build(params[:pipeline_description_list], context: "#{context}[:pipeline_description_list]") unless params[:pipeline_description_list].nil?
        type
      end
    end

    module EvaluateExpressionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EvaluateExpressionInput, context: context)
        type = Types::EvaluateExpressionInput.new
        type.pipeline_id = params[:pipeline_id]
        type.member_object_id = params[:member_object_id]
        type.expression = params[:expression]
        type
      end
    end

    module EvaluateExpressionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EvaluateExpressionOutput, context: context)
        type = Types::EvaluateExpressionOutput.new
        type.evaluated_expression = params[:evaluated_expression]
        type
      end
    end

    module Field
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Field, context: context)
        type = Types::Field.new
        type.key = params[:key]
        type.string_value = params[:string_value]
        type.ref_value = params[:ref_value]
        type
      end
    end

    module GetPipelineDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPipelineDefinitionInput, context: context)
        type = Types::GetPipelineDefinitionInput.new
        type.pipeline_id = params[:pipeline_id]
        type.version = params[:version]
        type
      end
    end

    module GetPipelineDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPipelineDefinitionOutput, context: context)
        type = Types::GetPipelineDefinitionOutput.new
        type.pipeline_objects = PipelineObjectList.build(params[:pipeline_objects], context: "#{context}[:pipeline_objects]") unless params[:pipeline_objects].nil?
        type.parameter_objects = ParameterObjectList.build(params[:parameter_objects], context: "#{context}[:parameter_objects]") unless params[:parameter_objects].nil?
        type.parameter_values = ParameterValueList.build(params[:parameter_values], context: "#{context}[:parameter_values]") unless params[:parameter_values].nil?
        type
      end
    end

    module InstanceIdentity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceIdentity, context: context)
        type = Types::InstanceIdentity.new
        type.document = params[:document]
        type.signature = params[:signature]
        type
      end
    end

    module InternalServiceError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServiceError, context: context)
        type = Types::InternalServiceError.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.message = params[:message]
        type
      end
    end

    module ListPipelinesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPipelinesInput, context: context)
        type = Types::ListPipelinesInput.new
        type.marker = params[:marker]
        type
      end
    end

    module ListPipelinesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPipelinesOutput, context: context)
        type = Types::ListPipelinesOutput.new
        type.pipeline_id_list = PipelineList.build(params[:pipeline_id_list], context: "#{context}[:pipeline_id_list]") unless params[:pipeline_id_list].nil?
        type.marker = params[:marker]
        type.has_more_results = params[:has_more_results]
        type
      end
    end

    module Operator
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Operator, context: context)
        type = Types::Operator.new
        type.type = params[:type]
        type.values = StringList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module ParameterAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterAttribute, context: context)
        type = Types::ParameterAttribute.new
        type.key = params[:key]
        type.string_value = params[:string_value]
        type
      end
    end

    module ParameterAttributeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ParameterAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ParameterObject
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterObject, context: context)
        type = Types::ParameterObject.new
        type.id = params[:id]
        type.attributes = ParameterAttributeList.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module ParameterObjectList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ParameterObject.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ParameterValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterValue, context: context)
        type = Types::ParameterValue.new
        type.id = params[:id]
        type.string_value = params[:string_value]
        type
      end
    end

    module ParameterValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ParameterValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PipelineDeletedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PipelineDeletedException, context: context)
        type = Types::PipelineDeletedException.new
        type.message = params[:message]
        type
      end
    end

    module PipelineDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PipelineDescription, context: context)
        type = Types::PipelineDescription.new
        type.pipeline_id = params[:pipeline_id]
        type.name = params[:name]
        type.fields = FieldList.build(params[:fields], context: "#{context}[:fields]") unless params[:fields].nil?
        type.description = params[:description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PipelineDescriptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PipelineDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PipelineIdName
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PipelineIdName, context: context)
        type = Types::PipelineIdName.new
        type.id = params[:id]
        type.name = params[:name]
        type
      end
    end

    module PipelineNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PipelineNotFoundException, context: context)
        type = Types::PipelineNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module PipelineObject
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PipelineObject, context: context)
        type = Types::PipelineObject.new
        type.id = params[:id]
        type.name = params[:name]
        type.fields = FieldList.build(params[:fields], context: "#{context}[:fields]") unless params[:fields].nil?
        type
      end
    end

    module PipelineObjectList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PipelineObject.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PipelineObjectMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = PipelineObject.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module PollForTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PollForTaskInput, context: context)
        type = Types::PollForTaskInput.new
        type.worker_group = params[:worker_group]
        type.hostname = params[:hostname]
        type.instance_identity = InstanceIdentity.build(params[:instance_identity], context: "#{context}[:instance_identity]") unless params[:instance_identity].nil?
        type
      end
    end

    module PollForTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PollForTaskOutput, context: context)
        type = Types::PollForTaskOutput.new
        type.task_object = TaskObject.build(params[:task_object], context: "#{context}[:task_object]") unless params[:task_object].nil?
        type
      end
    end

    module PutPipelineDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutPipelineDefinitionInput, context: context)
        type = Types::PutPipelineDefinitionInput.new
        type.pipeline_id = params[:pipeline_id]
        type.pipeline_objects = PipelineObjectList.build(params[:pipeline_objects], context: "#{context}[:pipeline_objects]") unless params[:pipeline_objects].nil?
        type.parameter_objects = ParameterObjectList.build(params[:parameter_objects], context: "#{context}[:parameter_objects]") unless params[:parameter_objects].nil?
        type.parameter_values = ParameterValueList.build(params[:parameter_values], context: "#{context}[:parameter_values]") unless params[:parameter_values].nil?
        type
      end
    end

    module PutPipelineDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutPipelineDefinitionOutput, context: context)
        type = Types::PutPipelineDefinitionOutput.new
        type.validation_errors = ValidationErrors.build(params[:validation_errors], context: "#{context}[:validation_errors]") unless params[:validation_errors].nil?
        type.validation_warnings = ValidationWarnings.build(params[:validation_warnings], context: "#{context}[:validation_warnings]") unless params[:validation_warnings].nil?
        type.errored = params[:errored]
        type
      end
    end

    module Query
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Query, context: context)
        type = Types::Query.new
        type.selectors = SelectorList.build(params[:selectors], context: "#{context}[:selectors]") unless params[:selectors].nil?
        type
      end
    end

    module QueryObjectsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryObjectsInput, context: context)
        type = Types::QueryObjectsInput.new
        type.pipeline_id = params[:pipeline_id]
        type.query = Query.build(params[:query], context: "#{context}[:query]") unless params[:query].nil?
        type.sphere = params[:sphere]
        type.marker = params[:marker]
        type.limit = params[:limit]
        type
      end
    end

    module QueryObjectsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryObjectsOutput, context: context)
        type = Types::QueryObjectsOutput.new
        type.ids = IdList.build(params[:ids], context: "#{context}[:ids]") unless params[:ids].nil?
        type.marker = params[:marker]
        type.has_more_results = params[:has_more_results]
        type
      end
    end

    module RemoveTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTagsInput, context: context)
        type = Types::RemoveTagsInput.new
        type.pipeline_id = params[:pipeline_id]
        type.tag_keys = StringList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module RemoveTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTagsOutput, context: context)
        type = Types::RemoveTagsOutput.new
        type
      end
    end

    module ReportTaskProgressInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReportTaskProgressInput, context: context)
        type = Types::ReportTaskProgressInput.new
        type.task_id = params[:task_id]
        type.fields = FieldList.build(params[:fields], context: "#{context}[:fields]") unless params[:fields].nil?
        type
      end
    end

    module ReportTaskProgressOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReportTaskProgressOutput, context: context)
        type = Types::ReportTaskProgressOutput.new
        type.canceled = params[:canceled]
        type
      end
    end

    module ReportTaskRunnerHeartbeatInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReportTaskRunnerHeartbeatInput, context: context)
        type = Types::ReportTaskRunnerHeartbeatInput.new
        type.taskrunner_id = params[:taskrunner_id]
        type.worker_group = params[:worker_group]
        type.hostname = params[:hostname]
        type
      end
    end

    module ReportTaskRunnerHeartbeatOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReportTaskRunnerHeartbeatOutput, context: context)
        type = Types::ReportTaskRunnerHeartbeatOutput.new
        type.terminate = params[:terminate]
        type
      end
    end

    module Selector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Selector, context: context)
        type = Types::Selector.new
        type.field_name = params[:field_name]
        type.operator = Operator.build(params[:operator], context: "#{context}[:operator]") unless params[:operator].nil?
        type
      end
    end

    module SelectorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Selector.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SetStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetStatusInput, context: context)
        type = Types::SetStatusInput.new
        type.pipeline_id = params[:pipeline_id]
        type.object_ids = IdList.build(params[:object_ids], context: "#{context}[:object_ids]") unless params[:object_ids].nil?
        type.status = params[:status]
        type
      end
    end

    module SetStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetStatusOutput, context: context)
        type = Types::SetStatusOutput.new
        type
      end
    end

    module SetTaskStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetTaskStatusInput, context: context)
        type = Types::SetTaskStatusInput.new
        type.task_id = params[:task_id]
        type.task_status = params[:task_status]
        type.error_id = params[:error_id]
        type.error_message = params[:error_message]
        type.error_stack_trace = params[:error_stack_trace]
        type
      end
    end

    module SetTaskStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetTaskStatusOutput, context: context)
        type = Types::SetTaskStatusOutput.new
        type
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TaskNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskNotFoundException, context: context)
        type = Types::TaskNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module TaskObject
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskObject, context: context)
        type = Types::TaskObject.new
        type.task_id = params[:task_id]
        type.pipeline_id = params[:pipeline_id]
        type.attempt_id = params[:attempt_id]
        type.objects = PipelineObjectMap.build(params[:objects], context: "#{context}[:objects]") unless params[:objects].nil?
        type
      end
    end

    module ValidatePipelineDefinitionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidatePipelineDefinitionInput, context: context)
        type = Types::ValidatePipelineDefinitionInput.new
        type.pipeline_id = params[:pipeline_id]
        type.pipeline_objects = PipelineObjectList.build(params[:pipeline_objects], context: "#{context}[:pipeline_objects]") unless params[:pipeline_objects].nil?
        type.parameter_objects = ParameterObjectList.build(params[:parameter_objects], context: "#{context}[:parameter_objects]") unless params[:parameter_objects].nil?
        type.parameter_values = ParameterValueList.build(params[:parameter_values], context: "#{context}[:parameter_values]") unless params[:parameter_values].nil?
        type
      end
    end

    module ValidatePipelineDefinitionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidatePipelineDefinitionOutput, context: context)
        type = Types::ValidatePipelineDefinitionOutput.new
        type.validation_errors = ValidationErrors.build(params[:validation_errors], context: "#{context}[:validation_errors]") unless params[:validation_errors].nil?
        type.validation_warnings = ValidationWarnings.build(params[:validation_warnings], context: "#{context}[:validation_warnings]") unless params[:validation_warnings].nil?
        type.errored = params[:errored]
        type
      end
    end

    module ValidationError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationError, context: context)
        type = Types::ValidationError.new
        type.id = params[:id]
        type.errors = ValidationMessages.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module ValidationErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValidationError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ValidationWarning
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationWarning, context: context)
        type = Types::ValidationWarning.new
        type.id = params[:id]
        type.warnings = ValidationMessages.build(params[:warnings], context: "#{context}[:warnings]") unless params[:warnings].nil?
        type
      end
    end

    module ValidationWarnings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValidationWarning.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Field.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PipelineList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PipelineIdName.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ValidationMessages
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

  end
end
