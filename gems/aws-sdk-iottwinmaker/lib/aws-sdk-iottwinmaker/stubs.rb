# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTTwinMaker
  module Stubs

    # Operation Stubber for BatchPutPropertyValues
    class BatchPutPropertyValues
      def self.default(visited=[])
        {
          error_entries: Stubs::ErrorEntries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['errorEntries'] = Stubs::ErrorEntries.stub(stub[:error_entries]) unless stub[:error_entries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ErrorEntries
    class ErrorEntries
      def self.default(visited=[])
        return nil if visited.include?('ErrorEntries')
        visited = visited + ['ErrorEntries']
        [
          Stubs::BatchPutPropertyErrorEntry.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BatchPutPropertyErrorEntry.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchPutPropertyErrorEntry
    class BatchPutPropertyErrorEntry
      def self.default(visited=[])
        return nil if visited.include?('BatchPutPropertyErrorEntry')
        visited = visited + ['BatchPutPropertyErrorEntry']
        {
          errors: Stubs::Errors.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchPutPropertyErrorEntry.new
        data = {}
        data['errors'] = Stubs::Errors.stub(stub[:errors]) unless stub[:errors].nil?
        data
      end
    end

    # List Stubber for Errors
    class Errors
      def self.default(visited=[])
        return nil if visited.include?('Errors')
        visited = visited + ['Errors']
        [
          Stubs::BatchPutPropertyError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BatchPutPropertyError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchPutPropertyError
    class BatchPutPropertyError
      def self.default(visited=[])
        return nil if visited.include?('BatchPutPropertyError')
        visited = visited + ['BatchPutPropertyError']
        {
          error_code: 'error_code',
          error_message: 'error_message',
          entry: Stubs::PropertyValueEntry.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchPutPropertyError.new
        data = {}
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['entry'] = Stubs::PropertyValueEntry.stub(stub[:entry]) unless stub[:entry].nil?
        data
      end
    end

    # Structure Stubber for PropertyValueEntry
    class PropertyValueEntry
      def self.default(visited=[])
        return nil if visited.include?('PropertyValueEntry')
        visited = visited + ['PropertyValueEntry']
        {
          entity_property_reference: Stubs::EntityPropertyReference.default(visited),
          property_values: Stubs::PropertyValues.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PropertyValueEntry.new
        data = {}
        data['entityPropertyReference'] = Stubs::EntityPropertyReference.stub(stub[:entity_property_reference]) unless stub[:entity_property_reference].nil?
        data['propertyValues'] = Stubs::PropertyValues.stub(stub[:property_values]) unless stub[:property_values].nil?
        data
      end
    end

    # List Stubber for PropertyValues
    class PropertyValues
      def self.default(visited=[])
        return nil if visited.include?('PropertyValues')
        visited = visited + ['PropertyValues']
        [
          Stubs::PropertyValue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PropertyValue.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PropertyValue
    class PropertyValue
      def self.default(visited=[])
        return nil if visited.include?('PropertyValue')
        visited = visited + ['PropertyValue']
        {
          timestamp: Time.now,
          value: Stubs::DataValue.default(visited),
          time: 'time',
        }
      end

      def self.stub(stub)
        stub ||= Types::PropertyValue.new
        data = {}
        data['timestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:timestamp]).to_i unless stub[:timestamp].nil?
        data['value'] = Stubs::DataValue.stub(stub[:value]) unless stub[:value].nil?
        data['time'] = stub[:time] unless stub[:time].nil?
        data
      end
    end

    # Structure Stubber for DataValue
    class DataValue
      def self.default(visited=[])
        return nil if visited.include?('DataValue')
        visited = visited + ['DataValue']
        {
          boolean_value: false,
          double_value: 1.0,
          integer_value: 1,
          long_value: 1,
          string_value: 'string_value',
          list_value: Stubs::DataValueList.default(visited),
          map_value: Stubs::DataValueMap.default(visited),
          relationship_value: Stubs::RelationshipValue.default(visited),
          expression: 'expression',
        }
      end

      def self.stub(stub)
        stub ||= Types::DataValue.new
        data = {}
        data['booleanValue'] = stub[:boolean_value] unless stub[:boolean_value].nil?
        data['doubleValue'] = Hearth::NumberHelper.serialize(stub[:double_value])
        data['integerValue'] = stub[:integer_value] unless stub[:integer_value].nil?
        data['longValue'] = stub[:long_value] unless stub[:long_value].nil?
        data['stringValue'] = stub[:string_value] unless stub[:string_value].nil?
        data['listValue'] = Stubs::DataValueList.stub(stub[:list_value]) unless stub[:list_value].nil?
        data['mapValue'] = Stubs::DataValueMap.stub(stub[:map_value]) unless stub[:map_value].nil?
        data['relationshipValue'] = Stubs::RelationshipValue.stub(stub[:relationship_value]) unless stub[:relationship_value].nil?
        data['expression'] = stub[:expression] unless stub[:expression].nil?
        data
      end
    end

    # Structure Stubber for RelationshipValue
    class RelationshipValue
      def self.default(visited=[])
        return nil if visited.include?('RelationshipValue')
        visited = visited + ['RelationshipValue']
        {
          target_entity_id: 'target_entity_id',
          target_component_name: 'target_component_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::RelationshipValue.new
        data = {}
        data['targetEntityId'] = stub[:target_entity_id] unless stub[:target_entity_id].nil?
        data['targetComponentName'] = stub[:target_component_name] unless stub[:target_component_name].nil?
        data
      end
    end

    # Map Stubber for DataValueMap
    class DataValueMap
      def self.default(visited=[])
        return nil if visited.include?('DataValueMap')
        visited = visited + ['DataValueMap']
        {
          test_key: Stubs::DataValue.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::DataValue.stub(value) unless value.nil?
        end
        data
      end
    end

    # List Stubber for DataValueList
    class DataValueList
      def self.default(visited=[])
        return nil if visited.include?('DataValueList')
        visited = visited + ['DataValueList']
        [
          Stubs::DataValue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DataValue.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EntityPropertyReference
    class EntityPropertyReference
      def self.default(visited=[])
        return nil if visited.include?('EntityPropertyReference')
        visited = visited + ['EntityPropertyReference']
        {
          component_name: 'component_name',
          external_id_property: Stubs::ExternalIdProperty.default(visited),
          entity_id: 'entity_id',
          property_name: 'property_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::EntityPropertyReference.new
        data = {}
        data['componentName'] = stub[:component_name] unless stub[:component_name].nil?
        data['externalIdProperty'] = Stubs::ExternalIdProperty.stub(stub[:external_id_property]) unless stub[:external_id_property].nil?
        data['entityId'] = stub[:entity_id] unless stub[:entity_id].nil?
        data['propertyName'] = stub[:property_name] unless stub[:property_name].nil?
        data
      end
    end

    # Map Stubber for ExternalIdProperty
    class ExternalIdProperty
      def self.default(visited=[])
        return nil if visited.include?('ExternalIdProperty')
        visited = visited + ['ExternalIdProperty']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateComponentType
    class CreateComponentType
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_date_time: Time.now,
          state: 'state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateEntity
    class CreateEntity
      def self.default(visited=[])
        {
          entity_id: 'entity_id',
          arn: 'arn',
          creation_date_time: Time.now,
          state: 'state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['entityId'] = stub[:entity_id] unless stub[:entity_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateScene
    class CreateScene
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_date_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateWorkspace
    class CreateWorkspace
      def self.default(visited=[])
        {
          arn: 'arn',
          creation_date_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteComponentType
    class DeleteComponentType
      def self.default(visited=[])
        {
          state: 'state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['state'] = stub[:state] unless stub[:state].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteEntity
    class DeleteEntity
      def self.default(visited=[])
        {
          state: 'state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['state'] = stub[:state] unless stub[:state].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteScene
    class DeleteScene
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteWorkspace
    class DeleteWorkspace
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetComponentType
    class GetComponentType
      def self.default(visited=[])
        {
          workspace_id: 'workspace_id',
          is_singleton: false,
          component_type_id: 'component_type_id',
          description: 'description',
          property_definitions: Stubs::PropertyDefinitionsResponse.default(visited),
          extends_from: Stubs::ExtendsFrom.default(visited),
          functions: Stubs::FunctionsResponse.default(visited),
          creation_date_time: Time.now,
          update_date_time: Time.now,
          arn: 'arn',
          is_abstract: false,
          is_schema_initialized: false,
          status: Stubs::Status.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['workspaceId'] = stub[:workspace_id] unless stub[:workspace_id].nil?
        data['isSingleton'] = stub[:is_singleton] unless stub[:is_singleton].nil?
        data['componentTypeId'] = stub[:component_type_id] unless stub[:component_type_id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['propertyDefinitions'] = Stubs::PropertyDefinitionsResponse.stub(stub[:property_definitions]) unless stub[:property_definitions].nil?
        data['extendsFrom'] = Stubs::ExtendsFrom.stub(stub[:extends_from]) unless stub[:extends_from].nil?
        data['functions'] = Stubs::FunctionsResponse.stub(stub[:functions]) unless stub[:functions].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['updateDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:update_date_time]).to_i unless stub[:update_date_time].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['isAbstract'] = stub[:is_abstract] unless stub[:is_abstract].nil?
        data['isSchemaInitialized'] = stub[:is_schema_initialized] unless stub[:is_schema_initialized].nil?
        data['status'] = Stubs::Status.stub(stub[:status]) unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Status
    class Status
      def self.default(visited=[])
        return nil if visited.include?('Status')
        visited = visited + ['Status']
        {
          state: 'state',
          error: Stubs::ErrorDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Status.new
        data = {}
        data['state'] = stub[:state] unless stub[:state].nil?
        data['error'] = Stubs::ErrorDetails.stub(stub[:error]) unless stub[:error].nil?
        data
      end
    end

    # Structure Stubber for ErrorDetails
    class ErrorDetails
      def self.default(visited=[])
        return nil if visited.include?('ErrorDetails')
        visited = visited + ['ErrorDetails']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ErrorDetails.new
        data = {}
        data['code'] = stub[:code] unless stub[:code].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Map Stubber for FunctionsResponse
    class FunctionsResponse
      def self.default(visited=[])
        return nil if visited.include?('FunctionsResponse')
        visited = visited + ['FunctionsResponse']
        {
          test_key: Stubs::FunctionResponse.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::FunctionResponse.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for FunctionResponse
    class FunctionResponse
      def self.default(visited=[])
        return nil if visited.include?('FunctionResponse')
        visited = visited + ['FunctionResponse']
        {
          required_properties: Stubs::RequiredProperties.default(visited),
          scope: 'scope',
          implemented_by: Stubs::DataConnector.default(visited),
          is_inherited: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::FunctionResponse.new
        data = {}
        data['requiredProperties'] = Stubs::RequiredProperties.stub(stub[:required_properties]) unless stub[:required_properties].nil?
        data['scope'] = stub[:scope] unless stub[:scope].nil?
        data['implementedBy'] = Stubs::DataConnector.stub(stub[:implemented_by]) unless stub[:implemented_by].nil?
        data['isInherited'] = stub[:is_inherited] unless stub[:is_inherited].nil?
        data
      end
    end

    # Structure Stubber for DataConnector
    class DataConnector
      def self.default(visited=[])
        return nil if visited.include?('DataConnector')
        visited = visited + ['DataConnector']
        {
          lambda: Stubs::LambdaFunction.default(visited),
          is_native: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::DataConnector.new
        data = {}
        data['lambda'] = Stubs::LambdaFunction.stub(stub[:lambda]) unless stub[:lambda].nil?
        data['isNative'] = stub[:is_native] unless stub[:is_native].nil?
        data
      end
    end

    # Structure Stubber for LambdaFunction
    class LambdaFunction
      def self.default(visited=[])
        return nil if visited.include?('LambdaFunction')
        visited = visited + ['LambdaFunction']
        {
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaFunction.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Set Stubber for RequiredProperties
    class RequiredProperties
      def self.default(visited=[])
        return nil if visited.include?('RequiredProperties')
        visited = visited + ['RequiredProperties']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = Set.new
        stub.each do |element|
          data << element unless element.nil?
        end
        data.to_a
      end
    end

    # List Stubber for ExtendsFrom
    class ExtendsFrom
      def self.default(visited=[])
        return nil if visited.include?('ExtendsFrom')
        visited = visited + ['ExtendsFrom']
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

    # Map Stubber for PropertyDefinitionsResponse
    class PropertyDefinitionsResponse
      def self.default(visited=[])
        return nil if visited.include?('PropertyDefinitionsResponse')
        visited = visited + ['PropertyDefinitionsResponse']
        {
          test_key: Stubs::PropertyDefinitionResponse.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::PropertyDefinitionResponse.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for PropertyDefinitionResponse
    class PropertyDefinitionResponse
      def self.default(visited=[])
        return nil if visited.include?('PropertyDefinitionResponse')
        visited = visited + ['PropertyDefinitionResponse']
        {
          data_type: Stubs::DataType.default(visited),
          is_time_series: false,
          is_required_in_entity: false,
          is_external_id: false,
          is_stored_externally: false,
          is_imported: false,
          is_final: false,
          is_inherited: false,
          default_value: Stubs::DataValue.default(visited),
          configuration: Stubs::Configuration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PropertyDefinitionResponse.new
        data = {}
        data['dataType'] = Stubs::DataType.stub(stub[:data_type]) unless stub[:data_type].nil?
        data['isTimeSeries'] = stub[:is_time_series] unless stub[:is_time_series].nil?
        data['isRequiredInEntity'] = stub[:is_required_in_entity] unless stub[:is_required_in_entity].nil?
        data['isExternalId'] = stub[:is_external_id] unless stub[:is_external_id].nil?
        data['isStoredExternally'] = stub[:is_stored_externally] unless stub[:is_stored_externally].nil?
        data['isImported'] = stub[:is_imported] unless stub[:is_imported].nil?
        data['isFinal'] = stub[:is_final] unless stub[:is_final].nil?
        data['isInherited'] = stub[:is_inherited] unless stub[:is_inherited].nil?
        data['defaultValue'] = Stubs::DataValue.stub(stub[:default_value]) unless stub[:default_value].nil?
        data['configuration'] = Stubs::Configuration.stub(stub[:configuration]) unless stub[:configuration].nil?
        data
      end
    end

    # Map Stubber for Configuration
    class Configuration
      def self.default(visited=[])
        return nil if visited.include?('Configuration')
        visited = visited + ['Configuration']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for DataType
    class DataType
      def self.default(visited=[])
        return nil if visited.include?('DataType')
        visited = visited + ['DataType']
        {
          type: 'type',
          nested_type: Stubs::DataType.default(visited),
          allowed_values: Stubs::DataValueList.default(visited),
          unit_of_measure: 'unit_of_measure',
          relationship: Stubs::Relationship.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataType.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['nestedType'] = Stubs::DataType.stub(stub[:nested_type]) unless stub[:nested_type].nil?
        data['allowedValues'] = Stubs::DataValueList.stub(stub[:allowed_values]) unless stub[:allowed_values].nil?
        data['unitOfMeasure'] = stub[:unit_of_measure] unless stub[:unit_of_measure].nil?
        data['relationship'] = Stubs::Relationship.stub(stub[:relationship]) unless stub[:relationship].nil?
        data
      end
    end

    # Structure Stubber for Relationship
    class Relationship
      def self.default(visited=[])
        return nil if visited.include?('Relationship')
        visited = visited + ['Relationship']
        {
          target_component_type_id: 'target_component_type_id',
          relationship_type: 'relationship_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Relationship.new
        data = {}
        data['targetComponentTypeId'] = stub[:target_component_type_id] unless stub[:target_component_type_id].nil?
        data['relationshipType'] = stub[:relationship_type] unless stub[:relationship_type].nil?
        data
      end
    end

    # Operation Stubber for GetEntity
    class GetEntity
      def self.default(visited=[])
        {
          entity_id: 'entity_id',
          entity_name: 'entity_name',
          arn: 'arn',
          status: Stubs::Status.default(visited),
          workspace_id: 'workspace_id',
          description: 'description',
          components: Stubs::ComponentsMap.default(visited),
          parent_entity_id: 'parent_entity_id',
          has_child_entities: false,
          creation_date_time: Time.now,
          update_date_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['entityId'] = stub[:entity_id] unless stub[:entity_id].nil?
        data['entityName'] = stub[:entity_name] unless stub[:entity_name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['status'] = Stubs::Status.stub(stub[:status]) unless stub[:status].nil?
        data['workspaceId'] = stub[:workspace_id] unless stub[:workspace_id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['components'] = Stubs::ComponentsMap.stub(stub[:components]) unless stub[:components].nil?
        data['parentEntityId'] = stub[:parent_entity_id] unless stub[:parent_entity_id].nil?
        data['hasChildEntities'] = stub[:has_child_entities] unless stub[:has_child_entities].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['updateDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:update_date_time]).to_i unless stub[:update_date_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for ComponentsMap
    class ComponentsMap
      def self.default(visited=[])
        return nil if visited.include?('ComponentsMap')
        visited = visited + ['ComponentsMap']
        {
          test_key: Stubs::ComponentResponse.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::ComponentResponse.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for ComponentResponse
    class ComponentResponse
      def self.default(visited=[])
        return nil if visited.include?('ComponentResponse')
        visited = visited + ['ComponentResponse']
        {
          component_name: 'component_name',
          description: 'description',
          component_type_id: 'component_type_id',
          status: Stubs::Status.default(visited),
          defined_in: 'defined_in',
          properties: Stubs::PropertyResponses.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ComponentResponse.new
        data = {}
        data['componentName'] = stub[:component_name] unless stub[:component_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['componentTypeId'] = stub[:component_type_id] unless stub[:component_type_id].nil?
        data['status'] = Stubs::Status.stub(stub[:status]) unless stub[:status].nil?
        data['definedIn'] = stub[:defined_in] unless stub[:defined_in].nil?
        data['properties'] = Stubs::PropertyResponses.stub(stub[:properties]) unless stub[:properties].nil?
        data
      end
    end

    # Map Stubber for PropertyResponses
    class PropertyResponses
      def self.default(visited=[])
        return nil if visited.include?('PropertyResponses')
        visited = visited + ['PropertyResponses']
        {
          test_key: Stubs::PropertyResponse.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::PropertyResponse.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for PropertyResponse
    class PropertyResponse
      def self.default(visited=[])
        return nil if visited.include?('PropertyResponse')
        visited = visited + ['PropertyResponse']
        {
          definition: Stubs::PropertyDefinitionResponse.default(visited),
          value: Stubs::DataValue.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PropertyResponse.new
        data = {}
        data['definition'] = Stubs::PropertyDefinitionResponse.stub(stub[:definition]) unless stub[:definition].nil?
        data['value'] = Stubs::DataValue.stub(stub[:value]) unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for GetPropertyValue
    class GetPropertyValue
      def self.default(visited=[])
        {
          property_values: Stubs::PropertyLatestValueMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['propertyValues'] = Stubs::PropertyLatestValueMap.stub(stub[:property_values]) unless stub[:property_values].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for PropertyLatestValueMap
    class PropertyLatestValueMap
      def self.default(visited=[])
        return nil if visited.include?('PropertyLatestValueMap')
        visited = visited + ['PropertyLatestValueMap']
        {
          test_key: Stubs::PropertyLatestValue.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::PropertyLatestValue.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for PropertyLatestValue
    class PropertyLatestValue
      def self.default(visited=[])
        return nil if visited.include?('PropertyLatestValue')
        visited = visited + ['PropertyLatestValue']
        {
          property_reference: Stubs::EntityPropertyReference.default(visited),
          property_value: Stubs::DataValue.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PropertyLatestValue.new
        data = {}
        data['propertyReference'] = Stubs::EntityPropertyReference.stub(stub[:property_reference]) unless stub[:property_reference].nil?
        data['propertyValue'] = Stubs::DataValue.stub(stub[:property_value]) unless stub[:property_value].nil?
        data
      end
    end

    # Operation Stubber for GetPropertyValueHistory
    class GetPropertyValueHistory
      def self.default(visited=[])
        {
          property_values: Stubs::PropertyValueList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['propertyValues'] = Stubs::PropertyValueList.stub(stub[:property_values]) unless stub[:property_values].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PropertyValueList
    class PropertyValueList
      def self.default(visited=[])
        return nil if visited.include?('PropertyValueList')
        visited = visited + ['PropertyValueList']
        [
          Stubs::PropertyValueHistory.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PropertyValueHistory.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PropertyValueHistory
    class PropertyValueHistory
      def self.default(visited=[])
        return nil if visited.include?('PropertyValueHistory')
        visited = visited + ['PropertyValueHistory']
        {
          entity_property_reference: Stubs::EntityPropertyReference.default(visited),
          values: Stubs::Values.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PropertyValueHistory.new
        data = {}
        data['entityPropertyReference'] = Stubs::EntityPropertyReference.stub(stub[:entity_property_reference]) unless stub[:entity_property_reference].nil?
        data['values'] = Stubs::Values.stub(stub[:values]) unless stub[:values].nil?
        data
      end
    end

    # List Stubber for Values
    class Values
      def self.default(visited=[])
        return nil if visited.include?('Values')
        visited = visited + ['Values']
        [
          Stubs::PropertyValue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PropertyValue.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetScene
    class GetScene
      def self.default(visited=[])
        {
          workspace_id: 'workspace_id',
          scene_id: 'scene_id',
          content_location: 'content_location',
          arn: 'arn',
          creation_date_time: Time.now,
          update_date_time: Time.now,
          description: 'description',
          capabilities: Stubs::SceneCapabilities.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['workspaceId'] = stub[:workspace_id] unless stub[:workspace_id].nil?
        data['sceneId'] = stub[:scene_id] unless stub[:scene_id].nil?
        data['contentLocation'] = stub[:content_location] unless stub[:content_location].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['updateDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:update_date_time]).to_i unless stub[:update_date_time].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['capabilities'] = Stubs::SceneCapabilities.stub(stub[:capabilities]) unless stub[:capabilities].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SceneCapabilities
    class SceneCapabilities
      def self.default(visited=[])
        return nil if visited.include?('SceneCapabilities')
        visited = visited + ['SceneCapabilities']
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

    # Operation Stubber for GetWorkspace
    class GetWorkspace
      def self.default(visited=[])
        {
          workspace_id: 'workspace_id',
          arn: 'arn',
          description: 'description',
          s3_location: 's3_location',
          role: 'role',
          creation_date_time: Time.now,
          update_date_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['workspaceId'] = stub[:workspace_id] unless stub[:workspace_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['s3Location'] = stub[:s3_location] unless stub[:s3_location].nil?
        data['role'] = stub[:role] unless stub[:role].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['updateDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:update_date_time]).to_i unless stub[:update_date_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListComponentTypes
    class ListComponentTypes
      def self.default(visited=[])
        {
          workspace_id: 'workspace_id',
          component_type_summaries: Stubs::ComponentTypeSummaries.default(visited),
          next_token: 'next_token',
          max_results: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['workspaceId'] = stub[:workspace_id] unless stub[:workspace_id].nil?
        data['componentTypeSummaries'] = Stubs::ComponentTypeSummaries.stub(stub[:component_type_summaries]) unless stub[:component_type_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['maxResults'] = stub[:max_results] unless stub[:max_results].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ComponentTypeSummaries
    class ComponentTypeSummaries
      def self.default(visited=[])
        return nil if visited.include?('ComponentTypeSummaries')
        visited = visited + ['ComponentTypeSummaries']
        [
          Stubs::ComponentTypeSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ComponentTypeSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ComponentTypeSummary
    class ComponentTypeSummary
      def self.default(visited=[])
        return nil if visited.include?('ComponentTypeSummary')
        visited = visited + ['ComponentTypeSummary']
        {
          arn: 'arn',
          component_type_id: 'component_type_id',
          creation_date_time: Time.now,
          update_date_time: Time.now,
          description: 'description',
          status: Stubs::Status.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ComponentTypeSummary.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['componentTypeId'] = stub[:component_type_id] unless stub[:component_type_id].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['updateDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:update_date_time]).to_i unless stub[:update_date_time].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['status'] = Stubs::Status.stub(stub[:status]) unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for ListEntities
    class ListEntities
      def self.default(visited=[])
        {
          entity_summaries: Stubs::EntitySummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['entitySummaries'] = Stubs::EntitySummaries.stub(stub[:entity_summaries]) unless stub[:entity_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for EntitySummaries
    class EntitySummaries
      def self.default(visited=[])
        return nil if visited.include?('EntitySummaries')
        visited = visited + ['EntitySummaries']
        [
          Stubs::EntitySummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EntitySummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EntitySummary
    class EntitySummary
      def self.default(visited=[])
        return nil if visited.include?('EntitySummary')
        visited = visited + ['EntitySummary']
        {
          entity_id: 'entity_id',
          entity_name: 'entity_name',
          arn: 'arn',
          parent_entity_id: 'parent_entity_id',
          status: Stubs::Status.default(visited),
          description: 'description',
          has_child_entities: false,
          creation_date_time: Time.now,
          update_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::EntitySummary.new
        data = {}
        data['entityId'] = stub[:entity_id] unless stub[:entity_id].nil?
        data['entityName'] = stub[:entity_name] unless stub[:entity_name].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['parentEntityId'] = stub[:parent_entity_id] unless stub[:parent_entity_id].nil?
        data['status'] = Stubs::Status.stub(stub[:status]) unless stub[:status].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['hasChildEntities'] = stub[:has_child_entities] unless stub[:has_child_entities].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['updateDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:update_date_time]).to_i unless stub[:update_date_time].nil?
        data
      end
    end

    # Operation Stubber for ListScenes
    class ListScenes
      def self.default(visited=[])
        {
          scene_summaries: Stubs::SceneSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['sceneSummaries'] = Stubs::SceneSummaries.stub(stub[:scene_summaries]) unless stub[:scene_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SceneSummaries
    class SceneSummaries
      def self.default(visited=[])
        return nil if visited.include?('SceneSummaries')
        visited = visited + ['SceneSummaries']
        [
          Stubs::SceneSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SceneSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SceneSummary
    class SceneSummary
      def self.default(visited=[])
        return nil if visited.include?('SceneSummary')
        visited = visited + ['SceneSummary']
        {
          scene_id: 'scene_id',
          content_location: 'content_location',
          arn: 'arn',
          creation_date_time: Time.now,
          update_date_time: Time.now,
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::SceneSummary.new
        data = {}
        data['sceneId'] = stub[:scene_id] unless stub[:scene_id].nil?
        data['contentLocation'] = stub[:content_location] unless stub[:content_location].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['updateDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:update_date_time]).to_i unless stub[:update_date_time].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::TagMap.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for ListWorkspaces
    class ListWorkspaces
      def self.default(visited=[])
        {
          workspace_summaries: Stubs::WorkspaceSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['workspaceSummaries'] = Stubs::WorkspaceSummaries.stub(stub[:workspace_summaries]) unless stub[:workspace_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for WorkspaceSummaries
    class WorkspaceSummaries
      def self.default(visited=[])
        return nil if visited.include?('WorkspaceSummaries')
        visited = visited + ['WorkspaceSummaries']
        [
          Stubs::WorkspaceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::WorkspaceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for WorkspaceSummary
    class WorkspaceSummary
      def self.default(visited=[])
        return nil if visited.include?('WorkspaceSummary')
        visited = visited + ['WorkspaceSummary']
        {
          workspace_id: 'workspace_id',
          arn: 'arn',
          description: 'description',
          creation_date_time: Time.now,
          update_date_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkspaceSummary.new
        data = {}
        data['workspaceId'] = stub[:workspace_id] unless stub[:workspace_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['creationDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date_time]).to_i unless stub[:creation_date_time].nil?
        data['updateDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:update_date_time]).to_i unless stub[:update_date_time].nil?
        data
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateComponentType
    class UpdateComponentType
      def self.default(visited=[])
        {
          workspace_id: 'workspace_id',
          arn: 'arn',
          component_type_id: 'component_type_id',
          state: 'state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['workspaceId'] = stub[:workspace_id] unless stub[:workspace_id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['componentTypeId'] = stub[:component_type_id] unless stub[:component_type_id].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateEntity
    class UpdateEntity
      def self.default(visited=[])
        {
          update_date_time: Time.now,
          state: 'state',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['updateDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:update_date_time]).to_i unless stub[:update_date_time].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateScene
    class UpdateScene
      def self.default(visited=[])
        {
          update_date_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['updateDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:update_date_time]).to_i unless stub[:update_date_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateWorkspace
    class UpdateWorkspace
      def self.default(visited=[])
        {
          update_date_time: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['updateDateTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:update_date_time]).to_i unless stub[:update_date_time].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
