# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DataPipeline
  module Validators

    class ActivatePipelineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivatePipelineInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_id], ::String, context: "#{context}[:pipeline_id]")
        Validators::ParameterValueList.validate!(input[:parameter_values], context: "#{context}[:parameter_values]") unless input[:parameter_values].nil?
        Hearth::Validator.validate!(input[:start_timestamp], ::Time, context: "#{context}[:start_timestamp]")
      end
    end

    class ActivatePipelineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActivatePipelineOutput, context: context)
      end
    end

    class AddTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_id], ::String, context: "#{context}[:pipeline_id]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class AddTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsOutput, context: context)
      end
    end

    class CreatePipelineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePipelineInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:unique_id], ::String, context: "#{context}[:unique_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreatePipelineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePipelineOutput, context: context)
        Hearth::Validator.validate!(input[:pipeline_id], ::String, context: "#{context}[:pipeline_id]")
      end
    end

    class DeactivatePipelineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeactivatePipelineInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_id], ::String, context: "#{context}[:pipeline_id]")
        Hearth::Validator.validate!(input[:cancel_active], ::TrueClass, ::FalseClass, context: "#{context}[:cancel_active]")
      end
    end

    class DeactivatePipelineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeactivatePipelineOutput, context: context)
      end
    end

    class DeletePipelineInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePipelineInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_id], ::String, context: "#{context}[:pipeline_id]")
      end
    end

    class DeletePipelineOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePipelineOutput, context: context)
      end
    end

    class DescribeObjectsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeObjectsInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_id], ::String, context: "#{context}[:pipeline_id]")
        Validators::IdList.validate!(input[:object_ids], context: "#{context}[:object_ids]") unless input[:object_ids].nil?
        Hearth::Validator.validate!(input[:evaluate_expressions], ::TrueClass, ::FalseClass, context: "#{context}[:evaluate_expressions]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class DescribeObjectsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeObjectsOutput, context: context)
        Validators::PipelineObjectList.validate!(input[:pipeline_objects], context: "#{context}[:pipeline_objects]") unless input[:pipeline_objects].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:has_more_results], ::TrueClass, ::FalseClass, context: "#{context}[:has_more_results]")
      end
    end

    class DescribePipelinesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePipelinesInput, context: context)
        Validators::IdList.validate!(input[:pipeline_ids], context: "#{context}[:pipeline_ids]") unless input[:pipeline_ids].nil?
      end
    end

    class DescribePipelinesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePipelinesOutput, context: context)
        Validators::PipelineDescriptionList.validate!(input[:pipeline_description_list], context: "#{context}[:pipeline_description_list]") unless input[:pipeline_description_list].nil?
      end
    end

    class EvaluateExpressionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EvaluateExpressionInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_id], ::String, context: "#{context}[:pipeline_id]")
        Hearth::Validator.validate!(input[:member_object_id], ::String, context: "#{context}[:member_object_id]")
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
      end
    end

    class EvaluateExpressionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EvaluateExpressionOutput, context: context)
        Hearth::Validator.validate!(input[:evaluated_expression], ::String, context: "#{context}[:evaluated_expression]")
      end
    end

    class Field
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Field, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:string_value], ::String, context: "#{context}[:string_value]")
        Hearth::Validator.validate!(input[:ref_value], ::String, context: "#{context}[:ref_value]")
      end
    end

    class GetPipelineDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPipelineDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_id], ::String, context: "#{context}[:pipeline_id]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class GetPipelineDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPipelineDefinitionOutput, context: context)
        Validators::PipelineObjectList.validate!(input[:pipeline_objects], context: "#{context}[:pipeline_objects]") unless input[:pipeline_objects].nil?
        Validators::ParameterObjectList.validate!(input[:parameter_objects], context: "#{context}[:parameter_objects]") unless input[:parameter_objects].nil?
        Validators::ParameterValueList.validate!(input[:parameter_values], context: "#{context}[:parameter_values]") unless input[:parameter_values].nil?
      end
    end

    class InstanceIdentity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceIdentity, context: context)
        Hearth::Validator.validate!(input[:document], ::String, context: "#{context}[:document]")
        Hearth::Validator.validate!(input[:signature], ::String, context: "#{context}[:signature]")
      end
    end

    class InternalServiceError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServiceError, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListPipelinesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPipelinesInput, context: context)
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
      end
    end

    class ListPipelinesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPipelinesOutput, context: context)
        Validators::PipelineList.validate!(input[:pipeline_id_list], context: "#{context}[:pipeline_id_list]") unless input[:pipeline_id_list].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:has_more_results], ::TrueClass, ::FalseClass, context: "#{context}[:has_more_results]")
      end
    end

    class Operator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Operator, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::StringList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class ParameterAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterAttribute, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:string_value], ::String, context: "#{context}[:string_value]")
      end
    end

    class ParameterAttributeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ParameterAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ParameterObject
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterObject, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::ParameterAttributeList.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class ParameterObjectList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ParameterObject.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ParameterValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterValue, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:string_value], ::String, context: "#{context}[:string_value]")
      end
    end

    class ParameterValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ParameterValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PipelineDeletedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PipelineDeletedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PipelineDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PipelineDescription, context: context)
        Hearth::Validator.validate!(input[:pipeline_id], ::String, context: "#{context}[:pipeline_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::FieldList.validate!(input[:fields], context: "#{context}[:fields]") unless input[:fields].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PipelineDescriptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PipelineDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PipelineIdName
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PipelineIdName, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class PipelineNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PipelineNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PipelineObject
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PipelineObject, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::FieldList.validate!(input[:fields], context: "#{context}[:fields]") unless input[:fields].nil?
      end
    end

    class PipelineObjectList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PipelineObject.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PipelineObjectMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::PipelineObject.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class PollForTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PollForTaskInput, context: context)
        Hearth::Validator.validate!(input[:worker_group], ::String, context: "#{context}[:worker_group]")
        Hearth::Validator.validate!(input[:hostname], ::String, context: "#{context}[:hostname]")
        Validators::InstanceIdentity.validate!(input[:instance_identity], context: "#{context}[:instance_identity]") unless input[:instance_identity].nil?
      end
    end

    class PollForTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PollForTaskOutput, context: context)
        Validators::TaskObject.validate!(input[:task_object], context: "#{context}[:task_object]") unless input[:task_object].nil?
      end
    end

    class PutPipelineDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutPipelineDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_id], ::String, context: "#{context}[:pipeline_id]")
        Validators::PipelineObjectList.validate!(input[:pipeline_objects], context: "#{context}[:pipeline_objects]") unless input[:pipeline_objects].nil?
        Validators::ParameterObjectList.validate!(input[:parameter_objects], context: "#{context}[:parameter_objects]") unless input[:parameter_objects].nil?
        Validators::ParameterValueList.validate!(input[:parameter_values], context: "#{context}[:parameter_values]") unless input[:parameter_values].nil?
      end
    end

    class PutPipelineDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutPipelineDefinitionOutput, context: context)
        Validators::ValidationErrors.validate!(input[:validation_errors], context: "#{context}[:validation_errors]") unless input[:validation_errors].nil?
        Validators::ValidationWarnings.validate!(input[:validation_warnings], context: "#{context}[:validation_warnings]") unless input[:validation_warnings].nil?
        Hearth::Validator.validate!(input[:errored], ::TrueClass, ::FalseClass, context: "#{context}[:errored]")
      end
    end

    class Query
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Query, context: context)
        Validators::SelectorList.validate!(input[:selectors], context: "#{context}[:selectors]") unless input[:selectors].nil?
      end
    end

    class QueryObjectsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryObjectsInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_id], ::String, context: "#{context}[:pipeline_id]")
        Validators::Query.validate!(input[:query], context: "#{context}[:query]") unless input[:query].nil?
        Hearth::Validator.validate!(input[:sphere], ::String, context: "#{context}[:sphere]")
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class QueryObjectsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryObjectsOutput, context: context)
        Validators::IdList.validate!(input[:ids], context: "#{context}[:ids]") unless input[:ids].nil?
        Hearth::Validator.validate!(input[:marker], ::String, context: "#{context}[:marker]")
        Hearth::Validator.validate!(input[:has_more_results], ::TrueClass, ::FalseClass, context: "#{context}[:has_more_results]")
      end
    end

    class RemoveTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_id], ::String, context: "#{context}[:pipeline_id]")
        Validators::StringList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class RemoveTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsOutput, context: context)
      end
    end

    class ReportTaskProgressInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReportTaskProgressInput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
        Validators::FieldList.validate!(input[:fields], context: "#{context}[:fields]") unless input[:fields].nil?
      end
    end

    class ReportTaskProgressOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReportTaskProgressOutput, context: context)
        Hearth::Validator.validate!(input[:canceled], ::TrueClass, ::FalseClass, context: "#{context}[:canceled]")
      end
    end

    class ReportTaskRunnerHeartbeatInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReportTaskRunnerHeartbeatInput, context: context)
        Hearth::Validator.validate!(input[:taskrunner_id], ::String, context: "#{context}[:taskrunner_id]")
        Hearth::Validator.validate!(input[:worker_group], ::String, context: "#{context}[:worker_group]")
        Hearth::Validator.validate!(input[:hostname], ::String, context: "#{context}[:hostname]")
      end
    end

    class ReportTaskRunnerHeartbeatOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReportTaskRunnerHeartbeatOutput, context: context)
        Hearth::Validator.validate!(input[:terminate], ::TrueClass, ::FalseClass, context: "#{context}[:terminate]")
      end
    end

    class Selector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Selector, context: context)
        Hearth::Validator.validate!(input[:field_name], ::String, context: "#{context}[:field_name]")
        Validators::Operator.validate!(input[:operator], context: "#{context}[:operator]") unless input[:operator].nil?
      end
    end

    class SelectorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Selector.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SetStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetStatusInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_id], ::String, context: "#{context}[:pipeline_id]")
        Validators::IdList.validate!(input[:object_ids], context: "#{context}[:object_ids]") unless input[:object_ids].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class SetStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetStatusOutput, context: context)
      end
    end

    class SetTaskStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetTaskStatusInput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
        Hearth::Validator.validate!(input[:task_status], ::String, context: "#{context}[:task_status]")
        Hearth::Validator.validate!(input[:error_id], ::String, context: "#{context}[:error_id]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:error_stack_trace], ::String, context: "#{context}[:error_stack_trace]")
      end
    end

    class SetTaskStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetTaskStatusOutput, context: context)
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TaskNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TaskObject
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskObject, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
        Hearth::Validator.validate!(input[:pipeline_id], ::String, context: "#{context}[:pipeline_id]")
        Hearth::Validator.validate!(input[:attempt_id], ::String, context: "#{context}[:attempt_id]")
        Validators::PipelineObjectMap.validate!(input[:objects], context: "#{context}[:objects]") unless input[:objects].nil?
      end
    end

    class ValidatePipelineDefinitionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidatePipelineDefinitionInput, context: context)
        Hearth::Validator.validate!(input[:pipeline_id], ::String, context: "#{context}[:pipeline_id]")
        Validators::PipelineObjectList.validate!(input[:pipeline_objects], context: "#{context}[:pipeline_objects]") unless input[:pipeline_objects].nil?
        Validators::ParameterObjectList.validate!(input[:parameter_objects], context: "#{context}[:parameter_objects]") unless input[:parameter_objects].nil?
        Validators::ParameterValueList.validate!(input[:parameter_values], context: "#{context}[:parameter_values]") unless input[:parameter_values].nil?
      end
    end

    class ValidatePipelineDefinitionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidatePipelineDefinitionOutput, context: context)
        Validators::ValidationErrors.validate!(input[:validation_errors], context: "#{context}[:validation_errors]") unless input[:validation_errors].nil?
        Validators::ValidationWarnings.validate!(input[:validation_warnings], context: "#{context}[:validation_warnings]") unless input[:validation_warnings].nil?
        Hearth::Validator.validate!(input[:errored], ::TrueClass, ::FalseClass, context: "#{context}[:errored]")
      end
    end

    class ValidationError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationError, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::ValidationMessages.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class ValidationErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ValidationError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ValidationWarning
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationWarning, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::ValidationMessages.validate!(input[:warnings], context: "#{context}[:warnings]") unless input[:warnings].nil?
      end
    end

    class ValidationWarnings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ValidationWarning.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Field.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PipelineList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PipelineIdName.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ValidationMessages
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

  end
end
