# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::IoTTwinMaker
  module Builders

    # Operation Builder for BatchPutPropertyValues
    class BatchPutPropertyValues
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/entity-properties',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['entries'] = Builders::Entries.build(input[:entries]) unless input[:entries].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Entries
    class Entries
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PropertyValueEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PropertyValueEntry
    class PropertyValueEntry
      def self.build(input)
        data = {}
        data['entityPropertyReference'] = Builders::EntityPropertyReference.build(input[:entity_property_reference]) unless input[:entity_property_reference].nil?
        data['propertyValues'] = Builders::PropertyValues.build(input[:property_values]) unless input[:property_values].nil?
        data
      end
    end

    # List Builder for PropertyValues
    class PropertyValues
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PropertyValue.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PropertyValue
    class PropertyValue
      def self.build(input)
        data = {}
        data['timestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:timestamp]).to_i unless input[:timestamp].nil?
        data['value'] = Builders::DataValue.build(input[:value]) unless input[:value].nil?
        data['time'] = input[:time] unless input[:time].nil?
        data
      end
    end

    # Structure Builder for DataValue
    class DataValue
      def self.build(input)
        data = {}
        data['booleanValue'] = input[:boolean_value] unless input[:boolean_value].nil?
        data['doubleValue'] = Hearth::NumberHelper.serialize(input[:double_value]) unless input[:double_value].nil?
        data['integerValue'] = input[:integer_value] unless input[:integer_value].nil?
        data['longValue'] = input[:long_value] unless input[:long_value].nil?
        data['stringValue'] = input[:string_value] unless input[:string_value].nil?
        data['listValue'] = Builders::DataValueList.build(input[:list_value]) unless input[:list_value].nil?
        data['mapValue'] = Builders::DataValueMap.build(input[:map_value]) unless input[:map_value].nil?
        data['relationshipValue'] = Builders::RelationshipValue.build(input[:relationship_value]) unless input[:relationship_value].nil?
        data['expression'] = input[:expression] unless input[:expression].nil?
        data
      end
    end

    # Structure Builder for RelationshipValue
    class RelationshipValue
      def self.build(input)
        data = {}
        data['targetEntityId'] = input[:target_entity_id] unless input[:target_entity_id].nil?
        data['targetComponentName'] = input[:target_component_name] unless input[:target_component_name].nil?
        data
      end
    end

    # Map Builder for DataValueMap
    class DataValueMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::DataValue.build(value) unless value.nil?
        end
        data
      end
    end

    # List Builder for DataValueList
    class DataValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DataValue.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EntityPropertyReference
    class EntityPropertyReference
      def self.build(input)
        data = {}
        data['componentName'] = input[:component_name] unless input[:component_name].nil?
        data['externalIdProperty'] = Builders::ExternalIdProperty.build(input[:external_id_property]) unless input[:external_id_property].nil?
        data['entityId'] = input[:entity_id] unless input[:entity_id].nil?
        data['propertyName'] = input[:property_name] unless input[:property_name].nil?
        data
      end
    end

    # Map Builder for ExternalIdProperty
    class ExternalIdProperty
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateComponentType
    class CreateComponentType
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        if input[:component_type_id].to_s.empty?
          raise ArgumentError, "HTTP label :component_type_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/component-types/%<componentTypeId>s',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s),
            componentTypeId: Hearth::HTTP.uri_escape(input[:component_type_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['isSingleton'] = input[:is_singleton] unless input[:is_singleton].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['propertyDefinitions'] = Builders::PropertyDefinitionsRequest.build(input[:property_definitions]) unless input[:property_definitions].nil?
        data['extendsFrom'] = Builders::ExtendsFrom.build(input[:extends_from]) unless input[:extends_from].nil?
        data['functions'] = Builders::FunctionsRequest.build(input[:functions]) unless input[:functions].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Map Builder for FunctionsRequest
    class FunctionsRequest
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::FunctionRequest.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for FunctionRequest
    class FunctionRequest
      def self.build(input)
        data = {}
        data['requiredProperties'] = Builders::RequiredProperties.build(input[:required_properties]).to_a unless input[:required_properties].nil?
        data['scope'] = input[:scope] unless input[:scope].nil?
        data['implementedBy'] = Builders::DataConnector.build(input[:implemented_by]) unless input[:implemented_by].nil?
        data
      end
    end

    # Structure Builder for DataConnector
    class DataConnector
      def self.build(input)
        data = {}
        data['lambda'] = Builders::LambdaFunction.build(input[:lambda]) unless input[:lambda].nil?
        data['isNative'] = input[:is_native] unless input[:is_native].nil?
        data
      end
    end

    # Structure Builder for LambdaFunction
    class LambdaFunction
      def self.build(input)
        data = {}
        data['arn'] = input[:arn] unless input[:arn].nil?
        data
      end
    end

    # Set Builder for RequiredProperties
    class RequiredProperties
      def self.build(input)
        data = Set.new
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ExtendsFrom
    class ExtendsFrom
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Map Builder for PropertyDefinitionsRequest
    class PropertyDefinitionsRequest
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::PropertyDefinitionRequest.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for PropertyDefinitionRequest
    class PropertyDefinitionRequest
      def self.build(input)
        data = {}
        data['dataType'] = Builders::DataType.build(input[:data_type]) unless input[:data_type].nil?
        data['isRequiredInEntity'] = input[:is_required_in_entity] unless input[:is_required_in_entity].nil?
        data['isExternalId'] = input[:is_external_id] unless input[:is_external_id].nil?
        data['isStoredExternally'] = input[:is_stored_externally] unless input[:is_stored_externally].nil?
        data['isTimeSeries'] = input[:is_time_series] unless input[:is_time_series].nil?
        data['defaultValue'] = Builders::DataValue.build(input[:default_value]) unless input[:default_value].nil?
        data['configuration'] = Builders::Configuration.build(input[:configuration]) unless input[:configuration].nil?
        data
      end
    end

    # Map Builder for Configuration
    class Configuration
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for DataType
    class DataType
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['nestedType'] = Builders::DataType.build(input[:nested_type]) unless input[:nested_type].nil?
        data['allowedValues'] = Builders::DataValueList.build(input[:allowed_values]) unless input[:allowed_values].nil?
        data['unitOfMeasure'] = input[:unit_of_measure] unless input[:unit_of_measure].nil?
        data['relationship'] = Builders::Relationship.build(input[:relationship]) unless input[:relationship].nil?
        data
      end
    end

    # Structure Builder for Relationship
    class Relationship
      def self.build(input)
        data = {}
        data['targetComponentTypeId'] = input[:target_component_type_id] unless input[:target_component_type_id].nil?
        data['relationshipType'] = input[:relationship_type] unless input[:relationship_type].nil?
        data
      end
    end

    # Operation Builder for CreateEntity
    class CreateEntity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/entities',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['entityId'] = input[:entity_id] unless input[:entity_id].nil?
        data['entityName'] = input[:entity_name] unless input[:entity_name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['components'] = Builders::ComponentsMapRequest.build(input[:components]) unless input[:components].nil?
        data['parentEntityId'] = input[:parent_entity_id] unless input[:parent_entity_id].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for ComponentsMapRequest
    class ComponentsMapRequest
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::ComponentRequest.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for ComponentRequest
    class ComponentRequest
      def self.build(input)
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['componentTypeId'] = input[:component_type_id] unless input[:component_type_id].nil?
        data['properties'] = Builders::PropertyRequests.build(input[:properties]) unless input[:properties].nil?
        data
      end
    end

    # Map Builder for PropertyRequests
    class PropertyRequests
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::PropertyRequest.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for PropertyRequest
    class PropertyRequest
      def self.build(input)
        data = {}
        data['definition'] = Builders::PropertyDefinitionRequest.build(input[:definition]) unless input[:definition].nil?
        data['value'] = Builders::DataValue.build(input[:value]) unless input[:value].nil?
        data['updateType'] = input[:update_type] unless input[:update_type].nil?
        data
      end
    end

    # Operation Builder for CreateScene
    class CreateScene
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/scenes',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['sceneId'] = input[:scene_id] unless input[:scene_id].nil?
        data['contentLocation'] = input[:content_location] unless input[:content_location].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['capabilities'] = Builders::SceneCapabilities.build(input[:capabilities]) unless input[:capabilities].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SceneCapabilities
    class SceneCapabilities
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateWorkspace
    class CreateWorkspace
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['s3Location'] = input[:s3_location] unless input[:s3_location].nil?
        data['role'] = input[:role] unless input[:role].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteComponentType
    class DeleteComponentType
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        if input[:component_type_id].to_s.empty?
          raise ArgumentError, "HTTP label :component_type_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/component-types/%<componentTypeId>s',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s),
            componentTypeId: Hearth::HTTP.uri_escape(input[:component_type_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteEntity
    class DeleteEntity
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        if input[:entity_id].to_s.empty?
          raise ArgumentError, "HTTP label :entity_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/entities/%<entityId>s',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s),
            entityId: Hearth::HTTP.uri_escape(input[:entity_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['isRecursive'] = input[:is_recursive].to_s unless input[:is_recursive].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteScene
    class DeleteScene
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        if input[:scene_id].to_s.empty?
          raise ArgumentError, "HTTP label :scene_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/scenes/%<sceneId>s',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s),
            sceneId: Hearth::HTTP.uri_escape(input[:scene_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteWorkspace
    class DeleteWorkspace
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetComponentType
    class GetComponentType
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        if input[:component_type_id].to_s.empty?
          raise ArgumentError, "HTTP label :component_type_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/component-types/%<componentTypeId>s',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s),
            componentTypeId: Hearth::HTTP.uri_escape(input[:component_type_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetEntity
    class GetEntity
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        if input[:entity_id].to_s.empty?
          raise ArgumentError, "HTTP label :entity_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/entities/%<entityId>s',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s),
            entityId: Hearth::HTTP.uri_escape(input[:entity_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetPropertyValue
    class GetPropertyValue
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/entity-properties/value',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['componentName'] = input[:component_name] unless input[:component_name].nil?
        data['componentTypeId'] = input[:component_type_id] unless input[:component_type_id].nil?
        data['entityId'] = input[:entity_id] unless input[:entity_id].nil?
        data['selectedProperties'] = Builders::SelectedPropertyList.build(input[:selected_properties]) unless input[:selected_properties].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SelectedPropertyList
    class SelectedPropertyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetPropertyValueHistory
    class GetPropertyValueHistory
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/entity-properties/history',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['entityId'] = input[:entity_id] unless input[:entity_id].nil?
        data['componentName'] = input[:component_name] unless input[:component_name].nil?
        data['componentTypeId'] = input[:component_type_id] unless input[:component_type_id].nil?
        data['selectedProperties'] = Builders::SelectedPropertyList.build(input[:selected_properties]) unless input[:selected_properties].nil?
        data['propertyFilters'] = Builders::PropertyFilters.build(input[:property_filters]) unless input[:property_filters].nil?
        data['startDateTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_date_time]).to_i unless input[:start_date_time].nil?
        data['endDateTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_date_time]).to_i unless input[:end_date_time].nil?
        data['interpolation'] = Builders::InterpolationParameters.build(input[:interpolation]) unless input[:interpolation].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['orderByTime'] = input[:order_by_time] unless input[:order_by_time].nil?
        data['startTime'] = input[:start_time] unless input[:start_time].nil?
        data['endTime'] = input[:end_time] unless input[:end_time].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for InterpolationParameters
    class InterpolationParameters
      def self.build(input)
        data = {}
        data['interpolationType'] = input[:interpolation_type] unless input[:interpolation_type].nil?
        data['intervalInSeconds'] = input[:interval_in_seconds] unless input[:interval_in_seconds].nil?
        data
      end
    end

    # List Builder for PropertyFilters
    class PropertyFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PropertyFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PropertyFilter
    class PropertyFilter
      def self.build(input)
        data = {}
        data['propertyName'] = input[:property_name] unless input[:property_name].nil?
        data['operator'] = input[:operator] unless input[:operator].nil?
        data['value'] = Builders::DataValue.build(input[:value]) unless input[:value].nil?
        data
      end
    end

    # Operation Builder for GetScene
    class GetScene
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        if input[:scene_id].to_s.empty?
          raise ArgumentError, "HTTP label :scene_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/scenes/%<sceneId>s',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s),
            sceneId: Hearth::HTTP.uri_escape(input[:scene_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetWorkspace
    class GetWorkspace
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListComponentTypes
    class ListComponentTypes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/component-types-list',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['filters'] = Builders::ListComponentTypesFilters.build(input[:filters]) unless input[:filters].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ListComponentTypesFilters
    class ListComponentTypesFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ListComponentTypesFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ListComponentTypesFilter
    class ListComponentTypesFilter
      def self.build(input)
        data = {}
        case input
        when Types::ListComponentTypesFilter::ExtendsFrom
          data['extendsFrom'] = input
        when Types::ListComponentTypesFilter::Namespace
          data['namespace'] = input
        when Types::ListComponentTypesFilter::IsAbstract
          data['isAbstract'] = input
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ListComponentTypesFilter"
        end

        data
      end
    end

    # Operation Builder for ListEntities
    class ListEntities
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/entities-list',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['filters'] = Builders::ListEntitiesFilters.build(input[:filters]) unless input[:filters].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ListEntitiesFilters
    class ListEntitiesFilters
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ListEntitiesFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ListEntitiesFilter
    class ListEntitiesFilter
      def self.build(input)
        data = {}
        case input
        when Types::ListEntitiesFilter::ParentEntityId
          data['parentEntityId'] = input
        when Types::ListEntitiesFilter::ComponentTypeId
          data['componentTypeId'] = input
        when Types::ListEntitiesFilter::ExternalId
          data['externalId'] = input
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::ListEntitiesFilter"
        end

        data
      end
    end

    # Operation Builder for ListScenes
    class ListScenes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/scenes-list',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/tags-list')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListWorkspaces
    class ListWorkspaces
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/workspaces-list')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/tags')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['resourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        http_req.append_path('/tags')
        params = Hearth::Query::ParamList.new
        params['resourceARN'] = input[:resource_arn].to_s unless input[:resource_arn].nil?
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
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

    # Operation Builder for UpdateComponentType
    class UpdateComponentType
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        if input[:component_type_id].to_s.empty?
          raise ArgumentError, "HTTP label :component_type_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/component-types/%<componentTypeId>s',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s),
            componentTypeId: Hearth::HTTP.uri_escape(input[:component_type_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['isSingleton'] = input[:is_singleton] unless input[:is_singleton].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['propertyDefinitions'] = Builders::PropertyDefinitionsRequest.build(input[:property_definitions]) unless input[:property_definitions].nil?
        data['extendsFrom'] = Builders::ExtendsFrom.build(input[:extends_from]) unless input[:extends_from].nil?
        data['functions'] = Builders::FunctionsRequest.build(input[:functions]) unless input[:functions].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateEntity
    class UpdateEntity
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        if input[:entity_id].to_s.empty?
          raise ArgumentError, "HTTP label :entity_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/entities/%<entityId>s',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s),
            entityId: Hearth::HTTP.uri_escape(input[:entity_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['entityName'] = input[:entity_name] unless input[:entity_name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['componentUpdates'] = Builders::ComponentUpdatesMapRequest.build(input[:component_updates]) unless input[:component_updates].nil?
        data['parentEntityUpdate'] = Builders::ParentEntityUpdateRequest.build(input[:parent_entity_update]) unless input[:parent_entity_update].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ParentEntityUpdateRequest
    class ParentEntityUpdateRequest
      def self.build(input)
        data = {}
        data['updateType'] = input[:update_type] unless input[:update_type].nil?
        data['parentEntityId'] = input[:parent_entity_id] unless input[:parent_entity_id].nil?
        data
      end
    end

    # Map Builder for ComponentUpdatesMapRequest
    class ComponentUpdatesMapRequest
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::ComponentUpdateRequest.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for ComponentUpdateRequest
    class ComponentUpdateRequest
      def self.build(input)
        data = {}
        data['updateType'] = input[:update_type] unless input[:update_type].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['componentTypeId'] = input[:component_type_id] unless input[:component_type_id].nil?
        data['propertyUpdates'] = Builders::PropertyRequests.build(input[:property_updates]) unless input[:property_updates].nil?
        data
      end
    end

    # Operation Builder for UpdateScene
    class UpdateScene
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        if input[:scene_id].to_s.empty?
          raise ArgumentError, "HTTP label :scene_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s/scenes/%<sceneId>s',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s),
            sceneId: Hearth::HTTP.uri_escape(input[:scene_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['contentLocation'] = input[:content_location] unless input[:content_location].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['capabilities'] = Builders::SceneCapabilities.build(input[:capabilities]) unless input[:capabilities].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateWorkspace
    class UpdateWorkspace
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:workspace_id].to_s.empty?
          raise ArgumentError, "HTTP label :workspace_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/workspaces/%<workspaceId>s',
            workspaceId: Hearth::HTTP.uri_escape(input[:workspace_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['role'] = input[:role] unless input[:role].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
