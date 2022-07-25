# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::GameSparks
  # An API client for GameSparks
  # See {#initialize} for a full list of supported configuration options
  # <p/>
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
    def initialize(config = AWS::SDK::GameSparks::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>
    #       Creates a new game with an empty configuration.
    #       After creating your game, you can update the configuration using <code>UpdateGameConfiguration</code> or <code>ImportGameConfiguration</code>.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::CreateGameInput}.
    #
    # @option params [String] :game_name
    #   <p>The name of the game.</p>
    #
    # @option params [String] :description
    #   <p>The description of the game.</p>
    #
    # @option params [String] :client_token
    #   <p>
    #         A client-defined token.
    #         With an active client token in the request, this action is idempotent.
    #         </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The list of tags to apply to the game.</p>
    #
    # @return [Types::CreateGameOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_game(
    #     game_name: 'GameName', # required
    #     description: 'Description',
    #     client_token: 'ClientToken',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateGameOutput
    #   resp.data.game #=> Types::GameDetails
    #   resp.data.game.name #=> String
    #   resp.data.game.arn #=> String
    #   resp.data.game.description #=> String
    #   resp.data.game.created #=> Time
    #   resp.data.game.last_updated #=> Time
    #   resp.data.game.state #=> String, one of ["ACTIVE", "DELETING"]
    #   resp.data.game.enable_termination_protection #=> Boolean
    #   resp.data.game.tags #=> Hash<String, String>
    #   resp.data.game.tags['key'] #=> String
    #
    def create_game(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateGameInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateGameInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateGame
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateGame
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateGame,
        stubs: @stubs,
        params_class: Params::CreateGameOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_game
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a snapshot of the game configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSnapshotInput}.
    #
    # @option params [String] :game_name
    #   <p>The name of the game.</p>
    #
    # @option params [String] :description
    #   <p>The description of the snapshot.</p>
    #
    # @return [Types::CreateSnapshotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_snapshot(
    #     game_name: 'GameName', # required
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSnapshotOutput
    #   resp.data.snapshot #=> Types::SnapshotDetails
    #   resp.data.snapshot.id #=> String
    #   resp.data.snapshot.description #=> String
    #   resp.data.snapshot.sections #=> Hash<String, Section>
    #   resp.data.snapshot.sections['key'] #=> Types::Section
    #   resp.data.snapshot.sections['key'].name #=> String
    #   resp.data.snapshot.sections['key'].size #=> Integer
    #   resp.data.snapshot.sections['key'].attributes #=> Hash,Array,String,Boolean,Numeric
    #   resp.data.snapshot.created #=> Time
    #   resp.data.snapshot.last_updated #=> Time
    #
    def create_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSnapshotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSnapshotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSnapshot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateSnapshot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSnapshot,
        stubs: @stubs,
        params_class: Params::CreateSnapshotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_snapshot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new stage for stage-by-stage game development and deployment.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateStageInput}.
    #
    # @option params [String] :game_name
    #   <p>The name of the game.</p>
    #
    # @option params [String] :stage_name
    #   <p>The name of the stage.</p>
    #
    # @option params [String] :role
    #   <p>
    #         The Amazon Resource Name (ARN) of the role to run the game with.
    #         This role can be a game-defined role or the default role that GameSparks created.
    #         </p>
    #
    # @option params [String] :description
    #   <p>The description of the stage.</p>
    #
    # @option params [String] :client_token
    #   <p>
    #         A client-defined token.
    #         With an active client token in the request, this action is idempotent.
    #         </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The list of tags to apply to the stage.</p>
    #
    # @return [Types::CreateStageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stage(
    #     game_name: 'GameName', # required
    #     stage_name: 'StageName', # required
    #     role: 'Role', # required
    #     description: 'Description',
    #     client_token: 'ClientToken',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateStageOutput
    #   resp.data.stage #=> Types::StageDetails
    #   resp.data.stage.name #=> String
    #   resp.data.stage.game_key #=> String
    #   resp.data.stage.arn #=> String
    #   resp.data.stage.role #=> String
    #   resp.data.stage.description #=> String
    #   resp.data.stage.created #=> Time
    #   resp.data.stage.last_updated #=> Time
    #   resp.data.stage.state #=> String, one of ["ACTIVE", "DELETING"]
    #   resp.data.stage.tags #=> Hash<String, String>
    #   resp.data.stage.tags['key'] #=> String
    #   resp.data.stage.log_group #=> String
    #
    def create_stage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateStageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateStageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateStage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::CreateStage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateStage,
        stubs: @stubs,
        params_class: Params::CreateStageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_stage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a game.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteGameInput}.
    #
    # @option params [String] :game_name
    #   <p>The name of the game to delete.</p>
    #
    # @return [Types::DeleteGameOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_game(
    #     game_name: 'GameName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteGameOutput
    #
    def delete_game(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteGameInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteGameInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteGame
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteGame
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteGame,
        stubs: @stubs,
        params_class: Params::DeleteGameOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_game
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a stage from a game, along with the associated game runtime.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteStageInput}.
    #
    # @option params [String] :game_name
    #   <p>The name of the game.</p>
    #
    # @option params [String] :stage_name
    #   <p>The name of the stage to delete.</p>
    #
    # @return [Types::DeleteStageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stage(
    #     game_name: 'GameName', # required
    #     stage_name: 'StageName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteStageOutput
    #
    def delete_stage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteStageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteStageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteStage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteStage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteStage,
        stubs: @stubs,
        params_class: Params::DeleteStageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_stage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disconnects a player from the game runtime.</p>
    #          <p>
    #       If a player has multiple connections, this operation attempts to close all of them.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::DisconnectPlayerInput}.
    #
    # @option params [String] :player_id
    #   <p>The unique identifier representing a player.</p>
    #
    # @option params [String] :game_name
    #   <p>The name of the game.</p>
    #
    # @option params [String] :stage_name
    #   <p>The name of the stage.</p>
    #
    # @return [Types::DisconnectPlayerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disconnect_player(
    #     player_id: 'PlayerId', # required
    #     game_name: 'GameName', # required
    #     stage_name: 'StageName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisconnectPlayerOutput
    #   resp.data.disconnect_successes #=> Array<String>
    #   resp.data.disconnect_successes[0] #=> String
    #   resp.data.disconnect_failures #=> Array<String>
    #
    def disconnect_player(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisconnectPlayerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisconnectPlayerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisconnectPlayer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DisconnectPlayer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisconnectPlayer,
        stubs: @stubs,
        params_class: Params::DisconnectPlayerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disconnect_player
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Exports a game configuration snapshot.</p>
    #
    # @param [Hash] params
    #   See {Types::ExportSnapshotInput}.
    #
    # @option params [String] :game_name
    #   <p>The name of the game.</p>
    #
    # @option params [String] :snapshot_id
    #   <p>The identifier of the snapshot to export.</p>
    #
    # @return [Types::ExportSnapshotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_snapshot(
    #     game_name: 'GameName', # required
    #     snapshot_id: 'SnapshotId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExportSnapshotOutput
    #   resp.data.s3_url #=> String
    #
    def export_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExportSnapshotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExportSnapshotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExportSnapshot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ExportSnapshot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExportSnapshot,
        stubs: @stubs,
        params_class: Params::ExportSnapshotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :export_snapshot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets details about a specified extension.</p>
    #
    # @param [Hash] params
    #   See {Types::GetExtensionInput}.
    #
    # @option params [String] :namespace
    #   <p>The namespace (qualifier) of the extension.</p>
    #
    # @option params [String] :name
    #   <p>The name of the extension.</p>
    #
    # @return [Types::GetExtensionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_extension(
    #     namespace: 'Namespace', # required
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetExtensionOutput
    #   resp.data.extension #=> Types::ExtensionDetails
    #   resp.data.extension.namespace #=> String
    #   resp.data.extension.name #=> String
    #   resp.data.extension.description #=> String
    #
    def get_extension(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetExtensionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetExtensionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetExtension
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetExtension
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetExtension,
        stubs: @stubs,
        params_class: Params::GetExtensionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_extension
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets details about a specified extension version.</p>
    #
    # @param [Hash] params
    #   See {Types::GetExtensionVersionInput}.
    #
    # @option params [String] :namespace
    #   <p>The namespace (qualifier) of the extension.</p>
    #
    # @option params [String] :name
    #   <p>The name of the extension.</p>
    #
    # @option params [String] :extension_version
    #   <p>The version of the extension.</p>
    #
    # @return [Types::GetExtensionVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_extension_version(
    #     namespace: 'Namespace', # required
    #     name: 'Name', # required
    #     extension_version: 'ExtensionVersion' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetExtensionVersionOutput
    #   resp.data.extension_version #=> Types::ExtensionVersionDetails
    #   resp.data.extension_version.namespace #=> String
    #   resp.data.extension_version.name #=> String
    #   resp.data.extension_version.schema #=> String
    #   resp.data.extension_version.version #=> String
    #
    def get_extension_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetExtensionVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetExtensionVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetExtensionVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetExtensionVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetExtensionVersion,
        stubs: @stubs,
        params_class: Params::GetExtensionVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_extension_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets details about a game.</p>
    #
    # @param [Hash] params
    #   See {Types::GetGameInput}.
    #
    # @option params [String] :game_name
    #   <p>The name of the game.</p>
    #
    # @return [Types::GetGameOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_game(
    #     game_name: 'GameName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetGameOutput
    #   resp.data.game #=> Types::GameDetails
    #   resp.data.game.name #=> String
    #   resp.data.game.arn #=> String
    #   resp.data.game.description #=> String
    #   resp.data.game.created #=> Time
    #   resp.data.game.last_updated #=> Time
    #   resp.data.game.state #=> String, one of ["ACTIVE", "DELETING"]
    #   resp.data.game.enable_termination_protection #=> Boolean
    #   resp.data.game.tags #=> Hash<String, String>
    #   resp.data.game.tags['key'] #=> String
    #
    def get_game(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetGameInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetGameInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetGame
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetGame
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetGame,
        stubs: @stubs,
        params_class: Params::GetGameOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_game
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the configuration of the game.</p>
    #
    # @param [Hash] params
    #   See {Types::GetGameConfigurationInput}.
    #
    # @option params [String] :game_name
    #   <p>The name of the game.</p>
    #
    # @option params [Array<String>] :sections
    #   <p>The list of sections to return.</p>
    #
    # @return [Types::GetGameConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_game_configuration(
    #     game_name: 'GameName', # required
    #     sections: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetGameConfigurationOutput
    #   resp.data.game_configuration #=> Types::GameConfigurationDetails
    #   resp.data.game_configuration.sections #=> Hash<String, Section>
    #   resp.data.game_configuration.sections['key'] #=> Types::Section
    #   resp.data.game_configuration.sections['key'].name #=> String
    #   resp.data.game_configuration.sections['key'].size #=> Integer
    #   resp.data.game_configuration.sections['key'].attributes #=> Hash,Array,String,Boolean,Numeric
    #   resp.data.game_configuration.created #=> Time
    #   resp.data.game_configuration.last_updated #=> Time
    #
    def get_game_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetGameConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetGameConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetGameConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetGameConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetGameConfiguration,
        stubs: @stubs,
        params_class: Params::GetGameConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_game_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets details about a job that is generating code for a snapshot.</p>
    #
    # @param [Hash] params
    #   See {Types::GetGeneratedCodeJobInput}.
    #
    # @option params [String] :game_name
    #   <p>The name of the game.</p>
    #
    # @option params [String] :snapshot_id
    #   <p>The identifier of the snapshot for the code generation job.</p>
    #
    # @option params [String] :job_id
    #   <p>The identifier of the code generation job.</p>
    #
    # @return [Types::GetGeneratedCodeJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_generated_code_job(
    #     game_name: 'GameName', # required
    #     snapshot_id: 'SnapshotId', # required
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetGeneratedCodeJobOutput
    #   resp.data.generated_code_job #=> Types::GeneratedCodeJobDetails
    #   resp.data.generated_code_job.s3_url #=> String
    #   resp.data.generated_code_job.status #=> String, one of ["IN_PROGRESS", "COMPLETED", "FAILED", "PENDING"]
    #   resp.data.generated_code_job.description #=> String
    #   resp.data.generated_code_job.expiration_time #=> Time
    #   resp.data.generated_code_job.generated_code_job_id #=> String
    #
    def get_generated_code_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetGeneratedCodeJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetGeneratedCodeJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetGeneratedCodeJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetGeneratedCodeJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetGeneratedCodeJob,
        stubs: @stubs,
        params_class: Params::GetGeneratedCodeJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_generated_code_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the status of a player's connection to the game runtime.</p>
    #          <p>
    #       It's possible for a single player to have multiple connections to the game runtime.
    #       If a player is not connected, this operation returns an empty list.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::GetPlayerConnectionStatusInput}.
    #
    # @option params [String] :player_id
    #   <p>The unique identifier representing a player.</p>
    #
    # @option params [String] :game_name
    #   <p>The name of the game.</p>
    #
    # @option params [String] :stage_name
    #   <p>The name of the stage.</p>
    #
    # @return [Types::GetPlayerConnectionStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_player_connection_status(
    #     player_id: 'PlayerId', # required
    #     game_name: 'GameName', # required
    #     stage_name: 'StageName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPlayerConnectionStatusOutput
    #   resp.data.connections #=> Array<Connection>
    #   resp.data.connections[0] #=> Types::Connection
    #   resp.data.connections[0].id #=> String
    #   resp.data.connections[0].created #=> Time
    #
    def get_player_connection_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPlayerConnectionStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPlayerConnectionStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPlayerConnectionStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetPlayerConnectionStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPlayerConnectionStatus,
        stubs: @stubs,
        params_class: Params::GetPlayerConnectionStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_player_connection_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a copy of the game configuration in a snapshot.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSnapshotInput}.
    #
    # @option params [String] :game_name
    #   <p>The name of the game.</p>
    #
    # @option params [String] :snapshot_id
    #   <p>The identifier of the snapshot.</p>
    #
    # @option params [Array<String>] :sections
    #   <p>The list of game configuration sections to be described.</p>
    #
    # @return [Types::GetSnapshotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_snapshot(
    #     game_name: 'GameName', # required
    #     snapshot_id: 'SnapshotId', # required
    #     sections: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSnapshotOutput
    #   resp.data.snapshot #=> Types::SnapshotDetails
    #   resp.data.snapshot.id #=> String
    #   resp.data.snapshot.description #=> String
    #   resp.data.snapshot.sections #=> Hash<String, Section>
    #   resp.data.snapshot.sections['key'] #=> Types::Section
    #   resp.data.snapshot.sections['key'].name #=> String
    #   resp.data.snapshot.sections['key'].size #=> Integer
    #   resp.data.snapshot.sections['key'].attributes #=> Hash,Array,String,Boolean,Numeric
    #   resp.data.snapshot.created #=> Time
    #   resp.data.snapshot.last_updated #=> Time
    #
    def get_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSnapshotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSnapshotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSnapshot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetSnapshot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSnapshot,
        stubs: @stubs,
        params_class: Params::GetSnapshotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_snapshot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a stage.</p>
    #
    # @param [Hash] params
    #   See {Types::GetStageInput}.
    #
    # @option params [String] :game_name
    #   <p>The name of the game.</p>
    #
    # @option params [String] :stage_name
    #   <p>The name of the stage.</p>
    #
    # @return [Types::GetStageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_stage(
    #     game_name: 'GameName', # required
    #     stage_name: 'StageName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetStageOutput
    #   resp.data.stage #=> Types::StageDetails
    #   resp.data.stage.name #=> String
    #   resp.data.stage.game_key #=> String
    #   resp.data.stage.arn #=> String
    #   resp.data.stage.role #=> String
    #   resp.data.stage.description #=> String
    #   resp.data.stage.created #=> Time
    #   resp.data.stage.last_updated #=> Time
    #   resp.data.stage.state #=> String, one of ["ACTIVE", "DELETING"]
    #   resp.data.stage.tags #=> Hash<String, String>
    #   resp.data.stage.tags['key'] #=> String
    #   resp.data.stage.log_group #=> String
    #
    def get_stage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetStageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetStageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetStage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetStage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetStage,
        stubs: @stubs,
        params_class: Params::GetStageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_stage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a stage deployment.</p>
    #
    # @param [Hash] params
    #   See {Types::GetStageDeploymentInput}.
    #
    # @option params [String] :game_name
    #   <p>The name of the game.</p>
    #
    # @option params [String] :stage_name
    #   <p>The name of the stage.</p>
    #
    # @option params [String] :deployment_id
    #   <p>
    #         The identifier of the stage deployment.
    #         <code>StartStageDeployment</code> returns the identifier that you use here.
    #         </p>
    #
    # @return [Types::GetStageDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_stage_deployment(
    #     game_name: 'GameName', # required
    #     stage_name: 'StageName', # required
    #     deployment_id: 'DeploymentId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetStageDeploymentOutput
    #   resp.data.stage_deployment #=> Types::StageDeploymentDetails
    #   resp.data.stage_deployment.deployment_id #=> String
    #   resp.data.stage_deployment.snapshot_id #=> String
    #   resp.data.stage_deployment.deployment_action #=> String, one of ["DEPLOY", "UNDEPLOY"]
    #   resp.data.stage_deployment.deployment_state #=> String, one of ["PENDING", "IN_PROGRESS", "COMPLETED", "FAILED"]
    #   resp.data.stage_deployment.created #=> Time
    #   resp.data.stage_deployment.last_updated #=> Time
    #   resp.data.stage_deployment.deployment_result #=> Types::DeploymentResult
    #   resp.data.stage_deployment.deployment_result.result_code #=> String, one of ["SUCCESS", "INVALID_ROLE_FAILURE", "UNSPECIFIED_FAILURE"]
    #   resp.data.stage_deployment.deployment_result.message #=> String
    #
    def get_stage_deployment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetStageDeploymentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetStageDeploymentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetStageDeployment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetStageDeployment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetStageDeployment,
        stubs: @stubs,
        params_class: Params::GetStageDeploymentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_stage_deployment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Imports a game configuration.</p>
    #          <p>
    #       This operation replaces the current configuration of the game with the provided input.
    #       This is not a reversible operation. If you want to preserve the previous configuration,
    #       use <code>CreateSnapshot</code> to make a new snapshot before importing.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::ImportGameConfigurationInput}.
    #
    # @option params [String] :game_name
    #   <p>The name of the game.</p>
    #
    # @option params [ImportGameConfigurationSource] :import_source
    #   <p>The source used to import configuration sections.</p>
    #
    # @return [Types::ImportGameConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_game_configuration(
    #     game_name: 'GameName', # required
    #     import_source: {
    #       file: 'File' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ImportGameConfigurationOutput
    #   resp.data.game_configuration #=> Types::GameConfigurationDetails
    #   resp.data.game_configuration.sections #=> Hash<String, Section>
    #   resp.data.game_configuration.sections['key'] #=> Types::Section
    #   resp.data.game_configuration.sections['key'].name #=> String
    #   resp.data.game_configuration.sections['key'].size #=> Integer
    #   resp.data.game_configuration.sections['key'].attributes #=> Hash,Array,String,Boolean,Numeric
    #   resp.data.game_configuration.created #=> Time
    #   resp.data.game_configuration.last_updated #=> Time
    #
    def import_game_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ImportGameConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ImportGameConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ImportGameConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ImportGameConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ImportGameConfiguration,
        stubs: @stubs,
        params_class: Params::ImportGameConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :import_game_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a paginated list of available versions for the extension.</p>
    #          <p>
    #       Each time an API change is made to an extension, the version is incremented.
    #       The list retrieved by this operation shows the versions that are currently available.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::ListExtensionVersionsInput}.
    #
    # @option params [String] :namespace
    #   <p>The namespace (qualifier) of the extension.</p>
    #
    # @option params [String] :name
    #   <p>The name of the extension.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that indicates the start of the next sequential page of results.</p>
    #            <p>
    #         Use the token that is returned with a previous call to this operation.
    #         To start at the beginning of the result set, do not specify a value.
    #         </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #            <p>
    #         Use this parameter with NextToken to get results as a set of sequential pages.
    #         </p>
    #
    # @return [Types::ListExtensionVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_extension_versions(
    #     namespace: 'Namespace', # required
    #     name: 'Name', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListExtensionVersionsOutput
    #   resp.data.extension_versions #=> Array<ExtensionVersionDetails>
    #   resp.data.extension_versions[0] #=> Types::ExtensionVersionDetails
    #   resp.data.extension_versions[0].namespace #=> String
    #   resp.data.extension_versions[0].name #=> String
    #   resp.data.extension_versions[0].schema #=> String
    #   resp.data.extension_versions[0].version #=> String
    #   resp.data.next_token #=> String
    #
    def list_extension_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListExtensionVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListExtensionVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListExtensionVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListExtensionVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListExtensionVersions,
        stubs: @stubs,
        params_class: Params::ListExtensionVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_extension_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a paginated list of available extensions.</p>
    #          <p>
    #       Extensions provide features that games can use from scripts.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::ListExtensionsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #            <p>
    #         Use this parameter with NextToken to get results as a set of sequential pages.
    #         </p>
    #
    # @option params [String] :next_token
    #   <p>The token that indicates the start of the next sequential page of results.</p>
    #            <p>
    #         Use the token that is returned with a previous call to this operation.
    #         To start at the beginning of the result set, do not specify a value.
    #         </p>
    #
    # @return [Types::ListExtensionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_extensions(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListExtensionsOutput
    #   resp.data.extensions #=> Array<ExtensionDetails>
    #   resp.data.extensions[0] #=> Types::ExtensionDetails
    #   resp.data.extensions[0].namespace #=> String
    #   resp.data.extensions[0].name #=> String
    #   resp.data.extensions[0].description #=> String
    #   resp.data.next_token #=> String
    #
    def list_extensions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListExtensionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListExtensionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListExtensions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException]),
        data_parser: Parsers::ListExtensions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListExtensions,
        stubs: @stubs,
        params_class: Params::ListExtensionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_extensions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a paginated list of games.</p>
    #
    # @param [Hash] params
    #   See {Types::ListGamesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #            <p>
    #         Use this parameter with NextToken to get results as a set of sequential pages.
    #         </p>
    #
    # @option params [String] :next_token
    #   <p>The token that indicates the start of the next sequential page of results.</p>
    #            <p>
    #         Use the token that is returned with a previous call to this operation.
    #         To start at the beginning of the result set, do not specify a value.
    #         </p>
    #
    # @return [Types::ListGamesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_games(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGamesOutput
    #   resp.data.games #=> Array<GameSummary>
    #   resp.data.games[0] #=> Types::GameSummary
    #   resp.data.games[0].name #=> String
    #   resp.data.games[0].description #=> String
    #   resp.data.games[0].state #=> String, one of ["ACTIVE", "DELETING"]
    #   resp.data.games[0].tags #=> Hash<String, String>
    #   resp.data.games[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_games(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGamesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListGamesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListGames
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ThrottlingException]),
        data_parser: Parsers::ListGames
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListGames,
        stubs: @stubs,
        params_class: Params::ListGamesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_games
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a paginated list of code generation jobs for a snapshot.</p>
    #
    # @param [Hash] params
    #   See {Types::ListGeneratedCodeJobsInput}.
    #
    # @option params [String] :game_name
    #   <p>The name of the game.</p>
    #
    # @option params [String] :snapshot_id
    #   <p>The identifier of the snapshot.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #            <p>
    #         Use this parameter with NextToken to get results as a set of sequential pages.
    #         </p>
    #
    # @option params [String] :next_token
    #   <p>The token that indicates the start of the next sequential page of results.</p>
    #            <p>
    #         Use the token that is returned with a previous call to this operation.
    #         To start at the beginning of the result set, do not specify a value.
    #         </p>
    #
    # @return [Types::ListGeneratedCodeJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_generated_code_jobs(
    #     game_name: 'GameName', # required
    #     snapshot_id: 'SnapshotId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGeneratedCodeJobsOutput
    #   resp.data.generated_code_jobs #=> Array<GeneratedCodeJobDetails>
    #   resp.data.generated_code_jobs[0] #=> Types::GeneratedCodeJobDetails
    #   resp.data.generated_code_jobs[0].s3_url #=> String
    #   resp.data.generated_code_jobs[0].status #=> String, one of ["IN_PROGRESS", "COMPLETED", "FAILED", "PENDING"]
    #   resp.data.generated_code_jobs[0].description #=> String
    #   resp.data.generated_code_jobs[0].expiration_time #=> Time
    #   resp.data.generated_code_jobs[0].generated_code_job_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_generated_code_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGeneratedCodeJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListGeneratedCodeJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListGeneratedCodeJobs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListGeneratedCodeJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListGeneratedCodeJobs,
        stubs: @stubs,
        params_class: Params::ListGeneratedCodeJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_generated_code_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a paginated list of snapshot summaries from the game.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSnapshotsInput}.
    #
    # @option params [String] :game_name
    #   <p>The name of the game.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #            <p>
    #         Use this parameter with NextToken to get results as a set of sequential pages.
    #         </p>
    #
    # @option params [String] :next_token
    #   <p>The token that indicates the start of the next sequential page of results.</p>
    #            <p>
    #         Use the token that is returned with a previous call to this operation.
    #         To start at the beginning of the result set, do not specify a value.
    #         </p>
    #
    # @return [Types::ListSnapshotsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_snapshots(
    #     game_name: 'GameName', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSnapshotsOutput
    #   resp.data.snapshots #=> Array<SnapshotSummary>
    #   resp.data.snapshots[0] #=> Types::SnapshotSummary
    #   resp.data.snapshots[0].id #=> String
    #   resp.data.snapshots[0].description #=> String
    #   resp.data.snapshots[0].created #=> Time
    #   resp.data.snapshots[0].last_updated #=> Time
    #   resp.data.next_token #=> String
    #
    def list_snapshots(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSnapshotsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSnapshotsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSnapshots
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListSnapshots
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSnapshots,
        stubs: @stubs,
        params_class: Params::ListSnapshotsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_snapshots
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a paginated list of stage deployment summaries from the game.</p>
    #
    # @param [Hash] params
    #   See {Types::ListStageDeploymentsInput}.
    #
    # @option params [String] :game_name
    #   <p>The name of the game.</p>
    #
    # @option params [String] :stage_name
    #   <p>The name of the stage.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that indicates the start of the next sequential page of results.</p>
    #            <p>
    #         Use the token that is returned with a previous call to this operation.
    #         To start at the beginning of the result set, do not specify a value.
    #         </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #            <p>
    #         Use this parameter with NextToken to get results as a set of sequential pages.
    #         </p>
    #
    # @return [Types::ListStageDeploymentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stage_deployments(
    #     game_name: 'GameName', # required
    #     stage_name: 'StageName', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListStageDeploymentsOutput
    #   resp.data.stage_deployments #=> Array<StageDeploymentSummary>
    #   resp.data.stage_deployments[0] #=> Types::StageDeploymentSummary
    #   resp.data.stage_deployments[0].deployment_id #=> String
    #   resp.data.stage_deployments[0].snapshot_id #=> String
    #   resp.data.stage_deployments[0].deployment_action #=> String, one of ["DEPLOY", "UNDEPLOY"]
    #   resp.data.stage_deployments[0].deployment_state #=> String, one of ["PENDING", "IN_PROGRESS", "COMPLETED", "FAILED"]
    #   resp.data.stage_deployments[0].last_updated #=> Time
    #   resp.data.stage_deployments[0].deployment_result #=> Types::DeploymentResult
    #   resp.data.stage_deployments[0].deployment_result.result_code #=> String, one of ["SUCCESS", "INVALID_ROLE_FAILURE", "UNSPECIFIED_FAILURE"]
    #   resp.data.stage_deployments[0].deployment_result.message #=> String
    #   resp.data.next_token #=> String
    #
    def list_stage_deployments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListStageDeploymentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListStageDeploymentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListStageDeployments
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListStageDeployments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListStageDeployments,
        stubs: @stubs,
        params_class: Params::ListStageDeploymentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_stage_deployments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a paginated list of stage summaries from the game.</p>
    #
    # @param [Hash] params
    #   See {Types::ListStagesInput}.
    #
    # @option params [String] :game_name
    #   <p>The name of the game.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #            <p>
    #         Use this parameter with NextToken to get results as a set of sequential pages.
    #         </p>
    #
    # @option params [String] :next_token
    #   <p>The token that indicates the start of the next sequential page of results.</p>
    #            <p>
    #         Use the token that is returned with a previous call to this operation.
    #         To start at the beginning of the result set, do not specify a value.
    #         </p>
    #
    # @return [Types::ListStagesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stages(
    #     game_name: 'GameName', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListStagesOutput
    #   resp.data.stages #=> Array<StageSummary>
    #   resp.data.stages[0] #=> Types::StageSummary
    #   resp.data.stages[0].name #=> String
    #   resp.data.stages[0].game_key #=> String
    #   resp.data.stages[0].description #=> String
    #   resp.data.stages[0].state #=> String, one of ["ACTIVE", "DELETING"]
    #   resp.data.stages[0].tags #=> Hash<String, String>
    #   resp.data.stages[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_stages(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListStagesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListStagesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListStages
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::ListStages
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListStages,
        stubs: @stubs,
        params_class: Params::ListStagesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_stages
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags associated with a GameSparks resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the GameSparks resource.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def list_tags_for_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsForResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsForResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
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

    # <p>
    #       Starts an asynchronous process that generates client code for system-defined and custom messages.
    #       The resulting code is collected as a .zip file and uploaded to a pre-signed Amazon S3 URL.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::StartGeneratedCodeJobInput}.
    #
    # @option params [String] :game_name
    #   <p>The name of the game.</p>
    #
    # @option params [String] :snapshot_id
    #   <p>The identifier of the snapshot for which to generate code.</p>
    #
    # @option params [Generator] :generator
    #   <p>Properties of the generator to use for the job.</p>
    #
    # @return [Types::StartGeneratedCodeJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_generated_code_job(
    #     game_name: 'GameName', # required
    #     snapshot_id: 'SnapshotId', # required
    #     generator: {
    #       target_platform: 'TargetPlatform',
    #       language: 'Language',
    #       game_sdk_version: 'GameSdkVersion'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartGeneratedCodeJobOutput
    #   resp.data.generated_code_job_id #=> String
    #
    def start_generated_code_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartGeneratedCodeJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartGeneratedCodeJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartGeneratedCodeJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::StartGeneratedCodeJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartGeneratedCodeJob,
        stubs: @stubs,
        params_class: Params::StartGeneratedCodeJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_generated_code_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deploys a snapshot to the stage and creates a new game runtime.</p>
    #          <p>
    #       After you call this operation, you can check the deployment status by using <code>GetStageDeployment</code>.
    #       </p>
    #          <p>
    #       If there are any players connected to the previous game runtime, then both runtimes persist.
    #       Existing connections to the previous runtime are maintained.
    #       When players disconnect and reconnect, they connect to the new runtime.
    #       After there are no connections to the previous game runtime, it is deleted.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::StartStageDeploymentInput}.
    #
    # @option params [String] :game_name
    #   <p>The name of the game.</p>
    #
    # @option params [String] :stage_name
    #   <p>The name of the stage to deploy the snapshot onto.</p>
    #
    # @option params [String] :snapshot_id
    #   <p>The identifier of the snapshot to deploy.</p>
    #
    # @option params [String] :client_token
    #   <p>
    #         A client-defined token.
    #         With an active client token in the request, this action is idempotent.
    #         </p>
    #
    # @return [Types::StartStageDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_stage_deployment(
    #     game_name: 'GameName', # required
    #     stage_name: 'StageName', # required
    #     snapshot_id: 'SnapshotId', # required
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartStageDeploymentOutput
    #   resp.data.stage_deployment #=> Types::StageDeploymentDetails
    #   resp.data.stage_deployment.deployment_id #=> String
    #   resp.data.stage_deployment.snapshot_id #=> String
    #   resp.data.stage_deployment.deployment_action #=> String, one of ["DEPLOY", "UNDEPLOY"]
    #   resp.data.stage_deployment.deployment_state #=> String, one of ["PENDING", "IN_PROGRESS", "COMPLETED", "FAILED"]
    #   resp.data.stage_deployment.created #=> Time
    #   resp.data.stage_deployment.last_updated #=> Time
    #   resp.data.stage_deployment.deployment_result #=> Types::DeploymentResult
    #   resp.data.stage_deployment.deployment_result.result_code #=> String, one of ["SUCCESS", "INVALID_ROLE_FAILURE", "UNSPECIFIED_FAILURE"]
    #   resp.data.stage_deployment.deployment_result.message #=> String
    #
    def start_stage_deployment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartStageDeploymentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartStageDeploymentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartStageDeployment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::StartStageDeployment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartStageDeployment,
        stubs: @stubs,
        params_class: Params::StartStageDeploymentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_stage_deployment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds tags to a GameSparks resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to add the tags to.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the resource.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
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

    # <p>Removes tags from a GameSparks resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove the tags from.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to remove.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceArn', # required
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
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

    # <p>Updates details of the game.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateGameInput}.
    #
    # @option params [String] :game_name
    #   <p>The name of the game.</p>
    #
    # @option params [String] :description
    #   <p>The description of the game.</p>
    #
    # @return [Types::UpdateGameOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_game(
    #     game_name: 'GameName', # required
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateGameOutput
    #   resp.data.game #=> Types::GameDetails
    #   resp.data.game.name #=> String
    #   resp.data.game.arn #=> String
    #   resp.data.game.description #=> String
    #   resp.data.game.created #=> Time
    #   resp.data.game.last_updated #=> Time
    #   resp.data.game.state #=> String, one of ["ACTIVE", "DELETING"]
    #   resp.data.game.enable_termination_protection #=> Boolean
    #   resp.data.game.tags #=> Hash<String, String>
    #   resp.data.game.tags['key'] #=> String
    #
    def update_game(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGameInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGameInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGame
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateGame
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateGame,
        stubs: @stubs,
        params_class: Params::UpdateGameOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_game
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates one or more sections of the game configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateGameConfigurationInput}.
    #
    # @option params [String] :game_name
    #   <p>The name of the game.</p>
    #
    # @option params [Array<SectionModification>] :modifications
    #   <p>The list of modifications to make.</p>
    #
    # @return [Types::UpdateGameConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_game_configuration(
    #     game_name: 'GameName', # required
    #     modifications: [
    #       {
    #         section: 'Section', # required
    #         path: 'Path', # required
    #         operation: 'ADD', # required - accepts ["ADD", "REMOVE", "REPLACE"]
    #         value: {
    #           'nil' => nil,
    #           'number' => 123.0,
    #           'string' => 'value',
    #           'boolean' => true,
    #           'array' => [],
    #           'map' => {}
    #         }
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateGameConfigurationOutput
    #   resp.data.game_configuration #=> Types::GameConfigurationDetails
    #   resp.data.game_configuration.sections #=> Hash<String, Section>
    #   resp.data.game_configuration.sections['key'] #=> Types::Section
    #   resp.data.game_configuration.sections['key'].name #=> String
    #   resp.data.game_configuration.sections['key'].size #=> Integer
    #   resp.data.game_configuration.sections['key'].attributes #=> Hash,Array,String,Boolean,Numeric
    #   resp.data.game_configuration.created #=> Time
    #   resp.data.game_configuration.last_updated #=> Time
    #
    def update_game_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGameConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGameConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGameConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateGameConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateGameConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateGameConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_game_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the metadata of a GameSparks snapshot.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSnapshotInput}.
    #
    # @option params [String] :game_name
    #   <p>The name of the game.</p>
    #
    # @option params [String] :snapshot_id
    #   <p>The identifier of the snapshot.</p>
    #
    # @option params [String] :description
    #   <p>The description of the snapshot.</p>
    #
    # @return [Types::UpdateSnapshotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_snapshot(
    #     game_name: 'GameName', # required
    #     snapshot_id: 'SnapshotId', # required
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSnapshotOutput
    #   resp.data.snapshot #=> Types::SnapshotDetails
    #   resp.data.snapshot.id #=> String
    #   resp.data.snapshot.description #=> String
    #   resp.data.snapshot.sections #=> Hash<String, Section>
    #   resp.data.snapshot.sections['key'] #=> Types::Section
    #   resp.data.snapshot.sections['key'].name #=> String
    #   resp.data.snapshot.sections['key'].size #=> Integer
    #   resp.data.snapshot.sections['key'].attributes #=> Hash,Array,String,Boolean,Numeric
    #   resp.data.snapshot.created #=> Time
    #   resp.data.snapshot.last_updated #=> Time
    #
    def update_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSnapshotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSnapshotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSnapshot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateSnapshot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSnapshot,
        stubs: @stubs,
        params_class: Params::UpdateSnapshotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_snapshot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the metadata of a stage.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateStageInput}.
    #
    # @option params [String] :game_name
    #   <p>The name of the game.</p>
    #
    # @option params [String] :stage_name
    #   <p>The name of the stage.</p>
    #
    # @option params [String] :role
    #   <p>The Amazon Resource Name (ARN) of the role to use for the game snapshots deployed to this stage.</p>
    #
    # @option params [String] :description
    #   <p>The description of the stage.</p>
    #
    # @return [Types::UpdateStageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stage(
    #     game_name: 'GameName', # required
    #     stage_name: 'StageName', # required
    #     role: 'Role',
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateStageOutput
    #   resp.data.stage #=> Types::StageDetails
    #   resp.data.stage.name #=> String
    #   resp.data.stage.game_key #=> String
    #   resp.data.stage.arn #=> String
    #   resp.data.stage.role #=> String
    #   resp.data.stage.description #=> String
    #   resp.data.stage.created #=> Time
    #   resp.data.stage.last_updated #=> Time
    #   resp.data.stage.state #=> String, one of ["ACTIVE", "DELETING"]
    #   resp.data.stage.tags #=> Hash<String, String>
    #   resp.data.stage.tags['key'] #=> String
    #   resp.data.stage.log_group #=> String
    #
    def update_stage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateStageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateStageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateStage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::UpdateStage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateStage,
        stubs: @stubs,
        params_class: Params::UpdateStageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_stage
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
