# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTTwinMaker
  module Types

    # <p>Access is denied.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An error returned by the <code>BatchPutProperty</code> action.</p>
    #
    # @!attribute error_code
    #   <p>The error code.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The error message.</p>
    #
    #   @return [String]
    #
    # @!attribute entry
    #   <p>An object that contains information about errors returned by the <code>BatchPutProperty</code> action.</p>
    #
    #   @return [PropertyValueEntry]
    #
    BatchPutPropertyError = ::Struct.new(
      :error_code,
      :error_message,
      :entry,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains information about errors returned by the <code>BatchPutProperty</code> action.</p>
    #
    # @!attribute errors
    #   <p>A list of objects that contain information about errors returned by the
    #               <code>BatchPutProperty</code> action.</p>
    #
    #   @return [Array<BatchPutPropertyError>]
    #
    BatchPutPropertyErrorEntry = ::Struct.new(
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace that contains the properties to set.</p>
    #
    #   @return [String]
    #
    # @!attribute entries
    #   <p>An object that maps strings to the property value entries to set. Each string
    #          in the mapping must be unique to this object.</p>
    #
    #   @return [Array<PropertyValueEntry>]
    #
    BatchPutPropertyValuesInput = ::Struct.new(
      :workspace_id,
      :entries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute error_entries
    #   <p>Entries that caused errors in the batch put operation.</p>
    #
    #   @return [Array<BatchPutPropertyErrorEntry>]
    #
    BatchPutPropertyValuesOutput = ::Struct.new(
      :error_entries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that sets information about a component type create or update request.</p>
    #
    # @!attribute description
    #   <p>The description of the component request.</p>
    #
    #   @return [String]
    #
    # @!attribute component_type_id
    #   <p>The ID of the component type.</p>
    #
    #   @return [String]
    #
    # @!attribute properties
    #   <p>An object that maps strings to the properties to set in the component type. Each string
    #          in the mapping must be unique to this object.</p>
    #
    #   @return [Hash<String, PropertyRequest>]
    #
    ComponentRequest = ::Struct.new(
      :description,
      :component_type_id,
      :properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that returns information about a component type create or update request.</p>
    #
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the component type.</p>
    #
    #   @return [String]
    #
    # @!attribute component_type_id
    #   <p>The ID of the component type.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the component type.</p>
    #
    #   @return [Status]
    #
    # @!attribute defined_in
    #   <p>The name of the property definition set in the request.</p>
    #
    #   @return [String]
    #
    # @!attribute properties
    #   <p>An object that maps strings to the properties to set in the component type. Each string
    #          in the mapping must be unique to this object.</p>
    #
    #   @return [Hash<String, PropertyResponse>]
    #
    ComponentResponse = ::Struct.new(
      :component_name,
      :description,
      :component_type_id,
      :status,
      :defined_in,
      :properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains information about a component type.</p>
    #
    # @!attribute arn
    #   <p>The ARN of the component type.</p>
    #
    #   @return [String]
    #
    # @!attribute component_type_id
    #   <p>The ID of the component type.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>The date and time when the component type was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute update_date_time
    #   <p>The date and time when the component type was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>The description of the component type.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the component type.</p>
    #
    #   @return [Status]
    #
    ComponentTypeSummary = ::Struct.new(
      :arn,
      :component_type_id,
      :creation_date_time,
      :update_date_time,
      :description,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The component update request.</p>
    #
    # @!attribute update_type
    #   <p>The update type of the component update request.</p>
    #
    #   Enum, one of: ["CREATE", "UPDATE", "DELETE"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the component type.</p>
    #
    #   @return [String]
    #
    # @!attribute component_type_id
    #   <p>The ID of the component type.</p>
    #
    #   @return [String]
    #
    # @!attribute property_updates
    #   <p>An object that maps strings to the properties to set in the component type update. Each string
    #          in the mapping must be unique to this object.</p>
    #
    #   @return [Hash<String, PropertyRequest>]
    #
    ComponentUpdateRequest = ::Struct.new(
      :update_type,
      :description,
      :component_type_id,
      :property_updates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ComponentUpdateType
    #
    module ComponentUpdateType
      # No documentation available.
      #
      CREATE = "CREATE"

      # No documentation available.
      #
      UPDATE = "UPDATE"

      # No documentation available.
      #
      DELETE = "DELETE"
    end

    # <p>A conflict occurred.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The connector failed.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConnectorFailureException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The connector timed out.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConnectorTimeoutException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace that contains the component type.</p>
    #
    #   @return [String]
    #
    # @!attribute is_singleton
    #   <p>A Boolean value that specifies whether an entity can have more than one component of
    #            this type.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute component_type_id
    #   <p>The ID of the component type.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the component type.</p>
    #
    #   @return [String]
    #
    # @!attribute property_definitions
    #   <p>An object that maps strings to the property definitions in the component type. Each string
    #         in the mapping must be unique to this object.</p>
    #
    #   @return [Hash<String, PropertyDefinitionRequest>]
    #
    # @!attribute extends_from
    #   <p>Specifies the parent component type to extend.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute functions
    #   <p>An object that maps strings to the functions in the component type. Each string in the
    #            mapping must be unique to this object.</p>
    #
    #   @return [Hash<String, FunctionRequest>]
    #
    # @!attribute tags
    #   <p>Metadata that you can use to manage the component type.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateComponentTypeInput = ::Struct.new(
      :workspace_id,
      :is_singleton,
      :component_type_id,
      :description,
      :property_definitions,
      :extends_from,
      :functions,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the component type.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>The date and time when the entity was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute state
    #   <p>The current state of the component type.</p>
    #
    #   Enum, one of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "ERROR"]
    #
    #   @return [String]
    #
    CreateComponentTypeOutput = ::Struct.new(
      :arn,
      :creation_date_time,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace that contains the entity.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_id
    #   <p>The ID of the entity.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_name
    #   <p>The name of the entity.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the entity.</p>
    #
    #   @return [String]
    #
    # @!attribute components
    #   <p>An object that maps strings to the components in the entity. Each string
    #          in the mapping must be unique to this object.</p>
    #
    #   @return [Hash<String, ComponentRequest>]
    #
    # @!attribute parent_entity_id
    #   <p>The ID of the entity's parent entity.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Metadata that you can use to manage the entity.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateEntityInput = ::Struct.new(
      :workspace_id,
      :entity_id,
      :entity_name,
      :description,
      :components,
      :parent_entity_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entity_id
    #   <p>The ID of the entity.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the entity.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>The date and time when the entity was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute state
    #   <p>The current state of the entity.</p>
    #
    #   Enum, one of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "ERROR"]
    #
    #   @return [String]
    #
    CreateEntityOutput = ::Struct.new(
      :entity_id,
      :arn,
      :creation_date_time,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace that contains the scene.</p>
    #
    #   @return [String]
    #
    # @!attribute scene_id
    #   <p>The ID of the scene.</p>
    #
    #   @return [String]
    #
    # @!attribute content_location
    #   <p>The relative path that specifies the location of the content definition file.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description for this scene.</p>
    #
    #   @return [String]
    #
    # @!attribute capabilities
    #   <p>A list of capabilities that the scene uses to render itself.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>Metadata that you can use to manage the scene.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateSceneInput = ::Struct.new(
      :workspace_id,
      :scene_id,
      :content_location,
      :description,
      :capabilities,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the scene.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>The date and time when the scene was created.</p>
    #
    #   @return [Time]
    #
    CreateSceneOutput = ::Struct.new(
      :arn,
      :creation_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_location
    #   <p>The ARN of the S3 bucket where resources associated with the workspace are stored.</p>
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The ARN of the execution role associated with the workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Metadata that you can use to manage the workspace</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateWorkspaceInput = ::Struct.new(
      :workspace_id,
      :description,
      :s3_location,
      :role,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>The date and time when the workspace was created.</p>
    #
    #   @return [Time]
    #
    CreateWorkspaceOutput = ::Struct.new(
      :arn,
      :creation_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The data connector.</p>
    #
    # @!attribute lambda
    #   <p>The Lambda function associated with this data connector.</p>
    #
    #   @return [LambdaFunction]
    #
    # @!attribute is_native
    #   <p>A Boolean value that specifies whether the data connector is native to IoT TwinMaker.</p>
    #
    #   @return [Boolean]
    #
    DataConnector = ::Struct.new(
      :lambda,
      :is_native,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that specifies the data type of a property.</p>
    #
    # @!attribute type
    #   <p>The underlying type of the data type.</p>
    #
    #   Enum, one of: ["RELATIONSHIP", "STRING", "LONG", "BOOLEAN", "INTEGER", "DOUBLE", "LIST", "MAP"]
    #
    #   @return [String]
    #
    # @!attribute nested_type
    #   <p>The nested type in the data type.</p>
    #
    #   @return [DataType]
    #
    # @!attribute allowed_values
    #   <p>The allowed values for this data type.</p>
    #
    #   @return [Array<DataValue>]
    #
    # @!attribute unit_of_measure
    #   <p>The unit of measure used in this data type.</p>
    #
    #   @return [String]
    #
    # @!attribute relationship
    #   <p>A relationship that associates a component with another component.</p>
    #
    #   @return [Relationship]
    #
    DataType = ::Struct.new(
      :type,
      :nested_type,
      :allowed_values,
      :unit_of_measure,
      :relationship,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that specifies a value for a property.</p>
    #
    # @!attribute boolean_value
    #   <p>A Boolean value.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute double_value
    #   <p>A double value.</p>
    #
    #   @return [Float]
    #
    # @!attribute integer_value
    #   <p>An integer value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute long_value
    #   <p>A long value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute string_value
    #   <p>A string value.</p>
    #
    #   @return [String]
    #
    # @!attribute list_value
    #   <p>A list of multiple values.</p>
    #
    #   @return [Array<DataValue>]
    #
    # @!attribute map_value
    #   <p>An object that maps strings to multiple <code>DataValue</code> objects.</p>
    #
    #   @return [Hash<String, DataValue>]
    #
    # @!attribute relationship_value
    #   <p>A value that relates a component to another component.</p>
    #
    #   @return [RelationshipValue]
    #
    # @!attribute expression
    #   <p>An expression that produces the value.</p>
    #
    #   @return [String]
    #
    DataValue = ::Struct.new(
      :boolean_value,
      :double_value,
      :integer_value,
      :long_value,
      :string_value,
      :list_value,
      :map_value,
      :relationship_value,
      :expression,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace that contains the component type.</p>
    #
    #   @return [String]
    #
    # @!attribute component_type_id
    #   <p>The ID of the component type to delete.</p>
    #
    #   @return [String]
    #
    DeleteComponentTypeInput = ::Struct.new(
      :workspace_id,
      :component_type_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute state
    #   <p>The current state of the component type to be deleted.</p>
    #
    #   Enum, one of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "ERROR"]
    #
    #   @return [String]
    #
    DeleteComponentTypeOutput = ::Struct.new(
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace that contains the entity to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_id
    #   <p>The ID of the entity to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute is_recursive
    #   <p>A Boolean value that specifies whether the operation deletes child entities.</p>
    #
    #   @return [Boolean]
    #
    DeleteEntityInput = ::Struct.new(
      :workspace_id,
      :entity_id,
      :is_recursive,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute state
    #   <p>The current state of the deleted entity.</p>
    #
    #   Enum, one of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "ERROR"]
    #
    #   @return [String]
    #
    DeleteEntityOutput = ::Struct.new(
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute scene_id
    #   <p>The ID of the scene to delete.</p>
    #
    #   @return [String]
    #
    DeleteSceneInput = ::Struct.new(
      :workspace_id,
      :scene_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteSceneOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace to delete.</p>
    #
    #   @return [String]
    #
    DeleteWorkspaceInput = ::Struct.new(
      :workspace_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteWorkspaceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that uniquely identifies an entity property.</p>
    #
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute external_id_property
    #   <p>A mapping of external IDs to property names. External IDs uniquely identify properties from external data stores.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute entity_id
    #   <p>The ID of the entity.</p>
    #
    #   @return [String]
    #
    # @!attribute property_name
    #   <p>The name of the property.</p>
    #
    #   @return [String]
    #
    EntityPropertyReference = ::Struct.new(
      :component_name,
      :external_id_property,
      :entity_id,
      :property_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains information about an entity.</p>
    #
    # @!attribute entity_id
    #   <p>The ID of the entity.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_name
    #   <p>The name of the entity.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the entity.</p>
    #
    #   @return [String]
    #
    # @!attribute parent_entity_id
    #   <p>The ID of the parent entity.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the entity.</p>
    #
    #   @return [Status]
    #
    # @!attribute description
    #   <p>The description of the entity.</p>
    #
    #   @return [String]
    #
    # @!attribute has_child_entities
    #   <p>A Boolean value that specifies whether the entity has child entities or not.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute creation_date_time
    #   <p>The date and time when the entity was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute update_date_time
    #   <p>The last date and time when the entity was updated.</p>
    #
    #   @return [Time]
    #
    EntitySummary = ::Struct.new(
      :entity_id,
      :entity_name,
      :arn,
      :parent_entity_id,
      :status,
      :description,
      :has_child_entities,
      :creation_date_time,
      :update_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ErrorCode
    #
    module ErrorCode
      # No documentation available.
      #
      VALIDATION_ERROR = "VALIDATION_ERROR"

      # No documentation available.
      #
      INTERNAL_FAILURE = "INTERNAL_FAILURE"
    end

    # <p>The error details.</p>
    #
    # @!attribute code
    #   <p>The error code.</p>
    #
    #   Enum, one of: ["VALIDATION_ERROR", "INTERNAL_FAILURE"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The error message.</p>
    #
    #   @return [String]
    #
    ErrorDetails = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The function request body.</p>
    #
    # @!attribute required_properties
    #   <p>The required properties of the function.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute scope
    #   <p>The scope of the function.</p>
    #
    #   Enum, one of: ["ENTITY", "WORKSPACE"]
    #
    #   @return [String]
    #
    # @!attribute implemented_by
    #   <p>The data connector.</p>
    #
    #   @return [DataConnector]
    #
    FunctionRequest = ::Struct.new(
      :required_properties,
      :scope,
      :implemented_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The function response.</p>
    #
    # @!attribute required_properties
    #   <p>The required properties of the function.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute scope
    #   <p>The scope of the function.</p>
    #
    #   Enum, one of: ["ENTITY", "WORKSPACE"]
    #
    #   @return [String]
    #
    # @!attribute implemented_by
    #   <p>The data connector.</p>
    #
    #   @return [DataConnector]
    #
    # @!attribute is_inherited
    #   <p>Indicates whether this function is inherited.</p>
    #
    #   @return [Boolean]
    #
    FunctionResponse = ::Struct.new(
      :required_properties,
      :scope,
      :implemented_by,
      :is_inherited,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace that contains the component type.</p>
    #
    #   @return [String]
    #
    # @!attribute component_type_id
    #   <p>The ID of the component type.</p>
    #
    #   @return [String]
    #
    GetComponentTypeInput = ::Struct.new(
      :workspace_id,
      :component_type_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace that contains the component type.</p>
    #
    #   @return [String]
    #
    # @!attribute is_singleton
    #   <p>A Boolean value that specifies whether an entity can have more than one component of this
    #            type.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute component_type_id
    #   <p>The ID of the component type.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the component type.</p>
    #
    #   @return [String]
    #
    # @!attribute property_definitions
    #   <p>An object that maps strings to the property definitions in the component type. Each string
    #          in the mapping must be unique to this object.</p>
    #
    #   @return [Hash<String, PropertyDefinitionResponse>]
    #
    # @!attribute extends_from
    #   <p>The name of the parent component type that this component type extends.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute functions
    #   <p>An object that maps strings to the functions in the component type. Each string
    #          in the mapping must be unique to this object.</p>
    #
    #   @return [Hash<String, FunctionResponse>]
    #
    # @!attribute creation_date_time
    #   <p>The date and time when the component type was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute update_date_time
    #   <p>The date and time when the component was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute arn
    #   <p>The ARN of the component type.</p>
    #
    #   @return [String]
    #
    # @!attribute is_abstract
    #   <p>A Boolean value that specifies whether the component type is abstract.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_schema_initialized
    #   <p>A Boolean value that specifies whether the component type has a schema initializer and that the
    #         schema initializer has run.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute status
    #   <p>The current status of the component type.</p>
    #
    #   @return [Status]
    #
    GetComponentTypeOutput = ::Struct.new(
      :workspace_id,
      :is_singleton,
      :component_type_id,
      :description,
      :property_definitions,
      :extends_from,
      :functions,
      :creation_date_time,
      :update_date_time,
      :arn,
      :is_abstract,
      :is_schema_initialized,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_id
    #   <p>The ID of the entity.</p>
    #
    #   @return [String]
    #
    GetEntityInput = ::Struct.new(
      :workspace_id,
      :entity_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entity_id
    #   <p>The ID of the entity.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_name
    #   <p>The name of the entity.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the entity.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the entity.</p>
    #
    #   @return [Status]
    #
    # @!attribute workspace_id
    #   <p>The ID of the workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the entity.</p>
    #
    #   @return [String]
    #
    # @!attribute components
    #   <p>An object that maps strings to the components in the entity. Each string
    #          in the mapping must be unique to this object.</p>
    #
    #   @return [Hash<String, ComponentResponse>]
    #
    # @!attribute parent_entity_id
    #   <p>The ID of the parent entity for this entity.</p>
    #
    #   @return [String]
    #
    # @!attribute has_child_entities
    #   <p>A Boolean value that specifies whether the entity has associated child entities.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute creation_date_time
    #   <p>The date and time when the entity was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute update_date_time
    #   <p>The date and time when the entity was last updated.</p>
    #
    #   @return [Time]
    #
    GetEntityOutput = ::Struct.new(
      :entity_id,
      :entity_name,
      :arn,
      :status,
      :workspace_id,
      :description,
      :components,
      :parent_entity_id,
      :has_child_entities,
      :creation_date_time,
      :update_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_id
    #   <p>The ID of the entity.</p>
    #
    #   @return [String]
    #
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute component_type_id
    #   <p>The ID of the component type.</p>
    #
    #   @return [String]
    #
    # @!attribute selected_properties
    #   <p>A list of properties whose value histories the request retrieves.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute property_filters
    #   <p>A list of objects that filter the property value history request.</p>
    #
    #   @return [Array<PropertyFilter>]
    #
    # @!attribute start_date_time
    #   <p>The date and time of the earliest property value to return.</p>
    #
    #   @deprecated
    #     This field is deprecated and will throw an error in the future. Use startTime instead.
    #
    #   @return [Time]
    #
    # @!attribute end_date_time
    #   <p>The date and time of the latest property value to return.</p>
    #
    #   @deprecated
    #     This field is deprecated and will throw an error in the future. Use endTime instead.
    #
    #   @return [Time]
    #
    # @!attribute interpolation
    #   <p>An object that specifies the interpolation type and the interval over which to interpolate data.</p>
    #
    #   @return [InterpolationParameters]
    #
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute order_by_time
    #   <p>The time direction to use in the result order.</p>
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The ISO8601 DateTime of the earliest property value to return.</p>
    #            <p>For more information about the ISO8601 DateTime format, see the data type <a href="https://docs.aws.amazon.com/roci/latest/roci-api/API_PropertyValue.html">PropertyValue</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute end_time
    #   <p>The ISO8601 DateTime of the latest property value to return.</p>
    #            <p>For more information about the ISO8601 DateTime format, see the data type <a href="https://docs.aws.amazon.com/roci/latest/roci-api/API_PropertyValue.html">PropertyValue</a>.</p>
    #
    #   @return [String]
    #
    GetPropertyValueHistoryInput = ::Struct.new(
      :workspace_id,
      :entity_id,
      :component_name,
      :component_type_id,
      :selected_properties,
      :property_filters,
      :start_date_time,
      :end_date_time,
      :interpolation,
      :next_token,
      :max_results,
      :order_by_time,
      :start_time,
      :end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute property_values
    #   <p>An object that maps strings to the property definitions in the component type. Each string
    #          in the mapping must be unique to this object.</p>
    #
    #   @return [Array<PropertyValueHistory>]
    #
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #
    #   @return [String]
    #
    GetPropertyValueHistoryOutput = ::Struct.new(
      :property_values,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute component_name
    #   <p>The name of the component whose property values the operation returns.</p>
    #
    #   @return [String]
    #
    # @!attribute component_type_id
    #   <p>The ID of the component type whose property values the operation returns.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_id
    #   <p>The ID of the entity whose property values the operation returns.</p>
    #
    #   @return [String]
    #
    # @!attribute selected_properties
    #   <p>The properties whose values the operation returns.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute workspace_id
    #   <p>The ID of the workspace whose values the operation returns.</p>
    #
    #   @return [String]
    #
    GetPropertyValueInput = ::Struct.new(
      :component_name,
      :component_type_id,
      :entity_id,
      :selected_properties,
      :workspace_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute property_values
    #   <p>An object that maps strings to the properties and latest property values in the response. Each string
    #          in the mapping must be unique to this object.</p>
    #
    #   @return [Hash<String, PropertyLatestValue>]
    #
    GetPropertyValueOutput = ::Struct.new(
      :property_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace that contains the scene.</p>
    #
    #   @return [String]
    #
    # @!attribute scene_id
    #   <p>The ID of the scene.</p>
    #
    #   @return [String]
    #
    GetSceneInput = ::Struct.new(
      :workspace_id,
      :scene_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace that contains the scene.</p>
    #
    #   @return [String]
    #
    # @!attribute scene_id
    #   <p>The ID of the scene.</p>
    #
    #   @return [String]
    #
    # @!attribute content_location
    #   <p>The relative path that specifies the location of the content definition file.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the scene.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>The date and time when the scene was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute update_date_time
    #   <p>The date and time when the scene was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>The description of the scene.</p>
    #
    #   @return [String]
    #
    # @!attribute capabilities
    #   <p>A list of capabilities that the scene uses to render.</p>
    #
    #   @return [Array<String>]
    #
    GetSceneOutput = ::Struct.new(
      :workspace_id,
      :scene_id,
      :content_location,
      :arn,
      :creation_date_time,
      :update_date_time,
      :description,
      :capabilities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace.</p>
    #
    #   @return [String]
    #
    GetWorkspaceInput = ::Struct.new(
      :workspace_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_location
    #   <p>The ARN of the S3 bucket where resources associated with the workspace are stored.</p>
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The ARN of the execution role associated with the workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>The date and time when the workspace was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute update_date_time
    #   <p>The date and time when the workspace was last updated.</p>
    #
    #   @return [Time]
    #
    GetWorkspaceOutput = ::Struct.new(
      :workspace_id,
      :arn,
      :description,
      :s3_location,
      :role,
      :creation_date_time,
      :update_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An unexpected error has occurred.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that specifies how to interpolate data in a list.</p>
    #
    # @!attribute interpolation_type
    #   <p>The interpolation type.</p>
    #
    #   Enum, one of: ["LINEAR"]
    #
    #   @return [String]
    #
    # @!attribute interval_in_seconds
    #   <p>The interpolation time interval in seconds.</p>
    #
    #   @return [Integer]
    #
    InterpolationParameters = ::Struct.new(
      :interpolation_type,
      :interval_in_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InterpolationType
    #
    module InterpolationType
      # No documentation available.
      #
      LINEAR = "LINEAR"
    end

    # <p>The Lambda function.</p>
    #
    # @!attribute arn
    #   <p>The ARN of the Lambda function.</p>
    #
    #   @return [String]
    #
    LambdaFunction = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that filters items in a list of component types.</p>
    #          <note>
    #             <p>Only one object is accepted as a valid input.</p>
    #          </note>
    #
    class ListComponentTypesFilter < Hearth::Union
      # <p>The component type that the component types in the list extend.</p>
      #
      class ExtendsFrom < ListComponentTypesFilter
        def to_h
          { extends_from: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::IoTTwinMaker::Types::ExtendsFrom #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The namespace to which the component types in the list belong.</p>
      #
      class Namespace < ListComponentTypesFilter
        def to_h
          { namespace: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::IoTTwinMaker::Types::Namespace #{__getobj__ || 'nil'}>"
        end
      end

      # <p>A Boolean value that specifies whether the component types in the list are abstract.</p>
      #
      class IsAbstract < ListComponentTypesFilter
        def to_h
          { is_abstract: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::IoTTwinMaker::Types::IsAbstract #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < ListComponentTypesFilter
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::IoTTwinMaker::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>A list of objects that filter the request.</p>
    #
    #   @return [Array<ListComponentTypesFilter>]
    #
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to display.</p>
    #
    #   @return [Integer]
    #
    ListComponentTypesInput = ::Struct.new(
      :workspace_id,
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute component_type_summaries
    #   <p>A list of objects that contain information about the component types.</p>
    #
    #   @return [Array<ComponentTypeSummary>]
    #
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Specifies the maximum number of results to display.</p>
    #
    #   @return [Integer]
    #
    ListComponentTypesOutput = ::Struct.new(
      :workspace_id,
      :component_type_summaries,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that filters items in a list of entities.</p>
    #
    class ListEntitiesFilter < Hearth::Union
      # <p>The parent of the entities in the list.</p>
      #
      class ParentEntityId < ListEntitiesFilter
        def to_h
          { parent_entity_id: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::IoTTwinMaker::Types::ParentEntityId #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The ID of the component type in the entities in the list.</p>
      #
      class ComponentTypeId < ListEntitiesFilter
        def to_h
          { component_type_id: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::IoTTwinMaker::Types::ComponentTypeId #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The external-Id property of a component. The external-Id property is the primary key of an external storage system.</p>
      #
      class ExternalId < ListEntitiesFilter
        def to_h
          { external_id: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::IoTTwinMaker::Types::ExternalId #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < ListEntitiesFilter
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::IoTTwinMaker::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>A list of objects that filter the request.</p>
    #            <note>
    #               <p>Only one object is accepted as a valid input.</p>
    #            </note>
    #
    #   @return [Array<ListEntitiesFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to display.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #
    #   @return [String]
    #
    ListEntitiesInput = ::Struct.new(
      :workspace_id,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entity_summaries
    #   <p>A list of objects that contain information about the entities.</p>
    #
    #   @return [Array<EntitySummary>]
    #
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #
    #   @return [String]
    #
    ListEntitiesOutput = ::Struct.new(
      :entity_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace that contains the scenes.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Specifies the maximum number of results to display.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #
    #   @return [String]
    #
    ListScenesInput = ::Struct.new(
      :workspace_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute scene_summaries
    #   <p>A list of objects that contain information about the scenes.</p>
    #
    #   @return [Array<SceneSummary>]
    #
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #
    #   @return [String]
    #
    ListScenesOutput = ::Struct.new(
      :scene_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to display.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>Metadata that you can use to manage a resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to display.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #
    #   @return [String]
    #
    ListWorkspacesInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_summaries
    #   <p>A list of objects that contain information about the workspaces.</p>
    #
    #   @return [Array<WorkspaceSummary>]
    #
    # @!attribute next_token
    #   <p>The string that specifies the next page of results.</p>
    #
    #   @return [String]
    #
    ListWorkspacesOutput = ::Struct.new(
      :workspace_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OrderByTime
    #
    module OrderByTime
      # No documentation available.
      #
      ASCENDING = "ASCENDING"

      # No documentation available.
      #
      DESCENDING = "DESCENDING"
    end

    # <p>The parent entity update request.</p>
    #
    # @!attribute update_type
    #   <p>The type of the update.</p>
    #
    #   Enum, one of: ["UPDATE", "DELETE"]
    #
    #   @return [String]
    #
    # @!attribute parent_entity_id
    #   <p>The ID of the parent entity.</p>
    #
    #   @return [String]
    #
    ParentEntityUpdateRequest = ::Struct.new(
      :update_type,
      :parent_entity_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ParentEntityUpdateType
    #
    module ParentEntityUpdateType
      # No documentation available.
      #
      UPDATE = "UPDATE"

      # No documentation available.
      #
      DELETE = "DELETE"
    end

    # <p>An object that sets information about a property.</p>
    #
    # @!attribute data_type
    #   <p>An object that contains information about the data type.</p>
    #
    #   @return [DataType]
    #
    # @!attribute is_required_in_entity
    #   <p>A Boolean value that specifies whether the property is required.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_external_id
    #   <p>A Boolean value that specifies whether the property ID comes from an external data store.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_stored_externally
    #   <p>A Boolean value that specifies whether the property is stored externally.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_time_series
    #   <p>A Boolean value that specifies whether the property consists of time series data.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute default_value
    #   <p>An object that contains the default value.</p>
    #
    #   @return [DataValue]
    #
    # @!attribute configuration
    #   <p>A mapping that specifies configuration information about the property. Use this field to
    #            specify information that you read from and write to an external source.</p>
    #
    #   @return [Hash<String, String>]
    #
    PropertyDefinitionRequest = ::Struct.new(
      :data_type,
      :is_required_in_entity,
      :is_external_id,
      :is_stored_externally,
      :is_time_series,
      :default_value,
      :configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains response data from a property definition request.</p>
    #
    # @!attribute data_type
    #   <p>An object that contains information about the data type.</p>
    #
    #   @return [DataType]
    #
    # @!attribute is_time_series
    #   <p>A Boolean value that specifies whether the property consists of time series data.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_required_in_entity
    #   <p>A Boolean value that specifies whether the property is required in an entity.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_external_id
    #   <p>A Boolean value that specifies whether the property ID comes from an external data store.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_stored_externally
    #   <p>A Boolean value that specifies whether the property is stored externally.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_imported
    #   <p>A Boolean value that specifies whether the property definition is imported from an external data store.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_final
    #   <p>A Boolean value that specifies whether the property definition can be updated.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_inherited
    #   <p>A Boolean value that specifies whether the property definition is inherited from a parent entity.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute default_value
    #   <p>An object that contains the default value.</p>
    #
    #   @return [DataValue]
    #
    # @!attribute configuration
    #   <p>A mapping that specifies configuration information about the property.</p>
    #
    #   @return [Hash<String, String>]
    #
    PropertyDefinitionResponse = ::Struct.new(
      :data_type,
      :is_time_series,
      :is_required_in_entity,
      :is_external_id,
      :is_stored_externally,
      :is_imported,
      :is_final,
      :is_inherited,
      :default_value,
      :configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that filters items returned by a property request.</p>
    #
    # @!attribute property_name
    #   <p>The property name associated with this property filter.</p>
    #
    #   @return [String]
    #
    # @!attribute operator
    #   <p>The operator associated with this property filter.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value associated with this property filter.</p>
    #
    #   @return [DataValue]
    #
    PropertyFilter = ::Struct.new(
      :property_name,
      :operator,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The latest value of the property.</p>
    #
    # @!attribute property_reference
    #   <p>An object that specifies information about a property.&gt;</p>
    #
    #   @return [EntityPropertyReference]
    #
    # @!attribute property_value
    #   <p>The value of the property.</p>
    #
    #   @return [DataValue]
    #
    PropertyLatestValue = ::Struct.new(
      :property_reference,
      :property_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that sets information about a property.</p>
    #
    # @!attribute definition
    #   <p>An object that specifies information about a property.</p>
    #
    #   @return [PropertyDefinitionRequest]
    #
    # @!attribute value
    #   <p>The value of the property.</p>
    #
    #   @return [DataValue]
    #
    # @!attribute update_type
    #   <p>The update type of the update property request.</p>
    #
    #   Enum, one of: ["UPDATE", "DELETE", "CREATE"]
    #
    #   @return [String]
    #
    PropertyRequest = ::Struct.new(
      :definition,
      :value,
      :update_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains information about a property response.</p>
    #
    # @!attribute definition
    #   <p>An object that specifies information about a property.</p>
    #
    #   @return [PropertyDefinitionResponse]
    #
    # @!attribute value
    #   <p>The value of the property.</p>
    #
    #   @return [DataValue]
    #
    PropertyResponse = ::Struct.new(
      :definition,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PropertyUpdateType
    #
    module PropertyUpdateType
      # No documentation available.
      #
      UPDATE = "UPDATE"

      # No documentation available.
      #
      DELETE = "DELETE"

      # No documentation available.
      #
      CREATE = "CREATE"
    end

    # <p>An object that contains information about a value for a time series property.</p>
    #
    # @!attribute timestamp
    #   <p>The timestamp of a value for a time series property.</p>
    #
    #   @deprecated
    #     This field is deprecated and will throw an error in the future. Use time instead.
    #
    #   @return [Time]
    #
    # @!attribute value
    #   <p>An object that specifies a value for a time series property.</p>
    #
    #   @return [DataValue]
    #
    # @!attribute time
    #   <p>ISO8601 DateTime of a value for a time series property.</p>
    #            <p>The time for when the property value was recorded in ISO 8601 format: <i>YYYY-MM-DDThh:mm:ss[.SSSSSSSSS][Z/±HH:mm]</i>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <i>[YYYY]</i>: year</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>[MM]</i>: month</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>[DD]</i>: day</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>[hh]</i>: hour</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>[mm]</i>: minute</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>[ss]</i>: seconds</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>[.SSSSSSSSS]</i>: additional precision, where precedence is maintained. For
    #                  example: [.573123] is equal to 573123000 nanoseconds.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>Z</i>: default timezone UTC</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>± HH:mm</i>: time zone offset in Hours and Minutes.</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <i>Required sub-fields</i>: YYYY-MM-DDThh:mm:ss and [Z/±HH:mm]</p>
    #
    #   @return [String]
    #
    PropertyValue = ::Struct.new(
      :timestamp,
      :value,
      :time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that specifies information about time series property values. This object is used  and consumed by the <a href="https://docs.aws.amazon.com/iot-twinmaker/latest/apireference/API_BatchPutPropertyValues.html">BatchPutPropertyValues</a> action.</p>
    #
    # @!attribute entity_property_reference
    #   <p>An object that contains information about the entity that has the property.</p>
    #
    #   @return [EntityPropertyReference]
    #
    # @!attribute property_values
    #   <p>A list of objects that specify time series property values.</p>
    #
    #   @return [Array<PropertyValue>]
    #
    PropertyValueEntry = ::Struct.new(
      :entity_property_reference,
      :property_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The history of values for a time series property.</p>
    #
    # @!attribute entity_property_reference
    #   <p>An object that uniquely identifies an entity property.</p>
    #
    #   @return [EntityPropertyReference]
    #
    # @!attribute values
    #   <p>A list of objects that contain information about the values in the history of a time series property.</p>
    #
    #   @return [Array<PropertyValue>]
    #
    PropertyValueHistory = ::Struct.new(
      :entity_property_reference,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that specifies a relationship with another component type.</p>
    #
    # @!attribute target_component_type_id
    #   <p>The ID of the target component type associated with this relationship.</p>
    #
    #   @return [String]
    #
    # @!attribute relationship_type
    #   <p>The type of the relationship.</p>
    #
    #   @return [String]
    #
    Relationship = ::Struct.new(
      :target_component_type_id,
      :relationship_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A value that associates a component and an entity.</p>
    #
    # @!attribute target_entity_id
    #   <p>The ID of the target entity associated with this relationship value.</p>
    #
    #   @return [String]
    #
    # @!attribute target_component_name
    #   <p>The name of the target component associated with the relationship value.</p>
    #
    #   @return [String]
    #
    RelationshipValue = ::Struct.new(
      :target_entity_id,
      :target_component_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource wasn't found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains information about a scene.</p>
    #
    # @!attribute scene_id
    #   <p>The ID of the scene.</p>
    #
    #   @return [String]
    #
    # @!attribute content_location
    #   <p>The relative path that specifies the location of the content definition file.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the scene.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>The date and time when the scene was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute update_date_time
    #   <p>The date and time when the scene was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>The scene description.</p>
    #
    #   @return [String]
    #
    SceneSummary = ::Struct.new(
      :scene_id,
      :content_location,
      :arn,
      :creation_date_time,
      :update_date_time,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Scope
    #
    module Scope
      # No documentation available.
      #
      ENTITY = "ENTITY"

      # No documentation available.
      #
      WORKSPACE = "WORKSPACE"
    end

    # <p>The service quota was exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for State
    #
    module State
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      ERROR = "ERROR"
    end

    # <p>An object that represents the status of an entity, component, component type, or workspace.</p>
    #
    # @!attribute state
    #   <p>The current state of the entity, component, component type, or workspace.</p>
    #
    #   Enum, one of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>The error message.</p>
    #
    #   @return [ErrorDetails]
    #
    Status = ::Struct.new(
      :state,
      :error,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Metadata to add to this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The rate exceeds the limit.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of tags exceeds the limit.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyTagsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Type
    #
    module Type
      # No documentation available.
      #
      RELATIONSHIP = "RELATIONSHIP"

      # No documentation available.
      #
      STRING = "STRING"

      # No documentation available.
      #
      LONG = "LONG"

      # No documentation available.
      #
      BOOLEAN = "BOOLEAN"

      # No documentation available.
      #
      INTEGER = "INTEGER"

      # No documentation available.
      #
      DOUBLE = "DOUBLE"

      # No documentation available.
      #
      LIST = "LIST"

      # No documentation available.
      #
      MAP = "MAP"
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A list of tag key names to remove from the resource. You don't specify the value. Both the key and its associated value are removed.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace that contains the component type.</p>
    #
    #   @return [String]
    #
    # @!attribute is_singleton
    #   <p>A Boolean value that specifies whether an entity can have more than one component of this
    #            type.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute component_type_id
    #   <p>The ID of the component type.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the component type.</p>
    #
    #   @return [String]
    #
    # @!attribute property_definitions
    #   <p>An object that maps strings to the property definitions in the component type. Each string
    #          in the mapping must be unique to this object.</p>
    #
    #   @return [Hash<String, PropertyDefinitionRequest>]
    #
    # @!attribute extends_from
    #   <p>Specifies the component type that this component type extends.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute functions
    #   <p>An object that maps strings to the functions in the component type. Each string
    #          in the mapping must be unique to this object.</p>
    #
    #   @return [Hash<String, FunctionRequest>]
    #
    UpdateComponentTypeInput = ::Struct.new(
      :workspace_id,
      :is_singleton,
      :component_type_id,
      :description,
      :property_definitions,
      :extends_from,
      :functions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace that contains the component type.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the component type.</p>
    #
    #   @return [String]
    #
    # @!attribute component_type_id
    #   <p>The ID of the component type.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state of the component type.</p>
    #
    #   Enum, one of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "ERROR"]
    #
    #   @return [String]
    #
    UpdateComponentTypeOutput = ::Struct.new(
      :workspace_id,
      :arn,
      :component_type_id,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace that contains the entity.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_id
    #   <p>The ID of the entity.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_name
    #   <p>The name of the entity.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the entity.</p>
    #
    #   @return [String]
    #
    # @!attribute component_updates
    #   <p>An object that maps strings to the component updates in the request. Each string
    #          in the mapping must be unique to this object.</p>
    #
    #   @return [Hash<String, ComponentUpdateRequest>]
    #
    # @!attribute parent_entity_update
    #   <p>An object that describes the update request for a parent entity.</p>
    #
    #   @return [ParentEntityUpdateRequest]
    #
    UpdateEntityInput = ::Struct.new(
      :workspace_id,
      :entity_id,
      :entity_name,
      :description,
      :component_updates,
      :parent_entity_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute update_date_time
    #   <p>The date and time when the entity was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute state
    #   <p>The current state of the entity update.</p>
    #
    #   Enum, one of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "ERROR"]
    #
    #   @return [String]
    #
    UpdateEntityOutput = ::Struct.new(
      :update_date_time,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace that contains the scene.</p>
    #
    #   @return [String]
    #
    # @!attribute scene_id
    #   <p>The ID of the scene.</p>
    #
    #   @return [String]
    #
    # @!attribute content_location
    #   <p>The relative path that specifies the location of the content definition file.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of this scene.</p>
    #
    #   @return [String]
    #
    # @!attribute capabilities
    #   <p>A list of capabilities that the scene uses to render.</p>
    #
    #   @return [Array<String>]
    #
    UpdateSceneInput = ::Struct.new(
      :workspace_id,
      :scene_id,
      :content_location,
      :description,
      :capabilities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute update_date_time
    #   <p>The date and time when the scene was last updated.</p>
    #
    #   @return [Time]
    #
    UpdateSceneOutput = ::Struct.new(
      :update_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The ARN of the execution role associated with the workspace.</p>
    #
    #   @return [String]
    #
    UpdateWorkspaceInput = ::Struct.new(
      :workspace_id,
      :description,
      :role,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute update_date_time
    #   <p>The date and time of the current update.</p>
    #
    #   @return [Time]
    #
    UpdateWorkspaceOutput = ::Struct.new(
      :update_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Failed</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains information about a workspace.</p>
    #
    # @!attribute workspace_id
    #   <p>The ID of the workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>The date and time when the workspace was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute update_date_time
    #   <p>The date and time when the workspace was last updated.</p>
    #
    #   @return [Time]
    #
    WorkspaceSummary = ::Struct.new(
      :workspace_id,
      :arn,
      :description,
      :creation_date_time,
      :update_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
