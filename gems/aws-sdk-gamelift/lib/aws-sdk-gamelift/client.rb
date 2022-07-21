# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::GameLift
  # An API client for GameLift
  # See {#initialize} for a full list of supported configuration options
  # <fullname>GameLift Service</fullname>
  #         <p>Amazon Web Services provides solutions for hosting session-based multiplayer game servers in the
  #             cloud, including tools for deploying, operating, and scaling game servers. Built on Amazon Web Services
  #             global computing infrastructure, GameLift helps you deliver high-performance,
  #             high-reliability, low-cost game servers while dynamically scaling your resource usage to
  #             meet player demand. </p>
  #         <p>
  #             <b>About GameLift solutions</b>
  #          </p>
  #         <p>Get more information on these GameLift solutions in the <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/">GameLift Developer Guide</a>.</p>
  #         <ul>
  #             <li>
  #                <p>GameLift managed hosting -- GameLift offers a fully managed service to set up and maintain
  #                     computing machines for hosting, manage game session and player session life
  #                     cycle, and handle security, storage, and performance tracking. You can use
  #                     automatic scaling tools to balance player demand and hosting costs, configure
  #                     your game session management to minimize player latency, and add FlexMatch for
  #                     matchmaking.</p>
  #             </li>
  #             <li>
  #                <p>Managed hosting with Realtime Servers -- With GameLift Realtime Servers, you can quickly configure and set up
  #                     ready-to-go game servers for your game. Realtime Servers provides a game server framework
  #                     with core GameLift infrastructure already built in. Then use the full range of
  #                     GameLift managed hosting features, including FlexMatch, for your game.</p>
  #             </li>
  #             <li>
  #                <p>GameLift FleetIQ -- Use GameLift FleetIQ as a standalone service while hosting your games using EC2 instances and
  #                     Auto Scaling groups. GameLift FleetIQ provides optimizations for game hosting, including
  #                     boosting the viability of low-cost Spot Instances gaming. For a complete
  #                     solution, pair the GameLift FleetIQ and FlexMatch standalone services.</p>
  #             </li>
  #             <li>
  #                 <p>GameLift FlexMatch -- Add matchmaking to your game hosting solution. FlexMatch is a
  #                     customizable matchmaking service for multiplayer games. Use FlexMatch as
  #                     integrated with GameLift managed hosting or incorporate FlexMatch as a standalone
  #                     service into your own hosting solution.</p>
  #             </li>
  #          </ul>
  #         <p>
  #             <b>About this API Reference</b>
  #          </p>
  #         <p>This reference guide describes the low-level service API for Amazon Web Services. With each topic
  #             in this guide, you can find links to language-specific SDK guides and the Amazon Web Services CLI
  #             reference. Useful links:</p>
  #         <ul>
  #             <li>
  #                 <p>
  #                   <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html">GameLift API
  #                     operations listed by tasks</a>
  #                </p>
  #             </li>
  #             <li>
  #                 <p>
  #                   <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-components.html"> GameLift tools
  #                     and resources</a>
  #                </p>
  #             </li>
  #          </ul>
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
    def initialize(config = AWS::SDK::GameLift::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Registers a player's acceptance or rejection of a proposed FlexMatch match. A
    #             matchmaking configuration may require player acceptance; if so, then matches built with
    #             that configuration cannot be completed unless all players accept the proposed match
    #             within a specified time limit. </p>
    #         <p>When FlexMatch builds a match, all the matchmaking tickets involved in the proposed
    #             match are placed into status <code>REQUIRES_ACCEPTANCE</code>. This is a trigger for
    #             your game to get acceptance from all players in the ticket. Acceptances are only valid
    #             for tickets when they are in this status; all other acceptances result in an
    #             error.</p>
    #         <p>To register acceptance, specify the ticket ID, a response, and one or more players.
    #             Once all players have registered acceptance, the matchmaking tickets advance to status
    #             <code>PLACING</code>, where a new game session is created for the match. </p>
    #         <p>If any player rejects the match, or if acceptances are not received before a specified
    #             timeout, the proposed match is dropped. The matchmaking tickets are then handled in one
    #             of two ways: For tickets where one or more players rejected the match or failed to
    #             respond, the ticket status is set to <code>CANCELLED</code>, and processing is
    #             terminated. For tickets where players have accepted or not yet responded, the ticket
    #             status is returned to <code>SEARCHING</code> to find a new match. A new matchmaking
    #             request for these players can be submitted as needed. </p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-client.html">
    #                 Add FlexMatch to a game client</a>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-events.html"> FlexMatch events</a> (reference)</p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>StartMatchmaking</a> |
    #                     <a>DescribeMatchmaking</a> |
    #                     <a>StopMatchmaking</a> |
    #                     <a>AcceptMatch</a> |
    #                     <a>StartMatchBackfill</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::AcceptMatchInput}.
    #
    # @option params [String] :ticket_id
    #   <p>A unique identifier for a matchmaking ticket. The ticket must be in status <code>REQUIRES_ACCEPTANCE</code>; otherwise this
    #               request will fail.</p>
    #
    # @option params [Array<String>] :player_ids
    #   <p>A unique identifier for a player delivering the response. This parameter can include one or multiple
    #               player IDs.</p>
    #
    # @option params [String] :acceptance_type
    #   <p>Player response to the proposed match.</p>
    #
    # @return [Types::AcceptMatchOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_match(
    #     ticket_id: 'TicketId', # required
    #     player_ids: [
    #       'member'
    #     ], # required
    #     acceptance_type: 'ACCEPT' # required - accepts ["ACCEPT", "REJECT"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AcceptMatchOutput
    #
    def accept_match(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AcceptMatchInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AcceptMatchInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AcceptMatch
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedRegionException, Errors::NotFoundException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::AcceptMatch
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AcceptMatch,
        stubs: @stubs,
        params_class: Params::AcceptMatchOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :accept_match
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             <b>This operation is used with the GameLift FleetIQ solution and game server groups.</b>
    #          </p>
    #         <p>Locates an available game server and temporarily reserves it to host gameplay and
    #             players. This operation is called from a game client or client service (such as a
    #             matchmaker) to request hosting resources for a new game session. In response, GameLift FleetIQ
    #             locates an available game server, places it in <code>CLAIMED</code> status for 60
    #             seconds, and returns connection information that players can use to connect to the game
    #             server. </p>
    #         <p>To claim a game server, identify a game server group. You can also specify a game
    #             server ID, although this approach bypasses GameLift FleetIQ placement optimization. Optionally,
    #             include game data to pass to the game server at the start of a game session, such as a
    #             game map or player information. </p>
    #         <p>When a game server is successfully claimed, connection information is returned. A
    #             claimed game server's utilization status remains <code>AVAILABLE</code> while the claim
    #             status is set to <code>CLAIMED</code> for up to 60 seconds. This time period gives the
    #             game server time to update its status to <code>UTILIZED</code> (using <a>UpdateGameServer</a>) once players join. If the game server's status is not
    #             updated within 60 seconds, the game server reverts to unclaimed status and is available
    #             to be claimed by another request. The claim time period is a fixed value and is not
    #             configurable.</p>
    #         <p>If you try to claim a specific game server, this request will fail in the following
    #             cases:</p>
    #         <ul>
    #             <li>
    #                <p>If the game server utilization status is <code>UTILIZED</code>.</p>
    #             </li>
    #             <li>
    #                <p>If the game server claim status is <code>CLAIMED</code>.</p>
    #             </li>
    #          </ul>
    #         <note>
    #             <p>When claiming a specific game server, this request will succeed even if the game
    #                 server is running on an instance in <code>DRAINING</code> status. To avoid this,
    #                 first check the instance status by calling <a>DescribeGameServerInstances</a>.</p>
    #         </note>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html">GameLift FleetIQ Guide</a>
    #         </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>RegisterGameServer</a> |
    #                     <a>ListGameServers</a> |
    #                     <a>ClaimGameServer</a> |
    #                     <a>DescribeGameServer</a> |
    #                     <a>UpdateGameServer</a> |
    #                     <a>DeregisterGameServer</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::ClaimGameServerInput}.
    #
    # @option params [String] :game_server_group_name
    #   <p>A unique identifier for the game server group where the game server is running.
    #               Use either the <a>GameServerGroup</a> name or ARN value. If you are not specifying a game server to claim, this value identifies
    #               where you want GameLift FleetIQ to look for an available game server to claim. </p>
    #
    # @option params [String] :game_server_id
    #   <p>A custom string that uniquely identifies the game server to claim. If this parameter
    #               is left empty, GameLift FleetIQ searches for an available game server in the specified game
    #               server group.</p>
    #
    # @option params [String] :game_server_data
    #   <p>A set of custom game server properties, formatted as a single string value. This data
    #               is passed to a game client or service when it requests information on game servers using
    #                   <a>ListGameServers</a> or <a>ClaimGameServer</a>. </p>
    #
    # @return [Types::ClaimGameServerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.claim_game_server(
    #     game_server_group_name: 'GameServerGroupName', # required
    #     game_server_id: 'GameServerId',
    #     game_server_data: 'GameServerData'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ClaimGameServerOutput
    #   resp.data.game_server #=> Types::GameServer
    #   resp.data.game_server.game_server_group_name #=> String
    #   resp.data.game_server.game_server_group_arn #=> String
    #   resp.data.game_server.game_server_id #=> String
    #   resp.data.game_server.instance_id #=> String
    #   resp.data.game_server.connection_info #=> String
    #   resp.data.game_server.game_server_data #=> String
    #   resp.data.game_server.claim_status #=> String, one of ["CLAIMED"]
    #   resp.data.game_server.utilization_status #=> String, one of ["AVAILABLE", "UTILIZED"]
    #   resp.data.game_server.registration_time #=> Time
    #   resp.data.game_server.last_claim_time #=> Time
    #   resp.data.game_server.last_health_check_time #=> Time
    #
    def claim_game_server(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ClaimGameServerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ClaimGameServerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ClaimGameServer
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::NotFoundException, Errors::OutOfCapacityException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::ClaimGameServer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ClaimGameServer,
        stubs: @stubs,
        params_class: Params::ClaimGameServerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :claim_game_server
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an alias for a fleet. In most situations, you can use an alias ID in place of
    #             a fleet ID. An alias provides a level of abstraction for a fleet that is useful when
    #             redirecting player traffic from one fleet to another, such as when updating your game
    #             build.  </p>
    #         <p>Amazon GameLift supports two types of routing strategies for aliases: simple and terminal. A
    #             simple alias points to an active fleet. A terminal alias is used to display messaging or
    #             link to a URL instead of routing players to an active fleet. For example, you might use
    #             a terminal alias when a game version is no longer supported and you want to direct
    #             players to an upgrade site. </p>
    #         <p>To create a fleet alias, specify an alias name, routing strategy, and optional
    #             description. Each simple alias can point to only one fleet, but a fleet can have
    #             multiple aliases. If successful, a new alias record is returned, including an alias ID
    #             and an ARN. You can reassign an alias to another fleet by calling
    #                 <code>UpdateAlias</code>.</p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateAlias</a> |
    #                     <a>ListAliases</a> |
    #                     <a>DescribeAlias</a> |
    #                     <a>UpdateAlias</a> |
    #                     <a>DeleteAlias</a> |
    #                     <a>ResolveAlias</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::CreateAliasInput}.
    #
    # @option params [String] :name
    #   <p>A descriptive label that is associated with an alias. Alias names do not need to be unique.</p>
    #
    # @option params [String] :description
    #   <p>A human-readable description of the alias.</p>
    #
    # @option params [RoutingStrategy] :routing_strategy
    #   <p>The routing configuration, including routing type and fleet target, for the alias. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of labels to assign to the new alias resource. Tags are developer-defined
    #               key-value pairs. Tagging
    #               Amazon Web Services resources are useful for resource management, access management and cost allocation.
    #               For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a> in the
    #                   <i>Amazon Web Services General Reference</i>. Once the resource is created, you can
    #               use <a>TagResource</a>, <a>UntagResource</a>, and
    #               <a>ListTagsForResource</a> to add, remove, and view tags. The
    #               maximum tag limit may be lower than stated. See the Amazon Web Services General Reference for actual
    #               tagging limits.</p>
    #
    # @return [Types::CreateAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_alias(
    #     name: 'Name', # required
    #     description: 'Description',
    #     routing_strategy: {
    #       type: 'SIMPLE', # accepts ["SIMPLE", "TERMINAL"]
    #       fleet_id: 'FleetId',
    #       message: 'Message'
    #     }, # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAliasOutput
    #   resp.data.alias #=> Types::Alias
    #   resp.data.alias.alias_id #=> String
    #   resp.data.alias.name #=> String
    #   resp.data.alias.alias_arn #=> String
    #   resp.data.alias.description #=> String
    #   resp.data.alias.routing_strategy #=> Types::RoutingStrategy
    #   resp.data.alias.routing_strategy.type #=> String, one of ["SIMPLE", "TERMINAL"]
    #   resp.data.alias.routing_strategy.fleet_id #=> String
    #   resp.data.alias.routing_strategy.message #=> String
    #   resp.data.alias.creation_time #=> Time
    #   resp.data.alias.last_updated_time #=> Time
    #
    def create_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAliasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAlias
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::LimitExceededException, Errors::TaggingFailedException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAlias,
        stubs: @stubs,
        params_class: Params::CreateAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_alias
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new Amazon GameLift build resource for your game server binary files. Game server
    #             binaries must be combined into a zip file for use with Amazon GameLift. </p>
    #         <important>
    #             <p>When setting up a new game build for GameLift, we recommend using the Amazon Web Services CLI
    #                 command <b>
    #                   <a href="https://docs.aws.amazon.com/cli/latest/reference/gamelift/upload-build.html">upload-build</a>
    #                </b>. This helper command combines two tasks: (1) it
    #                 uploads your build files from a file directory to a GameLift Amazon S3 location, and (2)
    #                 it creates a new build resource. </p>
    #         </important>
    #         <p>The <code>CreateBuild</code> operation can used in the following scenarios:</p>
    #         <ul>
    #             <li>
    #                 <p>To create a new game build with build files that are in an Amazon S3 location under
    #                     an Amazon Web Services account that you control. To use this option, you must first give Amazon GameLift
    #                     access to the Amazon S3 bucket. With permissions in place, call
    #                         <code>CreateBuild</code> and specify a build name, operating system, and the
    #                     Amazon S3 storage location of your game build.</p>
    #             </li>
    #             <li>
    #                 <p>To directly upload your build files to a GameLift Amazon S3 location. To use this
    #                     option, first call <code>CreateBuild</code> and specify a build name and
    #                     operating system. This operation creates a new build resource and also returns an
    #                     Amazon S3 location with temporary access credentials. Use the credentials to manually
    #                     upload your build files to the specified Amazon S3 location. For more information,
    #                     see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/UploadingObjects.html">Uploading Objects</a> in the <i>Amazon S3 Developer
    #                         Guide</i>. Build files can be uploaded to the GameLift Amazon S3 location
    #                     once only; that can't be updated. </p>
    #             </li>
    #          </ul>
    #         <p>If successful, this operation creates a new build resource with a unique build ID and
    #             places it in <code>INITIALIZED</code> status. A build must be in <code>READY</code>
    #             status before you can create fleets with it.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html">Uploading Your
    #                 Game</a>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build"> Create a Build with Files in Amazon S3</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateBuild</a> |
    #                     <a>ListBuilds</a> |
    #                     <a>DescribeBuild</a> |
    #                     <a>UpdateBuild</a> |
    #                     <a>DeleteBuild</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::CreateBuildInput}.
    #
    # @option params [String] :name
    #   <p>A descriptive label that is associated with a build. Build names do not need to be unique. You can use <a>UpdateBuild</a> to change this value later.
    #           </p>
    #
    # @option params [String] :version
    #   <p>Version information that is associated with a build or script. Version strings do not need to be unique. You can use <a>UpdateBuild</a> to change this value later.
    #           </p>
    #
    # @option params [S3Location] :storage_location
    #   <p>Information indicating where your game build files are stored. Use this parameter only
    #               when creating a build with files stored in an Amazon S3 bucket that you own. The storage
    #               location must specify an Amazon S3 bucket name and key. The location must also specify a role
    #               ARN that you set up to allow Amazon GameLift to access your Amazon S3 bucket. The S3 bucket and your
    #               new build must be in the same Region.</p>
    #           <p>If a <code>StorageLocation</code> is specified, the size of your file
    #               can be found in your Amazon S3 bucket. Amazon GameLift will report a <code>SizeOnDisk</code> of 0.
    #           </p>
    #
    # @option params [String] :operating_system
    #   <p>The operating system that the game server binaries are built to run on. This value
    #               determines the type of fleet resources that you can use for this build. If your game
    #               build contains multiple executables, they all must run on the same operating system. If
    #               an operating system is not specified when creating a build, Amazon GameLift uses the
    #               default value (WINDOWS_2012). This value cannot be changed later.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of labels to assign to the new build resource. Tags are developer-defined
    #               key-value pairs. Tagging
    #               Amazon Web Services resources are useful for resource management, access management and cost allocation.
    #               For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a> in the
    #               <i>Amazon Web Services General Reference</i>. Once the resource is created, you can
    #               use <a>TagResource</a>, <a>UntagResource</a>, and
    #               <a>ListTagsForResource</a> to add, remove, and view tags. The
    #               maximum tag limit may be lower than stated. See the Amazon Web Services General Reference for actual
    #               tagging limits.</p>
    #
    # @return [Types::CreateBuildOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_build(
    #     name: 'Name',
    #     version: 'Version',
    #     storage_location: {
    #       bucket: 'Bucket',
    #       key: 'Key',
    #       role_arn: 'RoleArn',
    #       object_version: 'ObjectVersion'
    #     },
    #     operating_system: 'WINDOWS_2012', # accepts ["WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2"]
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBuildOutput
    #   resp.data.build #=> Types::Build
    #   resp.data.build.build_id #=> String
    #   resp.data.build.build_arn #=> String
    #   resp.data.build.name #=> String
    #   resp.data.build.version #=> String
    #   resp.data.build.status #=> String, one of ["INITIALIZED", "READY", "FAILED"]
    #   resp.data.build.size_on_disk #=> Integer
    #   resp.data.build.operating_system #=> String, one of ["WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2"]
    #   resp.data.build.creation_time #=> Time
    #   resp.data.upload_credentials #=> Types::AwsCredentials
    #   resp.data.upload_credentials.access_key_id #=> String
    #   resp.data.upload_credentials.secret_access_key #=> String
    #   resp.data.upload_credentials.session_token #=> String
    #   resp.data.storage_location #=> Types::S3Location
    #   resp.data.storage_location.bucket #=> String
    #   resp.data.storage_location.key #=> String
    #   resp.data.storage_location.role_arn #=> String
    #   resp.data.storage_location.object_version #=> String
    #
    def create_build(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBuildInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBuildInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBuild
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::TaggingFailedException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateBuild
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBuild,
        stubs: @stubs,
        params_class: Params::CreateBuildOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_build
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a fleet of Amazon Elastic Compute Cloud (Amazon Elastic Compute Cloud) instances to host your
    #             custom game server or Realtime Servers. Use this operation to configure the computing resources for
    #             your fleet and provide instructions for running game servers on each instance.</p>
    #         <p>Most GameLift fleets can deploy instances to multiple locations, including the home
    #             Region (where the fleet is created) and an optional set of remote locations. Fleets that
    #             are created in the following Amazon Web Services Regions support multiple locations: us-east-1 (N.
    #             Virginia), us-west-2 (Oregon), eu-central-1 (Frankfurt), eu-west-1 (Ireland),
    #             ap-southeast-2 (Sydney), ap-northeast-1 (Tokyo), and ap-northeast-2 (Seoul). Fleets that
    #             are created in other GameLift Regions can deploy instances in the fleet's home Region
    #             only. All fleet instances use the same configuration regardless of location; however,
    #             you can adjust capacity settings and turn auto-scaling on/off for each location.</p>
    #         <p>To create a fleet, choose the hardware for your instances, specify a game server build
    #             or Realtime script to deploy, and provide a runtime configuration to direct GameLift how
    #             to start and run game servers on each instance in the fleet. Set permissions for inbound
    #             traffic to your game servers, and enable optional features as needed. When creating a
    #             multi-location fleet, provide a list of additional remote locations.</p>
    #         <p>If you need to debug your fleet, fetch logs, view performance metrics
    #             or other actions on the fleet, create the development fleet with port 22/3389 open.
    #             As a best practice, we recommend opening ports for remote access only when you need them
    #             and closing them when you're finished. </p>
    #         <p>If successful, this operation creates a new Fleet resource and places it in
    #                 <code>NEW</code> status, which prompts GameLift to initiate the <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creation-workflow.html">fleet creation
    #                 workflow</a>. You can track fleet creation by checking fleet status using <a>DescribeFleetAttributes</a> and <a>DescribeFleetLocationAttributes</a>/, or by monitoring fleet creation events
    #             using <a>DescribeFleetEvents</a>. As soon as the fleet status changes to
    #                 <code>ACTIVE</code>, you can enable automatic scaling for the fleet with <a>PutScalingPolicy</a> and set capacity for the home Region with <a>UpdateFleetCapacity</a>. When the status of each remote location reaches
    #                 <code>ACTIVE</code>, you can set capacity by location using <a>UpdateFleetCapacity</a>.</p>
    #
    #
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up fleets</a>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html#fleets-creating-debug-creation">Debug fleet creation issues</a>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Multi-location fleets</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateFleet</a> |
    #                     <a>UpdateFleetCapacity</a> |
    #                     <a>PutScalingPolicy</a> |
    #                     <a>DescribeEC2InstanceLimits</a> |
    #                     <a>DescribeFleetAttributes</a> |
    #                     <a>DescribeFleetLocationAttributes</a> |
    #                     <a>UpdateFleetAttributes</a> |
    #                     <a>StopFleetActions</a> |
    #                     <a>DeleteFleet</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::CreateFleetInput}.
    #
    # @option params [String] :name
    #   <p>A descriptive label that is associated with a fleet. Fleet names do not need to be unique.</p>
    #
    # @option params [String] :description
    #   <p>A human-readable description of the fleet.</p>
    #
    # @option params [String] :build_id
    #   <p>The unique identifier for a custom game server build to be deployed on fleet
    #               instances. You can use either the build ID or ARN. The build must be uploaded to GameLift
    #               and in <code>READY</code> status. This fleet property cannot be changed later.</p>
    #
    # @option params [String] :script_id
    #   <p>The unique identifier for a Realtime configuration script to be deployed on fleet
    #               instances. You can use either the script ID or ARN. Scripts must be uploaded to GameLift
    #               prior to creating the fleet. This fleet property cannot be changed later.</p>
    #
    # @option params [String] :server_launch_path
    #   <p>
    #               <b>This parameter is no longer used.</b> Specify a server
    #               launch path using the <code>RuntimeConfiguration</code> parameter. Requests that use
    #               this parameter instead continue to be valid.</p>
    #
    # @option params [String] :server_launch_parameters
    #   <p>
    #               <b>This parameter is no longer used.</b> Specify server
    #               launch parameters using the <code>RuntimeConfiguration</code> parameter. Requests that
    #               use this parameter instead continue to be valid.</p>
    #
    # @option params [Array<String>] :log_paths
    #   <p>
    #               <b>This parameter is no longer used.</b> To specify where
    #               GameLift should store log files once a server process shuts down, use the GameLift server
    #               API <code>ProcessReady()</code> and specify one or more directory paths in
    #                   <code>logParameters</code>. See more information in the <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api-ref.html#gamelift-sdk-server-api-ref-dataypes-process">Server API Reference</a>. </p>
    #
    # @option params [String] :ec2_instance_type
    #   <p>The GameLift-supported Amazon EC2 instance type to use for all fleet instances. Instance
    #               type determines the computing resources that will be used to host your game servers,
    #               including CPU, memory, storage, and networking capacity. See <a href="http://aws.amazon.com/ec2/instance-types/">Amazon Elastic Compute Cloud Instance Types</a> for detailed descriptions
    #               of Amazon EC2 instance types.</p>
    #
    # @option params [Array<IpPermission>] :ec2_inbound_permissions
    #   <p>The allowed IP address ranges and port settings that allow inbound traffic to access
    #               game sessions on this fleet. If the fleet is hosting a custom game build, this property
    #               must be set before players can connect to game sessions. For Realtime Servers fleets, GameLift
    #               automatically sets TCP and UDP ranges. </p>
    #
    # @option params [String] :new_game_session_protection_policy
    #   <p>The status of termination protection for active game sessions on the fleet. By
    #               default, this property is set to <code>NoProtection</code>. You can also set game
    #               session protection for an individual game session by calling <a>UpdateGameSession</a>.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <b>NoProtection</b> - Game sessions can be terminated
    #                       during active gameplay as a result of a scale-down event. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>FullProtection</b> - Game sessions in
    #                           <code>ACTIVE</code> status cannot be terminated during a scale-down
    #                       event.</p>
    #               </li>
    #            </ul>
    #
    # @option params [RuntimeConfiguration] :runtime_configuration
    #   <p>Instructions for how to launch and maintain server processes on instances in the
    #               fleet. The runtime configuration defines one or more server process configurations, each
    #               identifying a build executable or Realtime script file and the number of processes of
    #               that type to run concurrently. </p>
    #           <note>
    #               <p>The <code>RuntimeConfiguration</code> parameter is required unless the fleet is
    #                   being configured using the older parameters <code>ServerLaunchPath</code> and
    #                       <code>ServerLaunchParameters</code>, which are still supported for backward
    #                   compatibility.</p>
    #           </note>
    #
    # @option params [ResourceCreationLimitPolicy] :resource_creation_limit_policy
    #   <p>A policy that limits the number of game sessions that an individual player can create
    #               on instances in this fleet within a specified span of time.</p>
    #
    # @option params [Array<String>] :metric_groups
    #   <p>The name of an Amazon Web Services CloudWatch metric group to add this fleet to. A metric group is
    #               used to aggregate the metrics for multiple fleets. You can specify an existing metric
    #               group name or set a new name to create a new metric group. A fleet can be included in
    #               only one metric group at a time. </p>
    #
    # @option params [String] :peer_vpc_aws_account_id
    #   <p>Used when peering your GameLift fleet with a VPC, the unique identifier for the Amazon Web Services
    #               account that owns the VPC. You can find your account ID in the Amazon Web Services Management Console under account
    #               settings. </p>
    #
    # @option params [String] :peer_vpc_id
    #   <p>A unique identifier for a VPC with resources to be accessed by your GameLift fleet. The
    #               VPC must be in the same Region as your fleet. To look up a VPC ID, use the
    #               <a href="https://console.aws.amazon.com/vpc/">VPC Dashboard</a> in the Amazon Web Services Management Console.
    #               Learn more about VPC peering in <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html">VPC Peering with GameLift Fleets</a>. </p>
    #
    # @option params [String] :fleet_type
    #   <p>Indicates whether to use On-Demand or Spot instances for this fleet. By default, this
    #               property is set to <code>ON_DEMAND</code>. Learn more about when to use <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-ec2-instances.html#gamelift-ec2-instances-spot"> On-Demand versus Spot Instances</a>. This property cannot be changed after the
    #               fleet is created.</p>
    #
    # @option params [String] :instance_role_arn
    #   <p>A unique identifier for an IAM role that manages access to your Amazon Web Services services.
    #           With an instance role ARN set, any application that runs on an instance in this fleet can assume the role,
    #           including install scripts, server processes, and daemons (background processes). Create a role or look up a role's
    #           ARN by using the <a href="https://console.aws.amazon.com/iam/">IAM dashboard</a> in the Amazon Web Services Management Console.
    #           Learn more about using on-box credentials for your game servers at
    #           <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-resources.html">
    #           Access external resources from a game server</a>.  This property cannot be changed after the fleet is created.</p>
    #
    # @option params [CertificateConfiguration] :certificate_configuration
    #   <p>Prompts GameLift to generate a TLS/SSL certificate for the fleet. TLS certificates are
    #               used for encrypting traffic between game clients and the game servers that are running
    #               on GameLift. By default, the <code>CertificateConfiguration</code> is set to
    #                   <code>DISABLED</code>. This property cannot be changed after the fleet is created. </p>
    #           <p>Note: This feature requires the Amazon Web Services Certificate Manager (ACM) service, which is not
    #               available in all Amazon Web Services regions. When working in a region that does not support this
    #               feature, a fleet creation request with certificate generation fails with a 4xx
    #               error.</p>
    #
    # @option params [Array<LocationConfiguration>] :locations
    #   <p>A set of remote locations to deploy additional instances to and manage as part of the
    #               fleet. This parameter can only be used when creating fleets in Amazon Web Services Regions that support
    #               multiple locations. You can add any GameLift-supported Amazon Web Services Region as a remote location,
    #               in the form of an Amazon Web Services Region code such as <code>us-west-2</code>. To create a fleet with
    #               instances in the home Region only, omit this parameter. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of labels to assign to the new fleet resource. Tags are developer-defined
    #               key-value pairs. Tagging Amazon Web Services resources are useful for resource management, access
    #               management and cost allocation. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a> in the
    #                   <i>Amazon Web Services General Reference</i>. Once the fleet is created, you can use
    #                   <a>TagResource</a>, <a>UntagResource</a>, and <a>ListTagsForResource</a> to add, remove, and view tags. The maximum tag limit
    #               may be lower than stated. See the <i>Amazon Web Services General Reference</i> for actual
    #               tagging limits.</p>
    #
    # @return [Types::CreateFleetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_fleet(
    #     name: 'Name', # required
    #     description: 'Description',
    #     build_id: 'BuildId',
    #     script_id: 'ScriptId',
    #     server_launch_path: 'ServerLaunchPath',
    #     server_launch_parameters: 'ServerLaunchParameters',
    #     log_paths: [
    #       'member'
    #     ],
    #     ec2_instance_type: 't2.micro', # required - accepts ["t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge"]
    #     ec2_inbound_permissions: [
    #       {
    #         from_port: 1, # required
    #         to_port: 1, # required
    #         ip_range: 'IpRange', # required
    #         protocol: 'TCP' # required - accepts ["TCP", "UDP"]
    #       }
    #     ],
    #     new_game_session_protection_policy: 'NoProtection', # accepts ["NoProtection", "FullProtection"]
    #     runtime_configuration: {
    #       server_processes: [
    #         {
    #           launch_path: 'LaunchPath', # required
    #           parameters: 'Parameters',
    #           concurrent_executions: 1 # required
    #         }
    #       ],
    #       max_concurrent_game_session_activations: 1,
    #       game_session_activation_timeout_seconds: 1
    #     },
    #     resource_creation_limit_policy: {
    #       new_game_sessions_per_creator: 1,
    #       policy_period_in_minutes: 1
    #     },
    #     metric_groups: [
    #       'member'
    #     ],
    #     peer_vpc_aws_account_id: 'PeerVpcAwsAccountId',
    #     peer_vpc_id: 'PeerVpcId',
    #     fleet_type: 'ON_DEMAND', # accepts ["ON_DEMAND", "SPOT"]
    #     instance_role_arn: 'InstanceRoleArn',
    #     certificate_configuration: {
    #       certificate_type: 'DISABLED' # required - accepts ["DISABLED", "GENERATED"]
    #     },
    #     locations: [
    #       {
    #         location: 'Location'
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFleetOutput
    #   resp.data.fleet_attributes #=> Types::FleetAttributes
    #   resp.data.fleet_attributes.fleet_id #=> String
    #   resp.data.fleet_attributes.fleet_arn #=> String
    #   resp.data.fleet_attributes.fleet_type #=> String, one of ["ON_DEMAND", "SPOT"]
    #   resp.data.fleet_attributes.instance_type #=> String, one of ["t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge"]
    #   resp.data.fleet_attributes.description #=> String
    #   resp.data.fleet_attributes.name #=> String
    #   resp.data.fleet_attributes.creation_time #=> Time
    #   resp.data.fleet_attributes.termination_time #=> Time
    #   resp.data.fleet_attributes.status #=> String, one of ["NEW", "DOWNLOADING", "VALIDATING", "BUILDING", "ACTIVATING", "ACTIVE", "DELETING", "ERROR", "TERMINATED"]
    #   resp.data.fleet_attributes.build_id #=> String
    #   resp.data.fleet_attributes.build_arn #=> String
    #   resp.data.fleet_attributes.script_id #=> String
    #   resp.data.fleet_attributes.script_arn #=> String
    #   resp.data.fleet_attributes.server_launch_path #=> String
    #   resp.data.fleet_attributes.server_launch_parameters #=> String
    #   resp.data.fleet_attributes.log_paths #=> Array<String>
    #   resp.data.fleet_attributes.log_paths[0] #=> String
    #   resp.data.fleet_attributes.new_game_session_protection_policy #=> String, one of ["NoProtection", "FullProtection"]
    #   resp.data.fleet_attributes.operating_system #=> String, one of ["WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2"]
    #   resp.data.fleet_attributes.resource_creation_limit_policy #=> Types::ResourceCreationLimitPolicy
    #   resp.data.fleet_attributes.resource_creation_limit_policy.new_game_sessions_per_creator #=> Integer
    #   resp.data.fleet_attributes.resource_creation_limit_policy.policy_period_in_minutes #=> Integer
    #   resp.data.fleet_attributes.metric_groups #=> Array<String>
    #   resp.data.fleet_attributes.metric_groups[0] #=> String
    #   resp.data.fleet_attributes.stopped_actions #=> Array<String>
    #   resp.data.fleet_attributes.stopped_actions[0] #=> String, one of ["AUTO_SCALING"]
    #   resp.data.fleet_attributes.instance_role_arn #=> String
    #   resp.data.fleet_attributes.certificate_configuration #=> Types::CertificateConfiguration
    #   resp.data.fleet_attributes.certificate_configuration.certificate_type #=> String, one of ["DISABLED", "GENERATED"]
    #   resp.data.location_states #=> Array<LocationState>
    #   resp.data.location_states[0] #=> Types::LocationState
    #   resp.data.location_states[0].location #=> String
    #   resp.data.location_states[0].status #=> String, one of ["NEW", "DOWNLOADING", "VALIDATING", "BUILDING", "ACTIVATING", "ACTIVE", "DELETING", "ERROR", "TERMINATED"]
    #
    def create_fleet(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFleetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFleetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFleet
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedRegionException, Errors::ConflictException, Errors::LimitExceededException, Errors::NotFoundException, Errors::TaggingFailedException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateFleet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFleet,
        stubs: @stubs,
        params_class: Params::CreateFleetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_fleet
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds remote locations to a fleet and begins populating the new locations with EC2
    #             instances. The new instances conform to the fleet's instance type, auto-scaling, and
    #             other configuration settings. </p>
    #         <note>
    #             <p>This operation cannot be used with fleets that don't support remote locations. Fleets
    #                 can have multiple locations only if they reside in Amazon Web Services Regions that support this
    #                 feature (see <a>CreateFleet</a> for the complete list) and were created
    #                 after the feature was released in March 2021.</p>
    #         </note>
    #         <p>To add fleet locations, specify the fleet to be updated and provide a list of one or
    #             more locations. </p>
    #         <p>If successful, this operation returns the list of added locations with their status set
    #             to <code>NEW</code>. GameLift initiates the process of starting an instance in each added
    #             location. You can track the status of each new location by monitoring location creation
    #             events using <a>DescribeFleetEvents</a>. Alternatively, you can poll location
    #             status by calling <a>DescribeFleetLocationAttributes</a>. After a location
    #             status becomes <code>ACTIVE</code>, you can adjust the location's capacity as needed
    #             with <a>UpdateFleetCapacity</a>.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up fleets</a>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Multi-location fleets</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateFleetLocations</a> |
    #                     <a>DescribeFleetLocationAttributes</a> |
    #                     <a>DescribeFleetLocationCapacity</a> |
    #                     <a>DescribeFleetLocationUtilization</a> |
    #                     <a>DescribeFleetAttributes</a> |
    #                     <a>DescribeFleetCapacity</a> |
    #                     <a>DescribeFleetUtilization</a> |
    #                     <a>UpdateFleetCapacity</a> |
    #                     <a>StopFleetActions</a> |
    #                     <a>DeleteFleetLocations</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::CreateFleetLocationsInput}.
    #
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to add locations to. You can use either the fleet ID or ARN value.</p>
    #
    # @option params [Array<LocationConfiguration>] :locations
    #   <p>A list of locations to deploy additional instances to and manage as part of the fleet.
    #               You can add any GameLift-supported Amazon Web Services Region as a remote location, in the form of an Amazon Web Services
    #               Region code such as <code>us-west-2</code>. </p>
    #
    # @return [Types::CreateFleetLocationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_fleet_locations(
    #     fleet_id: 'FleetId', # required
    #     locations: [
    #       {
    #         location: 'Location'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFleetLocationsOutput
    #   resp.data.fleet_id #=> String
    #   resp.data.fleet_arn #=> String
    #   resp.data.location_states #=> Array<LocationState>
    #   resp.data.location_states[0] #=> Types::LocationState
    #   resp.data.location_states[0].location #=> String
    #   resp.data.location_states[0].status #=> String, one of ["NEW", "DOWNLOADING", "VALIDATING", "BUILDING", "ACTIVATING", "ACTIVE", "DELETING", "ERROR", "TERMINATED"]
    #
    def create_fleet_locations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFleetLocationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFleetLocationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFleetLocations
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedRegionException, Errors::NotFoundException, Errors::InvalidFleetStatusException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateFleetLocations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFleetLocations,
        stubs: @stubs,
        params_class: Params::CreateFleetLocationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_fleet_locations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             <b>This operation is used with the GameLift FleetIQ solution and game server groups.</b>
    #          </p>
    #         <p>Creates a GameLift FleetIQ game server group for managing game hosting on a collection of
    #             Amazon Elastic Compute Cloud instances for game hosting. This operation creates the game server group,
    #             creates an Auto Scaling group in your Amazon Web Services account, and establishes a link between the
    #             two groups. You can view the status of your game server groups in the GameLift console.
    #             Game server group metrics and events are emitted to Amazon CloudWatch.</p>
    #         <p>Before creating a new game server group, you must have the following: </p>
    #         <ul>
    #             <li>
    #                 <p>An Amazon Elastic Compute Cloud launch template that specifies how to launch Amazon Elastic Compute Cloud instances
    #                     with your game server build. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html"> Launching an Instance from a Launch Template</a> in the
    #                         <i>Amazon Elastic Compute Cloud User Guide</i>. </p>
    #             </li>
    #             <li>
    #                <p>An IAM role that extends limited access to your Amazon Web Services account to allow GameLift FleetIQ to create and
    #                     interact with the Auto Scaling group. For more information, see <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-iam-permissions-roles.html">Create IAM roles for cross-service interaction</a> in the <i>GameLift FleetIQ Developer
    #                         Guide</i>.</p>
    #             </li>
    #          </ul>
    #         <p>To create a new game server group, specify a unique group name, IAM role and Amazon Elastic Compute Cloud
    #             launch template, and provide a list of instance types that can be used in the group. You
    #             must also set initial maximum and minimum limits on the group's instance count. You can
    #             optionally set an Auto Scaling policy with target tracking based on a GameLift FleetIQ
    #             metric.</p>
    #         <p>Once the game server group and corresponding Auto Scaling group are created, you have
    #             full access to change the Auto Scaling group's configuration as needed. Several
    #             properties that are set when creating a game server group, including maximum/minimum
    #             size and auto-scaling policy settings, must be updated directly in the Auto Scaling
    #             group. Keep in mind that some Auto Scaling group properties are periodically updated by
    #             GameLift FleetIQ as part of its balancing activities to optimize for availability and
    #             cost.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html">GameLift FleetIQ Guide</a>
    #         </p>
    #
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateGameServerGroup</a> |
    #                     <a>ListGameServerGroups</a> |
    #                     <a>DescribeGameServerGroup</a> |
    #                     <a>UpdateGameServerGroup</a> |
    #                     <a>DeleteGameServerGroup</a> |
    #                     <a>ResumeGameServerGroup</a> |
    #                     <a>SuspendGameServerGroup</a> |
    #                     <a>DescribeGameServerInstances</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::CreateGameServerGroupInput}.
    #
    # @option params [String] :game_server_group_name
    #   <p>An identifier for the new game server group. This value is used to generate unique ARN
    #               identifiers for the Amazon EC2 Auto Scaling group and the GameLift FleetIQ game server group. The name
    #               must be unique per Region per Amazon Web Services account.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) for an IAM role that
    #               allows Amazon GameLift to access your Amazon EC2 Auto Scaling groups.</p>
    #
    # @option params [Integer] :min_size
    #   <p>The minimum number of instances allowed in the Amazon EC2 Auto Scaling group. During
    #               automatic scaling events, GameLift FleetIQ and Amazon EC2 do not scale down the group below this
    #               minimum. In production, this value should be set to at least 1. After the Auto Scaling
    #               group is created, update this value directly in the Auto Scaling group using the Amazon Web Services
    #               console or APIs.</p>
    #
    # @option params [Integer] :max_size
    #   <p>The maximum number of instances allowed in the Amazon EC2 Auto Scaling group. During
    #               automatic scaling events, GameLift FleetIQ and EC2 do not scale up the group above this maximum.
    #               After the Auto Scaling group is created, update this value directly in the Auto Scaling
    #               group using the Amazon Web Services console or APIs.</p>
    #
    # @option params [LaunchTemplateSpecification] :launch_template
    #   <p>The Amazon EC2 launch template that contains configuration settings and game server code to
    #               be deployed to all instances in the game server group. You can specify the template
    #               using either the template name or ID. For help with creating a launch template, see
    #                   <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-launch-template.html">Creating a Launch
    #                   Template for an Auto Scaling Group</a> in the <i>Amazon Elastic Compute Cloud Auto Scaling
    #                   User Guide</i>. After the Auto Scaling group is created, update this value
    #               directly in the Auto Scaling group using the Amazon Web Services console or APIs.</p>
    #           <note>
    #               <p>If you specify network interfaces in your launch template, you must explicitly set
    #                   the property <code>AssociatePublicIpAddress</code> to "true". If no network
    #                   interface is specified in the launch template,  GameLift FleetIQ uses your account's default
    #                   VPC.</p>
    #           </note>
    #
    # @option params [Array<InstanceDefinition>] :instance_definitions
    #   <p>The Amazon EC2 instance types and sizes to use in the Auto Scaling group. The instance
    #               definitions must specify at least two different instance types that are supported by
    #               GameLift FleetIQ. For more information on instance types, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">EC2 Instance Types</a> in the
    #                   <i>Amazon Elastic Compute Cloud User Guide</i>. You can optionally specify capacity
    #               weighting for each instance type. If no weight value is specified for an instance type,
    #               it is set to the default value "1". For more information about capacity weighting, see
    #                   <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-weighting.html"> Instance Weighting for
    #                   Amazon EC2 Auto Scaling</a> in the Amazon EC2 Auto Scaling User Guide.</p>
    #
    # @option params [GameServerGroupAutoScalingPolicy] :auto_scaling_policy
    #   <p>Configuration settings to define a scaling policy for the Auto Scaling group that is
    #               optimized for game hosting. The scaling policy uses the metric
    #                   <code>"PercentUtilizedGameServers"</code> to maintain a buffer of idle game servers
    #               that can immediately accommodate new games and players. After the Auto Scaling group is
    #               created, update this value directly in the Auto Scaling group using the Amazon Web Services console or
    #               APIs.</p>
    #
    # @option params [String] :balancing_strategy
    #   <p>Indicates how GameLift FleetIQ balances the use of Spot Instances and On-Demand Instances in the
    #               game server group. Method options include the following:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>SPOT_ONLY</code> - Only Spot Instances are used in the game server group. If Spot
    #                       Instances are unavailable or not viable for game hosting, the game server group
    #                       provides no hosting capacity until Spot Instances can again be used. Until then,
    #                       no new instances are started, and the existing nonviable Spot Instances are
    #                       terminated (after current gameplay ends) and are not replaced.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SPOT_PREFERRED</code> - (default value) Spot Instances are used whenever available in
    #                       the game server group. If Spot Instances are unavailable, the game server group
    #                       continues to provide hosting capacity by falling back to On-Demand Instances.
    #                       Existing nonviable Spot Instances are terminated (after current gameplay ends)
    #                       and are replaced with new On-Demand Instances.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ON_DEMAND_ONLY</code> - Only On-Demand Instances are used in the game
    #                       server group. No Spot Instances are used, even when available, while this
    #                       balancing strategy is in force.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :game_server_protection_policy
    #   <p>A flag that indicates whether instances in the game server group are protected
    #               from early termination. Unprotected instances that have active game servers running might
    #               be terminated during a scale-down event, causing players to be dropped from the game.
    #               Protected instances cannot be terminated while there are active game servers running except
    #               in the event of a forced game server group deletion (see ). An exception to this is with Spot
    #               Instances, which can be terminated by Amazon Web Services regardless of protection status. This property is set to <code>NO_PROTECTION</code> by default.</p>
    #
    # @option params [Array<String>] :vpc_subnets
    #   <p>A list of virtual private cloud (VPC) subnets to use with instances in the game server
    #               group. By default, all GameLift FleetIQ-supported Availability Zones are used. You can use this
    #               parameter to specify VPCs that you've set up. This property cannot be updated after the
    #               game server group is created, and the corresponding Auto Scaling group will always use
    #               the property value that is set with this request, even if the Auto Scaling group is
    #               updated directly.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of labels to assign to the new game server group resource. Tags are
    #               developer-defined key-value pairs. Tagging Amazon Web Services resources is useful for resource
    #               management, access management, and cost allocation. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services
    #                   Resources</a> in the <i>Amazon Web Services General Reference</i>. Once the
    #               resource is created, you can use <a>TagResource</a>, <a>UntagResource</a>, and <a>ListTagsForResource</a> to add, remove,
    #               and view tags, respectively. The maximum tag limit may be lower than stated. See the
    #               Amazon Web Services General Reference for actual tagging limits.</p>
    #
    # @return [Types::CreateGameServerGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_game_server_group(
    #     game_server_group_name: 'GameServerGroupName', # required
    #     role_arn: 'RoleArn', # required
    #     min_size: 1, # required
    #     max_size: 1, # required
    #     launch_template: {
    #       launch_template_id: 'LaunchTemplateId',
    #       launch_template_name: 'LaunchTemplateName',
    #       version: 'Version'
    #     }, # required
    #     instance_definitions: [
    #       {
    #         instance_type: 'c4.large', # required - accepts ["c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge"]
    #         weighted_capacity: 'WeightedCapacity'
    #       }
    #     ], # required
    #     auto_scaling_policy: {
    #       estimated_instance_warmup: 1,
    #       target_tracking_configuration: {
    #         target_value: 1.0 # required
    #       } # required
    #     },
    #     balancing_strategy: 'SPOT_ONLY', # accepts ["SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"]
    #     game_server_protection_policy: 'NO_PROTECTION', # accepts ["NO_PROTECTION", "FULL_PROTECTION"]
    #     vpc_subnets: [
    #       'member'
    #     ],
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateGameServerGroupOutput
    #   resp.data.game_server_group #=> Types::GameServerGroup
    #   resp.data.game_server_group.game_server_group_name #=> String
    #   resp.data.game_server_group.game_server_group_arn #=> String
    #   resp.data.game_server_group.role_arn #=> String
    #   resp.data.game_server_group.instance_definitions #=> Array<InstanceDefinition>
    #   resp.data.game_server_group.instance_definitions[0] #=> Types::InstanceDefinition
    #   resp.data.game_server_group.instance_definitions[0].instance_type #=> String, one of ["c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge"]
    #   resp.data.game_server_group.instance_definitions[0].weighted_capacity #=> String
    #   resp.data.game_server_group.balancing_strategy #=> String, one of ["SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"]
    #   resp.data.game_server_group.game_server_protection_policy #=> String, one of ["NO_PROTECTION", "FULL_PROTECTION"]
    #   resp.data.game_server_group.auto_scaling_group_arn #=> String
    #   resp.data.game_server_group.status #=> String, one of ["NEW", "ACTIVATING", "ACTIVE", "DELETE_SCHEDULED", "DELETING", "DELETED", "ERROR"]
    #   resp.data.game_server_group.status_reason #=> String
    #   resp.data.game_server_group.suspended_actions #=> Array<String>
    #   resp.data.game_server_group.suspended_actions[0] #=> String, one of ["REPLACE_INSTANCE_TYPES"]
    #   resp.data.game_server_group.creation_time #=> Time
    #   resp.data.game_server_group.last_updated_time #=> Time
    #
    def create_game_server_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateGameServerGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateGameServerGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateGameServerGroup
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::LimitExceededException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateGameServerGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateGameServerGroup,
        stubs: @stubs,
        params_class: Params::CreateGameServerGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_game_server_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a multiplayer game session for players in a specific fleet location. This
    #             operation prompts an available server process to start a game session and retrieves
    #             connection information for the new game session. As an alternative, consider using the
    #             GameLift game session placement feature with </p>
    #         <p>with <a>StartGameSessionPlacement</a>, which uses FleetIQ algorithms and
    #             queues to optimize the placement process.</p>
    #         <p>When creating a game session, you specify exactly where you want to place it and
    #             provide a set of game session configuration settings. The fleet must be in
    #                 <code>ACTIVE</code> status before a game session can be created in it. </p>
    #         <p>This operation can be used in the following ways: </p>
    #         <ul>
    #             <li>
    #                 <p>To create a game session on an instance in a fleet's home Region, provide a
    #                     fleet or alias ID along with your game session configuration. </p>
    #             </li>
    #             <li>
    #                 <p>To create a game session on an instance in a fleet's remote location, provide
    #                     a fleet or alias ID and a location name, along with your game session
    #                     configuration. </p>
    #             </li>
    #          </ul>
    #         <p>If successful, a workflow is initiated to start a new game session. A
    #                 <code>GameSession</code> object is returned containing the game session
    #             configuration and status. When the status is <code>ACTIVE</code>, game session
    #             connection information is provided and player sessions can be created for the game
    #             session. By default, newly created game sessions are open to new players. You can
    #             restrict new player access by using <a>UpdateGameSession</a> to change the
    #             game session's player session creation policy.</p>
    #         <p>Game session logs are retained for all active game sessions for 14 days. To access the
    #             logs, call <a>GetGameSessionLogUrl</a> to download the log files.</p>
    #         <p>
    #             <i>Available in Amazon GameLift Local.</i>
    #          </p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession">Start a game session</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateGameSession</a> |
    #                     <a>DescribeGameSessions</a> |
    #                     <a>DescribeGameSessionDetails</a> |
    #                     <a>SearchGameSessions</a> |
    #                     <a>UpdateGameSession</a> |
    #                     <a>GetGameSessionLogUrl</a> |
    #                     <a>StartGameSessionPlacement</a> |
    #                     <a>DescribeGameSessionPlacement</a> |
    #                     <a>StopGameSessionPlacement</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::CreateGameSessionInput}.
    #
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to create a game session in. You can use either the fleet ID or ARN value. Each
    #               request must reference either a fleet ID or alias ID, but not both.</p>
    #
    # @option params [String] :alias_id
    #   <p>A unique identifier for the alias associated with the fleet to create a game session in. You can use either the
    #               alias ID or ARN value. Each request must reference either a fleet ID or alias ID, but
    #               not both.</p>
    #
    # @option params [Integer] :maximum_player_session_count
    #   <p>The maximum number of players that can be connected simultaneously to the game session.</p>
    #
    # @option params [String] :name
    #   <p>A descriptive label that is associated with a game session. Session names do not need to be unique.</p>
    #
    # @option params [Array<GameProperty>] :game_properties
    #   <p>A set of custom properties for a game session, formatted as key:value pairs. These properties are passed to a game server process in the
    #       <a>GameSession</a> object with a request to start a new game session (see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession">Start a Game Session</a>).</p>
    #
    # @option params [String] :creator_id
    #   <p>A unique identifier for a player or entity creating the game session. This parameter is required when
    #               requesting a new game session on a fleet with a resource creation limit policy. This
    #               type of policy limits the number of concurrent active game sessions that one player can
    #               create within a certain time span. GameLift uses the CreatorId to evaluate the new
    #               request against the policy.</p>
    #
    # @option params [String] :game_session_id
    #   <p>
    #               <i>This parameter is no longer preferred. Please use
    #                       <code>IdempotencyToken</code> instead.</i> Custom string that uniquely
    #               identifies a request for a new game session. Maximum token length is 48 characters. If
    #               provided, this string is included in the new game session's ID.</p>
    #
    # @option params [String] :idempotency_token
    #   <p>Custom string that uniquely identifies the new game session request.  This is useful
    #               for ensuring that game session requests with the same idempotency token are processed
    #               only once. Subsequent requests with the same string return the original
    #                   <code>GameSession</code> object, with an updated status. Maximum token length is 48
    #               characters. If provided, this string is included in the new game session's ID.
    #               A game session ARN has the following format:
    #       <code>arn:aws:gamelift:<region>::gamesession/<fleet ID>/<custom ID string or idempotency token></code>. Idempotency tokens remain in use for 30 days after a game session has ended;
    #               game session objects are retained for this time period and then deleted.</p>
    #
    # @option params [String] :game_session_data
    #   <p>A set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the
    #       <a>GameSession</a> object with a request to start a new game session (see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession">Start a Game Session</a>).</p>
    #
    # @option params [String] :location
    #   <p>A fleet's remote location to place the new game session in. If this parameter is not
    #               set, the new game session is placed in the fleet's home Region. Specify a remote
    #               location with an Amazon Web Services Region code such as <code>us-west-2</code>.  </p>
    #
    # @return [Types::CreateGameSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_game_session(
    #     fleet_id: 'FleetId',
    #     alias_id: 'AliasId',
    #     maximum_player_session_count: 1, # required
    #     name: 'Name',
    #     game_properties: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     creator_id: 'CreatorId',
    #     game_session_id: 'GameSessionId',
    #     idempotency_token: 'IdempotencyToken',
    #     game_session_data: 'GameSessionData',
    #     location: 'Location'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateGameSessionOutput
    #   resp.data.game_session #=> Types::GameSession
    #   resp.data.game_session.game_session_id #=> String
    #   resp.data.game_session.name #=> String
    #   resp.data.game_session.fleet_id #=> String
    #   resp.data.game_session.fleet_arn #=> String
    #   resp.data.game_session.creation_time #=> Time
    #   resp.data.game_session.termination_time #=> Time
    #   resp.data.game_session.current_player_session_count #=> Integer
    #   resp.data.game_session.maximum_player_session_count #=> Integer
    #   resp.data.game_session.status #=> String, one of ["ACTIVE", "ACTIVATING", "TERMINATED", "TERMINATING", "ERROR"]
    #   resp.data.game_session.status_reason #=> String, one of ["INTERRUPTED"]
    #   resp.data.game_session.game_properties #=> Array<GameProperty>
    #   resp.data.game_session.game_properties[0] #=> Types::GameProperty
    #   resp.data.game_session.game_properties[0].key #=> String
    #   resp.data.game_session.game_properties[0].value #=> String
    #   resp.data.game_session.ip_address #=> String
    #   resp.data.game_session.dns_name #=> String
    #   resp.data.game_session.port #=> Integer
    #   resp.data.game_session.player_session_creation_policy #=> String, one of ["ACCEPT_ALL", "DENY_ALL"]
    #   resp.data.game_session.creator_id #=> String
    #   resp.data.game_session.game_session_data #=> String
    #   resp.data.game_session.matchmaker_data #=> String
    #   resp.data.game_session.location #=> String
    #
    def create_game_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateGameSessionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateGameSessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateGameSession
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedRegionException, Errors::ConflictException, Errors::LimitExceededException, Errors::NotFoundException, Errors::InvalidFleetStatusException, Errors::TerminalRoutingStrategyException, Errors::UnauthorizedException, Errors::FleetCapacityExceededException, Errors::InternalServiceException, Errors::InvalidRequestException, Errors::IdempotentParameterMismatchException]),
        data_parser: Parsers::CreateGameSession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateGameSession,
        stubs: @stubs,
        params_class: Params::CreateGameSessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_game_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a placement queue that processes requests for new game sessions. A queue uses
    #             FleetIQ algorithms to determine the best placement locations and find an
    #             available game server there, then prompts the game server process to start a new game
    #             session. </p>
    #         <p>A game session queue is configured with a set of destinations (GameLift fleets or
    #             aliases), which determine the locations where the queue can place new game sessions.
    #             These destinations can span multiple fleet types (Spot and On-Demand), instance types,
    #             and Amazon Web Services Regions. If the queue includes multi-location fleets, the queue is able to place
    #             game sessions in all of a fleet's remote locations. You can opt to filter out individual
    #             locations if needed.</p>
    #         <p>The queue configuration also determines how FleetIQ selects the best available placement
    #             for a new game session. Before searching for an available game server, FleetIQ first
    #             prioritizes the queue's destinations and locations, with the best placement locations on
    #             top. You can set up the queue to use the FleetIQ default prioritization or provide an
    #             alternate set of priorities.</p>
    #         <p>To create a new queue, provide a name, timeout value, and a list of destinations.
    #             Optionally, specify a sort configuration and/or a filter, and define a set of latency
    #             cap policies. You can also include the ARN for an Amazon Simple Notification Service
    #             (SNS) topic to receive notifications of game session placement activity. Notifications
    #             using SNS or CloudWatch events is the preferred way to track placement activity.</p>
    #         <p>If successful, a new <code>GameSessionQueue</code> object is returned with an assigned
    #             queue ARN. New game session requests, which are submitted to queue with
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartGameSessionPlacement.html">StartGameSessionPlacement</a>
    #             or
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartMatchmaking.html">StartMatchmaking</a>,
    #             reference a queue's name or ARN. </p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-design.html">
    #             Design a game session queue</a>
    #         </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-creating.html">
    #             Create a game session queue</a>
    #         </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateGameSessionQueue.html">CreateGameSessionQueue</a>
    #                     |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeGameSessionQueues.html">DescribeGameSessionQueues</a>
    #                     |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateGameSessionQueue.html">UpdateGameSessionQueue</a>
    #                     |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DeleteGameSessionQueue.html">DeleteGameSessionQueue</a>
    #                     |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::CreateGameSessionQueueInput}.
    #
    # @option params [String] :name
    #   <p>A descriptive label that is associated with game session queue. Queue names must be unique within each Region.</p>
    #
    # @option params [Integer] :timeout_in_seconds
    #   <p>The maximum time, in seconds, that a new game session placement request remains in the queue. When a request exceeds this time, the game session placement changes to a <code>TIMED_OUT</code> status.</p>
    #
    # @option params [Array<PlayerLatencyPolicy>] :player_latency_policies
    #   <p>A set of policies that act as a sliding cap on player latency. FleetIQ works to
    #               deliver low latency for most players in a game session. These policies ensure that no
    #               individual player can be placed into a game with unreasonably high latency. Use multiple
    #               policies to gradually relax latency requirements a step at a time. Multiple policies are applied based on their
    #               maximum allowed latency, starting with the lowest value.</p>
    #
    # @option params [Array<GameSessionQueueDestination>] :destinations
    #   <p>A list of fleets and/or fleet aliases that can be used to fulfill game session placement requests in the queue.
    #       Destinations are identified by either a fleet ARN or a fleet alias ARN, and are listed in order of placement preference.</p>
    #
    # @option params [FilterConfiguration] :filter_configuration
    #   <p>A list of locations where a queue is allowed to place new game sessions. Locations
    #               are specified in the form of Amazon Web Services Region codes, such as <code>us-west-2</code>. If this parameter is
    #               not set, game sessions can be placed in any queue location. </p>
    #
    # @option params [PriorityConfiguration] :priority_configuration
    #   <p>Custom settings to use when prioritizing destinations and locations for game session placements. This
    #               configuration replaces the FleetIQ default prioritization process. Priority types that are not explicitly
    #               named will be automatically applied at the end of the prioritization process. </p>
    #
    # @option params [String] :custom_event_data
    #   <p>
    #               Information to be added to all events that are related to this game session queue.
    #           </p>
    #
    # @option params [String] :notification_target
    #   <p>An SNS topic ARN that is set up to receive game session placement notifications. See <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/queue-notification.html">
    #               Setting up notifications for game session placement</a>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of labels to assign to the new game session queue resource. Tags are developer-defined
    #               key-value pairs. Tagging
    #               Amazon Web Services resources are useful for resource management, access management and cost allocation.
    #               For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a> in the
    #               <i>Amazon Web Services General Reference</i>. Once the resource is created, you can
    #               use <a>TagResource</a>, <a>UntagResource</a>, and
    #               <a>ListTagsForResource</a> to add, remove, and view tags. The
    #               maximum tag limit may be lower than stated. See the Amazon Web Services General Reference for actual
    #               tagging limits.</p>
    #
    # @return [Types::CreateGameSessionQueueOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_game_session_queue(
    #     name: 'Name', # required
    #     timeout_in_seconds: 1,
    #     player_latency_policies: [
    #       {
    #         maximum_individual_player_latency_milliseconds: 1,
    #         policy_duration_seconds: 1
    #       }
    #     ],
    #     destinations: [
    #       {
    #         destination_arn: 'DestinationArn'
    #       }
    #     ],
    #     filter_configuration: {
    #       allowed_locations: [
    #         'member'
    #       ]
    #     },
    #     priority_configuration: {
    #       priority_order: [
    #         'LATENCY' # accepts ["LATENCY", "COST", "DESTINATION", "LOCATION"]
    #       ],
    #     },
    #     custom_event_data: 'CustomEventData',
    #     notification_target: 'NotificationTarget',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateGameSessionQueueOutput
    #   resp.data.game_session_queue #=> Types::GameSessionQueue
    #   resp.data.game_session_queue.name #=> String
    #   resp.data.game_session_queue.game_session_queue_arn #=> String
    #   resp.data.game_session_queue.timeout_in_seconds #=> Integer
    #   resp.data.game_session_queue.player_latency_policies #=> Array<PlayerLatencyPolicy>
    #   resp.data.game_session_queue.player_latency_policies[0] #=> Types::PlayerLatencyPolicy
    #   resp.data.game_session_queue.player_latency_policies[0].maximum_individual_player_latency_milliseconds #=> Integer
    #   resp.data.game_session_queue.player_latency_policies[0].policy_duration_seconds #=> Integer
    #   resp.data.game_session_queue.destinations #=> Array<GameSessionQueueDestination>
    #   resp.data.game_session_queue.destinations[0] #=> Types::GameSessionQueueDestination
    #   resp.data.game_session_queue.destinations[0].destination_arn #=> String
    #   resp.data.game_session_queue.filter_configuration #=> Types::FilterConfiguration
    #   resp.data.game_session_queue.filter_configuration.allowed_locations #=> Array<String>
    #   resp.data.game_session_queue.filter_configuration.allowed_locations[0] #=> String
    #   resp.data.game_session_queue.priority_configuration #=> Types::PriorityConfiguration
    #   resp.data.game_session_queue.priority_configuration.priority_order #=> Array<String>
    #   resp.data.game_session_queue.priority_configuration.priority_order[0] #=> String, one of ["LATENCY", "COST", "DESTINATION", "LOCATION"]
    #   resp.data.game_session_queue.priority_configuration.location_order #=> Array<String>
    #   resp.data.game_session_queue.custom_event_data #=> String
    #   resp.data.game_session_queue.notification_target #=> String
    #
    def create_game_session_queue(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateGameSessionQueueInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateGameSessionQueueInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateGameSessionQueue
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NotFoundException, Errors::TaggingFailedException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateGameSessionQueue
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateGameSessionQueue,
        stubs: @stubs,
        params_class: Params::CreateGameSessionQueueOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_game_session_queue
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Defines a new matchmaking configuration for use with FlexMatch. Whether your are using
    #             FlexMatch with GameLift hosting or as a standalone matchmaking service, the matchmaking
    #             configuration sets out rules for matching players and forming teams. If you're also
    #             using GameLift hosting, it defines how to start game sessions for each match. Your
    #             matchmaking system can use multiple configurations to handle different game scenarios.
    #             All matchmaking requests (<a>StartMatchmaking</a> or <a>StartMatchBackfill</a>) identify the matchmaking configuration to use and
    #             provide player attributes consistent with that configuration. </p>
    #         <p>To create a matchmaking configuration, you must provide the following: configuration
    #             name and FlexMatch mode (with or without GameLift hosting); a rule set that specifies how
    #             to evaluate players and find acceptable matches; whether player acceptance is required;
    #             and the maximum time allowed for a matchmaking attempt. When using FlexMatch with GameLift
    #             hosting, you also need to identify the game session queue to use when starting a game
    #             session for the match.</p>
    #         <p>In addition, you must set up an Amazon Simple Notification Service topic to receive matchmaking notifications.
    #             Provide the topic ARN in the matchmaking configuration. An alternative method,
    #             continuously polling ticket status with <a>DescribeMatchmaking</a>, is only
    #             suitable for games in development with low matchmaking usage.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-configuration.html">
    #                 Design a FlexMatch matchmaker</a>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html">
    #             Set up FlexMatch event notification</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateMatchmakingConfiguration</a> |
    #                     <a>DescribeMatchmakingConfigurations</a> |
    #                     <a>UpdateMatchmakingConfiguration</a> |
    #                     <a>DeleteMatchmakingConfiguration</a> |
    #                     <a>CreateMatchmakingRuleSet</a> |
    #                     <a>DescribeMatchmakingRuleSets</a> |
    #                     <a>ValidateMatchmakingRuleSet</a> |
    #                     <a>DeleteMatchmakingRuleSet</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::CreateMatchmakingConfigurationInput}.
    #
    # @option params [String] :name
    #   <p>A unique identifier for the matchmaking configuration. This name is used to identify the configuration associated with a
    #               matchmaking request or ticket.</p>
    #
    # @option params [String] :description
    #   <p>A human-readable description of the matchmaking configuration. </p>
    #
    # @option params [Array<String>] :game_session_queue_arns
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a GameLift game session queue resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::gamesessionqueue/<queue name></code>. Queues can be located in any Region. Queues are used to start new
    #               GameLift-hosted game sessions for matches that are created with this matchmaking
    #               configuration. If <code>FlexMatchMode</code> is set to <code>STANDALONE</code>, do not
    #               set this parameter.  </p>
    #
    # @option params [Integer] :request_timeout_seconds
    #   <p>The maximum duration, in seconds, that a matchmaking ticket can remain in process
    #               before timing out. Requests that fail due to timing out can be resubmitted as
    #               needed.</p>
    #
    # @option params [Integer] :acceptance_timeout_seconds
    #   <p>The length of time (in seconds) to wait for players to accept a proposed match, if
    #               acceptance is required. </p>
    #
    # @option params [Boolean] :acceptance_required
    #   <p>A flag that determines whether a match that was created with this configuration must
    #               be accepted by the matched players. To require acceptance, set to <code>TRUE</code>.
    #               With this option enabled, matchmaking tickets use the status
    #               <code>REQUIRES_ACCEPTANCE</code> to indicate when a completed potential match is
    #               waiting for player acceptance. </p>
    #
    # @option params [String] :rule_set_name
    #   <p>A unique identifier for the matchmaking rule set to use with this configuration. You can use either the rule set name or ARN
    #               value. A matchmaking configuration can only use rule sets that are defined in the same
    #               Region.</p>
    #
    # @option params [String] :notification_target
    #   <p>An SNS topic ARN that is set up to receive matchmaking notifications. See <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html">
    #               Setting up notifications for matchmaking</a> for more information.</p>
    #
    # @option params [Integer] :additional_player_count
    #   <p>The number of player slots in a match to keep open for future players. For example, if the configuration's rule set specifies
    #               a match for a single 12-person team, and the additional player count is set to 2, only 10 players are selected for the match. This parameter is not used if <code>FlexMatchMode</code> is set to
    #               <code>STANDALONE</code>.</p>
    #
    # @option params [String] :custom_event_data
    #   <p>Information to be added to all events related to this matchmaking configuration.
    #           </p>
    #
    # @option params [Array<GameProperty>] :game_properties
    #   <p>A set of custom properties for a game session, formatted as key:value pairs. These properties are passed to a game server process in the
    #       <a>GameSession</a> object with a request to start a new game session (see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession">Start a Game Session</a>). This information is added to the new <a>GameSession</a>
    #               object that is created for a successful match. This parameter is not used if
    #               <code>FlexMatchMode</code> is set to <code>STANDALONE</code>.</p>
    #
    # @option params [String] :game_session_data
    #   <p>A set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the
    #       <a>GameSession</a> object with a request to start a new game session (see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession">Start a Game Session</a>). This information is added to the new <a>GameSession</a> object
    #               that is created for a successful match. This parameter is not used if
    #               <code>FlexMatchMode</code> is set to <code>STANDALONE</code>.</p>
    #
    # @option params [String] :backfill_mode
    #   <p>The method used to backfill game sessions that are created with this matchmaking
    #               configuration. Specify <code>MANUAL</code> when your game manages backfill requests
    #               manually or does not use the match backfill feature. Specify <code>AUTOMATIC</code> to
    #               have GameLift create a <a>StartMatchBackfill</a> request whenever a game
    #               session has one or more open slots. Learn more about manual and automatic backfill in
    #               <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-backfill.html"> Backfill Existing Games with FlexMatch</a>. Automatic backfill is not
    #               available when <code>FlexMatchMode</code> is set to <code>STANDALONE</code>.</p>
    #
    # @option params [String] :flex_match_mode
    #   <p>Indicates whether this matchmaking configuration is being used with GameLift hosting or
    #               as a standalone matchmaking solution. </p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <b>STANDALONE</b> - FlexMatch forms matches and returns
    #                   match information, including players and team assignments, in a
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-events.html#match-events-matchmakingsucceeded">
    #                       MatchmakingSucceeded</a> event.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>WITH_QUEUE</b> - FlexMatch forms matches and uses the specified GameLift queue to
    #                   start a game session for the match. </p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of labels to assign to the new matchmaking configuration resource. Tags are developer-defined
    #               key-value pairs. Tagging
    #               Amazon Web Services resources are useful for resource management, access management and cost allocation.
    #               For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a> in the
    #               <i>Amazon Web Services General Reference</i>. Once the resource is created, you can
    #               use <a>TagResource</a>, <a>UntagResource</a>, and
    #               <a>ListTagsForResource</a> to add, remove, and view tags. The
    #               maximum tag limit may be lower than stated. See the Amazon Web Services General Reference for actual
    #               tagging limits.</p>
    #
    # @return [Types::CreateMatchmakingConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_matchmaking_configuration(
    #     name: 'Name', # required
    #     description: 'Description',
    #     game_session_queue_arns: [
    #       'member'
    #     ],
    #     request_timeout_seconds: 1, # required
    #     acceptance_timeout_seconds: 1,
    #     acceptance_required: false, # required
    #     rule_set_name: 'RuleSetName', # required
    #     notification_target: 'NotificationTarget',
    #     additional_player_count: 1,
    #     custom_event_data: 'CustomEventData',
    #     game_properties: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     game_session_data: 'GameSessionData',
    #     backfill_mode: 'AUTOMATIC', # accepts ["AUTOMATIC", "MANUAL"]
    #     flex_match_mode: 'STANDALONE', # accepts ["STANDALONE", "WITH_QUEUE"]
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateMatchmakingConfigurationOutput
    #   resp.data.configuration #=> Types::MatchmakingConfiguration
    #   resp.data.configuration.name #=> String
    #   resp.data.configuration.configuration_arn #=> String
    #   resp.data.configuration.description #=> String
    #   resp.data.configuration.game_session_queue_arns #=> Array<String>
    #   resp.data.configuration.game_session_queue_arns[0] #=> String
    #   resp.data.configuration.request_timeout_seconds #=> Integer
    #   resp.data.configuration.acceptance_timeout_seconds #=> Integer
    #   resp.data.configuration.acceptance_required #=> Boolean
    #   resp.data.configuration.rule_set_name #=> String
    #   resp.data.configuration.rule_set_arn #=> String
    #   resp.data.configuration.notification_target #=> String
    #   resp.data.configuration.additional_player_count #=> Integer
    #   resp.data.configuration.custom_event_data #=> String
    #   resp.data.configuration.creation_time #=> Time
    #   resp.data.configuration.game_properties #=> Array<GameProperty>
    #   resp.data.configuration.game_properties[0] #=> Types::GameProperty
    #   resp.data.configuration.game_properties[0].key #=> String
    #   resp.data.configuration.game_properties[0].value #=> String
    #   resp.data.configuration.game_session_data #=> String
    #   resp.data.configuration.backfill_mode #=> String, one of ["AUTOMATIC", "MANUAL"]
    #   resp.data.configuration.flex_match_mode #=> String, one of ["STANDALONE", "WITH_QUEUE"]
    #
    def create_matchmaking_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateMatchmakingConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateMatchmakingConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateMatchmakingConfiguration
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedRegionException, Errors::LimitExceededException, Errors::NotFoundException, Errors::TaggingFailedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateMatchmakingConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateMatchmakingConfiguration,
        stubs: @stubs,
        params_class: Params::CreateMatchmakingConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_matchmaking_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new rule set for FlexMatch matchmaking. A rule set describes the type of match
    #             to create, such as the number and size of teams. It also sets the parameters for
    #             acceptable player matches, such as minimum skill level or character type. A rule set is
    #             used by a <a>MatchmakingConfiguration</a>. </p>
    #         <p>To create a matchmaking rule set, provide unique rule set name and the rule set body
    #             in JSON format. Rule sets must be defined in the same Region as the matchmaking
    #             configuration they are used with.</p>
    #         <p>Since matchmaking rule sets cannot be edited, it is a good idea to check the rule
    #             set syntax using <a>ValidateMatchmakingRuleSet</a> before creating a new rule
    #             set.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-rulesets.html">Build a rule
    #                         set</a>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-configuration.html">Design a
    #                         matchmaker</a>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-intro.html">Matchmaking with
    #                         FlexMatch</a>
    #                </p>
    #             </li>
    #          </ul>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateMatchmakingConfiguration</a> |
    #                     <a>DescribeMatchmakingConfigurations</a> |
    #                     <a>UpdateMatchmakingConfiguration</a> |
    #                     <a>DeleteMatchmakingConfiguration</a> |
    #                     <a>CreateMatchmakingRuleSet</a> |
    #                     <a>DescribeMatchmakingRuleSets</a> |
    #                     <a>ValidateMatchmakingRuleSet</a> |
    #                     <a>DeleteMatchmakingRuleSet</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::CreateMatchmakingRuleSetInput}.
    #
    # @option params [String] :name
    #   <p>A unique identifier for the matchmaking rule set. A matchmaking configuration identifies the rule set it uses by this name
    #               value. Note that the rule set name is different from the optional <code>name</code>
    #               field in the rule set body.</p>
    #
    # @option params [String] :rule_set_body
    #   <p>A collection of matchmaking rules, formatted as a JSON string. Comments are not
    #               allowed in JSON, but most elements support a description field.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of labels to assign to the new matchmaking rule set resource. Tags are developer-defined
    #               key-value pairs. Tagging
    #               Amazon Web Services resources are useful for resource management, access management and cost allocation.
    #               For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a> in the
    #               <i>Amazon Web Services General Reference</i>. Once the resource is created, you can
    #               use <a>TagResource</a>, <a>UntagResource</a>, and
    #               <a>ListTagsForResource</a> to add, remove, and view tags. The
    #               maximum tag limit may be lower than stated. See the Amazon Web Services General Reference for actual
    #               tagging limits.</p>
    #
    # @return [Types::CreateMatchmakingRuleSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_matchmaking_rule_set(
    #     name: 'Name', # required
    #     rule_set_body: 'RuleSetBody', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateMatchmakingRuleSetOutput
    #   resp.data.rule_set #=> Types::MatchmakingRuleSet
    #   resp.data.rule_set.rule_set_name #=> String
    #   resp.data.rule_set.rule_set_arn #=> String
    #   resp.data.rule_set.rule_set_body #=> String
    #   resp.data.rule_set.creation_time #=> Time
    #
    def create_matchmaking_rule_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateMatchmakingRuleSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateMatchmakingRuleSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateMatchmakingRuleSet
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedRegionException, Errors::TaggingFailedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateMatchmakingRuleSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateMatchmakingRuleSet,
        stubs: @stubs,
        params_class: Params::CreateMatchmakingRuleSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_matchmaking_rule_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Reserves an open player slot in a game session for a player. New player sessions can be
    #             created in any game session with an open slot that is in <code>ACTIVE</code> status and
    #             has a player creation policy of <code>ACCEPT_ALL</code>. You can add a group of players
    #             to a game session with <a>CreatePlayerSessions</a>. </p>
    #          <p>To create a player session, specify a game session ID, player ID, and optionally a set of
    #             player data. </p>
    #         <p>If successful, a slot is reserved in the game session for the player and a new <a>PlayerSession</a> object is returned with a player session ID. The player
    #             references the player session ID when sending a connection request to the game session,
    #             and the game server can use it to validate the player reservation with the GameLift service. Player
    #             sessions cannot be updated. </p>
    #          <p>The maximum number of players per game session is 200. It is not adjustable.
    #     </p>
    #          <p>
    #             <i>Available in Amazon GameLift Local.</i>
    #          </p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreatePlayerSession</a> |
    #                     <a>CreatePlayerSessions</a> |
    #                     <a>DescribePlayerSessions</a> |
    #                     <a>StartGameSessionPlacement</a> |
    #                     <a>DescribeGameSessionPlacement</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::CreatePlayerSessionInput}.
    #
    # @option params [String] :game_session_id
    #   <p>A unique identifier for the game session to add a player to.</p>
    #
    # @option params [String] :player_id
    #   <p>A unique identifier for a player. Player IDs are developer-defined.</p>
    #
    # @option params [String] :player_data
    #   <p>Developer-defined information related to a player. GameLift does not use this data, so it can be formatted as needed for use in the game.</p>
    #
    # @return [Types::CreatePlayerSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_player_session(
    #     game_session_id: 'GameSessionId', # required
    #     player_id: 'PlayerId', # required
    #     player_data: 'PlayerData'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePlayerSessionOutput
    #   resp.data.player_session #=> Types::PlayerSession
    #   resp.data.player_session.player_session_id #=> String
    #   resp.data.player_session.player_id #=> String
    #   resp.data.player_session.game_session_id #=> String
    #   resp.data.player_session.fleet_id #=> String
    #   resp.data.player_session.fleet_arn #=> String
    #   resp.data.player_session.creation_time #=> Time
    #   resp.data.player_session.termination_time #=> Time
    #   resp.data.player_session.status #=> String, one of ["RESERVED", "ACTIVE", "COMPLETED", "TIMEDOUT"]
    #   resp.data.player_session.ip_address #=> String
    #   resp.data.player_session.dns_name #=> String
    #   resp.data.player_session.port #=> Integer
    #   resp.data.player_session.player_data #=> String
    #
    def create_player_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePlayerSessionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePlayerSessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePlayerSession
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InvalidGameSessionStatusException, Errors::GameSessionFullException, Errors::TerminalRoutingStrategyException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreatePlayerSession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePlayerSession,
        stubs: @stubs,
        params_class: Params::CreatePlayerSessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_player_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Reserves open slots in a game session for a group of players. New player sessions can be
    #             created in any game session with an open slot that is in <code>ACTIVE</code> status and
    #             has a player creation policy of <code>ACCEPT_ALL</code>.  To add a single player to a
    #             game session, use <a>CreatePlayerSession</a>. </p>
    #          <p>To create player sessions, specify a game session ID and a list of player IDs. Optionally,
    #             provide a set of player data for each player ID. </p>
    #         <p>If successful, a slot is reserved in the game session for each player, and new <a>PlayerSession</a> objects are returned with player session IDs. Each player
    #             references their player session ID when sending a connection request to the game
    #             session, and the game server can use it to validate the player reservation with the
    #             GameLift service. Player sessions cannot be updated.</p>
    #          <p>The maximum number of players per game session is 200. It is not adjustable.
    #     </p>
    #          <p>
    #             <i>Available in Amazon GameLift Local.</i>
    #          </p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreatePlayerSession</a> |
    #                     <a>CreatePlayerSessions</a> |
    #                     <a>DescribePlayerSessions</a> |
    #                     <a>StartGameSessionPlacement</a> |
    #                     <a>DescribeGameSessionPlacement</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::CreatePlayerSessionsInput}.
    #
    # @option params [String] :game_session_id
    #   <p>A unique identifier for the game session to add players to.</p>
    #
    # @option params [Array<String>] :player_ids
    #   <p>List of unique identifiers for the players to be added.</p>
    #
    # @option params [Hash<String, String>] :player_data_map
    #   <p>Map of string pairs, each specifying a player ID and a set of developer-defined
    #               information related to the player. Amazon GameLift does not use this data, so it can be formatted
    #               as needed for use in the game. Any player data strings for player IDs that are not
    #               included in the <code>PlayerIds</code> parameter are ignored. </p>
    #
    # @return [Types::CreatePlayerSessionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_player_sessions(
    #     game_session_id: 'GameSessionId', # required
    #     player_ids: [
    #       'member'
    #     ], # required
    #     player_data_map: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePlayerSessionsOutput
    #   resp.data.player_sessions #=> Array<PlayerSession>
    #   resp.data.player_sessions[0] #=> Types::PlayerSession
    #   resp.data.player_sessions[0].player_session_id #=> String
    #   resp.data.player_sessions[0].player_id #=> String
    #   resp.data.player_sessions[0].game_session_id #=> String
    #   resp.data.player_sessions[0].fleet_id #=> String
    #   resp.data.player_sessions[0].fleet_arn #=> String
    #   resp.data.player_sessions[0].creation_time #=> Time
    #   resp.data.player_sessions[0].termination_time #=> Time
    #   resp.data.player_sessions[0].status #=> String, one of ["RESERVED", "ACTIVE", "COMPLETED", "TIMEDOUT"]
    #   resp.data.player_sessions[0].ip_address #=> String
    #   resp.data.player_sessions[0].dns_name #=> String
    #   resp.data.player_sessions[0].port #=> Integer
    #   resp.data.player_sessions[0].player_data #=> String
    #
    def create_player_sessions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePlayerSessionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePlayerSessionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePlayerSessions
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InvalidGameSessionStatusException, Errors::GameSessionFullException, Errors::TerminalRoutingStrategyException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreatePlayerSessions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePlayerSessions,
        stubs: @stubs,
        params_class: Params::CreatePlayerSessionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_player_sessions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new script record for your Realtime Servers script. Realtime scripts are JavaScript that
    #             provide configuration settings and optional custom game logic for your game. The script
    #             is deployed when you create a Realtime Servers fleet to host your game sessions. Script logic is
    #             executed during an active game session. </p>
    #         <p>To create a new script record, specify a script name and provide the script file(s).
    #             The script files and all dependencies must be zipped into a single file. You can pull
    #             the zip file from either of these locations: </p>
    #         <ul>
    #             <li>
    #                <p>A locally available directory. Use the <i>ZipFile</i> parameter for this
    #                     option.</p>
    #             </li>
    #             <li>
    #                <p>An Amazon Simple Storage Service (Amazon S3) bucket under your Amazon Web Services account. Use the
    #                         <i>StorageLocation</i> parameter for this option. You'll need
    #                     to have an Identity Access Management (IAM) role that allows the Amazon GameLift
    #                     service to access your S3 bucket. </p>
    #             </li>
    #          </ul>
    #         <p>If the call is successful, a new script record is created with a unique script ID. If the
    #             script file is provided as a local file, the file is uploaded to an Amazon GameLift-owned S3 bucket
    #             and the script record's storage location reflects this location. If the script file is provided
    #             as an S3 bucket, Amazon GameLift accesses the file at this storage location as needed for deployment.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html">Amazon GameLift Realtime Servers</a>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/setting-up-role.html">Set Up a Role for Amazon GameLift Access</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateScript</a> |
    #                     <a>ListScripts</a> |
    #                     <a>DescribeScript</a> |
    #                     <a>UpdateScript</a> |
    #                     <a>DeleteScript</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::CreateScriptInput}.
    #
    # @option params [String] :name
    #   <p>A descriptive label that is associated with a script. Script names do not need to be unique. You can use <a>UpdateScript</a> to change this value later.
    #           </p>
    #
    # @option params [String] :version
    #   <p>Version information that is associated with a build or script. Version strings do not need to be unique. You can use <a>UpdateScript</a> to change this value later.
    #           </p>
    #
    # @option params [S3Location] :storage_location
    #   <p>The location of the Amazon S3 bucket where a zipped file containing your Realtime scripts is
    #               stored. The storage location must specify the Amazon S3 bucket name, the zip file name (the
    #               "key"), and a role ARN that allows Amazon GameLift to access the Amazon S3 storage location. The S3
    #               bucket must be in the same Region where you want to create a new script. By default,
    #               Amazon GameLift uploads the latest version of the zip file; if you have S3 object versioning
    #               turned on, you can use the <code>ObjectVersion</code> parameter to specify an earlier
    #               version. </p>
    #
    # @option params [String] :zip_file
    #   <p>A data object containing your Realtime scripts and dependencies as a zip file. The zip
    #               file can have one or multiple files. Maximum size of a zip file is 5 MB.</p>
    #           <p>When using the Amazon Web Services CLI tool to create a script, this parameter is set to the zip file name. It must be prepended with the
    #               string "fileb://" to indicate that the file data is a binary object. For example: <code>--zip-file fileb://myRealtimeScript.zip</code>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of labels to assign to the new script resource. Tags are developer-defined
    #               key-value pairs. Tagging
    #               Amazon Web Services resources are useful for resource management, access management and cost allocation.
    #               For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a> in the
    #               <i>Amazon Web Services General Reference</i>. Once the resource is created, you can
    #               use <a>TagResource</a>, <a>UntagResource</a>, and
    #               <a>ListTagsForResource</a> to add, remove, and view tags. The
    #               maximum tag limit may be lower than stated. See the Amazon Web Services General Reference for actual
    #               tagging limits.</p>
    #
    # @return [Types::CreateScriptOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_script(
    #     name: 'Name',
    #     version: 'Version',
    #     storage_location: {
    #       bucket: 'Bucket',
    #       key: 'Key',
    #       role_arn: 'RoleArn',
    #       object_version: 'ObjectVersion'
    #     },
    #     zip_file: 'ZipFile',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateScriptOutput
    #   resp.data.script #=> Types::Script
    #   resp.data.script.script_id #=> String
    #   resp.data.script.script_arn #=> String
    #   resp.data.script.name #=> String
    #   resp.data.script.version #=> String
    #   resp.data.script.size_on_disk #=> Integer
    #   resp.data.script.creation_time #=> Time
    #   resp.data.script.storage_location #=> Types::S3Location
    #   resp.data.script.storage_location.bucket #=> String
    #   resp.data.script.storage_location.key #=> String
    #   resp.data.script.storage_location.role_arn #=> String
    #   resp.data.script.storage_location.object_version #=> String
    #
    def create_script(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateScriptInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateScriptInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateScript
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::TaggingFailedException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateScript
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateScript,
        stubs: @stubs,
        params_class: Params::CreateScriptOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_script
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Requests authorization to create or delete a peer connection between the VPC for
    #             your Amazon GameLift fleet and a virtual private cloud (VPC) in your Amazon Web Services account. VPC peering enables the game
    #             servers on your fleet to communicate directly with other Amazon Web Services resources. Once you've
    #             received authorization, call <a>CreateVpcPeeringConnection</a> to establish
    #             the peering connection. For more information, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html">VPC Peering with Amazon GameLift
    #                 Fleets</a>.</p>
    #         <p>You can peer with VPCs that are owned by any Amazon Web Services account you have access to,
    #             including the account that you use to manage your Amazon GameLift fleets. You cannot peer with
    #             VPCs that are in different Regions.</p>
    #         <p>To request authorization to create a connection, call this operation from the Amazon Web Services
    #             account with the VPC that you want to peer to your Amazon GameLift fleet. For example, to
    #             enable your game servers to retrieve data from a DynamoDB table, use the account that
    #             manages that DynamoDB resource. Identify the following values: (1) The ID of the VPC
    #             that you want to peer with, and (2) the ID of the Amazon Web Services account that you use to manage
    #             Amazon GameLift. If successful, VPC peering is authorized for the specified VPC. </p>
    #         <p>To request authorization to delete a connection, call this operation from the Amazon Web Services
    #             account with the VPC that is peered with your Amazon GameLift fleet. Identify the following
    #             values: (1) VPC ID that you want to delete the peering connection for, and (2) ID of the
    #             Amazon Web Services account that you use to manage Amazon GameLift. </p>
    #         <p>The authorization remains valid for 24 hours unless it is canceled by a call to
    #                 <a>DeleteVpcPeeringAuthorization</a>. You must create or delete the
    #             peering connection while the authorization is valid. </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateVpcPeeringAuthorization</a> |
    #                     <a>DescribeVpcPeeringAuthorizations</a> |
    #                     <a>DeleteVpcPeeringAuthorization</a> |
    #                     <a>CreateVpcPeeringConnection</a> |
    #                     <a>DescribeVpcPeeringConnections</a> |
    #                     <a>DeleteVpcPeeringConnection</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::CreateVpcPeeringAuthorizationInput}.
    #
    # @option params [String] :game_lift_aws_account_id
    #   <p>A unique identifier for the Amazon Web Services account that you use to manage your GameLift fleet.
    #               You can find your Account ID in the Amazon Web Services Management Console under account settings.</p>
    #
    # @option params [String] :peer_vpc_id
    #   <p>A unique identifier for a VPC with resources to be accessed by your GameLift fleet. The
    #               VPC must be in the same Region as your fleet. To look up a VPC ID, use the
    #               <a href="https://console.aws.amazon.com/vpc/">VPC Dashboard</a> in the Amazon Web Services Management Console.
    #               Learn more about VPC peering in <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html">VPC Peering with GameLift Fleets</a>.</p>
    #
    # @return [Types::CreateVpcPeeringAuthorizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vpc_peering_authorization(
    #     game_lift_aws_account_id: 'GameLiftAwsAccountId', # required
    #     peer_vpc_id: 'PeerVpcId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateVpcPeeringAuthorizationOutput
    #   resp.data.vpc_peering_authorization #=> Types::VpcPeeringAuthorization
    #   resp.data.vpc_peering_authorization.game_lift_aws_account_id #=> String
    #   resp.data.vpc_peering_authorization.peer_vpc_aws_account_id #=> String
    #   resp.data.vpc_peering_authorization.peer_vpc_id #=> String
    #   resp.data.vpc_peering_authorization.creation_time #=> Time
    #   resp.data.vpc_peering_authorization.expiration_time #=> Time
    #
    def create_vpc_peering_authorization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateVpcPeeringAuthorizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateVpcPeeringAuthorizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateVpcPeeringAuthorization
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateVpcPeeringAuthorization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateVpcPeeringAuthorization,
        stubs: @stubs,
        params_class: Params::CreateVpcPeeringAuthorizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_vpc_peering_authorization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Establishes a VPC peering connection between a virtual private cloud (VPC) in an Amazon Web Services account with the VPC
    #             for your Amazon GameLift fleet. VPC peering enables the game servers on your fleet to
    #             communicate directly with other Amazon Web Services resources. You can peer with VPCs in any Amazon Web Services account
    #             that you have access to, including the account that you use to manage your Amazon GameLift
    #             fleets. You cannot peer with VPCs that are in different Regions. For more information,
    #             see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html">VPC Peering with Amazon GameLift Fleets</a>.</p>
    #         <p>Before calling this operation to establish the peering connection, you first need
    #             to call <a>CreateVpcPeeringAuthorization</a> and identify the VPC you want to
    #             peer with. Once the authorization for the specified VPC is issued, you have 24 hours to
    #             establish the connection. These two operations handle all tasks necessary to peer the
    #             two VPCs, including acceptance, updating routing tables, etc. </p>
    #         <p>To establish the connection, call this operation from the Amazon Web Services account that is used
    #             to manage the Amazon GameLift fleets. Identify the following values: (1) The ID of the fleet
    #             you want to be enable a VPC peering connection for; (2) The Amazon Web Services account with the VPC
    #             that you want to peer with; and (3) The ID of the VPC you want to peer with. This
    #             operation is asynchronous. If successful, a <a>VpcPeeringConnection</a>
    #             request is created. You can use continuous polling to track the request's status using
    #                 <a>DescribeVpcPeeringConnections</a>, or by monitoring fleet events for
    #             success or failure using <a>DescribeFleetEvents</a>. </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateVpcPeeringAuthorization</a> |
    #                     <a>DescribeVpcPeeringAuthorizations</a> |
    #                     <a>DeleteVpcPeeringAuthorization</a> |
    #                     <a>CreateVpcPeeringConnection</a> |
    #                     <a>DescribeVpcPeeringConnections</a> |
    #                     <a>DeleteVpcPeeringConnection</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::CreateVpcPeeringConnectionInput}.
    #
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet. You can use either the fleet ID or ARN value. This tells Amazon GameLift which GameLift
    #               VPC to peer with. </p>
    #
    # @option params [String] :peer_vpc_aws_account_id
    #   <p>A unique identifier for the Amazon Web Services account with the VPC that you want to peer your
    #               Amazon GameLift fleet with. You can find your Account ID in the Amazon Web Services Management Console under account
    #               settings.</p>
    #
    # @option params [String] :peer_vpc_id
    #   <p>A unique identifier for a VPC with resources to be accessed by your GameLift fleet. The
    #               VPC must be in the same Region as your fleet. To look up a VPC ID, use the
    #               <a href="https://console.aws.amazon.com/vpc/">VPC Dashboard</a> in the Amazon Web Services Management Console.
    #               Learn more about VPC peering in <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html">VPC Peering with GameLift Fleets</a>.</p>
    #
    # @return [Types::CreateVpcPeeringConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vpc_peering_connection(
    #     fleet_id: 'FleetId', # required
    #     peer_vpc_aws_account_id: 'PeerVpcAwsAccountId', # required
    #     peer_vpc_id: 'PeerVpcId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateVpcPeeringConnectionOutput
    #
    def create_vpc_peering_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateVpcPeeringConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateVpcPeeringConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateVpcPeeringConnection
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateVpcPeeringConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateVpcPeeringConnection,
        stubs: @stubs,
        params_class: Params::CreateVpcPeeringConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_vpc_peering_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an alias. This operation removes all record of the alias. Game clients
    #             attempting to access a server process using the deleted alias receive an error. To
    #             delete an alias, specify the alias ID to be deleted.</p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateAlias</a> |
    #                     <a>ListAliases</a> |
    #                     <a>DescribeAlias</a> |
    #                     <a>UpdateAlias</a> |
    #                     <a>DeleteAlias</a> |
    #                     <a>ResolveAlias</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAliasInput}.
    #
    # @option params [String] :alias_id
    #   <p>A unique identifier of the alias that you want to delete. You can use either the alias
    #               ID or ARN value.</p>
    #
    # @return [Types::DeleteAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_alias(
    #     alias_id: 'AliasId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAliasOutput
    #
    def delete_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAliasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAlias
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TaggingFailedException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DeleteAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAlias,
        stubs: @stubs,
        params_class: Params::DeleteAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_alias
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a build. This operation permanently deletes the build resource and any uploaded
    #             build files. Deleting a build does not affect the status of any active fleets using the
    #             build, but you can no longer create new fleets with the deleted build.</p>
    #         <p>To delete a build, specify the build ID. </p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html">
    #                 Upload a Custom Server Build</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateBuild</a> |
    #                     <a>ListBuilds</a> |
    #                     <a>DescribeBuild</a> |
    #                     <a>UpdateBuild</a> |
    #                     <a>DeleteBuild</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBuildInput}.
    #
    # @option params [String] :build_id
    #   <p>A unique identifier for the build to delete. You can use either the build ID or ARN value. </p>
    #
    # @return [Types::DeleteBuildOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_build(
    #     build_id: 'BuildId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBuildOutput
    #
    def delete_build(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBuildInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBuildInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBuild
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TaggingFailedException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DeleteBuild
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBuild,
        stubs: @stubs,
        params_class: Params::DeleteBuildOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_build
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes all resources and information related a fleet. Any current fleet instances,
    #             including those in remote locations, are shut down. You don't need to call
    #                 <code>DeleteFleetLocations</code> separately.</p>
    #         <note>
    #             <p>If the fleet being deleted has a VPC peering connection, you first need to get a
    #                 valid authorization (good for 24 hours) by calling <a>CreateVpcPeeringAuthorization</a>. You do not need to explicitly delete
    #                 the VPC peering connection--this is done as part of the delete fleet process.</p>
    #         </note>
    #         <p>To delete a fleet, specify the fleet ID to be terminated. During the deletion process
    #             the fleet status is changed to <code>DELETING</code>. When completed, the status
    #             switches to <code>TERMINATED</code> and the fleet event <code>FLEET_DELETED</code> is
    #             sent.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up GameLift Fleets</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateFleetLocations</a> |
    #                     <a>UpdateFleetAttributes</a> |
    #                     <a>UpdateFleetCapacity</a> |
    #                     <a>UpdateFleetPortSettings</a> |
    #                     <a>UpdateRuntimeConfiguration</a> |
    #                     <a>StopFleetActions</a> |
    #                     <a>StartFleetActions</a> |
    #                     <a>PutScalingPolicy</a> |
    #                     <a>DeleteFleet</a> |
    #                     <a>DeleteFleetLocations</a> |
    #                     <a>DeleteScalingPolicy</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFleetInput}.
    #
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to be deleted. You can use either the fleet ID or ARN value.</p>
    #
    # @return [Types::DeleteFleetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_fleet(
    #     fleet_id: 'FleetId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFleetOutput
    #
    def delete_fleet(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFleetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFleetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFleet
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InvalidFleetStatusException, Errors::TaggingFailedException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DeleteFleet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFleet,
        stubs: @stubs,
        params_class: Params::DeleteFleetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_fleet
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes locations from a multi-location fleet. When deleting a location, all game
    #             server process and all instances that are still active in the location are shut down. </p>
    #         <p>To delete fleet locations, identify the fleet ID and provide a list of the locations
    #             to be deleted. </p>
    #         <p>If successful, GameLift sets the location status to <code>DELETING</code>, and begins
    #             to shut down existing server processes and terminate instances in each location being
    #             deleted. When completed, the location status changes to <code>TERMINATED</code>.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up GameLift fleets</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateFleetLocations</a> |
    #                     <a>DescribeFleetLocationAttributes</a> |
    #                     <a>DescribeFleetLocationCapacity</a> |
    #                     <a>DescribeFleetLocationUtilization</a> |
    #                     <a>DescribeFleetAttributes</a> |
    #                     <a>DescribeFleetCapacity</a> |
    #                     <a>DescribeFleetUtilization</a> |
    #                     <a>UpdateFleetCapacity</a> |
    #                     <a>StopFleetActions</a> |
    #                     <a>DeleteFleetLocations</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFleetLocationsInput}.
    #
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to delete locations for.
    #               You can use either the fleet ID or ARN value.</p>
    #
    # @option params [Array<String>] :locations
    #   <p>The list of fleet locations to delete. Specify locations in the form of an Amazon Web Services Region code, such as
    #                   <code>us-west-2</code>.</p>
    #
    # @return [Types::DeleteFleetLocationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_fleet_locations(
    #     fleet_id: 'FleetId', # required
    #     locations: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFleetLocationsOutput
    #   resp.data.fleet_id #=> String
    #   resp.data.fleet_arn #=> String
    #   resp.data.location_states #=> Array<LocationState>
    #   resp.data.location_states[0] #=> Types::LocationState
    #   resp.data.location_states[0].location #=> String
    #   resp.data.location_states[0].status #=> String, one of ["NEW", "DOWNLOADING", "VALIDATING", "BUILDING", "ACTIVATING", "ACTIVE", "DELETING", "ERROR", "TERMINATED"]
    #
    def delete_fleet_locations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFleetLocationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFleetLocationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFleetLocations
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedRegionException, Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DeleteFleetLocations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFleetLocations,
        stubs: @stubs,
        params_class: Params::DeleteFleetLocationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_fleet_locations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             <b>This operation is used with the GameLift FleetIQ solution and game server groups.</b>
    #          </p>
    #         <p>Terminates a game server group and permanently deletes the game server group record.
    #             You have several options for how these resources are impacted when deleting the game
    #             server group. Depending on the type of delete operation selected, this operation might
    #             affect these resources:</p>
    #             <ul>
    #             <li>
    #                <p>The game server group</p>
    #             </li>
    #             <li>
    #                <p>The corresponding Auto Scaling group</p>
    #             </li>
    #             <li>
    #                <p>All game servers that are currently running in the group</p>
    #             </li>
    #          </ul>
    #         <p>To delete a game server group, identify the game server group to delete and specify
    #             the type of delete operation to initiate. Game server groups can only be deleted if they
    #             are in <code>ACTIVE</code> or <code>ERROR</code> status.</p>
    #         <p>If the delete request is successful, a series of operations are kicked off. The game
    #             server group status is changed to <code>DELETE_SCHEDULED</code>, which prevents new game
    #             servers from being registered and stops automatic scaling activity. Once all game
    #             servers in the game server group are deregistered, GameLift FleetIQ can begin deleting resources.
    #             If any of the delete operations fail, the game server group is placed in
    #                 <code>ERROR</code> status.</p>
    #         <p>GameLift FleetIQ emits delete events to Amazon CloudWatch.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html">GameLift FleetIQ Guide</a>
    #         </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateGameServerGroup</a> |
    #                     <a>ListGameServerGroups</a> |
    #                     <a>DescribeGameServerGroup</a> |
    #                     <a>UpdateGameServerGroup</a> |
    #                     <a>DeleteGameServerGroup</a> |
    #                     <a>ResumeGameServerGroup</a> |
    #                     <a>SuspendGameServerGroup</a> |
    #                     <a>DescribeGameServerInstances</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteGameServerGroupInput}.
    #
    # @option params [String] :game_server_group_name
    #   <p>A unique identifier for the game server group. Use either the <a>GameServerGroup</a> name or ARN value.</p>
    #
    # @option params [String] :delete_option
    #   <p>The type of delete to perform. Options include the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>SAFE_DELETE</code> – (default) Terminates the game server group and
    #                       Amazon EC2 Auto Scaling group only when it has no game servers that are in
    #                           <code>UTILIZED</code> status.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>FORCE_DELETE</code> – Terminates the game server group, including all
    #                       active game servers regardless of their utilization status, and the Amazon EC2 Auto
    #                       Scaling group. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>RETAIN</code> – Does a safe delete of the game server group but retains
    #                       the Amazon EC2 Auto Scaling group as is.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::DeleteGameServerGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_game_server_group(
    #     game_server_group_name: 'GameServerGroupName', # required
    #     delete_option: 'SAFE_DELETE' # accepts ["SAFE_DELETE", "FORCE_DELETE", "RETAIN"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteGameServerGroupOutput
    #   resp.data.game_server_group #=> Types::GameServerGroup
    #   resp.data.game_server_group.game_server_group_name #=> String
    #   resp.data.game_server_group.game_server_group_arn #=> String
    #   resp.data.game_server_group.role_arn #=> String
    #   resp.data.game_server_group.instance_definitions #=> Array<InstanceDefinition>
    #   resp.data.game_server_group.instance_definitions[0] #=> Types::InstanceDefinition
    #   resp.data.game_server_group.instance_definitions[0].instance_type #=> String, one of ["c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge"]
    #   resp.data.game_server_group.instance_definitions[0].weighted_capacity #=> String
    #   resp.data.game_server_group.balancing_strategy #=> String, one of ["SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"]
    #   resp.data.game_server_group.game_server_protection_policy #=> String, one of ["NO_PROTECTION", "FULL_PROTECTION"]
    #   resp.data.game_server_group.auto_scaling_group_arn #=> String
    #   resp.data.game_server_group.status #=> String, one of ["NEW", "ACTIVATING", "ACTIVE", "DELETE_SCHEDULED", "DELETING", "DELETED", "ERROR"]
    #   resp.data.game_server_group.status_reason #=> String
    #   resp.data.game_server_group.suspended_actions #=> Array<String>
    #   resp.data.game_server_group.suspended_actions[0] #=> String, one of ["REPLACE_INSTANCE_TYPES"]
    #   resp.data.game_server_group.creation_time #=> Time
    #   resp.data.game_server_group.last_updated_time #=> Time
    #
    def delete_game_server_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteGameServerGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteGameServerGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteGameServerGroup
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DeleteGameServerGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteGameServerGroup,
        stubs: @stubs,
        params_class: Params::DeleteGameServerGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_game_server_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a game session queue. Once a queue is successfully deleted, unfulfilled
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartGameSessionPlacement.html">StartGameSessionPlacement</a> requests that reference the queue will fail.
    #             To delete a queue, specify the queue name.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-intro.html">
    #             Using Multi-Region Queues</a>
    #         </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateGameSessionQueue.html">CreateGameSessionQueue</a>
    #                     |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeGameSessionQueues.html">DescribeGameSessionQueues</a>
    #                     |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateGameSessionQueue.html">UpdateGameSessionQueue</a>
    #                     |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DeleteGameSessionQueue.html">DeleteGameSessionQueue</a>
    #                     |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteGameSessionQueueInput}.
    #
    # @option params [String] :name
    #   <p>A descriptive label that is associated with game session queue. Queue names must be unique within each Region. You can use either the queue ID or ARN value. </p>
    #
    # @return [Types::DeleteGameSessionQueueOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_game_session_queue(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteGameSessionQueueOutput
    #
    def delete_game_session_queue(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteGameSessionQueueInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteGameSessionQueueInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteGameSessionQueue
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TaggingFailedException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DeleteGameSessionQueue
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteGameSessionQueue,
        stubs: @stubs,
        params_class: Params::DeleteGameSessionQueueOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_game_session_queue
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Permanently removes a FlexMatch matchmaking configuration. To delete, specify the
    #             configuration name. A matchmaking configuration cannot be deleted if it is being used in
    #             any active matchmaking tickets.</p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateMatchmakingConfiguration</a> |
    #                     <a>DescribeMatchmakingConfigurations</a> |
    #                     <a>UpdateMatchmakingConfiguration</a> |
    #                     <a>DeleteMatchmakingConfiguration</a> |
    #                     <a>CreateMatchmakingRuleSet</a> |
    #                     <a>DescribeMatchmakingRuleSets</a> |
    #                     <a>ValidateMatchmakingRuleSet</a> |
    #                     <a>DeleteMatchmakingRuleSet</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteMatchmakingConfigurationInput}.
    #
    # @option params [String] :name
    #   <p>A unique identifier for the matchmaking configuration.  You can use either the configuration name or ARN value.</p>
    #
    # @return [Types::DeleteMatchmakingConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_matchmaking_configuration(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteMatchmakingConfigurationOutput
    #
    def delete_matchmaking_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteMatchmakingConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteMatchmakingConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteMatchmakingConfiguration
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedRegionException, Errors::NotFoundException, Errors::TaggingFailedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DeleteMatchmakingConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteMatchmakingConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteMatchmakingConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_matchmaking_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing matchmaking rule set. To delete the rule set, provide the rule
    #             set name. Rule sets cannot be deleted if they are currently being used by a matchmaking
    #             configuration. </p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-rulesets.html">Build a rule
    #                         set</a>
    #                </p>
    #             </li>
    #          </ul>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateMatchmakingConfiguration</a> |
    #                     <a>DescribeMatchmakingConfigurations</a> |
    #                     <a>UpdateMatchmakingConfiguration</a> |
    #                     <a>DeleteMatchmakingConfiguration</a> |
    #                     <a>CreateMatchmakingRuleSet</a> |
    #                     <a>DescribeMatchmakingRuleSets</a> |
    #                     <a>ValidateMatchmakingRuleSet</a> |
    #                     <a>DeleteMatchmakingRuleSet</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteMatchmakingRuleSetInput}.
    #
    # @option params [String] :name
    #   <p>A unique identifier for the matchmaking rule set to be deleted. (Note: The rule set name is different from the optional "name"
    #               field in the rule set body.)  You can use either the rule set name or ARN value.</p>
    #
    # @return [Types::DeleteMatchmakingRuleSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_matchmaking_rule_set(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteMatchmakingRuleSetOutput
    #
    def delete_matchmaking_rule_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteMatchmakingRuleSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteMatchmakingRuleSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteMatchmakingRuleSet
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedRegionException, Errors::NotFoundException, Errors::TaggingFailedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DeleteMatchmakingRuleSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteMatchmakingRuleSet,
        stubs: @stubs,
        params_class: Params::DeleteMatchmakingRuleSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_matchmaking_rule_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a fleet scaling policy. Once deleted, the policy is no longer in
    #             force and GameLift removes all record of it. To delete a scaling policy, specify both the scaling
    #             policy name and the fleet ID it is associated with.</p>
    #         <p>To temporarily suspend scaling policies, call <a>StopFleetActions</a>.
    #             This operation suspends all policies for the fleet.</p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>DescribeFleetCapacity</a> |
    #                     <a>UpdateFleetCapacity</a> |
    #                     <a>DescribeEC2InstanceLimits</a> |
    #                     <a>PutScalingPolicy</a> |
    #                     <a>DescribeScalingPolicies</a> |
    #                     <a>DeleteScalingPolicy</a> |
    #                     <a>StopFleetActions</a> |
    #                     <a>StartFleetActions</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteScalingPolicyInput}.
    #
    # @option params [String] :name
    #   <p>A descriptive label that is associated with a fleet's scaling policy. Policy names do not need to be unique.</p>
    #
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to be deleted. You can use either the fleet ID or ARN value.</p>
    #
    # @return [Types::DeleteScalingPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_scaling_policy(
    #     name: 'Name', # required
    #     fleet_id: 'FleetId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteScalingPolicyOutput
    #
    def delete_scaling_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteScalingPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteScalingPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteScalingPolicy
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DeleteScalingPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteScalingPolicy,
        stubs: @stubs,
        params_class: Params::DeleteScalingPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_scaling_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a Realtime script. This operation permanently deletes the script record. If
    #             script files were uploaded, they are also deleted (files stored in an S3 bucket are not
    #             deleted). </p>
    #         <p>To delete a script, specify the script ID.  Before deleting a script, be sure to
    #             terminate all fleets that are deployed with the script being deleted. Fleet instances
    #             periodically check for script updates, and if the script record no longer exists, the
    #             instance will go into an error state and be unable to host game sessions.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html">Amazon GameLift Realtime Servers</a>
    #         </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateScript</a> |
    #                     <a>ListScripts</a> |
    #                     <a>DescribeScript</a> |
    #                     <a>UpdateScript</a> |
    #                     <a>DeleteScript</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteScriptInput}.
    #
    # @option params [String] :script_id
    #   <p>A unique identifier for the Realtime script to delete. You can use either the script ID or ARN value.</p>
    #
    # @return [Types::DeleteScriptOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_script(
    #     script_id: 'ScriptId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteScriptOutput
    #
    def delete_script(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteScriptInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteScriptInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteScript
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TaggingFailedException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DeleteScript
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteScript,
        stubs: @stubs,
        params_class: Params::DeleteScriptOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_script
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels a pending VPC peering authorization for the specified VPC. If you need to
    #             delete an existing VPC peering connection, call <a>DeleteVpcPeeringConnection</a>. </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateVpcPeeringAuthorization</a> |
    #                     <a>DescribeVpcPeeringAuthorizations</a> |
    #                     <a>DeleteVpcPeeringAuthorization</a> |
    #                     <a>CreateVpcPeeringConnection</a> |
    #                     <a>DescribeVpcPeeringConnections</a> |
    #                     <a>DeleteVpcPeeringConnection</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteVpcPeeringAuthorizationInput}.
    #
    # @option params [String] :game_lift_aws_account_id
    #   <p>A unique identifier for the Amazon Web Services account that you use to manage your GameLift fleet.
    #               You can find your Account ID in the Amazon Web Services Management Console under account settings.</p>
    #
    # @option params [String] :peer_vpc_id
    #   <p>A unique identifier for a VPC with resources to be accessed by your GameLift fleet. The
    #               VPC must be in the same Region as your fleet. To look up a VPC ID, use the
    #               <a href="https://console.aws.amazon.com/vpc/">VPC Dashboard</a> in the Amazon Web Services Management Console.
    #               Learn more about VPC peering in <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/vpc-peering.html">VPC Peering with GameLift Fleets</a>.</p>
    #
    # @return [Types::DeleteVpcPeeringAuthorizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vpc_peering_authorization(
    #     game_lift_aws_account_id: 'GameLiftAwsAccountId', # required
    #     peer_vpc_id: 'PeerVpcId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVpcPeeringAuthorizationOutput
    #
    def delete_vpc_peering_authorization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVpcPeeringAuthorizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVpcPeeringAuthorizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVpcPeeringAuthorization
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DeleteVpcPeeringAuthorization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVpcPeeringAuthorization,
        stubs: @stubs,
        params_class: Params::DeleteVpcPeeringAuthorizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_vpc_peering_authorization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a VPC peering connection. To delete the connection, you must have a valid
    #             authorization for the VPC peering connection that you want to delete. You can check for
    #             an authorization by calling <a>DescribeVpcPeeringAuthorizations</a> or
    #             request a new one using <a>CreateVpcPeeringAuthorization</a>. </p>
    #         <p>Once a valid authorization exists, call this operation from the Amazon Web Services account that is
    #             used to manage the Amazon GameLift fleets. Identify the connection to delete by the connection
    #             ID and fleet ID. If successful, the connection is removed. </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateVpcPeeringAuthorization</a> |
    #                     <a>DescribeVpcPeeringAuthorizations</a> |
    #                     <a>DeleteVpcPeeringAuthorization</a> |
    #                     <a>CreateVpcPeeringConnection</a> |
    #                     <a>DescribeVpcPeeringConnections</a> |
    #                     <a>DeleteVpcPeeringConnection</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteVpcPeeringConnectionInput}.
    #
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet. This fleet specified must match the fleet referenced in the VPC peering
    #               connection record. You can use either the fleet ID or ARN value.</p>
    #
    # @option params [String] :vpc_peering_connection_id
    #   <p>A unique identifier for a VPC peering connection. This value is included in the <a>VpcPeeringConnection</a> object, which can be retrieved by calling <a>DescribeVpcPeeringConnections</a>.</p>
    #
    # @return [Types::DeleteVpcPeeringConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vpc_peering_connection(
    #     fleet_id: 'FleetId', # required
    #     vpc_peering_connection_id: 'VpcPeeringConnectionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVpcPeeringConnectionOutput
    #
    def delete_vpc_peering_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVpcPeeringConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVpcPeeringConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVpcPeeringConnection
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DeleteVpcPeeringConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVpcPeeringConnection,
        stubs: @stubs,
        params_class: Params::DeleteVpcPeeringConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_vpc_peering_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             <b>This operation is used with the GameLift FleetIQ solution and game server groups.</b>
    #          </p>
    #         <p>Removes the game server from a game server group. As a result of this operation, the
    #             deregistered game server can no longer be claimed and will not be returned in a list of
    #             active game servers. </p>
    #         <p>To deregister a game server, specify the game server group and game server ID. If
    #             successful, this operation emits a CloudWatch event with termination timestamp and
    #             reason.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html">GameLift FleetIQ Guide</a>
    #         </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>RegisterGameServer</a> |
    #                     <a>ListGameServers</a> |
    #                     <a>ClaimGameServer</a> |
    #                     <a>DescribeGameServer</a> |
    #                     <a>UpdateGameServer</a> |
    #                     <a>DeregisterGameServer</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DeregisterGameServerInput}.
    #
    # @option params [String] :game_server_group_name
    #   <p>A unique identifier for the game server group where the game server is running.
    #               Use either the <a>GameServerGroup</a> name or ARN value.</p>
    #
    # @option params [String] :game_server_id
    #   <p>A custom string that uniquely identifies the game server to deregister.</p>
    #
    # @return [Types::DeregisterGameServerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_game_server(
    #     game_server_group_name: 'GameServerGroupName', # required
    #     game_server_id: 'GameServerId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterGameServerOutput
    #
    def deregister_game_server(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterGameServerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterGameServerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterGameServer
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DeregisterGameServer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterGameServer,
        stubs: @stubs,
        params_class: Params::DeregisterGameServerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_game_server
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves properties for an alias. This operation returns all alias metadata and
    #             settings. To get an alias's target fleet ID only, use <code>ResolveAlias</code>. </p>
    #         <p>To get alias properties, specify the alias ID. If successful, the requested alias
    #             record is returned.</p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateAlias</a> |
    #                     <a>ListAliases</a> |
    #                     <a>DescribeAlias</a> |
    #                     <a>UpdateAlias</a> |
    #                     <a>DeleteAlias</a> |
    #                     <a>ResolveAlias</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAliasInput}.
    #
    # @option params [String] :alias_id
    #   <p>The unique identifier for the fleet alias that you want to retrieve. You can use
    #               either the alias ID or ARN value. </p>
    #
    # @return [Types::DescribeAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_alias(
    #     alias_id: 'AliasId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAliasOutput
    #   resp.data.alias #=> Types::Alias
    #   resp.data.alias.alias_id #=> String
    #   resp.data.alias.name #=> String
    #   resp.data.alias.alias_arn #=> String
    #   resp.data.alias.description #=> String
    #   resp.data.alias.routing_strategy #=> Types::RoutingStrategy
    #   resp.data.alias.routing_strategy.type #=> String, one of ["SIMPLE", "TERMINAL"]
    #   resp.data.alias.routing_strategy.fleet_id #=> String
    #   resp.data.alias.routing_strategy.message #=> String
    #   resp.data.alias.creation_time #=> Time
    #   resp.data.alias.last_updated_time #=> Time
    #
    def describe_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAliasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAlias
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAlias,
        stubs: @stubs,
        params_class: Params::DescribeAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_alias
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves properties for a custom game build. To request a build resource, specify a
    #             build ID. If successful, an object containing the build properties is returned.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html">
    #             Upload a Custom Server Build</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateBuild</a> |
    #                     <a>ListBuilds</a> |
    #                     <a>DescribeBuild</a> |
    #                     <a>UpdateBuild</a> |
    #                     <a>DeleteBuild</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeBuildInput}.
    #
    # @option params [String] :build_id
    #   <p>A unique identifier for the build to retrieve properties for. You can use either the build ID or ARN value. </p>
    #
    # @return [Types::DescribeBuildOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_build(
    #     build_id: 'BuildId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeBuildOutput
    #   resp.data.build #=> Types::Build
    #   resp.data.build.build_id #=> String
    #   resp.data.build.build_arn #=> String
    #   resp.data.build.name #=> String
    #   resp.data.build.version #=> String
    #   resp.data.build.status #=> String, one of ["INITIALIZED", "READY", "FAILED"]
    #   resp.data.build.size_on_disk #=> Integer
    #   resp.data.build.operating_system #=> String, one of ["WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2"]
    #   resp.data.build.creation_time #=> Time
    #
    def describe_build(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeBuildInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeBuildInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeBuild
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeBuild
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeBuild,
        stubs: @stubs,
        params_class: Params::DescribeBuildOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_build
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the instance limits and current utilization for an Amazon Web Services Region or location.
    #             Instance limits control the number of instances, per instance type, per location, that
    #             your Amazon Web Services account can use. Learn more at <a href="http://aws.amazon.com/ec2/instance-types/">Amazon EC2 Instance Types</a>. The information
    #             returned includes the maximum number of instances allowed and your account's current
    #             usage across all fleets. This information can affect your ability to scale your GameLift
    #             fleets. You can request a limit increase for your account by using the <b>Service limits</b> page in the GameLift console.</p>
    #         <p>Instance limits differ based on whether the instances are deployed in a fleet's home
    #             Region or in a remote location. For remote locations, limits also differ based on the
    #             combination of home Region and remote location. All  requests must specify an Amazon Web Services Region
    #             (either explicitly or as your default settings). To get the limit for a remote location,
    #             you must also specify the location. For example, the following requests all return
    #             different results: </p>
    #         <ul>
    #             <li>
    #                 <p>Request specifies the Region <code>ap-northeast-1</code> with no location. The
    #                     result is limits and usage data on all instance types that are deployed in
    #                         <code>us-east-2</code>, by all of the fleets that reside in
    #                         <code>ap-northeast-1</code>. </p>
    #             </li>
    #             <li>
    #                 <p>Request specifies the Region <code>us-east-1</code> with location
    #                         <code>ca-central-1</code>. The result is limits and usage data on all
    #                     instance types that are deployed in <code>ca-central-1</code>, by all of the
    #                     fleets that reside in <code>us-east-2</code>. These limits do not affect fleets
    #                     in any other Regions that deploy instances to <code>ca-central-1</code>.</p>
    #             </li>
    #             <li>
    #                 <p>Request specifies the Region <code>eu-west-1</code> with location
    #                         <code>ca-central-1</code>. The result is limits and usage data on all
    #                     instance types that are deployed in <code>ca-central-1</code>, by all of the
    #                     fleets that reside in <code>eu-west-1</code>.</p>
    #             </li>
    #          </ul>
    #         <p>This operation can be used in the following ways:</p>
    #         <ul>
    #             <li>
    #                 <p>To get limit and usage data for all instance types that are deployed in an Amazon Web Services
    #                     Region by fleets that reside in the same Region: Specify the Region only.
    #                     Optionally, specify a single instance type to retrieve information for.</p>
    #             </li>
    #             <li>
    #                 <p>To get limit and usage data for all instance types that are deployed to a
    #                     remote location by fleets that reside in different Amazon Web Services Region: Provide both the
    #                     Amazon Web Services Region and the remote location. Optionally, specify a single instance type
    #                     to retrieve information for.</p>
    #             </li>
    #          </ul>
    #         <p>If successful, an <code>EC2InstanceLimits</code> object is returned with limits and
    #             usage data for each requested instance type.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up GameLift fleets</a>
    #          </p>
    #
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateFleet</a> |
    #                     <a>UpdateFleetCapacity</a> |
    #                     <a>PutScalingPolicy</a> |
    #                     <a>DescribeEC2InstanceLimits</a> |
    #                     <a>DescribeFleetAttributes</a> |
    #                     <a>DescribeFleetLocationAttributes</a> |
    #                     <a>UpdateFleetAttributes</a> |
    #                     <a>StopFleetActions</a> |
    #                     <a>DeleteFleet</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEC2InstanceLimitsInput}.
    #
    # @option params [String] :ec2_instance_type
    #   <p>Name of an Amazon EC2 instance type that is supported in GameLift. A fleet instance type
    #               determines the computing resources of each instance in the fleet, including CPU, memory,
    #               storage, and networking capacity. Do not specify a value for this parameter to retrieve
    #               limits for all instance types.</p>
    #
    # @option params [String] :location
    #   <p>The name of a remote location to request instance limits for, in the form of an Amazon Web Services
    #               Region code such as <code>us-west-2</code>.</p>
    #
    # @return [Types::DescribeEC2InstanceLimitsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_ec2_instance_limits(
    #     ec2_instance_type: 't2.micro', # accepts ["t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge"]
    #     location: 'Location'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEC2InstanceLimitsOutput
    #   resp.data.ec2_instance_limits #=> Array<EC2InstanceLimit>
    #   resp.data.ec2_instance_limits[0] #=> Types::EC2InstanceLimit
    #   resp.data.ec2_instance_limits[0].ec2_instance_type #=> String, one of ["t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge"]
    #   resp.data.ec2_instance_limits[0].current_instances #=> Integer
    #   resp.data.ec2_instance_limits[0].instance_limit #=> Integer
    #   resp.data.ec2_instance_limits[0].location #=> String
    #
    def describe_ec2_instance_limits(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEC2InstanceLimitsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEC2InstanceLimitsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEC2InstanceLimits
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedRegionException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeEC2InstanceLimits
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEC2InstanceLimits,
        stubs: @stubs,
        params_class: Params::DescribeEC2InstanceLimitsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_ec2_instance_limits
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves core fleet-wide properties, including the computing hardware and deployment
    #             configuration for all instances in the fleet.</p>
    #         <p>This operation can be used in the following ways: </p>
    #         <ul>
    #             <li>
    #                 <p>To get attributes for one or more specific fleets, provide a list of fleet IDs
    #                     or fleet ARNs. </p>
    #             </li>
    #             <li>
    #                 <p>To get attributes for all fleets, do not provide a fleet identifier. </p>
    #             </li>
    #          </ul>
    #         <p>When requesting attributes for multiple fleets, use the pagination parameters to
    #             retrieve results as a set of sequential pages. </p>
    #         <p>If successful, a <code>FleetAttributes</code> object is returned for each fleet
    #             requested, unless the fleet identifier is not found. </p>
    #         <note>
    #             <p>Some API operations limit the number of fleet IDs that allowed in one request. If a
    #                 request exceeds this limit, the request fails and the error message contains the
    #                 maximum allowed number.</p>
    #         </note>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up GameLift fleets</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>ListFleets</a> |
    #                     <a>DescribeEC2InstanceLimits</a> |
    #                     <a>DescribeFleetAttributes</a> |
    #                     <a>DescribeFleetCapacity</a> |
    #                     <a>DescribeFleetEvents</a> |
    #                     <a>DescribeFleetLocationAttributes</a> |
    #                     <a>DescribeFleetPortSettings</a> |
    #                     <a>DescribeFleetUtilization</a> |
    #                     <a>DescribeRuntimeConfiguration</a> |
    #                     <a>DescribeScalingPolicies</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFleetAttributesInput}.
    #
    # @option params [Array<String>] :fleet_ids
    #   <p>A list of unique fleet identifiers to retrieve attributes for. You can use either the
    #               fleet ID or ARN value. To retrieve attributes for all current fleets, do not include
    #               this parameter. </p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet
    #               IDs.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet
    #               IDs.</p>
    #
    # @return [Types::DescribeFleetAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_attributes(
    #     fleet_ids: [
    #       'member'
    #     ],
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFleetAttributesOutput
    #   resp.data.fleet_attributes #=> Array<FleetAttributes>
    #   resp.data.fleet_attributes[0] #=> Types::FleetAttributes
    #   resp.data.fleet_attributes[0].fleet_id #=> String
    #   resp.data.fleet_attributes[0].fleet_arn #=> String
    #   resp.data.fleet_attributes[0].fleet_type #=> String, one of ["ON_DEMAND", "SPOT"]
    #   resp.data.fleet_attributes[0].instance_type #=> String, one of ["t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge"]
    #   resp.data.fleet_attributes[0].description #=> String
    #   resp.data.fleet_attributes[0].name #=> String
    #   resp.data.fleet_attributes[0].creation_time #=> Time
    #   resp.data.fleet_attributes[0].termination_time #=> Time
    #   resp.data.fleet_attributes[0].status #=> String, one of ["NEW", "DOWNLOADING", "VALIDATING", "BUILDING", "ACTIVATING", "ACTIVE", "DELETING", "ERROR", "TERMINATED"]
    #   resp.data.fleet_attributes[0].build_id #=> String
    #   resp.data.fleet_attributes[0].build_arn #=> String
    #   resp.data.fleet_attributes[0].script_id #=> String
    #   resp.data.fleet_attributes[0].script_arn #=> String
    #   resp.data.fleet_attributes[0].server_launch_path #=> String
    #   resp.data.fleet_attributes[0].server_launch_parameters #=> String
    #   resp.data.fleet_attributes[0].log_paths #=> Array<String>
    #   resp.data.fleet_attributes[0].log_paths[0] #=> String
    #   resp.data.fleet_attributes[0].new_game_session_protection_policy #=> String, one of ["NoProtection", "FullProtection"]
    #   resp.data.fleet_attributes[0].operating_system #=> String, one of ["WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2"]
    #   resp.data.fleet_attributes[0].resource_creation_limit_policy #=> Types::ResourceCreationLimitPolicy
    #   resp.data.fleet_attributes[0].resource_creation_limit_policy.new_game_sessions_per_creator #=> Integer
    #   resp.data.fleet_attributes[0].resource_creation_limit_policy.policy_period_in_minutes #=> Integer
    #   resp.data.fleet_attributes[0].metric_groups #=> Array<String>
    #   resp.data.fleet_attributes[0].metric_groups[0] #=> String
    #   resp.data.fleet_attributes[0].stopped_actions #=> Array<String>
    #   resp.data.fleet_attributes[0].stopped_actions[0] #=> String, one of ["AUTO_SCALING"]
    #   resp.data.fleet_attributes[0].instance_role_arn #=> String
    #   resp.data.fleet_attributes[0].certificate_configuration #=> Types::CertificateConfiguration
    #   resp.data.fleet_attributes[0].certificate_configuration.certificate_type #=> String, one of ["DISABLED", "GENERATED"]
    #   resp.data.next_token #=> String
    #
    def describe_fleet_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFleetAttributesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFleetAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFleetAttributes
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeFleetAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFleetAttributes,
        stubs: @stubs,
        params_class: Params::DescribeFleetAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_fleet_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the resource capacity settings for one or more fleets. The data returned
    #             includes the current fleet capacity (number of EC2 instances), and settings that can
    #             control how capacity scaling. For fleets with remote locations, this operation retrieves
    #             data for the fleet's home Region only. See <a>DescribeFleetLocationCapacity</a> to get capacity settings for a fleet's remote locations.</p>
    #         <p>This operation can be used in the following ways: </p>
    #         <ul>
    #             <li>
    #                 <p>To get capacity data for one or more specific fleets, provide a list of fleet
    #                     IDs or fleet ARNs. </p>
    #             </li>
    #             <li>
    #                 <p>To get capacity data for all fleets, do not provide a fleet identifier. </p>
    #             </li>
    #          </ul>
    #         <p>When requesting multiple fleets, use the pagination parameters to retrieve results as
    #             a set of sequential pages. </p>
    #         <p>If successful, a <a>FleetCapacity</a> object is returned for each requested
    #             fleet ID. Each FleetCapacity object includes a <code>Location</code> property, which is
    #             set to the fleet's home Region. When a list of fleet IDs is provided, attribute objects
    #             are returned only for fleets that currently exist.</p>
    #         <note>
    #             <p>Some API operations may limit the number of fleet IDs that are allowed in one
    #                 request. If a request exceeds this limit, the request fails and the error message
    #                 includes the maximum allowed.</p>
    #         </note>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up GameLift fleets</a>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet">GameLift metrics for fleets</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>ListFleets</a> |
    #                     <a>DescribeEC2InstanceLimits</a> |
    #                     <a>DescribeFleetAttributes</a> |
    #                     <a>DescribeFleetCapacity</a> |
    #                     <a>DescribeFleetEvents</a> |
    #                     <a>DescribeFleetLocationAttributes</a> |
    #                     <a>DescribeFleetPortSettings</a> |
    #                     <a>DescribeFleetUtilization</a> |
    #                     <a>DescribeRuntimeConfiguration</a> |
    #                     <a>DescribeScalingPolicies</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFleetCapacityInput}.
    #
    # @option params [Array<String>] :fleet_ids
    #   <p>A unique identifier for the fleet(s) to retrieve capacity information for. You can use either the fleet ID or ARN
    #               value. Leave this parameter empty to retrieve capacity information for all
    #               fleets.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet
    #               IDs.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet
    #               IDs.</p>
    #
    # @return [Types::DescribeFleetCapacityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_capacity(
    #     fleet_ids: [
    #       'member'
    #     ],
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFleetCapacityOutput
    #   resp.data.fleet_capacity #=> Array<FleetCapacity>
    #   resp.data.fleet_capacity[0] #=> Types::FleetCapacity
    #   resp.data.fleet_capacity[0].fleet_id #=> String
    #   resp.data.fleet_capacity[0].fleet_arn #=> String
    #   resp.data.fleet_capacity[0].instance_type #=> String, one of ["t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge"]
    #   resp.data.fleet_capacity[0].instance_counts #=> Types::EC2InstanceCounts
    #   resp.data.fleet_capacity[0].instance_counts.desired #=> Integer
    #   resp.data.fleet_capacity[0].instance_counts.minimum #=> Integer
    #   resp.data.fleet_capacity[0].instance_counts.maximum #=> Integer
    #   resp.data.fleet_capacity[0].instance_counts.pending #=> Integer
    #   resp.data.fleet_capacity[0].instance_counts.active #=> Integer
    #   resp.data.fleet_capacity[0].instance_counts.idle #=> Integer
    #   resp.data.fleet_capacity[0].instance_counts.terminating #=> Integer
    #   resp.data.fleet_capacity[0].location #=> String
    #   resp.data.next_token #=> String
    #
    def describe_fleet_capacity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFleetCapacityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFleetCapacityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFleetCapacity
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeFleetCapacity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFleetCapacity,
        stubs: @stubs,
        params_class: Params::DescribeFleetCapacityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_fleet_capacity
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves entries from a fleet's event log. Fleet events are initiated by changes in
    #             status, such as during fleet creation and termination, changes in capacity, etc. If a
    #             fleet has multiple locations, events are also initiated by changes to status and
    #             capacity in remote locations. </p>
    #         <p>You can specify a time range to limit the result set. Use the pagination parameters to
    #             retrieve results as a set of sequential pages. </p>
    #         <p>If successful, a collection of event log entries matching the request are
    #             returned.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up GameLift fleets</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>ListFleets</a> |
    #                     <a>DescribeEC2InstanceLimits</a> |
    #                     <a>DescribeFleetAttributes</a> |
    #                     <a>DescribeFleetCapacity</a> |
    #                     <a>DescribeFleetEvents</a> |
    #                     <a>DescribeFleetLocationAttributes</a> |
    #                     <a>DescribeFleetPortSettings</a> |
    #                     <a>DescribeFleetUtilization</a> |
    #                     <a>DescribeRuntimeConfiguration</a> |
    #                     <a>DescribeScalingPolicies</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFleetEventsInput}.
    #
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to get event logs for.  You can use either the fleet ID or ARN value.</p>
    #
    # @option params [Time] :start_time
    #   <p>The earliest date to retrieve event logs for. If no start time is specified, this call
    #               returns entries starting from when the fleet was created to the specified end time.
    #               Format is a number expressed in Unix time as milliseconds (ex: "1469498468.057").</p>
    #
    # @option params [Time] :end_time
    #   <p>The most recent date to retrieve event logs for. If no end time is specified, this
    #               call returns entries from the specified start time up to the present. Format is a number
    #               expressed in Unix time as milliseconds (ex: "1469498468.057").</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #
    # @return [Types::DescribeFleetEventsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_events(
    #     fleet_id: 'FleetId', # required
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFleetEventsOutput
    #   resp.data.events #=> Array<Event>
    #   resp.data.events[0] #=> Types::Event
    #   resp.data.events[0].event_id #=> String
    #   resp.data.events[0].resource_id #=> String
    #   resp.data.events[0].event_code #=> String, one of ["GENERIC_EVENT", "FLEET_CREATED", "FLEET_DELETED", "FLEET_SCALING_EVENT", "FLEET_STATE_DOWNLOADING", "FLEET_STATE_VALIDATING", "FLEET_STATE_BUILDING", "FLEET_STATE_ACTIVATING", "FLEET_STATE_ACTIVE", "FLEET_STATE_ERROR", "FLEET_INITIALIZATION_FAILED", "FLEET_BINARY_DOWNLOAD_FAILED", "FLEET_VALIDATION_LAUNCH_PATH_NOT_FOUND", "FLEET_VALIDATION_EXECUTABLE_RUNTIME_FAILURE", "FLEET_VALIDATION_TIMED_OUT", "FLEET_ACTIVATION_FAILED", "FLEET_ACTIVATION_FAILED_NO_INSTANCES", "FLEET_NEW_GAME_SESSION_PROTECTION_POLICY_UPDATED", "SERVER_PROCESS_INVALID_PATH", "SERVER_PROCESS_SDK_INITIALIZATION_TIMEOUT", "SERVER_PROCESS_PROCESS_READY_TIMEOUT", "SERVER_PROCESS_CRASHED", "SERVER_PROCESS_TERMINATED_UNHEALTHY", "SERVER_PROCESS_FORCE_TERMINATED", "SERVER_PROCESS_PROCESS_EXIT_TIMEOUT", "GAME_SESSION_ACTIVATION_TIMEOUT", "FLEET_CREATION_EXTRACTING_BUILD", "FLEET_CREATION_RUNNING_INSTALLER", "FLEET_CREATION_VALIDATING_RUNTIME_CONFIG", "FLEET_VPC_PEERING_SUCCEEDED", "FLEET_VPC_PEERING_FAILED", "FLEET_VPC_PEERING_DELETED", "INSTANCE_INTERRUPTED"]
    #   resp.data.events[0].message #=> String
    #   resp.data.events[0].event_time #=> Time
    #   resp.data.events[0].pre_signed_log_url #=> String
    #   resp.data.next_token #=> String
    #
    def describe_fleet_events(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFleetEventsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFleetEventsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFleetEvents
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeFleetEvents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFleetEvents,
        stubs: @stubs,
        params_class: Params::DescribeFleetEventsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_fleet_events
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information on a fleet's remote locations, including life-cycle status and
    #             any suspended fleet activity. </p>
    #         <p>This operation can be used in the following ways: </p>
    #         <ul>
    #             <li>
    #                 <p>To get data for specific locations, provide a fleet identifier and a list of
    #                     locations. Location data is returned in the order that it is requested. </p>
    #             </li>
    #             <li>
    #                 <p>To get data for all locations, provide a fleet identifier only. Location data
    #                     is returned in no particular order. </p>
    #             </li>
    #          </ul>
    #         <p>When requesting attributes for multiple locations, use the pagination parameters to
    #             retrieve results as a set of sequential pages. </p>
    #         <p>If successful, a <code>LocationAttributes</code> object is returned for each requested
    #             location. If the fleet does not have a requested location, no information is returned.
    #             This operation does not return the home Region. To get information on a fleet's home
    #             Region, call <code>DescribeFleetAttributes</code>.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up GameLift fleets</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateFleetLocations</a> |
    #                     <a>DescribeFleetLocationAttributes</a> |
    #                     <a>DescribeFleetLocationCapacity</a> |
    #                     <a>DescribeFleetLocationUtilization</a> |
    #                     <a>DescribeFleetAttributes</a> |
    #                     <a>DescribeFleetCapacity</a> |
    #                     <a>DescribeFleetUtilization</a> |
    #                     <a>UpdateFleetCapacity</a> |
    #                     <a>StopFleetActions</a> |
    #                     <a>DeleteFleetLocations</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFleetLocationAttributesInput}.
    #
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to retrieve remote locations for. You can use either the fleet ID or ARN
    #               value.</p>
    #
    # @option params [Array<String>] :locations
    #   <p>A list of fleet locations to retrieve information for. Specify locations in the form of an Amazon Web Services Region code, such as
    #                   <code>us-west-2</code>.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. This limit is not currently enforced. </p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #
    # @return [Types::DescribeFleetLocationAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_location_attributes(
    #     fleet_id: 'FleetId', # required
    #     locations: [
    #       'member'
    #     ],
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFleetLocationAttributesOutput
    #   resp.data.fleet_id #=> String
    #   resp.data.fleet_arn #=> String
    #   resp.data.location_attributes #=> Array<LocationAttributes>
    #   resp.data.location_attributes[0] #=> Types::LocationAttributes
    #   resp.data.location_attributes[0].location_state #=> Types::LocationState
    #   resp.data.location_attributes[0].location_state.location #=> String
    #   resp.data.location_attributes[0].location_state.status #=> String, one of ["NEW", "DOWNLOADING", "VALIDATING", "BUILDING", "ACTIVATING", "ACTIVE", "DELETING", "ERROR", "TERMINATED"]
    #   resp.data.location_attributes[0].stopped_actions #=> Array<String>
    #   resp.data.location_attributes[0].stopped_actions[0] #=> String, one of ["AUTO_SCALING"]
    #   resp.data.location_attributes[0].update_status #=> String, one of ["PENDING_UPDATE"]
    #   resp.data.next_token #=> String
    #
    def describe_fleet_location_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFleetLocationAttributesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFleetLocationAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFleetLocationAttributes
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedRegionException, Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeFleetLocationAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFleetLocationAttributes,
        stubs: @stubs,
        params_class: Params::DescribeFleetLocationAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_fleet_location_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the resource capacity settings for a fleet location. The data returned
    #             includes the current capacity (number of EC2 instances) and some scaling settings for
    #             the requested fleet location. Use this operation to retrieve capacity information for a
    #             fleet's remote location or home Region (you can also retrieve home Region capacity by
    #             calling <code>DescribeFleetCapacity</code>).</p>
    #         <p>To retrieve capacity data, identify a fleet and location. </p>
    #         <p>If successful, a <code>FleetCapacity</code> object is returned for the requested fleet
    #             location. </p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up GameLift fleets</a>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet">GameLift metrics for fleets</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateFleetLocations</a> |
    #                     <a>DescribeFleetLocationAttributes</a> |
    #                     <a>DescribeFleetLocationCapacity</a> |
    #                     <a>DescribeFleetLocationUtilization</a> |
    #                     <a>DescribeFleetAttributes</a> |
    #                     <a>DescribeFleetCapacity</a> |
    #                     <a>DescribeFleetUtilization</a> |
    #                     <a>UpdateFleetCapacity</a> |
    #                     <a>StopFleetActions</a> |
    #                     <a>DeleteFleetLocations</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFleetLocationCapacityInput}.
    #
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to request location capacity for.
    #               You can use either the fleet ID or ARN value.</p>
    #
    # @option params [String] :location
    #   <p>The fleet location to retrieve capacity information for. Specify a location in the form of an Amazon Web Services Region code, such as
    #                   <code>us-west-2</code>.</p>
    #
    # @return [Types::DescribeFleetLocationCapacityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_location_capacity(
    #     fleet_id: 'FleetId', # required
    #     location: 'Location' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFleetLocationCapacityOutput
    #   resp.data.fleet_capacity #=> Types::FleetCapacity
    #   resp.data.fleet_capacity.fleet_id #=> String
    #   resp.data.fleet_capacity.fleet_arn #=> String
    #   resp.data.fleet_capacity.instance_type #=> String, one of ["t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge"]
    #   resp.data.fleet_capacity.instance_counts #=> Types::EC2InstanceCounts
    #   resp.data.fleet_capacity.instance_counts.desired #=> Integer
    #   resp.data.fleet_capacity.instance_counts.minimum #=> Integer
    #   resp.data.fleet_capacity.instance_counts.maximum #=> Integer
    #   resp.data.fleet_capacity.instance_counts.pending #=> Integer
    #   resp.data.fleet_capacity.instance_counts.active #=> Integer
    #   resp.data.fleet_capacity.instance_counts.idle #=> Integer
    #   resp.data.fleet_capacity.instance_counts.terminating #=> Integer
    #   resp.data.fleet_capacity.location #=> String
    #
    def describe_fleet_location_capacity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFleetLocationCapacityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFleetLocationCapacityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFleetLocationCapacity
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedRegionException, Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeFleetLocationCapacity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFleetLocationCapacity,
        stubs: @stubs,
        params_class: Params::DescribeFleetLocationCapacityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_fleet_location_capacity
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves current usage data for a fleet location. Utilization data provides a
    #             snapshot of current game hosting activity at the requested location. Use this operation
    #             to retrieve utilization information for a fleet's remote location or home Region (you
    #             can also retrieve home Region utilization by calling
    #                 <code>DescribeFleetUtilization</code>).</p>
    #         <p>To retrieve utilization data, identify a fleet and location. </p>
    #         <p>If successful, a <code>FleetUtilization</code> object is returned for the requested
    #             fleet location. </p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up GameLift fleets</a>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet">GameLift metrics for fleets</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateFleetLocations</a> |
    #                     <a>DescribeFleetLocationAttributes</a> |
    #                     <a>DescribeFleetLocationCapacity</a> |
    #                     <a>DescribeFleetLocationUtilization</a> |
    #                     <a>DescribeFleetAttributes</a> |
    #                     <a>DescribeFleetCapacity</a> |
    #                     <a>DescribeFleetUtilization</a> |
    #                     <a>UpdateFleetCapacity</a> |
    #                     <a>StopFleetActions</a> |
    #                     <a>DeleteFleetLocations</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFleetLocationUtilizationInput}.
    #
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to request location utilization for.
    #               You can use either the fleet ID or ARN value.</p>
    #
    # @option params [String] :location
    #   <p>The fleet location to retrieve utilization information for. Specify a location in the form of an Amazon Web Services Region code, such as
    #                   <code>us-west-2</code>.</p>
    #
    # @return [Types::DescribeFleetLocationUtilizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_location_utilization(
    #     fleet_id: 'FleetId', # required
    #     location: 'Location' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFleetLocationUtilizationOutput
    #   resp.data.fleet_utilization #=> Types::FleetUtilization
    #   resp.data.fleet_utilization.fleet_id #=> String
    #   resp.data.fleet_utilization.fleet_arn #=> String
    #   resp.data.fleet_utilization.active_server_process_count #=> Integer
    #   resp.data.fleet_utilization.active_game_session_count #=> Integer
    #   resp.data.fleet_utilization.current_player_session_count #=> Integer
    #   resp.data.fleet_utilization.maximum_player_session_count #=> Integer
    #   resp.data.fleet_utilization.location #=> String
    #
    def describe_fleet_location_utilization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFleetLocationUtilizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFleetLocationUtilizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFleetLocationUtilization
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedRegionException, Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeFleetLocationUtilization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFleetLocationUtilization,
        stubs: @stubs,
        params_class: Params::DescribeFleetLocationUtilizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_fleet_location_utilization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a fleet's inbound connection permissions. Connection permissions specify the
    #             range of IP addresses and port settings that incoming traffic can use to access server
    #             processes in the fleet. Game sessions that are running on instances in the fleet must
    #             use connections that fall in this range.</p>
    #         <p>This operation can be used in the following ways: </p>
    #         <ul>
    #             <li>
    #                 <p>To retrieve the inbound connection permissions for a fleet, identify the
    #                     fleet's unique identifier. </p>
    #             </li>
    #             <li>
    #                 <p>To check the status of recent updates to a fleet remote location, specify
    #                     the fleet ID and a location. Port setting updates can take time to
    #                     propagate across all locations. </p>
    #             </li>
    #          </ul>
    #         <p>If successful, a set of <a>IpPermission</a> objects is returned for the
    #             requested fleet ID. When a location is specified, a pending status is included. If the
    #             requested fleet has been deleted, the result set is empty.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up GameLift fleets</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>ListFleets</a> |
    #                     <a>DescribeEC2InstanceLimits</a> |
    #                     <a>DescribeFleetAttributes</a> |
    #                     <a>DescribeFleetCapacity</a> |
    #                     <a>DescribeFleetEvents</a> |
    #                     <a>DescribeFleetLocationAttributes</a> |
    #                     <a>DescribeFleetPortSettings</a> |
    #                     <a>DescribeFleetUtilization</a> |
    #                     <a>DescribeRuntimeConfiguration</a> |
    #                     <a>DescribeScalingPolicies</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFleetPortSettingsInput}.
    #
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to retrieve port settings for. You can use either the fleet ID or ARN
    #               value.</p>
    #
    # @option params [String] :location
    #   <p>A remote location to check for status of port setting updates. Use the Amazon Web Services Region code
    #               format, such as <code>us-west-2</code>.</p>
    #
    # @return [Types::DescribeFleetPortSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_port_settings(
    #     fleet_id: 'FleetId', # required
    #     location: 'Location'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFleetPortSettingsOutput
    #   resp.data.fleet_id #=> String
    #   resp.data.fleet_arn #=> String
    #   resp.data.inbound_permissions #=> Array<IpPermission>
    #   resp.data.inbound_permissions[0] #=> Types::IpPermission
    #   resp.data.inbound_permissions[0].from_port #=> Integer
    #   resp.data.inbound_permissions[0].to_port #=> Integer
    #   resp.data.inbound_permissions[0].ip_range #=> String
    #   resp.data.inbound_permissions[0].protocol #=> String, one of ["TCP", "UDP"]
    #   resp.data.update_status #=> String, one of ["PENDING_UPDATE"]
    #   resp.data.location #=> String
    #
    def describe_fleet_port_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFleetPortSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFleetPortSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFleetPortSettings
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeFleetPortSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFleetPortSettings,
        stubs: @stubs,
        params_class: Params::DescribeFleetPortSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_fleet_port_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves utilization statistics for one or more fleets. Utilization data provides a
    #             snapshot of how the fleet's hosting resources are currently being used. For fleets with
    #             remote locations, this operation retrieves data for the fleet's home Region only. See <a>DescribeFleetLocationUtilization</a> to get utilization statistics for a
    #             fleet's remote locations.</p>
    #         <p>This operation can be used in the following ways: </p>
    #         <ul>
    #             <li>
    #                 <p>To get utilization data for one or more specific fleets, provide a list of
    #                     fleet IDs or fleet ARNs. </p>
    #             </li>
    #             <li>
    #                 <p>To get utilization data for all fleets, do not provide a fleet identifier.
    #                 </p>
    #             </li>
    #          </ul>
    #         <p>When requesting multiple fleets, use the pagination parameters to retrieve results as
    #             a set of sequential pages. </p>
    #         <p>If successful, a <a>FleetUtilization</a> object is returned for each
    #             requested fleet ID, unless the fleet identifier is not found. Each fleet utilization
    #             object includes a <code>Location</code> property, which is set to the fleet's home
    #             Region. </p>
    #         <note>
    #             <p>Some API operations may limit the number of fleet IDs allowed in one request. If a
    #                 request exceeds this limit, the request fails and the error message includes the
    #                 maximum allowed.</p>
    #         </note>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up GameLift Fleets</a>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html#gamelift-metrics-fleet">GameLift Metrics for Fleets</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>ListFleets</a> |
    #                     <a>DescribeEC2InstanceLimits</a> |
    #                     <a>DescribeFleetAttributes</a> |
    #                     <a>DescribeFleetCapacity</a> |
    #                     <a>DescribeFleetEvents</a> |
    #                     <a>DescribeFleetLocationAttributes</a> |
    #                     <a>DescribeFleetPortSettings</a> |
    #                     <a>DescribeFleetUtilization</a> |
    #                     <a>DescribeRuntimeConfiguration</a> |
    #                     <a>DescribeScalingPolicies</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFleetUtilizationInput}.
    #
    # @option params [Array<String>] :fleet_ids
    #   <p>A unique identifier for the fleet(s) to retrieve utilization data for. You can use either the fleet ID or ARN
    #               value. To retrieve attributes for all current fleets, do not include this parameter. </p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. This parameter is ignored when the request specifies one or a list of fleet
    #               IDs.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value. This parameter is ignored when the request specifies one or a list of fleet
    #               IDs.</p>
    #
    # @return [Types::DescribeFleetUtilizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_utilization(
    #     fleet_ids: [
    #       'member'
    #     ],
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFleetUtilizationOutput
    #   resp.data.fleet_utilization #=> Array<FleetUtilization>
    #   resp.data.fleet_utilization[0] #=> Types::FleetUtilization
    #   resp.data.fleet_utilization[0].fleet_id #=> String
    #   resp.data.fleet_utilization[0].fleet_arn #=> String
    #   resp.data.fleet_utilization[0].active_server_process_count #=> Integer
    #   resp.data.fleet_utilization[0].active_game_session_count #=> Integer
    #   resp.data.fleet_utilization[0].current_player_session_count #=> Integer
    #   resp.data.fleet_utilization[0].maximum_player_session_count #=> Integer
    #   resp.data.fleet_utilization[0].location #=> String
    #   resp.data.next_token #=> String
    #
    def describe_fleet_utilization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFleetUtilizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFleetUtilizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFleetUtilization
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeFleetUtilization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFleetUtilization,
        stubs: @stubs,
        params_class: Params::DescribeFleetUtilizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_fleet_utilization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             <b>This operation is used with the GameLift FleetIQ solution and game server groups.</b>
    #          </p>
    #         <p>Retrieves information for a registered game server. Information includes game server
    #             status, health check info, and the instance that the game server is running on. </p>
    #         <p>To retrieve game server information, specify the game server ID. If successful, the
    #             requested game server object is returned. </p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html">GameLift FleetIQ Guide</a>
    #         </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>RegisterGameServer</a> |
    #                     <a>ListGameServers</a> |
    #                     <a>ClaimGameServer</a> |
    #                     <a>DescribeGameServer</a> |
    #                     <a>UpdateGameServer</a> |
    #                     <a>DeregisterGameServer</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeGameServerInput}.
    #
    # @option params [String] :game_server_group_name
    #   <p>A unique identifier for the game server group where the game server is running.
    #               Use either the <a>GameServerGroup</a> name or ARN value.</p>
    #
    # @option params [String] :game_server_id
    #   <p>A custom string that uniquely identifies the game server information to be retrieved.</p>
    #
    # @return [Types::DescribeGameServerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_game_server(
    #     game_server_group_name: 'GameServerGroupName', # required
    #     game_server_id: 'GameServerId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeGameServerOutput
    #   resp.data.game_server #=> Types::GameServer
    #   resp.data.game_server.game_server_group_name #=> String
    #   resp.data.game_server.game_server_group_arn #=> String
    #   resp.data.game_server.game_server_id #=> String
    #   resp.data.game_server.instance_id #=> String
    #   resp.data.game_server.connection_info #=> String
    #   resp.data.game_server.game_server_data #=> String
    #   resp.data.game_server.claim_status #=> String, one of ["CLAIMED"]
    #   resp.data.game_server.utilization_status #=> String, one of ["AVAILABLE", "UTILIZED"]
    #   resp.data.game_server.registration_time #=> Time
    #   resp.data.game_server.last_claim_time #=> Time
    #   resp.data.game_server.last_health_check_time #=> Time
    #
    def describe_game_server(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeGameServerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeGameServerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeGameServer
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeGameServer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeGameServer,
        stubs: @stubs,
        params_class: Params::DescribeGameServerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_game_server
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             <b>This operation is used with the GameLift FleetIQ solution and game server groups.</b>
    #          </p>
    #         <p>Retrieves information on a game server group. This operation returns only properties
    #             related to GameLift FleetIQ. To view or update properties for the corresponding Auto Scaling group,
    #             such as launch template, auto scaling policies, and maximum/minimum group size, access
    #             the Auto Scaling group directly.</p>
    #         <p>To get attributes for a game server group, provide a group name or ARN value. If
    #             successful, a <a>GameServerGroup</a> object is returned.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html">GameLift FleetIQ Guide</a>
    #         </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateGameServerGroup</a> |
    #                     <a>ListGameServerGroups</a> |
    #                     <a>DescribeGameServerGroup</a> |
    #                     <a>UpdateGameServerGroup</a> |
    #                     <a>DeleteGameServerGroup</a> |
    #                     <a>ResumeGameServerGroup</a> |
    #                     <a>SuspendGameServerGroup</a> |
    #                     <a>DescribeGameServerInstances</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeGameServerGroupInput}.
    #
    # @option params [String] :game_server_group_name
    #   <p>A unique identifier for the game server group. Use either the <a>GameServerGroup</a> name or ARN value.</p>
    #
    # @return [Types::DescribeGameServerGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_game_server_group(
    #     game_server_group_name: 'GameServerGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeGameServerGroupOutput
    #   resp.data.game_server_group #=> Types::GameServerGroup
    #   resp.data.game_server_group.game_server_group_name #=> String
    #   resp.data.game_server_group.game_server_group_arn #=> String
    #   resp.data.game_server_group.role_arn #=> String
    #   resp.data.game_server_group.instance_definitions #=> Array<InstanceDefinition>
    #   resp.data.game_server_group.instance_definitions[0] #=> Types::InstanceDefinition
    #   resp.data.game_server_group.instance_definitions[0].instance_type #=> String, one of ["c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge"]
    #   resp.data.game_server_group.instance_definitions[0].weighted_capacity #=> String
    #   resp.data.game_server_group.balancing_strategy #=> String, one of ["SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"]
    #   resp.data.game_server_group.game_server_protection_policy #=> String, one of ["NO_PROTECTION", "FULL_PROTECTION"]
    #   resp.data.game_server_group.auto_scaling_group_arn #=> String
    #   resp.data.game_server_group.status #=> String, one of ["NEW", "ACTIVATING", "ACTIVE", "DELETE_SCHEDULED", "DELETING", "DELETED", "ERROR"]
    #   resp.data.game_server_group.status_reason #=> String
    #   resp.data.game_server_group.suspended_actions #=> Array<String>
    #   resp.data.game_server_group.suspended_actions[0] #=> String, one of ["REPLACE_INSTANCE_TYPES"]
    #   resp.data.game_server_group.creation_time #=> Time
    #   resp.data.game_server_group.last_updated_time #=> Time
    #
    def describe_game_server_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeGameServerGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeGameServerGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeGameServerGroup
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeGameServerGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeGameServerGroup,
        stubs: @stubs,
        params_class: Params::DescribeGameServerGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_game_server_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             <b>This operation is used with the GameLift FleetIQ solution and game server groups.</b>
    #          </p>
    #         <p>Retrieves status information about the Amazon EC2 instances associated with a GameLift FleetIQ
    #             game server group. Use this operation to detect when instances are active or not
    #             available to host new game servers. If you are looking for instance configuration
    #             information, call <a>DescribeGameServerGroup</a> or access the corresponding
    #             Auto Scaling group properties.</p>
    #         <p>To request status for all instances in the game server group, provide a game server
    #             group ID only. To request status for specific instances, provide the game server group
    #             ID and one or more instance IDs. Use the pagination parameters to retrieve results in
    #             sequential segments. If successful, a collection of <code>GameServerInstance</code>
    #             objects is returned.
    #
    #         </p>
    #         <p>This operation is not designed to be called with every game server claim request; this
    #             practice can cause you to exceed your API limit, which results in errors. Instead, as a
    #             best practice, cache the results and refresh your cache no more than once every 10
    #             seconds.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html">GameLift FleetIQ Guide</a>
    #         </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateGameServerGroup</a> |
    #                     <a>ListGameServerGroups</a> |
    #                     <a>DescribeGameServerGroup</a> |
    #                     <a>UpdateGameServerGroup</a> |
    #                     <a>DeleteGameServerGroup</a> |
    #                     <a>ResumeGameServerGroup</a> |
    #                     <a>SuspendGameServerGroup</a> |
    #                     <a>DescribeGameServerInstances</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeGameServerInstancesInput}.
    #
    # @option params [String] :game_server_group_name
    #   <p>A unique identifier for the game server group. Use either the <a>GameServerGroup</a> name or ARN value.</p>
    #
    # @option params [Array<String>] :instance_ids
    #   <p>The Amazon EC2 instance IDs that you want to retrieve status on. Amazon EC2 instance IDs use a
    #               17-character format, for example: <code>i-1234567890abcdef0</code>. To retrieve all
    #               instances in the game server group, leave this parameter empty. </p>
    #
    # @option params [Integer] :limit
    #   <p>
    #               The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.
    #           </p>
    #
    # @option params [String] :next_token
    #   <p>
    #               A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.
    #           </p>
    #
    # @return [Types::DescribeGameServerInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_game_server_instances(
    #     game_server_group_name: 'GameServerGroupName', # required
    #     instance_ids: [
    #       'member'
    #     ],
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeGameServerInstancesOutput
    #   resp.data.game_server_instances #=> Array<GameServerInstance>
    #   resp.data.game_server_instances[0] #=> Types::GameServerInstance
    #   resp.data.game_server_instances[0].game_server_group_name #=> String
    #   resp.data.game_server_instances[0].game_server_group_arn #=> String
    #   resp.data.game_server_instances[0].instance_id #=> String
    #   resp.data.game_server_instances[0].instance_status #=> String, one of ["ACTIVE", "DRAINING", "SPOT_TERMINATING"]
    #   resp.data.next_token #=> String
    #
    def describe_game_server_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeGameServerInstancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeGameServerInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeGameServerInstances
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeGameServerInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeGameServerInstances,
        stubs: @stubs,
        params_class: Params::DescribeGameServerInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_game_server_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves additional game session properties, including the game session protection
    #             policy in force, a set of one or more game sessions in a specific fleet location. You
    #             can optionally filter the results by current game session status. Alternatively, use
    #                 <a>SearchGameSessions</a> to request a set of active game sessions that
    #             are filtered by certain criteria. To retrieve all game session properties, use <a>DescribeGameSessions</a>. </p>
    #         <p>This operation can be used in the following ways: </p>
    #         <ul>
    #             <li>
    #                 <p>To retrieve details for all game sessions that are currently running on all
    #                     locations in a fleet, provide a fleet or alias ID, with an optional status
    #                     filter. This approach returns details from the fleet's home Region and all
    #                     remote locations.</p>
    #             </li>
    #             <li>
    #                 <p>To retrieve details for all game sessions that are currently running on a
    #                     specific fleet location, provide a fleet or alias ID and a location name, with
    #                     optional status filter. The location can be the fleet's home Region or any
    #                     remote location.</p>
    #             </li>
    #             <li>
    #                 <p>To retrieve details for a specific game session, provide the game session ID.
    #                     This approach looks for the game session ID in all fleets that reside in the Amazon Web Services
    #                     Region defined in the request.</p>
    #             </li>
    #          </ul>
    #         <p>Use the pagination parameters to retrieve results as a set of sequential pages. </p>
    #         <p>If successful, a <code>GameSessionDetail</code> object is returned for each game
    #             session that matches the request.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#gamelift-sdk-client-api-find">Find a game session</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateGameSession</a> |
    #                     <a>DescribeGameSessions</a> |
    #                     <a>DescribeGameSessionDetails</a> |
    #                     <a>SearchGameSessions</a> |
    #                     <a>UpdateGameSession</a> |
    #                     <a>GetGameSessionLogUrl</a> |
    #                     <a>StartGameSessionPlacement</a> |
    #                     <a>DescribeGameSessionPlacement</a> |
    #                     <a>StopGameSessionPlacement</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeGameSessionDetailsInput}.
    #
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to retrieve all game sessions active on the fleet. You can use either the fleet
    #               ID or ARN value.</p>
    #
    # @option params [String] :game_session_id
    #   <p>A unique identifier for the game session to retrieve. </p>
    #
    # @option params [String] :alias_id
    #   <p>A unique identifier for the alias associated with the fleet to retrieve all game sessions for. You can use either
    #               the alias ID or ARN value.</p>
    #
    # @option params [String] :location
    #   <p>A fleet location to get game sessions for. You can specify a fleet's home Region or a
    #               remote location. Use the Amazon Web Services Region code format, such as <code>us-west-2</code>. </p>
    #
    # @option params [String] :status_filter
    #   <p>Game session status to filter results on. Possible game session statuses include
    #                   <code>ACTIVE</code>, <code>TERMINATED</code>, <code>ACTIVATING</code> and
    #                   <code>TERMINATING</code> (the last two are transitory). </p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #
    # @return [Types::DescribeGameSessionDetailsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_game_session_details(
    #     fleet_id: 'FleetId',
    #     game_session_id: 'GameSessionId',
    #     alias_id: 'AliasId',
    #     location: 'Location',
    #     status_filter: 'StatusFilter',
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeGameSessionDetailsOutput
    #   resp.data.game_session_details #=> Array<GameSessionDetail>
    #   resp.data.game_session_details[0] #=> Types::GameSessionDetail
    #   resp.data.game_session_details[0].game_session #=> Types::GameSession
    #   resp.data.game_session_details[0].game_session.game_session_id #=> String
    #   resp.data.game_session_details[0].game_session.name #=> String
    #   resp.data.game_session_details[0].game_session.fleet_id #=> String
    #   resp.data.game_session_details[0].game_session.fleet_arn #=> String
    #   resp.data.game_session_details[0].game_session.creation_time #=> Time
    #   resp.data.game_session_details[0].game_session.termination_time #=> Time
    #   resp.data.game_session_details[0].game_session.current_player_session_count #=> Integer
    #   resp.data.game_session_details[0].game_session.maximum_player_session_count #=> Integer
    #   resp.data.game_session_details[0].game_session.status #=> String, one of ["ACTIVE", "ACTIVATING", "TERMINATED", "TERMINATING", "ERROR"]
    #   resp.data.game_session_details[0].game_session.status_reason #=> String, one of ["INTERRUPTED"]
    #   resp.data.game_session_details[0].game_session.game_properties #=> Array<GameProperty>
    #   resp.data.game_session_details[0].game_session.game_properties[0] #=> Types::GameProperty
    #   resp.data.game_session_details[0].game_session.game_properties[0].key #=> String
    #   resp.data.game_session_details[0].game_session.game_properties[0].value #=> String
    #   resp.data.game_session_details[0].game_session.ip_address #=> String
    #   resp.data.game_session_details[0].game_session.dns_name #=> String
    #   resp.data.game_session_details[0].game_session.port #=> Integer
    #   resp.data.game_session_details[0].game_session.player_session_creation_policy #=> String, one of ["ACCEPT_ALL", "DENY_ALL"]
    #   resp.data.game_session_details[0].game_session.creator_id #=> String
    #   resp.data.game_session_details[0].game_session.game_session_data #=> String
    #   resp.data.game_session_details[0].game_session.matchmaker_data #=> String
    #   resp.data.game_session_details[0].game_session.location #=> String
    #   resp.data.game_session_details[0].protection_policy #=> String, one of ["NoProtection", "FullProtection"]
    #   resp.data.next_token #=> String
    #
    def describe_game_session_details(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeGameSessionDetailsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeGameSessionDetailsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeGameSessionDetails
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedRegionException, Errors::NotFoundException, Errors::TerminalRoutingStrategyException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeGameSessionDetails
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeGameSessionDetails,
        stubs: @stubs,
        params_class: Params::DescribeGameSessionDetailsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_game_session_details
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information, including current status, about a game session placement request. </p>
    #          <p>To get game session placement details, specify the placement ID.</p>
    #          <p>This operation is not designed to be continually called to track game session status.
    #         This practice can cause you to exceed your API limit, which results in errors. Instead,
    #         you must configure configure an
    #         Amazon Simple Notification Service (SNS) topic to receive notifications from FlexMatch or queues. Continuously polling
    #         with <code>DescribeGameSessionPlacement</code> should only be used for games in development with
    #         low game session usage.
    #     </p>
    #
    #          <p>If successful, a <a>GameSessionPlacement</a> object is returned.</p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateGameSession</a> |
    #                     <a>DescribeGameSessions</a> |
    #                     <a>DescribeGameSessionDetails</a> |
    #                     <a>SearchGameSessions</a> |
    #                     <a>UpdateGameSession</a> |
    #                     <a>GetGameSessionLogUrl</a> |
    #                     <a>StartGameSessionPlacement</a> |
    #                     <a>DescribeGameSessionPlacement</a> |
    #                     <a>StopGameSessionPlacement</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeGameSessionPlacementInput}.
    #
    # @option params [String] :placement_id
    #   <p>A unique identifier for a game session placement to retrieve.</p>
    #
    # @return [Types::DescribeGameSessionPlacementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_game_session_placement(
    #     placement_id: 'PlacementId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeGameSessionPlacementOutput
    #   resp.data.game_session_placement #=> Types::GameSessionPlacement
    #   resp.data.game_session_placement.placement_id #=> String
    #   resp.data.game_session_placement.game_session_queue_name #=> String
    #   resp.data.game_session_placement.status #=> String, one of ["PENDING", "FULFILLED", "CANCELLED", "TIMED_OUT", "FAILED"]
    #   resp.data.game_session_placement.game_properties #=> Array<GameProperty>
    #   resp.data.game_session_placement.game_properties[0] #=> Types::GameProperty
    #   resp.data.game_session_placement.game_properties[0].key #=> String
    #   resp.data.game_session_placement.game_properties[0].value #=> String
    #   resp.data.game_session_placement.maximum_player_session_count #=> Integer
    #   resp.data.game_session_placement.game_session_name #=> String
    #   resp.data.game_session_placement.game_session_id #=> String
    #   resp.data.game_session_placement.game_session_arn #=> String
    #   resp.data.game_session_placement.game_session_region #=> String
    #   resp.data.game_session_placement.player_latencies #=> Array<PlayerLatency>
    #   resp.data.game_session_placement.player_latencies[0] #=> Types::PlayerLatency
    #   resp.data.game_session_placement.player_latencies[0].player_id #=> String
    #   resp.data.game_session_placement.player_latencies[0].region_identifier #=> String
    #   resp.data.game_session_placement.player_latencies[0].latency_in_milliseconds #=> Float
    #   resp.data.game_session_placement.start_time #=> Time
    #   resp.data.game_session_placement.end_time #=> Time
    #   resp.data.game_session_placement.ip_address #=> String
    #   resp.data.game_session_placement.dns_name #=> String
    #   resp.data.game_session_placement.port #=> Integer
    #   resp.data.game_session_placement.placed_player_sessions #=> Array<PlacedPlayerSession>
    #   resp.data.game_session_placement.placed_player_sessions[0] #=> Types::PlacedPlayerSession
    #   resp.data.game_session_placement.placed_player_sessions[0].player_id #=> String
    #   resp.data.game_session_placement.placed_player_sessions[0].player_session_id #=> String
    #   resp.data.game_session_placement.game_session_data #=> String
    #   resp.data.game_session_placement.matchmaker_data #=> String
    #
    def describe_game_session_placement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeGameSessionPlacementInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeGameSessionPlacementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeGameSessionPlacement
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeGameSessionPlacement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeGameSessionPlacement,
        stubs: @stubs,
        params_class: Params::DescribeGameSessionPlacementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_game_session_placement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the properties for one or more game session queues. When requesting
    #             multiple queues, use the pagination parameters to retrieve results as a set of
    #             sequential pages. If successful, a <a>GameSessionQueue</a> object is returned
    #             for each requested queue. When specifying a list of queues, objects are returned only
    #             for queues that currently exist in the Region.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-console.html">
    #            View Your Queues</a>
    #         </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateGameSessionQueue.html">CreateGameSessionQueue</a>
    #                     |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeGameSessionQueues.html">DescribeGameSessionQueues</a>
    #                     |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateGameSessionQueue.html">UpdateGameSessionQueue</a>
    #                     |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DeleteGameSessionQueue.html">DeleteGameSessionQueue</a>
    #                     |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeGameSessionQueuesInput}.
    #
    # @option params [Array<String>] :names
    #   <p>A list of queue names to retrieve information for. You can use either the queue ID or
    #               ARN value. To request settings for all queues, leave this parameter empty. </p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. You can request up to 50 results.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #
    # @return [Types::DescribeGameSessionQueuesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_game_session_queues(
    #     names: [
    #       'member'
    #     ],
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeGameSessionQueuesOutput
    #   resp.data.game_session_queues #=> Array<GameSessionQueue>
    #   resp.data.game_session_queues[0] #=> Types::GameSessionQueue
    #   resp.data.game_session_queues[0].name #=> String
    #   resp.data.game_session_queues[0].game_session_queue_arn #=> String
    #   resp.data.game_session_queues[0].timeout_in_seconds #=> Integer
    #   resp.data.game_session_queues[0].player_latency_policies #=> Array<PlayerLatencyPolicy>
    #   resp.data.game_session_queues[0].player_latency_policies[0] #=> Types::PlayerLatencyPolicy
    #   resp.data.game_session_queues[0].player_latency_policies[0].maximum_individual_player_latency_milliseconds #=> Integer
    #   resp.data.game_session_queues[0].player_latency_policies[0].policy_duration_seconds #=> Integer
    #   resp.data.game_session_queues[0].destinations #=> Array<GameSessionQueueDestination>
    #   resp.data.game_session_queues[0].destinations[0] #=> Types::GameSessionQueueDestination
    #   resp.data.game_session_queues[0].destinations[0].destination_arn #=> String
    #   resp.data.game_session_queues[0].filter_configuration #=> Types::FilterConfiguration
    #   resp.data.game_session_queues[0].filter_configuration.allowed_locations #=> Array<String>
    #   resp.data.game_session_queues[0].filter_configuration.allowed_locations[0] #=> String
    #   resp.data.game_session_queues[0].priority_configuration #=> Types::PriorityConfiguration
    #   resp.data.game_session_queues[0].priority_configuration.priority_order #=> Array<String>
    #   resp.data.game_session_queues[0].priority_configuration.priority_order[0] #=> String, one of ["LATENCY", "COST", "DESTINATION", "LOCATION"]
    #   resp.data.game_session_queues[0].priority_configuration.location_order #=> Array<String>
    #   resp.data.game_session_queues[0].custom_event_data #=> String
    #   resp.data.game_session_queues[0].notification_target #=> String
    #   resp.data.next_token #=> String
    #
    def describe_game_session_queues(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeGameSessionQueuesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeGameSessionQueuesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeGameSessionQueues
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeGameSessionQueues
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeGameSessionQueues,
        stubs: @stubs,
        params_class: Params::DescribeGameSessionQueuesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_game_session_queues
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a set of one or more game sessions in a specific fleet location. You can
    #             optionally filter the results by current game session status. Alternatively, use <a>SearchGameSessions</a> to request a set of active game sessions that are
    #             filtered by certain criteria. To retrieve the protection policy for game sessions, use
    #                 <a>DescribeGameSessionDetails</a>.</p>
    #         <p>This operation is not designed to be continually called to track game session status.
    #             This practice can cause you to exceed your API limit, which results in errors. Instead,
    #             you must configure configure an
    #             Amazon Simple Notification Service (SNS) topic to receive notifications from FlexMatch or queues. Continuously polling
    #             with <code>DescribeGameSessions</code> should only be used for games in development with
    #             low game session usage.
    #         </p>
    #
    #         <p>This operation can be used in the following ways: </p>
    #         <ul>
    #             <li>
    #                 <p>To retrieve all game sessions that are currently running on all locations in a
    #                     fleet, provide a fleet or alias ID, with an optional status filter. This
    #                     approach returns all game sessions in the fleet's home Region and all remote
    #                     locations.</p>
    #             </li>
    #             <li>
    #                 <p>To retrieve all game sessions that are currently running on a specific fleet
    #                     location, provide a fleet or alias ID and a location name, with optional status
    #                     filter. The location can be the fleet's home Region or any remote
    #                     location.</p>
    #             </li>
    #             <li>
    #                 <p>To retrieve a specific game session, provide the game session ID. This
    #                     approach looks for the game session ID in all fleets that reside in the Amazon Web Services
    #                     Region defined in the request.</p>
    #             </li>
    #          </ul>
    #         <p>Use the pagination parameters to retrieve results as a set of sequential pages. </p>
    #         <p>If successful, a <code>GameSession</code> object is returned for each game session
    #             that matches the request.</p>
    #         <p>This operation is not designed to be continually called to track matchmaking ticket
    #             status. This practice can cause you to exceed your API limit, which results in errors.
    #             Instead, as a best practice, set up an Amazon Simple Notification Service to receive notifications, and provide
    #             the topic ARN in the matchmaking configuration. Continuously poling ticket status with
    #             <a>DescribeGameSessions</a> should only be used for games in development
    #             with low matchmaking usage.</p>
    #         <p>
    #             <i>Available in Amazon GameLift Local.</i>
    #          </p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-client-api.html#gamelift-sdk-client-api-find">Find a game session</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateGameSession</a> |
    #                     <a>DescribeGameSessions</a> |
    #                     <a>DescribeGameSessionDetails</a> |
    #                     <a>SearchGameSessions</a> |
    #                     <a>UpdateGameSession</a> |
    #                     <a>GetGameSessionLogUrl</a> |
    #                     <a>StartGameSessionPlacement</a> |
    #                     <a>DescribeGameSessionPlacement</a> |
    #                     <a>StopGameSessionPlacement</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeGameSessionsInput}.
    #
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to retrieve game sessions for. You can use either the fleet ID or ARN value. </p>
    #
    # @option params [String] :game_session_id
    #   <p>A unique identifier for the game session to retrieve. </p>
    #
    # @option params [String] :alias_id
    #   <p>A unique identifier for the alias associated with the fleet to retrieve game sessions for. You can use either the
    #               alias ID or ARN value.</p>
    #
    # @option params [String] :location
    #   <p>A fleet location to get game session details for. You can specify a fleet's home
    #               Region or a remote location. Use the Amazon Web Services Region code format, such as
    #                   <code>us-west-2</code>. </p>
    #
    # @option params [String] :status_filter
    #   <p>Game session status to filter results on. You can filter on the following states:
    #                   <code>ACTIVE</code>, <code>TERMINATED</code>, <code>ACTIVATING</code>, and
    #                   <code>TERMINATING</code>. The last two are transitory and used for only very brief
    #               periods of time. </p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #
    # @return [Types::DescribeGameSessionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_game_sessions(
    #     fleet_id: 'FleetId',
    #     game_session_id: 'GameSessionId',
    #     alias_id: 'AliasId',
    #     location: 'Location',
    #     status_filter: 'StatusFilter',
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeGameSessionsOutput
    #   resp.data.game_sessions #=> Array<GameSession>
    #   resp.data.game_sessions[0] #=> Types::GameSession
    #   resp.data.game_sessions[0].game_session_id #=> String
    #   resp.data.game_sessions[0].name #=> String
    #   resp.data.game_sessions[0].fleet_id #=> String
    #   resp.data.game_sessions[0].fleet_arn #=> String
    #   resp.data.game_sessions[0].creation_time #=> Time
    #   resp.data.game_sessions[0].termination_time #=> Time
    #   resp.data.game_sessions[0].current_player_session_count #=> Integer
    #   resp.data.game_sessions[0].maximum_player_session_count #=> Integer
    #   resp.data.game_sessions[0].status #=> String, one of ["ACTIVE", "ACTIVATING", "TERMINATED", "TERMINATING", "ERROR"]
    #   resp.data.game_sessions[0].status_reason #=> String, one of ["INTERRUPTED"]
    #   resp.data.game_sessions[0].game_properties #=> Array<GameProperty>
    #   resp.data.game_sessions[0].game_properties[0] #=> Types::GameProperty
    #   resp.data.game_sessions[0].game_properties[0].key #=> String
    #   resp.data.game_sessions[0].game_properties[0].value #=> String
    #   resp.data.game_sessions[0].ip_address #=> String
    #   resp.data.game_sessions[0].dns_name #=> String
    #   resp.data.game_sessions[0].port #=> Integer
    #   resp.data.game_sessions[0].player_session_creation_policy #=> String, one of ["ACCEPT_ALL", "DENY_ALL"]
    #   resp.data.game_sessions[0].creator_id #=> String
    #   resp.data.game_sessions[0].game_session_data #=> String
    #   resp.data.game_sessions[0].matchmaker_data #=> String
    #   resp.data.game_sessions[0].location #=> String
    #   resp.data.next_token #=> String
    #
    def describe_game_sessions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeGameSessionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeGameSessionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeGameSessions
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedRegionException, Errors::NotFoundException, Errors::TerminalRoutingStrategyException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeGameSessions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeGameSessions,
        stubs: @stubs,
        params_class: Params::DescribeGameSessionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_game_sessions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about a fleet's instances, including instance IDs, connection
    #             data, and status. </p>
    #         <p>This operation can be used in the following ways:</p>
    #         <ul>
    #             <li>
    #                 <p>To get information on all instances that are deployed to a fleet's home
    #                     Region, provide the fleet ID.</p>
    #             </li>
    #             <li>
    #                 <p>To get information on all instances that are deployed to a fleet's remote
    #                     location, provide the fleet ID and location name.</p>
    #             </li>
    #             <li>
    #                 <p>To get information on a specific instance in a fleet, provide the fleet ID and
    #                     instance ID.</p>
    #             </li>
    #          </ul>
    #         <p>Use the pagination parameters to retrieve results as a set of sequential pages. </p>
    #         <p>If successful, an <code>Instance</code> object is returned for each requested
    #             instance. Instances are not returned in any particular order. </p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-remote-access.html">Remotely Access Fleet Instances</a>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html">Debug Fleet Issues</a>
    #          </p>
    #
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>DescribeInstances</a> |
    #                     <a>GetInstanceAccess</a> |
    #                     <a>DescribeEC2InstanceLimits</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeInstancesInput}.
    #
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to retrieve instance information for.  You can use either the fleet ID or ARN
    #               value.</p>
    #
    # @option params [String] :instance_id
    #   <p>A unique identifier for an instance to retrieve. Specify an instance ID or leave
    #               blank to retrieve all instances in the fleet.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #
    # @option params [String] :location
    #   <p>The name of a location to retrieve instance information for, in the form of an Amazon Web Services
    #               Region code such as <code>us-west-2</code>. </p>
    #
    # @return [Types::DescribeInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instances(
    #     fleet_id: 'FleetId', # required
    #     instance_id: 'InstanceId',
    #     limit: 1,
    #     next_token: 'NextToken',
    #     location: 'Location'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeInstancesOutput
    #   resp.data.instances #=> Array<Instance>
    #   resp.data.instances[0] #=> Types::Instance
    #   resp.data.instances[0].fleet_id #=> String
    #   resp.data.instances[0].fleet_arn #=> String
    #   resp.data.instances[0].instance_id #=> String
    #   resp.data.instances[0].ip_address #=> String
    #   resp.data.instances[0].dns_name #=> String
    #   resp.data.instances[0].operating_system #=> String, one of ["WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2"]
    #   resp.data.instances[0].type #=> String, one of ["t2.micro", "t2.small", "t2.medium", "t2.large", "c3.large", "c3.xlarge", "c3.2xlarge", "c3.4xlarge", "c3.8xlarge", "c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "r3.large", "r3.xlarge", "r3.2xlarge", "r3.4xlarge", "r3.8xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "m3.medium", "m3.large", "m3.xlarge", "m3.2xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge"]
    #   resp.data.instances[0].status #=> String, one of ["PENDING", "ACTIVE", "TERMINATING"]
    #   resp.data.instances[0].creation_time #=> Time
    #   resp.data.instances[0].location #=> String
    #   resp.data.next_token #=> String
    #
    def describe_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeInstancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeInstances
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedRegionException, Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeInstances,
        stubs: @stubs,
        params_class: Params::DescribeInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves one or more matchmaking tickets. Use this operation to retrieve ticket
    #             information, including--after a successful match is made--connection information for the
    #             resulting new game session. </p>
    #         <p>To request matchmaking tickets, provide a list of up to 10 ticket IDs. If the
    #             request is successful, a ticket object is returned for each requested ID that currently
    #             exists.</p>
    #         <p>This operation is not designed to be continually called to track matchmaking ticket
    #             status. This practice can cause you to exceed your API limit, which results in errors.
    #             Instead, as a best practice, set up an Amazon Simple Notification Service to receive notifications, and provide
    #             the topic ARN in the matchmaking configuration. Continuously polling ticket status with
    #                 <a>DescribeMatchmaking</a> should only be used for games in development
    #             with low matchmaking usage.</p>
    #         <p></p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-client.html">
    #             Add FlexMatch to a game client</a>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html">
    #             Set Up FlexMatch event notification</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>StartMatchmaking</a> |
    #                     <a>DescribeMatchmaking</a> |
    #                     <a>StopMatchmaking</a> |
    #                     <a>AcceptMatch</a> |
    #                     <a>StartMatchBackfill</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeMatchmakingInput}.
    #
    # @option params [Array<String>] :ticket_ids
    #   <p>A unique identifier for a matchmaking ticket. You can include up to 10 ID values. </p>
    #
    # @return [Types::DescribeMatchmakingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_matchmaking(
    #     ticket_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeMatchmakingOutput
    #   resp.data.ticket_list #=> Array<MatchmakingTicket>
    #   resp.data.ticket_list[0] #=> Types::MatchmakingTicket
    #   resp.data.ticket_list[0].ticket_id #=> String
    #   resp.data.ticket_list[0].configuration_name #=> String
    #   resp.data.ticket_list[0].configuration_arn #=> String
    #   resp.data.ticket_list[0].status #=> String, one of ["CANCELLED", "COMPLETED", "FAILED", "PLACING", "QUEUED", "REQUIRES_ACCEPTANCE", "SEARCHING", "TIMED_OUT"]
    #   resp.data.ticket_list[0].status_reason #=> String
    #   resp.data.ticket_list[0].status_message #=> String
    #   resp.data.ticket_list[0].start_time #=> Time
    #   resp.data.ticket_list[0].end_time #=> Time
    #   resp.data.ticket_list[0].players #=> Array<Player>
    #   resp.data.ticket_list[0].players[0] #=> Types::Player
    #   resp.data.ticket_list[0].players[0].player_id #=> String
    #   resp.data.ticket_list[0].players[0].player_attributes #=> Hash<String, AttributeValue>
    #   resp.data.ticket_list[0].players[0].player_attributes['key'] #=> Types::AttributeValue
    #   resp.data.ticket_list[0].players[0].player_attributes['key'].s #=> String
    #   resp.data.ticket_list[0].players[0].player_attributes['key'].n #=> Float
    #   resp.data.ticket_list[0].players[0].player_attributes['key'].sl #=> Array<String>
    #   resp.data.ticket_list[0].players[0].player_attributes['key'].sl[0] #=> String
    #   resp.data.ticket_list[0].players[0].player_attributes['key'].sdm #=> Hash<String, Float>
    #   resp.data.ticket_list[0].players[0].player_attributes['key'].sdm['key'] #=> Float
    #   resp.data.ticket_list[0].players[0].team #=> String
    #   resp.data.ticket_list[0].players[0].latency_in_ms #=> Hash<String, Integer>
    #   resp.data.ticket_list[0].players[0].latency_in_ms['key'] #=> Integer
    #   resp.data.ticket_list[0].game_session_connection_info #=> Types::GameSessionConnectionInfo
    #   resp.data.ticket_list[0].game_session_connection_info.game_session_arn #=> String
    #   resp.data.ticket_list[0].game_session_connection_info.ip_address #=> String
    #   resp.data.ticket_list[0].game_session_connection_info.dns_name #=> String
    #   resp.data.ticket_list[0].game_session_connection_info.port #=> Integer
    #   resp.data.ticket_list[0].game_session_connection_info.matched_player_sessions #=> Array<MatchedPlayerSession>
    #   resp.data.ticket_list[0].game_session_connection_info.matched_player_sessions[0] #=> Types::MatchedPlayerSession
    #   resp.data.ticket_list[0].game_session_connection_info.matched_player_sessions[0].player_id #=> String
    #   resp.data.ticket_list[0].game_session_connection_info.matched_player_sessions[0].player_session_id #=> String
    #   resp.data.ticket_list[0].estimated_wait_time #=> Integer
    #
    def describe_matchmaking(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeMatchmakingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeMatchmakingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeMatchmaking
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedRegionException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeMatchmaking
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeMatchmaking,
        stubs: @stubs,
        params_class: Params::DescribeMatchmakingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_matchmaking
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the details of FlexMatch matchmaking configurations. </p>
    #         <p>This operation offers the following options: (1) retrieve all matchmaking
    #             configurations, (2) retrieve configurations for a specified list, or (3) retrieve all
    #             configurations that use a specified rule set name. When requesting multiple items, use
    #             the pagination parameters to retrieve results as a set of sequential pages. </p>
    #         <p>If successful, a configuration is returned for each requested name. When specifying a
    #             list of names, only configurations that currently exist are returned. </p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/matchmaker-build.html"> Setting up FlexMatch
    #                 matchmakers</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateMatchmakingConfiguration</a> |
    #                     <a>DescribeMatchmakingConfigurations</a> |
    #                     <a>UpdateMatchmakingConfiguration</a> |
    #                     <a>DeleteMatchmakingConfiguration</a> |
    #                     <a>CreateMatchmakingRuleSet</a> |
    #                     <a>DescribeMatchmakingRuleSets</a> |
    #                     <a>ValidateMatchmakingRuleSet</a> |
    #                     <a>DeleteMatchmakingRuleSet</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeMatchmakingConfigurationsInput}.
    #
    # @option params [Array<String>] :names
    #   <p>A unique identifier for the matchmaking configuration(s) to retrieve. You can use either the configuration name or ARN value. To
    #               request all existing configurations, leave this parameter empty.</p>
    #
    # @option params [String] :rule_set_name
    #   <p>A unique identifier for the matchmaking rule set. You can use either the rule set name or ARN value. Use this parameter to
    #               retrieve all matchmaking configurations that use this rule set.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. This parameter is limited to 10.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #
    # @return [Types::DescribeMatchmakingConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_matchmaking_configurations(
    #     names: [
    #       'member'
    #     ],
    #     rule_set_name: 'RuleSetName',
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeMatchmakingConfigurationsOutput
    #   resp.data.configurations #=> Array<MatchmakingConfiguration>
    #   resp.data.configurations[0] #=> Types::MatchmakingConfiguration
    #   resp.data.configurations[0].name #=> String
    #   resp.data.configurations[0].configuration_arn #=> String
    #   resp.data.configurations[0].description #=> String
    #   resp.data.configurations[0].game_session_queue_arns #=> Array<String>
    #   resp.data.configurations[0].game_session_queue_arns[0] #=> String
    #   resp.data.configurations[0].request_timeout_seconds #=> Integer
    #   resp.data.configurations[0].acceptance_timeout_seconds #=> Integer
    #   resp.data.configurations[0].acceptance_required #=> Boolean
    #   resp.data.configurations[0].rule_set_name #=> String
    #   resp.data.configurations[0].rule_set_arn #=> String
    #   resp.data.configurations[0].notification_target #=> String
    #   resp.data.configurations[0].additional_player_count #=> Integer
    #   resp.data.configurations[0].custom_event_data #=> String
    #   resp.data.configurations[0].creation_time #=> Time
    #   resp.data.configurations[0].game_properties #=> Array<GameProperty>
    #   resp.data.configurations[0].game_properties[0] #=> Types::GameProperty
    #   resp.data.configurations[0].game_properties[0].key #=> String
    #   resp.data.configurations[0].game_properties[0].value #=> String
    #   resp.data.configurations[0].game_session_data #=> String
    #   resp.data.configurations[0].backfill_mode #=> String, one of ["AUTOMATIC", "MANUAL"]
    #   resp.data.configurations[0].flex_match_mode #=> String, one of ["STANDALONE", "WITH_QUEUE"]
    #   resp.data.next_token #=> String
    #
    def describe_matchmaking_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeMatchmakingConfigurationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeMatchmakingConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeMatchmakingConfigurations
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedRegionException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeMatchmakingConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeMatchmakingConfigurations,
        stubs: @stubs,
        params_class: Params::DescribeMatchmakingConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_matchmaking_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the details for FlexMatch matchmaking rule sets. You can request all
    #             existing rule sets for the Region, or provide a list of one or more rule set names. When
    #             requesting multiple items, use the pagination parameters to retrieve results as a set of
    #             sequential pages. If successful, a rule set is returned for each requested name. </p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-rulesets.html">Build a rule
    #                         set</a>
    #                </p>
    #             </li>
    #          </ul>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateMatchmakingConfiguration</a> |
    #                     <a>DescribeMatchmakingConfigurations</a> |
    #                     <a>UpdateMatchmakingConfiguration</a> |
    #                     <a>DeleteMatchmakingConfiguration</a> |
    #                     <a>CreateMatchmakingRuleSet</a> |
    #                     <a>DescribeMatchmakingRuleSets</a> |
    #                     <a>ValidateMatchmakingRuleSet</a> |
    #                     <a>DeleteMatchmakingRuleSet</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeMatchmakingRuleSetsInput}.
    #
    # @option params [Array<String>] :names
    #   <p>A list of one or more matchmaking rule set names to retrieve details for. (Note: The
    #               rule set name is different from the optional "name" field in the rule set body.) You can
    #               use either the rule set name or ARN value. </p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #
    # @return [Types::DescribeMatchmakingRuleSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_matchmaking_rule_sets(
    #     names: [
    #       'member'
    #     ],
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeMatchmakingRuleSetsOutput
    #   resp.data.rule_sets #=> Array<MatchmakingRuleSet>
    #   resp.data.rule_sets[0] #=> Types::MatchmakingRuleSet
    #   resp.data.rule_sets[0].rule_set_name #=> String
    #   resp.data.rule_sets[0].rule_set_arn #=> String
    #   resp.data.rule_sets[0].rule_set_body #=> String
    #   resp.data.rule_sets[0].creation_time #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_matchmaking_rule_sets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeMatchmakingRuleSetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeMatchmakingRuleSetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeMatchmakingRuleSets
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedRegionException, Errors::NotFoundException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeMatchmakingRuleSets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeMatchmakingRuleSets,
        stubs: @stubs,
        params_class: Params::DescribeMatchmakingRuleSetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_matchmaking_rule_sets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves properties for one or more player sessions. </p>
    #         <p>This action can be used in the following ways: </p>
    #         <ul>
    #             <li>
    #                 <p>To retrieve a specific player session, provide the player session ID
    #                     only.</p>
    #             </li>
    #             <li>
    #                 <p>To retrieve all player sessions in a game session, provide the game session ID
    #                     only.</p>
    #             </li>
    #             <li>
    #                 <p>To retrieve all player sessions for a specific player, provide a player ID
    #                     only.</p>
    #             </li>
    #          </ul>
    #          <p>To request player sessions, specify either a player session ID, game session ID, or player
    #             ID. You can filter this request by player session status. Use the pagination parameters
    #             to retrieve results as a set of sequential pages. </p>
    #         <p>If successful, a <code>PlayerSession</code> object is returned for each session that
    #             matches the request.</p>
    #          <p>
    #             <i>Available in Amazon GameLift Local.</i>
    #          </p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreatePlayerSession</a> |
    #                     <a>CreatePlayerSessions</a> |
    #                     <a>DescribePlayerSessions</a> |
    #                     <a>StartGameSessionPlacement</a> |
    #                     <a>DescribeGameSessionPlacement</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DescribePlayerSessionsInput}.
    #
    # @option params [String] :game_session_id
    #   <p>A unique identifier for the game session to retrieve player sessions for.</p>
    #
    # @option params [String] :player_id
    #   <p>A unique identifier for a player to retrieve player sessions for.</p>
    #
    # @option params [String] :player_session_id
    #   <p>A unique identifier for a player session to retrieve.</p>
    #
    # @option params [String] :player_session_status_filter
    #   <p>Player session status to filter results on.</p>
    #            <p>Possible player session statuses include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>RESERVED</b> -- The player session request has been
    #                   received, but the player has not yet connected to the server process and/or been
    #                   validated. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>ACTIVE</b> -- The player has been validated by the
    #                   server process and is currently connected.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>COMPLETED</b> -- The player connection has been
    #                   dropped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>TIMEDOUT</b> -- A player session request was
    #                   received, but the player did not connect and/or was not validated within the
    #                   timeout limit (60 seconds).</p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. If a player session ID is specified, this parameter is ignored.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value. If a player session ID is specified, this parameter is ignored.</p>
    #
    # @return [Types::DescribePlayerSessionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_player_sessions(
    #     game_session_id: 'GameSessionId',
    #     player_id: 'PlayerId',
    #     player_session_id: 'PlayerSessionId',
    #     player_session_status_filter: 'PlayerSessionStatusFilter',
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePlayerSessionsOutput
    #   resp.data.player_sessions #=> Array<PlayerSession>
    #   resp.data.player_sessions[0] #=> Types::PlayerSession
    #   resp.data.player_sessions[0].player_session_id #=> String
    #   resp.data.player_sessions[0].player_id #=> String
    #   resp.data.player_sessions[0].game_session_id #=> String
    #   resp.data.player_sessions[0].fleet_id #=> String
    #   resp.data.player_sessions[0].fleet_arn #=> String
    #   resp.data.player_sessions[0].creation_time #=> Time
    #   resp.data.player_sessions[0].termination_time #=> Time
    #   resp.data.player_sessions[0].status #=> String, one of ["RESERVED", "ACTIVE", "COMPLETED", "TIMEDOUT"]
    #   resp.data.player_sessions[0].ip_address #=> String
    #   resp.data.player_sessions[0].dns_name #=> String
    #   resp.data.player_sessions[0].port #=> Integer
    #   resp.data.player_sessions[0].player_data #=> String
    #   resp.data.next_token #=> String
    #
    def describe_player_sessions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePlayerSessionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePlayerSessionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePlayerSessions
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribePlayerSessions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePlayerSessions,
        stubs: @stubs,
        params_class: Params::DescribePlayerSessionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_player_sessions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a fleet's runtime configuration settings. The runtime configuration tells
    #             GameLift which server processes to run (and how) on each instance in the fleet.</p>
    #         <p>To get the runtime configuration that is currently in forces for a fleet, provide the
    #             fleet ID. </p>
    #         <p>If successful, a <a>RuntimeConfiguration</a> object is returned for the
    #             requested fleet. If the requested fleet has been deleted, the result set is
    #             empty.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up GameLift fleets</a>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-multiprocess.html">Running multiple
    #                 processes on a fleet</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>ListFleets</a> |
    #                     <a>DescribeEC2InstanceLimits</a> |
    #                     <a>DescribeFleetAttributes</a> |
    #                     <a>DescribeFleetCapacity</a> |
    #                     <a>DescribeFleetEvents</a> |
    #                     <a>DescribeFleetLocationAttributes</a> |
    #                     <a>DescribeFleetPortSettings</a> |
    #                     <a>DescribeFleetUtilization</a> |
    #                     <a>DescribeRuntimeConfiguration</a> |
    #                     <a>DescribeScalingPolicies</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRuntimeConfigurationInput}.
    #
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to get the runtime configuration for. You can use either the fleet ID or ARN
    #               value.</p>
    #
    # @return [Types::DescribeRuntimeConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_runtime_configuration(
    #     fleet_id: 'FleetId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRuntimeConfigurationOutput
    #   resp.data.runtime_configuration #=> Types::RuntimeConfiguration
    #   resp.data.runtime_configuration.server_processes #=> Array<ServerProcess>
    #   resp.data.runtime_configuration.server_processes[0] #=> Types::ServerProcess
    #   resp.data.runtime_configuration.server_processes[0].launch_path #=> String
    #   resp.data.runtime_configuration.server_processes[0].parameters #=> String
    #   resp.data.runtime_configuration.server_processes[0].concurrent_executions #=> Integer
    #   resp.data.runtime_configuration.max_concurrent_game_session_activations #=> Integer
    #   resp.data.runtime_configuration.game_session_activation_timeout_seconds #=> Integer
    #
    def describe_runtime_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRuntimeConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRuntimeConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRuntimeConfiguration
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeRuntimeConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRuntimeConfiguration,
        stubs: @stubs,
        params_class: Params::DescribeRuntimeConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_runtime_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves all scaling policies applied to a fleet.</p>
    #         <p>To get a fleet's scaling policies, specify the fleet ID. You can filter this
    #             request by policy status, such as to retrieve only active scaling policies. Use the
    #             pagination parameters to retrieve results as a set of sequential pages. If successful,
    #             set of <a>ScalingPolicy</a> objects is returned for the fleet.</p>
    #         <p>A fleet may have all of its scaling policies suspended (<a>StopFleetActions</a>). This operation does not affect the status of the scaling
    #             policies, which remains ACTIVE. To see whether a fleet's scaling policies are in force
    #             or suspended, call <a>DescribeFleetAttributes</a> and check the stopped
    #             actions.</p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>DescribeFleetCapacity</a> |
    #                     <a>UpdateFleetCapacity</a> |
    #                     <a>DescribeEC2InstanceLimits</a> |
    #                     <a>PutScalingPolicy</a> |
    #                     <a>DescribeScalingPolicies</a> |
    #                     <a>DeleteScalingPolicy</a> |
    #                     <a>StopFleetActions</a> |
    #                     <a>StartFleetActions</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeScalingPoliciesInput}.
    #
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet for which to retrieve scaling policies. You can use either the fleet ID or ARN
    #               value.</p>
    #
    # @option params [String] :status_filter
    #   <p>Scaling policy status to filter results on. A scaling policy is only in force when
    #               in an <code>ACTIVE</code> status.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <b>ACTIVE</b> -- The scaling policy is currently in
    #                       force.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>UPDATEREQUESTED</b> -- A request to update the
    #                       scaling policy has been received.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>UPDATING</b> -- A change is being made to the
    #                       scaling policy.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>DELETEREQUESTED</b> -- A request to delete the
    #                       scaling policy has been received.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>DELETING</b> -- The scaling policy is being
    #                       deleted.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>DELETED</b> -- The scaling policy has been
    #                       deleted.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>ERROR</b> -- An error occurred in creating the
    #                       policy. It should be removed and recreated.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #
    # @option params [String] :location
    #   <p>
    #               The fleet location. If you don't specify this value, the response contains the scaling policies of every location in the fleet.
    #           </p>
    #
    # @return [Types::DescribeScalingPoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_scaling_policies(
    #     fleet_id: 'FleetId', # required
    #     status_filter: 'ACTIVE', # accepts ["ACTIVE", "UPDATE_REQUESTED", "UPDATING", "DELETE_REQUESTED", "DELETING", "DELETED", "ERROR"]
    #     limit: 1,
    #     next_token: 'NextToken',
    #     location: 'Location'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeScalingPoliciesOutput
    #   resp.data.scaling_policies #=> Array<ScalingPolicy>
    #   resp.data.scaling_policies[0] #=> Types::ScalingPolicy
    #   resp.data.scaling_policies[0].fleet_id #=> String
    #   resp.data.scaling_policies[0].fleet_arn #=> String
    #   resp.data.scaling_policies[0].name #=> String
    #   resp.data.scaling_policies[0].status #=> String, one of ["ACTIVE", "UPDATE_REQUESTED", "UPDATING", "DELETE_REQUESTED", "DELETING", "DELETED", "ERROR"]
    #   resp.data.scaling_policies[0].scaling_adjustment #=> Integer
    #   resp.data.scaling_policies[0].scaling_adjustment_type #=> String, one of ["ChangeInCapacity", "ExactCapacity", "PercentChangeInCapacity"]
    #   resp.data.scaling_policies[0].comparison_operator #=> String, one of ["GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold"]
    #   resp.data.scaling_policies[0].threshold #=> Float
    #   resp.data.scaling_policies[0].evaluation_periods #=> Integer
    #   resp.data.scaling_policies[0].metric_name #=> String, one of ["ActivatingGameSessions", "ActiveGameSessions", "ActiveInstances", "AvailableGameSessions", "AvailablePlayerSessions", "CurrentPlayerSessions", "IdleInstances", "PercentAvailableGameSessions", "PercentIdleInstances", "QueueDepth", "WaitTime"]
    #   resp.data.scaling_policies[0].policy_type #=> String, one of ["RuleBased", "TargetBased"]
    #   resp.data.scaling_policies[0].target_configuration #=> Types::TargetConfiguration
    #   resp.data.scaling_policies[0].target_configuration.target_value #=> Float
    #   resp.data.scaling_policies[0].update_status #=> String, one of ["PENDING_UPDATE"]
    #   resp.data.scaling_policies[0].location #=> String
    #   resp.data.next_token #=> String
    #
    def describe_scaling_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeScalingPoliciesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeScalingPoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeScalingPolicies
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedRegionException, Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeScalingPolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeScalingPolicies,
        stubs: @stubs,
        params_class: Params::DescribeScalingPoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_scaling_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves properties for a Realtime script. </p>
    #         <p>To request a script record, specify the script ID. If successful, an object containing the script properties
    #         is returned.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html">Amazon GameLift Realtime Servers</a>
    #         </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateScript</a> |
    #                     <a>ListScripts</a> |
    #                     <a>DescribeScript</a> |
    #                     <a>UpdateScript</a> |
    #                     <a>DeleteScript</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeScriptInput}.
    #
    # @option params [String] :script_id
    #   <p>A unique identifier for the Realtime script to retrieve properties for. You can use either the script ID or ARN
    #               value.</p>
    #
    # @return [Types::DescribeScriptOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_script(
    #     script_id: 'ScriptId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeScriptOutput
    #   resp.data.script #=> Types::Script
    #   resp.data.script.script_id #=> String
    #   resp.data.script.script_arn #=> String
    #   resp.data.script.name #=> String
    #   resp.data.script.version #=> String
    #   resp.data.script.size_on_disk #=> Integer
    #   resp.data.script.creation_time #=> Time
    #   resp.data.script.storage_location #=> Types::S3Location
    #   resp.data.script.storage_location.bucket #=> String
    #   resp.data.script.storage_location.key #=> String
    #   resp.data.script.storage_location.role_arn #=> String
    #   resp.data.script.storage_location.object_version #=> String
    #
    def describe_script(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeScriptInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeScriptInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeScript
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeScript
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeScript,
        stubs: @stubs,
        params_class: Params::DescribeScriptOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_script
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves valid VPC peering authorizations that are pending for the Amazon Web Services account.
    #             This operation returns all VPC peering authorizations and requests for peering. This
    #             includes those initiated and received by this account. </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateVpcPeeringAuthorization</a> |
    #                     <a>DescribeVpcPeeringAuthorizations</a> |
    #                     <a>DeleteVpcPeeringAuthorization</a> |
    #                     <a>CreateVpcPeeringConnection</a> |
    #                     <a>DescribeVpcPeeringConnections</a> |
    #                     <a>DeleteVpcPeeringConnection</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeVpcPeeringAuthorizationsInput}.
    #
    # @return [Types::DescribeVpcPeeringAuthorizationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_vpc_peering_authorizations()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeVpcPeeringAuthorizationsOutput
    #   resp.data.vpc_peering_authorizations #=> Array<VpcPeeringAuthorization>
    #   resp.data.vpc_peering_authorizations[0] #=> Types::VpcPeeringAuthorization
    #   resp.data.vpc_peering_authorizations[0].game_lift_aws_account_id #=> String
    #   resp.data.vpc_peering_authorizations[0].peer_vpc_aws_account_id #=> String
    #   resp.data.vpc_peering_authorizations[0].peer_vpc_id #=> String
    #   resp.data.vpc_peering_authorizations[0].creation_time #=> Time
    #   resp.data.vpc_peering_authorizations[0].expiration_time #=> Time
    #
    def describe_vpc_peering_authorizations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeVpcPeeringAuthorizationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeVpcPeeringAuthorizationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeVpcPeeringAuthorizations
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeVpcPeeringAuthorizations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeVpcPeeringAuthorizations,
        stubs: @stubs,
        params_class: Params::DescribeVpcPeeringAuthorizationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_vpc_peering_authorizations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information on VPC peering connections. Use this operation to get peering
    #             information for all fleets or for one specific fleet ID. </p>
    #         <p>To retrieve connection information, call this operation from the Amazon Web Services account that
    #             is used to manage the Amazon GameLift fleets. Specify a fleet ID or leave the parameter empty
    #             to retrieve all connection records. If successful, the retrieved information includes
    #             both active and pending connections. Active connections identify the IpV4 CIDR block
    #             that the VPC uses to connect. </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateVpcPeeringAuthorization</a> |
    #                     <a>DescribeVpcPeeringAuthorizations</a> |
    #                     <a>DeleteVpcPeeringAuthorization</a> |
    #                     <a>CreateVpcPeeringConnection</a> |
    #                     <a>DescribeVpcPeeringConnections</a> |
    #                     <a>DeleteVpcPeeringConnection</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeVpcPeeringConnectionsInput}.
    #
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet. You can use either the fleet ID or ARN value.</p>
    #
    # @return [Types::DescribeVpcPeeringConnectionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_vpc_peering_connections(
    #     fleet_id: 'FleetId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeVpcPeeringConnectionsOutput
    #   resp.data.vpc_peering_connections #=> Array<VpcPeeringConnection>
    #   resp.data.vpc_peering_connections[0] #=> Types::VpcPeeringConnection
    #   resp.data.vpc_peering_connections[0].fleet_id #=> String
    #   resp.data.vpc_peering_connections[0].fleet_arn #=> String
    #   resp.data.vpc_peering_connections[0].ip_v4_cidr_block #=> String
    #   resp.data.vpc_peering_connections[0].vpc_peering_connection_id #=> String
    #   resp.data.vpc_peering_connections[0].status #=> Types::VpcPeeringConnectionStatus
    #   resp.data.vpc_peering_connections[0].status.code #=> String
    #   resp.data.vpc_peering_connections[0].status.message #=> String
    #   resp.data.vpc_peering_connections[0].peer_vpc_id #=> String
    #   resp.data.vpc_peering_connections[0].game_lift_vpc_id #=> String
    #
    def describe_vpc_peering_connections(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeVpcPeeringConnectionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeVpcPeeringConnectionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeVpcPeeringConnections
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeVpcPeeringConnections
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeVpcPeeringConnections,
        stubs: @stubs,
        params_class: Params::DescribeVpcPeeringConnectionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_vpc_peering_connections
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the location of stored game session logs for a specified game session.
    #             When a game session is terminated, GameLift automatically stores the logs in Amazon S3 and
    #             retains them for 14 days. Use this URL to download the logs.</p>
    #         <note>
    #             <p>See the <a href="https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_gamelift">Amazon Web Services Service
    #                     Limits</a> page for maximum log file sizes. Log files that exceed this limit
    #                 are not saved.</p>
    #         </note>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateGameSession</a> |
    #                     <a>DescribeGameSessions</a> |
    #                     <a>DescribeGameSessionDetails</a> |
    #                     <a>SearchGameSessions</a> |
    #                     <a>UpdateGameSession</a> |
    #                     <a>GetGameSessionLogUrl</a> |
    #                     <a>StartGameSessionPlacement</a> |
    #                     <a>DescribeGameSessionPlacement</a> |
    #                     <a>StopGameSessionPlacement</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::GetGameSessionLogUrlInput}.
    #
    # @option params [String] :game_session_id
    #   <p>A unique identifier for the game session to get logs for. </p>
    #
    # @return [Types::GetGameSessionLogUrlOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_game_session_log_url(
    #     game_session_id: 'GameSessionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetGameSessionLogUrlOutput
    #   resp.data.pre_signed_url #=> String
    #
    def get_game_session_log_url(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetGameSessionLogUrlInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetGameSessionLogUrlInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetGameSessionLogUrl
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::GetGameSessionLogUrl
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetGameSessionLogUrl,
        stubs: @stubs,
        params_class: Params::GetGameSessionLogUrlOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_game_session_log_url
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Requests remote access to a fleet instance. Remote access is useful for debugging,
    #             gathering benchmarking data, or observing activity in real time. </p>
    #         <p>To remotely access an instance, you need credentials that match the operating system
    #             of the instance. For a Windows instance, GameLift returns a user name and password as
    #             strings for use with a Windows Remote Desktop client. For a Linux instance, GameLift
    #             returns a user name and RSA private key, also as strings, for use with an SSH client.
    #             The private key must be saved in the proper format to a <code>.pem</code> file before
    #             using. If you're making this request using the CLI, saving the secret can be handled
    #             as part of the <code>GetInstanceAccess</code> request, as shown in one of the examples
    #             for this operation. </p>
    #         <p>To request access to a specific instance, specify the IDs of both the instance and the
    #             fleet it belongs to. You can retrieve a fleet's instance IDs by calling <a>DescribeInstances</a>. If successful, an <a>InstanceAccess</a>
    #             object is returned that contains the instance's IP address and a set of
    #             credentials.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-remote-access.html">Remotely Access Fleet
    #                 Instances</a>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-creating-debug.html">Debug Fleet
    #                 Issues</a>
    #          </p>
    #
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>DescribeInstances</a> |
    #                     <a>GetInstanceAccess</a> |
    #                     <a>DescribeEC2InstanceLimits</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::GetInstanceAccessInput}.
    #
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet that contains the instance you want access to. You can use either the fleet ID
    #               or ARN value. The fleet can be in any of the following statuses:
    #               <code>ACTIVATING</code>, <code>ACTIVE</code>, or <code>ERROR</code>. Fleets with an
    #                   <code>ERROR</code> status may be accessible for a short time before they are
    #               deleted.</p>
    #
    # @option params [String] :instance_id
    #   <p>A unique identifier for the instance you want to get access to. You can access an instance in any
    #               status.</p>
    #
    # @return [Types::GetInstanceAccessOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instance_access(
    #     fleet_id: 'FleetId', # required
    #     instance_id: 'InstanceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetInstanceAccessOutput
    #   resp.data.instance_access #=> Types::InstanceAccess
    #   resp.data.instance_access.fleet_id #=> String
    #   resp.data.instance_access.instance_id #=> String
    #   resp.data.instance_access.ip_address #=> String
    #   resp.data.instance_access.operating_system #=> String, one of ["WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2"]
    #   resp.data.instance_access.credentials #=> Types::InstanceCredentials
    #   resp.data.instance_access.credentials.user_name #=> String
    #   resp.data.instance_access.credentials.secret #=> String
    #
    def get_instance_access(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetInstanceAccessInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetInstanceAccessInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetInstanceAccess
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::GetInstanceAccess
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetInstanceAccess,
        stubs: @stubs,
        params_class: Params::GetInstanceAccessOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_instance_access
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves all aliases for this Amazon Web Services account. You can filter the result set by
    #             alias name and/or routing strategy type. Use the pagination parameters to retrieve
    #             results in sequential pages.</p>
    #         <note>
    #             <p>Returned aliases are not listed in any particular order.</p>
    #         </note>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateAlias</a> |
    #                     <a>ListAliases</a> |
    #                     <a>DescribeAlias</a> |
    #                     <a>UpdateAlias</a> |
    #                     <a>DeleteAlias</a> |
    #                     <a>ResolveAlias</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::ListAliasesInput}.
    #
    # @option params [String] :routing_strategy_type
    #   <p>The routing type to filter results on. Use this parameter to retrieve only aliases
    #               with a certain routing type. To retrieve all aliases, leave this parameter empty.</p>
    #           <p>Possible routing types include the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <b>SIMPLE</b> -- The alias resolves to one specific
    #                       fleet. Use this type when routing to active fleets.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>TERMINAL</b> -- The alias does not resolve to a
    #                       fleet but instead can be used to display a message to the user. A terminal alias
    #                       throws a TerminalRoutingStrategyException with the <a>RoutingStrategy</a> message embedded.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :name
    #   <p>A descriptive label that is associated with an alias. Alias names do not need to be unique.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #
    # @return [Types::ListAliasesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_aliases(
    #     routing_strategy_type: 'SIMPLE', # accepts ["SIMPLE", "TERMINAL"]
    #     name: 'Name',
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAliasesOutput
    #   resp.data.aliases #=> Array<Alias>
    #   resp.data.aliases[0] #=> Types::Alias
    #   resp.data.aliases[0].alias_id #=> String
    #   resp.data.aliases[0].name #=> String
    #   resp.data.aliases[0].alias_arn #=> String
    #   resp.data.aliases[0].description #=> String
    #   resp.data.aliases[0].routing_strategy #=> Types::RoutingStrategy
    #   resp.data.aliases[0].routing_strategy.type #=> String, one of ["SIMPLE", "TERMINAL"]
    #   resp.data.aliases[0].routing_strategy.fleet_id #=> String
    #   resp.data.aliases[0].routing_strategy.message #=> String
    #   resp.data.aliases[0].creation_time #=> Time
    #   resp.data.aliases[0].last_updated_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_aliases(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAliasesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAliasesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAliases
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListAliases
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAliases,
        stubs: @stubs,
        params_class: Params::ListAliasesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_aliases
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves build resources for all builds associated with the Amazon Web Services account in use. You
    #             can limit results to builds that are in a specific status by using the
    #                 <code>Status</code> parameter. Use the pagination parameters to retrieve results in
    #             a set of sequential pages. </p>
    #         <note>
    #             <p>Build resources are not listed in any particular order.</p>
    #         </note>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html">
    #             Upload a Custom Server Build</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateBuild</a> |
    #                     <a>ListBuilds</a> |
    #                     <a>DescribeBuild</a> |
    #                     <a>UpdateBuild</a> |
    #                     <a>DeleteBuild</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::ListBuildsInput}.
    #
    # @option params [String] :status
    #   <p>Build status to filter results by. To retrieve all builds, leave this parameter
    #               empty.</p>
    #           <p>Possible build statuses include the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <b>INITIALIZED</b> -- A new build has been defined,
    #                       but no files have been uploaded. You cannot create fleets for builds that are in
    #                       this status. When a build is successfully created, the build status is set to
    #                       this value. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>READY</b> -- The game build has been successfully
    #                       uploaded. You can now create new fleets for this build.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>FAILED</b> -- The game build upload failed. You
    #                       cannot create new fleets for this build. </p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #
    # @return [Types::ListBuildsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_builds(
    #     status: 'INITIALIZED', # accepts ["INITIALIZED", "READY", "FAILED"]
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBuildsOutput
    #   resp.data.builds #=> Array<Build>
    #   resp.data.builds[0] #=> Types::Build
    #   resp.data.builds[0].build_id #=> String
    #   resp.data.builds[0].build_arn #=> String
    #   resp.data.builds[0].name #=> String
    #   resp.data.builds[0].version #=> String
    #   resp.data.builds[0].status #=> String, one of ["INITIALIZED", "READY", "FAILED"]
    #   resp.data.builds[0].size_on_disk #=> Integer
    #   resp.data.builds[0].operating_system #=> String, one of ["WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2"]
    #   resp.data.builds[0].creation_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_builds(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBuildsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBuildsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBuilds
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListBuilds
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBuilds,
        stubs: @stubs,
        params_class: Params::ListBuildsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_builds
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a collection of fleet resources in an Amazon Web Services Region. You can call this operation
    #             to get fleets in a previously selected default Region (see <a href="https://docs.aws.amazon.com/credref/latest/refdocs/setting-global-region.html">https://docs.aws.amazon.com/credref/latest/refdocs/setting-global-region.html</a>or specify a Region in your
    #             request. You can filter the result set to find only those fleets that are deployed with
    #             a specific build or script. For fleets that have multiple locations, this operation
    #             retrieves fleets based on their home Region only.</p>
    #         <p>This operation can be used in the following ways: </p>
    #         <ul>
    #             <li>
    #                 <p>To get a list of all fleets in a Region, don't provide a build or script
    #                     identifier. </p>
    #             </li>
    #             <li>
    #                 <p>To get a list of all fleets where a specific custom game build is deployed,
    #                     provide the build ID.</p>
    #             </li>
    #             <li>
    #                 <p>To get a list of all Realtime Servers fleets with a specific configuration script,
    #                     provide the script ID. </p>
    #             </li>
    #          </ul>
    #         <p>Use the pagination parameters to retrieve results as a set of sequential pages. </p>
    #         <p>If successful, a list of fleet IDs that match the request parameters is returned. A
    #             NextToken value is also returned if there are more result pages to retrieve.</p>
    #         <note>
    #             <p>Fleet resources are not listed in a particular order.</p>
    #         </note>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up GameLift fleets</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateFleet</a> |
    #                     <a>UpdateFleetCapacity</a> |
    #                     <a>PutScalingPolicy</a> |
    #                     <a>DescribeEC2InstanceLimits</a> |
    #                     <a>DescribeFleetAttributes</a> |
    #                     <a>DescribeFleetLocationAttributes</a> |
    #                     <a>UpdateFleetAttributes</a> |
    #                     <a>StopFleetActions</a> |
    #                     <a>DeleteFleet</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::ListFleetsInput}.
    #
    # @option params [String] :build_id
    #   <p>A unique identifier for the build to request fleets for. Use this parameter to return only fleets using a
    #               specified build. Use either the build ID or ARN value.</p>
    #
    # @option params [String] :script_id
    #   <p>A unique identifier for the Realtime script to request fleets for. Use this parameter to return only fleets using a
    #               specified script. Use either the script ID or ARN value.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #
    # @return [Types::ListFleetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fleets(
    #     build_id: 'BuildId',
    #     script_id: 'ScriptId',
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFleetsOutput
    #   resp.data.fleet_ids #=> Array<String>
    #   resp.data.fleet_ids[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_fleets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFleetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFleetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFleets
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListFleets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFleets,
        stubs: @stubs,
        params_class: Params::ListFleetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_fleets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             <b>This operation is used with the GameLift FleetIQ solution and game server groups.</b>
    #          </p>
    #         <p>Retrieves information on all game servers groups that exist in the current Amazon Web Services
    #             account for the selected Region. Use the pagination parameters to retrieve results in a
    #             set of sequential segments. </p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html">GameLift FleetIQ Guide</a>
    #         </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateGameServerGroup</a> |
    #                     <a>ListGameServerGroups</a> |
    #                     <a>DescribeGameServerGroup</a> |
    #                     <a>UpdateGameServerGroup</a> |
    #                     <a>DeleteGameServerGroup</a> |
    #                     <a>ResumeGameServerGroup</a> |
    #                     <a>SuspendGameServerGroup</a> |
    #                     <a>DescribeGameServerInstances</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::ListGameServerGroupsInput}.
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #
    # @return [Types::ListGameServerGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_game_server_groups(
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGameServerGroupsOutput
    #   resp.data.game_server_groups #=> Array<GameServerGroup>
    #   resp.data.game_server_groups[0] #=> Types::GameServerGroup
    #   resp.data.game_server_groups[0].game_server_group_name #=> String
    #   resp.data.game_server_groups[0].game_server_group_arn #=> String
    #   resp.data.game_server_groups[0].role_arn #=> String
    #   resp.data.game_server_groups[0].instance_definitions #=> Array<InstanceDefinition>
    #   resp.data.game_server_groups[0].instance_definitions[0] #=> Types::InstanceDefinition
    #   resp.data.game_server_groups[0].instance_definitions[0].instance_type #=> String, one of ["c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge"]
    #   resp.data.game_server_groups[0].instance_definitions[0].weighted_capacity #=> String
    #   resp.data.game_server_groups[0].balancing_strategy #=> String, one of ["SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"]
    #   resp.data.game_server_groups[0].game_server_protection_policy #=> String, one of ["NO_PROTECTION", "FULL_PROTECTION"]
    #   resp.data.game_server_groups[0].auto_scaling_group_arn #=> String
    #   resp.data.game_server_groups[0].status #=> String, one of ["NEW", "ACTIVATING", "ACTIVE", "DELETE_SCHEDULED", "DELETING", "DELETED", "ERROR"]
    #   resp.data.game_server_groups[0].status_reason #=> String
    #   resp.data.game_server_groups[0].suspended_actions #=> Array<String>
    #   resp.data.game_server_groups[0].suspended_actions[0] #=> String, one of ["REPLACE_INSTANCE_TYPES"]
    #   resp.data.game_server_groups[0].creation_time #=> Time
    #   resp.data.game_server_groups[0].last_updated_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_game_server_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGameServerGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListGameServerGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListGameServerGroups
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListGameServerGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListGameServerGroups,
        stubs: @stubs,
        params_class: Params::ListGameServerGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_game_server_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             <b>This operation is used with the GameLift FleetIQ solution and game server groups.</b>
    #          </p>
    #         <p>Retrieves information on all game servers that are currently active in a specified
    #             game server group. You can opt to sort the list by game server age. Use the
    #             pagination parameters to retrieve results in a set of sequential segments. </p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html">GameLift FleetIQ Guide</a>
    #         </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>RegisterGameServer</a> |
    #                     <a>ListGameServers</a> |
    #                     <a>ClaimGameServer</a> |
    #                     <a>DescribeGameServer</a> |
    #                     <a>UpdateGameServer</a> |
    #                     <a>DeregisterGameServer</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::ListGameServersInput}.
    #
    # @option params [String] :game_server_group_name
    #   <p>An identifier for the game server group to retrieve a list of game servers from.
    #               Use either the <a>GameServerGroup</a> name or ARN value.</p>
    #
    # @option params [String] :sort_order
    #   <p>Indicates how to sort the returned data based on game server registration timestamp.
    #               Use <code>ASCENDING</code> to retrieve oldest game servers first, or use
    #                   <code>DESCENDING</code> to retrieve newest game servers first. If this parameter is
    #               left empty, game servers are returned in no particular order.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #
    # @return [Types::ListGameServersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_game_servers(
    #     game_server_group_name: 'GameServerGroupName', # required
    #     sort_order: 'ASCENDING', # accepts ["ASCENDING", "DESCENDING"]
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGameServersOutput
    #   resp.data.game_servers #=> Array<GameServer>
    #   resp.data.game_servers[0] #=> Types::GameServer
    #   resp.data.game_servers[0].game_server_group_name #=> String
    #   resp.data.game_servers[0].game_server_group_arn #=> String
    #   resp.data.game_servers[0].game_server_id #=> String
    #   resp.data.game_servers[0].instance_id #=> String
    #   resp.data.game_servers[0].connection_info #=> String
    #   resp.data.game_servers[0].game_server_data #=> String
    #   resp.data.game_servers[0].claim_status #=> String, one of ["CLAIMED"]
    #   resp.data.game_servers[0].utilization_status #=> String, one of ["AVAILABLE", "UTILIZED"]
    #   resp.data.game_servers[0].registration_time #=> Time
    #   resp.data.game_servers[0].last_claim_time #=> Time
    #   resp.data.game_servers[0].last_health_check_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_game_servers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGameServersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListGameServersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListGameServers
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListGameServers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListGameServers,
        stubs: @stubs,
        params_class: Params::ListGameServersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_game_servers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves script records for all Realtime scripts that are associated with the Amazon Web Services account in use. </p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html">Amazon GameLift Realtime Servers</a>
    #         </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateScript</a> |
    #                     <a>ListScripts</a> |
    #                     <a>DescribeScript</a> |
    #                     <a>UpdateScript</a> |
    #                     <a>DeleteScript</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::ListScriptsInput}.
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages.</p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #
    # @return [Types::ListScriptsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_scripts(
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListScriptsOutput
    #   resp.data.scripts #=> Array<Script>
    #   resp.data.scripts[0] #=> Types::Script
    #   resp.data.scripts[0].script_id #=> String
    #   resp.data.scripts[0].script_arn #=> String
    #   resp.data.scripts[0].name #=> String
    #   resp.data.scripts[0].version #=> String
    #   resp.data.scripts[0].size_on_disk #=> Integer
    #   resp.data.scripts[0].creation_time #=> Time
    #   resp.data.scripts[0].storage_location #=> Types::S3Location
    #   resp.data.scripts[0].storage_location.bucket #=> String
    #   resp.data.scripts[0].storage_location.key #=> String
    #   resp.data.scripts[0].storage_location.role_arn #=> String
    #   resp.data.scripts[0].storage_location.object_version #=> String
    #   resp.data.next_token #=> String
    #
    def list_scripts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListScriptsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListScriptsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListScripts
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListScripts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListScripts,
        stubs: @stubs,
        params_class: Params::ListScriptsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_scripts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             Retrieves all tags that are assigned to a GameLift resource.
    #             Resource tags are used to organize Amazon Web Services resources for a range of purposes.
    #             This operation handles the permissions necessary to manage tags for the following
    #             GameLift resource types:</p>
    #         <ul>
    #             <li>
    #                 <p>Build</p>
    #             </li>
    #             <li>
    #                 <p>Script</p>
    #             </li>
    #             <li>
    #                 <p>Fleet</p>
    #             </li>
    #             <li>
    #                 <p>Alias</p>
    #             </li>
    #             <li>
    #                 <p>GameSessionQueue</p>
    #             </li>
    #             <li>
    #                 <p>MatchmakingConfiguration</p>
    #             </li>
    #             <li>
    #                 <p>MatchmakingRuleSet</p>
    #             </li>
    #          </ul>
    #         <p>To list tags for a resource, specify the unique ARN value for the resource.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services Resources</a> in the
    #             <i>Amazon Web Services General Reference</i>
    #          </p>
    #         <p>
    #             <a href="http://aws.amazon.com/answers/account-management/aws-tagging-strategies/">
    #             Amazon Web Services Tagging Strategies</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>TagResource</a> |
    #                     <a>UntagResource</a> |
    #                     <a>ListTagsForResource</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>
    #               The Amazon Resource Name
    #               (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>)
    #               that is assigned to and uniquely identifies the GameLift resource that you want to retrieve
    #               tags for. GameLift resource ARNs are included in the data object for the resource, which
    #               can be retrieved by calling a List or Describe operation for the resource type. </p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
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
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TaggingFailedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
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

    # <p>Creates or updates a scaling policy for a fleet. Scaling policies are used to
    #             automatically scale a fleet's hosting capacity to meet player demand. An active scaling
    #             policy instructs Amazon GameLift to track a fleet metric and automatically change the fleet's
    #             capacity when a certain threshold is reached. There are two types of scaling policies:
    #             target-based and rule-based. Use a target-based policy to quickly and efficiently manage
    #             fleet scaling; this option is the most commonly used. Use rule-based policies when you
    #             need to exert fine-grained control over auto-scaling. </p>
    #         <p>Fleets can have multiple scaling policies of each type in force at the same time;
    #             you can have one target-based policy, one or multiple rule-based scaling policies, or
    #             both. We recommend caution, however, because multiple auto-scaling policies can have
    #             unintended consequences.</p>
    #         <p>You can temporarily suspend all scaling policies for a fleet by calling <a>StopFleetActions</a> with the fleet action AUTO_SCALING. To resume scaling
    #             policies, call <a>StartFleetActions</a> with the same fleet action. To stop
    #             just one scaling policy--or to permanently remove it, you must delete the policy with
    #                 <a>DeleteScalingPolicy</a>.</p>
    #         <p>Learn more about how to work with auto-scaling in <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-autoscaling.html">Set Up Fleet Automatic
    #                 Scaling</a>.</p>
    #         <p>
    #             <b>Target-based policy</b>
    #          </p>
    #         <p>A target-based policy tracks a single metric: PercentAvailableGameSessions. This
    #             metric tells us how much of a fleet's hosting capacity is ready to host game sessions
    #             but is not currently in use. This is the fleet's buffer; it measures the additional
    #             player demand that the fleet could handle at current capacity. With a target-based
    #             policy, you set your ideal buffer size and leave it to Amazon GameLift to take whatever action
    #             is needed to maintain that target. </p>
    #         <p>For example, you might choose to maintain a 10% buffer for a fleet that has the
    #             capacity to host 100 simultaneous game sessions. This policy tells Amazon GameLift to take
    #             action whenever the fleet's available capacity falls below or rises above 10 game
    #             sessions. Amazon GameLift will start new instances or stop unused instances in order to return
    #             to the 10% buffer. </p>
    #         <p>To create or update a target-based policy, specify a fleet ID and name, and set the
    #             policy type to "TargetBased". Specify the metric to track (PercentAvailableGameSessions)
    #             and reference a <a>TargetConfiguration</a> object with your desired buffer
    #             value. Exclude all other parameters. On a successful request, the policy name is
    #             returned. The scaling policy is automatically in force as soon as it's successfully
    #             created. If the fleet's auto-scaling actions are temporarily suspended, the new policy
    #             will be in force once the fleet actions are restarted.</p>
    #         <p>
    #             <b>Rule-based policy</b>
    #          </p>
    #         <p>A rule-based policy tracks specified fleet metric, sets a threshold value, and
    #             specifies the type of action to initiate when triggered. With a rule-based policy, you
    #             can select from several available fleet metrics. Each policy specifies whether to scale
    #             up or scale down (and by how much), so you need one policy for each type of action. </p>
    #         <p>For example, a policy may make the following statement: "If the percentage of idle
    #             instances is greater than 20% for more than 15 minutes, then reduce the fleet capacity
    #             by 10%."</p>
    #         <p>A policy's rule statement has the following structure:</p>
    #         <p>If <code>[MetricName]</code> is <code>[ComparisonOperator]</code>
    #             <code>[Threshold]</code> for <code>[EvaluationPeriods]</code> minutes, then
    #                 <code>[ScalingAdjustmentType]</code> to/by
    #             <code>[ScalingAdjustment]</code>.</p>
    #         <p>To implement the example, the rule statement would look like this:</p>
    #         <p>If <code>[PercentIdleInstances]</code> is <code>[GreaterThanThreshold]</code>
    #             <code>[20]</code> for <code>[15]</code> minutes, then
    #                 <code>[PercentChangeInCapacity]</code> to/by <code>[10]</code>.</p>
    #         <p>To create or update a scaling policy, specify a unique combination of name and
    #             fleet ID, and set the policy type to "RuleBased". Specify the parameter values for a
    #             policy rule statement. On a successful request, the policy name is returned. Scaling
    #             policies are automatically in force as soon as they're successfully created. If the
    #             fleet's auto-scaling actions are temporarily suspended, the new policy will be in force
    #             once the fleet actions are restarted.</p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>DescribeFleetCapacity</a> |
    #                     <a>UpdateFleetCapacity</a> |
    #                     <a>DescribeEC2InstanceLimits</a> |
    #                     <a>PutScalingPolicy</a> |
    #                     <a>DescribeScalingPolicies</a> |
    #                     <a>DeleteScalingPolicy</a> |
    #                     <a>StopFleetActions</a> |
    #                     <a>StartFleetActions</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::PutScalingPolicyInput}.
    #
    # @option params [String] :name
    #   <p>A descriptive label that is associated with a fleet's scaling policy. Policy names do not need to be unique. A fleet can have only one scaling policy with the same name.</p>
    #
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to apply this policy to. You can use either the fleet ID or ARN value. The fleet
    #               cannot be in any of the following statuses: ERROR or DELETING.</p>
    #
    # @option params [Integer] :scaling_adjustment
    #   <p>Amount of adjustment to make, based on the scaling adjustment type.</p>
    #
    # @option params [String] :scaling_adjustment_type
    #   <p>The type of adjustment to make to a fleet's instance count (see <a>FleetCapacity</a>):</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <b>ChangeInCapacity</b> -- add (or subtract) the
    #                       scaling adjustment value from the current instance count. Positive values scale
    #                       up while negative values scale down.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>ExactCapacity</b> -- set the instance count to the
    #                       scaling adjustment value.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>PercentChangeInCapacity</b> -- increase or reduce
    #                       the current instance count by the scaling adjustment, read as a percentage.
    #                       Positive values scale up while negative values scale down; for example, a value
    #                       of "-10" scales the fleet down by 10%.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Float] :threshold
    #   <p>Metric value used to trigger a scaling event.</p>
    #
    # @option params [String] :comparison_operator
    #   <p>Comparison operator to use when measuring the metric against the threshold
    #               value.</p>
    #
    # @option params [Integer] :evaluation_periods
    #   <p>Length of time (in minutes) the metric must be at or beyond the threshold before a
    #               scaling event is triggered.</p>
    #
    # @option params [String] :metric_name
    #   <p>Name of the Amazon GameLift-defined metric that is used to trigger a scaling adjustment. For
    #               detailed descriptions of fleet metrics, see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/monitoring-cloudwatch.html">Monitor Amazon GameLift
    #                   with Amazon CloudWatch</a>. </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <b>ActivatingGameSessions</b> -- Game sessions in
    #                       the process of being created.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>ActiveGameSessions</b> -- Game sessions that
    #                       are currently running.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>ActiveInstances</b> -- Fleet instances that
    #                       are currently running at least one game session.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>AvailableGameSessions</b> -- Additional game
    #                       sessions that fleet could host simultaneously, given current capacity.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>AvailablePlayerSessions</b> -- Empty player
    #                       slots in currently active game sessions. This includes game sessions that are
    #                       not currently accepting players. Reserved player slots are not
    #                       included.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>CurrentPlayerSessions</b> -- Player slots in
    #                       active game sessions that are being used by a player or are reserved for a
    #                       player. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>IdleInstances</b> -- Active instances that are
    #                       currently hosting zero game sessions. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>PercentAvailableGameSessions</b> -- Unused
    #                       percentage of the total number of game sessions that a fleet could host
    #                       simultaneously, given current capacity. Use this metric for a target-based
    #                       scaling policy.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>PercentIdleInstances</b> -- Percentage of the
    #                       total number of active instances that are hosting zero game sessions.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>QueueDepth</b> -- Pending game session
    #                       placement requests, in any queue, where the current fleet is the top-priority
    #                       destination.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>WaitTime</b> -- Current wait time for pending
    #                       game session placement requests, in any queue, where the current fleet is the
    #                       top-priority destination. </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :policy_type
    #   <p>The type of scaling policy to create. For a target-based policy, set the parameter
    #                   <i>MetricName</i> to 'PercentAvailableGameSessions' and specify a
    #                   <i>TargetConfiguration</i>. For a rule-based policy set the following
    #               parameters: <i>MetricName</i>, <i>ComparisonOperator</i>,
    #                   <i>Threshold</i>, <i>EvaluationPeriods</i>,
    #                   <i>ScalingAdjustmentType</i>, and
    #                   <i>ScalingAdjustment</i>.</p>
    #
    # @option params [TargetConfiguration] :target_configuration
    #   <p>An object that contains settings for a target-based scaling policy.</p>
    #
    # @return [Types::PutScalingPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_scaling_policy(
    #     name: 'Name', # required
    #     fleet_id: 'FleetId', # required
    #     scaling_adjustment: 1,
    #     scaling_adjustment_type: 'ChangeInCapacity', # accepts ["ChangeInCapacity", "ExactCapacity", "PercentChangeInCapacity"]
    #     threshold: 1.0,
    #     comparison_operator: 'GreaterThanOrEqualToThreshold', # accepts ["GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold"]
    #     evaluation_periods: 1,
    #     metric_name: 'ActivatingGameSessions', # required - accepts ["ActivatingGameSessions", "ActiveGameSessions", "ActiveInstances", "AvailableGameSessions", "AvailablePlayerSessions", "CurrentPlayerSessions", "IdleInstances", "PercentAvailableGameSessions", "PercentIdleInstances", "QueueDepth", "WaitTime"]
    #     policy_type: 'RuleBased', # accepts ["RuleBased", "TargetBased"]
    #     target_configuration: {
    #       target_value: 1.0 # required
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutScalingPolicyOutput
    #   resp.data.name #=> String
    #
    def put_scaling_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutScalingPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutScalingPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutScalingPolicy
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::PutScalingPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutScalingPolicy,
        stubs: @stubs,
        params_class: Params::PutScalingPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_scaling_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             <b>This operation is used with the GameLift FleetIQ solution and game server groups.</b>
    #          </p>
    #         <p>Creates a new game server resource and notifies GameLift FleetIQ that the game server is ready to
    #             host gameplay and players. This operation is called by a game server process that is
    #             running on an instance in a game server group. Registering game servers enables GameLift FleetIQ to
    #             track available game servers and enables game clients and services to claim a game
    #             server for a new game session. </p>
    #         <p>To register a game server, identify the game server group and instance where the game
    #             server is running, and provide a unique identifier for the game server. You can also
    #             include connection and game server data. When a game client or service requests a game
    #             server by calling <a>ClaimGameServer</a>, this information is returned in the
    #             response.</p>
    #         <p>Once a game server is successfully registered, it is put in status
    #                 <code>AVAILABLE</code>. A request to register a game server may fail if the instance
    #             it is running on is in the process of shutting down as part of instance balancing or
    #             scale-down activity. </p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html">GameLift FleetIQ Guide</a>
    #         </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>RegisterGameServer</a> |
    #                     <a>ListGameServers</a> |
    #                     <a>ClaimGameServer</a> |
    #                     <a>DescribeGameServer</a> |
    #                     <a>UpdateGameServer</a> |
    #                     <a>DeregisterGameServer</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::RegisterGameServerInput}.
    #
    # @option params [String] :game_server_group_name
    #   <p>A unique identifier for the game server group where the game server is running.
    #               Use either the <a>GameServerGroup</a> name or ARN value.</p>
    #
    # @option params [String] :game_server_id
    #   <p>A custom string that uniquely identifies the game server to register.
    #               Game server IDs are developer-defined and must be unique across all game server groups in your Amazon Web Services account.</p>
    #
    # @option params [String] :instance_id
    #   <p>The unique identifier for the instance where the game server is running. This ID is
    #               available in the instance metadata. EC2 instance IDs
    #               use a 17-character format, for example: <code>i-1234567890abcdef0</code>.</p>
    #
    # @option params [String] :connection_info
    #   <p>Information that is needed to make inbound client connections to the game server. This
    #               might include the IP address and port, DNS name, and other information.</p>
    #
    # @option params [String] :game_server_data
    #   <p>A set of custom game server properties, formatted as a single string value. This data
    #               is passed to a game client or service when it requests information on game servers using
    #                   <a>ListGameServers</a> or <a>ClaimGameServer</a>. </p>
    #
    # @return [Types::RegisterGameServerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_game_server(
    #     game_server_group_name: 'GameServerGroupName', # required
    #     game_server_id: 'GameServerId', # required
    #     instance_id: 'InstanceId', # required
    #     connection_info: 'ConnectionInfo',
    #     game_server_data: 'GameServerData'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterGameServerOutput
    #   resp.data.game_server #=> Types::GameServer
    #   resp.data.game_server.game_server_group_name #=> String
    #   resp.data.game_server.game_server_group_arn #=> String
    #   resp.data.game_server.game_server_id #=> String
    #   resp.data.game_server.instance_id #=> String
    #   resp.data.game_server.connection_info #=> String
    #   resp.data.game_server.game_server_data #=> String
    #   resp.data.game_server.claim_status #=> String, one of ["CLAIMED"]
    #   resp.data.game_server.utilization_status #=> String, one of ["AVAILABLE", "UTILIZED"]
    #   resp.data.game_server.registration_time #=> Time
    #   resp.data.game_server.last_claim_time #=> Time
    #   resp.data.game_server.last_health_check_time #=> Time
    #
    def register_game_server(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterGameServerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterGameServerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterGameServer
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::LimitExceededException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::RegisterGameServer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterGameServer,
        stubs: @stubs,
        params_class: Params::RegisterGameServerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_game_server
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a fresh set of credentials for use when uploading a new set of game build
    #             files to Amazon GameLift's Amazon S3. This is done as part of the build creation process; see
    #                 <a>CreateBuild</a>.</p>
    #         <p>To request new credentials, specify the build ID as returned with an initial
    #                 <code>CreateBuild</code> request. If successful, a new set of credentials are
    #             returned, along with the S3 storage location associated with the build ID.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build">
    #             Create a Build with Files in S3</a>
    #         </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateBuild</a> |
    #                     <a>ListBuilds</a> |
    #                     <a>DescribeBuild</a> |
    #                     <a>UpdateBuild</a> |
    #                     <a>DeleteBuild</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::RequestUploadCredentialsInput}.
    #
    # @option params [String] :build_id
    #   <p>A unique identifier for the build to get credentials for. You can use either the build ID or ARN value. </p>
    #
    # @return [Types::RequestUploadCredentialsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.request_upload_credentials(
    #     build_id: 'BuildId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RequestUploadCredentialsOutput
    #   resp.data.upload_credentials #=> Types::AwsCredentials
    #   resp.data.upload_credentials.access_key_id #=> String
    #   resp.data.upload_credentials.secret_access_key #=> String
    #   resp.data.upload_credentials.session_token #=> String
    #   resp.data.storage_location #=> Types::S3Location
    #   resp.data.storage_location.bucket #=> String
    #   resp.data.storage_location.key #=> String
    #   resp.data.storage_location.role_arn #=> String
    #   resp.data.storage_location.object_version #=> String
    #
    def request_upload_credentials(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RequestUploadCredentialsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RequestUploadCredentialsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RequestUploadCredentials
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::RequestUploadCredentials
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RequestUploadCredentials,
        stubs: @stubs,
        params_class: Params::RequestUploadCredentialsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :request_upload_credentials
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the fleet ID that an alias is currently pointing to.</p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateAlias</a> |
    #                     <a>ListAliases</a> |
    #                     <a>DescribeAlias</a> |
    #                     <a>UpdateAlias</a> |
    #                     <a>DeleteAlias</a> |
    #                     <a>ResolveAlias</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::ResolveAliasInput}.
    #
    # @option params [String] :alias_id
    #   <p>The unique identifier of the alias that you want to retrieve a fleet ID for. You can
    #               use either the alias ID or ARN value.</p>
    #
    # @return [Types::ResolveAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resolve_alias(
    #     alias_id: 'AliasId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResolveAliasOutput
    #   resp.data.fleet_id #=> String
    #   resp.data.fleet_arn #=> String
    #
    def resolve_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResolveAliasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResolveAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResolveAlias
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TerminalRoutingStrategyException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::ResolveAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResolveAlias,
        stubs: @stubs,
        params_class: Params::ResolveAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :resolve_alias
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             <b>This operation is used with the GameLift FleetIQ solution and game server groups.</b>
    #          </p>
    #         <p>Reinstates activity on a game server group after it has been suspended. A game server
    #             group might be suspended by the<a>SuspendGameServerGroup</a> operation, or it
    #             might be suspended involuntarily due to a configuration problem. In the second case, you
    #             can manually resume activity on the group once the configuration problem has been
    #             resolved. Refer to the game server group status and status reason for more information
    #             on why group activity is suspended.</p>
    #         <p>To resume activity, specify a game server group ARN and the type of activity to be
    #             resumed. If successful, a <a>GameServerGroup</a> object is returned showing
    #             that the resumed activity is no longer listed in <code>SuspendedActions</code>. </p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html">GameLift FleetIQ Guide</a>
    #         </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateGameServerGroup</a> |
    #                     <a>ListGameServerGroups</a> |
    #                     <a>DescribeGameServerGroup</a> |
    #                     <a>UpdateGameServerGroup</a> |
    #                     <a>DeleteGameServerGroup</a> |
    #                     <a>ResumeGameServerGroup</a> |
    #                     <a>SuspendGameServerGroup</a> |
    #                     <a>DescribeGameServerInstances</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::ResumeGameServerGroupInput}.
    #
    # @option params [String] :game_server_group_name
    #   <p>A unique identifier for the game server group. Use either the <a>GameServerGroup</a> name or ARN value.</p>
    #
    # @option params [Array<String>] :resume_actions
    #   <p>The activity to resume for this game server group.</p>
    #
    # @return [Types::ResumeGameServerGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resume_game_server_group(
    #     game_server_group_name: 'GameServerGroupName', # required
    #     resume_actions: [
    #       'REPLACE_INSTANCE_TYPES' # accepts ["REPLACE_INSTANCE_TYPES"]
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResumeGameServerGroupOutput
    #   resp.data.game_server_group #=> Types::GameServerGroup
    #   resp.data.game_server_group.game_server_group_name #=> String
    #   resp.data.game_server_group.game_server_group_arn #=> String
    #   resp.data.game_server_group.role_arn #=> String
    #   resp.data.game_server_group.instance_definitions #=> Array<InstanceDefinition>
    #   resp.data.game_server_group.instance_definitions[0] #=> Types::InstanceDefinition
    #   resp.data.game_server_group.instance_definitions[0].instance_type #=> String, one of ["c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge"]
    #   resp.data.game_server_group.instance_definitions[0].weighted_capacity #=> String
    #   resp.data.game_server_group.balancing_strategy #=> String, one of ["SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"]
    #   resp.data.game_server_group.game_server_protection_policy #=> String, one of ["NO_PROTECTION", "FULL_PROTECTION"]
    #   resp.data.game_server_group.auto_scaling_group_arn #=> String
    #   resp.data.game_server_group.status #=> String, one of ["NEW", "ACTIVATING", "ACTIVE", "DELETE_SCHEDULED", "DELETING", "DELETED", "ERROR"]
    #   resp.data.game_server_group.status_reason #=> String
    #   resp.data.game_server_group.suspended_actions #=> Array<String>
    #   resp.data.game_server_group.suspended_actions[0] #=> String, one of ["REPLACE_INSTANCE_TYPES"]
    #   resp.data.game_server_group.creation_time #=> Time
    #   resp.data.game_server_group.last_updated_time #=> Time
    #
    def resume_game_server_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResumeGameServerGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResumeGameServerGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResumeGameServerGroup
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::ResumeGameServerGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResumeGameServerGroup,
        stubs: @stubs,
        params_class: Params::ResumeGameServerGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :resume_game_server_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves all active game sessions that match a set of search criteria and sorts them
    #             into a specified order. </p>
    #         <p>This operation is not designed to be continually called to track game session status.
    #             This practice can cause you to exceed your API limit, which results in errors. Instead,
    #             you must configure configure an
    #             Amazon Simple Notification Service (SNS) topic to receive notifications from FlexMatch or queues. Continuously polling game session status
    #             with <code>DescribeGameSessions</code> should only be used for games in development with
    #             low game session usage.
    #         </p>
    #         <p>When searching for game sessions, you specify exactly where you want to search and
    #             provide a search filter expression, a sort expression, or both. A search request can
    #             search only one fleet, but it can search all of a fleet's locations.  </p>
    #         <p>This operation can be used in the following ways: </p>
    #         <ul>
    #             <li>
    #                 <p>To search all game sessions that are currently running on all locations in a
    #                     fleet, provide a fleet or alias ID. This approach returns game sessions in the
    #                     fleet's home Region and all remote locations that fit the search
    #                     criteria.</p>
    #             </li>
    #             <li>
    #                 <p>To search all game sessions that are currently running on a specific fleet
    #                     location, provide a fleet or alias ID and a location name. For location, you can
    #                     specify a fleet's home Region or any remote location.</p>
    #             </li>
    #          </ul>
    #         <p>Use the pagination parameters to retrieve results as a set of sequential pages. </p>
    #         <p>If successful, a <code>GameSession</code> object is returned for each game session
    #             that matches the request. Search finds game sessions that are in <code>ACTIVE</code>
    #             status only. To retrieve information on game sessions in other statuses, use <a>DescribeGameSessions</a>.</p>
    #         <p>You can search or sort by the following game session attributes:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <b>gameSessionId</b> -- A unique identifier for the game session. You can use
    #                     either a <code>GameSessionId</code> or <code>GameSessionArn</code> value.
    #                 </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>gameSessionName</b> -- Name assigned to a game
    #                     session. This value is set when requesting a new game session with <a>CreateGameSession</a> or updating with <a>UpdateGameSession</a>. Game session names do not need to be unique
    #                     to a game session.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>gameSessionProperties</b> -- Custom data
    #                     defined in a game session's <code>GameProperty</code> parameter.
    #                         <code>GameProperty</code> values are stored as key:value pairs; the filter
    #                     expression must indicate the key and a string to search the data values for. For
    #                     example, to search for game sessions with custom data containing the key:value
    #                     pair "gameMode:brawl", specify the following:
    #                         <code>gameSessionProperties.gameMode = "brawl"</code>. All custom data
    #                     values are searched as strings.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>maximumSessions</b> -- Maximum number of
    #                     player sessions allowed for a game session. This value is set when requesting a
    #                     new game session with <a>CreateGameSession</a> or updating with <a>UpdateGameSession</a>.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>creationTimeMillis</b> -- Value indicating
    #                     when a game session was created. It is expressed in Unix time as
    #                     milliseconds.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>playerSessionCount</b> -- Number of players
    #                     currently connected to a game session. This value changes rapidly as players
    #                     join the session or drop out.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>hasAvailablePlayerSessions</b> -- Boolean
    #                     value indicating whether a game session has reached its maximum number of
    #                     players. It is highly recommended that all search requests include this filter
    #                     attribute to optimize search performance and return only sessions that players
    #                     can join. </p>
    #             </li>
    #          </ul>
    #         <note>
    #             <p>Returned values for <code>playerSessionCount</code> and
    #                     <code>hasAvailablePlayerSessions</code> change quickly as players join sessions
    #                 and others drop out. Results should be considered a snapshot in time. Be sure to
    #                 refresh search results often, and handle sessions that fill up before a player can
    #                 join. </p>
    #         </note>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateGameSession</a> |
    #                     <a>DescribeGameSessions</a> |
    #                     <a>DescribeGameSessionDetails</a> |
    #                     <a>SearchGameSessions</a> |
    #                     <a>UpdateGameSession</a> |
    #                     <a>GetGameSessionLogUrl</a> |
    #                     <a>StartGameSessionPlacement</a> |
    #                     <a>DescribeGameSessionPlacement</a> |
    #                     <a>StopGameSessionPlacement</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::SearchGameSessionsInput}.
    #
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to search for active game sessions. You can use either the fleet ID or ARN
    #               value. Each request must reference either a fleet ID or alias ID, but not both.</p>
    #
    # @option params [String] :alias_id
    #   <p>A unique identifier for the alias associated with the fleet to search for active game sessions. You can use either
    #               the alias ID or ARN value. Each request must reference either a fleet ID or alias ID,
    #               but not both.</p>
    #
    # @option params [String] :location
    #   <p>A fleet location to search for game sessions. You can specify a fleet's home Region or
    #               a remote location. Use the Amazon Web Services Region code format, such as <code>us-west-2</code>. </p>
    #           <p> </p>
    #
    # @option params [String] :filter_expression
    #   <p>String containing the search criteria for the session search. If no filter
    #               expression is included, the request returns results for all game sessions in the fleet
    #               that are in <code>ACTIVE</code> status.</p>
    #           <p>A filter expression can contain one or multiple conditions. Each condition consists
    #               of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <b>Operand</b> -- Name of a game session
    #                       attribute. Valid values are <code>gameSessionName</code>,
    #                           <code>gameSessionId</code>, <code>gameSessionProperties</code>,
    #                           <code>maximumSessions</code>, <code>creationTimeMillis</code>,
    #                           <code>playerSessionCount</code>,
    #                       <code>hasAvailablePlayerSessions</code>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>Comparator</b> -- Valid comparators are:
    #                           <code>=</code>, <code><></code>, <code><</code>, <code>></code>,
    #                           <code><=</code>, <code>>=</code>. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>Value</b> -- Value to be searched for. Values
    #                       may be numbers, boolean values (true/false) or strings depending on the operand.
    #                       String values are case sensitive and must be enclosed in single quotes. Special
    #                       characters must be escaped. Boolean and string values can only be used with the
    #                       comparators <code>=</code> and <code><></code>. For example, the following
    #                       filter expression searches on <code>gameSessionName</code>:
    #                           "<code>FilterExpression": "gameSessionName = 'Matt\\'s Awesome Game
    #                           1'"</code>. </p>
    #               </li>
    #            </ul>
    #           <p>To chain multiple conditions in a single expression, use the logical keywords
    #                   <code>AND</code>, <code>OR</code>, and <code>NOT</code> and parentheses as needed.
    #               For example: <code>x AND y AND NOT z</code>, <code>NOT (x OR y)</code>.</p>
    #           <p>Session search evaluates conditions from left to right using the following
    #               precedence rules:</p>
    #           <ol>
    #               <li>
    #                   <p>
    #                       <code>=</code>, <code><></code>, <code><</code>, <code>></code>,
    #                           <code><=</code>, <code>>=</code>
    #                   </p>
    #               </li>
    #               <li>
    #                   <p>Parentheses</p>
    #               </li>
    #               <li>
    #                   <p>NOT</p>
    #               </li>
    #               <li>
    #                   <p>AND</p>
    #               </li>
    #               <li>
    #                   <p>OR</p>
    #               </li>
    #            </ol>
    #           <p>For example, this filter expression retrieves game sessions hosting at least ten
    #               players that have an open player slot: <code>"maximumSessions>=10 AND
    #                   hasAvailablePlayerSessions=true"</code>. </p>
    #
    # @option params [String] :sort_expression
    #   <p>Instructions on how to sort the search results. If no sort expression is included,
    #               the request returns results in random order. A sort expression consists of the following
    #               elements:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <b>Operand</b> -- Name of a game session attribute.
    #                       Valid values are <code>gameSessionName</code>, <code>gameSessionId</code>,
    #                           <code>gameSessionProperties</code>, <code>maximumSessions</code>,
    #                           <code>creationTimeMillis</code>, <code>playerSessionCount</code>,
    #                           <code>hasAvailablePlayerSessions</code>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>Order</b> -- Valid sort orders are <code>ASC</code>
    #                       (ascending) and <code>DESC</code> (descending).</p>
    #               </li>
    #            </ul>
    #           <p>For example, this sort expression returns the oldest active sessions first:
    #                   <code>"SortExpression": "creationTimeMillis ASC"</code>. Results with a null value
    #               for the sort operand are returned at the end of the list.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return. Use this parameter with <code>NextToken</code> to get results as a set of sequential pages. The maximum number of results returned is 20, even if this value is not set
    #               or is set higher than 20. </p>
    #
    # @option params [String] :next_token
    #   <p>A token that indicates the start of the next sequential page of results. Use the token that is returned with a previous call to this operation. To start at the beginning of the result set, do not specify a value.</p>
    #
    # @return [Types::SearchGameSessionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_game_sessions(
    #     fleet_id: 'FleetId',
    #     alias_id: 'AliasId',
    #     location: 'Location',
    #     filter_expression: 'FilterExpression',
    #     sort_expression: 'SortExpression',
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchGameSessionsOutput
    #   resp.data.game_sessions #=> Array<GameSession>
    #   resp.data.game_sessions[0] #=> Types::GameSession
    #   resp.data.game_sessions[0].game_session_id #=> String
    #   resp.data.game_sessions[0].name #=> String
    #   resp.data.game_sessions[0].fleet_id #=> String
    #   resp.data.game_sessions[0].fleet_arn #=> String
    #   resp.data.game_sessions[0].creation_time #=> Time
    #   resp.data.game_sessions[0].termination_time #=> Time
    #   resp.data.game_sessions[0].current_player_session_count #=> Integer
    #   resp.data.game_sessions[0].maximum_player_session_count #=> Integer
    #   resp.data.game_sessions[0].status #=> String, one of ["ACTIVE", "ACTIVATING", "TERMINATED", "TERMINATING", "ERROR"]
    #   resp.data.game_sessions[0].status_reason #=> String, one of ["INTERRUPTED"]
    #   resp.data.game_sessions[0].game_properties #=> Array<GameProperty>
    #   resp.data.game_sessions[0].game_properties[0] #=> Types::GameProperty
    #   resp.data.game_sessions[0].game_properties[0].key #=> String
    #   resp.data.game_sessions[0].game_properties[0].value #=> String
    #   resp.data.game_sessions[0].ip_address #=> String
    #   resp.data.game_sessions[0].dns_name #=> String
    #   resp.data.game_sessions[0].port #=> Integer
    #   resp.data.game_sessions[0].player_session_creation_policy #=> String, one of ["ACCEPT_ALL", "DENY_ALL"]
    #   resp.data.game_sessions[0].creator_id #=> String
    #   resp.data.game_sessions[0].game_session_data #=> String
    #   resp.data.game_sessions[0].matchmaker_data #=> String
    #   resp.data.game_sessions[0].location #=> String
    #   resp.data.next_token #=> String
    #
    def search_game_sessions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchGameSessionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchGameSessionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchGameSessions
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedRegionException, Errors::NotFoundException, Errors::TerminalRoutingStrategyException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::SearchGameSessions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchGameSessions,
        stubs: @stubs,
        params_class: Params::SearchGameSessionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_game_sessions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Resumes certain types of activity on fleet instances that were suspended with <a>StopFleetActions</a>. For multi-location fleets, fleet actions are managed
    #             separately for each location. Currently, this operation is used to restart a fleet's
    #             auto-scaling activity.</p>
    #         <p>This operation can be used in the following ways: </p>
    #         <ul>
    #             <li>
    #                 <p>To restart actions on instances in the fleet's home Region, provide a fleet ID
    #                     and the type of actions to resume. </p>
    #             </li>
    #             <li>
    #                 <p>To restart actions on instances in one of the fleet's remote locations,
    #                     provide a fleet ID, a location name, and the type of actions to resume.  </p>
    #             </li>
    #          </ul>
    #         <p>If successful, GameLift once again initiates scaling events as triggered by the fleet's
    #             scaling policies. If actions on the fleet location were never stopped, this operation
    #             will have no effect. You can view a fleet's stopped actions using <a>DescribeFleetAttributes</a> or <a>DescribeFleetLocationAttributes</a>.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up GameLift fleets</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateFleet</a> |
    #                     <a>UpdateFleetCapacity</a> |
    #                     <a>PutScalingPolicy</a> |
    #                     <a>DescribeEC2InstanceLimits</a> |
    #                     <a>DescribeFleetAttributes</a> |
    #                     <a>DescribeFleetLocationAttributes</a> |
    #                     <a>UpdateFleetAttributes</a> |
    #                     <a>StopFleetActions</a> |
    #                     <a>DeleteFleet</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::StartFleetActionsInput}.
    #
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to restart actions on.  You can use either the fleet ID or ARN value.</p>
    #
    # @option params [Array<String>] :actions
    #   <p>List of actions to restart on the fleet.</p>
    #
    # @option params [String] :location
    #   <p>The fleet location to restart fleet actions for. Specify a location in the form of
    #               an Amazon Web Services Region code, such as <code>us-west-2</code>.</p>
    #
    # @return [Types::StartFleetActionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_fleet_actions(
    #     fleet_id: 'FleetId', # required
    #     actions: [
    #       'AUTO_SCALING' # accepts ["AUTO_SCALING"]
    #     ], # required
    #     location: 'Location'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartFleetActionsOutput
    #   resp.data.fleet_id #=> String
    #   resp.data.fleet_arn #=> String
    #
    def start_fleet_actions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartFleetActionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartFleetActionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartFleetActions
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedRegionException, Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::StartFleetActions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartFleetActions,
        stubs: @stubs,
        params_class: Params::StartFleetActionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_fleet_actions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Places a request for a new game session in a queue (see <a>CreateGameSessionQueue</a>). When processing a placement request, Amazon GameLift
    #         searches for available resources on the queue's destinations, scanning each until it
    #         finds resources or the placement request times out.</p>
    #          <p>A game session placement request can also request player sessions. When a new game
    #         session is successfully created, Amazon GameLift creates a player session for each player
    #         included in the request.</p>
    #          <p>When placing a game session, by default Amazon GameLift tries each fleet in the order they
    #         are listed in the queue configuration. Ideally, a queue's destinations are listed in
    #         preference order.</p>
    #          <p>Alternatively, when requesting a game session with players, you can also provide
    #         latency data for each player in relevant Regions. Latency data indicates the performance
    #         lag a player experiences when connected to a fleet in the Region. Amazon GameLift uses latency
    #         data to reorder the list of destinations to place the game session in a Region with
    #         minimal lag. If latency data is provided for multiple players, Amazon GameLift calculates each
    #         Region's average lag for all players and reorders to get the best game play across all
    #         players. </p>
    #          <p>To place a new game session request, specify the following:</p>
    #          <ul>
    #             <li>
    #                <p>The queue name and a set of game session properties and settings</p>
    #             </li>
    #             <li>
    #                <p>A unique ID (such as a UUID) for the placement. You use this ID to track
    #                 the status of the placement request</p>
    #             </li>
    #             <li>
    #                <p>(Optional) A set of player data and a unique player ID for each player that
    #                 you are joining to the new game session (player data is optional, but if you
    #                 include it, you must also provide a unique ID for each player)</p>
    #             </li>
    #             <li>
    #                <p>Latency data for all players (if you want to optimize game play for the
    #                 players)</p>
    #             </li>
    #          </ul>
    #          <p>If successful, a new game session placement is created.</p>
    #          <p>To track the status of a placement request, call <a>DescribeGameSessionPlacement</a> and check the request's status. If the
    #         status is <code>FULFILLED</code>, a new game session has been created and a game session
    #         ARN and Region are referenced. If the placement request times out, you can resubmit the
    #         request or retry it with a different queue. </p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateGameSession</a> |
    #                     <a>DescribeGameSessions</a> |
    #                     <a>DescribeGameSessionDetails</a> |
    #                     <a>SearchGameSessions</a> |
    #                     <a>UpdateGameSession</a> |
    #                     <a>GetGameSessionLogUrl</a> |
    #                     <a>StartGameSessionPlacement</a> |
    #                     <a>DescribeGameSessionPlacement</a> |
    #                     <a>StopGameSessionPlacement</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::StartGameSessionPlacementInput}.
    #
    # @option params [String] :placement_id
    #   <p>A unique identifier to assign to the new game session placement. This value is
    #           developer-defined. The value must be unique across all Regions and cannot be reused
    #           unless you are resubmitting a canceled or timed-out placement request.</p>
    #
    # @option params [String] :game_session_queue_name
    #   <p>Name of the queue to use to place the new game session. You can use either the queue name
    #               or ARN value. </p>
    #
    # @option params [Array<GameProperty>] :game_properties
    #   <p>A set of custom properties for a game session, formatted as key:value pairs. These properties are passed to a game server process in the
    #       <a>GameSession</a> object with a request to start a new game session (see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession">Start a Game Session</a>).</p>
    #
    # @option params [Integer] :maximum_player_session_count
    #   <p>The maximum number of players that can be connected simultaneously to the game session.</p>
    #
    # @option params [String] :game_session_name
    #   <p>A descriptive label that is associated with a game session. Session names do not need to be unique.</p>
    #
    # @option params [Array<PlayerLatency>] :player_latencies
    #   <p>A set of values, expressed in milliseconds, that indicates the amount of latency that a player experiences when connected to @aws; Regions. This information is used to try to place the new game session where
    #           it can offer the best possible gameplay experience for the players. </p>
    #
    # @option params [Array<DesiredPlayerSession>] :desired_player_sessions
    #   <p>Set of information on each player to create a player session for.</p>
    #
    # @option params [String] :game_session_data
    #   <p>A set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the
    #       <a>GameSession</a> object with a request to start a new game session (see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession">Start a Game Session</a>).</p>
    #
    # @return [Types::StartGameSessionPlacementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_game_session_placement(
    #     placement_id: 'PlacementId', # required
    #     game_session_queue_name: 'GameSessionQueueName', # required
    #     game_properties: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     maximum_player_session_count: 1, # required
    #     game_session_name: 'GameSessionName',
    #     player_latencies: [
    #       {
    #         player_id: 'PlayerId',
    #         region_identifier: 'RegionIdentifier',
    #         latency_in_milliseconds: 1.0
    #       }
    #     ],
    #     desired_player_sessions: [
    #       {
    #         player_id: 'PlayerId',
    #         player_data: 'PlayerData'
    #       }
    #     ],
    #     game_session_data: 'GameSessionData'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartGameSessionPlacementOutput
    #   resp.data.game_session_placement #=> Types::GameSessionPlacement
    #   resp.data.game_session_placement.placement_id #=> String
    #   resp.data.game_session_placement.game_session_queue_name #=> String
    #   resp.data.game_session_placement.status #=> String, one of ["PENDING", "FULFILLED", "CANCELLED", "TIMED_OUT", "FAILED"]
    #   resp.data.game_session_placement.game_properties #=> Array<GameProperty>
    #   resp.data.game_session_placement.game_properties[0] #=> Types::GameProperty
    #   resp.data.game_session_placement.game_properties[0].key #=> String
    #   resp.data.game_session_placement.game_properties[0].value #=> String
    #   resp.data.game_session_placement.maximum_player_session_count #=> Integer
    #   resp.data.game_session_placement.game_session_name #=> String
    #   resp.data.game_session_placement.game_session_id #=> String
    #   resp.data.game_session_placement.game_session_arn #=> String
    #   resp.data.game_session_placement.game_session_region #=> String
    #   resp.data.game_session_placement.player_latencies #=> Array<PlayerLatency>
    #   resp.data.game_session_placement.player_latencies[0] #=> Types::PlayerLatency
    #   resp.data.game_session_placement.player_latencies[0].player_id #=> String
    #   resp.data.game_session_placement.player_latencies[0].region_identifier #=> String
    #   resp.data.game_session_placement.player_latencies[0].latency_in_milliseconds #=> Float
    #   resp.data.game_session_placement.start_time #=> Time
    #   resp.data.game_session_placement.end_time #=> Time
    #   resp.data.game_session_placement.ip_address #=> String
    #   resp.data.game_session_placement.dns_name #=> String
    #   resp.data.game_session_placement.port #=> Integer
    #   resp.data.game_session_placement.placed_player_sessions #=> Array<PlacedPlayerSession>
    #   resp.data.game_session_placement.placed_player_sessions[0] #=> Types::PlacedPlayerSession
    #   resp.data.game_session_placement.placed_player_sessions[0].player_id #=> String
    #   resp.data.game_session_placement.placed_player_sessions[0].player_session_id #=> String
    #   resp.data.game_session_placement.game_session_data #=> String
    #   resp.data.game_session_placement.matchmaker_data #=> String
    #
    def start_game_session_placement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartGameSessionPlacementInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartGameSessionPlacementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartGameSessionPlacement
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::StartGameSessionPlacement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartGameSessionPlacement,
        stubs: @stubs,
        params_class: Params::StartGameSessionPlacementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_game_session_placement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Finds new players to fill open slots in currently running game sessions.
    #             The backfill match process is essentially identical to the process of forming new
    #             matches. Backfill
    #             requests use the same matchmaker that was used to make the original match, and they provide
    #             matchmaking data for all players currently in the game session. FlexMatch uses this information
    #             to select new players so that backfilled match continues to meet the original match requirements. </p>
    #         <p>When using FlexMatch with GameLift managed hosting, you can request a backfill match from
    #             a client service by calling this operation with a <a>GameSession</a>
    #             identifier. You also have the option of making backfill requests directly from your game
    #             server. In response to a request, FlexMatch creates player sessions for the new players,
    #             updates the <code>GameSession</code> resource, and sends updated matchmaking data to the
    #             game server. You can request a backfill match at any point after a game session is
    #             started. Each game session can have only one active backfill request at a time; a
    #             subsequent request automatically replaces the earlier request.</p>
    #         <p>When using FlexMatch as a standalone component, request a backfill match by calling this operation
    #         without a game session identifier. As with newly formed matches, matchmaking results are returned
    #         in a matchmaking event so that your game can update the game session that is being backfilled.</p>
    #         <p>To request a backfill match, specify a unique ticket ID, the original matchmaking
    #             configuration, and matchmaking data for all current players in the game session being
    #             backfilled. Optionally, specify the <code>GameSession</code> ARN. If successful, a match
    #             backfill ticket is created and returned with status set to QUEUED. Track the status of
    #             backfill tickets using the same method for tracking tickets for new matches.</p>
    #         <p>Only game sessions created by FlexMatch are supported for match backfill.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-backfill.html">
    #             Backfill existing games with FlexMatch</a>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-events.html">
    #             Matchmaking events</a> (reference)</p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/gamelift-match.html">
    #                 How GameLift FlexMatch works</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>StartMatchmaking</a> |
    #                     <a>DescribeMatchmaking</a> |
    #                     <a>StopMatchmaking</a> |
    #                     <a>AcceptMatch</a> |
    #                     <a>StartMatchBackfill</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::StartMatchBackfillInput}.
    #
    # @option params [String] :ticket_id
    #   <p>A unique identifier for a matchmaking ticket. If no ticket ID is specified here, Amazon GameLift will generate one in the form of
    #               a UUID. Use this identifier to track the match backfill ticket status and retrieve match
    #               results.</p>
    #
    # @option params [String] :configuration_name
    #   <p>Name of the matchmaker to use for this request. You can use either the configuration
    #               name or ARN value. The ARN of the matchmaker that was used with the original game
    #               session is listed in the <a>GameSession</a> object,
    #                   <code>MatchmakerData</code> property.</p>
    #
    # @option params [String] :game_session_arn
    #   <p>A unique identifier for the game session. Use the game session ID. When using FlexMatch as a standalone matchmaking
    #               solution, this parameter is not needed. </p>
    #
    # @option params [Array<Player>] :players
    #   <p>Match information on all players that are currently assigned to the game session.
    #               This information is used by the matchmaker to find new players and add them to the
    #               existing game.</p>
    #           <ul>
    #               <li>
    #                   <p>PlayerID, PlayerAttributes, Team -- This information is maintained in the
    #                       <a>GameSession</a> object, <code>MatchmakerData</code> property,
    #                       for all players who are currently assigned to the game session. The matchmaker
    #                       data is in JSON syntax, formatted as a string. For more details, see <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-server.html#match-server-data">
    #                           Match Data</a>. </p>
    #                   <p>The backfill request must specify the team membership for every player.
    #                   Do not specify team if you are not using backfill.</p>
    #               </li>
    #               <li>
    #                   <p>LatencyInMs -- If the matchmaker uses player latency, include a latency
    #                       value, in milliseconds, for the Region that the game session is currently in. Do
    #                       not include latency values for any other Region.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::StartMatchBackfillOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_match_backfill(
    #     ticket_id: 'TicketId',
    #     configuration_name: 'ConfigurationName', # required
    #     game_session_arn: 'GameSessionArn',
    #     players: [
    #       {
    #         player_id: 'PlayerId',
    #         player_attributes: {
    #           'key' => {
    #             s: 'S',
    #             n: 1.0,
    #             sl: [
    #               'member'
    #             ],
    #             sdm: {
    #               'key' => 1.0
    #             }
    #           }
    #         },
    #         team: 'Team',
    #         latency_in_ms: {
    #           'key' => 1
    #         }
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartMatchBackfillOutput
    #   resp.data.matchmaking_ticket #=> Types::MatchmakingTicket
    #   resp.data.matchmaking_ticket.ticket_id #=> String
    #   resp.data.matchmaking_ticket.configuration_name #=> String
    #   resp.data.matchmaking_ticket.configuration_arn #=> String
    #   resp.data.matchmaking_ticket.status #=> String, one of ["CANCELLED", "COMPLETED", "FAILED", "PLACING", "QUEUED", "REQUIRES_ACCEPTANCE", "SEARCHING", "TIMED_OUT"]
    #   resp.data.matchmaking_ticket.status_reason #=> String
    #   resp.data.matchmaking_ticket.status_message #=> String
    #   resp.data.matchmaking_ticket.start_time #=> Time
    #   resp.data.matchmaking_ticket.end_time #=> Time
    #   resp.data.matchmaking_ticket.players #=> Array<Player>
    #   resp.data.matchmaking_ticket.players[0] #=> Types::Player
    #   resp.data.matchmaking_ticket.players[0].player_id #=> String
    #   resp.data.matchmaking_ticket.players[0].player_attributes #=> Hash<String, AttributeValue>
    #   resp.data.matchmaking_ticket.players[0].player_attributes['key'] #=> Types::AttributeValue
    #   resp.data.matchmaking_ticket.players[0].player_attributes['key'].s #=> String
    #   resp.data.matchmaking_ticket.players[0].player_attributes['key'].n #=> Float
    #   resp.data.matchmaking_ticket.players[0].player_attributes['key'].sl #=> Array<String>
    #   resp.data.matchmaking_ticket.players[0].player_attributes['key'].sl[0] #=> String
    #   resp.data.matchmaking_ticket.players[0].player_attributes['key'].sdm #=> Hash<String, Float>
    #   resp.data.matchmaking_ticket.players[0].player_attributes['key'].sdm['key'] #=> Float
    #   resp.data.matchmaking_ticket.players[0].team #=> String
    #   resp.data.matchmaking_ticket.players[0].latency_in_ms #=> Hash<String, Integer>
    #   resp.data.matchmaking_ticket.players[0].latency_in_ms['key'] #=> Integer
    #   resp.data.matchmaking_ticket.game_session_connection_info #=> Types::GameSessionConnectionInfo
    #   resp.data.matchmaking_ticket.game_session_connection_info.game_session_arn #=> String
    #   resp.data.matchmaking_ticket.game_session_connection_info.ip_address #=> String
    #   resp.data.matchmaking_ticket.game_session_connection_info.dns_name #=> String
    #   resp.data.matchmaking_ticket.game_session_connection_info.port #=> Integer
    #   resp.data.matchmaking_ticket.game_session_connection_info.matched_player_sessions #=> Array<MatchedPlayerSession>
    #   resp.data.matchmaking_ticket.game_session_connection_info.matched_player_sessions[0] #=> Types::MatchedPlayerSession
    #   resp.data.matchmaking_ticket.game_session_connection_info.matched_player_sessions[0].player_id #=> String
    #   resp.data.matchmaking_ticket.game_session_connection_info.matched_player_sessions[0].player_session_id #=> String
    #   resp.data.matchmaking_ticket.estimated_wait_time #=> Integer
    #
    def start_match_backfill(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartMatchBackfillInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartMatchBackfillInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartMatchBackfill
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedRegionException, Errors::NotFoundException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::StartMatchBackfill
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartMatchBackfill,
        stubs: @stubs,
        params_class: Params::StartMatchBackfillOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_match_backfill
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Uses FlexMatch to create a game match for a group of players based on custom matchmaking
    #             rules. With games that use GameLift managed hosting, this operation also triggers GameLift
    #             to find hosting resources and start a new game session for the new match. Each
    #             matchmaking request includes information on one or more players and specifies the
    #             FlexMatch matchmaker to use. When a request is for multiple players, FlexMatch attempts to
    #             build a match that includes all players in the request, placing them in the same team
    #             and finding additional players as needed to fill the match. </p>
    #         <p>To start matchmaking, provide a unique ticket ID, specify a matchmaking configuration,
    #             and include the players to be matched. You must also include any player attributes that
    #             are required by the matchmaking configuration's rule set. If successful, a matchmaking
    #             ticket is returned with status set to <code>QUEUED</code>. </p>
    #         <p>Track matchmaking events to respond as needed and acquire game session connection
    #             information for successfully completed matches. Ticket status updates are tracked using
    #             event notification through Amazon Simple Notification Service, which is defined in the matchmaking
    #             configuration.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-client.html">
    #             Add FlexMatch to a game client</a>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html">
    #             Set Up FlexMatch event notification</a>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/gamelift-match.html">
    #             How GameLift FlexMatch works</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>StartMatchmaking</a> |
    #                     <a>DescribeMatchmaking</a> |
    #                     <a>StopMatchmaking</a> |
    #                     <a>AcceptMatch</a> |
    #                     <a>StartMatchBackfill</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::StartMatchmakingInput}.
    #
    # @option params [String] :ticket_id
    #   <p>A unique identifier for a matchmaking ticket. If no ticket ID is specified here, Amazon GameLift will generate one in the form of
    #               a UUID. Use this identifier to track the matchmaking ticket status and retrieve match
    #               results.</p>
    #
    # @option params [String] :configuration_name
    #   <p>Name of the matchmaking configuration to use for this request. Matchmaking
    #               configurations must exist in the same Region as this request. You can use either the
    #               configuration name or ARN value.</p>
    #
    # @option params [Array<Player>] :players
    #   <p>Information on each player to be matched. This information must include a player
    #               ID, and may contain player attributes and latency data to be used in the matchmaking
    #               process. After a successful match, <code>Player</code> objects contain the name of the
    #               team the player is assigned to.</p>
    #
    # @return [Types::StartMatchmakingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_matchmaking(
    #     ticket_id: 'TicketId',
    #     configuration_name: 'ConfigurationName', # required
    #     players: [
    #       {
    #         player_id: 'PlayerId',
    #         player_attributes: {
    #           'key' => {
    #             s: 'S',
    #             n: 1.0,
    #             sl: [
    #               'member'
    #             ],
    #             sdm: {
    #               'key' => 1.0
    #             }
    #           }
    #         },
    #         team: 'Team',
    #         latency_in_ms: {
    #           'key' => 1
    #         }
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartMatchmakingOutput
    #   resp.data.matchmaking_ticket #=> Types::MatchmakingTicket
    #   resp.data.matchmaking_ticket.ticket_id #=> String
    #   resp.data.matchmaking_ticket.configuration_name #=> String
    #   resp.data.matchmaking_ticket.configuration_arn #=> String
    #   resp.data.matchmaking_ticket.status #=> String, one of ["CANCELLED", "COMPLETED", "FAILED", "PLACING", "QUEUED", "REQUIRES_ACCEPTANCE", "SEARCHING", "TIMED_OUT"]
    #   resp.data.matchmaking_ticket.status_reason #=> String
    #   resp.data.matchmaking_ticket.status_message #=> String
    #   resp.data.matchmaking_ticket.start_time #=> Time
    #   resp.data.matchmaking_ticket.end_time #=> Time
    #   resp.data.matchmaking_ticket.players #=> Array<Player>
    #   resp.data.matchmaking_ticket.players[0] #=> Types::Player
    #   resp.data.matchmaking_ticket.players[0].player_id #=> String
    #   resp.data.matchmaking_ticket.players[0].player_attributes #=> Hash<String, AttributeValue>
    #   resp.data.matchmaking_ticket.players[0].player_attributes['key'] #=> Types::AttributeValue
    #   resp.data.matchmaking_ticket.players[0].player_attributes['key'].s #=> String
    #   resp.data.matchmaking_ticket.players[0].player_attributes['key'].n #=> Float
    #   resp.data.matchmaking_ticket.players[0].player_attributes['key'].sl #=> Array<String>
    #   resp.data.matchmaking_ticket.players[0].player_attributes['key'].sl[0] #=> String
    #   resp.data.matchmaking_ticket.players[0].player_attributes['key'].sdm #=> Hash<String, Float>
    #   resp.data.matchmaking_ticket.players[0].player_attributes['key'].sdm['key'] #=> Float
    #   resp.data.matchmaking_ticket.players[0].team #=> String
    #   resp.data.matchmaking_ticket.players[0].latency_in_ms #=> Hash<String, Integer>
    #   resp.data.matchmaking_ticket.players[0].latency_in_ms['key'] #=> Integer
    #   resp.data.matchmaking_ticket.game_session_connection_info #=> Types::GameSessionConnectionInfo
    #   resp.data.matchmaking_ticket.game_session_connection_info.game_session_arn #=> String
    #   resp.data.matchmaking_ticket.game_session_connection_info.ip_address #=> String
    #   resp.data.matchmaking_ticket.game_session_connection_info.dns_name #=> String
    #   resp.data.matchmaking_ticket.game_session_connection_info.port #=> Integer
    #   resp.data.matchmaking_ticket.game_session_connection_info.matched_player_sessions #=> Array<MatchedPlayerSession>
    #   resp.data.matchmaking_ticket.game_session_connection_info.matched_player_sessions[0] #=> Types::MatchedPlayerSession
    #   resp.data.matchmaking_ticket.game_session_connection_info.matched_player_sessions[0].player_id #=> String
    #   resp.data.matchmaking_ticket.game_session_connection_info.matched_player_sessions[0].player_session_id #=> String
    #   resp.data.matchmaking_ticket.estimated_wait_time #=> Integer
    #
    def start_matchmaking(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartMatchmakingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartMatchmakingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartMatchmaking
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedRegionException, Errors::NotFoundException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::StartMatchmaking
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartMatchmaking,
        stubs: @stubs,
        params_class: Params::StartMatchmakingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_matchmaking
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Suspends certain types of activity in a fleet location. Currently, this operation is
    #             used to stop auto-scaling activity. For multi-location fleets, fleet actions are managed
    #             separately for each location. </p>
    #         <p>Stopping fleet actions has several potential purposes. It allows you to temporarily
    #             stop auto-scaling activity but retain your scaling policies for use in the future. For
    #             multi-location fleets, you can set up fleet-wide auto-scaling, and then opt out of it
    #             for certain locations. </p>
    #         <p>This operation can be used in the following ways: </p>
    #         <ul>
    #             <li>
    #                 <p>To stop actions on instances in the fleet's home Region, provide a fleet ID
    #                     and the type of actions to suspend. </p>
    #             </li>
    #             <li>
    #                 <p>To stop actions on instances in one of the fleet's remote locations, provide a
    #                     fleet ID, a location name, and the type of actions to suspend. </p>
    #             </li>
    #          </ul>
    #         <p>If successful, GameLift no longer initiates scaling events except in response to manual
    #             changes using <a>UpdateFleetCapacity</a>. You can view a fleet's stopped
    #             actions using <a>DescribeFleetAttributes</a> or <a>DescribeFleetLocationAttributes</a>. Suspended activity can be restarted
    #             using <a>StartFleetActions</a>.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up GameLift Fleets</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateFleet</a> |
    #                     <a>UpdateFleetCapacity</a> |
    #                     <a>PutScalingPolicy</a> |
    #                     <a>DescribeEC2InstanceLimits</a> |
    #                     <a>DescribeFleetAttributes</a> |
    #                     <a>DescribeFleetLocationAttributes</a> |
    #                     <a>UpdateFleetAttributes</a> |
    #                     <a>StopFleetActions</a> |
    #                     <a>DeleteFleet</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::StopFleetActionsInput}.
    #
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to stop actions on.  You can use either the fleet ID or ARN value.</p>
    #
    # @option params [Array<String>] :actions
    #   <p>List of actions to suspend on the fleet. </p>
    #
    # @option params [String] :location
    #   <p>The fleet location to stop fleet actions for. Specify a location in the form of an Amazon Web Services Region code, such as
    #               <code>us-west-2</code>.</p>
    #
    # @return [Types::StopFleetActionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_fleet_actions(
    #     fleet_id: 'FleetId', # required
    #     actions: [
    #       'AUTO_SCALING' # accepts ["AUTO_SCALING"]
    #     ], # required
    #     location: 'Location'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopFleetActionsOutput
    #   resp.data.fleet_id #=> String
    #   resp.data.fleet_arn #=> String
    #
    def stop_fleet_actions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopFleetActionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopFleetActionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopFleetActions
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedRegionException, Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::StopFleetActions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopFleetActions,
        stubs: @stubs,
        params_class: Params::StopFleetActionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_fleet_actions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels a game session placement that is in <code>PENDING</code> status. To stop a
    #         placement, provide the placement ID values. If successful, the placement is moved to
    #         <code>CANCELLED</code> status.</p>
    #          <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateGameSession</a> |
    #                     <a>DescribeGameSessions</a> |
    #                     <a>DescribeGameSessionDetails</a> |
    #                     <a>SearchGameSessions</a> |
    #                     <a>UpdateGameSession</a> |
    #                     <a>GetGameSessionLogUrl</a> |
    #                     <a>StartGameSessionPlacement</a> |
    #                     <a>DescribeGameSessionPlacement</a> |
    #                     <a>StopGameSessionPlacement</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::StopGameSessionPlacementInput}.
    #
    # @option params [String] :placement_id
    #   <p>A unique identifier for a game session placement to cancel.</p>
    #
    # @return [Types::StopGameSessionPlacementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_game_session_placement(
    #     placement_id: 'PlacementId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopGameSessionPlacementOutput
    #   resp.data.game_session_placement #=> Types::GameSessionPlacement
    #   resp.data.game_session_placement.placement_id #=> String
    #   resp.data.game_session_placement.game_session_queue_name #=> String
    #   resp.data.game_session_placement.status #=> String, one of ["PENDING", "FULFILLED", "CANCELLED", "TIMED_OUT", "FAILED"]
    #   resp.data.game_session_placement.game_properties #=> Array<GameProperty>
    #   resp.data.game_session_placement.game_properties[0] #=> Types::GameProperty
    #   resp.data.game_session_placement.game_properties[0].key #=> String
    #   resp.data.game_session_placement.game_properties[0].value #=> String
    #   resp.data.game_session_placement.maximum_player_session_count #=> Integer
    #   resp.data.game_session_placement.game_session_name #=> String
    #   resp.data.game_session_placement.game_session_id #=> String
    #   resp.data.game_session_placement.game_session_arn #=> String
    #   resp.data.game_session_placement.game_session_region #=> String
    #   resp.data.game_session_placement.player_latencies #=> Array<PlayerLatency>
    #   resp.data.game_session_placement.player_latencies[0] #=> Types::PlayerLatency
    #   resp.data.game_session_placement.player_latencies[0].player_id #=> String
    #   resp.data.game_session_placement.player_latencies[0].region_identifier #=> String
    #   resp.data.game_session_placement.player_latencies[0].latency_in_milliseconds #=> Float
    #   resp.data.game_session_placement.start_time #=> Time
    #   resp.data.game_session_placement.end_time #=> Time
    #   resp.data.game_session_placement.ip_address #=> String
    #   resp.data.game_session_placement.dns_name #=> String
    #   resp.data.game_session_placement.port #=> Integer
    #   resp.data.game_session_placement.placed_player_sessions #=> Array<PlacedPlayerSession>
    #   resp.data.game_session_placement.placed_player_sessions[0] #=> Types::PlacedPlayerSession
    #   resp.data.game_session_placement.placed_player_sessions[0].player_id #=> String
    #   resp.data.game_session_placement.placed_player_sessions[0].player_session_id #=> String
    #   resp.data.game_session_placement.game_session_data #=> String
    #   resp.data.game_session_placement.matchmaker_data #=> String
    #
    def stop_game_session_placement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopGameSessionPlacementInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopGameSessionPlacementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopGameSessionPlacement
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::StopGameSessionPlacement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopGameSessionPlacement,
        stubs: @stubs,
        params_class: Params::StopGameSessionPlacementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_game_session_placement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels a matchmaking ticket or match backfill ticket that is currently being
    #             processed. To stop the matchmaking operation, specify the ticket ID. If successful, work
    #             on the ticket is stopped, and the ticket status is changed to
    #             <code>CANCELLED</code>.</p>
    #         <p>This call is also used to turn off automatic backfill for an individual game session.
    #             This is for game sessions that are created with a matchmaking configuration that has
    #             automatic backfill enabled. The ticket ID is included in the <code>MatchmakerData</code>
    #             of an updated game session object, which is provided to the game server.</p>
    #         <note>
    #             <p>If the operation is successful, the service sends back an empty JSON struct with the HTTP 200 response
    #         (not an empty HTTP body).</p>
    #          </note>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-client.html">
    #                 Add FlexMatch to a game client</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>StartMatchmaking</a> |
    #                     <a>DescribeMatchmaking</a> |
    #                     <a>StopMatchmaking</a> |
    #                     <a>AcceptMatch</a> |
    #                     <a>StartMatchBackfill</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::StopMatchmakingInput}.
    #
    # @option params [String] :ticket_id
    #   <p>A unique identifier for a matchmaking ticket.</p>
    #
    # @return [Types::StopMatchmakingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_matchmaking(
    #     ticket_id: 'TicketId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopMatchmakingOutput
    #
    def stop_matchmaking(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopMatchmakingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopMatchmakingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopMatchmaking
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedRegionException, Errors::NotFoundException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::StopMatchmaking
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopMatchmaking,
        stubs: @stubs,
        params_class: Params::StopMatchmakingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_matchmaking
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             <b>This operation is used with the GameLift FleetIQ solution and game server groups.</b>
    #          </p>
    #         <p>Temporarily stops activity on a game server group without terminating instances or the
    #             game server group. You can restart activity by calling <a>ResumeGameServerGroup</a>. You can suspend the following activity:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <b>Instance type replacement</b> - This activity
    #                     evaluates the current game hosting viability of all Spot instance types that are
    #                     defined for the game server group. It updates the Auto Scaling group to remove
    #                     nonviable Spot Instance types, which have a higher chance of game server
    #                     interruptions. It then balances capacity across the remaining viable Spot
    #                     Instance types. When this activity is suspended, the Auto Scaling group
    #                     continues with its current balance, regardless of viability. Instance
    #                     protection, utilization metrics, and capacity scaling activities continue to be
    #                     active. </p>
    #             </li>
    #          </ul>
    #         <p>To suspend activity, specify a game server group ARN and the type of activity to be
    #             suspended. If successful, a <a>GameServerGroup</a> object is returned showing
    #             that the activity is listed in <code>SuspendedActions</code>.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html">GameLift FleetIQ Guide</a>
    #         </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateGameServerGroup</a> |
    #                     <a>ListGameServerGroups</a> |
    #                     <a>DescribeGameServerGroup</a> |
    #                     <a>UpdateGameServerGroup</a> |
    #                     <a>DeleteGameServerGroup</a> |
    #                     <a>ResumeGameServerGroup</a> |
    #                     <a>SuspendGameServerGroup</a> |
    #                     <a>DescribeGameServerInstances</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::SuspendGameServerGroupInput}.
    #
    # @option params [String] :game_server_group_name
    #   <p>A unique identifier for the game server group. Use either the <a>GameServerGroup</a> name or ARN value.</p>
    #
    # @option params [Array<String>] :suspend_actions
    #   <p>The activity to suspend for this game server group.</p>
    #
    # @return [Types::SuspendGameServerGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.suspend_game_server_group(
    #     game_server_group_name: 'GameServerGroupName', # required
    #     suspend_actions: [
    #       'REPLACE_INSTANCE_TYPES' # accepts ["REPLACE_INSTANCE_TYPES"]
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SuspendGameServerGroupOutput
    #   resp.data.game_server_group #=> Types::GameServerGroup
    #   resp.data.game_server_group.game_server_group_name #=> String
    #   resp.data.game_server_group.game_server_group_arn #=> String
    #   resp.data.game_server_group.role_arn #=> String
    #   resp.data.game_server_group.instance_definitions #=> Array<InstanceDefinition>
    #   resp.data.game_server_group.instance_definitions[0] #=> Types::InstanceDefinition
    #   resp.data.game_server_group.instance_definitions[0].instance_type #=> String, one of ["c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge"]
    #   resp.data.game_server_group.instance_definitions[0].weighted_capacity #=> String
    #   resp.data.game_server_group.balancing_strategy #=> String, one of ["SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"]
    #   resp.data.game_server_group.game_server_protection_policy #=> String, one of ["NO_PROTECTION", "FULL_PROTECTION"]
    #   resp.data.game_server_group.auto_scaling_group_arn #=> String
    #   resp.data.game_server_group.status #=> String, one of ["NEW", "ACTIVATING", "ACTIVE", "DELETE_SCHEDULED", "DELETING", "DELETED", "ERROR"]
    #   resp.data.game_server_group.status_reason #=> String
    #   resp.data.game_server_group.suspended_actions #=> Array<String>
    #   resp.data.game_server_group.suspended_actions[0] #=> String, one of ["REPLACE_INSTANCE_TYPES"]
    #   resp.data.game_server_group.creation_time #=> Time
    #   resp.data.game_server_group.last_updated_time #=> Time
    #
    def suspend_game_server_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SuspendGameServerGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SuspendGameServerGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SuspendGameServerGroup
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::SuspendGameServerGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SuspendGameServerGroup,
        stubs: @stubs,
        params_class: Params::SuspendGameServerGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :suspend_game_server_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Assigns a tag to a GameLift resource. Amazon Web Services resource tags provide an additional
    #             management tool set. You can use tags to organize resources, create IAM permissions
    #             policies to manage access to groups of resources, customize Amazon Web Services cost breakdowns, etc.
    #             This operation handles the permissions necessary to manage tags for the following GameLift
    #             resource types:</p>
    #         <ul>
    #             <li>
    #                 <p>Build</p>
    #             </li>
    #             <li>
    #                 <p>Script</p>
    #             </li>
    #             <li>
    #                 <p>Fleet</p>
    #             </li>
    #             <li>
    #                 <p>Alias</p>
    #             </li>
    #             <li>
    #                 <p>GameSessionQueue</p>
    #             </li>
    #             <li>
    #                 <p>MatchmakingConfiguration</p>
    #             </li>
    #             <li>
    #                 <p>MatchmakingRuleSet</p>
    #             </li>
    #          </ul>
    #         <p>To add a tag to a resource, specify the unique ARN value for the resource and provide
    #             a tag list containing one or more tags. The operation succeeds even if the list includes
    #             tags that are already assigned to the specified resource. </p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services Resources</a> in the
    #             <i>Amazon Web Services General Reference</i>
    #          </p>
    #         <p>
    #             <a href="http://aws.amazon.com/answers/account-management/aws-tagging-strategies/">
    #             Amazon Web Services Tagging Strategies</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>TagResource</a> |
    #                     <a>UntagResource</a> |
    #                     <a>ListTagsForResource</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>
    #               The Amazon Resource Name
    #               (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>)
    #               that is assigned to and uniquely identifies the GameLift resource that you want to assign
    #               tags to. GameLift resource ARNs are included in the data object for the resource, which
    #               can be retrieved by calling a List or Describe operation for the resource type. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of one or more tags to assign to the specified GameLift resource.
    #               Tags are developer-defined and structured as key-value pairs.
    #               The maximum tag limit may be lower than stated. See <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html"> Tagging Amazon Web Services Resources</a>
    #               for actual tagging limits.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceARN', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ] # required
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TaggingFailedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
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

    # <p>Removes a tag that is assigned to a GameLift resource.
    #             Resource tags are used to organize Amazon Web Services resources for a range of purposes.
    #             This operation handles the permissions necessary to manage tags for the following
    #             GameLift resource types:</p>
    #         <ul>
    #             <li>
    #                 <p>Build</p>
    #             </li>
    #             <li>
    #                 <p>Script</p>
    #             </li>
    #             <li>
    #                 <p>Fleet</p>
    #             </li>
    #             <li>
    #                 <p>Alias</p>
    #             </li>
    #             <li>
    #                 <p>GameSessionQueue</p>
    #             </li>
    #             <li>
    #                 <p>MatchmakingConfiguration</p>
    #             </li>
    #             <li>
    #                 <p>MatchmakingRuleSet</p>
    #             </li>
    #          </ul>
    #         <p>To remove a tag from a resource, specify the unique ARN value for the resource and provide
    #             a string list containing one or more tags to be removed.
    #             This operation succeeds even if the list includes tags that are not currently assigned to the
    #             specified resource.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services Resources</a> in the
    #             <i>Amazon Web Services General Reference</i>
    #          </p>
    #         <p>
    #             <a href="http://aws.amazon.com/answers/account-management/aws-tagging-strategies/">
    #             Amazon Web Services Tagging Strategies</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>TagResource</a> |
    #                     <a>UntagResource</a> |
    #                     <a>ListTagsForResource</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to and
    #               uniquely identifies the GameLift resource that you want to remove tags from. GameLift
    #               resource ARNs are included in the data object for the resource, which can be retrieved
    #               by calling a List or Describe operation for the resource type. </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of one or more tag keys to remove from the specified GameLift resource. An
    #               Amazon Web Services resource can have only one tag with a specific tag key, so specifying the tag key
    #               identifies which tag to remove. </p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceARN', # required
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
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::TaggingFailedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
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

    # <p>Updates properties for an alias. To update properties, specify the alias ID to be
    #             updated and provide the information to be changed. To reassign an alias to another
    #             fleet, provide an updated routing strategy. If successful, the updated alias record is
    #             returned.</p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateAlias</a> |
    #                     <a>ListAliases</a> |
    #                     <a>DescribeAlias</a> |
    #                     <a>UpdateAlias</a> |
    #                     <a>DeleteAlias</a> |
    #                     <a>ResolveAlias</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAliasInput}.
    #
    # @option params [String] :alias_id
    #   <p>A unique identifier for the alias that you want to update. You can use either the
    #               alias ID or ARN value.</p>
    #
    # @option params [String] :name
    #   <p>A descriptive label that is associated with an alias. Alias names do not need to be unique.</p>
    #
    # @option params [String] :description
    #   <p>A human-readable description of the alias.</p>
    #
    # @option params [RoutingStrategy] :routing_strategy
    #   <p>The routing configuration, including routing type and fleet target, for the
    #               alias.</p>
    #
    # @return [Types::UpdateAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_alias(
    #     alias_id: 'AliasId', # required
    #     name: 'Name',
    #     description: 'Description',
    #     routing_strategy: {
    #       type: 'SIMPLE', # accepts ["SIMPLE", "TERMINAL"]
    #       fleet_id: 'FleetId',
    #       message: 'Message'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAliasOutput
    #   resp.data.alias #=> Types::Alias
    #   resp.data.alias.alias_id #=> String
    #   resp.data.alias.name #=> String
    #   resp.data.alias.alias_arn #=> String
    #   resp.data.alias.description #=> String
    #   resp.data.alias.routing_strategy #=> Types::RoutingStrategy
    #   resp.data.alias.routing_strategy.type #=> String, one of ["SIMPLE", "TERMINAL"]
    #   resp.data.alias.routing_strategy.fleet_id #=> String
    #   resp.data.alias.routing_strategy.message #=> String
    #   resp.data.alias.creation_time #=> Time
    #   resp.data.alias.last_updated_time #=> Time
    #
    def update_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAliasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAlias
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAlias,
        stubs: @stubs,
        params_class: Params::UpdateAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_alias
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates metadata in a build resource, including the build name and version. To update
    #             the metadata, specify the build ID to update and provide the new values. If successful,
    #             a build object containing the updated metadata is returned.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-intro.html">
    #             Upload a Custom Server Build</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateBuild</a> |
    #                     <a>ListBuilds</a> |
    #                     <a>DescribeBuild</a> |
    #                     <a>UpdateBuild</a> |
    #                     <a>DeleteBuild</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateBuildInput}.
    #
    # @option params [String] :build_id
    #   <p>A unique identifier for the build to update. You can use either the build ID or ARN value.  </p>
    #
    # @option params [String] :name
    #   <p>A descriptive label that is associated with a build. Build names do not need to be unique. </p>
    #
    # @option params [String] :version
    #   <p>Version information that is associated with a build or script. Version strings do not need to be unique.</p>
    #
    # @return [Types::UpdateBuildOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_build(
    #     build_id: 'BuildId', # required
    #     name: 'Name',
    #     version: 'Version'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateBuildOutput
    #   resp.data.build #=> Types::Build
    #   resp.data.build.build_id #=> String
    #   resp.data.build.build_arn #=> String
    #   resp.data.build.name #=> String
    #   resp.data.build.version #=> String
    #   resp.data.build.status #=> String, one of ["INITIALIZED", "READY", "FAILED"]
    #   resp.data.build.size_on_disk #=> Integer
    #   resp.data.build.operating_system #=> String, one of ["WINDOWS_2012", "AMAZON_LINUX", "AMAZON_LINUX_2"]
    #   resp.data.build.creation_time #=> Time
    #
    def update_build(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateBuildInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateBuildInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateBuild
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateBuild
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateBuild,
        stubs: @stubs,
        params_class: Params::UpdateBuildOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_build
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a fleet's mutable attributes, including game session protection and resource
    #             creation limits.</p>
    #         <p>To update fleet attributes, specify the fleet ID and the property values that you want
    #             to change. </p>
    #         <p>If successful, an updated <code>FleetAttributes</code> object is returned.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up GameLift fleets</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateFleetLocations</a> |
    #                     <a>UpdateFleetAttributes</a> |
    #                     <a>UpdateFleetCapacity</a> |
    #                     <a>UpdateFleetPortSettings</a> |
    #                     <a>UpdateRuntimeConfiguration</a> |
    #                     <a>StopFleetActions</a> |
    #                     <a>StartFleetActions</a> |
    #                     <a>PutScalingPolicy</a> |
    #                     <a>DeleteFleet</a> |
    #                     <a>DeleteFleetLocations</a> |
    #                     <a>DeleteScalingPolicy</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFleetAttributesInput}.
    #
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to update attribute metadata for. You can use either the fleet ID or ARN
    #               value.</p>
    #
    # @option params [String] :name
    #   <p>A descriptive label that is associated with a fleet. Fleet names do not need to be unique.</p>
    #
    # @option params [String] :description
    #   <p>A human-readable description of a fleet.</p>
    #
    # @option params [String] :new_game_session_protection_policy
    #   <p>The game session protection policy to apply to all new instances created in this
    #               fleet. Instances that already exist are not affected. You can set protection for
    #               individual instances using <a>UpdateGameSession</a>.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <b>NoProtection</b> -- The game session can be
    #                       terminated during a scale-down event.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>FullProtection</b> -- If the game session is in an
    #                       <code>ACTIVE</code> status, it cannot be terminated during a scale-down
    #                       event.</p>
    #               </li>
    #            </ul>
    #
    # @option params [ResourceCreationLimitPolicy] :resource_creation_limit_policy
    #   <p>Policy settings that limit the number of game sessions an individual player can create
    #               over a span of time. </p>
    #
    # @option params [Array<String>] :metric_groups
    #   <p>The name of a metric group to add this fleet to. Use a metric group in Amazon
    #               CloudWatch to aggregate the metrics from multiple fleets. Provide an existing metric
    #               group name, or create a new metric group by providing a new name. A fleet can only be in
    #               one metric group at a time.</p>
    #
    # @return [Types::UpdateFleetAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_fleet_attributes(
    #     fleet_id: 'FleetId', # required
    #     name: 'Name',
    #     description: 'Description',
    #     new_game_session_protection_policy: 'NoProtection', # accepts ["NoProtection", "FullProtection"]
    #     resource_creation_limit_policy: {
    #       new_game_sessions_per_creator: 1,
    #       policy_period_in_minutes: 1
    #     },
    #     metric_groups: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFleetAttributesOutput
    #   resp.data.fleet_id #=> String
    #
    def update_fleet_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFleetAttributesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFleetAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFleetAttributes
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::LimitExceededException, Errors::NotFoundException, Errors::InvalidFleetStatusException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateFleetAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFleetAttributes,
        stubs: @stubs,
        params_class: Params::UpdateFleetAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_fleet_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates capacity settings for a fleet. For fleets with multiple locations, use this
    #             operation to manage capacity settings in each location individually. Fleet capacity
    #             determines the number of game sessions and players that can be hosted based on the fleet
    #             configuration. Use this operation to set the following fleet capacity properties: </p>
    #         <ul>
    #             <li>
    #                 <p>Minimum/maximum size: Set hard limits on fleet capacity. GameLift cannot set
    #                     the fleet's capacity to a value outside of this range, whether the capacity is
    #                     changed manually or through automatic scaling. </p>
    #             </li>
    #             <li>
    #                 <p>Desired capacity: Manually set the number of Amazon EC2 instances to be maintained
    #                     in a fleet location. Before changing a fleet's desired capacity, you may want to
    #                     call <a>DescribeEC2InstanceLimits</a> to get the maximum capacity of
    #                     the fleet's Amazon EC2 instance type. Alternatively, consider using automatic scaling
    #                     to adjust capacity based on player demand.</p>
    #             </li>
    #          </ul>
    #         <p>This operation can be used in the following ways: </p>
    #         <ul>
    #             <li>
    #                 <p>To update capacity for a fleet's home Region, or if the fleet has no remote
    #                     locations, omit the <code>Location</code> parameter. The fleet must be in
    #                     <code>ACTIVE</code> status. </p>
    #             </li>
    #             <li>
    #                 <p>To update capacity for a fleet's remote location, include the
    #                         <code>Location</code> parameter set to the location to be updated. The
    #                     location must be in <code>ACTIVE</code> status.</p>
    #             </li>
    #          </ul>
    #         <p>If successful, capacity settings are updated immediately. In response a change in
    #             desired capacity, GameLift initiates steps to start new instances or terminate existing
    #             instances in the requested fleet location. This continues until the location's active
    #             instance count matches the new desired instance count. You can track a fleet's current
    #             capacity by calling <a>DescribeFleetCapacity</a> or <a>DescribeFleetLocationCapacity</a>. If the requested desired instance count
    #             is higher than the instance type's limit, the <code>LimitExceeded</code> exception
    #             occurs.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-manage-capacity.html">Scaling fleet capacity</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateFleetLocations</a> |
    #                     <a>UpdateFleetAttributes</a> |
    #                     <a>UpdateFleetCapacity</a> |
    #                     <a>UpdateFleetPortSettings</a> |
    #                     <a>UpdateRuntimeConfiguration</a> |
    #                     <a>StopFleetActions</a> |
    #                     <a>StartFleetActions</a> |
    #                     <a>PutScalingPolicy</a> |
    #                     <a>DeleteFleet</a> |
    #                     <a>DeleteFleetLocations</a> |
    #                     <a>DeleteScalingPolicy</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFleetCapacityInput}.
    #
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to update capacity settings for. You can use either the fleet ID or ARN
    #               value.</p>
    #
    # @option params [Integer] :desired_instances
    #   <p>The number of Amazon EC2 instances you want to maintain in the specified fleet location.
    #               This value must fall between the minimum and maximum size limits.</p>
    #
    # @option params [Integer] :min_size
    #   <p>The minimum number of instances that are allowed in the specified fleet location. If
    #               this parameter is not set, the default is 0.</p>
    #
    # @option params [Integer] :max_size
    #   <p>The maximum number of instances that are allowed in the specified fleet location. If
    #               this parameter is not set, the default is 1.</p>
    #
    # @option params [String] :location
    #   <p>The name of a remote location to update fleet capacity settings for, in the form of an
    #               Amazon Web Services Region code such as <code>us-west-2</code>.</p>
    #
    # @return [Types::UpdateFleetCapacityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_fleet_capacity(
    #     fleet_id: 'FleetId', # required
    #     desired_instances: 1,
    #     min_size: 1,
    #     max_size: 1,
    #     location: 'Location'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFleetCapacityOutput
    #   resp.data.fleet_id #=> String
    #   resp.data.fleet_arn #=> String
    #   resp.data.location #=> String
    #
    def update_fleet_capacity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFleetCapacityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFleetCapacityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFleetCapacity
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedRegionException, Errors::ConflictException, Errors::LimitExceededException, Errors::NotFoundException, Errors::InvalidFleetStatusException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateFleetCapacity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFleetCapacity,
        stubs: @stubs,
        params_class: Params::UpdateFleetCapacityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_fleet_capacity
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates permissions that allow inbound traffic to connect to game sessions that are
    #             being hosted on instances in the fleet. </p>
    #         <p>To update settings, specify the fleet ID to be updated and specify the changes to be
    #             made. List the permissions you want to add in
    #                 <code>InboundPermissionAuthorizations</code>, and permissions you want to remove in
    #                 <code>InboundPermissionRevocations</code>. Permissions to be removed must match
    #             existing fleet permissions. </p>
    #         <p>If successful, the fleet ID for the updated fleet is returned. For fleets with remote
    #             locations, port setting updates can take time to propagate across all locations. You can
    #             check the status of updates in each location by calling
    #                 <code>DescribeFleetPortSettings</code> with a location name.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up GameLift fleets</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateFleetLocations</a> |
    #                     <a>UpdateFleetAttributes</a> |
    #                     <a>UpdateFleetCapacity</a> |
    #                     <a>UpdateFleetPortSettings</a> |
    #                     <a>UpdateRuntimeConfiguration</a> |
    #                     <a>StopFleetActions</a> |
    #                     <a>StartFleetActions</a> |
    #                     <a>PutScalingPolicy</a> |
    #                     <a>DeleteFleet</a> |
    #                     <a>DeleteFleetLocations</a> |
    #                     <a>DeleteScalingPolicy</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFleetPortSettingsInput}.
    #
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to update port settings for. You can use either the fleet ID or ARN
    #               value.</p>
    #
    # @option params [Array<IpPermission>] :inbound_permission_authorizations
    #   <p>A collection of port settings to be added to the fleet resource.</p>
    #
    # @option params [Array<IpPermission>] :inbound_permission_revocations
    #   <p>A collection of port settings to be removed from the fleet resource.</p>
    #
    # @return [Types::UpdateFleetPortSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_fleet_port_settings(
    #     fleet_id: 'FleetId', # required
    #     inbound_permission_authorizations: [
    #       {
    #         from_port: 1, # required
    #         to_port: 1, # required
    #         ip_range: 'IpRange', # required
    #         protocol: 'TCP' # required - accepts ["TCP", "UDP"]
    #       }
    #     ],
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFleetPortSettingsOutput
    #   resp.data.fleet_id #=> String
    #
    def update_fleet_port_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFleetPortSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFleetPortSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFleetPortSettings
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::LimitExceededException, Errors::NotFoundException, Errors::InvalidFleetStatusException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateFleetPortSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFleetPortSettings,
        stubs: @stubs,
        params_class: Params::UpdateFleetPortSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_fleet_port_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             <b>This operation is used with the GameLift FleetIQ solution and game server groups.</b>
    #          </p>
    #         <p>Updates information about a registered game server to help GameLift FleetIQ to track game server
    #             availability. This operation is called by a game server process that is running on an
    #             instance in a game server group. </p>
    #         <p>Use this operation to update the following types of game server information. You can
    #             make all three types of updates in the same request:</p>
    #         <ul>
    #             <li>
    #                <p>To update the game server's utilization status, identify the game server and game server group
    #                     and specify the current utilization status. Use this status to identify when
    #                     game servers are currently hosting games and when they are available to be
    #                     claimed.</p>
    #             </li>
    #             <li>
    #                <p>To report health status, identify the game server and game server group and set health check
    #                     to <code>HEALTHY</code>. If a game server does not report health status for a
    #                     certain length of time, the game server is no longer considered healthy. As a
    #                     result, it will be eventually deregistered from the game server group to avoid
    #                     affecting utilization metrics. The best practice is to report health every 60
    #                     seconds.</p>
    #             </li>
    #             <li>
    #                <p>To change game server metadata, provide updated game server data.</p>
    #             </li>
    #          </ul>
    #         <p>Once a game server is successfully updated, the relevant statuses and timestamps are updated.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html">GameLift FleetIQ Guide</a>
    #         </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>RegisterGameServer</a> |
    #                     <a>ListGameServers</a> |
    #                     <a>ClaimGameServer</a> |
    #                     <a>DescribeGameServer</a> |
    #                     <a>UpdateGameServer</a> |
    #                     <a>DeregisterGameServer</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateGameServerInput}.
    #
    # @option params [String] :game_server_group_name
    #   <p>A unique identifier for the game server group where the game server is running.
    #               Use either the <a>GameServerGroup</a> name or ARN value.</p>
    #
    # @option params [String] :game_server_id
    #   <p>A custom string that uniquely identifies the game server to update.</p>
    #
    # @option params [String] :game_server_data
    #   <p>A set of custom game server properties, formatted as a single string value. This data
    #               is passed to a game client or service when it requests information on game servers using
    #                   <a>ListGameServers</a> or <a>ClaimGameServer</a>. </p>
    #
    # @option params [String] :utilization_status
    #   <p>Indicates whether the game server is available or is currently hosting
    #               gameplay.</p>
    #
    # @option params [String] :health_check
    #   <p>Indicates health status of the game server. A request that includes this parameter
    #               updates the game server's <i>LastHealthCheckTime</i> timestamp. </p>
    #
    # @return [Types::UpdateGameServerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_game_server(
    #     game_server_group_name: 'GameServerGroupName', # required
    #     game_server_id: 'GameServerId', # required
    #     game_server_data: 'GameServerData',
    #     utilization_status: 'AVAILABLE', # accepts ["AVAILABLE", "UTILIZED"]
    #     health_check: 'HEALTHY' # accepts ["HEALTHY"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateGameServerOutput
    #   resp.data.game_server #=> Types::GameServer
    #   resp.data.game_server.game_server_group_name #=> String
    #   resp.data.game_server.game_server_group_arn #=> String
    #   resp.data.game_server.game_server_id #=> String
    #   resp.data.game_server.instance_id #=> String
    #   resp.data.game_server.connection_info #=> String
    #   resp.data.game_server.game_server_data #=> String
    #   resp.data.game_server.claim_status #=> String, one of ["CLAIMED"]
    #   resp.data.game_server.utilization_status #=> String, one of ["AVAILABLE", "UTILIZED"]
    #   resp.data.game_server.registration_time #=> Time
    #   resp.data.game_server.last_claim_time #=> Time
    #   resp.data.game_server.last_health_check_time #=> Time
    #
    def update_game_server(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGameServerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGameServerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGameServer
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateGameServer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateGameServer,
        stubs: @stubs,
        params_class: Params::UpdateGameServerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_game_server
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             <b>This operation is used with the GameLift FleetIQ solution and game server groups.</b>
    #          </p>
    #         <p>Updates GameLift FleetIQ-specific properties for a game server group. Many Auto Scaling group
    #             properties are updated on the Auto Scaling group directly, including the launch
    #             template, Auto Scaling policies, and maximum/minimum/desired instance counts.</p>
    #         <p>To update the game server group, specify the game server group ID and provide the
    #             updated values. Before applying the updates, the new values are validated to ensure that
    #             GameLift FleetIQ can continue to perform instance balancing activity. If successful, a <a>GameServerGroup</a> object is returned.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/gsg-intro.html">GameLift FleetIQ Guide</a>
    #         </p>
    #
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateGameServerGroup</a> |
    #                     <a>ListGameServerGroups</a> |
    #                     <a>DescribeGameServerGroup</a> |
    #                     <a>UpdateGameServerGroup</a> |
    #                     <a>DeleteGameServerGroup</a> |
    #                     <a>ResumeGameServerGroup</a> |
    #                     <a>SuspendGameServerGroup</a> |
    #                     <a>DescribeGameServerInstances</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/fleetiqguide/reference-awssdk-fleetiq.html">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateGameServerGroupInput}.
    #
    # @option params [String] :game_server_group_name
    #   <p>A unique identifier for the game server group. Use either the <a>GameServerGroup</a> name or ARN value.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) for an IAM role that
    #               allows Amazon GameLift to access your Amazon EC2 Auto Scaling groups.</p>
    #
    # @option params [Array<InstanceDefinition>] :instance_definitions
    #   <p>An updated list of Amazon EC2 instance types to use in the Auto Scaling group. The instance
    #               definitions must specify at least two different instance types that are supported by
    #               GameLift FleetIQ. This updated list replaces the entire current list of instance definitions for
    #               the game server group. For more information on instance types, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html">EC2 Instance
    #                   Types</a> in the <i>Amazon EC2 User Guide</i>. You can optionally
    #               specify capacity weighting for each instance type. If no weight value is specified for
    #               an instance type, it is set to the default value "1". For more information about
    #               capacity weighting, see <a href="https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-instance-weighting.html"> Instance Weighting for
    #                   Amazon EC2 Auto Scaling</a> in the Amazon EC2 Auto Scaling User Guide.</p>
    #
    # @option params [String] :game_server_protection_policy
    #   <p>A flag that indicates whether instances in the game server group are protected
    #               from early termination. Unprotected instances that have active game servers running might
    #               be terminated during a scale-down event, causing players to be dropped from the game.
    #               Protected instances cannot be terminated while there are active game servers running except
    #               in the event of a forced game server group deletion (see ). An exception to this is with Spot
    #               Instances, which can be terminated by Amazon Web Services regardless of protection status. This property is set to <code>NO_PROTECTION</code> by default.</p>
    #
    # @option params [String] :balancing_strategy
    #   <p>Indicates how GameLift FleetIQ balances the use of Spot Instances and On-Demand Instances in the
    #               game server group. Method options include the following:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>SPOT_ONLY</code> - Only Spot Instances are used in the game server group. If Spot
    #                       Instances are unavailable or not viable for game hosting, the game server group
    #                       provides no hosting capacity until Spot Instances can again be used. Until then,
    #                       no new instances are started, and the existing nonviable Spot Instances are
    #                       terminated (after current gameplay ends) and are not replaced.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SPOT_PREFERRED</code> - (default value) Spot Instances are used whenever available in
    #                       the game server group. If Spot Instances are unavailable, the game server group
    #                       continues to provide hosting capacity by falling back to On-Demand Instances.
    #                       Existing nonviable Spot Instances are terminated (after current gameplay ends)
    #                       and are replaced with new On-Demand Instances.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ON_DEMAND_ONLY</code> - Only On-Demand Instances are used in the game
    #                       server group. No Spot Instances are used, even when available, while this
    #                       balancing strategy is in force.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::UpdateGameServerGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_game_server_group(
    #     game_server_group_name: 'GameServerGroupName', # required
    #     role_arn: 'RoleArn',
    #     instance_definitions: [
    #       {
    #         instance_type: 'c4.large', # required - accepts ["c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge"]
    #         weighted_capacity: 'WeightedCapacity'
    #       }
    #     ],
    #     game_server_protection_policy: 'NO_PROTECTION', # accepts ["NO_PROTECTION", "FULL_PROTECTION"]
    #     balancing_strategy: 'SPOT_ONLY' # accepts ["SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateGameServerGroupOutput
    #   resp.data.game_server_group #=> Types::GameServerGroup
    #   resp.data.game_server_group.game_server_group_name #=> String
    #   resp.data.game_server_group.game_server_group_arn #=> String
    #   resp.data.game_server_group.role_arn #=> String
    #   resp.data.game_server_group.instance_definitions #=> Array<InstanceDefinition>
    #   resp.data.game_server_group.instance_definitions[0] #=> Types::InstanceDefinition
    #   resp.data.game_server_group.instance_definitions[0].instance_type #=> String, one of ["c4.large", "c4.xlarge", "c4.2xlarge", "c4.4xlarge", "c4.8xlarge", "c5.large", "c5.xlarge", "c5.2xlarge", "c5.4xlarge", "c5.9xlarge", "c5.12xlarge", "c5.18xlarge", "c5.24xlarge", "c5a.large", "c5a.xlarge", "c5a.2xlarge", "c5a.4xlarge", "c5a.8xlarge", "c5a.12xlarge", "c5a.16xlarge", "c5a.24xlarge", "c6g.medium", "c6g.large", "c6g.xlarge", "c6g.2xlarge", "c6g.4xlarge", "c6g.8xlarge", "c6g.12xlarge", "c6g.16xlarge", "r4.large", "r4.xlarge", "r4.2xlarge", "r4.4xlarge", "r4.8xlarge", "r4.16xlarge", "r5.large", "r5.xlarge", "r5.2xlarge", "r5.4xlarge", "r5.8xlarge", "r5.12xlarge", "r5.16xlarge", "r5.24xlarge", "r5a.large", "r5a.xlarge", "r5a.2xlarge", "r5a.4xlarge", "r5a.8xlarge", "r5a.12xlarge", "r5a.16xlarge", "r5a.24xlarge", "r6g.medium", "r6g.large", "r6g.xlarge", "r6g.2xlarge", "r6g.4xlarge", "r6g.8xlarge", "r6g.12xlarge", "r6g.16xlarge", "m4.large", "m4.xlarge", "m4.2xlarge", "m4.4xlarge", "m4.10xlarge", "m5.large", "m5.xlarge", "m5.2xlarge", "m5.4xlarge", "m5.8xlarge", "m5.12xlarge", "m5.16xlarge", "m5.24xlarge", "m5a.large", "m5a.xlarge", "m5a.2xlarge", "m5a.4xlarge", "m5a.8xlarge", "m5a.12xlarge", "m5a.16xlarge", "m5a.24xlarge", "m6g.medium", "m6g.large", "m6g.xlarge", "m6g.2xlarge", "m6g.4xlarge", "m6g.8xlarge", "m6g.12xlarge", "m6g.16xlarge"]
    #   resp.data.game_server_group.instance_definitions[0].weighted_capacity #=> String
    #   resp.data.game_server_group.balancing_strategy #=> String, one of ["SPOT_ONLY", "SPOT_PREFERRED", "ON_DEMAND_ONLY"]
    #   resp.data.game_server_group.game_server_protection_policy #=> String, one of ["NO_PROTECTION", "FULL_PROTECTION"]
    #   resp.data.game_server_group.auto_scaling_group_arn #=> String
    #   resp.data.game_server_group.status #=> String, one of ["NEW", "ACTIVATING", "ACTIVE", "DELETE_SCHEDULED", "DELETING", "DELETED", "ERROR"]
    #   resp.data.game_server_group.status_reason #=> String
    #   resp.data.game_server_group.suspended_actions #=> Array<String>
    #   resp.data.game_server_group.suspended_actions[0] #=> String, one of ["REPLACE_INSTANCE_TYPES"]
    #   resp.data.game_server_group.creation_time #=> Time
    #   resp.data.game_server_group.last_updated_time #=> Time
    #
    def update_game_server_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGameServerGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGameServerGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGameServerGroup
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateGameServerGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateGameServerGroup,
        stubs: @stubs,
        params_class: Params::UpdateGameServerGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_game_server_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the mutable properties of a game session. </p>
    #         <p>To update a game session, specify the game session ID and the values you want to
    #             change. </p>
    #         <p>If successful, the updated <code>GameSession</code> object is returned. </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateGameSession</a> |
    #                     <a>DescribeGameSessions</a> |
    #                     <a>DescribeGameSessionDetails</a> |
    #                     <a>SearchGameSessions</a> |
    #                     <a>UpdateGameSession</a> |
    #                     <a>GetGameSessionLogUrl</a> |
    #                     <a>StartGameSessionPlacement</a> |
    #                     <a>DescribeGameSessionPlacement</a> |
    #                     <a>StopGameSessionPlacement</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateGameSessionInput}.
    #
    # @option params [String] :game_session_id
    #   <p>A unique identifier for the game session to update. </p>
    #
    # @option params [Integer] :maximum_player_session_count
    #   <p>The maximum number of players that can be connected simultaneously to the game session.</p>
    #
    # @option params [String] :name
    #   <p>A descriptive label that is associated with a game session. Session names do not need to be unique.</p>
    #
    # @option params [String] :player_session_creation_policy
    #   <p>A policy that determines whether the game session is accepting new players.</p>
    #
    # @option params [String] :protection_policy
    #   <p>Game session protection policy to apply to this game session only.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <b>NoProtection</b> -- The game session can be
    #                       terminated during a scale-down event.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>FullProtection</b> -- If the game session is in an
    #                       <code>ACTIVE</code> status, it cannot be terminated during a scale-down
    #                       event.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::UpdateGameSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_game_session(
    #     game_session_id: 'GameSessionId', # required
    #     maximum_player_session_count: 1,
    #     name: 'Name',
    #     player_session_creation_policy: 'ACCEPT_ALL', # accepts ["ACCEPT_ALL", "DENY_ALL"]
    #     protection_policy: 'NoProtection' # accepts ["NoProtection", "FullProtection"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateGameSessionOutput
    #   resp.data.game_session #=> Types::GameSession
    #   resp.data.game_session.game_session_id #=> String
    #   resp.data.game_session.name #=> String
    #   resp.data.game_session.fleet_id #=> String
    #   resp.data.game_session.fleet_arn #=> String
    #   resp.data.game_session.creation_time #=> Time
    #   resp.data.game_session.termination_time #=> Time
    #   resp.data.game_session.current_player_session_count #=> Integer
    #   resp.data.game_session.maximum_player_session_count #=> Integer
    #   resp.data.game_session.status #=> String, one of ["ACTIVE", "ACTIVATING", "TERMINATED", "TERMINATING", "ERROR"]
    #   resp.data.game_session.status_reason #=> String, one of ["INTERRUPTED"]
    #   resp.data.game_session.game_properties #=> Array<GameProperty>
    #   resp.data.game_session.game_properties[0] #=> Types::GameProperty
    #   resp.data.game_session.game_properties[0].key #=> String
    #   resp.data.game_session.game_properties[0].value #=> String
    #   resp.data.game_session.ip_address #=> String
    #   resp.data.game_session.dns_name #=> String
    #   resp.data.game_session.port #=> Integer
    #   resp.data.game_session.player_session_creation_policy #=> String, one of ["ACCEPT_ALL", "DENY_ALL"]
    #   resp.data.game_session.creator_id #=> String
    #   resp.data.game_session.game_session_data #=> String
    #   resp.data.game_session.matchmaker_data #=> String
    #   resp.data.game_session.location #=> String
    #
    def update_game_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGameSessionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGameSessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGameSession
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::NotFoundException, Errors::InvalidGameSessionStatusException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateGameSession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateGameSession,
        stubs: @stubs,
        params_class: Params::UpdateGameSessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_game_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the configuration of a game session queue, which determines how the queue
    #             processes new game session requests. To update settings, specify the queue name to be
    #             updated and provide the new settings. When updating destinations, provide a complete
    #             list of destinations. </p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/queues-intro.html">
    #             Using Multi-Region Queues</a>
    #         </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_CreateGameSessionQueue.html">CreateGameSessionQueue</a>
    #                     |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeGameSessionQueues.html">DescribeGameSessionQueues</a>
    #                     |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_UpdateGameSessionQueue.html">UpdateGameSessionQueue</a>
    #                     |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/apireference/API_DeleteGameSessionQueue.html">DeleteGameSessionQueue</a>
    #                     |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateGameSessionQueueInput}.
    #
    # @option params [String] :name
    #   <p>A descriptive label that is associated with game session queue. Queue names must be unique within each Region. You can use either the queue ID or ARN value. </p>
    #
    # @option params [Integer] :timeout_in_seconds
    #   <p>The maximum time, in seconds, that a new game session placement request remains in the queue. When a request exceeds this time, the game session placement changes to a <code>TIMED_OUT</code> status.</p>
    #
    # @option params [Array<PlayerLatencyPolicy>] :player_latency_policies
    #   <p>A set of policies that act as a sliding cap on player latency. FleetIQ works to
    #               deliver low latency for most players in a game session. These policies ensure that no
    #               individual player can be placed into a game with unreasonably high latency. Use multiple
    #               policies to gradually relax latency requirements a step at a time. Multiple policies are applied based on their
    #               maximum allowed latency, starting with the lowest value. When updating policies, provide a complete collection of
    #               policies.</p>
    #
    # @option params [Array<GameSessionQueueDestination>] :destinations
    #   <p>A list of fleets and/or fleet aliases that can be used to fulfill game session placement requests in the queue.
    #       Destinations are identified by either a fleet ARN or a fleet alias ARN, and are listed in order of placement preference. When updating this list, provide a complete list of destinations.</p>
    #
    # @option params [FilterConfiguration] :filter_configuration
    #   <p>A list of locations where a queue is allowed to place new game sessions. Locations
    #               are specified in the form of Amazon Web Services Region codes, such as <code>us-west-2</code>. If this parameter is
    #               not set, game sessions can be placed in any queue location. To remove an existing filter configuration, pass in an empty set.</p>
    #
    # @option params [PriorityConfiguration] :priority_configuration
    #   <p>Custom settings to use when prioritizing destinations and locations for game session placements. This
    #               configuration replaces the FleetIQ default prioritization process. Priority types that are not explicitly
    #               named will be automatically applied at the end of the prioritization process. To remove an existing priority configuration, pass in an empty set.</p>
    #
    # @option params [String] :custom_event_data
    #   <p>
    #               Information to be added to all events that are related to this game session queue.
    #           </p>
    #
    # @option params [String] :notification_target
    #   <p>An SNS topic ARN that is set up to receive game session placement notifications. See <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/queue-notification.html">
    #               Setting up notifications for game session placement</a>.</p>
    #
    # @return [Types::UpdateGameSessionQueueOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_game_session_queue(
    #     name: 'Name', # required
    #     timeout_in_seconds: 1,
    #     player_latency_policies: [
    #       {
    #         maximum_individual_player_latency_milliseconds: 1,
    #         policy_duration_seconds: 1
    #       }
    #     ],
    #     destinations: [
    #       {
    #         destination_arn: 'DestinationArn'
    #       }
    #     ],
    #     filter_configuration: {
    #       allowed_locations: [
    #         'member'
    #       ]
    #     },
    #     priority_configuration: {
    #       priority_order: [
    #         'LATENCY' # accepts ["LATENCY", "COST", "DESTINATION", "LOCATION"]
    #       ],
    #     },
    #     custom_event_data: 'CustomEventData',
    #     notification_target: 'NotificationTarget'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateGameSessionQueueOutput
    #   resp.data.game_session_queue #=> Types::GameSessionQueue
    #   resp.data.game_session_queue.name #=> String
    #   resp.data.game_session_queue.game_session_queue_arn #=> String
    #   resp.data.game_session_queue.timeout_in_seconds #=> Integer
    #   resp.data.game_session_queue.player_latency_policies #=> Array<PlayerLatencyPolicy>
    #   resp.data.game_session_queue.player_latency_policies[0] #=> Types::PlayerLatencyPolicy
    #   resp.data.game_session_queue.player_latency_policies[0].maximum_individual_player_latency_milliseconds #=> Integer
    #   resp.data.game_session_queue.player_latency_policies[0].policy_duration_seconds #=> Integer
    #   resp.data.game_session_queue.destinations #=> Array<GameSessionQueueDestination>
    #   resp.data.game_session_queue.destinations[0] #=> Types::GameSessionQueueDestination
    #   resp.data.game_session_queue.destinations[0].destination_arn #=> String
    #   resp.data.game_session_queue.filter_configuration #=> Types::FilterConfiguration
    #   resp.data.game_session_queue.filter_configuration.allowed_locations #=> Array<String>
    #   resp.data.game_session_queue.filter_configuration.allowed_locations[0] #=> String
    #   resp.data.game_session_queue.priority_configuration #=> Types::PriorityConfiguration
    #   resp.data.game_session_queue.priority_configuration.priority_order #=> Array<String>
    #   resp.data.game_session_queue.priority_configuration.priority_order[0] #=> String, one of ["LATENCY", "COST", "DESTINATION", "LOCATION"]
    #   resp.data.game_session_queue.priority_configuration.location_order #=> Array<String>
    #   resp.data.game_session_queue.custom_event_data #=> String
    #   resp.data.game_session_queue.notification_target #=> String
    #
    def update_game_session_queue(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGameSessionQueueInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGameSessionQueueInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGameSessionQueue
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateGameSessionQueue
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateGameSessionQueue,
        stubs: @stubs,
        params_class: Params::UpdateGameSessionQueueOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_game_session_queue
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates settings for a FlexMatch matchmaking configuration. These changes affect all matches and game sessions
    #             that are created after the update. To update settings,
    #             specify the configuration name to be updated and provide the new settings. </p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-configuration.html">
    #             Design a FlexMatch matchmaker</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateMatchmakingConfiguration</a> |
    #                     <a>DescribeMatchmakingConfigurations</a> |
    #                     <a>UpdateMatchmakingConfiguration</a> |
    #                     <a>DeleteMatchmakingConfiguration</a> |
    #                     <a>CreateMatchmakingRuleSet</a> |
    #                     <a>DescribeMatchmakingRuleSets</a> |
    #                     <a>ValidateMatchmakingRuleSet</a> |
    #                     <a>DeleteMatchmakingRuleSet</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateMatchmakingConfigurationInput}.
    #
    # @option params [String] :name
    #   <p>A unique identifier for the matchmaking configuration to update. You can use either the configuration name or ARN value. </p>
    #
    # @option params [String] :description
    #   <p>A descriptive label that is associated with matchmaking configuration.</p>
    #
    # @option params [Array<String>] :game_session_queue_arns
    #   <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a GameLift game session queue resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::gamesessionqueue/<queue name></code>. Queues can be located in any Region. Queues are used to start new
    #               GameLift-hosted game sessions for matches that are created with this matchmaking
    #               configuration. If <code>FlexMatchMode</code> is set to <code>STANDALONE</code>, do not
    #               set this parameter.</p>
    #
    # @option params [Integer] :request_timeout_seconds
    #   <p>The maximum duration, in seconds, that a matchmaking ticket can remain in process
    #               before timing out. Requests that fail due to timing out can be resubmitted as
    #               needed.</p>
    #
    # @option params [Integer] :acceptance_timeout_seconds
    #   <p>The length of time (in seconds) to wait for players to accept a proposed match, if
    #               acceptance is required.</p>
    #
    # @option params [Boolean] :acceptance_required
    #   <p>A flag that indicates whether a match that was created with this configuration must be
    #               accepted by the matched players. To require acceptance, set to TRUE. With this option
    #               enabled, matchmaking tickets use the status <code>REQUIRES_ACCEPTANCE</code> to indicate
    #               when a completed potential match is waiting for player acceptance. </p>
    #
    # @option params [String] :rule_set_name
    #   <p>A unique identifier for the matchmaking rule set to use with this configuration. You can use either the rule set name or ARN
    #               value. A matchmaking configuration can only use rule sets that are defined in the same
    #               Region.</p>
    #
    # @option params [String] :notification_target
    #   <p>An SNS topic ARN that is set up to receive matchmaking notifications. See <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-notification.html">
    #                   Setting up notifications for matchmaking</a> for more information.</p>
    #
    # @option params [Integer] :additional_player_count
    #   <p>The number of player slots in a match to keep open for future players. For example, if the configuration's rule set specifies
    #               a match for a single 12-person team, and the additional player count is set to 2, only 10 players are selected for the match. This parameter is not used if <code>FlexMatchMode</code> is set to
    #               <code>STANDALONE</code>.</p>
    #
    # @option params [String] :custom_event_data
    #   <p>Information to add to all events related to the matchmaking configuration. </p>
    #
    # @option params [Array<GameProperty>] :game_properties
    #   <p>A set of custom properties for a game session, formatted as key:value pairs. These properties are passed to a game server process in the
    #       <a>GameSession</a> object with a request to start a new game session (see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession">Start a Game Session</a>). This information is added to the new <a>GameSession</a>
    #               object that is created for a successful match.  This parameter is not used if
    #               <code>FlexMatchMode</code> is set to <code>STANDALONE</code>.</p>
    #
    # @option params [String] :game_session_data
    #   <p>A set of custom game session properties, formatted as a single string value. This data is passed to a game server process in the
    #       <a>GameSession</a> object with a request to start a new game session (see <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession">Start a Game Session</a>). This information is added to the new <a>GameSession</a> object
    #               that is created for a successful match.  This parameter is not used if
    #               <code>FlexMatchMode</code> is set to <code>STANDALONE</code>.</p>
    #
    # @option params [String] :backfill_mode
    #   <p>The method that is used to backfill game sessions created with this matchmaking
    #               configuration. Specify MANUAL when your game manages backfill requests manually or does
    #               not use the match backfill feature. Specify AUTOMATIC to have GameLift create a <a>StartMatchBackfill</a> request whenever a game session has one or more open
    #               slots. Learn more about manual and automatic backfill in <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-backfill.html">Backfill Existing Games
    #                   with FlexMatch</a>. Automatic backfill is not available when
    #               <code>FlexMatchMode</code> is set to <code>STANDALONE</code>.</p>
    #
    # @option params [String] :flex_match_mode
    #   <p>Indicates whether this matchmaking configuration is being used with GameLift hosting or
    #               as a standalone matchmaking solution. </p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <b>STANDALONE</b> - FlexMatch forms matches and returns
    #                   match information, including players and team assignments, in a
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-events.html#match-events-matchmakingsucceeded">
    #                       MatchmakingSucceeded</a> event.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>WITH_QUEUE</b> - FlexMatch forms matches and uses the specified GameLift queue to
    #                   start a game session for the match. </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::UpdateMatchmakingConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_matchmaking_configuration(
    #     name: 'Name', # required
    #     description: 'Description',
    #     game_session_queue_arns: [
    #       'member'
    #     ],
    #     request_timeout_seconds: 1,
    #     acceptance_timeout_seconds: 1,
    #     acceptance_required: false,
    #     rule_set_name: 'RuleSetName',
    #     notification_target: 'NotificationTarget',
    #     additional_player_count: 1,
    #     custom_event_data: 'CustomEventData',
    #     game_properties: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     game_session_data: 'GameSessionData',
    #     backfill_mode: 'AUTOMATIC', # accepts ["AUTOMATIC", "MANUAL"]
    #     flex_match_mode: 'STANDALONE' # accepts ["STANDALONE", "WITH_QUEUE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateMatchmakingConfigurationOutput
    #   resp.data.configuration #=> Types::MatchmakingConfiguration
    #   resp.data.configuration.name #=> String
    #   resp.data.configuration.configuration_arn #=> String
    #   resp.data.configuration.description #=> String
    #   resp.data.configuration.game_session_queue_arns #=> Array<String>
    #   resp.data.configuration.game_session_queue_arns[0] #=> String
    #   resp.data.configuration.request_timeout_seconds #=> Integer
    #   resp.data.configuration.acceptance_timeout_seconds #=> Integer
    #   resp.data.configuration.acceptance_required #=> Boolean
    #   resp.data.configuration.rule_set_name #=> String
    #   resp.data.configuration.rule_set_arn #=> String
    #   resp.data.configuration.notification_target #=> String
    #   resp.data.configuration.additional_player_count #=> Integer
    #   resp.data.configuration.custom_event_data #=> String
    #   resp.data.configuration.creation_time #=> Time
    #   resp.data.configuration.game_properties #=> Array<GameProperty>
    #   resp.data.configuration.game_properties[0] #=> Types::GameProperty
    #   resp.data.configuration.game_properties[0].key #=> String
    #   resp.data.configuration.game_properties[0].value #=> String
    #   resp.data.configuration.game_session_data #=> String
    #   resp.data.configuration.backfill_mode #=> String, one of ["AUTOMATIC", "MANUAL"]
    #   resp.data.configuration.flex_match_mode #=> String, one of ["STANDALONE", "WITH_QUEUE"]
    #
    def update_matchmaking_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateMatchmakingConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateMatchmakingConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateMatchmakingConfiguration
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedRegionException, Errors::NotFoundException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateMatchmakingConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateMatchmakingConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateMatchmakingConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_matchmaking_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the current runtime configuration for the specified fleet, which tells GameLift
    #             how to launch server processes on all instances in the fleet. You can update a fleet's
    #             runtime configuration at any time after the fleet is created; it does not need to be in
    #                 <code>ACTIVE</code> status.</p>
    #         <p>To update runtime configuration, specify the fleet ID and provide a
    #                 <code>RuntimeConfiguration</code> with an updated set of server process
    #             configurations.</p>
    #         <p>If successful, the fleet's runtime configuration settings are updated. Each instance
    #             in the fleet regularly checks for and retrieves updated runtime configurations.
    #             Instances immediately begin complying with the new configuration by launching new server
    #             processes or not replacing existing processes when they shut down. Updating a fleet's
    #             runtime configuration never affects existing server processes.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html">Setting up GameLift fleets</a>
    #          </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateFleetLocations</a> |
    #                     <a>UpdateFleetAttributes</a> |
    #                     <a>UpdateFleetCapacity</a> |
    #                     <a>UpdateFleetPortSettings</a> |
    #                     <a>UpdateRuntimeConfiguration</a> |
    #                     <a>StopFleetActions</a> |
    #                     <a>StartFleetActions</a> |
    #                     <a>PutScalingPolicy</a> |
    #                     <a>DeleteFleet</a> |
    #                     <a>DeleteFleetLocations</a> |
    #                     <a>DeleteScalingPolicy</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRuntimeConfigurationInput}.
    #
    # @option params [String] :fleet_id
    #   <p>A unique identifier for the fleet to update runtime configuration for. You can use either the fleet ID or ARN
    #               value.</p>
    #
    # @option params [RuntimeConfiguration] :runtime_configuration
    #   <p>Instructions for launching server processes on each instance in the fleet. Server
    #               processes run either a custom game build executable or a Realtime Servers script. The runtime
    #               configuration lists the types of server processes to run on an instance, how to launch
    #               them, and the number of processes to run concurrently.</p>
    #
    # @return [Types::UpdateRuntimeConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_runtime_configuration(
    #     fleet_id: 'FleetId', # required
    #     runtime_configuration: {
    #       server_processes: [
    #         {
    #           launch_path: 'LaunchPath', # required
    #           parameters: 'Parameters',
    #           concurrent_executions: 1 # required
    #         }
    #       ],
    #       max_concurrent_game_session_activations: 1,
    #       game_session_activation_timeout_seconds: 1
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRuntimeConfigurationOutput
    #   resp.data.runtime_configuration #=> Types::RuntimeConfiguration
    #   resp.data.runtime_configuration.server_processes #=> Array<ServerProcess>
    #   resp.data.runtime_configuration.server_processes[0] #=> Types::ServerProcess
    #   resp.data.runtime_configuration.server_processes[0].launch_path #=> String
    #   resp.data.runtime_configuration.server_processes[0].parameters #=> String
    #   resp.data.runtime_configuration.server_processes[0].concurrent_executions #=> Integer
    #   resp.data.runtime_configuration.max_concurrent_game_session_activations #=> Integer
    #   resp.data.runtime_configuration.game_session_activation_timeout_seconds #=> Integer
    #
    def update_runtime_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRuntimeConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRuntimeConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRuntimeConfiguration
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::InvalidFleetStatusException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateRuntimeConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRuntimeConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateRuntimeConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_runtime_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates Realtime script metadata and content.</p>
    #         <p>To update script metadata, specify the script ID and provide updated name and/or
    #             version values. </p>
    #         <p>To update script content, provide an updated zip file by pointing to either a local
    #             file or an Amazon S3 bucket location. You can use either method regardless of how the
    #             original script was uploaded. Use the <i>Version</i> parameter to track
    #             updates to the script.</p>
    #         <p>If the call is successful, the updated metadata is stored in the script record and a
    #             revised script is uploaded to the Amazon GameLift service. Once the script is updated and
    #             acquired by a fleet instance, the new version is used for all new game sessions. </p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <p>
    #             <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/realtime-intro.html">Amazon GameLift Realtime Servers</a>
    #         </p>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateScript</a> |
    #                     <a>ListScripts</a> |
    #                     <a>DescribeScript</a> |
    #                     <a>UpdateScript</a> |
    #                     <a>DeleteScript</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateScriptInput}.
    #
    # @option params [String] :script_id
    #   <p>A unique identifier for the Realtime script to update. You can use either the script ID or ARN value.</p>
    #
    # @option params [String] :name
    #   <p>A descriptive label that is associated with a script. Script names do not need to be unique.</p>
    #
    # @option params [String] :version
    #   <p>Version information that is associated with a build or script. Version strings do not need to be unique.</p>
    #
    # @option params [S3Location] :storage_location
    #   <p>The location of the Amazon S3 bucket where a zipped file containing your Realtime scripts is
    #               stored. The storage location must specify the Amazon S3 bucket name, the zip file name (the
    #               "key"), and a role ARN that allows Amazon GameLift to access the Amazon S3 storage location. The S3
    #               bucket must be in the same Region where you want to create a new script. By default,
    #               Amazon GameLift uploads the latest version of the zip file; if you have S3 object versioning
    #               turned on, you can use the <code>ObjectVersion</code> parameter to specify an earlier
    #               version. </p>
    #
    # @option params [String] :zip_file
    #   <p>A data object containing your Realtime scripts and dependencies as a zip file. The zip
    #               file can have one or multiple files. Maximum size of a zip file is 5 MB.</p>
    #           <p>When using the Amazon Web Services CLI tool to create a script, this parameter is set to the zip file
    #               name. It must be prepended with the string "fileb://" to indicate that the file data is
    #               a binary object. For example: <code>--zip-file
    #               fileb://myRealtimeScript.zip</code>.</p>
    #
    # @return [Types::UpdateScriptOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_script(
    #     script_id: 'ScriptId', # required
    #     name: 'Name',
    #     version: 'Version',
    #     storage_location: {
    #       bucket: 'Bucket',
    #       key: 'Key',
    #       role_arn: 'RoleArn',
    #       object_version: 'ObjectVersion'
    #     },
    #     zip_file: 'ZipFile'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateScriptOutput
    #   resp.data.script #=> Types::Script
    #   resp.data.script.script_id #=> String
    #   resp.data.script.script_arn #=> String
    #   resp.data.script.name #=> String
    #   resp.data.script.version #=> String
    #   resp.data.script.size_on_disk #=> Integer
    #   resp.data.script.creation_time #=> Time
    #   resp.data.script.storage_location #=> Types::S3Location
    #   resp.data.script.storage_location.bucket #=> String
    #   resp.data.script.storage_location.key #=> String
    #   resp.data.script.storage_location.role_arn #=> String
    #   resp.data.script.storage_location.object_version #=> String
    #
    def update_script(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateScriptInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateScriptInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateScript
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotFoundException, Errors::UnauthorizedException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateScript
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateScript,
        stubs: @stubs,
        params_class: Params::UpdateScriptOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_script
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Validates the syntax of a matchmaking rule or rule set. This operation checks that
    #             the rule set is using syntactically correct JSON and that it conforms to allowed
    #             property expressions. To validate syntax, provide a rule set JSON string.</p>
    #         <p>
    #             <b>Learn more</b>
    #          </p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <a href="https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-rulesets.html">Build a rule
    #                         set</a>
    #                </p>
    #             </li>
    #          </ul>
    #         <p>
    #             <b>Related actions</b>
    #          </p>
    #                     <p>
    #             <a>CreateMatchmakingConfiguration</a> |
    #                     <a>DescribeMatchmakingConfigurations</a> |
    #                     <a>UpdateMatchmakingConfiguration</a> |
    #                     <a>DeleteMatchmakingConfiguration</a> |
    #                     <a>CreateMatchmakingRuleSet</a> |
    #                     <a>DescribeMatchmakingRuleSets</a> |
    #                     <a>ValidateMatchmakingRuleSet</a> |
    #                     <a>DeleteMatchmakingRuleSet</a> |
    #                     <a href="https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets">All APIs by task</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::ValidateMatchmakingRuleSetInput}.
    #
    # @option params [String] :rule_set_body
    #   <p>A collection of matchmaking rules to validate, formatted as a JSON string.</p>
    #
    # @return [Types::ValidateMatchmakingRuleSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.validate_matchmaking_rule_set(
    #     rule_set_body: 'RuleSetBody' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ValidateMatchmakingRuleSetOutput
    #   resp.data.valid #=> Boolean
    #
    def validate_matchmaking_rule_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ValidateMatchmakingRuleSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ValidateMatchmakingRuleSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ValidateMatchmakingRuleSet
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedRegionException, Errors::InternalServiceException, Errors::InvalidRequestException]),
        data_parser: Parsers::ValidateMatchmakingRuleSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ValidateMatchmakingRuleSet,
        stubs: @stubs,
        params_class: Params::ValidateMatchmakingRuleSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :validate_matchmaking_rule_set
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
