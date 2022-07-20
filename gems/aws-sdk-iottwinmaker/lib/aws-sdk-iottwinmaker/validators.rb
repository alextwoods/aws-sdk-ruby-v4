# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::IoTTwinMaker
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BatchPutPropertyError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchPutPropertyError, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        PropertyValueEntry.validate!(input[:entry], context: "#{context}[:entry]") unless input[:entry].nil?
      end
    end

    class BatchPutPropertyErrorEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchPutPropertyErrorEntry, context: context)
        Errors.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class BatchPutPropertyValuesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchPutPropertyValuesInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Entries.validate!(input[:entries], context: "#{context}[:entries]") unless input[:entries].nil?
      end
    end

    class BatchPutPropertyValuesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchPutPropertyValuesOutput, context: context)
        ErrorEntries.validate!(input[:error_entries], context: "#{context}[:error_entries]") unless input[:error_entries].nil?
      end
    end

    class ComponentRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComponentRequest, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:component_type_id], ::String, context: "#{context}[:component_type_id]")
        PropertyRequests.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
      end
    end

    class ComponentResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComponentResponse, context: context)
        Hearth::Validator.validate!(input[:component_name], ::String, context: "#{context}[:component_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:component_type_id], ::String, context: "#{context}[:component_type_id]")
        Status.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        Hearth::Validator.validate!(input[:defined_in], ::String, context: "#{context}[:defined_in]")
        PropertyResponses.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
      end
    end

    class ComponentTypeSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ComponentTypeSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ComponentTypeSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComponentTypeSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:component_type_id], ::String, context: "#{context}[:component_type_id]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:update_date_time], ::Time, context: "#{context}[:update_date_time]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Status.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class ComponentUpdateRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComponentUpdateRequest, context: context)
        Hearth::Validator.validate!(input[:update_type], ::String, context: "#{context}[:update_type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:component_type_id], ::String, context: "#{context}[:component_type_id]")
        PropertyRequests.validate!(input[:property_updates], context: "#{context}[:property_updates]") unless input[:property_updates].nil?
      end
    end

    class ComponentUpdatesMapRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          ComponentUpdateRequest.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ComponentsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          ComponentResponse.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ComponentsMapRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          ComponentRequest.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class Configuration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConnectorFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectorFailureException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConnectorTimeoutException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectorTimeoutException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateComponentTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateComponentTypeInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:is_singleton], ::TrueClass, ::FalseClass, context: "#{context}[:is_singleton]")
        Hearth::Validator.validate!(input[:component_type_id], ::String, context: "#{context}[:component_type_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        PropertyDefinitionsRequest.validate!(input[:property_definitions], context: "#{context}[:property_definitions]") unless input[:property_definitions].nil?
        ExtendsFrom.validate!(input[:extends_from], context: "#{context}[:extends_from]") unless input[:extends_from].nil?
        FunctionsRequest.validate!(input[:functions], context: "#{context}[:functions]") unless input[:functions].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateComponentTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateComponentTypeOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class CreateEntityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEntityInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:entity_name], ::String, context: "#{context}[:entity_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ComponentsMapRequest.validate!(input[:components], context: "#{context}[:components]") unless input[:components].nil?
        Hearth::Validator.validate!(input[:parent_entity_id], ::String, context: "#{context}[:parent_entity_id]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateEntityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEntityOutput, context: context)
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class CreateSceneInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSceneInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:scene_id], ::String, context: "#{context}[:scene_id]")
        Hearth::Validator.validate!(input[:content_location], ::String, context: "#{context}[:content_location]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        SceneCapabilities.validate!(input[:capabilities], context: "#{context}[:capabilities]") unless input[:capabilities].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateSceneOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSceneOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
      end
    end

    class CreateWorkspaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorkspaceInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:s3_location], ::String, context: "#{context}[:s3_location]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateWorkspaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorkspaceOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
      end
    end

    class DataConnector
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataConnector, context: context)
        LambdaFunction.validate!(input[:lambda], context: "#{context}[:lambda]") unless input[:lambda].nil?
        Hearth::Validator.validate!(input[:is_native], ::TrueClass, ::FalseClass, context: "#{context}[:is_native]")
      end
    end

    class DataType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataType, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        DataType.validate!(input[:nested_type], context: "#{context}[:nested_type]") unless input[:nested_type].nil?
        DataValueList.validate!(input[:allowed_values], context: "#{context}[:allowed_values]") unless input[:allowed_values].nil?
        Hearth::Validator.validate!(input[:unit_of_measure], ::String, context: "#{context}[:unit_of_measure]")
        Relationship.validate!(input[:relationship], context: "#{context}[:relationship]") unless input[:relationship].nil?
      end
    end

    class DataValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataValue, context: context)
        Hearth::Validator.validate!(input[:boolean_value], ::TrueClass, ::FalseClass, context: "#{context}[:boolean_value]")
        Hearth::Validator.validate!(input[:double_value], ::Float, context: "#{context}[:double_value]")
        Hearth::Validator.validate!(input[:integer_value], ::Integer, context: "#{context}[:integer_value]")
        Hearth::Validator.validate!(input[:long_value], ::Integer, context: "#{context}[:long_value]")
        Hearth::Validator.validate!(input[:string_value], ::String, context: "#{context}[:string_value]")
        DataValueList.validate!(input[:list_value], context: "#{context}[:list_value]") unless input[:list_value].nil?
        DataValueMap.validate!(input[:map_value], context: "#{context}[:map_value]") unless input[:map_value].nil?
        RelationshipValue.validate!(input[:relationship_value], context: "#{context}[:relationship_value]") unless input[:relationship_value].nil?
        Hearth::Validator.validate!(input[:expression], ::String, context: "#{context}[:expression]")
      end
    end

    class DataValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DataValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DataValueMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          DataValue.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class DeleteComponentTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteComponentTypeInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:component_type_id], ::String, context: "#{context}[:component_type_id]")
      end
    end

    class DeleteComponentTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteComponentTypeOutput, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class DeleteEntityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEntityInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:is_recursive], ::TrueClass, ::FalseClass, context: "#{context}[:is_recursive]")
      end
    end

    class DeleteEntityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEntityOutput, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class DeleteSceneInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSceneInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:scene_id], ::String, context: "#{context}[:scene_id]")
      end
    end

    class DeleteSceneOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSceneOutput, context: context)
      end
    end

    class DeleteWorkspaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWorkspaceInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
      end
    end

    class DeleteWorkspaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWorkspaceOutput, context: context)
      end
    end

    class EntityPropertyReference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityPropertyReference, context: context)
        Hearth::Validator.validate!(input[:component_name], ::String, context: "#{context}[:component_name]")
        ExternalIdProperty.validate!(input[:external_id_property], context: "#{context}[:external_id_property]") unless input[:external_id_property].nil?
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:property_name], ::String, context: "#{context}[:property_name]")
      end
    end

    class EntitySummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EntitySummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EntitySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntitySummary, context: context)
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:entity_name], ::String, context: "#{context}[:entity_name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:parent_entity_id], ::String, context: "#{context}[:parent_entity_id]")
        Status.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:has_child_entities], ::TrueClass, ::FalseClass, context: "#{context}[:has_child_entities]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:update_date_time], ::Time, context: "#{context}[:update_date_time]")
      end
    end

    class Entries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PropertyValueEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ErrorDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ErrorDetails, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ErrorEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchPutPropertyErrorEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Errors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BatchPutPropertyError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExtendsFrom
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ExternalIdProperty
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class FunctionRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FunctionRequest, context: context)
        RequiredProperties.validate!(input[:required_properties], context: "#{context}[:required_properties]") unless input[:required_properties].nil?
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        DataConnector.validate!(input[:implemented_by], context: "#{context}[:implemented_by]") unless input[:implemented_by].nil?
      end
    end

    class FunctionResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FunctionResponse, context: context)
        RequiredProperties.validate!(input[:required_properties], context: "#{context}[:required_properties]") unless input[:required_properties].nil?
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        DataConnector.validate!(input[:implemented_by], context: "#{context}[:implemented_by]") unless input[:implemented_by].nil?
        Hearth::Validator.validate!(input[:is_inherited], ::TrueClass, ::FalseClass, context: "#{context}[:is_inherited]")
      end
    end

    class FunctionsRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          FunctionRequest.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class FunctionsResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          FunctionResponse.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class GetComponentTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetComponentTypeInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:component_type_id], ::String, context: "#{context}[:component_type_id]")
      end
    end

    class GetComponentTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetComponentTypeOutput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:is_singleton], ::TrueClass, ::FalseClass, context: "#{context}[:is_singleton]")
        Hearth::Validator.validate!(input[:component_type_id], ::String, context: "#{context}[:component_type_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        PropertyDefinitionsResponse.validate!(input[:property_definitions], context: "#{context}[:property_definitions]") unless input[:property_definitions].nil?
        ExtendsFrom.validate!(input[:extends_from], context: "#{context}[:extends_from]") unless input[:extends_from].nil?
        FunctionsResponse.validate!(input[:functions], context: "#{context}[:functions]") unless input[:functions].nil?
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:update_date_time], ::Time, context: "#{context}[:update_date_time]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:is_abstract], ::TrueClass, ::FalseClass, context: "#{context}[:is_abstract]")
        Hearth::Validator.validate!(input[:is_schema_initialized], ::TrueClass, ::FalseClass, context: "#{context}[:is_schema_initialized]")
        Status.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class GetEntityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEntityInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
      end
    end

    class GetEntityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEntityOutput, context: context)
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:entity_name], ::String, context: "#{context}[:entity_name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Status.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ComponentsMap.validate!(input[:components], context: "#{context}[:components]") unless input[:components].nil?
        Hearth::Validator.validate!(input[:parent_entity_id], ::String, context: "#{context}[:parent_entity_id]")
        Hearth::Validator.validate!(input[:has_child_entities], ::TrueClass, ::FalseClass, context: "#{context}[:has_child_entities]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:update_date_time], ::Time, context: "#{context}[:update_date_time]")
      end
    end

    class GetPropertyValueHistoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPropertyValueHistoryInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:component_name], ::String, context: "#{context}[:component_name]")
        Hearth::Validator.validate!(input[:component_type_id], ::String, context: "#{context}[:component_type_id]")
        SelectedPropertyList.validate!(input[:selected_properties], context: "#{context}[:selected_properties]") unless input[:selected_properties].nil?
        PropertyFilters.validate!(input[:property_filters], context: "#{context}[:property_filters]") unless input[:property_filters].nil?
        Hearth::Validator.validate!(input[:start_date_time], ::Time, context: "#{context}[:start_date_time]")
        Hearth::Validator.validate!(input[:end_date_time], ::Time, context: "#{context}[:end_date_time]")
        InterpolationParameters.validate!(input[:interpolation], context: "#{context}[:interpolation]") unless input[:interpolation].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:order_by_time], ::String, context: "#{context}[:order_by_time]")
        Hearth::Validator.validate!(input[:start_time], ::String, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::String, context: "#{context}[:end_time]")
      end
    end

    class GetPropertyValueHistoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPropertyValueHistoryOutput, context: context)
        PropertyValueList.validate!(input[:property_values], context: "#{context}[:property_values]") unless input[:property_values].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetPropertyValueInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPropertyValueInput, context: context)
        Hearth::Validator.validate!(input[:component_name], ::String, context: "#{context}[:component_name]")
        Hearth::Validator.validate!(input[:component_type_id], ::String, context: "#{context}[:component_type_id]")
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        SelectedPropertyList.validate!(input[:selected_properties], context: "#{context}[:selected_properties]") unless input[:selected_properties].nil?
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
      end
    end

    class GetPropertyValueOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPropertyValueOutput, context: context)
        PropertyLatestValueMap.validate!(input[:property_values], context: "#{context}[:property_values]") unless input[:property_values].nil?
      end
    end

    class GetSceneInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSceneInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:scene_id], ::String, context: "#{context}[:scene_id]")
      end
    end

    class GetSceneOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSceneOutput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:scene_id], ::String, context: "#{context}[:scene_id]")
        Hearth::Validator.validate!(input[:content_location], ::String, context: "#{context}[:content_location]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:update_date_time], ::Time, context: "#{context}[:update_date_time]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        SceneCapabilities.validate!(input[:capabilities], context: "#{context}[:capabilities]") unless input[:capabilities].nil?
      end
    end

    class GetWorkspaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWorkspaceInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
      end
    end

    class GetWorkspaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWorkspaceOutput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:s3_location], ::String, context: "#{context}[:s3_location]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:update_date_time], ::Time, context: "#{context}[:update_date_time]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InterpolationParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InterpolationParameters, context: context)
        Hearth::Validator.validate!(input[:interpolation_type], ::String, context: "#{context}[:interpolation_type]")
        Hearth::Validator.validate!(input[:interval_in_seconds], ::Integer, context: "#{context}[:interval_in_seconds]")
      end
    end

    class LambdaFunction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaFunction, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class ListComponentTypesFilter
      def self.validate!(input, context:)
        case input
        when Types::ListComponentTypesFilter::ExtendsFrom
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::ListComponentTypesFilter::Namespace
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::ListComponentTypesFilter::IsAbstract
          Hearth::Validator.validate!(input.__getobj__, ::TrueClass, ::FalseClass, context: context)
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::ListComponentTypesFilter, got #{input.class}."
        end
      end

      class ExtendsFrom
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class Namespace
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class IsAbstract
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::TrueClass, ::FalseClass, context: context)
        end
      end
    end

    class ListComponentTypesFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ListComponentTypesFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListComponentTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListComponentTypesInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        ListComponentTypesFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListComponentTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListComponentTypesOutput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        ComponentTypeSummaries.validate!(input[:component_type_summaries], context: "#{context}[:component_type_summaries]") unless input[:component_type_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListEntitiesFilter
      def self.validate!(input, context:)
        case input
        when Types::ListEntitiesFilter::ParentEntityId
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::ListEntitiesFilter::ComponentTypeId
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::ListEntitiesFilter::ExternalId
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::ListEntitiesFilter, got #{input.class}."
        end
      end

      class ParentEntityId
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class ComponentTypeId
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class ExternalId
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end
    end

    class ListEntitiesFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ListEntitiesFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListEntitiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEntitiesInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        ListEntitiesFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEntitiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEntitiesOutput, context: context)
        EntitySummaries.validate!(input[:entity_summaries], context: "#{context}[:entity_summaries]") unless input[:entity_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListScenesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListScenesInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListScenesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListScenesOutput, context: context)
        SceneSummaries.validate!(input[:scene_summaries], context: "#{context}[:scene_summaries]") unless input[:scene_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListWorkspacesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorkspacesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListWorkspacesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorkspacesOutput, context: context)
        WorkspaceSummaries.validate!(input[:workspace_summaries], context: "#{context}[:workspace_summaries]") unless input[:workspace_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ParentEntityUpdateRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParentEntityUpdateRequest, context: context)
        Hearth::Validator.validate!(input[:update_type], ::String, context: "#{context}[:update_type]")
        Hearth::Validator.validate!(input[:parent_entity_id], ::String, context: "#{context}[:parent_entity_id]")
      end
    end

    class PropertyDefinitionRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PropertyDefinitionRequest, context: context)
        DataType.validate!(input[:data_type], context: "#{context}[:data_type]") unless input[:data_type].nil?
        Hearth::Validator.validate!(input[:is_required_in_entity], ::TrueClass, ::FalseClass, context: "#{context}[:is_required_in_entity]")
        Hearth::Validator.validate!(input[:is_external_id], ::TrueClass, ::FalseClass, context: "#{context}[:is_external_id]")
        Hearth::Validator.validate!(input[:is_stored_externally], ::TrueClass, ::FalseClass, context: "#{context}[:is_stored_externally]")
        Hearth::Validator.validate!(input[:is_time_series], ::TrueClass, ::FalseClass, context: "#{context}[:is_time_series]")
        DataValue.validate!(input[:default_value], context: "#{context}[:default_value]") unless input[:default_value].nil?
        Configuration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
      end
    end

    class PropertyDefinitionResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PropertyDefinitionResponse, context: context)
        DataType.validate!(input[:data_type], context: "#{context}[:data_type]") unless input[:data_type].nil?
        Hearth::Validator.validate!(input[:is_time_series], ::TrueClass, ::FalseClass, context: "#{context}[:is_time_series]")
        Hearth::Validator.validate!(input[:is_required_in_entity], ::TrueClass, ::FalseClass, context: "#{context}[:is_required_in_entity]")
        Hearth::Validator.validate!(input[:is_external_id], ::TrueClass, ::FalseClass, context: "#{context}[:is_external_id]")
        Hearth::Validator.validate!(input[:is_stored_externally], ::TrueClass, ::FalseClass, context: "#{context}[:is_stored_externally]")
        Hearth::Validator.validate!(input[:is_imported], ::TrueClass, ::FalseClass, context: "#{context}[:is_imported]")
        Hearth::Validator.validate!(input[:is_final], ::TrueClass, ::FalseClass, context: "#{context}[:is_final]")
        Hearth::Validator.validate!(input[:is_inherited], ::TrueClass, ::FalseClass, context: "#{context}[:is_inherited]")
        DataValue.validate!(input[:default_value], context: "#{context}[:default_value]") unless input[:default_value].nil?
        Configuration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
      end
    end

    class PropertyDefinitionsRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          PropertyDefinitionRequest.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class PropertyDefinitionsResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          PropertyDefinitionResponse.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class PropertyFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PropertyFilter, context: context)
        Hearth::Validator.validate!(input[:property_name], ::String, context: "#{context}[:property_name]")
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
        DataValue.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
      end
    end

    class PropertyFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PropertyFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PropertyLatestValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PropertyLatestValue, context: context)
        EntityPropertyReference.validate!(input[:property_reference], context: "#{context}[:property_reference]") unless input[:property_reference].nil?
        DataValue.validate!(input[:property_value], context: "#{context}[:property_value]") unless input[:property_value].nil?
      end
    end

    class PropertyLatestValueMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          PropertyLatestValue.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class PropertyRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PropertyRequest, context: context)
        PropertyDefinitionRequest.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
        DataValue.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
        Hearth::Validator.validate!(input[:update_type], ::String, context: "#{context}[:update_type]")
      end
    end

    class PropertyRequests
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          PropertyRequest.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class PropertyResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PropertyResponse, context: context)
        PropertyDefinitionResponse.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
        DataValue.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
      end
    end

    class PropertyResponses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          PropertyResponse.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class PropertyValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PropertyValue, context: context)
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        DataValue.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
        Hearth::Validator.validate!(input[:time], ::String, context: "#{context}[:time]")
      end
    end

    class PropertyValueEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PropertyValueEntry, context: context)
        EntityPropertyReference.validate!(input[:entity_property_reference], context: "#{context}[:entity_property_reference]") unless input[:entity_property_reference].nil?
        PropertyValues.validate!(input[:property_values], context: "#{context}[:property_values]") unless input[:property_values].nil?
      end
    end

    class PropertyValueHistory
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PropertyValueHistory, context: context)
        EntityPropertyReference.validate!(input[:entity_property_reference], context: "#{context}[:entity_property_reference]") unless input[:entity_property_reference].nil?
        Values.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class PropertyValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PropertyValueHistory.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PropertyValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PropertyValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Relationship
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Relationship, context: context)
        Hearth::Validator.validate!(input[:target_component_type_id], ::String, context: "#{context}[:target_component_type_id]")
        Hearth::Validator.validate!(input[:relationship_type], ::String, context: "#{context}[:relationship_type]")
      end
    end

    class RelationshipValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RelationshipValue, context: context)
        Hearth::Validator.validate!(input[:target_entity_id], ::String, context: "#{context}[:target_entity_id]")
        Hearth::Validator.validate!(input[:target_component_name], ::String, context: "#{context}[:target_component_name]")
      end
    end

    class RequiredProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SceneCapabilities
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SceneSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SceneSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SceneSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SceneSummary, context: context)
        Hearth::Validator.validate!(input[:scene_id], ::String, context: "#{context}[:scene_id]")
        Hearth::Validator.validate!(input[:content_location], ::String, context: "#{context}[:content_location]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:update_date_time], ::Time, context: "#{context}[:update_date_time]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class SelectedPropertyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Status
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Status, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        ErrorDetails.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyTagsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTagsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateComponentTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateComponentTypeInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:is_singleton], ::TrueClass, ::FalseClass, context: "#{context}[:is_singleton]")
        Hearth::Validator.validate!(input[:component_type_id], ::String, context: "#{context}[:component_type_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        PropertyDefinitionsRequest.validate!(input[:property_definitions], context: "#{context}[:property_definitions]") unless input[:property_definitions].nil?
        ExtendsFrom.validate!(input[:extends_from], context: "#{context}[:extends_from]") unless input[:extends_from].nil?
        FunctionsRequest.validate!(input[:functions], context: "#{context}[:functions]") unless input[:functions].nil?
      end
    end

    class UpdateComponentTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateComponentTypeOutput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:component_type_id], ::String, context: "#{context}[:component_type_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class UpdateEntityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEntityInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:entity_name], ::String, context: "#{context}[:entity_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ComponentUpdatesMapRequest.validate!(input[:component_updates], context: "#{context}[:component_updates]") unless input[:component_updates].nil?
        ParentEntityUpdateRequest.validate!(input[:parent_entity_update], context: "#{context}[:parent_entity_update]") unless input[:parent_entity_update].nil?
      end
    end

    class UpdateEntityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEntityOutput, context: context)
        Hearth::Validator.validate!(input[:update_date_time], ::Time, context: "#{context}[:update_date_time]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class UpdateSceneInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSceneInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:scene_id], ::String, context: "#{context}[:scene_id]")
        Hearth::Validator.validate!(input[:content_location], ::String, context: "#{context}[:content_location]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        SceneCapabilities.validate!(input[:capabilities], context: "#{context}[:capabilities]") unless input[:capabilities].nil?
      end
    end

    class UpdateSceneOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSceneOutput, context: context)
        Hearth::Validator.validate!(input[:update_date_time], ::Time, context: "#{context}[:update_date_time]")
      end
    end

    class UpdateWorkspaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWorkspaceInput, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:role], ::String, context: "#{context}[:role]")
      end
    end

    class UpdateWorkspaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWorkspaceOutput, context: context)
        Hearth::Validator.validate!(input[:update_date_time], ::Time, context: "#{context}[:update_date_time]")
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Values
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PropertyValue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WorkspaceSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          WorkspaceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WorkspaceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkspaceSummary, context: context)
        Hearth::Validator.validate!(input[:workspace_id], ::String, context: "#{context}[:workspace_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:creation_date_time], ::Time, context: "#{context}[:creation_date_time]")
        Hearth::Validator.validate!(input[:update_date_time], ::Time, context: "#{context}[:update_date_time]")
      end
    end

  end
end
