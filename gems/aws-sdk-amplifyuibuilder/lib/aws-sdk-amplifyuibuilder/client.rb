# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::AmplifyUIBuilder
  # An API client for AmplifyUIBuilder
  # See {#initialize} for a full list of supported configuration options
  # <p>The Amplify UI Builder API provides a programmatic interface for creating
  #       and configuring user interface (UI) component libraries and themes for use in your Amplify applications. You can then connect these UI components to an application's
  #       backend Amazon Web Services resources.</p>
  #          <p>You can also use the Amplify Studio visual designer to create UI components
  #       and model data for an app. For more information, see <a href="https://docs.amplify.aws/console/adminui/intro">Introduction</a> in the
  #         <i>Amplify Docs</i>.</p>
  #          <p>The Amplify Framework is a comprehensive set of SDKs, libraries, tools, and
  #       documentation for client app development. For more information, see the <a href="https://docs.amplify.aws/">Amplify Framework</a>. For more information about
  #       deploying an Amplify application to Amazon Web Services, see the <a href="https://docs.aws.amazon.com/amplify/latest/userguide/welcome.html">Amplify User Guide</a>.</p>
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
    def initialize(config = AWS::SDK::AmplifyUIBuilder::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a new component for an Amplify app.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateComponentInput}.
    #
    # @option params [String] :app_id
    #   <p>The unique ID of the Amplify app to associate with the component.</p>
    #
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    #
    # @option params [String] :client_token
    #   <p>The unique client token.</p>
    #
    # @option params [CreateComponentData] :component_to_create
    #   <p>Represents the configuration of the component to create.</p>
    #
    # @return [Types::CreateComponentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_component(
    #     app_id: 'appId', # required
    #     environment_name: 'environmentName', # required
    #     client_token: 'clientToken',
    #     component_to_create: {
    #       name: 'name', # required
    #       source_id: 'sourceId',
    #       component_type: 'componentType', # required
    #       properties: {
    #         'key' => {
    #           value: 'value',
    #           binding_properties: {
    #             property: 'property', # required
    #             field: 'field'
    #           },
    #           default_value: 'defaultValue',
    #           model: 'model',
    #           bindings: {
    #             'key' => {
    #               element: 'element', # required
    #               property: 'property' # required
    #             }
    #           },
    #           event: 'event',
    #           user_attribute: 'userAttribute',
    #           condition: {
    #             property: 'property',
    #             field: 'field',
    #             operator: 'operator',
    #             operand: 'operand',
    #             operand_type: 'operandType'
    #           },
    #           configured: false,
    #           type: 'type',
    #           imported_value: 'importedValue',
    #           component_name: 'componentName',
    #           property: 'property'
    #         }
    #       }, # required
    #       children: [
    #         {
    #           component_type: 'componentType', # required
    #           name: 'name', # required
    #           events: {
    #             'key' => {
    #               action: 'action',
    #               parameters: {
    #                 model: 'model',
    #                 state: {
    #                   component_name: 'componentName', # required
    #                   property: 'property', # required
    #                 }
    #               },
    #               binding_event: 'bindingEvent'
    #             }
    #           },
    #           source_id: 'sourceId'
    #         }
    #       ],
    #       variants: [
    #         {
    #           variant_values: {
    #             'key' => 'value'
    #           },
    #           overrides: {
    #             'key' => {
    #               'key' => 'value'
    #             }
    #           }
    #         }
    #       ], # required
    #       binding_properties: {
    #         'key' => {
    #           type: 'type',
    #           binding_properties: {
    #             model: 'model',
    #             field: 'field',
    #             predicates: [
    #               {
    #                 field: 'field',
    #                 operator: 'operator',
    #                 operand: 'operand'
    #               }
    #             ],
    #             user_attribute: 'userAttribute',
    #             bucket: 'bucket',
    #             key: 'key',
    #             default_value: 'defaultValue'
    #           },
    #           default_value: 'defaultValue'
    #         }
    #       }, # required
    #       collection_properties: {
    #         'key' => {
    #           model: 'model', # required
    #           sort: [
    #             {
    #               field: 'field', # required
    #               direction: 'ASC' # required - accepts ["ASC", "DESC"]
    #             }
    #           ],
    #           identifiers: [
    #             'member'
    #           ]
    #         }
    #       },
    #       tags: {
    #         'key' => 'value'
    #       },
    #       schema_version: 'schemaVersion'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateComponentOutput
    #   resp.data.entity #=> Types::Component
    #   resp.data.entity.app_id #=> String
    #   resp.data.entity.environment_name #=> String
    #   resp.data.entity.source_id #=> String
    #   resp.data.entity.id #=> String
    #   resp.data.entity.name #=> String
    #   resp.data.entity.component_type #=> String
    #   resp.data.entity.properties #=> Hash<String, ComponentProperty>
    #   resp.data.entity.properties['key'] #=> Types::ComponentProperty
    #   resp.data.entity.properties['key'].value #=> String
    #   resp.data.entity.properties['key'].binding_properties #=> Types::ComponentPropertyBindingProperties
    #   resp.data.entity.properties['key'].binding_properties.property #=> String
    #   resp.data.entity.properties['key'].binding_properties.field #=> String
    #   resp.data.entity.properties['key'].collection_binding_properties #=> Types::ComponentPropertyBindingProperties
    #   resp.data.entity.properties['key'].default_value #=> String
    #   resp.data.entity.properties['key'].model #=> String
    #   resp.data.entity.properties['key'].bindings #=> Hash<String, FormBindingElement>
    #   resp.data.entity.properties['key'].bindings['key'] #=> Types::FormBindingElement
    #   resp.data.entity.properties['key'].bindings['key'].element #=> String
    #   resp.data.entity.properties['key'].bindings['key'].property #=> String
    #   resp.data.entity.properties['key'].event #=> String
    #   resp.data.entity.properties['key'].user_attribute #=> String
    #   resp.data.entity.properties['key'].concat #=> Array<ComponentProperty>
    #   resp.data.entity.properties['key'].condition #=> Types::ComponentConditionProperty
    #   resp.data.entity.properties['key'].condition.property #=> String
    #   resp.data.entity.properties['key'].condition.field #=> String
    #   resp.data.entity.properties['key'].condition.operator #=> String
    #   resp.data.entity.properties['key'].condition.operand #=> String
    #   resp.data.entity.properties['key'].condition.member_then #=> Types::ComponentProperty
    #   resp.data.entity.properties['key'].condition.else #=> Types::ComponentProperty
    #   resp.data.entity.properties['key'].condition.operand_type #=> String
    #   resp.data.entity.properties['key'].configured #=> Boolean
    #   resp.data.entity.properties['key'].type #=> String
    #   resp.data.entity.properties['key'].imported_value #=> String
    #   resp.data.entity.properties['key'].component_name #=> String
    #   resp.data.entity.properties['key'].property #=> String
    #   resp.data.entity.children #=> Array<ComponentChild>
    #   resp.data.entity.children[0] #=> Types::ComponentChild
    #   resp.data.entity.children[0].component_type #=> String
    #   resp.data.entity.children[0].name #=> String
    #   resp.data.entity.children[0].properties #=> Hash<String, ComponentProperty>
    #   resp.data.entity.children[0].children #=> Array<ComponentChild>
    #   resp.data.entity.children[0].events #=> Hash<String, ComponentEvent>
    #   resp.data.entity.children[0].events['key'] #=> Types::ComponentEvent
    #   resp.data.entity.children[0].events['key'].action #=> String
    #   resp.data.entity.children[0].events['key'].parameters #=> Types::ActionParameters
    #   resp.data.entity.children[0].events['key'].parameters.type #=> Types::ComponentProperty
    #   resp.data.entity.children[0].events['key'].parameters.url #=> Types::ComponentProperty
    #   resp.data.entity.children[0].events['key'].parameters.anchor #=> Types::ComponentProperty
    #   resp.data.entity.children[0].events['key'].parameters.target #=> Types::ComponentProperty
    #   resp.data.entity.children[0].events['key'].parameters.global #=> Types::ComponentProperty
    #   resp.data.entity.children[0].events['key'].parameters.model #=> String
    #   resp.data.entity.children[0].events['key'].parameters.id #=> Types::ComponentProperty
    #   resp.data.entity.children[0].events['key'].parameters.fields #=> Hash<String, ComponentProperty>
    #   resp.data.entity.children[0].events['key'].parameters.state #=> Types::MutationActionSetStateParameter
    #   resp.data.entity.children[0].events['key'].parameters.state.component_name #=> String
    #   resp.data.entity.children[0].events['key'].parameters.state.property #=> String
    #   resp.data.entity.children[0].events['key'].parameters.state.set #=> Types::ComponentProperty
    #   resp.data.entity.children[0].events['key'].binding_event #=> String
    #   resp.data.entity.children[0].source_id #=> String
    #   resp.data.entity.variants #=> Array<ComponentVariant>
    #   resp.data.entity.variants[0] #=> Types::ComponentVariant
    #   resp.data.entity.variants[0].variant_values #=> Hash<String, String>
    #   resp.data.entity.variants[0].variant_values['key'] #=> String
    #   resp.data.entity.variants[0].overrides #=> Hash<String, Hash<String, String>>
    #   resp.data.entity.variants[0].overrides['key'] #=> Hash<String, String>
    #   resp.data.entity.variants[0].overrides['key']['key'] #=> String
    #   resp.data.entity.overrides #=> Hash<String, Hash<String, String>>
    #   resp.data.entity.binding_properties #=> Hash<String, ComponentBindingPropertiesValue>
    #   resp.data.entity.binding_properties['key'] #=> Types::ComponentBindingPropertiesValue
    #   resp.data.entity.binding_properties['key'].type #=> String
    #   resp.data.entity.binding_properties['key'].binding_properties #=> Types::ComponentBindingPropertiesValueProperties
    #   resp.data.entity.binding_properties['key'].binding_properties.model #=> String
    #   resp.data.entity.binding_properties['key'].binding_properties.field #=> String
    #   resp.data.entity.binding_properties['key'].binding_properties.predicates #=> Array<Predicate>
    #   resp.data.entity.binding_properties['key'].binding_properties.predicates[0] #=> Types::Predicate
    #   resp.data.entity.binding_properties['key'].binding_properties.predicates[0].or #=> Array<Predicate>
    #   resp.data.entity.binding_properties['key'].binding_properties.predicates[0].and #=> Array<Predicate>
    #   resp.data.entity.binding_properties['key'].binding_properties.predicates[0].field #=> String
    #   resp.data.entity.binding_properties['key'].binding_properties.predicates[0].operator #=> String
    #   resp.data.entity.binding_properties['key'].binding_properties.predicates[0].operand #=> String
    #   resp.data.entity.binding_properties['key'].binding_properties.user_attribute #=> String
    #   resp.data.entity.binding_properties['key'].binding_properties.bucket #=> String
    #   resp.data.entity.binding_properties['key'].binding_properties.key #=> String
    #   resp.data.entity.binding_properties['key'].binding_properties.default_value #=> String
    #   resp.data.entity.binding_properties['key'].default_value #=> String
    #   resp.data.entity.collection_properties #=> Hash<String, ComponentDataConfiguration>
    #   resp.data.entity.collection_properties['key'] #=> Types::ComponentDataConfiguration
    #   resp.data.entity.collection_properties['key'].model #=> String
    #   resp.data.entity.collection_properties['key'].sort #=> Array<SortProperty>
    #   resp.data.entity.collection_properties['key'].sort[0] #=> Types::SortProperty
    #   resp.data.entity.collection_properties['key'].sort[0].field #=> String
    #   resp.data.entity.collection_properties['key'].sort[0].direction #=> String, one of ["ASC", "DESC"]
    #   resp.data.entity.collection_properties['key'].predicate #=> Types::Predicate
    #   resp.data.entity.collection_properties['key'].identifiers #=> Array<String>
    #   resp.data.entity.collection_properties['key'].identifiers[0] #=> String
    #   resp.data.entity.created_at #=> Time
    #   resp.data.entity.modified_at #=> Time
    #   resp.data.entity.tags #=> Hash<String, String>
    #   resp.data.entity.tags['key'] #=> String
    #   resp.data.entity.events #=> Hash<String, ComponentEvent>
    #   resp.data.entity.schema_version #=> String
    #
    def create_component(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateComponentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateComponentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateComponent
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceConflictException, Errors::ServiceQuotaExceededException, Errors::InvalidParameterException]),
        data_parser: Parsers::CreateComponent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateComponent,
        stubs: @stubs,
        params_class: Params::CreateComponentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_component
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a theme to apply to the components in an Amplify app.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateThemeInput}.
    #
    # @option params [String] :app_id
    #   <p>The unique ID of the Amplify app associated with the theme.</p>
    #
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    #
    # @option params [String] :client_token
    #   <p>The unique client token.</p>
    #
    # @option params [CreateThemeData] :theme_to_create
    #   <p>Represents the configuration of the theme to create.</p>
    #
    # @return [Types::CreateThemeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_theme(
    #     app_id: 'appId', # required
    #     environment_name: 'environmentName', # required
    #     client_token: 'clientToken',
    #     theme_to_create: {
    #       name: 'name', # required
    #       values: [
    #         {
    #           key: 'key',
    #           value: {
    #             value: 'value',
    #           }
    #         }
    #       ], # required
    #       tags: {
    #         'key' => 'value'
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateThemeOutput
    #   resp.data.entity #=> Types::Theme
    #   resp.data.entity.app_id #=> String
    #   resp.data.entity.environment_name #=> String
    #   resp.data.entity.id #=> String
    #   resp.data.entity.name #=> String
    #   resp.data.entity.created_at #=> Time
    #   resp.data.entity.modified_at #=> Time
    #   resp.data.entity.values #=> Array<ThemeValues>
    #   resp.data.entity.values[0] #=> Types::ThemeValues
    #   resp.data.entity.values[0].key #=> String
    #   resp.data.entity.values[0].value #=> Types::ThemeValue
    #   resp.data.entity.values[0].value.value #=> String
    #   resp.data.entity.values[0].value.children #=> Array<ThemeValues>
    #   resp.data.entity.overrides #=> Array<ThemeValues>
    #   resp.data.entity.tags #=> Hash<String, String>
    #   resp.data.entity.tags['key'] #=> String
    #
    def create_theme(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateThemeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateThemeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTheme
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceConflictException, Errors::ServiceQuotaExceededException, Errors::InvalidParameterException]),
        data_parser: Parsers::CreateTheme
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTheme,
        stubs: @stubs,
        params_class: Params::CreateThemeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_theme
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a component from an Amplify app.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteComponentInput}.
    #
    # @option params [String] :app_id
    #   <p>The unique ID of the Amplify app associated with the component to
    #         delete.</p>
    #
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    #
    # @option params [String] :id
    #   <p>The unique ID of the component to delete.</p>
    #
    # @return [Types::DeleteComponentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_component(
    #     app_id: 'appId', # required
    #     environment_name: 'environmentName', # required
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteComponentOutput
    #
    def delete_component(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteComponentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteComponentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteComponent
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::InvalidParameterException]),
        data_parser: Parsers::DeleteComponent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteComponent,
        stubs: @stubs,
        params_class: Params::DeleteComponentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_component
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a theme from an Amplify app.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteThemeInput}.
    #
    # @option params [String] :app_id
    #   <p>The unique ID of the Amplify app associated with the theme to
    #         delete.</p>
    #
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    #
    # @option params [String] :id
    #   <p>The unique ID of the theme to delete.</p>
    #
    # @return [Types::DeleteThemeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_theme(
    #     app_id: 'appId', # required
    #     environment_name: 'environmentName', # required
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteThemeOutput
    #
    def delete_theme(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteThemeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteThemeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTheme
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::InvalidParameterException]),
        data_parser: Parsers::DeleteTheme
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTheme,
        stubs: @stubs,
        params_class: Params::DeleteThemeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_theme
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Exchanges an access code for a token.</p>
    #
    # @param [Hash] params
    #   See {Types::ExchangeCodeForTokenInput}.
    #
    # @option params [String] :provider
    #   <p>The third-party provider for the token. The only valid value is <code>figma</code>.</p>
    #
    # @option params [ExchangeCodeForTokenRequestBody] :request
    #   <p>Describes the configuration of the request.</p>
    #
    # @return [Types::ExchangeCodeForTokenOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.exchange_code_for_token(
    #     provider: 'figma', # required - accepts ["figma"]
    #     request: {
    #       code: 'code', # required
    #       redirect_uri: 'redirectUri' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExchangeCodeForTokenOutput
    #   resp.data.access_token #=> String
    #   resp.data.expires_in #=> Integer
    #   resp.data.refresh_token #=> String
    #
    def exchange_code_for_token(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExchangeCodeForTokenInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExchangeCodeForTokenInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExchangeCodeForToken
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException]),
        data_parser: Parsers::ExchangeCodeForToken
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExchangeCodeForToken,
        stubs: @stubs,
        params_class: Params::ExchangeCodeForTokenOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :exchange_code_for_token
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Exports component configurations to code that is ready to integrate into an Amplify app.</p>
    #
    # @param [Hash] params
    #   See {Types::ExportComponentsInput}.
    #
    # @option params [String] :app_id
    #   <p>The unique ID of the Amplify app to export components to.</p>
    #
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    #
    # @return [Types::ExportComponentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_components(
    #     app_id: 'appId', # required
    #     environment_name: 'environmentName', # required
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExportComponentsOutput
    #   resp.data.entities #=> Array<Component>
    #   resp.data.entities[0] #=> Types::Component
    #   resp.data.entities[0].app_id #=> String
    #   resp.data.entities[0].environment_name #=> String
    #   resp.data.entities[0].source_id #=> String
    #   resp.data.entities[0].id #=> String
    #   resp.data.entities[0].name #=> String
    #   resp.data.entities[0].component_type #=> String
    #   resp.data.entities[0].properties #=> Hash<String, ComponentProperty>
    #   resp.data.entities[0].properties['key'] #=> Types::ComponentProperty
    #   resp.data.entities[0].properties['key'].value #=> String
    #   resp.data.entities[0].properties['key'].binding_properties #=> Types::ComponentPropertyBindingProperties
    #   resp.data.entities[0].properties['key'].binding_properties.property #=> String
    #   resp.data.entities[0].properties['key'].binding_properties.field #=> String
    #   resp.data.entities[0].properties['key'].collection_binding_properties #=> Types::ComponentPropertyBindingProperties
    #   resp.data.entities[0].properties['key'].default_value #=> String
    #   resp.data.entities[0].properties['key'].model #=> String
    #   resp.data.entities[0].properties['key'].bindings #=> Hash<String, FormBindingElement>
    #   resp.data.entities[0].properties['key'].bindings['key'] #=> Types::FormBindingElement
    #   resp.data.entities[0].properties['key'].bindings['key'].element #=> String
    #   resp.data.entities[0].properties['key'].bindings['key'].property #=> String
    #   resp.data.entities[0].properties['key'].event #=> String
    #   resp.data.entities[0].properties['key'].user_attribute #=> String
    #   resp.data.entities[0].properties['key'].concat #=> Array<ComponentProperty>
    #   resp.data.entities[0].properties['key'].condition #=> Types::ComponentConditionProperty
    #   resp.data.entities[0].properties['key'].condition.property #=> String
    #   resp.data.entities[0].properties['key'].condition.field #=> String
    #   resp.data.entities[0].properties['key'].condition.operator #=> String
    #   resp.data.entities[0].properties['key'].condition.operand #=> String
    #   resp.data.entities[0].properties['key'].condition.member_then #=> Types::ComponentProperty
    #   resp.data.entities[0].properties['key'].condition.else #=> Types::ComponentProperty
    #   resp.data.entities[0].properties['key'].condition.operand_type #=> String
    #   resp.data.entities[0].properties['key'].configured #=> Boolean
    #   resp.data.entities[0].properties['key'].type #=> String
    #   resp.data.entities[0].properties['key'].imported_value #=> String
    #   resp.data.entities[0].properties['key'].component_name #=> String
    #   resp.data.entities[0].properties['key'].property #=> String
    #   resp.data.entities[0].children #=> Array<ComponentChild>
    #   resp.data.entities[0].children[0] #=> Types::ComponentChild
    #   resp.data.entities[0].children[0].component_type #=> String
    #   resp.data.entities[0].children[0].name #=> String
    #   resp.data.entities[0].children[0].properties #=> Hash<String, ComponentProperty>
    #   resp.data.entities[0].children[0].children #=> Array<ComponentChild>
    #   resp.data.entities[0].children[0].events #=> Hash<String, ComponentEvent>
    #   resp.data.entities[0].children[0].events['key'] #=> Types::ComponentEvent
    #   resp.data.entities[0].children[0].events['key'].action #=> String
    #   resp.data.entities[0].children[0].events['key'].parameters #=> Types::ActionParameters
    #   resp.data.entities[0].children[0].events['key'].parameters.type #=> Types::ComponentProperty
    #   resp.data.entities[0].children[0].events['key'].parameters.url #=> Types::ComponentProperty
    #   resp.data.entities[0].children[0].events['key'].parameters.anchor #=> Types::ComponentProperty
    #   resp.data.entities[0].children[0].events['key'].parameters.target #=> Types::ComponentProperty
    #   resp.data.entities[0].children[0].events['key'].parameters.global #=> Types::ComponentProperty
    #   resp.data.entities[0].children[0].events['key'].parameters.model #=> String
    #   resp.data.entities[0].children[0].events['key'].parameters.id #=> Types::ComponentProperty
    #   resp.data.entities[0].children[0].events['key'].parameters.fields #=> Hash<String, ComponentProperty>
    #   resp.data.entities[0].children[0].events['key'].parameters.state #=> Types::MutationActionSetStateParameter
    #   resp.data.entities[0].children[0].events['key'].parameters.state.component_name #=> String
    #   resp.data.entities[0].children[0].events['key'].parameters.state.property #=> String
    #   resp.data.entities[0].children[0].events['key'].parameters.state.set #=> Types::ComponentProperty
    #   resp.data.entities[0].children[0].events['key'].binding_event #=> String
    #   resp.data.entities[0].children[0].source_id #=> String
    #   resp.data.entities[0].variants #=> Array<ComponentVariant>
    #   resp.data.entities[0].variants[0] #=> Types::ComponentVariant
    #   resp.data.entities[0].variants[0].variant_values #=> Hash<String, String>
    #   resp.data.entities[0].variants[0].variant_values['key'] #=> String
    #   resp.data.entities[0].variants[0].overrides #=> Hash<String, Hash<String, String>>
    #   resp.data.entities[0].variants[0].overrides['key'] #=> Hash<String, String>
    #   resp.data.entities[0].variants[0].overrides['key']['key'] #=> String
    #   resp.data.entities[0].overrides #=> Hash<String, Hash<String, String>>
    #   resp.data.entities[0].binding_properties #=> Hash<String, ComponentBindingPropertiesValue>
    #   resp.data.entities[0].binding_properties['key'] #=> Types::ComponentBindingPropertiesValue
    #   resp.data.entities[0].binding_properties['key'].type #=> String
    #   resp.data.entities[0].binding_properties['key'].binding_properties #=> Types::ComponentBindingPropertiesValueProperties
    #   resp.data.entities[0].binding_properties['key'].binding_properties.model #=> String
    #   resp.data.entities[0].binding_properties['key'].binding_properties.field #=> String
    #   resp.data.entities[0].binding_properties['key'].binding_properties.predicates #=> Array<Predicate>
    #   resp.data.entities[0].binding_properties['key'].binding_properties.predicates[0] #=> Types::Predicate
    #   resp.data.entities[0].binding_properties['key'].binding_properties.predicates[0].or #=> Array<Predicate>
    #   resp.data.entities[0].binding_properties['key'].binding_properties.predicates[0].and #=> Array<Predicate>
    #   resp.data.entities[0].binding_properties['key'].binding_properties.predicates[0].field #=> String
    #   resp.data.entities[0].binding_properties['key'].binding_properties.predicates[0].operator #=> String
    #   resp.data.entities[0].binding_properties['key'].binding_properties.predicates[0].operand #=> String
    #   resp.data.entities[0].binding_properties['key'].binding_properties.user_attribute #=> String
    #   resp.data.entities[0].binding_properties['key'].binding_properties.bucket #=> String
    #   resp.data.entities[0].binding_properties['key'].binding_properties.key #=> String
    #   resp.data.entities[0].binding_properties['key'].binding_properties.default_value #=> String
    #   resp.data.entities[0].binding_properties['key'].default_value #=> String
    #   resp.data.entities[0].collection_properties #=> Hash<String, ComponentDataConfiguration>
    #   resp.data.entities[0].collection_properties['key'] #=> Types::ComponentDataConfiguration
    #   resp.data.entities[0].collection_properties['key'].model #=> String
    #   resp.data.entities[0].collection_properties['key'].sort #=> Array<SortProperty>
    #   resp.data.entities[0].collection_properties['key'].sort[0] #=> Types::SortProperty
    #   resp.data.entities[0].collection_properties['key'].sort[0].field #=> String
    #   resp.data.entities[0].collection_properties['key'].sort[0].direction #=> String, one of ["ASC", "DESC"]
    #   resp.data.entities[0].collection_properties['key'].predicate #=> Types::Predicate
    #   resp.data.entities[0].collection_properties['key'].identifiers #=> Array<String>
    #   resp.data.entities[0].collection_properties['key'].identifiers[0] #=> String
    #   resp.data.entities[0].created_at #=> Time
    #   resp.data.entities[0].modified_at #=> Time
    #   resp.data.entities[0].tags #=> Hash<String, String>
    #   resp.data.entities[0].tags['key'] #=> String
    #   resp.data.entities[0].events #=> Hash<String, ComponentEvent>
    #   resp.data.entities[0].schema_version #=> String
    #   resp.data.next_token #=> String
    #
    def export_components(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExportComponentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExportComponentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExportComponents
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException]),
        data_parser: Parsers::ExportComponents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExportComponents,
        stubs: @stubs,
        params_class: Params::ExportComponentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :export_components
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Exports theme configurations to code that is ready to integrate into an Amplify app.</p>
    #
    # @param [Hash] params
    #   See {Types::ExportThemesInput}.
    #
    # @option params [String] :app_id
    #   <p>The unique ID of the Amplify app to export the themes to.</p>
    #
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is part of the Amplify app.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    #
    # @return [Types::ExportThemesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_themes(
    #     app_id: 'appId', # required
    #     environment_name: 'environmentName', # required
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExportThemesOutput
    #   resp.data.entities #=> Array<Theme>
    #   resp.data.entities[0] #=> Types::Theme
    #   resp.data.entities[0].app_id #=> String
    #   resp.data.entities[0].environment_name #=> String
    #   resp.data.entities[0].id #=> String
    #   resp.data.entities[0].name #=> String
    #   resp.data.entities[0].created_at #=> Time
    #   resp.data.entities[0].modified_at #=> Time
    #   resp.data.entities[0].values #=> Array<ThemeValues>
    #   resp.data.entities[0].values[0] #=> Types::ThemeValues
    #   resp.data.entities[0].values[0].key #=> String
    #   resp.data.entities[0].values[0].value #=> Types::ThemeValue
    #   resp.data.entities[0].values[0].value.value #=> String
    #   resp.data.entities[0].values[0].value.children #=> Array<ThemeValues>
    #   resp.data.entities[0].overrides #=> Array<ThemeValues>
    #   resp.data.entities[0].tags #=> Hash<String, String>
    #   resp.data.entities[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def export_themes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExportThemesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExportThemesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExportThemes
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException]),
        data_parser: Parsers::ExportThemes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExportThemes,
        stubs: @stubs,
        params_class: Params::ExportThemesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :export_themes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an existing component for an Amplify app.</p>
    #
    # @param [Hash] params
    #   See {Types::GetComponentInput}.
    #
    # @option params [String] :app_id
    #   <p>The unique ID of the Amplify app.</p>
    #
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is part of the Amplify app.</p>
    #
    # @option params [String] :id
    #   <p>The unique ID of the component.</p>
    #
    # @return [Types::GetComponentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_component(
    #     app_id: 'appId', # required
    #     environment_name: 'environmentName', # required
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetComponentOutput
    #   resp.data.component #=> Types::Component
    #   resp.data.component.app_id #=> String
    #   resp.data.component.environment_name #=> String
    #   resp.data.component.source_id #=> String
    #   resp.data.component.id #=> String
    #   resp.data.component.name #=> String
    #   resp.data.component.component_type #=> String
    #   resp.data.component.properties #=> Hash<String, ComponentProperty>
    #   resp.data.component.properties['key'] #=> Types::ComponentProperty
    #   resp.data.component.properties['key'].value #=> String
    #   resp.data.component.properties['key'].binding_properties #=> Types::ComponentPropertyBindingProperties
    #   resp.data.component.properties['key'].binding_properties.property #=> String
    #   resp.data.component.properties['key'].binding_properties.field #=> String
    #   resp.data.component.properties['key'].collection_binding_properties #=> Types::ComponentPropertyBindingProperties
    #   resp.data.component.properties['key'].default_value #=> String
    #   resp.data.component.properties['key'].model #=> String
    #   resp.data.component.properties['key'].bindings #=> Hash<String, FormBindingElement>
    #   resp.data.component.properties['key'].bindings['key'] #=> Types::FormBindingElement
    #   resp.data.component.properties['key'].bindings['key'].element #=> String
    #   resp.data.component.properties['key'].bindings['key'].property #=> String
    #   resp.data.component.properties['key'].event #=> String
    #   resp.data.component.properties['key'].user_attribute #=> String
    #   resp.data.component.properties['key'].concat #=> Array<ComponentProperty>
    #   resp.data.component.properties['key'].condition #=> Types::ComponentConditionProperty
    #   resp.data.component.properties['key'].condition.property #=> String
    #   resp.data.component.properties['key'].condition.field #=> String
    #   resp.data.component.properties['key'].condition.operator #=> String
    #   resp.data.component.properties['key'].condition.operand #=> String
    #   resp.data.component.properties['key'].condition.member_then #=> Types::ComponentProperty
    #   resp.data.component.properties['key'].condition.else #=> Types::ComponentProperty
    #   resp.data.component.properties['key'].condition.operand_type #=> String
    #   resp.data.component.properties['key'].configured #=> Boolean
    #   resp.data.component.properties['key'].type #=> String
    #   resp.data.component.properties['key'].imported_value #=> String
    #   resp.data.component.properties['key'].component_name #=> String
    #   resp.data.component.properties['key'].property #=> String
    #   resp.data.component.children #=> Array<ComponentChild>
    #   resp.data.component.children[0] #=> Types::ComponentChild
    #   resp.data.component.children[0].component_type #=> String
    #   resp.data.component.children[0].name #=> String
    #   resp.data.component.children[0].properties #=> Hash<String, ComponentProperty>
    #   resp.data.component.children[0].children #=> Array<ComponentChild>
    #   resp.data.component.children[0].events #=> Hash<String, ComponentEvent>
    #   resp.data.component.children[0].events['key'] #=> Types::ComponentEvent
    #   resp.data.component.children[0].events['key'].action #=> String
    #   resp.data.component.children[0].events['key'].parameters #=> Types::ActionParameters
    #   resp.data.component.children[0].events['key'].parameters.type #=> Types::ComponentProperty
    #   resp.data.component.children[0].events['key'].parameters.url #=> Types::ComponentProperty
    #   resp.data.component.children[0].events['key'].parameters.anchor #=> Types::ComponentProperty
    #   resp.data.component.children[0].events['key'].parameters.target #=> Types::ComponentProperty
    #   resp.data.component.children[0].events['key'].parameters.global #=> Types::ComponentProperty
    #   resp.data.component.children[0].events['key'].parameters.model #=> String
    #   resp.data.component.children[0].events['key'].parameters.id #=> Types::ComponentProperty
    #   resp.data.component.children[0].events['key'].parameters.fields #=> Hash<String, ComponentProperty>
    #   resp.data.component.children[0].events['key'].parameters.state #=> Types::MutationActionSetStateParameter
    #   resp.data.component.children[0].events['key'].parameters.state.component_name #=> String
    #   resp.data.component.children[0].events['key'].parameters.state.property #=> String
    #   resp.data.component.children[0].events['key'].parameters.state.set #=> Types::ComponentProperty
    #   resp.data.component.children[0].events['key'].binding_event #=> String
    #   resp.data.component.children[0].source_id #=> String
    #   resp.data.component.variants #=> Array<ComponentVariant>
    #   resp.data.component.variants[0] #=> Types::ComponentVariant
    #   resp.data.component.variants[0].variant_values #=> Hash<String, String>
    #   resp.data.component.variants[0].variant_values['key'] #=> String
    #   resp.data.component.variants[0].overrides #=> Hash<String, Hash<String, String>>
    #   resp.data.component.variants[0].overrides['key'] #=> Hash<String, String>
    #   resp.data.component.variants[0].overrides['key']['key'] #=> String
    #   resp.data.component.overrides #=> Hash<String, Hash<String, String>>
    #   resp.data.component.binding_properties #=> Hash<String, ComponentBindingPropertiesValue>
    #   resp.data.component.binding_properties['key'] #=> Types::ComponentBindingPropertiesValue
    #   resp.data.component.binding_properties['key'].type #=> String
    #   resp.data.component.binding_properties['key'].binding_properties #=> Types::ComponentBindingPropertiesValueProperties
    #   resp.data.component.binding_properties['key'].binding_properties.model #=> String
    #   resp.data.component.binding_properties['key'].binding_properties.field #=> String
    #   resp.data.component.binding_properties['key'].binding_properties.predicates #=> Array<Predicate>
    #   resp.data.component.binding_properties['key'].binding_properties.predicates[0] #=> Types::Predicate
    #   resp.data.component.binding_properties['key'].binding_properties.predicates[0].or #=> Array<Predicate>
    #   resp.data.component.binding_properties['key'].binding_properties.predicates[0].and #=> Array<Predicate>
    #   resp.data.component.binding_properties['key'].binding_properties.predicates[0].field #=> String
    #   resp.data.component.binding_properties['key'].binding_properties.predicates[0].operator #=> String
    #   resp.data.component.binding_properties['key'].binding_properties.predicates[0].operand #=> String
    #   resp.data.component.binding_properties['key'].binding_properties.user_attribute #=> String
    #   resp.data.component.binding_properties['key'].binding_properties.bucket #=> String
    #   resp.data.component.binding_properties['key'].binding_properties.key #=> String
    #   resp.data.component.binding_properties['key'].binding_properties.default_value #=> String
    #   resp.data.component.binding_properties['key'].default_value #=> String
    #   resp.data.component.collection_properties #=> Hash<String, ComponentDataConfiguration>
    #   resp.data.component.collection_properties['key'] #=> Types::ComponentDataConfiguration
    #   resp.data.component.collection_properties['key'].model #=> String
    #   resp.data.component.collection_properties['key'].sort #=> Array<SortProperty>
    #   resp.data.component.collection_properties['key'].sort[0] #=> Types::SortProperty
    #   resp.data.component.collection_properties['key'].sort[0].field #=> String
    #   resp.data.component.collection_properties['key'].sort[0].direction #=> String, one of ["ASC", "DESC"]
    #   resp.data.component.collection_properties['key'].predicate #=> Types::Predicate
    #   resp.data.component.collection_properties['key'].identifiers #=> Array<String>
    #   resp.data.component.collection_properties['key'].identifiers[0] #=> String
    #   resp.data.component.created_at #=> Time
    #   resp.data.component.modified_at #=> Time
    #   resp.data.component.tags #=> Hash<String, String>
    #   resp.data.component.tags['key'] #=> String
    #   resp.data.component.events #=> Hash<String, ComponentEvent>
    #   resp.data.component.schema_version #=> String
    #
    def get_component(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetComponentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetComponentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetComponent
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::InvalidParameterException]),
        data_parser: Parsers::GetComponent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetComponent,
        stubs: @stubs,
        params_class: Params::GetComponentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_component
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an existing theme for an Amplify app.</p>
    #
    # @param [Hash] params
    #   See {Types::GetThemeInput}.
    #
    # @option params [String] :app_id
    #   <p>The unique ID of the Amplify app.</p>
    #
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is part of the Amplify app.</p>
    #
    # @option params [String] :id
    #   <p>The unique ID for the theme.</p>
    #
    # @return [Types::GetThemeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_theme(
    #     app_id: 'appId', # required
    #     environment_name: 'environmentName', # required
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetThemeOutput
    #   resp.data.theme #=> Types::Theme
    #   resp.data.theme.app_id #=> String
    #   resp.data.theme.environment_name #=> String
    #   resp.data.theme.id #=> String
    #   resp.data.theme.name #=> String
    #   resp.data.theme.created_at #=> Time
    #   resp.data.theme.modified_at #=> Time
    #   resp.data.theme.values #=> Array<ThemeValues>
    #   resp.data.theme.values[0] #=> Types::ThemeValues
    #   resp.data.theme.values[0].key #=> String
    #   resp.data.theme.values[0].value #=> Types::ThemeValue
    #   resp.data.theme.values[0].value.value #=> String
    #   resp.data.theme.values[0].value.children #=> Array<ThemeValues>
    #   resp.data.theme.overrides #=> Array<ThemeValues>
    #   resp.data.theme.tags #=> Hash<String, String>
    #   resp.data.theme.tags['key'] #=> String
    #
    def get_theme(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetThemeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetThemeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTheme
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::InvalidParameterException]),
        data_parser: Parsers::GetTheme
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTheme,
        stubs: @stubs,
        params_class: Params::GetThemeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_theme
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of components for a specified Amplify app and backend
    #       environment.</p>
    #
    # @param [Hash] params
    #   See {Types::ListComponentsInput}.
    #
    # @option params [String] :app_id
    #   <p>The unique ID for the Amplify app.</p>
    #
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of components to retrieve.</p>
    #
    # @return [Types::ListComponentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_components(
    #     app_id: 'appId', # required
    #     environment_name: 'environmentName', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListComponentsOutput
    #   resp.data.entities #=> Array<ComponentSummary>
    #   resp.data.entities[0] #=> Types::ComponentSummary
    #   resp.data.entities[0].app_id #=> String
    #   resp.data.entities[0].environment_name #=> String
    #   resp.data.entities[0].id #=> String
    #   resp.data.entities[0].name #=> String
    #   resp.data.entities[0].component_type #=> String
    #   resp.data.next_token #=> String
    #
    def list_components(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListComponentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListComponentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListComponents
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException]),
        data_parser: Parsers::ListComponents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListComponents,
        stubs: @stubs,
        params_class: Params::ListComponentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_components
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of themes for a specified Amplify app and backend
    #       environment.</p>
    #
    # @param [Hash] params
    #   See {Types::ListThemesInput}.
    #
    # @option params [String] :app_id
    #   <p>The unique ID for the Amplify app.</p>
    #
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is a part of the Amplify
    #         app.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of theme results to return in the response.</p>
    #
    # @return [Types::ListThemesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_themes(
    #     app_id: 'appId', # required
    #     environment_name: 'environmentName', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListThemesOutput
    #   resp.data.entities #=> Array<ThemeSummary>
    #   resp.data.entities[0] #=> Types::ThemeSummary
    #   resp.data.entities[0].app_id #=> String
    #   resp.data.entities[0].environment_name #=> String
    #   resp.data.entities[0].id #=> String
    #   resp.data.entities[0].name #=> String
    #   resp.data.next_token #=> String
    #
    def list_themes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListThemesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListThemesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListThemes
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidParameterException]),
        data_parser: Parsers::ListThemes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListThemes,
        stubs: @stubs,
        params_class: Params::ListThemesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_themes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Refreshes a previously issued access token that might have expired.</p>
    #
    # @param [Hash] params
    #   See {Types::RefreshTokenInput}.
    #
    # @option params [String] :provider
    #   <p>The third-party provider for the token. The only valid value is <code>figma</code>.</p>
    #
    # @option params [RefreshTokenRequestBody] :refresh_token_body
    #   <p>Information about the refresh token request.</p>
    #
    # @return [Types::RefreshTokenOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.refresh_token(
    #     provider: 'figma', # required - accepts ["figma"]
    #     refresh_token_body: {
    #       token: 'token' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RefreshTokenOutput
    #   resp.data.access_token #=> String
    #   resp.data.expires_in #=> Integer
    #
    def refresh_token(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RefreshTokenInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RefreshTokenInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RefreshToken
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException]),
        data_parser: Parsers::RefreshToken
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RefreshToken,
        stubs: @stubs,
        params_class: Params::RefreshTokenOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :refresh_token
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing component.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateComponentInput}.
    #
    # @option params [String] :app_id
    #   <p>The unique ID for the Amplify app.</p>
    #
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is part of the Amplify app.</p>
    #
    # @option params [String] :id
    #   <p>The unique ID for the component.</p>
    #
    # @option params [String] :client_token
    #   <p>The unique client token.</p>
    #
    # @option params [UpdateComponentData] :updated_component
    #   <p>The configuration of the updated component.</p>
    #
    # @return [Types::UpdateComponentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_component(
    #     app_id: 'appId', # required
    #     environment_name: 'environmentName', # required
    #     id: 'id', # required
    #     client_token: 'clientToken',
    #     updated_component: {
    #       id: 'id',
    #       name: 'name',
    #       source_id: 'sourceId',
    #       component_type: 'componentType',
    #       properties: {
    #         'key' => {
    #           value: 'value',
    #           binding_properties: {
    #             property: 'property', # required
    #             field: 'field'
    #           },
    #           default_value: 'defaultValue',
    #           model: 'model',
    #           bindings: {
    #             'key' => {
    #               element: 'element', # required
    #               property: 'property' # required
    #             }
    #           },
    #           event: 'event',
    #           user_attribute: 'userAttribute',
    #           condition: {
    #             property: 'property',
    #             field: 'field',
    #             operator: 'operator',
    #             operand: 'operand',
    #             operand_type: 'operandType'
    #           },
    #           configured: false,
    #           type: 'type',
    #           imported_value: 'importedValue',
    #           component_name: 'componentName',
    #           property: 'property'
    #         }
    #       },
    #       children: [
    #         {
    #           component_type: 'componentType', # required
    #           name: 'name', # required
    #           events: {
    #             'key' => {
    #               action: 'action',
    #               parameters: {
    #                 model: 'model',
    #                 state: {
    #                   component_name: 'componentName', # required
    #                   property: 'property', # required
    #                 }
    #               },
    #               binding_event: 'bindingEvent'
    #             }
    #           },
    #           source_id: 'sourceId'
    #         }
    #       ],
    #       variants: [
    #         {
    #           variant_values: {
    #             'key' => 'value'
    #           },
    #           overrides: {
    #             'key' => {
    #               'key' => 'value'
    #             }
    #           }
    #         }
    #       ],
    #       binding_properties: {
    #         'key' => {
    #           type: 'type',
    #           binding_properties: {
    #             model: 'model',
    #             field: 'field',
    #             predicates: [
    #               {
    #                 field: 'field',
    #                 operator: 'operator',
    #                 operand: 'operand'
    #               }
    #             ],
    #             user_attribute: 'userAttribute',
    #             bucket: 'bucket',
    #             key: 'key',
    #             default_value: 'defaultValue'
    #           },
    #           default_value: 'defaultValue'
    #         }
    #       },
    #       collection_properties: {
    #         'key' => {
    #           model: 'model', # required
    #           sort: [
    #             {
    #               field: 'field', # required
    #               direction: 'ASC' # required - accepts ["ASC", "DESC"]
    #             }
    #           ],
    #           identifiers: [
    #             'member'
    #           ]
    #         }
    #       },
    #       schema_version: 'schemaVersion'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateComponentOutput
    #   resp.data.entity #=> Types::Component
    #   resp.data.entity.app_id #=> String
    #   resp.data.entity.environment_name #=> String
    #   resp.data.entity.source_id #=> String
    #   resp.data.entity.id #=> String
    #   resp.data.entity.name #=> String
    #   resp.data.entity.component_type #=> String
    #   resp.data.entity.properties #=> Hash<String, ComponentProperty>
    #   resp.data.entity.properties['key'] #=> Types::ComponentProperty
    #   resp.data.entity.properties['key'].value #=> String
    #   resp.data.entity.properties['key'].binding_properties #=> Types::ComponentPropertyBindingProperties
    #   resp.data.entity.properties['key'].binding_properties.property #=> String
    #   resp.data.entity.properties['key'].binding_properties.field #=> String
    #   resp.data.entity.properties['key'].collection_binding_properties #=> Types::ComponentPropertyBindingProperties
    #   resp.data.entity.properties['key'].default_value #=> String
    #   resp.data.entity.properties['key'].model #=> String
    #   resp.data.entity.properties['key'].bindings #=> Hash<String, FormBindingElement>
    #   resp.data.entity.properties['key'].bindings['key'] #=> Types::FormBindingElement
    #   resp.data.entity.properties['key'].bindings['key'].element #=> String
    #   resp.data.entity.properties['key'].bindings['key'].property #=> String
    #   resp.data.entity.properties['key'].event #=> String
    #   resp.data.entity.properties['key'].user_attribute #=> String
    #   resp.data.entity.properties['key'].concat #=> Array<ComponentProperty>
    #   resp.data.entity.properties['key'].condition #=> Types::ComponentConditionProperty
    #   resp.data.entity.properties['key'].condition.property #=> String
    #   resp.data.entity.properties['key'].condition.field #=> String
    #   resp.data.entity.properties['key'].condition.operator #=> String
    #   resp.data.entity.properties['key'].condition.operand #=> String
    #   resp.data.entity.properties['key'].condition.member_then #=> Types::ComponentProperty
    #   resp.data.entity.properties['key'].condition.else #=> Types::ComponentProperty
    #   resp.data.entity.properties['key'].condition.operand_type #=> String
    #   resp.data.entity.properties['key'].configured #=> Boolean
    #   resp.data.entity.properties['key'].type #=> String
    #   resp.data.entity.properties['key'].imported_value #=> String
    #   resp.data.entity.properties['key'].component_name #=> String
    #   resp.data.entity.properties['key'].property #=> String
    #   resp.data.entity.children #=> Array<ComponentChild>
    #   resp.data.entity.children[0] #=> Types::ComponentChild
    #   resp.data.entity.children[0].component_type #=> String
    #   resp.data.entity.children[0].name #=> String
    #   resp.data.entity.children[0].properties #=> Hash<String, ComponentProperty>
    #   resp.data.entity.children[0].children #=> Array<ComponentChild>
    #   resp.data.entity.children[0].events #=> Hash<String, ComponentEvent>
    #   resp.data.entity.children[0].events['key'] #=> Types::ComponentEvent
    #   resp.data.entity.children[0].events['key'].action #=> String
    #   resp.data.entity.children[0].events['key'].parameters #=> Types::ActionParameters
    #   resp.data.entity.children[0].events['key'].parameters.type #=> Types::ComponentProperty
    #   resp.data.entity.children[0].events['key'].parameters.url #=> Types::ComponentProperty
    #   resp.data.entity.children[0].events['key'].parameters.anchor #=> Types::ComponentProperty
    #   resp.data.entity.children[0].events['key'].parameters.target #=> Types::ComponentProperty
    #   resp.data.entity.children[0].events['key'].parameters.global #=> Types::ComponentProperty
    #   resp.data.entity.children[0].events['key'].parameters.model #=> String
    #   resp.data.entity.children[0].events['key'].parameters.id #=> Types::ComponentProperty
    #   resp.data.entity.children[0].events['key'].parameters.fields #=> Hash<String, ComponentProperty>
    #   resp.data.entity.children[0].events['key'].parameters.state #=> Types::MutationActionSetStateParameter
    #   resp.data.entity.children[0].events['key'].parameters.state.component_name #=> String
    #   resp.data.entity.children[0].events['key'].parameters.state.property #=> String
    #   resp.data.entity.children[0].events['key'].parameters.state.set #=> Types::ComponentProperty
    #   resp.data.entity.children[0].events['key'].binding_event #=> String
    #   resp.data.entity.children[0].source_id #=> String
    #   resp.data.entity.variants #=> Array<ComponentVariant>
    #   resp.data.entity.variants[0] #=> Types::ComponentVariant
    #   resp.data.entity.variants[0].variant_values #=> Hash<String, String>
    #   resp.data.entity.variants[0].variant_values['key'] #=> String
    #   resp.data.entity.variants[0].overrides #=> Hash<String, Hash<String, String>>
    #   resp.data.entity.variants[0].overrides['key'] #=> Hash<String, String>
    #   resp.data.entity.variants[0].overrides['key']['key'] #=> String
    #   resp.data.entity.overrides #=> Hash<String, Hash<String, String>>
    #   resp.data.entity.binding_properties #=> Hash<String, ComponentBindingPropertiesValue>
    #   resp.data.entity.binding_properties['key'] #=> Types::ComponentBindingPropertiesValue
    #   resp.data.entity.binding_properties['key'].type #=> String
    #   resp.data.entity.binding_properties['key'].binding_properties #=> Types::ComponentBindingPropertiesValueProperties
    #   resp.data.entity.binding_properties['key'].binding_properties.model #=> String
    #   resp.data.entity.binding_properties['key'].binding_properties.field #=> String
    #   resp.data.entity.binding_properties['key'].binding_properties.predicates #=> Array<Predicate>
    #   resp.data.entity.binding_properties['key'].binding_properties.predicates[0] #=> Types::Predicate
    #   resp.data.entity.binding_properties['key'].binding_properties.predicates[0].or #=> Array<Predicate>
    #   resp.data.entity.binding_properties['key'].binding_properties.predicates[0].and #=> Array<Predicate>
    #   resp.data.entity.binding_properties['key'].binding_properties.predicates[0].field #=> String
    #   resp.data.entity.binding_properties['key'].binding_properties.predicates[0].operator #=> String
    #   resp.data.entity.binding_properties['key'].binding_properties.predicates[0].operand #=> String
    #   resp.data.entity.binding_properties['key'].binding_properties.user_attribute #=> String
    #   resp.data.entity.binding_properties['key'].binding_properties.bucket #=> String
    #   resp.data.entity.binding_properties['key'].binding_properties.key #=> String
    #   resp.data.entity.binding_properties['key'].binding_properties.default_value #=> String
    #   resp.data.entity.binding_properties['key'].default_value #=> String
    #   resp.data.entity.collection_properties #=> Hash<String, ComponentDataConfiguration>
    #   resp.data.entity.collection_properties['key'] #=> Types::ComponentDataConfiguration
    #   resp.data.entity.collection_properties['key'].model #=> String
    #   resp.data.entity.collection_properties['key'].sort #=> Array<SortProperty>
    #   resp.data.entity.collection_properties['key'].sort[0] #=> Types::SortProperty
    #   resp.data.entity.collection_properties['key'].sort[0].field #=> String
    #   resp.data.entity.collection_properties['key'].sort[0].direction #=> String, one of ["ASC", "DESC"]
    #   resp.data.entity.collection_properties['key'].predicate #=> Types::Predicate
    #   resp.data.entity.collection_properties['key'].identifiers #=> Array<String>
    #   resp.data.entity.collection_properties['key'].identifiers[0] #=> String
    #   resp.data.entity.created_at #=> Time
    #   resp.data.entity.modified_at #=> Time
    #   resp.data.entity.tags #=> Hash<String, String>
    #   resp.data.entity.tags['key'] #=> String
    #   resp.data.entity.events #=> Hash<String, ComponentEvent>
    #   resp.data.entity.schema_version #=> String
    #
    def update_component(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateComponentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateComponentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateComponent
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceConflictException, Errors::InvalidParameterException]),
        data_parser: Parsers::UpdateComponent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateComponent,
        stubs: @stubs,
        params_class: Params::UpdateComponentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_component
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing theme.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateThemeInput}.
    #
    # @option params [String] :app_id
    #   <p>The unique ID for the Amplify app.</p>
    #
    # @option params [String] :environment_name
    #   <p>The name of the backend environment that is part of the Amplify app.</p>
    #
    # @option params [String] :id
    #   <p>The unique ID for the theme.</p>
    #
    # @option params [String] :client_token
    #   <p>The unique client token.</p>
    #
    # @option params [UpdateThemeData] :updated_theme
    #   <p>The configuration of the updated theme.</p>
    #
    # @return [Types::UpdateThemeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_theme(
    #     app_id: 'appId', # required
    #     environment_name: 'environmentName', # required
    #     id: 'id', # required
    #     client_token: 'clientToken',
    #     updated_theme: {
    #       id: 'id',
    #       name: 'name',
    #       values: [
    #         {
    #           key: 'key',
    #           value: {
    #             value: 'value',
    #           }
    #         }
    #       ], # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateThemeOutput
    #   resp.data.entity #=> Types::Theme
    #   resp.data.entity.app_id #=> String
    #   resp.data.entity.environment_name #=> String
    #   resp.data.entity.id #=> String
    #   resp.data.entity.name #=> String
    #   resp.data.entity.created_at #=> Time
    #   resp.data.entity.modified_at #=> Time
    #   resp.data.entity.values #=> Array<ThemeValues>
    #   resp.data.entity.values[0] #=> Types::ThemeValues
    #   resp.data.entity.values[0].key #=> String
    #   resp.data.entity.values[0].value #=> Types::ThemeValue
    #   resp.data.entity.values[0].value.value #=> String
    #   resp.data.entity.values[0].value.children #=> Array<ThemeValues>
    #   resp.data.entity.overrides #=> Array<ThemeValues>
    #   resp.data.entity.tags #=> Hash<String, String>
    #   resp.data.entity.tags['key'] #=> String
    #
    def update_theme(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateThemeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateThemeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTheme
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceConflictException, Errors::InvalidParameterException]),
        data_parser: Parsers::UpdateTheme
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateTheme,
        stubs: @stubs,
        params_class: Params::UpdateThemeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_theme
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
