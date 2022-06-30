# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AmplifyUIBuilder
  module Types

    # <p>Represents the event action configuration for an element of a <code>Component</code> or
    #         <code>ComponentChild</code>. Use for the workflow feature in Amplify Studio
    #       that allows you to bind events and actions to components. <code>ActionParameters</code>
    #       defines the action that is performed when an event occurs on the component.</p>
    #
    # @!attribute type
    #   <p>The type of navigation action. Valid values are <code>url</code> and <code>anchor</code>.
    #         This value is required for a navigation action.</p>
    #
    #   @return [ComponentProperty]
    #
    # @!attribute url
    #   <p>The URL to the location to open. Specify this value for a navigation action.</p>
    #
    #   @return [ComponentProperty]
    #
    # @!attribute anchor
    #   <p>The HTML anchor link to the location to open. Specify this value for a navigation
    #         action.</p>
    #
    #   @return [ComponentProperty]
    #
    # @!attribute target
    #   <p>The element within the same component to modify when the action occurs.</p>
    #
    #   @return [ComponentProperty]
    #
    # @!attribute global
    #   <p>Specifies whether the user should be signed out globally. Specify this value for an auth
    #         sign out action.</p>
    #
    #   @return [ComponentProperty]
    #
    # @!attribute model
    #   <p>The name of the data model. Use when the action performs an operation on an Amplify DataStore model.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique ID of the component that the <code>ActionParameters</code> apply to.</p>
    #
    #   @return [ComponentProperty]
    #
    # @!attribute fields
    #   <p>A dictionary of key-value pairs mapping Amplify Studio properties to fields
    #         in a data model. Use when the action performs an operation on an Amplify
    #         DataStore model.</p>
    #
    #   @return [Hash<String, ComponentProperty>]
    #
    # @!attribute state
    #   <p>A key-value pair that specifies the state property name and its initial value.</p>
    #
    #   @return [MutationActionSetStateParameter]
    #
    ActionParameters = ::Struct.new(
      :type,
      :url,
      :anchor,
      :target,
      :global,
      :model,
      :id,
      :fields,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the configuration settings for a user interface (UI) element for an Amplify app. A component is configured as a primary, stand-alone UI element. Use
    #         <code>ComponentChild</code> to configure an instance of a <code>Component</code>. A
    #         <code>ComponentChild</code> instance inherits the configuration of the main
    #         <code>Component</code>.</p>
    #
    # @!attribute app_id
    #   <p>The unique ID of the Amplify app associated with the component.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    #
    #   @return [String]
    #
    # @!attribute source_id
    #   <p>The unique ID of the component in its original source system, such as Figma.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique ID of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute component_type
    #   <p>The type of the component. This can be an Amplify custom UI component or
    #         another custom component.</p>
    #
    #   @return [String]
    #
    # @!attribute properties
    #   <p>Describes the component's properties. You can't specify <code>tags</code> as a valid
    #         property for <code>properties</code>.</p>
    #
    #   @return [Hash<String, ComponentProperty>]
    #
    # @!attribute children
    #   <p>A list of the component's <code>ComponentChild</code> instances.</p>
    #
    #   @return [Array<ComponentChild>]
    #
    # @!attribute variants
    #   <p>A list of the component's variants. A variant is a unique style configuration of a main
    #         component.</p>
    #
    #   @return [Array<ComponentVariant>]
    #
    # @!attribute overrides
    #   <p>Describes the component's properties that can be overriden in a customized instance of the
    #         component. You can't specify <code>tags</code> as a valid property for
    #         <code>overrides</code>.</p>
    #
    #   @return [Hash<String, Hash<String, String>>]
    #
    # @!attribute binding_properties
    #   <p>The information to connect a component's properties to data at runtime. You can't specify
    #           <code>tags</code> as a valid property for <code>bindingProperties</code>.</p>
    #            <p/>
    #
    #   @return [Hash<String, ComponentBindingPropertiesValue>]
    #
    # @!attribute collection_properties
    #   <p>The data binding configuration for the component's properties. Use this for a collection
    #         component. You can't specify <code>tags</code> as a valid property for
    #           <code>collectionProperties</code>.</p>
    #
    #   @return [Hash<String, ComponentDataConfiguration>]
    #
    # @!attribute created_at
    #   <p>The time that the component was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute modified_at
    #   <p>The time that the component was modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>One or more key-value pairs to use when tagging the component.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute events
    #   <p>Describes the events that can be raised on the component. Use for the workflow feature in
    #           Amplify Studio that allows you to bind events and actions to
    #         components.</p>
    #
    #   @return [Hash<String, ComponentEvent>]
    #
    # @!attribute schema_version
    #   <p>The schema version of the component when it was imported.</p>
    #
    #   @return [String]
    #
    Component = ::Struct.new(
      :app_id,
      :environment_name,
      :source_id,
      :id,
      :name,
      :component_type,
      :properties,
      :children,
      :variants,
      :overrides,
      :binding_properties,
      :collection_properties,
      :created_at,
      :modified_at,
      :tags,
      :events,
      :schema_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the data binding configuration for a component at runtime. You can use
    #         <code>ComponentBindingPropertiesValue</code> to add exposed properties to a component to
    #       allow different values to be entered when a component is reused in different places in an
    #       app.</p>
    #
    # @!attribute type
    #   <p>The property type.</p>
    #
    #   @return [String]
    #
    # @!attribute binding_properties
    #   <p>Describes the properties to customize with data at runtime.</p>
    #
    #   @return [ComponentBindingPropertiesValueProperties]
    #
    # @!attribute default_value
    #   <p>The default value of the property.</p>
    #
    #   @return [String]
    #
    ComponentBindingPropertiesValue = ::Struct.new(
      :type,
      :binding_properties,
      :default_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the data binding configuration for a specific property using data stored in
    #         Amazon Web Services. For Amazon Web Services connected properties, you can bind a property to
    #       data stored in an Amazon S3 bucket, an Amplify DataStore model or an
    #       authenticated user attribute.</p>
    #
    # @!attribute model
    #   <p>An Amplify DataStore model.</p>
    #
    #   @return [String]
    #
    # @!attribute field
    #   <p>The field to bind the data to.</p>
    #
    #   @return [String]
    #
    # @!attribute predicates
    #   <p>A list of predicates for binding a component's properties to data.</p>
    #
    #   @return [Array<Predicate>]
    #
    # @!attribute user_attribute
    #   <p>An authenticated user attribute.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket
    #   <p>An Amazon S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The storage key for an Amazon S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute default_value
    #   <p>The default value to assign to the property.</p>
    #
    #   @return [String]
    #
    ComponentBindingPropertiesValueProperties = ::Struct.new(
      :model,
      :field,
      :predicates,
      :user_attribute,
      :bucket,
      :key,
      :default_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A nested UI configuration within a parent <code>Component</code>.</p>
    #
    # @!attribute component_type
    #   <p>The type of the child component. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the child component.</p>
    #
    #   @return [String]
    #
    # @!attribute properties
    #   <p>Describes the properties of the child component. You can't specify <code>tags</code> as a
    #         valid property for <code>properties</code>.</p>
    #
    #   @return [Hash<String, ComponentProperty>]
    #
    # @!attribute children
    #   <p>The list of <code>ComponentChild</code> instances for this component.</p>
    #
    #   @return [Array<ComponentChild>]
    #
    # @!attribute events
    #   <p>Describes the events that can be raised on the child component. Use for the workflow
    #         feature in Amplify Studio that allows you to bind events and actions to
    #         components.</p>
    #
    #   @return [Hash<String, ComponentEvent>]
    #
    # @!attribute source_id
    #   <p>The unique ID of the child component in its original source system, such as Figma.</p>
    #
    #   @return [String]
    #
    ComponentChild = ::Struct.new(
      :component_type,
      :name,
      :properties,
      :children,
      :events,
      :source_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a conditional expression to set a component property. Use
    #         <code>ComponentConditionProperty</code> to set a property to different values conditionally,
    #       based on the value of another property.</p>
    #
    # @!attribute property
    #   <p>The name of the conditional property.</p>
    #
    #   @return [String]
    #
    # @!attribute field
    #   <p>The name of a field. Specify this when the property is a data model.</p>
    #
    #   @return [String]
    #
    # @!attribute operator
    #   <p>The operator to use to perform the evaluation, such as <code>eq</code> to represent
    #         equals.</p>
    #
    #   @return [String]
    #
    # @!attribute operand
    #   <p>The value of the property to evaluate.</p>
    #
    #   @return [String]
    #
    # @!attribute member_then
    #   <p>The value to assign to the property if the condition is met.</p>
    #
    #   @return [ComponentProperty]
    #
    # @!attribute else
    #   <p>The value to assign to the property if the condition is not met.</p>
    #
    #   @return [ComponentProperty]
    #
    # @!attribute operand_type
    #   <p>The type of the property to evaluate.</p>
    #
    #   @return [String]
    #
    ComponentConditionProperty = ::Struct.new(
      :property,
      :field,
      :operator,
      :operand,
      :member_then,
      :else,
      :operand_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the configuration for binding a component's properties to data.</p>
    #
    # @!attribute model
    #   <p>The name of the data model to use to bind data to a component.</p>
    #
    #   @return [String]
    #
    # @!attribute sort
    #   <p>Describes how to sort the component's properties.</p>
    #
    #   @return [Array<SortProperty>]
    #
    # @!attribute predicate
    #   <p>Represents the conditional logic to use when binding data to a component. Use this
    #         property to retrieve only a subset of the data in a collection.</p>
    #
    #   @return [Predicate]
    #
    # @!attribute identifiers
    #   <p>A list of IDs to use to bind data to a component. Use this property to bind specifically
    #         chosen data, rather than data retrieved from a query.</p>
    #
    #   @return [Array<String>]
    #
    ComponentDataConfiguration = ::Struct.new(
      :model,
      :sort,
      :predicate,
      :identifiers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the configuration of an event. You can bind an event and a corresponding action
    #       to a <code>Component</code> or a <code>ComponentChild</code>. A button click is an example of
    #       an event. </p>
    #
    # @!attribute action
    #   <p>The action to perform when a specific event is raised.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>Describes information about the action.</p>
    #
    #   @return [ActionParameters]
    #
    # @!attribute binding_event
    #   <p>Binds an event to an action on a component. When you specify a <code>bindingEvent</code>, the event is called when the action is performed.</p>
    #
    #   @return [String]
    #
    ComponentEvent = ::Struct.new(
      :action,
      :parameters,
      :binding_event,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the configuration for all of a component's properties. Use
    #         <code>ComponentProperty</code> to specify the values to render or bind by default.</p>
    #
    # @!attribute value
    #   <p>The value to assign to the component property.</p>
    #
    #   @return [String]
    #
    # @!attribute binding_properties
    #   <p>The information to bind the component property to data at runtime.</p>
    #
    #   @return [ComponentPropertyBindingProperties]
    #
    # @!attribute collection_binding_properties
    #   <p>The information to bind the component property to data at runtime. Use this for collection
    #         components.</p>
    #
    #   @return [ComponentPropertyBindingProperties]
    #
    # @!attribute default_value
    #   <p>The default value to assign to the component property.</p>
    #
    #   @return [String]
    #
    # @!attribute model
    #   <p>The data model to use to assign a value to the component property.</p>
    #
    #   @return [String]
    #
    # @!attribute bindings
    #   <p>The information to bind the component property to form data.</p>
    #
    #   @return [Hash<String, FormBindingElement>]
    #
    # @!attribute event
    #   <p>An event that occurs in your app. Use this for workflow data binding.</p>
    #
    #   @return [String]
    #
    # @!attribute user_attribute
    #   <p>An authenticated user attribute to use to assign a value to the component property.</p>
    #
    #   @return [String]
    #
    # @!attribute concat
    #   <p>A list of component properties to concatenate to create the value to assign to this
    #         component property.</p>
    #
    #   @return [Array<ComponentProperty>]
    #
    # @!attribute condition
    #   <p>The conditional expression to use to assign a value to the component property.</p>
    #
    #   @return [ComponentConditionProperty]
    #
    # @!attribute configured
    #   <p>Specifies whether the user configured the property in Amplify Studio after
    #         importing it.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute type
    #   <p>The component type.</p>
    #
    #   @return [String]
    #
    # @!attribute imported_value
    #   <p>The default value assigned to the property when the component is imported into an
    #         app.</p>
    #
    #   @return [String]
    #
    # @!attribute component_name
    #   <p>The name of the component that is affected by an event.</p>
    #
    #   @return [String]
    #
    # @!attribute property
    #   <p>The name of the component's property that is affected by an event.</p>
    #
    #   @return [String]
    #
    ComponentProperty = ::Struct.new(
      :value,
      :binding_properties,
      :collection_binding_properties,
      :default_value,
      :model,
      :bindings,
      :event,
      :user_attribute,
      :concat,
      :condition,
      :configured,
      :type,
      :imported_value,
      :component_name,
      :property,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Associates a component property to a binding property. This enables exposed properties on
    #       the top level component to propagate data to the component's property values.</p>
    #
    # @!attribute property
    #   <p>The component property to bind to the data field.</p>
    #
    #   @return [String]
    #
    # @!attribute field
    #   <p>The data field to bind the property to.</p>
    #
    #   @return [String]
    #
    ComponentPropertyBindingProperties = ::Struct.new(
      :property,
      :field,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains a summary of a component. This is a read-only data type that is returned by
    #         <code>ListComponents</code>.</p>
    #
    # @!attribute app_id
    #   <p>The unique ID of the Amplify app associated with the component.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique ID of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute component_type
    #   <p>The component type.</p>
    #
    #   @return [String]
    #
    ComponentSummary = ::Struct.new(
      :app_id,
      :environment_name,
      :id,
      :name,
      :component_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the style configuration of a unique variation of a main component.</p>
    #
    # @!attribute variant_values
    #   <p>The combination of variants that comprise this variant. You can't specify
    #           <code>tags</code> as a valid property for <code>variantValues</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute overrides
    #   <p>The properties of the component variant that can be overriden when customizing an instance
    #         of the component. You can't specify <code>tags</code> as a valid property for
    #           <code>overrides</code>.</p>
    #
    #   @return [Hash<String, Hash<String, String>>]
    #
    ComponentVariant = ::Struct.new(
      :variant_values,
      :overrides,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents all of the information that is required to create a component.</p>
    #
    # @!attribute name
    #   <p>The name of the component</p>
    #
    #   @return [String]
    #
    # @!attribute source_id
    #   <p>The unique ID of the component in its original source system, such as Figma.</p>
    #
    #   @return [String]
    #
    # @!attribute component_type
    #   <p>The component type. This can be an Amplify custom UI component or another
    #         custom component.</p>
    #
    #   @return [String]
    #
    # @!attribute properties
    #   <p>Describes the component's properties.</p>
    #
    #   @return [Hash<String, ComponentProperty>]
    #
    # @!attribute children
    #   <p>A list of child components that are instances of the main component.</p>
    #
    #   @return [Array<ComponentChild>]
    #
    # @!attribute variants
    #   <p>A list of the unique variants of this component.</p>
    #
    #   @return [Array<ComponentVariant>]
    #
    # @!attribute overrides
    #   <p>Describes the component properties that can be overriden to customize an instance of the
    #         component.</p>
    #
    #   @return [Hash<String, Hash<String, String>>]
    #
    # @!attribute binding_properties
    #   <p>The data binding information for the component's properties.</p>
    #
    #   @return [Hash<String, ComponentBindingPropertiesValue>]
    #
    # @!attribute collection_properties
    #   <p>The data binding configuration for customizing a component's properties. Use this for a
    #         collection component.</p>
    #
    #   @return [Hash<String, ComponentDataConfiguration>]
    #
    # @!attribute tags
    #   <p>One or more key-value pairs to use when tagging the component data.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute events
    #   <p>The event configuration for the component. Use for the workflow feature in Amplify Studio that allows you to bind events and actions to components.</p>
    #
    #   @return [Hash<String, ComponentEvent>]
    #
    # @!attribute schema_version
    #   <p>The schema version of the component when it was imported.</p>
    #
    #   @return [String]
    #
    CreateComponentData = ::Struct.new(
      :name,
      :source_id,
      :component_type,
      :properties,
      :children,
      :variants,
      :overrides,
      :binding_properties,
      :collection_properties,
      :tags,
      :events,
      :schema_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID of the Amplify app to associate with the component.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The unique client token.</p>
    #
    #   @return [String]
    #
    # @!attribute component_to_create
    #   <p>Represents the configuration of the component to create.</p>
    #
    #   @return [CreateComponentData]
    #
    CreateComponentInput = ::Struct.new(
      :app_id,
      :environment_name,
      :client_token,
      :component_to_create,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entity
    #   <p>Describes the configuration of the new component.</p>
    #
    #   @return [Component]
    #
    CreateComponentOutput = ::Struct.new(
      :entity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents all of the information that is required to create a theme.</p>
    #
    # @!attribute name
    #   <p>The name of the theme.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>A list of key-value pairs that deﬁnes the properties of the theme.</p>
    #
    #   @return [Array<ThemeValues>]
    #
    # @!attribute overrides
    #   <p>Describes the properties that can be overriden to customize an instance of the
    #         theme.</p>
    #
    #   @return [Array<ThemeValues>]
    #
    # @!attribute tags
    #   <p>One or more key-value pairs to use when tagging the theme data.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateThemeData = ::Struct.new(
      :name,
      :values,
      :overrides,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID of the Amplify app associated with the theme.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The unique client token.</p>
    #
    #   @return [String]
    #
    # @!attribute theme_to_create
    #   <p>Represents the configuration of the theme to create.</p>
    #
    #   @return [CreateThemeData]
    #
    CreateThemeInput = ::Struct.new(
      :app_id,
      :environment_name,
      :client_token,
      :theme_to_create,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entity
    #   <p>Describes the configuration of the new theme.</p>
    #
    #   @return [Theme]
    #
    CreateThemeOutput = ::Struct.new(
      :entity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID of the Amplify app associated with the component to
    #         delete.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique ID of the component to delete.</p>
    #
    #   @return [String]
    #
    DeleteComponentInput = ::Struct.new(
      :app_id,
      :environment_name,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteComponentOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID of the Amplify app associated with the theme to
    #         delete.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique ID of the theme to delete.</p>
    #
    #   @return [String]
    #
    DeleteThemeInput = ::Struct.new(
      :app_id,
      :environment_name,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteThemeOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute provider
    #   <p>The third-party provider for the token. The only valid value is <code>figma</code>.</p>
    #
    #   Enum, one of: ["figma"]
    #
    #   @return [String]
    #
    # @!attribute request
    #   <p>Describes the configuration of the request.</p>
    #
    #   @return [ExchangeCodeForTokenRequestBody]
    #
    ExchangeCodeForTokenInput = ::Struct.new(
      :provider,
      :request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute access_token
    #   <p>The access token.</p>
    #
    #   @return [String]
    #
    # @!attribute expires_in
    #   <p>The date and time when the new access token expires.</p>
    #
    #   @return [Integer]
    #
    # @!attribute refresh_token
    #   <p>The token to use to refresh a previously issued access token that might have
    #         expired.</p>
    #
    #   @return [String]
    #
    ExchangeCodeForTokenOutput = ::Struct.new(
      :access_token,
      :expires_in,
      :refresh_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::AmplifyUIBuilder::Types::ExchangeCodeForTokenOutput "\
          "access_token=\"[SENSITIVE]\", "\
          "expires_in=#{expires_in || 'nil'}, "\
          "refresh_token=\"[SENSITIVE]\">"
      end
    end

    # <p>Describes the configuration of a request to exchange an access code for a token.</p>
    #
    # @!attribute code
    #   <p>The access code to send in the request.</p>
    #
    #   @return [String]
    #
    # @!attribute redirect_uri
    #   <p>The location of the application that will receive the access code.</p>
    #
    #   @return [String]
    #
    ExchangeCodeForTokenRequestBody = ::Struct.new(
      :code,
      :redirect_uri,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::AmplifyUIBuilder::Types::ExchangeCodeForTokenRequestBody "\
          "code=\"[SENSITIVE]\", "\
          "redirect_uri=#{redirect_uri || 'nil'}>"
      end
    end

    # @!attribute app_id
    #   <p>The unique ID of the Amplify app to export components to.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #
    #   @return [String]
    #
    ExportComponentsInput = ::Struct.new(
      :app_id,
      :environment_name,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entities
    #   <p>Represents the configuration of the exported components.</p>
    #
    #   @return [Array<Component>]
    #
    # @!attribute next_token
    #   <p>The pagination token that's included if more results are available.</p>
    #
    #   @return [String]
    #
    ExportComponentsOutput = ::Struct.new(
      :entities,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID of the Amplify app to export the themes to.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_name
    #   <p>The name of the backend environment that is part of the Amplify app.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #
    #   @return [String]
    #
    ExportThemesInput = ::Struct.new(
      :app_id,
      :environment_name,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entities
    #   <p>Represents the configuration of the exported themes.</p>
    #
    #   @return [Array<Theme>]
    #
    # @!attribute next_token
    #   <p>The pagination token that's included if more results are available.</p>
    #
    #   @return [String]
    #
    ExportThemesOutput = ::Struct.new(
      :entities,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes how to bind a component property to form data.</p>
    #
    # @!attribute element
    #   <p>The name of the component to retrieve a value from.</p>
    #
    #   @return [String]
    #
    # @!attribute property
    #   <p>The property to retrieve a value from.</p>
    #
    #   @return [String]
    #
    FormBindingElement = ::Struct.new(
      :element,
      :property,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID of the Amplify app.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_name
    #   <p>The name of the backend environment that is part of the Amplify app.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique ID of the component.</p>
    #
    #   @return [String]
    #
    GetComponentInput = ::Struct.new(
      :app_id,
      :environment_name,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute component
    #   <p>Represents the configuration settings for the component.</p>
    #
    #   @return [Component]
    #
    GetComponentOutput = ::Struct.new(
      :component,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID of the Amplify app.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_name
    #   <p>The name of the backend environment that is part of the Amplify app.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique ID for the theme.</p>
    #
    #   @return [String]
    #
    GetThemeInput = ::Struct.new(
      :app_id,
      :environment_name,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute theme
    #   <p>Represents the configuration settings for the theme.</p>
    #
    #   @return [Theme]
    #
    GetThemeOutput = ::Struct.new(
      :theme,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An internal error has occurred. Please retry your request.</p>
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

    # <p>An invalid or out-of-range value was supplied for the input parameter.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidParameterException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID for the Amplify app.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of components to retrieve.</p>
    #
    #   @return [Integer]
    #
    ListComponentsInput = ::Struct.new(
      :app_id,
      :environment_name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute entities
    #   <p>The list of components for the Amplify app.</p>
    #
    #   @return [Array<ComponentSummary>]
    #
    # @!attribute next_token
    #   <p>The pagination token that's included if more results are available.</p>
    #
    #   @return [String]
    #
    ListComponentsOutput = ::Struct.new(
      :entities,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID for the Amplify app.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of theme results to return in the response.</p>
    #
    #   @return [Integer]
    #
    ListThemesInput = ::Struct.new(
      :app_id,
      :environment_name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute entities
    #   <p>The list of themes for the Amplify app.</p>
    #
    #   @return [Array<ThemeSummary>]
    #
    # @!attribute next_token
    #   <p>The pagination token that's returned if more results are available.</p>
    #
    #   @return [String]
    #
    ListThemesOutput = ::Struct.new(
      :entities,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the state configuration when an action modifies a property of another element
    #       within the same component.</p>
    #
    # @!attribute component_name
    #   <p>The name of the component that is being modified.</p>
    #
    #   @return [String]
    #
    # @!attribute property
    #   <p>The name of the component property to apply the state configuration to.</p>
    #
    #   @return [String]
    #
    # @!attribute set
    #   <p>The state configuration to assign to the property.</p>
    #
    #   @return [ComponentProperty]
    #
    MutationActionSetStateParameter = ::Struct.new(
      :component_name,
      :property,
      :set,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Stores information for generating Amplify DataStore queries. Use a
    #         <code>Predicate</code> to retrieve a subset of the data in a collection.</p>
    #
    # @!attribute or
    #   <p>A list of predicates to combine logically.</p>
    #
    #   @return [Array<Predicate>]
    #
    # @!attribute and
    #   <p>A list of predicates to combine logically.</p>
    #
    #   @return [Array<Predicate>]
    #
    # @!attribute field
    #   <p>The field to query.</p>
    #
    #   @return [String]
    #
    # @!attribute operator
    #   <p>The operator to use to perform the evaluation.</p>
    #
    #   @return [String]
    #
    # @!attribute operand
    #   <p>The value to use when performing the evaluation.</p>
    #
    #   @return [String]
    #
    Predicate = ::Struct.new(
      :or,
      :and,
      :field,
      :operator,
      :operand,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute provider
    #   <p>The third-party provider for the token. The only valid value is <code>figma</code>.</p>
    #
    #   Enum, one of: ["figma"]
    #
    #   @return [String]
    #
    # @!attribute refresh_token_body
    #   <p>Information about the refresh token request.</p>
    #
    #   @return [RefreshTokenRequestBody]
    #
    RefreshTokenInput = ::Struct.new(
      :provider,
      :refresh_token_body,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute access_token
    #   <p>The access token.</p>
    #
    #   @return [String]
    #
    # @!attribute expires_in
    #   <p>The date and time when the new access token expires.</p>
    #
    #   @return [Integer]
    #
    RefreshTokenOutput = ::Struct.new(
      :access_token,
      :expires_in,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::AmplifyUIBuilder::Types::RefreshTokenOutput "\
          "access_token=\"[SENSITIVE]\", "\
          "expires_in=#{expires_in || 'nil'}>"
      end
    end

    # <p>Describes a refresh token.</p>
    #
    # @!attribute token
    #   <p>The token to use to refresh a previously issued access token that might have
    #         expired.</p>
    #
    #   @return [String]
    #
    RefreshTokenRequestBody = ::Struct.new(
      :token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::AmplifyUIBuilder::Types::RefreshTokenRequestBody "\
          "token=\"[SENSITIVE]\">"
      end
    end

    # <p>The resource specified in the request conflicts with an existing resource.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested resource does not exist, or access was denied.</p>
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

    # <p>You exceeded your service quota. Service quotas, also referred to as limits, are the
    #       maximum number of service resources or operations for your Amazon Web Services account. </p>
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

    # <p>Describes how to sort the data that you bind to a component.</p>
    #
    # @!attribute field
    #   <p>The field to perform the sort on.</p>
    #
    #   @return [String]
    #
    # @!attribute direction
    #   <p>The direction of the sort, either ascending or descending.</p>
    #
    #   Enum, one of: ["ASC", "DESC"]
    #
    #   @return [String]
    #
    SortProperty = ::Struct.new(
      :field,
      :direction,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A theme is a collection of style settings that apply globally to the components associated
    #       with an Amplify application.</p>
    #
    # @!attribute app_id
    #   <p>The unique ID for the Amplify app associated with the theme.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID for the theme.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the theme.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time that the theme was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute modified_at
    #   <p>The time that the theme was modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute values
    #   <p>A list of key-value pairs that defines the properties of the theme.</p>
    #
    #   @return [Array<ThemeValues>]
    #
    # @!attribute overrides
    #   <p>Describes the properties that can be overriden to customize a theme.</p>
    #
    #   @return [Array<ThemeValues>]
    #
    # @!attribute tags
    #   <p>One or more key-value pairs to use when tagging the theme.</p>
    #
    #   @return [Hash<String, String>]
    #
    Theme = ::Struct.new(
      :app_id,
      :environment_name,
      :id,
      :name,
      :created_at,
      :modified_at,
      :values,
      :overrides,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the basic information about a theme.</p>
    #
    # @!attribute app_id
    #   <p>The unique ID for the app associated with the theme summary.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_name
    #   <p>The name of the backend environment that is part of the Amplify app.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID of the theme.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the theme.</p>
    #
    #   @return [String]
    #
    ThemeSummary = ::Struct.new(
      :app_id,
      :environment_name,
      :id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the configuration of a theme's properties.</p>
    #
    # @!attribute value
    #   <p>The value of a theme property.</p>
    #
    #   @return [String]
    #
    # @!attribute children
    #   <p>A list of key-value pairs that define the theme's properties.</p>
    #
    #   @return [Array<ThemeValues>]
    #
    ThemeValue = ::Struct.new(
      :value,
      :children,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A key-value pair that defines a property of a theme.</p>
    #
    # @!attribute key
    #   <p>The name of the property.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the property.</p>
    #
    #   @return [ThemeValue]
    #
    ThemeValues = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TokenProviders
    #
    module TokenProviders
      # The figma token provider.
      #
      FIGMA = "figma"
    end

    # <p>Updates and saves all of the information about a component, based on component ID.</p>
    #
    # @!attribute id
    #   <p>The unique ID of the component to update.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the component to update.</p>
    #
    #   @return [String]
    #
    # @!attribute source_id
    #   <p>The unique ID of the component in its original source system, such as Figma.</p>
    #
    #   @return [String]
    #
    # @!attribute component_type
    #   <p>The type of the component. This can be an Amplify custom UI component or
    #         another custom component.</p>
    #
    #   @return [String]
    #
    # @!attribute properties
    #   <p>Describes the component's properties.</p>
    #
    #   @return [Hash<String, ComponentProperty>]
    #
    # @!attribute children
    #   <p>The components that are instances of the main component.</p>
    #
    #   @return [Array<ComponentChild>]
    #
    # @!attribute variants
    #   <p>A list of the unique variants of the main component being updated.</p>
    #
    #   @return [Array<ComponentVariant>]
    #
    # @!attribute overrides
    #   <p>Describes the properties that can be overriden to customize the component.</p>
    #
    #   @return [Hash<String, Hash<String, String>>]
    #
    # @!attribute binding_properties
    #   <p>The data binding information for the component's properties.</p>
    #
    #   @return [Hash<String, ComponentBindingPropertiesValue>]
    #
    # @!attribute collection_properties
    #   <p>The configuration for binding a component's properties to a data model. Use this for a
    #         collection component.</p>
    #
    #   @return [Hash<String, ComponentDataConfiguration>]
    #
    # @!attribute events
    #   <p>The event configuration for the component. Use for the workflow feature in Amplify Studio that allows you to bind events and actions to components.</p>
    #
    #   @return [Hash<String, ComponentEvent>]
    #
    # @!attribute schema_version
    #   <p>The schema version of the component when it was imported.</p>
    #
    #   @return [String]
    #
    UpdateComponentData = ::Struct.new(
      :id,
      :name,
      :source_id,
      :component_type,
      :properties,
      :children,
      :variants,
      :overrides,
      :binding_properties,
      :collection_properties,
      :events,
      :schema_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID for the Amplify app.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_name
    #   <p>The name of the backend environment that is part of the Amplify app.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique ID for the component.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The unique client token.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_component
    #   <p>The configuration of the updated component.</p>
    #
    #   @return [UpdateComponentData]
    #
    UpdateComponentInput = ::Struct.new(
      :app_id,
      :environment_name,
      :id,
      :client_token,
      :updated_component,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entity
    #   <p>Describes the configuration of the updated component.</p>
    #
    #   @return [Component]
    #
    UpdateComponentOutput = ::Struct.new(
      :entity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Saves the data binding information for a theme.</p>
    #
    # @!attribute id
    #   <p>The unique ID of the theme to update.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the theme to update.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>A list of key-value pairs that define the theme's properties.</p>
    #
    #   @return [Array<ThemeValues>]
    #
    # @!attribute overrides
    #   <p>Describes the properties that can be overriden to customize the theme.</p>
    #
    #   @return [Array<ThemeValues>]
    #
    UpdateThemeData = ::Struct.new(
      :id,
      :name,
      :values,
      :overrides,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The unique ID for the Amplify app.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_name
    #   <p>The name of the backend environment that is part of the Amplify app.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique ID for the theme.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The unique client token.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_theme
    #   <p>The configuration of the updated theme.</p>
    #
    #   @return [UpdateThemeData]
    #
    UpdateThemeInput = ::Struct.new(
      :app_id,
      :environment_name,
      :id,
      :client_token,
      :updated_theme,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entity
    #   <p>Describes the configuration of the updated theme.</p>
    #
    #   @return [Theme]
    #
    UpdateThemeOutput = ::Struct.new(
      :entity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
