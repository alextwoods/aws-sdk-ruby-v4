# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::IoTTwinMaker
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module BatchPutPropertyError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchPutPropertyError, context: context)
        type = Types::BatchPutPropertyError.new
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type.entry = PropertyValueEntry.build(params[:entry], context: "#{context}[:entry]") unless params[:entry].nil?
        type
      end
    end

    module BatchPutPropertyErrorEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchPutPropertyErrorEntry, context: context)
        type = Types::BatchPutPropertyErrorEntry.new
        type.errors = Errors.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module BatchPutPropertyValuesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchPutPropertyValuesInput, context: context)
        type = Types::BatchPutPropertyValuesInput.new
        type.workspace_id = params[:workspace_id]
        type.entries = Entries.build(params[:entries], context: "#{context}[:entries]") unless params[:entries].nil?
        type
      end
    end

    module BatchPutPropertyValuesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchPutPropertyValuesOutput, context: context)
        type = Types::BatchPutPropertyValuesOutput.new
        type.error_entries = ErrorEntries.build(params[:error_entries], context: "#{context}[:error_entries]") unless params[:error_entries].nil?
        type
      end
    end

    module ComponentRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComponentRequest, context: context)
        type = Types::ComponentRequest.new
        type.description = params[:description]
        type.component_type_id = params[:component_type_id]
        type.properties = PropertyRequests.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type
      end
    end

    module ComponentResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComponentResponse, context: context)
        type = Types::ComponentResponse.new
        type.component_name = params[:component_name]
        type.description = params[:description]
        type.component_type_id = params[:component_type_id]
        type.status = Status.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.defined_in = params[:defined_in]
        type.properties = PropertyResponses.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type
      end
    end

    module ComponentTypeSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ComponentTypeSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ComponentTypeSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComponentTypeSummary, context: context)
        type = Types::ComponentTypeSummary.new
        type.arn = params[:arn]
        type.component_type_id = params[:component_type_id]
        type.creation_date_time = params[:creation_date_time]
        type.update_date_time = params[:update_date_time]
        type.description = params[:description]
        type.status = Status.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module ComponentUpdateRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComponentUpdateRequest, context: context)
        type = Types::ComponentUpdateRequest.new
        type.update_type = params[:update_type]
        type.description = params[:description]
        type.component_type_id = params[:component_type_id]
        type.property_updates = PropertyRequests.build(params[:property_updates], context: "#{context}[:property_updates]") unless params[:property_updates].nil?
        type
      end
    end

    module ComponentUpdatesMapRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ComponentUpdateRequest.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ComponentsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ComponentResponse.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ComponentsMapRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ComponentRequest.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module Configuration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module ConnectorFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectorFailureException, context: context)
        type = Types::ConnectorFailureException.new
        type.message = params[:message]
        type
      end
    end

    module ConnectorTimeoutException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectorTimeoutException, context: context)
        type = Types::ConnectorTimeoutException.new
        type.message = params[:message]
        type
      end
    end

    module CreateComponentTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateComponentTypeInput, context: context)
        type = Types::CreateComponentTypeInput.new
        type.workspace_id = params[:workspace_id]
        type.is_singleton = params[:is_singleton]
        type.component_type_id = params[:component_type_id]
        type.description = params[:description]
        type.property_definitions = PropertyDefinitionsRequest.build(params[:property_definitions], context: "#{context}[:property_definitions]") unless params[:property_definitions].nil?
        type.extends_from = ExtendsFrom.build(params[:extends_from], context: "#{context}[:extends_from]") unless params[:extends_from].nil?
        type.functions = FunctionsRequest.build(params[:functions], context: "#{context}[:functions]") unless params[:functions].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateComponentTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateComponentTypeOutput, context: context)
        type = Types::CreateComponentTypeOutput.new
        type.arn = params[:arn]
        type.creation_date_time = params[:creation_date_time]
        type.state = params[:state]
        type
      end
    end

    module CreateEntityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEntityInput, context: context)
        type = Types::CreateEntityInput.new
        type.workspace_id = params[:workspace_id]
        type.entity_id = params[:entity_id]
        type.entity_name = params[:entity_name]
        type.description = params[:description]
        type.components = ComponentsMapRequest.build(params[:components], context: "#{context}[:components]") unless params[:components].nil?
        type.parent_entity_id = params[:parent_entity_id]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateEntityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEntityOutput, context: context)
        type = Types::CreateEntityOutput.new
        type.entity_id = params[:entity_id]
        type.arn = params[:arn]
        type.creation_date_time = params[:creation_date_time]
        type.state = params[:state]
        type
      end
    end

    module CreateSceneInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSceneInput, context: context)
        type = Types::CreateSceneInput.new
        type.workspace_id = params[:workspace_id]
        type.scene_id = params[:scene_id]
        type.content_location = params[:content_location]
        type.description = params[:description]
        type.capabilities = SceneCapabilities.build(params[:capabilities], context: "#{context}[:capabilities]") unless params[:capabilities].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateSceneOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSceneOutput, context: context)
        type = Types::CreateSceneOutput.new
        type.arn = params[:arn]
        type.creation_date_time = params[:creation_date_time]
        type
      end
    end

    module CreateWorkspaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorkspaceInput, context: context)
        type = Types::CreateWorkspaceInput.new
        type.workspace_id = params[:workspace_id]
        type.description = params[:description]
        type.s3_location = params[:s3_location]
        type.role = params[:role]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateWorkspaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorkspaceOutput, context: context)
        type = Types::CreateWorkspaceOutput.new
        type.arn = params[:arn]
        type.creation_date_time = params[:creation_date_time]
        type
      end
    end

    module DataConnector
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataConnector, context: context)
        type = Types::DataConnector.new
        type.lambda = LambdaFunction.build(params[:lambda], context: "#{context}[:lambda]") unless params[:lambda].nil?
        type.is_native = params[:is_native]
        type
      end
    end

    module DataType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataType, context: context)
        type = Types::DataType.new
        type.type = params[:type]
        type.nested_type = DataType.build(params[:nested_type], context: "#{context}[:nested_type]") unless params[:nested_type].nil?
        type.allowed_values = DataValueList.build(params[:allowed_values], context: "#{context}[:allowed_values]") unless params[:allowed_values].nil?
        type.unit_of_measure = params[:unit_of_measure]
        type.relationship = Relationship.build(params[:relationship], context: "#{context}[:relationship]") unless params[:relationship].nil?
        type
      end
    end

    module DataValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataValue, context: context)
        type = Types::DataValue.new
        type.boolean_value = params[:boolean_value]
        type.double_value = params[:double_value]
        type.integer_value = params[:integer_value]
        type.long_value = params[:long_value]
        type.string_value = params[:string_value]
        type.list_value = DataValueList.build(params[:list_value], context: "#{context}[:list_value]") unless params[:list_value].nil?
        type.map_value = DataValueMap.build(params[:map_value], context: "#{context}[:map_value]") unless params[:map_value].nil?
        type.relationship_value = RelationshipValue.build(params[:relationship_value], context: "#{context}[:relationship_value]") unless params[:relationship_value].nil?
        type.expression = params[:expression]
        type
      end
    end

    module DataValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DataValueMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = DataValue.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module DeleteComponentTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteComponentTypeInput, context: context)
        type = Types::DeleteComponentTypeInput.new
        type.workspace_id = params[:workspace_id]
        type.component_type_id = params[:component_type_id]
        type
      end
    end

    module DeleteComponentTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteComponentTypeOutput, context: context)
        type = Types::DeleteComponentTypeOutput.new
        type.state = params[:state]
        type
      end
    end

    module DeleteEntityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEntityInput, context: context)
        type = Types::DeleteEntityInput.new
        type.workspace_id = params[:workspace_id]
        type.entity_id = params[:entity_id]
        type.is_recursive = params[:is_recursive]
        type
      end
    end

    module DeleteEntityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEntityOutput, context: context)
        type = Types::DeleteEntityOutput.new
        type.state = params[:state]
        type
      end
    end

    module DeleteSceneInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSceneInput, context: context)
        type = Types::DeleteSceneInput.new
        type.workspace_id = params[:workspace_id]
        type.scene_id = params[:scene_id]
        type
      end
    end

    module DeleteSceneOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSceneOutput, context: context)
        type = Types::DeleteSceneOutput.new
        type
      end
    end

    module DeleteWorkspaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWorkspaceInput, context: context)
        type = Types::DeleteWorkspaceInput.new
        type.workspace_id = params[:workspace_id]
        type
      end
    end

    module DeleteWorkspaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWorkspaceOutput, context: context)
        type = Types::DeleteWorkspaceOutput.new
        type
      end
    end

    module EntityPropertyReference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityPropertyReference, context: context)
        type = Types::EntityPropertyReference.new
        type.component_name = params[:component_name]
        type.external_id_property = ExternalIdProperty.build(params[:external_id_property], context: "#{context}[:external_id_property]") unless params[:external_id_property].nil?
        type.entity_id = params[:entity_id]
        type.property_name = params[:property_name]
        type
      end
    end

    module EntitySummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EntitySummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EntitySummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntitySummary, context: context)
        type = Types::EntitySummary.new
        type.entity_id = params[:entity_id]
        type.entity_name = params[:entity_name]
        type.arn = params[:arn]
        type.parent_entity_id = params[:parent_entity_id]
        type.status = Status.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.description = params[:description]
        type.has_child_entities = params[:has_child_entities]
        type.creation_date_time = params[:creation_date_time]
        type.update_date_time = params[:update_date_time]
        type
      end
    end

    module Entries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PropertyValueEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ErrorDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ErrorDetails, context: context)
        type = Types::ErrorDetails.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module ErrorEntries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchPutPropertyErrorEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Errors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchPutPropertyError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExtendsFrom
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ExternalIdProperty
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module FunctionRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FunctionRequest, context: context)
        type = Types::FunctionRequest.new
        type.required_properties = RequiredProperties.build(params[:required_properties], context: "#{context}[:required_properties]") unless params[:required_properties].nil?
        type.scope = params[:scope]
        type.implemented_by = DataConnector.build(params[:implemented_by], context: "#{context}[:implemented_by]") unless params[:implemented_by].nil?
        type
      end
    end

    module FunctionResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FunctionResponse, context: context)
        type = Types::FunctionResponse.new
        type.required_properties = RequiredProperties.build(params[:required_properties], context: "#{context}[:required_properties]") unless params[:required_properties].nil?
        type.scope = params[:scope]
        type.implemented_by = DataConnector.build(params[:implemented_by], context: "#{context}[:implemented_by]") unless params[:implemented_by].nil?
        type.is_inherited = params[:is_inherited]
        type
      end
    end

    module FunctionsRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = FunctionRequest.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module FunctionsResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = FunctionResponse.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module GetComponentTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetComponentTypeInput, context: context)
        type = Types::GetComponentTypeInput.new
        type.workspace_id = params[:workspace_id]
        type.component_type_id = params[:component_type_id]
        type
      end
    end

    module GetComponentTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetComponentTypeOutput, context: context)
        type = Types::GetComponentTypeOutput.new
        type.workspace_id = params[:workspace_id]
        type.is_singleton = params[:is_singleton]
        type.component_type_id = params[:component_type_id]
        type.description = params[:description]
        type.property_definitions = PropertyDefinitionsResponse.build(params[:property_definitions], context: "#{context}[:property_definitions]") unless params[:property_definitions].nil?
        type.extends_from = ExtendsFrom.build(params[:extends_from], context: "#{context}[:extends_from]") unless params[:extends_from].nil?
        type.functions = FunctionsResponse.build(params[:functions], context: "#{context}[:functions]") unless params[:functions].nil?
        type.creation_date_time = params[:creation_date_time]
        type.update_date_time = params[:update_date_time]
        type.arn = params[:arn]
        type.is_abstract = params[:is_abstract]
        type.is_schema_initialized = params[:is_schema_initialized]
        type.status = Status.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module GetEntityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEntityInput, context: context)
        type = Types::GetEntityInput.new
        type.workspace_id = params[:workspace_id]
        type.entity_id = params[:entity_id]
        type
      end
    end

    module GetEntityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEntityOutput, context: context)
        type = Types::GetEntityOutput.new
        type.entity_id = params[:entity_id]
        type.entity_name = params[:entity_name]
        type.arn = params[:arn]
        type.status = Status.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.workspace_id = params[:workspace_id]
        type.description = params[:description]
        type.components = ComponentsMap.build(params[:components], context: "#{context}[:components]") unless params[:components].nil?
        type.parent_entity_id = params[:parent_entity_id]
        type.has_child_entities = params[:has_child_entities]
        type.creation_date_time = params[:creation_date_time]
        type.update_date_time = params[:update_date_time]
        type
      end
    end

    module GetPropertyValueHistoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPropertyValueHistoryInput, context: context)
        type = Types::GetPropertyValueHistoryInput.new
        type.workspace_id = params[:workspace_id]
        type.entity_id = params[:entity_id]
        type.component_name = params[:component_name]
        type.component_type_id = params[:component_type_id]
        type.selected_properties = SelectedPropertyList.build(params[:selected_properties], context: "#{context}[:selected_properties]") unless params[:selected_properties].nil?
        type.property_filters = PropertyFilters.build(params[:property_filters], context: "#{context}[:property_filters]") unless params[:property_filters].nil?
        type.start_date_time = params[:start_date_time]
        type.end_date_time = params[:end_date_time]
        type.interpolation = InterpolationParameters.build(params[:interpolation], context: "#{context}[:interpolation]") unless params[:interpolation].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.order_by_time = params[:order_by_time]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module GetPropertyValueHistoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPropertyValueHistoryOutput, context: context)
        type = Types::GetPropertyValueHistoryOutput.new
        type.property_values = PropertyValueList.build(params[:property_values], context: "#{context}[:property_values]") unless params[:property_values].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetPropertyValueInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPropertyValueInput, context: context)
        type = Types::GetPropertyValueInput.new
        type.component_name = params[:component_name]
        type.component_type_id = params[:component_type_id]
        type.entity_id = params[:entity_id]
        type.selected_properties = SelectedPropertyList.build(params[:selected_properties], context: "#{context}[:selected_properties]") unless params[:selected_properties].nil?
        type.workspace_id = params[:workspace_id]
        type
      end
    end

    module GetPropertyValueOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPropertyValueOutput, context: context)
        type = Types::GetPropertyValueOutput.new
        type.property_values = PropertyLatestValueMap.build(params[:property_values], context: "#{context}[:property_values]") unless params[:property_values].nil?
        type
      end
    end

    module GetSceneInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSceneInput, context: context)
        type = Types::GetSceneInput.new
        type.workspace_id = params[:workspace_id]
        type.scene_id = params[:scene_id]
        type
      end
    end

    module GetSceneOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSceneOutput, context: context)
        type = Types::GetSceneOutput.new
        type.workspace_id = params[:workspace_id]
        type.scene_id = params[:scene_id]
        type.content_location = params[:content_location]
        type.arn = params[:arn]
        type.creation_date_time = params[:creation_date_time]
        type.update_date_time = params[:update_date_time]
        type.description = params[:description]
        type.capabilities = SceneCapabilities.build(params[:capabilities], context: "#{context}[:capabilities]") unless params[:capabilities].nil?
        type
      end
    end

    module GetWorkspaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWorkspaceInput, context: context)
        type = Types::GetWorkspaceInput.new
        type.workspace_id = params[:workspace_id]
        type
      end
    end

    module GetWorkspaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWorkspaceOutput, context: context)
        type = Types::GetWorkspaceOutput.new
        type.workspace_id = params[:workspace_id]
        type.arn = params[:arn]
        type.description = params[:description]
        type.s3_location = params[:s3_location]
        type.role = params[:role]
        type.creation_date_time = params[:creation_date_time]
        type.update_date_time = params[:update_date_time]
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module InterpolationParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InterpolationParameters, context: context)
        type = Types::InterpolationParameters.new
        type.interpolation_type = params[:interpolation_type]
        type.interval_in_seconds = params[:interval_in_seconds]
        type
      end
    end

    module LambdaFunction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaFunction, context: context)
        type = Types::LambdaFunction.new
        type.arn = params[:arn]
        type
      end
    end

    module ListComponentTypesFilter
      def self.build(params, context: '')
        return params if params.is_a?(Types::ListComponentTypesFilter)
        Hearth::Validator.validate!(params, ::Hash, Types::ListComponentTypesFilter, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :extends_from
          Types::ListComponentTypesFilter::ExtendsFrom.new(
            params[:extends_from]
          )
        when :namespace
          Types::ListComponentTypesFilter::Namespace.new(
            params[:namespace]
          )
        when :is_abstract
          Types::ListComponentTypesFilter::IsAbstract.new(
            params[:is_abstract]
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :extends_from, :namespace, :is_abstract set"
        end
      end
    end

    module ListComponentTypesFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListComponentTypesFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListComponentTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListComponentTypesInput, context: context)
        type = Types::ListComponentTypesInput.new
        type.workspace_id = params[:workspace_id]
        type.filters = ListComponentTypesFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListComponentTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListComponentTypesOutput, context: context)
        type = Types::ListComponentTypesOutput.new
        type.workspace_id = params[:workspace_id]
        type.component_type_summaries = ComponentTypeSummaries.build(params[:component_type_summaries], context: "#{context}[:component_type_summaries]") unless params[:component_type_summaries].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListEntitiesFilter
      def self.build(params, context: '')
        return params if params.is_a?(Types::ListEntitiesFilter)
        Hearth::Validator.validate!(params, ::Hash, Types::ListEntitiesFilter, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :parent_entity_id
          Types::ListEntitiesFilter::ParentEntityId.new(
            params[:parent_entity_id]
          )
        when :component_type_id
          Types::ListEntitiesFilter::ComponentTypeId.new(
            params[:component_type_id]
          )
        when :external_id
          Types::ListEntitiesFilter::ExternalId.new(
            params[:external_id]
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :parent_entity_id, :component_type_id, :external_id set"
        end
      end
    end

    module ListEntitiesFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListEntitiesFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListEntitiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEntitiesInput, context: context)
        type = Types::ListEntitiesInput.new
        type.workspace_id = params[:workspace_id]
        type.filters = ListEntitiesFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEntitiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEntitiesOutput, context: context)
        type = Types::ListEntitiesOutput.new
        type.entity_summaries = EntitySummaries.build(params[:entity_summaries], context: "#{context}[:entity_summaries]") unless params[:entity_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListScenesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListScenesInput, context: context)
        type = Types::ListScenesInput.new
        type.workspace_id = params[:workspace_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListScenesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListScenesOutput, context: context)
        type = Types::ListScenesOutput.new
        type.scene_summaries = SceneSummaries.build(params[:scene_summaries], context: "#{context}[:scene_summaries]") unless params[:scene_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListWorkspacesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorkspacesInput, context: context)
        type = Types::ListWorkspacesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListWorkspacesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorkspacesOutput, context: context)
        type = Types::ListWorkspacesOutput.new
        type.workspace_summaries = WorkspaceSummaries.build(params[:workspace_summaries], context: "#{context}[:workspace_summaries]") unless params[:workspace_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ParentEntityUpdateRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParentEntityUpdateRequest, context: context)
        type = Types::ParentEntityUpdateRequest.new
        type.update_type = params[:update_type]
        type.parent_entity_id = params[:parent_entity_id]
        type
      end
    end

    module PropertyDefinitionRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PropertyDefinitionRequest, context: context)
        type = Types::PropertyDefinitionRequest.new
        type.data_type = DataType.build(params[:data_type], context: "#{context}[:data_type]") unless params[:data_type].nil?
        type.is_required_in_entity = params[:is_required_in_entity]
        type.is_external_id = params[:is_external_id]
        type.is_stored_externally = params[:is_stored_externally]
        type.is_time_series = params[:is_time_series]
        type.default_value = DataValue.build(params[:default_value], context: "#{context}[:default_value]") unless params[:default_value].nil?
        type.configuration = Configuration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type
      end
    end

    module PropertyDefinitionResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PropertyDefinitionResponse, context: context)
        type = Types::PropertyDefinitionResponse.new
        type.data_type = DataType.build(params[:data_type], context: "#{context}[:data_type]") unless params[:data_type].nil?
        type.is_time_series = params[:is_time_series]
        type.is_required_in_entity = params[:is_required_in_entity]
        type.is_external_id = params[:is_external_id]
        type.is_stored_externally = params[:is_stored_externally]
        type.is_imported = params[:is_imported]
        type.is_final = params[:is_final]
        type.is_inherited = params[:is_inherited]
        type.default_value = DataValue.build(params[:default_value], context: "#{context}[:default_value]") unless params[:default_value].nil?
        type.configuration = Configuration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type
      end
    end

    module PropertyDefinitionsRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = PropertyDefinitionRequest.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module PropertyDefinitionsResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = PropertyDefinitionResponse.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module PropertyFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PropertyFilter, context: context)
        type = Types::PropertyFilter.new
        type.property_name = params[:property_name]
        type.operator = params[:operator]
        type.value = DataValue.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type
      end
    end

    module PropertyFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PropertyFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PropertyLatestValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PropertyLatestValue, context: context)
        type = Types::PropertyLatestValue.new
        type.property_reference = EntityPropertyReference.build(params[:property_reference], context: "#{context}[:property_reference]") unless params[:property_reference].nil?
        type.property_value = DataValue.build(params[:property_value], context: "#{context}[:property_value]") unless params[:property_value].nil?
        type
      end
    end

    module PropertyLatestValueMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = PropertyLatestValue.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module PropertyRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PropertyRequest, context: context)
        type = Types::PropertyRequest.new
        type.definition = PropertyDefinitionRequest.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type.value = DataValue.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type.update_type = params[:update_type]
        type
      end
    end

    module PropertyRequests
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = PropertyRequest.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module PropertyResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PropertyResponse, context: context)
        type = Types::PropertyResponse.new
        type.definition = PropertyDefinitionResponse.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type.value = DataValue.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type
      end
    end

    module PropertyResponses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = PropertyResponse.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module PropertyValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PropertyValue, context: context)
        type = Types::PropertyValue.new
        type.timestamp = params[:timestamp]
        type.value = DataValue.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type.time = params[:time]
        type
      end
    end

    module PropertyValueEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PropertyValueEntry, context: context)
        type = Types::PropertyValueEntry.new
        type.entity_property_reference = EntityPropertyReference.build(params[:entity_property_reference], context: "#{context}[:entity_property_reference]") unless params[:entity_property_reference].nil?
        type.property_values = PropertyValues.build(params[:property_values], context: "#{context}[:property_values]") unless params[:property_values].nil?
        type
      end
    end

    module PropertyValueHistory
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PropertyValueHistory, context: context)
        type = Types::PropertyValueHistory.new
        type.entity_property_reference = EntityPropertyReference.build(params[:entity_property_reference], context: "#{context}[:entity_property_reference]") unless params[:entity_property_reference].nil?
        type.values = Values.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module PropertyValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PropertyValueHistory.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PropertyValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PropertyValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Relationship
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Relationship, context: context)
        type = Types::Relationship.new
        type.target_component_type_id = params[:target_component_type_id]
        type.relationship_type = params[:relationship_type]
        type
      end
    end

    module RelationshipValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RelationshipValue, context: context)
        type = Types::RelationshipValue.new
        type.target_entity_id = params[:target_entity_id]
        type.target_component_name = params[:target_component_name]
        type
      end
    end

    module RequiredProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Set, ::Array, context: context)
        data = Set.new
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module SceneCapabilities
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SceneSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SceneSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SceneSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SceneSummary, context: context)
        type = Types::SceneSummary.new
        type.scene_id = params[:scene_id]
        type.content_location = params[:content_location]
        type.arn = params[:arn]
        type.creation_date_time = params[:creation_date_time]
        type.update_date_time = params[:update_date_time]
        type.description = params[:description]
        type
      end
    end

    module SelectedPropertyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type
      end
    end

    module Status
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Status, context: context)
        type = Types::Status.new
        type.state = params[:state]
        type.error = ErrorDetails.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module TooManyTagsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTagsException, context: context)
        type = Types::TooManyTagsException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateComponentTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateComponentTypeInput, context: context)
        type = Types::UpdateComponentTypeInput.new
        type.workspace_id = params[:workspace_id]
        type.is_singleton = params[:is_singleton]
        type.component_type_id = params[:component_type_id]
        type.description = params[:description]
        type.property_definitions = PropertyDefinitionsRequest.build(params[:property_definitions], context: "#{context}[:property_definitions]") unless params[:property_definitions].nil?
        type.extends_from = ExtendsFrom.build(params[:extends_from], context: "#{context}[:extends_from]") unless params[:extends_from].nil?
        type.functions = FunctionsRequest.build(params[:functions], context: "#{context}[:functions]") unless params[:functions].nil?
        type
      end
    end

    module UpdateComponentTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateComponentTypeOutput, context: context)
        type = Types::UpdateComponentTypeOutput.new
        type.workspace_id = params[:workspace_id]
        type.arn = params[:arn]
        type.component_type_id = params[:component_type_id]
        type.state = params[:state]
        type
      end
    end

    module UpdateEntityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEntityInput, context: context)
        type = Types::UpdateEntityInput.new
        type.workspace_id = params[:workspace_id]
        type.entity_id = params[:entity_id]
        type.entity_name = params[:entity_name]
        type.description = params[:description]
        type.component_updates = ComponentUpdatesMapRequest.build(params[:component_updates], context: "#{context}[:component_updates]") unless params[:component_updates].nil?
        type.parent_entity_update = ParentEntityUpdateRequest.build(params[:parent_entity_update], context: "#{context}[:parent_entity_update]") unless params[:parent_entity_update].nil?
        type
      end
    end

    module UpdateEntityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEntityOutput, context: context)
        type = Types::UpdateEntityOutput.new
        type.update_date_time = params[:update_date_time]
        type.state = params[:state]
        type
      end
    end

    module UpdateSceneInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSceneInput, context: context)
        type = Types::UpdateSceneInput.new
        type.workspace_id = params[:workspace_id]
        type.scene_id = params[:scene_id]
        type.content_location = params[:content_location]
        type.description = params[:description]
        type.capabilities = SceneCapabilities.build(params[:capabilities], context: "#{context}[:capabilities]") unless params[:capabilities].nil?
        type
      end
    end

    module UpdateSceneOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSceneOutput, context: context)
        type = Types::UpdateSceneOutput.new
        type.update_date_time = params[:update_date_time]
        type
      end
    end

    module UpdateWorkspaceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWorkspaceInput, context: context)
        type = Types::UpdateWorkspaceInput.new
        type.workspace_id = params[:workspace_id]
        type.description = params[:description]
        type.role = params[:role]
        type
      end
    end

    module UpdateWorkspaceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWorkspaceOutput, context: context)
        type = Types::UpdateWorkspaceOutput.new
        type.update_date_time = params[:update_date_time]
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

    module Values
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PropertyValue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WorkspaceSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WorkspaceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WorkspaceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkspaceSummary, context: context)
        type = Types::WorkspaceSummary.new
        type.workspace_id = params[:workspace_id]
        type.arn = params[:arn]
        type.description = params[:description]
        type.creation_date_time = params[:creation_date_time]
        type.update_date_time = params[:update_date_time]
        type
      end
    end

  end
end
