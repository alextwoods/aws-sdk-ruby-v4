# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::IoTTwinMaker
  # An API client for AWSIoTTwinMaker
  # See {#initialize} for a full list of supported configuration options
  # <p>IoT TwinMaker is a service that enables you to build operational digital twins of
  #          physical systems. IoT TwinMaker overlays measurements and analysis from real-world sensors,
  #          cameras, and enterprise applications so you can create data visualizations to monitor your
  #          physical factory, building, or industrial plant. You can use this real-world data to
  #          monitor operations and diagnose and repair errors.</p>
  #
  class Client
    include Hearth::ClientStubs

    @middleware = Hearth::MiddlewareBuilder.new

    def self.middleware
      @middleware
    end

    # @param [Config] config
    #   An instance of {Config}
    #
    def initialize(config = AWS::SDK::IoTTwinMaker::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Sets values for multiple time series properties.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchPutPropertyValuesInput}.
    #
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace that contains the properties to set.</p>
    #
    # @option params [Array<PropertyValueEntry>] :entries
    #   <p>An object that maps strings to the property value entries to set. Each string
    #          in the mapping must be unique to this object.</p>
    #
    # @return [Types::BatchPutPropertyValuesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_put_property_values(
    #     workspace_id: 'workspaceId', # required
    #     entries: [
    #       {
    #         entity_property_reference: {
    #           component_name: 'componentName',
    #           external_id_property: {
    #             'key' => 'value'
    #           },
    #           entity_id: 'entityId',
    #           property_name: 'propertyName' # required
    #         }, # required
    #         property_values: [
    #           {
    #             timestamp: Time.now,
    #             value: {
    #               boolean_value: false,
    #               double_value: 1.0,
    #               integer_value: 1,
    #               long_value: 1,
    #               string_value: 'stringValue',
    #               relationship_value: {
    #                 target_entity_id: 'targetEntityId',
    #                 target_component_name: 'targetComponentName'
    #               },
    #               expression: 'expression'
    #             }, # required
    #             time: 'time'
    #           }
    #         ]
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchPutPropertyValuesOutput
    #   resp.data.error_entries #=> Array<BatchPutPropertyErrorEntry>
    #   resp.data.error_entries[0] #=> Types::BatchPutPropertyErrorEntry
    #   resp.data.error_entries[0].errors #=> Array<BatchPutPropertyError>
    #   resp.data.error_entries[0].errors[0] #=> Types::BatchPutPropertyError
    #   resp.data.error_entries[0].errors[0].error_code #=> String
    #   resp.data.error_entries[0].errors[0].error_message #=> String
    #   resp.data.error_entries[0].errors[0].entry #=> Types::PropertyValueEntry
    #   resp.data.error_entries[0].errors[0].entry.entity_property_reference #=> Types::EntityPropertyReference
    #   resp.data.error_entries[0].errors[0].entry.entity_property_reference.component_name #=> String
    #   resp.data.error_entries[0].errors[0].entry.entity_property_reference.external_id_property #=> Hash<String, String>
    #   resp.data.error_entries[0].errors[0].entry.entity_property_reference.external_id_property['key'] #=> String
    #   resp.data.error_entries[0].errors[0].entry.entity_property_reference.entity_id #=> String
    #   resp.data.error_entries[0].errors[0].entry.entity_property_reference.property_name #=> String
    #   resp.data.error_entries[0].errors[0].entry.property_values #=> Array<PropertyValue>
    #   resp.data.error_entries[0].errors[0].entry.property_values[0] #=> Types::PropertyValue
    #   resp.data.error_entries[0].errors[0].entry.property_values[0].timestamp #=> Time
    #   resp.data.error_entries[0].errors[0].entry.property_values[0].value #=> Types::DataValue
    #   resp.data.error_entries[0].errors[0].entry.property_values[0].value.boolean_value #=> Boolean
    #   resp.data.error_entries[0].errors[0].entry.property_values[0].value.double_value #=> Float
    #   resp.data.error_entries[0].errors[0].entry.property_values[0].value.integer_value #=> Integer
    #   resp.data.error_entries[0].errors[0].entry.property_values[0].value.long_value #=> Integer
    #   resp.data.error_entries[0].errors[0].entry.property_values[0].value.string_value #=> String
    #   resp.data.error_entries[0].errors[0].entry.property_values[0].value.list_value #=> Array<DataValue>
    #   resp.data.error_entries[0].errors[0].entry.property_values[0].value.map_value #=> Hash<String, DataValue>
    #   resp.data.error_entries[0].errors[0].entry.property_values[0].value.relationship_value #=> Types::RelationshipValue
    #   resp.data.error_entries[0].errors[0].entry.property_values[0].value.relationship_value.target_entity_id #=> String
    #   resp.data.error_entries[0].errors[0].entry.property_values[0].value.relationship_value.target_component_name #=> String
    #   resp.data.error_entries[0].errors[0].entry.property_values[0].value.expression #=> String
    #   resp.data.error_entries[0].errors[0].entry.property_values[0].time #=> String
    #
    def batch_put_property_values(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchPutPropertyValuesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchPutPropertyValuesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "data.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchPutPropertyValues
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::BatchPutPropertyValues
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchPutPropertyValues,
        stubs: @stubs,
        params_class: Params::BatchPutPropertyValuesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_put_property_values
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a component type.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateComponentTypeInput}.
    #
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace that contains the component type.</p>
    #
    # @option params [Boolean] :is_singleton
    #   <p>A Boolean value that specifies whether an entity can have more than one component of
    #            this type.</p>
    #
    # @option params [String] :component_type_id
    #   <p>The ID of the component type.</p>
    #
    # @option params [String] :description
    #   <p>The description of the component type.</p>
    #
    # @option params [Hash<String, PropertyDefinitionRequest>] :property_definitions
    #   <p>An object that maps strings to the property definitions in the component type. Each string
    #         in the mapping must be unique to this object.</p>
    #
    # @option params [Array<String>] :extends_from
    #   <p>Specifies the parent component type to extend.</p>
    #
    # @option params [Hash<String, FunctionRequest>] :functions
    #   <p>An object that maps strings to the functions in the component type. Each string in the
    #            mapping must be unique to this object.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata that you can use to manage the component type.</p>
    #
    # @return [Types::CreateComponentTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_component_type(
    #     workspace_id: 'workspaceId', # required
    #     is_singleton: false,
    #     component_type_id: 'componentTypeId', # required
    #     description: 'description',
    #     property_definitions: {
    #       'key' => {
    #         data_type: {
    #           type: 'RELATIONSHIP', # required - accepts ["RELATIONSHIP", "STRING", "LONG", "BOOLEAN", "INTEGER", "DOUBLE", "LIST", "MAP"]
    #           allowed_values: [
    #             {
    #               boolean_value: false,
    #               double_value: 1.0,
    #               integer_value: 1,
    #               long_value: 1,
    #               string_value: 'stringValue',
    #               relationship_value: {
    #                 target_entity_id: 'targetEntityId',
    #                 target_component_name: 'targetComponentName'
    #               },
    #               expression: 'expression'
    #             }
    #           ],
    #           unit_of_measure: 'unitOfMeasure',
    #           relationship: {
    #             target_component_type_id: 'targetComponentTypeId',
    #             relationship_type: 'relationshipType'
    #           }
    #         },
    #         is_required_in_entity: false,
    #         is_external_id: false,
    #         is_stored_externally: false,
    #         is_time_series: false,
    #         configuration: {
    #           'key' => 'value'
    #         }
    #       }
    #     },
    #     extends_from: [
    #       'member'
    #     ],
    #     functions: {
    #       'key' => {
    #         required_properties: [
    #           'member'
    #         ],
    #         scope: 'ENTITY', # accepts ["ENTITY", "WORKSPACE"]
    #         implemented_by: {
    #           lambda: {
    #             arn: 'arn' # required
    #           },
    #           is_native: false
    #         }
    #       }
    #     },
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateComponentTypeOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_date_time #=> Time
    #   resp.data.state #=> String, one of ["CREATING", "UPDATING", "DELETING", "ACTIVE", "ERROR"]
    #
    def create_component_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateComponentTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateComponentTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateComponentType
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ConflictException, Errors::ValidationException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateComponentType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateComponentType,
        stubs: @stubs,
        params_class: Params::CreateComponentTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_component_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an entity.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateEntityInput}.
    #
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace that contains the entity.</p>
    #
    # @option params [String] :entity_id
    #   <p>The ID of the entity.</p>
    #
    # @option params [String] :entity_name
    #   <p>The name of the entity.</p>
    #
    # @option params [String] :description
    #   <p>The description of the entity.</p>
    #
    # @option params [Hash<String, ComponentRequest>] :components
    #   <p>An object that maps strings to the components in the entity. Each string
    #          in the mapping must be unique to this object.</p>
    #
    # @option params [String] :parent_entity_id
    #   <p>The ID of the entity's parent entity.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata that you can use to manage the entity.</p>
    #
    # @return [Types::CreateEntityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_entity(
    #     workspace_id: 'workspaceId', # required
    #     entity_id: 'entityId',
    #     entity_name: 'entityName', # required
    #     description: 'description',
    #     components: {
    #       'key' => {
    #         description: 'description',
    #         component_type_id: 'componentTypeId',
    #         properties: {
    #           'key' => {
    #             definition: {
    #               data_type: {
    #                 type: 'RELATIONSHIP', # required - accepts ["RELATIONSHIP", "STRING", "LONG", "BOOLEAN", "INTEGER", "DOUBLE", "LIST", "MAP"]
    #                 allowed_values: [
    #                   {
    #                     boolean_value: false,
    #                     double_value: 1.0,
    #                     integer_value: 1,
    #                     long_value: 1,
    #                     string_value: 'stringValue',
    #                     relationship_value: {
    #                       target_entity_id: 'targetEntityId',
    #                       target_component_name: 'targetComponentName'
    #                     },
    #                     expression: 'expression'
    #                   }
    #                 ],
    #                 unit_of_measure: 'unitOfMeasure',
    #                 relationship: {
    #                   target_component_type_id: 'targetComponentTypeId',
    #                   relationship_type: 'relationshipType'
    #                 }
    #               },
    #               is_required_in_entity: false,
    #               is_external_id: false,
    #               is_stored_externally: false,
    #               is_time_series: false,
    #               configuration: {
    #                 'key' => 'value'
    #               }
    #             },
    #             update_type: 'UPDATE' # accepts ["UPDATE", "DELETE", "CREATE"]
    #           }
    #         }
    #       }
    #     },
    #     parent_entity_id: 'parentEntityId',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateEntityOutput
    #   resp.data.entity_id #=> String
    #   resp.data.arn #=> String
    #   resp.data.creation_date_time #=> Time
    #   resp.data.state #=> String, one of ["CREATING", "UPDATING", "DELETING", "ACTIVE", "ERROR"]
    #
    def create_entity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEntityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEntityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEntity
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ConflictException, Errors::ValidationException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateEntity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateEntity,
        stubs: @stubs,
        params_class: Params::CreateEntityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_entity
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a scene.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSceneInput}.
    #
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace that contains the scene.</p>
    #
    # @option params [String] :scene_id
    #   <p>The ID of the scene.</p>
    #
    # @option params [String] :content_location
    #   <p>The relative path that specifies the location of the content definition file.</p>
    #
    # @option params [String] :description
    #   <p>The description for this scene.</p>
    #
    # @option params [Array<String>] :capabilities
    #   <p>A list of capabilities that the scene uses to render itself.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata that you can use to manage the scene.</p>
    #
    # @return [Types::CreateSceneOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_scene(
    #     workspace_id: 'workspaceId', # required
    #     scene_id: 'sceneId', # required
    #     content_location: 'contentLocation', # required
    #     description: 'description',
    #     capabilities: [
    #       'member'
    #     ],
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSceneOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_date_time #=> Time
    #
    def create_scene(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSceneInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSceneInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateScene
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ConflictException, Errors::ValidationException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateScene
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateScene,
        stubs: @stubs,
        params_class: Params::CreateSceneOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_scene
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a workplace.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateWorkspaceInput}.
    #
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace.</p>
    #
    # @option params [String] :description
    #   <p>The description of the workspace.</p>
    #
    # @option params [String] :s3_location
    #   <p>The ARN of the S3 bucket where resources associated with the workspace are stored.</p>
    #
    # @option params [String] :role
    #   <p>The ARN of the execution role associated with the workspace.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata that you can use to manage the workspace</p>
    #
    # @return [Types::CreateWorkspaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workspace(
    #     workspace_id: 'workspaceId', # required
    #     description: 'description',
    #     s3_location: 's3Location', # required
    #     role: 'role', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateWorkspaceOutput
    #   resp.data.arn #=> String
    #   resp.data.creation_date_time #=> Time
    #
    def create_workspace(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateWorkspaceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateWorkspaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateWorkspace
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ConflictException, Errors::ValidationException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateWorkspace
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateWorkspace,
        stubs: @stubs,
        params_class: Params::CreateWorkspaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_workspace
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a component type.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteComponentTypeInput}.
    #
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace that contains the component type.</p>
    #
    # @option params [String] :component_type_id
    #   <p>The ID of the component type to delete.</p>
    #
    # @return [Types::DeleteComponentTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_component_type(
    #     workspace_id: 'workspaceId', # required
    #     component_type_id: 'componentTypeId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteComponentTypeOutput
    #   resp.data.state #=> String, one of ["CREATING", "UPDATING", "DELETING", "ACTIVE", "ERROR"]
    #
    def delete_component_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteComponentTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteComponentTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteComponentType
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::DeleteComponentType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteComponentType,
        stubs: @stubs,
        params_class: Params::DeleteComponentTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_component_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an entity.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEntityInput}.
    #
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace that contains the entity to delete.</p>
    #
    # @option params [String] :entity_id
    #   <p>The ID of the entity to delete.</p>
    #
    # @option params [Boolean] :is_recursive
    #   <p>A Boolean value that specifies whether the operation deletes child entities.</p>
    #
    # @return [Types::DeleteEntityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_entity(
    #     workspace_id: 'workspaceId', # required
    #     entity_id: 'entityId', # required
    #     is_recursive: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEntityOutput
    #   resp.data.state #=> String, one of ["CREATING", "UPDATING", "DELETING", "ACTIVE", "ERROR"]
    #
    def delete_entity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEntityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEntityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEntity
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::DeleteEntity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEntity,
        stubs: @stubs,
        params_class: Params::DeleteEntityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_entity
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a scene.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSceneInput}.
    #
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace.</p>
    #
    # @option params [String] :scene_id
    #   <p>The ID of the scene to delete.</p>
    #
    # @return [Types::DeleteSceneOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_scene(
    #     workspace_id: 'workspaceId', # required
    #     scene_id: 'sceneId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSceneOutput
    #
    def delete_scene(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSceneInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSceneInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteScene
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::DeleteScene
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteScene,
        stubs: @stubs,
        params_class: Params::DeleteSceneOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_scene
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a workspace.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteWorkspaceInput}.
    #
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to delete.</p>
    #
    # @return [Types::DeleteWorkspaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workspace(
    #     workspace_id: 'workspaceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteWorkspaceOutput
    #
    def delete_workspace(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteWorkspaceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteWorkspaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteWorkspace
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::DeleteWorkspace
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteWorkspace,
        stubs: @stubs,
        params_class: Params::DeleteWorkspaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_workspace
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about a component type.</p>
    #
    # @param [Hash] params
    #   See {Types::GetComponentTypeInput}.
    #
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace that contains the component type.</p>
    #
    # @option params [String] :component_type_id
    #   <p>The ID of the component type.</p>
    #
    # @return [Types::GetComponentTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_component_type(
    #     workspace_id: 'workspaceId', # required
    #     component_type_id: 'componentTypeId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetComponentTypeOutput
    #   resp.data.workspace_id #=> String
    #   resp.data.is_singleton #=> Boolean
    #   resp.data.component_type_id #=> String
    #   resp.data.description #=> String
    #   resp.data.property_definitions #=> Hash<String, PropertyDefinitionResponse>
    #   resp.data.property_definitions['key'] #=> Types::PropertyDefinitionResponse
    #   resp.data.property_definitions['key'].data_type #=> Types::DataType
    #   resp.data.property_definitions['key'].data_type.type #=> String, one of ["RELATIONSHIP", "STRING", "LONG", "BOOLEAN", "INTEGER", "DOUBLE", "LIST", "MAP"]
    #   resp.data.property_definitions['key'].data_type.nested_type #=> Types::DataType
    #   resp.data.property_definitions['key'].data_type.allowed_values #=> Array<DataValue>
    #   resp.data.property_definitions['key'].data_type.allowed_values[0] #=> Types::DataValue
    #   resp.data.property_definitions['key'].data_type.allowed_values[0].boolean_value #=> Boolean
    #   resp.data.property_definitions['key'].data_type.allowed_values[0].double_value #=> Float
    #   resp.data.property_definitions['key'].data_type.allowed_values[0].integer_value #=> Integer
    #   resp.data.property_definitions['key'].data_type.allowed_values[0].long_value #=> Integer
    #   resp.data.property_definitions['key'].data_type.allowed_values[0].string_value #=> String
    #   resp.data.property_definitions['key'].data_type.allowed_values[0].list_value #=> Array<DataValue>
    #   resp.data.property_definitions['key'].data_type.allowed_values[0].map_value #=> Hash<String, DataValue>
    #   resp.data.property_definitions['key'].data_type.allowed_values[0].relationship_value #=> Types::RelationshipValue
    #   resp.data.property_definitions['key'].data_type.allowed_values[0].relationship_value.target_entity_id #=> String
    #   resp.data.property_definitions['key'].data_type.allowed_values[0].relationship_value.target_component_name #=> String
    #   resp.data.property_definitions['key'].data_type.allowed_values[0].expression #=> String
    #   resp.data.property_definitions['key'].data_type.unit_of_measure #=> String
    #   resp.data.property_definitions['key'].data_type.relationship #=> Types::Relationship
    #   resp.data.property_definitions['key'].data_type.relationship.target_component_type_id #=> String
    #   resp.data.property_definitions['key'].data_type.relationship.relationship_type #=> String
    #   resp.data.property_definitions['key'].is_time_series #=> Boolean
    #   resp.data.property_definitions['key'].is_required_in_entity #=> Boolean
    #   resp.data.property_definitions['key'].is_external_id #=> Boolean
    #   resp.data.property_definitions['key'].is_stored_externally #=> Boolean
    #   resp.data.property_definitions['key'].is_imported #=> Boolean
    #   resp.data.property_definitions['key'].is_final #=> Boolean
    #   resp.data.property_definitions['key'].is_inherited #=> Boolean
    #   resp.data.property_definitions['key'].default_value #=> Types::DataValue
    #   resp.data.property_definitions['key'].configuration #=> Hash<String, String>
    #   resp.data.property_definitions['key'].configuration['key'] #=> String
    #   resp.data.extends_from #=> Array<String>
    #   resp.data.extends_from[0] #=> String
    #   resp.data.functions #=> Hash<String, FunctionResponse>
    #   resp.data.functions['key'] #=> Types::FunctionResponse
    #   resp.data.functions['key'].required_properties #=> Array<String>
    #   resp.data.functions['key'].required_properties[0] #=> String
    #   resp.data.functions['key'].scope #=> String, one of ["ENTITY", "WORKSPACE"]
    #   resp.data.functions['key'].implemented_by #=> Types::DataConnector
    #   resp.data.functions['key'].implemented_by.lambda #=> Types::LambdaFunction
    #   resp.data.functions['key'].implemented_by.lambda.arn #=> String
    #   resp.data.functions['key'].implemented_by.is_native #=> Boolean
    #   resp.data.functions['key'].is_inherited #=> Boolean
    #   resp.data.creation_date_time #=> Time
    #   resp.data.update_date_time #=> Time
    #   resp.data.arn #=> String
    #   resp.data.is_abstract #=> Boolean
    #   resp.data.is_schema_initialized #=> Boolean
    #   resp.data.status #=> Types::Status
    #   resp.data.status.state #=> String, one of ["CREATING", "UPDATING", "DELETING", "ACTIVE", "ERROR"]
    #   resp.data.status.error #=> Types::ErrorDetails
    #   resp.data.status.error.code #=> String, one of ["VALIDATION_ERROR", "INTERNAL_FAILURE"]
    #   resp.data.status.error.message #=> String
    #
    def get_component_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetComponentTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetComponentTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetComponentType
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::GetComponentType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetComponentType,
        stubs: @stubs,
        params_class: Params::GetComponentTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_component_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about an entity.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEntityInput}.
    #
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace.</p>
    #
    # @option params [String] :entity_id
    #   <p>The ID of the entity.</p>
    #
    # @return [Types::GetEntityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_entity(
    #     workspace_id: 'workspaceId', # required
    #     entity_id: 'entityId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEntityOutput
    #   resp.data.entity_id #=> String
    #   resp.data.entity_name #=> String
    #   resp.data.arn #=> String
    #   resp.data.status #=> Types::Status
    #   resp.data.status.state #=> String, one of ["CREATING", "UPDATING", "DELETING", "ACTIVE", "ERROR"]
    #   resp.data.status.error #=> Types::ErrorDetails
    #   resp.data.status.error.code #=> String, one of ["VALIDATION_ERROR", "INTERNAL_FAILURE"]
    #   resp.data.status.error.message #=> String
    #   resp.data.workspace_id #=> String
    #   resp.data.description #=> String
    #   resp.data.components #=> Hash<String, ComponentResponse>
    #   resp.data.components['key'] #=> Types::ComponentResponse
    #   resp.data.components['key'].component_name #=> String
    #   resp.data.components['key'].description #=> String
    #   resp.data.components['key'].component_type_id #=> String
    #   resp.data.components['key'].status #=> Types::Status
    #   resp.data.components['key'].defined_in #=> String
    #   resp.data.components['key'].properties #=> Hash<String, PropertyResponse>
    #   resp.data.components['key'].properties['key'] #=> Types::PropertyResponse
    #   resp.data.components['key'].properties['key'].definition #=> Types::PropertyDefinitionResponse
    #   resp.data.components['key'].properties['key'].definition.data_type #=> Types::DataType
    #   resp.data.components['key'].properties['key'].definition.data_type.type #=> String, one of ["RELATIONSHIP", "STRING", "LONG", "BOOLEAN", "INTEGER", "DOUBLE", "LIST", "MAP"]
    #   resp.data.components['key'].properties['key'].definition.data_type.nested_type #=> Types::DataType
    #   resp.data.components['key'].properties['key'].definition.data_type.allowed_values #=> Array<DataValue>
    #   resp.data.components['key'].properties['key'].definition.data_type.allowed_values[0] #=> Types::DataValue
    #   resp.data.components['key'].properties['key'].definition.data_type.allowed_values[0].boolean_value #=> Boolean
    #   resp.data.components['key'].properties['key'].definition.data_type.allowed_values[0].double_value #=> Float
    #   resp.data.components['key'].properties['key'].definition.data_type.allowed_values[0].integer_value #=> Integer
    #   resp.data.components['key'].properties['key'].definition.data_type.allowed_values[0].long_value #=> Integer
    #   resp.data.components['key'].properties['key'].definition.data_type.allowed_values[0].string_value #=> String
    #   resp.data.components['key'].properties['key'].definition.data_type.allowed_values[0].list_value #=> Array<DataValue>
    #   resp.data.components['key'].properties['key'].definition.data_type.allowed_values[0].map_value #=> Hash<String, DataValue>
    #   resp.data.components['key'].properties['key'].definition.data_type.allowed_values[0].relationship_value #=> Types::RelationshipValue
    #   resp.data.components['key'].properties['key'].definition.data_type.allowed_values[0].relationship_value.target_entity_id #=> String
    #   resp.data.components['key'].properties['key'].definition.data_type.allowed_values[0].relationship_value.target_component_name #=> String
    #   resp.data.components['key'].properties['key'].definition.data_type.allowed_values[0].expression #=> String
    #   resp.data.components['key'].properties['key'].definition.data_type.unit_of_measure #=> String
    #   resp.data.components['key'].properties['key'].definition.data_type.relationship #=> Types::Relationship
    #   resp.data.components['key'].properties['key'].definition.data_type.relationship.target_component_type_id #=> String
    #   resp.data.components['key'].properties['key'].definition.data_type.relationship.relationship_type #=> String
    #   resp.data.components['key'].properties['key'].definition.is_time_series #=> Boolean
    #   resp.data.components['key'].properties['key'].definition.is_required_in_entity #=> Boolean
    #   resp.data.components['key'].properties['key'].definition.is_external_id #=> Boolean
    #   resp.data.components['key'].properties['key'].definition.is_stored_externally #=> Boolean
    #   resp.data.components['key'].properties['key'].definition.is_imported #=> Boolean
    #   resp.data.components['key'].properties['key'].definition.is_final #=> Boolean
    #   resp.data.components['key'].properties['key'].definition.is_inherited #=> Boolean
    #   resp.data.components['key'].properties['key'].definition.default_value #=> Types::DataValue
    #   resp.data.components['key'].properties['key'].definition.configuration #=> Hash<String, String>
    #   resp.data.components['key'].properties['key'].definition.configuration['key'] #=> String
    #   resp.data.components['key'].properties['key'].value #=> Types::DataValue
    #   resp.data.parent_entity_id #=> String
    #   resp.data.has_child_entities #=> Boolean
    #   resp.data.creation_date_time #=> Time
    #   resp.data.update_date_time #=> Time
    #
    def get_entity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEntityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEntityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEntity
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::GetEntity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEntity,
        stubs: @stubs,
        params_class: Params::GetEntityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_entity
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the property values for a component, component type, entity, or workspace.</p>
    #          <p>You must specify a value for either <code>componentName</code>, <code>componentTypeId</code>, <code>entityId</code>, or <code>workspaceId</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPropertyValueInput}.
    #
    # @option params [String] :component_name
    #   <p>The name of the component whose property values the operation returns.</p>
    #
    # @option params [String] :component_type_id
    #   <p>The ID of the component type whose property values the operation returns.</p>
    #
    # @option params [String] :entity_id
    #   <p>The ID of the entity whose property values the operation returns.</p>
    #
    # @option params [Array<String>] :selected_properties
    #   <p>The properties whose values the operation returns.</p>
    #
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace whose values the operation returns.</p>
    #
    # @return [Types::GetPropertyValueOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_property_value(
    #     component_name: 'componentName',
    #     component_type_id: 'componentTypeId',
    #     entity_id: 'entityId',
    #     selected_properties: [
    #       'member'
    #     ], # required
    #     workspace_id: 'workspaceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPropertyValueOutput
    #   resp.data.property_values #=> Hash<String, PropertyLatestValue>
    #   resp.data.property_values['key'] #=> Types::PropertyLatestValue
    #   resp.data.property_values['key'].property_reference #=> Types::EntityPropertyReference
    #   resp.data.property_values['key'].property_reference.component_name #=> String
    #   resp.data.property_values['key'].property_reference.external_id_property #=> Hash<String, String>
    #   resp.data.property_values['key'].property_reference.external_id_property['key'] #=> String
    #   resp.data.property_values['key'].property_reference.entity_id #=> String
    #   resp.data.property_values['key'].property_reference.property_name #=> String
    #   resp.data.property_values['key'].property_value #=> Types::DataValue
    #   resp.data.property_values['key'].property_value.boolean_value #=> Boolean
    #   resp.data.property_values['key'].property_value.double_value #=> Float
    #   resp.data.property_values['key'].property_value.integer_value #=> Integer
    #   resp.data.property_values['key'].property_value.long_value #=> Integer
    #   resp.data.property_values['key'].property_value.string_value #=> String
    #   resp.data.property_values['key'].property_value.list_value #=> Array<DataValue>
    #   resp.data.property_values['key'].property_value.map_value #=> Hash<String, DataValue>
    #   resp.data.property_values['key'].property_value.relationship_value #=> Types::RelationshipValue
    #   resp.data.property_values['key'].property_value.relationship_value.target_entity_id #=> String
    #   resp.data.property_values['key'].property_value.relationship_value.target_component_name #=> String
    #   resp.data.property_values['key'].property_value.expression #=> String
    #
    def get_property_value(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPropertyValueInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPropertyValueInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "data.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPropertyValue
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConnectorFailureException, Errors::ThrottlingException, Errors::ValidationException, Errors::ConnectorTimeoutException]),
        data_parser: Parsers::GetPropertyValue
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPropertyValue,
        stubs: @stubs,
        params_class: Params::GetPropertyValueOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_property_value
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the history of a time series property value for a component, component type, entity, or workspace.</p>
    #          <p>You must specify a value for <code>workspaceId</code>. For entity-specific queries, specify values for <code>componentName</code> and
    #         <code>entityId</code>. For cross-entity quries, specify a value for <code>componentTypeId</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPropertyValueHistoryInput}.
    #
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace.</p>
    #
    # @option params [String] :entity_id
    #   <p>The ID of the entity.</p>
    #
    # @option params [String] :component_name
    #   <p>The name of the component.</p>
    #
    # @option params [String] :component_type_id
    #   <p>The ID of the component type.</p>
    #
    # @option params [Array<String>] :selected_properties
    #   <p>A list of properties whose value histories the request retrieves.</p>
    #
    # @option params [Array<PropertyFilter>] :property_filters
    #   <p>A list of objects that filter the property value history request.</p>
    #
    # @option params [Time] :start_date_time
    #   <p>The date and time of the earliest property value to return.</p>
    #
    # @option params [Time] :end_date_time
    #   <p>The date and time of the latest property value to return.</p>
    #
    # @option params [InterpolationParameters] :interpolation
    #   <p>An object that specifies the interpolation type and the interval over which to interpolate data.</p>
    #
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :order_by_time
    #   <p>The time direction to use in the result order.</p>
    #
    # @option params [String] :start_time
    #   <p>The ISO8601 DateTime of the earliest property value to return.</p>
    #            <p>For more information about the ISO8601 DateTime format, see the data type <a href="https://docs.aws.amazon.com/roci/latest/roci-api/API_PropertyValue.html">PropertyValue</a>.</p>
    #
    # @option params [String] :end_time
    #   <p>The ISO8601 DateTime of the latest property value to return.</p>
    #            <p>For more information about the ISO8601 DateTime format, see the data type <a href="https://docs.aws.amazon.com/roci/latest/roci-api/API_PropertyValue.html">PropertyValue</a>.</p>
    #
    # @return [Types::GetPropertyValueHistoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_property_value_history(
    #     workspace_id: 'workspaceId', # required
    #     entity_id: 'entityId',
    #     component_name: 'componentName',
    #     component_type_id: 'componentTypeId',
    #     selected_properties: [
    #       'member'
    #     ], # required
    #     property_filters: [
    #       {
    #         property_name: 'propertyName',
    #         operator: 'operator',
    #         value: {
    #           boolean_value: false,
    #           double_value: 1.0,
    #           integer_value: 1,
    #           long_value: 1,
    #           string_value: 'stringValue',
    #           relationship_value: {
    #             target_entity_id: 'targetEntityId',
    #             target_component_name: 'targetComponentName'
    #           },
    #           expression: 'expression'
    #         }
    #       }
    #     ],
    #     start_date_time: Time.now,
    #     end_date_time: Time.now,
    #     interpolation: {
    #       interpolation_type: 'LINEAR', # accepts ["LINEAR"]
    #       interval_in_seconds: 1
    #     },
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     order_by_time: 'ASCENDING', # accepts ["ASCENDING", "DESCENDING"]
    #     start_time: 'startTime',
    #     end_time: 'endTime'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPropertyValueHistoryOutput
    #   resp.data.property_values #=> Array<PropertyValueHistory>
    #   resp.data.property_values[0] #=> Types::PropertyValueHistory
    #   resp.data.property_values[0].entity_property_reference #=> Types::EntityPropertyReference
    #   resp.data.property_values[0].entity_property_reference.component_name #=> String
    #   resp.data.property_values[0].entity_property_reference.external_id_property #=> Hash<String, String>
    #   resp.data.property_values[0].entity_property_reference.external_id_property['key'] #=> String
    #   resp.data.property_values[0].entity_property_reference.entity_id #=> String
    #   resp.data.property_values[0].entity_property_reference.property_name #=> String
    #   resp.data.property_values[0].values #=> Array<PropertyValue>
    #   resp.data.property_values[0].values[0] #=> Types::PropertyValue
    #   resp.data.property_values[0].values[0].timestamp #=> Time
    #   resp.data.property_values[0].values[0].value #=> Types::DataValue
    #   resp.data.property_values[0].values[0].value.boolean_value #=> Boolean
    #   resp.data.property_values[0].values[0].value.double_value #=> Float
    #   resp.data.property_values[0].values[0].value.integer_value #=> Integer
    #   resp.data.property_values[0].values[0].value.long_value #=> Integer
    #   resp.data.property_values[0].values[0].value.string_value #=> String
    #   resp.data.property_values[0].values[0].value.list_value #=> Array<DataValue>
    #   resp.data.property_values[0].values[0].value.map_value #=> Hash<String, DataValue>
    #   resp.data.property_values[0].values[0].value.relationship_value #=> Types::RelationshipValue
    #   resp.data.property_values[0].values[0].value.relationship_value.target_entity_id #=> String
    #   resp.data.property_values[0].values[0].value.relationship_value.target_component_name #=> String
    #   resp.data.property_values[0].values[0].value.expression #=> String
    #   resp.data.property_values[0].values[0].time #=> String
    #   resp.data.next_token #=> String
    #
    def get_property_value_history(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPropertyValueHistoryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPropertyValueHistoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "data.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPropertyValueHistory
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConnectorFailureException, Errors::ThrottlingException, Errors::ValidationException, Errors::ConnectorTimeoutException]),
        data_parser: Parsers::GetPropertyValueHistory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPropertyValueHistory,
        stubs: @stubs,
        params_class: Params::GetPropertyValueHistoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_property_value_history
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about a scene.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSceneInput}.
    #
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace that contains the scene.</p>
    #
    # @option params [String] :scene_id
    #   <p>The ID of the scene.</p>
    #
    # @return [Types::GetSceneOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_scene(
    #     workspace_id: 'workspaceId', # required
    #     scene_id: 'sceneId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSceneOutput
    #   resp.data.workspace_id #=> String
    #   resp.data.scene_id #=> String
    #   resp.data.content_location #=> String
    #   resp.data.arn #=> String
    #   resp.data.creation_date_time #=> Time
    #   resp.data.update_date_time #=> Time
    #   resp.data.description #=> String
    #   resp.data.capabilities #=> Array<String>
    #   resp.data.capabilities[0] #=> String
    #
    def get_scene(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSceneInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSceneInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetScene
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::GetScene
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetScene,
        stubs: @stubs,
        params_class: Params::GetSceneOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_scene
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about a workspace.</p>
    #
    # @param [Hash] params
    #   See {Types::GetWorkspaceInput}.
    #
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace.</p>
    #
    # @return [Types::GetWorkspaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_workspace(
    #     workspace_id: 'workspaceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetWorkspaceOutput
    #   resp.data.workspace_id #=> String
    #   resp.data.arn #=> String
    #   resp.data.description #=> String
    #   resp.data.s3_location #=> String
    #   resp.data.role #=> String
    #   resp.data.creation_date_time #=> Time
    #   resp.data.update_date_time #=> Time
    #
    def get_workspace(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetWorkspaceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetWorkspaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetWorkspace
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::GetWorkspace
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetWorkspace,
        stubs: @stubs,
        params_class: Params::GetWorkspaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_workspace
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all component types in a workspace.</p>
    #
    # @param [Hash] params
    #   See {Types::ListComponentTypesInput}.
    #
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace.</p>
    #
    # @option params [Array<ListComponentTypesFilter>] :filters
    #   <p>A list of objects that filter the request.</p>
    #
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to display.</p>
    #
    # @return [Types::ListComponentTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_component_types(
    #     workspace_id: 'workspaceId', # required
    #     filters: [
    #       {
    #         # One of:
    #         extends_from: 'extendsFrom',
    #         namespace: 'namespace',
    #         is_abstract: false
    #       }
    #     ],
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListComponentTypesOutput
    #   resp.data.workspace_id #=> String
    #   resp.data.component_type_summaries #=> Array<ComponentTypeSummary>
    #   resp.data.component_type_summaries[0] #=> Types::ComponentTypeSummary
    #   resp.data.component_type_summaries[0].arn #=> String
    #   resp.data.component_type_summaries[0].component_type_id #=> String
    #   resp.data.component_type_summaries[0].creation_date_time #=> Time
    #   resp.data.component_type_summaries[0].update_date_time #=> Time
    #   resp.data.component_type_summaries[0].description #=> String
    #   resp.data.component_type_summaries[0].status #=> Types::Status
    #   resp.data.component_type_summaries[0].status.state #=> String, one of ["CREATING", "UPDATING", "DELETING", "ACTIVE", "ERROR"]
    #   resp.data.component_type_summaries[0].status.error #=> Types::ErrorDetails
    #   resp.data.component_type_summaries[0].status.error.code #=> String, one of ["VALIDATION_ERROR", "INTERNAL_FAILURE"]
    #   resp.data.component_type_summaries[0].status.error.message #=> String
    #   resp.data.next_token #=> String
    #   resp.data.max_results #=> Integer
    #
    def list_component_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListComponentTypesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListComponentTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListComponentTypes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListComponentTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListComponentTypes,
        stubs: @stubs,
        params_class: Params::ListComponentTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_component_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all entities in a workspace.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEntitiesInput}.
    #
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace.</p>
    #
    # @option params [Array<ListEntitiesFilter>] :filters
    #   <p>A list of objects that filter the request.</p>
    #            <note>
    #               <p>Only one object is accepted as a valid input.</p>
    #            </note>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to display.</p>
    #
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results.</p>
    #
    # @return [Types::ListEntitiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_entities(
    #     workspace_id: 'workspaceId', # required
    #     filters: [
    #       {
    #         # One of:
    #         parent_entity_id: 'parentEntityId',
    #         component_type_id: 'componentTypeId',
    #         external_id: 'externalId'
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEntitiesOutput
    #   resp.data.entity_summaries #=> Array<EntitySummary>
    #   resp.data.entity_summaries[0] #=> Types::EntitySummary
    #   resp.data.entity_summaries[0].entity_id #=> String
    #   resp.data.entity_summaries[0].entity_name #=> String
    #   resp.data.entity_summaries[0].arn #=> String
    #   resp.data.entity_summaries[0].parent_entity_id #=> String
    #   resp.data.entity_summaries[0].status #=> Types::Status
    #   resp.data.entity_summaries[0].status.state #=> String, one of ["CREATING", "UPDATING", "DELETING", "ACTIVE", "ERROR"]
    #   resp.data.entity_summaries[0].status.error #=> Types::ErrorDetails
    #   resp.data.entity_summaries[0].status.error.code #=> String, one of ["VALIDATION_ERROR", "INTERNAL_FAILURE"]
    #   resp.data.entity_summaries[0].status.error.message #=> String
    #   resp.data.entity_summaries[0].description #=> String
    #   resp.data.entity_summaries[0].has_child_entities #=> Boolean
    #   resp.data.entity_summaries[0].creation_date_time #=> Time
    #   resp.data.entity_summaries[0].update_date_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_entities(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEntitiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEntitiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEntities
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ThrottlingException, Errors::ValidationException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::ListEntities
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEntities,
        stubs: @stubs,
        params_class: Params::ListEntitiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_entities
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all scenes in a workspace.</p>
    #
    # @param [Hash] params
    #   See {Types::ListScenesInput}.
    #
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace that contains the scenes.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of results to display.</p>
    #
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results.</p>
    #
    # @return [Types::ListScenesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_scenes(
    #     workspace_id: 'workspaceId', # required
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListScenesOutput
    #   resp.data.scene_summaries #=> Array<SceneSummary>
    #   resp.data.scene_summaries[0] #=> Types::SceneSummary
    #   resp.data.scene_summaries[0].scene_id #=> String
    #   resp.data.scene_summaries[0].content_location #=> String
    #   resp.data.scene_summaries[0].arn #=> String
    #   resp.data.scene_summaries[0].creation_date_time #=> Time
    #   resp.data.scene_summaries[0].update_date_time #=> Time
    #   resp.data.scene_summaries[0].description #=> String
    #   resp.data.next_token #=> String
    #
    def list_scenes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListScenesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListScenesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListScenes
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::ListScenes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListScenes,
        stubs: @stubs,
        params_class: Params::ListScenesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_scenes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all tags associated with a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to display.</p>
    #
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'resourceARN', # required
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_tags_for_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsForResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsForResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListTagsForResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTagsForResource,
        stubs: @stubs,
        params_class: Params::ListTagsForResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags_for_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about workspaces in the current account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListWorkspacesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to display.</p>
    #
    # @option params [String] :next_token
    #   <p>The string that specifies the next page of results.</p>
    #
    # @return [Types::ListWorkspacesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workspaces(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListWorkspacesOutput
    #   resp.data.workspace_summaries #=> Array<WorkspaceSummary>
    #   resp.data.workspace_summaries[0] #=> Types::WorkspaceSummary
    #   resp.data.workspace_summaries[0].workspace_id #=> String
    #   resp.data.workspace_summaries[0].arn #=> String
    #   resp.data.workspace_summaries[0].description #=> String
    #   resp.data.workspace_summaries[0].creation_date_time #=> Time
    #   resp.data.workspace_summaries[0].update_date_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_workspaces(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListWorkspacesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListWorkspacesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListWorkspaces
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ThrottlingException, Errors::ValidationException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::ListWorkspaces
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListWorkspaces,
        stubs: @stubs,
        params_class: Params::ListWorkspacesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_workspaces
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds tags to a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata to add to this resource.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceARN', # required
    #     tags: {
    #       'key' => 'value'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TagResourceOutput
    #
    def tag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyTagsException, Errors::AccessDeniedException]),
        data_parser: Parsers::TagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TagResource,
        stubs: @stubs,
        params_class: Params::TagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes tags from a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag key names to remove from the resource. You don't specify the value. Both the key and its associated value are removed.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'resourceARN', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagResourceOutput
    #
    def untag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagResource
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::UntagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UntagResource,
        stubs: @stubs,
        params_class: Params::UntagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates information in a component type.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateComponentTypeInput}.
    #
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace that contains the component type.</p>
    #
    # @option params [Boolean] :is_singleton
    #   <p>A Boolean value that specifies whether an entity can have more than one component of this
    #            type.</p>
    #
    # @option params [String] :component_type_id
    #   <p>The ID of the component type.</p>
    #
    # @option params [String] :description
    #   <p>The description of the component type.</p>
    #
    # @option params [Hash<String, PropertyDefinitionRequest>] :property_definitions
    #   <p>An object that maps strings to the property definitions in the component type. Each string
    #          in the mapping must be unique to this object.</p>
    #
    # @option params [Array<String>] :extends_from
    #   <p>Specifies the component type that this component type extends.</p>
    #
    # @option params [Hash<String, FunctionRequest>] :functions
    #   <p>An object that maps strings to the functions in the component type. Each string
    #          in the mapping must be unique to this object.</p>
    #
    # @return [Types::UpdateComponentTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_component_type(
    #     workspace_id: 'workspaceId', # required
    #     is_singleton: false,
    #     component_type_id: 'componentTypeId', # required
    #     description: 'description',
    #     property_definitions: {
    #       'key' => {
    #         data_type: {
    #           type: 'RELATIONSHIP', # required - accepts ["RELATIONSHIP", "STRING", "LONG", "BOOLEAN", "INTEGER", "DOUBLE", "LIST", "MAP"]
    #           allowed_values: [
    #             {
    #               boolean_value: false,
    #               double_value: 1.0,
    #               integer_value: 1,
    #               long_value: 1,
    #               string_value: 'stringValue',
    #               relationship_value: {
    #                 target_entity_id: 'targetEntityId',
    #                 target_component_name: 'targetComponentName'
    #               },
    #               expression: 'expression'
    #             }
    #           ],
    #           unit_of_measure: 'unitOfMeasure',
    #           relationship: {
    #             target_component_type_id: 'targetComponentTypeId',
    #             relationship_type: 'relationshipType'
    #           }
    #         },
    #         is_required_in_entity: false,
    #         is_external_id: false,
    #         is_stored_externally: false,
    #         is_time_series: false,
    #         configuration: {
    #           'key' => 'value'
    #         }
    #       }
    #     },
    #     extends_from: [
    #       'member'
    #     ],
    #     functions: {
    #       'key' => {
    #         required_properties: [
    #           'member'
    #         ],
    #         scope: 'ENTITY', # accepts ["ENTITY", "WORKSPACE"]
    #         implemented_by: {
    #           lambda: {
    #             arn: 'arn' # required
    #           },
    #           is_native: false
    #         }
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateComponentTypeOutput
    #   resp.data.workspace_id #=> String
    #   resp.data.arn #=> String
    #   resp.data.component_type_id #=> String
    #   resp.data.state #=> String, one of ["CREATING", "UPDATING", "DELETING", "ACTIVE", "ERROR"]
    #
    def update_component_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateComponentTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateComponentTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateComponentType
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::UpdateComponentType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateComponentType,
        stubs: @stubs,
        params_class: Params::UpdateComponentTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_component_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an entity.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateEntityInput}.
    #
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace that contains the entity.</p>
    #
    # @option params [String] :entity_id
    #   <p>The ID of the entity.</p>
    #
    # @option params [String] :entity_name
    #   <p>The name of the entity.</p>
    #
    # @option params [String] :description
    #   <p>The description of the entity.</p>
    #
    # @option params [Hash<String, ComponentUpdateRequest>] :component_updates
    #   <p>An object that maps strings to the component updates in the request. Each string
    #          in the mapping must be unique to this object.</p>
    #
    # @option params [ParentEntityUpdateRequest] :parent_entity_update
    #   <p>An object that describes the update request for a parent entity.</p>
    #
    # @return [Types::UpdateEntityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_entity(
    #     workspace_id: 'workspaceId', # required
    #     entity_id: 'entityId', # required
    #     entity_name: 'entityName',
    #     description: 'description',
    #     component_updates: {
    #       'key' => {
    #         update_type: 'CREATE', # accepts ["CREATE", "UPDATE", "DELETE"]
    #         description: 'description',
    #         component_type_id: 'componentTypeId',
    #         property_updates: {
    #           'key' => {
    #             definition: {
    #               data_type: {
    #                 type: 'RELATIONSHIP', # required - accepts ["RELATIONSHIP", "STRING", "LONG", "BOOLEAN", "INTEGER", "DOUBLE", "LIST", "MAP"]
    #                 allowed_values: [
    #                   {
    #                     boolean_value: false,
    #                     double_value: 1.0,
    #                     integer_value: 1,
    #                     long_value: 1,
    #                     string_value: 'stringValue',
    #                     relationship_value: {
    #                       target_entity_id: 'targetEntityId',
    #                       target_component_name: 'targetComponentName'
    #                     },
    #                     expression: 'expression'
    #                   }
    #                 ],
    #                 unit_of_measure: 'unitOfMeasure',
    #                 relationship: {
    #                   target_component_type_id: 'targetComponentTypeId',
    #                   relationship_type: 'relationshipType'
    #                 }
    #               },
    #               is_required_in_entity: false,
    #               is_external_id: false,
    #               is_stored_externally: false,
    #               is_time_series: false,
    #               configuration: {
    #                 'key' => 'value'
    #               }
    #             },
    #             update_type: 'UPDATE' # accepts ["UPDATE", "DELETE", "CREATE"]
    #           }
    #         }
    #       }
    #     },
    #     parent_entity_update: {
    #       update_type: 'UPDATE', # required - accepts ["UPDATE", "DELETE"]
    #       parent_entity_id: 'parentEntityId'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateEntityOutput
    #   resp.data.update_date_time #=> Time
    #   resp.data.state #=> String, one of ["CREATING", "UPDATING", "DELETING", "ACTIVE", "ERROR"]
    #
    def update_entity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateEntityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateEntityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateEntity
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ConflictException, Errors::ValidationException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::UpdateEntity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateEntity,
        stubs: @stubs,
        params_class: Params::UpdateEntityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_entity
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a scene.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSceneInput}.
    #
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace that contains the scene.</p>
    #
    # @option params [String] :scene_id
    #   <p>The ID of the scene.</p>
    #
    # @option params [String] :content_location
    #   <p>The relative path that specifies the location of the content definition file.</p>
    #
    # @option params [String] :description
    #   <p>The description of this scene.</p>
    #
    # @option params [Array<String>] :capabilities
    #   <p>A list of capabilities that the scene uses to render.</p>
    #
    # @return [Types::UpdateSceneOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_scene(
    #     workspace_id: 'workspaceId', # required
    #     scene_id: 'sceneId', # required
    #     content_location: 'contentLocation',
    #     description: 'description',
    #     capabilities: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSceneOutput
    #   resp.data.update_date_time #=> Time
    #
    def update_scene(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSceneInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSceneInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateScene
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException]),
        data_parser: Parsers::UpdateScene
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateScene,
        stubs: @stubs,
        params_class: Params::UpdateSceneOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_scene
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a workspace.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateWorkspaceInput}.
    #
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace.</p>
    #
    # @option params [String] :description
    #   <p>The description of the workspace.</p>
    #
    # @option params [String] :role
    #   <p>The ARN of the execution role associated with the workspace.</p>
    #
    # @return [Types::UpdateWorkspaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workspace(
    #     workspace_id: 'workspaceId', # required
    #     description: 'description',
    #     role: 'role'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateWorkspaceOutput
    #   resp.data.update_date_time #=> Time
    #
    def update_workspace(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateWorkspaceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateWorkspaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "api.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateWorkspace
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::UpdateWorkspace
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateWorkspace,
        stubs: @stubs,
        params_class: Params::UpdateWorkspaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_workspace
        )
      )
      raise resp.error if resp.error
      resp
    end

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
