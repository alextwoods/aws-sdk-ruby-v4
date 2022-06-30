# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::CodeStarConnections
  # An API client for CodeStar_connections_20191201
  # See {#initialize} for a full list of supported configuration options
  # <fullname>AWS CodeStar Connections</fullname>
  #          <p>This AWS CodeStar Connections API Reference provides descriptions and usage examples of
  #       the operations and data types for the AWS CodeStar Connections API. You can use the
  #       connections API to work with connections and installations.</p>
  #          <p>
  #             <i>Connections</i> are configurations that you use to connect AWS
  #       resources to external code repositories. Each connection is a resource that can be given to
  #       services such as CodePipeline to connect to a third-party repository such as Bitbucket. For
  #       example, you can add the connection in CodePipeline so that it triggers your pipeline when a
  #       code change is made to your third-party code repository. Each connection is named and
  #       associated with a unique ARN that is used to reference the connection.</p>
  #          <p>When you create a connection, the console initiates a third-party connection handshake.
  #         <i>Installations</i> are the apps that are used to conduct this handshake. For
  #       example, the installation for the Bitbucket provider type is the Bitbucket app. When you
  #       create a connection, you can choose an existing installation or create one.</p>
  #          <p>When you want to create a connection to an installed provider type such as GitHub
  #       Enterprise Server, you create a <i>host</i> for your connections.</p>
  #          <p>You can work with connections by calling:</p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <a>CreateConnection</a>, which creates a uniquely named connection that can be
  #           referenced by services such as CodePipeline.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>DeleteConnection</a>, which deletes the specified connection.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>GetConnection</a>, which returns information about the connection, including
  #           the connection status.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>ListConnections</a>, which lists the connections associated with your
  #           account.</p>
  #             </li>
  #          </ul>
  #          <p>You can work with hosts by calling:</p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <a>CreateHost</a>, which creates a host that represents the infrastructure where your provider is installed.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>DeleteHost</a>, which deletes the specified host.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>GetHost</a>, which returns information about the host, including
  #           the setup status.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>ListHosts</a>, which lists the hosts associated with your
  #           account.</p>
  #             </li>
  #          </ul>
  #          <p>You can work with tags in AWS CodeStar Connections by calling the following:</p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <a>ListTagsForResource</a>, which gets information about AWS tags for a
  #           specified Amazon Resource Name (ARN) in AWS CodeStar Connections.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>TagResource</a>, which adds or updates tags for a resource in AWS CodeStar
  #           Connections.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>UntagResource</a>, which removes tags for a resource in AWS CodeStar
  #           Connections.</p>
  #             </li>
  #          </ul>
  #          <p>For information about how to use AWS CodeStar Connections, see the <a href="https://docs.aws.amazon.com/dtconsole/latest/userguide/welcome-connections.html">Developer Tools User
  #         Guide</a>.</p>
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
    def initialize(config = AWS::SDK::CodeStarConnections::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a connection that can then be given to other AWS services like CodePipeline so
    #       that it can access third-party code repositories. The connection is in pending status until
    #       the third-party connection handshake is completed from the console.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateConnectionInput}.
    #
    # @option params [String] :provider_type
    #   <p>The name of the external provider where your third-party code repository is
    #         configured.</p>
    #
    # @option params [String] :connection_name
    #   <p>The name of the connection to be created. The name must be unique in the calling AWS
    #         account.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The key-value pair to use when tagging the resource.</p>
    #
    # @option params [String] :host_arn
    #   <p>The Amazon Resource Name (ARN) of the host associated with the connection to be created.</p>
    #
    # @return [Types::CreateConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connection(
    #     provider_type: 'Bitbucket', # accepts ["Bitbucket", "GitHub", "GitHubEnterpriseServer"]
    #     connection_name: 'ConnectionName', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     host_arn: 'HostArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateConnectionOutput
    #   resp.data.connection_arn #=> String
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def create_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateConnectionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateConnection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::ResourceUnavailableException]),
        data_parser: Parsers::CreateConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateConnection,
        stubs: @stubs,
        params_class: Params::CreateConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a resource that represents the infrastructure where a third-party provider is
    #       installed. The host is used when you create connections to an installed third-party provider
    #       type, such as GitHub Enterprise Server. You create one host for all connections to that
    #       provider.</p>
    #          <note>
    #             <p>A host created through the CLI or the SDK is in `PENDING` status by
    #         default. You can make its status `AVAILABLE` by setting up the host in the console.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateHostInput}.
    #
    # @option params [String] :name
    #   <p>The name of the host to be created. The name must be unique in the calling AWS
    #         account.</p>
    #
    # @option params [String] :provider_type
    #   <p>The name of the installed provider to be associated with your connection. The host
    #         resource represents the infrastructure where your provider type is installed. The valid
    #         provider type is GitHub Enterprise Server.</p>
    #
    # @option params [String] :provider_endpoint
    #   <p>The endpoint of the infrastructure to be represented by the host after it is
    #         created.</p>
    #
    # @option params [VpcConfiguration] :vpc_configuration
    #   <p>The VPC configuration to be provisioned for the host. A VPC must be configured and the
    #         infrastructure to be represented by the host must already be connected to the VPC.</p>
    #
    # @return [Types::CreateHostOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_host(
    #     name: 'Name', # required
    #     provider_type: 'Bitbucket', # required - accepts ["Bitbucket", "GitHub", "GitHubEnterpriseServer"]
    #     provider_endpoint: 'ProviderEndpoint', # required
    #     vpc_configuration: {
    #       vpc_id: 'VpcId', # required
    #       subnet_ids: [
    #         'member'
    #       ], # required
    #       security_group_ids: [
    #         'member'
    #       ], # required
    #       tls_certificate: 'TlsCertificate'
    #     },
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
    #   resp.data #=> Types::CreateHostOutput
    #   resp.data.host_arn #=> String
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def create_host(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateHostInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateHostInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateHost
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException]),
        data_parser: Parsers::CreateHost
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateHost,
        stubs: @stubs,
        params_class: Params::CreateHostOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_host
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The connection to be deleted.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteConnectionInput}.
    #
    # @option params [String] :connection_arn
    #   <p>The Amazon Resource Name (ARN) of the connection to be deleted.</p>
    #            <note>
    #               <p>The ARN is never reused if the connection is deleted.</p>
    #            </note>
    #
    # @return [Types::DeleteConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connection(
    #     connection_arn: 'ConnectionArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteConnectionOutput
    #
    def delete_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteConnectionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteConnection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteConnection,
        stubs: @stubs,
        params_class: Params::DeleteConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The host to be deleted. Before you delete a host, all connections associated to the host must be deleted.</p>
    #          <note>
    #             <p>A host cannot be deleted if it is in the VPC_CONFIG_INITIALIZING or VPC_CONFIG_DELETING state.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteHostInput}.
    #
    # @option params [String] :host_arn
    #   <p>The Amazon Resource Name (ARN) of the host to be deleted.</p>
    #
    # @return [Types::DeleteHostOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_host(
    #     host_arn: 'HostArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteHostOutput
    #
    def delete_host(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteHostInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteHostInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteHost
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ResourceUnavailableException]),
        data_parser: Parsers::DeleteHost
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteHost,
        stubs: @stubs,
        params_class: Params::DeleteHostOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_host
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the connection ARN and details such as status, owner, and provider type.</p>
    #
    # @param [Hash] params
    #   See {Types::GetConnectionInput}.
    #
    # @option params [String] :connection_arn
    #   <p>The Amazon Resource Name (ARN) of a connection.</p>
    #
    # @return [Types::GetConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connection(
    #     connection_arn: 'ConnectionArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetConnectionOutput
    #   resp.data.connection #=> Types::Connection
    #   resp.data.connection.connection_name #=> String
    #   resp.data.connection.connection_arn #=> String
    #   resp.data.connection.provider_type #=> String, one of ["Bitbucket", "GitHub", "GitHubEnterpriseServer"]
    #   resp.data.connection.owner_account_id #=> String
    #   resp.data.connection.connection_status #=> String, one of ["PENDING", "AVAILABLE", "ERROR"]
    #   resp.data.connection.host_arn #=> String
    #
    def get_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetConnectionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetConnection
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ResourceUnavailableException]),
        data_parser: Parsers::GetConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetConnection,
        stubs: @stubs,
        params_class: Params::GetConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the host ARN and details such as status, provider type, endpoint, and, if
    #       applicable, the VPC configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::GetHostInput}.
    #
    # @option params [String] :host_arn
    #   <p>The Amazon Resource Name (ARN) of the requested host.</p>
    #
    # @return [Types::GetHostOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_host(
    #     host_arn: 'HostArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetHostOutput
    #   resp.data.name #=> String
    #   resp.data.status #=> String
    #   resp.data.provider_type #=> String, one of ["Bitbucket", "GitHub", "GitHubEnterpriseServer"]
    #   resp.data.provider_endpoint #=> String
    #   resp.data.vpc_configuration #=> Types::VpcConfiguration
    #   resp.data.vpc_configuration.vpc_id #=> String
    #   resp.data.vpc_configuration.subnet_ids #=> Array<String>
    #   resp.data.vpc_configuration.subnet_ids[0] #=> String
    #   resp.data.vpc_configuration.security_group_ids #=> Array<String>
    #   resp.data.vpc_configuration.security_group_ids[0] #=> String
    #   resp.data.vpc_configuration.tls_certificate #=> String
    #
    def get_host(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetHostInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetHostInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetHost
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ResourceUnavailableException]),
        data_parser: Parsers::GetHost
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetHost,
        stubs: @stubs,
        params_class: Params::GetHostOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_host
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the connections associated with your account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListConnectionsInput}.
    #
    # @option params [String] :provider_type_filter
    #   <p>Filters the list of connections to those associated with a specified provider, such as
    #         Bitbucket.</p>
    #
    # @option params [String] :host_arn_filter
    #   <p>Filters the list of connections to those associated with a specified host.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #         results, make another call with the returned <code>nextToken</code> value.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that was returned from the previous <code>ListConnections</code> call, which
    #         can be used to return the next set of connections in the list.</p>
    #
    # @return [Types::ListConnectionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_connections(
    #     provider_type_filter: 'Bitbucket', # accepts ["Bitbucket", "GitHub", "GitHubEnterpriseServer"]
    #     host_arn_filter: 'HostArnFilter',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListConnectionsOutput
    #   resp.data.connections #=> Array<Connection>
    #   resp.data.connections[0] #=> Types::Connection
    #   resp.data.connections[0].connection_name #=> String
    #   resp.data.connections[0].connection_arn #=> String
    #   resp.data.connections[0].provider_type #=> String, one of ["Bitbucket", "GitHub", "GitHubEnterpriseServer"]
    #   resp.data.connections[0].owner_account_id #=> String
    #   resp.data.connections[0].connection_status #=> String, one of ["PENDING", "AVAILABLE", "ERROR"]
    #   resp.data.connections[0].host_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_connections(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListConnectionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListConnectionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListConnections
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListConnections
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListConnections,
        stubs: @stubs,
        params_class: Params::ListConnectionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_connections
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the hosts associated with your account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListHostsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #         results, make another call with the returned <code>nextToken</code> value.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that was returned from the previous <code>ListHosts</code> call, which can be
    #         used to return the next set of hosts in the list.</p>
    #
    # @return [Types::ListHostsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_hosts(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListHostsOutput
    #   resp.data.hosts #=> Array<Host>
    #   resp.data.hosts[0] #=> Types::Host
    #   resp.data.hosts[0].name #=> String
    #   resp.data.hosts[0].host_arn #=> String
    #   resp.data.hosts[0].provider_type #=> String, one of ["Bitbucket", "GitHub", "GitHubEnterpriseServer"]
    #   resp.data.hosts[0].provider_endpoint #=> String
    #   resp.data.hosts[0].vpc_configuration #=> Types::VpcConfiguration
    #   resp.data.hosts[0].vpc_configuration.vpc_id #=> String
    #   resp.data.hosts[0].vpc_configuration.subnet_ids #=> Array<String>
    #   resp.data.hosts[0].vpc_configuration.subnet_ids[0] #=> String
    #   resp.data.hosts[0].vpc_configuration.security_group_ids #=> Array<String>
    #   resp.data.hosts[0].vpc_configuration.security_group_ids[0] #=> String
    #   resp.data.hosts[0].vpc_configuration.tls_certificate #=> String
    #   resp.data.hosts[0].status #=> String
    #   resp.data.hosts[0].status_message #=> String
    #   resp.data.next_token #=> String
    #
    def list_hosts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListHostsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListHostsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListHosts
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListHosts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListHosts,
        stubs: @stubs,
        params_class: Params::ListHostsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_hosts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the set of key-value pairs (metadata) that are used to manage the resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want to get information about tags, if any.</p>
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
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def list_tags_for_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForResourceInput.build(params)
      response_body = StringIO.new
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
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

    # <p>Adds to or modifies the tags of the given resource. Tags are metadata that can be used
    #       to manage a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which you want to add or update tags.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags you want to modify or add to the resource.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
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
      response_body = StringIO.new
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::ResourceNotFoundException]),
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

    # <p>Removes tags from an AWS resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove tags from.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The list of keys for the tags to be removed from the resource.</p>
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
      response_body = StringIO.new
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
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

    # <p>Updates a specified host with the provided configurations.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateHostInput}.
    #
    # @option params [String] :host_arn
    #   <p>The Amazon Resource Name (ARN) of the host to be updated.</p>
    #
    # @option params [String] :provider_endpoint
    #   <p>The URL or endpoint of the host to be updated.</p>
    #
    # @option params [VpcConfiguration] :vpc_configuration
    #   <p>The VPC configuration of the host to be updated. A VPC must be configured and the
    #         infrastructure to be represented by the host must already be connected to the VPC.</p>
    #
    # @return [Types::UpdateHostOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_host(
    #     host_arn: 'HostArn', # required
    #     provider_endpoint: 'ProviderEndpoint',
    #     vpc_configuration: {
    #       vpc_id: 'VpcId', # required
    #       subnet_ids: [
    #         'member'
    #       ], # required
    #       security_group_ids: [
    #         'member'
    #       ], # required
    #       tls_certificate: 'TlsCertificate'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateHostOutput
    #
    def update_host(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateHostInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateHostInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateHost
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ResourceUnavailableException, Errors::UnsupportedOperationException]),
        data_parser: Parsers::UpdateHost
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateHost,
        stubs: @stubs,
        params_class: Params::UpdateHostOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_host
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
