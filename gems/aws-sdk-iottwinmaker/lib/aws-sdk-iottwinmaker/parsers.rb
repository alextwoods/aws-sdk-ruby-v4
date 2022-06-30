# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::IoTTwinMaker
  module Parsers

    # Operation Parser for BatchPutPropertyValues
    class BatchPutPropertyValues
      def self.parse(http_resp)
        data = Types::BatchPutPropertyValuesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.error_entries = (Parsers::ErrorEntries.parse(map['errorEntries']) unless map['errorEntries'].nil?)
        data
      end
    end

    class ErrorEntries
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BatchPutPropertyErrorEntry.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchPutPropertyErrorEntry
      def self.parse(map)
        data = Types::BatchPutPropertyErrorEntry.new
        data.errors = (Parsers::Errors.parse(map['errors']) unless map['errors'].nil?)
        return data
      end
    end

    class Errors
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::BatchPutPropertyError.parse(value) unless value.nil?
        end
        data
      end
    end

    class BatchPutPropertyError
      def self.parse(map)
        data = Types::BatchPutPropertyError.new
        data.error_code = map['errorCode']
        data.error_message = map['errorMessage']
        data.entry = (Parsers::PropertyValueEntry.parse(map['entry']) unless map['entry'].nil?)
        return data
      end
    end

    class PropertyValueEntry
      def self.parse(map)
        data = Types::PropertyValueEntry.new
        data.entity_property_reference = (Parsers::EntityPropertyReference.parse(map['entityPropertyReference']) unless map['entityPropertyReference'].nil?)
        data.property_values = (Parsers::PropertyValues.parse(map['propertyValues']) unless map['propertyValues'].nil?)
        return data
      end
    end

    class PropertyValues
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PropertyValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class PropertyValue
      def self.parse(map)
        data = Types::PropertyValue.new
        data.timestamp = Time.at(map['timestamp'].to_i) if map['timestamp']
        data.value = (Parsers::DataValue.parse(map['value']) unless map['value'].nil?)
        data.time = map['time']
        return data
      end
    end

    class DataValue
      def self.parse(map)
        data = Types::DataValue.new
        data.boolean_value = map['booleanValue']
        data.double_value = Hearth::NumberHelper.deserialize(map['doubleValue'])
        data.integer_value = map['integerValue']
        data.long_value = map['longValue']
        data.string_value = map['stringValue']
        data.list_value = (Parsers::DataValueList.parse(map['listValue']) unless map['listValue'].nil?)
        data.map_value = (Parsers::DataValueMap.parse(map['mapValue']) unless map['mapValue'].nil?)
        data.relationship_value = (Parsers::RelationshipValue.parse(map['relationshipValue']) unless map['relationshipValue'].nil?)
        data.expression = map['expression']
        return data
      end
    end

    class RelationshipValue
      def self.parse(map)
        data = Types::RelationshipValue.new
        data.target_entity_id = map['targetEntityId']
        data.target_component_name = map['targetComponentName']
        return data
      end
    end

    class DataValueMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::DataValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class DataValueList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DataValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class EntityPropertyReference
      def self.parse(map)
        data = Types::EntityPropertyReference.new
        data.component_name = map['componentName']
        data.external_id_property = (Parsers::ExternalIdProperty.parse(map['externalIdProperty']) unless map['externalIdProperty'].nil?)
        data.entity_id = map['entityId']
        data.property_name = map['propertyName']
        return data
      end
    end

    class ExternalIdProperty
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateComponentType
    class CreateComponentType
      def self.parse(http_resp)
        data = Types::CreateComponentTypeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.state = map['state']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateEntity
    class CreateEntity
      def self.parse(http_resp)
        data = Types::CreateEntityOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.entity_id = map['entityId']
        data.arn = map['arn']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.state = map['state']
        data
      end
    end

    # Operation Parser for CreateScene
    class CreateScene
      def self.parse(http_resp)
        data = Types::CreateSceneOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data
      end
    end

    # Operation Parser for CreateWorkspace
    class CreateWorkspace
      def self.parse(http_resp)
        data = Types::CreateWorkspaceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['arn']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data
      end
    end

    # Operation Parser for DeleteComponentType
    class DeleteComponentType
      def self.parse(http_resp)
        data = Types::DeleteComponentTypeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.state = map['state']
        data
      end
    end

    # Operation Parser for DeleteEntity
    class DeleteEntity
      def self.parse(http_resp)
        data = Types::DeleteEntityOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.state = map['state']
        data
      end
    end

    # Operation Parser for DeleteScene
    class DeleteScene
      def self.parse(http_resp)
        data = Types::DeleteSceneOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteWorkspace
    class DeleteWorkspace
      def self.parse(http_resp)
        data = Types::DeleteWorkspaceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetComponentType
    class GetComponentType
      def self.parse(http_resp)
        data = Types::GetComponentTypeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workspace_id = map['workspaceId']
        data.is_singleton = map['isSingleton']
        data.component_type_id = map['componentTypeId']
        data.description = map['description']
        data.property_definitions = (Parsers::PropertyDefinitionsResponse.parse(map['propertyDefinitions']) unless map['propertyDefinitions'].nil?)
        data.extends_from = (Parsers::ExtendsFrom.parse(map['extendsFrom']) unless map['extendsFrom'].nil?)
        data.functions = (Parsers::FunctionsResponse.parse(map['functions']) unless map['functions'].nil?)
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.update_date_time = Time.at(map['updateDateTime'].to_i) if map['updateDateTime']
        data.arn = map['arn']
        data.is_abstract = map['isAbstract']
        data.is_schema_initialized = map['isSchemaInitialized']
        data.status = (Parsers::Status.parse(map['status']) unless map['status'].nil?)
        data
      end
    end

    class Status
      def self.parse(map)
        data = Types::Status.new
        data.state = map['state']
        data.error = (Parsers::ErrorDetails.parse(map['error']) unless map['error'].nil?)
        return data
      end
    end

    class ErrorDetails
      def self.parse(map)
        data = Types::ErrorDetails.new
        data.code = map['code']
        data.message = map['message'] || map['Message']
        return data
      end
    end

    class FunctionsResponse
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::FunctionResponse.parse(value) unless value.nil?
        end
        data
      end
    end

    class FunctionResponse
      def self.parse(map)
        data = Types::FunctionResponse.new
        data.required_properties = map['requiredProperties']
        data.scope = map['scope']
        data.implemented_by = (Parsers::DataConnector.parse(map['implementedBy']) unless map['implementedBy'].nil?)
        data.is_inherited = map['isInherited']
        return data
      end
    end

    class DataConnector
      def self.parse(map)
        data = Types::DataConnector.new
        data.lambda = (Parsers::LambdaFunction.parse(map['lambda']) unless map['lambda'].nil?)
        data.is_native = map['isNative']
        return data
      end
    end

    class LambdaFunction
      def self.parse(map)
        data = Types::LambdaFunction.new
        data.arn = map['arn']
        return data
      end
    end

    class RequiredProperties
      def self.parse(list)
        data = list.map do |value|
          value unless value.nil?
        end
        Set.new(data)
      end
    end

    class ExtendsFrom
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class PropertyDefinitionsResponse
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::PropertyDefinitionResponse.parse(value) unless value.nil?
        end
        data
      end
    end

    class PropertyDefinitionResponse
      def self.parse(map)
        data = Types::PropertyDefinitionResponse.new
        data.data_type = (Parsers::DataType.parse(map['dataType']) unless map['dataType'].nil?)
        data.is_time_series = map['isTimeSeries']
        data.is_required_in_entity = map['isRequiredInEntity']
        data.is_external_id = map['isExternalId']
        data.is_stored_externally = map['isStoredExternally']
        data.is_imported = map['isImported']
        data.is_final = map['isFinal']
        data.is_inherited = map['isInherited']
        data.default_value = (Parsers::DataValue.parse(map['defaultValue']) unless map['defaultValue'].nil?)
        data.configuration = (Parsers::Configuration.parse(map['configuration']) unless map['configuration'].nil?)
        return data
      end
    end

    class Configuration
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class DataType
      def self.parse(map)
        data = Types::DataType.new
        data.type = map['type']
        data.nested_type = (Parsers::DataType.parse(map['nestedType']) unless map['nestedType'].nil?)
        data.allowed_values = (Parsers::DataValueList.parse(map['allowedValues']) unless map['allowedValues'].nil?)
        data.unit_of_measure = map['unitOfMeasure']
        data.relationship = (Parsers::Relationship.parse(map['relationship']) unless map['relationship'].nil?)
        return data
      end
    end

    class Relationship
      def self.parse(map)
        data = Types::Relationship.new
        data.target_component_type_id = map['targetComponentTypeId']
        data.relationship_type = map['relationshipType']
        return data
      end
    end

    # Operation Parser for GetEntity
    class GetEntity
      def self.parse(http_resp)
        data = Types::GetEntityOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.entity_id = map['entityId']
        data.entity_name = map['entityName']
        data.arn = map['arn']
        data.status = (Parsers::Status.parse(map['status']) unless map['status'].nil?)
        data.workspace_id = map['workspaceId']
        data.description = map['description']
        data.components = (Parsers::ComponentsMap.parse(map['components']) unless map['components'].nil?)
        data.parent_entity_id = map['parentEntityId']
        data.has_child_entities = map['hasChildEntities']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.update_date_time = Time.at(map['updateDateTime'].to_i) if map['updateDateTime']
        data
      end
    end

    class ComponentsMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::ComponentResponse.parse(value) unless value.nil?
        end
        data
      end
    end

    class ComponentResponse
      def self.parse(map)
        data = Types::ComponentResponse.new
        data.component_name = map['componentName']
        data.description = map['description']
        data.component_type_id = map['componentTypeId']
        data.status = (Parsers::Status.parse(map['status']) unless map['status'].nil?)
        data.defined_in = map['definedIn']
        data.properties = (Parsers::PropertyResponses.parse(map['properties']) unless map['properties'].nil?)
        return data
      end
    end

    class PropertyResponses
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::PropertyResponse.parse(value) unless value.nil?
        end
        data
      end
    end

    class PropertyResponse
      def self.parse(map)
        data = Types::PropertyResponse.new
        data.definition = (Parsers::PropertyDefinitionResponse.parse(map['definition']) unless map['definition'].nil?)
        data.value = (Parsers::DataValue.parse(map['value']) unless map['value'].nil?)
        return data
      end
    end

    # Operation Parser for GetPropertyValue
    class GetPropertyValue
      def self.parse(http_resp)
        data = Types::GetPropertyValueOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.property_values = (Parsers::PropertyLatestValueMap.parse(map['propertyValues']) unless map['propertyValues'].nil?)
        data
      end
    end

    class PropertyLatestValueMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::PropertyLatestValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class PropertyLatestValue
      def self.parse(map)
        data = Types::PropertyLatestValue.new
        data.property_reference = (Parsers::EntityPropertyReference.parse(map['propertyReference']) unless map['propertyReference'].nil?)
        data.property_value = (Parsers::DataValue.parse(map['propertyValue']) unless map['propertyValue'].nil?)
        return data
      end
    end

    # Error Parser for ConnectorFailureException
    class ConnectorFailureException
      def self.parse(http_resp)
        data = Types::ConnectorFailureException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ConnectorTimeoutException
    class ConnectorTimeoutException
      def self.parse(http_resp)
        data = Types::ConnectorTimeoutException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for GetPropertyValueHistory
    class GetPropertyValueHistory
      def self.parse(http_resp)
        data = Types::GetPropertyValueHistoryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.property_values = (Parsers::PropertyValueList.parse(map['propertyValues']) unless map['propertyValues'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class PropertyValueList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PropertyValueHistory.parse(value) unless value.nil?
        end
        data
      end
    end

    class PropertyValueHistory
      def self.parse(map)
        data = Types::PropertyValueHistory.new
        data.entity_property_reference = (Parsers::EntityPropertyReference.parse(map['entityPropertyReference']) unless map['entityPropertyReference'].nil?)
        data.values = (Parsers::Values.parse(map['values']) unless map['values'].nil?)
        return data
      end
    end

    class Values
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PropertyValue.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetScene
    class GetScene
      def self.parse(http_resp)
        data = Types::GetSceneOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workspace_id = map['workspaceId']
        data.scene_id = map['sceneId']
        data.content_location = map['contentLocation']
        data.arn = map['arn']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.update_date_time = Time.at(map['updateDateTime'].to_i) if map['updateDateTime']
        data.description = map['description']
        data.capabilities = (Parsers::SceneCapabilities.parse(map['capabilities']) unless map['capabilities'].nil?)
        data
      end
    end

    class SceneCapabilities
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetWorkspace
    class GetWorkspace
      def self.parse(http_resp)
        data = Types::GetWorkspaceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workspace_id = map['workspaceId']
        data.arn = map['arn']
        data.description = map['description']
        data.s3_location = map['s3Location']
        data.role = map['role']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.update_date_time = Time.at(map['updateDateTime'].to_i) if map['updateDateTime']
        data
      end
    end

    # Operation Parser for ListComponentTypes
    class ListComponentTypes
      def self.parse(http_resp)
        data = Types::ListComponentTypesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workspace_id = map['workspaceId']
        data.component_type_summaries = (Parsers::ComponentTypeSummaries.parse(map['componentTypeSummaries']) unless map['componentTypeSummaries'].nil?)
        data.next_token = map['nextToken']
        data.max_results = map['maxResults']
        data
      end
    end

    class ComponentTypeSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ComponentTypeSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ComponentTypeSummary
      def self.parse(map)
        data = Types::ComponentTypeSummary.new
        data.arn = map['arn']
        data.component_type_id = map['componentTypeId']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.update_date_time = Time.at(map['updateDateTime'].to_i) if map['updateDateTime']
        data.description = map['description']
        data.status = (Parsers::Status.parse(map['status']) unless map['status'].nil?)
        return data
      end
    end

    # Operation Parser for ListEntities
    class ListEntities
      def self.parse(http_resp)
        data = Types::ListEntitiesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.entity_summaries = (Parsers::EntitySummaries.parse(map['entitySummaries']) unless map['entitySummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class EntitySummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::EntitySummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class EntitySummary
      def self.parse(map)
        data = Types::EntitySummary.new
        data.entity_id = map['entityId']
        data.entity_name = map['entityName']
        data.arn = map['arn']
        data.parent_entity_id = map['parentEntityId']
        data.status = (Parsers::Status.parse(map['status']) unless map['status'].nil?)
        data.description = map['description']
        data.has_child_entities = map['hasChildEntities']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.update_date_time = Time.at(map['updateDateTime'].to_i) if map['updateDateTime']
        return data
      end
    end

    # Operation Parser for ListScenes
    class ListScenes
      def self.parse(http_resp)
        data = Types::ListScenesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.scene_summaries = (Parsers::SceneSummaries.parse(map['sceneSummaries']) unless map['sceneSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class SceneSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SceneSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class SceneSummary
      def self.parse(map)
        data = Types::SceneSummary.new
        data.scene_id = map['sceneId']
        data.content_location = map['contentLocation']
        data.arn = map['arn']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.update_date_time = Time.at(map['updateDateTime'].to_i) if map['updateDateTime']
        data.description = map['description']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListWorkspaces
    class ListWorkspaces
      def self.parse(http_resp)
        data = Types::ListWorkspacesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workspace_summaries = (Parsers::WorkspaceSummaries.parse(map['workspaceSummaries']) unless map['workspaceSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class WorkspaceSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::WorkspaceSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class WorkspaceSummary
      def self.parse(map)
        data = Types::WorkspaceSummary.new
        data.workspace_id = map['workspaceId']
        data.arn = map['arn']
        data.description = map['description']
        data.creation_date_time = Time.at(map['creationDateTime'].to_i) if map['creationDateTime']
        data.update_date_time = Time.at(map['updateDateTime'].to_i) if map['updateDateTime']
        return data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for TooManyTagsException
    class TooManyTagsException
      def self.parse(http_resp)
        data = Types::TooManyTagsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateComponentType
    class UpdateComponentType
      def self.parse(http_resp)
        data = Types::UpdateComponentTypeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workspace_id = map['workspaceId']
        data.arn = map['arn']
        data.component_type_id = map['componentTypeId']
        data.state = map['state']
        data
      end
    end

    # Operation Parser for UpdateEntity
    class UpdateEntity
      def self.parse(http_resp)
        data = Types::UpdateEntityOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.update_date_time = Time.at(map['updateDateTime'].to_i) if map['updateDateTime']
        data.state = map['state']
        data
      end
    end

    # Operation Parser for UpdateScene
    class UpdateScene
      def self.parse(http_resp)
        data = Types::UpdateSceneOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.update_date_time = Time.at(map['updateDateTime'].to_i) if map['updateDateTime']
        data
      end
    end

    # Operation Parser for UpdateWorkspace
    class UpdateWorkspace
      def self.parse(http_resp)
        data = Types::UpdateWorkspaceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.update_date_time = Time.at(map['updateDateTime'].to_i) if map['updateDateTime']
        data
      end
    end
  end
end
