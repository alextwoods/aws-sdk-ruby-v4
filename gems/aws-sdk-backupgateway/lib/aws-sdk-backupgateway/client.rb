# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::BackupGateway
  # An API client for BackupOnPremises_v20210101
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Backup gateway</fullname>
  #          <p>Backup gateway connects Backup to your hypervisor, so you can
  #       create, store, and restore backups of your virtual machines (VMs) anywhere, whether
  #       on-premises or in the VMware Cloud (VMC) on Amazon Web Services.</p>
  #          <p>Add on-premises resources by connecting to a hypervisor through a gateway. Backup will automatically discover the resources in your hypervisor.</p>
  #          <p>Use Backup to assign virtual or on-premises resources to a backup plan, or run
  #       on-demand backups. Once you have backed up your resources, you can view them and restore them
  #       like any resource supported by Backup.</p>
  #          <p>To download the Amazon Web Services software to get started, navigate to the Backup console, choose <b>Gateways</b>, then choose <b>Create gateway</b>.</p>
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
    def initialize(config = AWS::SDK::BackupGateway::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Associates a backup gateway with your server. After you complete the association process,
    #       you can back up and restore your VMs through the gateway.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateGatewayToServerInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway. Use the <code>ListGateways</code> operation
    #         to return a list of gateways for your account and Amazon Web Services Region.</p>
    #
    # @option params [String] :server_arn
    #   <p>The Amazon Resource Name (ARN) of the server that hosts your virtual machines.</p>
    #
    # @return [Types::AssociateGatewayToServerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_gateway_to_server(
    #     gateway_arn: 'GatewayArn', # required
    #     server_arn: 'ServerArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateGatewayToServerOutput
    #   resp.data.gateway_arn #=> String
    #
    def associate_gateway_to_server(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateGatewayToServerInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateGatewayToServerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateGatewayToServer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::AssociateGatewayToServer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateGatewayToServer,
        stubs: @stubs,
        params_class: Params::AssociateGatewayToServerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_gateway_to_server
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a backup gateway. After you create a gateway, you can associate it with a server
    #       using the <code>AssociateGatewayToServer</code> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateGatewayInput}.
    #
    # @option params [String] :activation_key
    #   <p>The activation key of the created gateway.</p>
    #
    # @option params [String] :gateway_display_name
    #   <p>The display name of the created gateway.</p>
    #
    # @option params [String] :gateway_type
    #   <p>The type of created gateway.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of up to 50 tags to assign to the gateway. Each tag is a key-value pair.</p>
    #
    # @return [Types::CreateGatewayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_gateway(
    #     activation_key: 'ActivationKey', # required
    #     gateway_display_name: 'GatewayDisplayName', # required
    #     gateway_type: 'BACKUP_VM', # required - accepts ["BACKUP_VM"]
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
    #   resp.data #=> Types::CreateGatewayOutput
    #   resp.data.gateway_arn #=> String
    #
    def create_gateway(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateGatewayInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateGatewayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateGateway
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::CreateGateway
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateGateway,
        stubs: @stubs,
        params_class: Params::CreateGatewayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_gateway
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a backup gateway.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteGatewayInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway to delete.</p>
    #
    # @return [Types::DeleteGatewayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_gateway(
    #     gateway_arn: 'GatewayArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteGatewayOutput
    #   resp.data.gateway_arn #=> String
    #
    def delete_gateway(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteGatewayInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteGatewayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteGateway
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DeleteGateway
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteGateway,
        stubs: @stubs,
        params_class: Params::DeleteGatewayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_gateway
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a hypervisor.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteHypervisorInput}.
    #
    # @option params [String] :hypervisor_arn
    #   <p>The Amazon Resource Name (ARN) of the hypervisor to delete.</p>
    #
    # @return [Types::DeleteHypervisorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_hypervisor(
    #     hypervisor_arn: 'HypervisorArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteHypervisorOutput
    #   resp.data.hypervisor_arn #=> String
    #
    def delete_hypervisor(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteHypervisorInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteHypervisorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteHypervisor
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DeleteHypervisor
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteHypervisor,
        stubs: @stubs,
        params_class: Params::DeleteHypervisorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_hypervisor
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a backup gateway from the specified server. After the disassociation process
    #       finishes, the gateway can no longer access the virtual machines on the server.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateGatewayFromServerInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway to disassociate.</p>
    #
    # @return [Types::DisassociateGatewayFromServerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_gateway_from_server(
    #     gateway_arn: 'GatewayArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateGatewayFromServerOutput
    #   resp.data.gateway_arn #=> String
    #
    def disassociate_gateway_from_server(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateGatewayFromServerInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateGatewayFromServerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateGatewayFromServer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::DisassociateGatewayFromServer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateGatewayFromServer,
        stubs: @stubs,
        params_class: Params::DisassociateGatewayFromServerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_gateway_from_server
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>By providing the ARN (Amazon Resource Name), this
    #       API returns the gateway.</p>
    #
    # @param [Hash] params
    #   See {Types::GetGatewayInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway.</p>
    #
    # @return [Types::GetGatewayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_gateway(
    #     gateway_arn: 'GatewayArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetGatewayOutput
    #   resp.data.gateway #=> Types::GatewayDetails
    #   resp.data.gateway.gateway_arn #=> String
    #   resp.data.gateway.gateway_display_name #=> String
    #   resp.data.gateway.gateway_type #=> String, one of ["BACKUP_VM"]
    #   resp.data.gateway.hypervisor_id #=> String
    #   resp.data.gateway.last_seen_time #=> Time
    #   resp.data.gateway.next_update_availability_time #=> Time
    #   resp.data.gateway.vpc_endpoint #=> String
    #
    def get_gateway(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetGatewayInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetGatewayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetGateway
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::GetGateway
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetGateway,
        stubs: @stubs,
        params_class: Params::GetGatewayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_gateway
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Connect to a hypervisor by importing its configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::ImportHypervisorConfigurationInput}.
    #
    # @option params [String] :name
    #   <p>The name of the hypervisor.</p>
    #
    # @option params [String] :host
    #   <p>The server host of the hypervisor. This can be either an IP address or a fully-qualified
    #         domain name (FQDN).</p>
    #
    # @option params [String] :username
    #   <p>The username for the hypervisor.</p>
    #
    # @option params [String] :password
    #   <p>The password for the hypervisor.</p>
    #
    # @option params [String] :kms_key_arn
    #   <p>The Key Management Service for the hypervisor.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags of the hypervisor configuration to import.</p>
    #
    # @return [Types::ImportHypervisorConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_hypervisor_configuration(
    #     name: 'Name', # required
    #     host: 'Host', # required
    #     username: 'Username',
    #     password: 'Password',
    #     kms_key_arn: 'KmsKeyArn',
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
    #   resp.data #=> Types::ImportHypervisorConfigurationOutput
    #   resp.data.hypervisor_arn #=> String
    #
    def import_hypervisor_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ImportHypervisorConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ImportHypervisorConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ImportHypervisorConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ImportHypervisorConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ImportHypervisorConfiguration,
        stubs: @stubs,
        params_class: Params::ImportHypervisorConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :import_hypervisor_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists backup gateways owned by an Amazon Web Services account in an Amazon Web Services Region. The returned list is ordered by gateway Amazon Resource Name (ARN).</p>
    #
    # @param [Hash] params
    #   See {Types::ListGatewaysInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of gateways to list.</p>
    #
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned resources. For example, if a request is
    #         made to return <code>MaxResults</code> number of resources, <code>NextToken</code> allows you
    #         to return more items in your list starting at the location pointed to by the next
    #         token.</p>
    #
    # @return [Types::ListGatewaysOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_gateways(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGatewaysOutput
    #   resp.data.gateways #=> Array<Gateway>
    #   resp.data.gateways[0] #=> Types::Gateway
    #   resp.data.gateways[0].gateway_arn #=> String
    #   resp.data.gateways[0].gateway_display_name #=> String
    #   resp.data.gateways[0].gateway_type #=> String, one of ["BACKUP_VM"]
    #   resp.data.gateways[0].hypervisor_id #=> String
    #   resp.data.gateways[0].last_seen_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_gateways(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGatewaysInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListGatewaysInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListGateways
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListGateways
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListGateways,
        stubs: @stubs,
        params_class: Params::ListGatewaysOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_gateways
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists your hypervisors.</p>
    #
    # @param [Hash] params
    #   See {Types::ListHypervisorsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of hypervisors to list.</p>
    #
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned resources. For example, if a request is
    #         made to return <code>maxResults</code> number of resources, <code>NextToken</code> allows you
    #         to return more items in your list starting at the location pointed to by the next
    #         token.</p>
    #
    # @return [Types::ListHypervisorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_hypervisors(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListHypervisorsOutput
    #   resp.data.hypervisors #=> Array<Hypervisor>
    #   resp.data.hypervisors[0] #=> Types::Hypervisor
    #   resp.data.hypervisors[0].host #=> String
    #   resp.data.hypervisors[0].hypervisor_arn #=> String
    #   resp.data.hypervisors[0].kms_key_arn #=> String
    #   resp.data.hypervisors[0].name #=> String
    #   resp.data.hypervisors[0].state #=> String, one of ["PENDING", "ONLINE", "OFFLINE", "ERROR"]
    #   resp.data.next_token #=> String
    #
    def list_hypervisors(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListHypervisorsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListHypervisorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListHypervisors
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListHypervisors
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListHypervisors,
        stubs: @stubs,
        params_class: Params::ListHypervisorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_hypervisors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags applied to the resource identified by its Amazon Resource Name
    #       (ARN).</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource's tags to list.</p>
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
    #   resp.data.resource_arn #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Lists your virtual machines.</p>
    #
    # @param [Hash] params
    #   See {Types::ListVirtualMachinesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of virtual machines to list.</p>
    #
    # @option params [String] :next_token
    #   <p>The next item following a partial list of returned resources. For example, if a request is
    #         made to return <code>maxResults</code> number of resources, <code>NextToken</code> allows you
    #         to return more items in your list starting at the location pointed to by the next
    #         token.</p>
    #
    # @return [Types::ListVirtualMachinesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_virtual_machines(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListVirtualMachinesOutput
    #   resp.data.virtual_machines #=> Array<VirtualMachine>
    #   resp.data.virtual_machines[0] #=> Types::VirtualMachine
    #   resp.data.virtual_machines[0].host_name #=> String
    #   resp.data.virtual_machines[0].hypervisor_id #=> String
    #   resp.data.virtual_machines[0].name #=> String
    #   resp.data.virtual_machines[0].path #=> String
    #   resp.data.virtual_machines[0].resource_arn #=> String
    #   resp.data.virtual_machines[0].last_backup_date #=> Time
    #   resp.data.next_token #=> String
    #
    def list_virtual_machines(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListVirtualMachinesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListVirtualMachinesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListVirtualMachines
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListVirtualMachines
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListVirtualMachines,
        stubs: @stubs,
        params_class: Params::ListVirtualMachinesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_virtual_machines
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Set the maintenance start time for a gateway.</p>
    #
    # @param [Hash] params
    #   See {Types::PutMaintenanceStartTimeInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) for the gateway, used to specify its maintenance start
    #         time.</p>
    #
    # @option params [Integer] :hour_of_day
    #   <p>The hour of the day to start maintenance on a gateway.</p>
    #
    # @option params [Integer] :minute_of_hour
    #   <p>The minute of the hour to start maintenance on a gateway.</p>
    #
    # @option params [Integer] :day_of_week
    #   <p>The day of the week to start maintenance on a gateway.</p>
    #
    # @option params [Integer] :day_of_month
    #   <p>The day of the month start maintenance on a gateway.</p>
    #            <p>Valid values range from <code>Sunday</code> to <code>Saturday</code>.</p>
    #
    # @return [Types::PutMaintenanceStartTimeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_maintenance_start_time(
    #     gateway_arn: 'GatewayArn', # required
    #     hour_of_day: 1, # required
    #     minute_of_hour: 1, # required
    #     day_of_week: 1,
    #     day_of_month: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutMaintenanceStartTimeOutput
    #   resp.data.gateway_arn #=> String
    #
    def put_maintenance_start_time(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutMaintenanceStartTimeInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutMaintenanceStartTimeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutMaintenanceStartTime
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::PutMaintenanceStartTime
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutMaintenanceStartTime,
        stubs: @stubs,
        params_class: Params::PutMaintenanceStartTimeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_maintenance_start_time
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Tag the resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to tag.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags to assign to the resource.</p>
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
    #   resp.data.resource_arn #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Tests your hypervisor configuration to validate that backup gateway can connect with the
    #       hypervisor and its resources.</p>
    #
    # @param [Hash] params
    #   See {Types::TestHypervisorConfigurationInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway to the hypervisor to test.</p>
    #
    # @option params [String] :host
    #   <p>The server host of the hypervisor. This can be either an IP address or a fully-qualified
    #         domain name (FQDN).</p>
    #
    # @option params [String] :username
    #   <p>The username for the hypervisor.</p>
    #
    # @option params [String] :password
    #   <p>The password for the hypervisor.</p>
    #
    # @return [Types::TestHypervisorConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_hypervisor_configuration(
    #     gateway_arn: 'GatewayArn', # required
    #     host: 'Host', # required
    #     username: 'Username',
    #     password: 'Password'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TestHypervisorConfigurationOutput
    #
    def test_hypervisor_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TestHypervisorConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TestHypervisorConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TestHypervisorConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::TestHypervisorConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TestHypervisorConfiguration,
        stubs: @stubs,
        params_class: Params::TestHypervisorConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :test_hypervisor_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes tags from the resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource from which to remove tags.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys specifying which tags to remove.</p>
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
    #   resp.data.resource_arn #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Updates a gateway's name. Specify which gateway to update using the Amazon Resource Name
    #       (ARN) of the gateway in your request.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateGatewayInformationInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway to update.</p>
    #
    # @option params [String] :gateway_display_name
    #   <p>The updated display name of the gateway.</p>
    #
    # @return [Types::UpdateGatewayInformationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gateway_information(
    #     gateway_arn: 'GatewayArn', # required
    #     gateway_display_name: 'GatewayDisplayName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateGatewayInformationOutput
    #   resp.data.gateway_arn #=> String
    #
    def update_gateway_information(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGatewayInformationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGatewayInformationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGatewayInformation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::UpdateGatewayInformation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateGatewayInformation,
        stubs: @stubs,
        params_class: Params::UpdateGatewayInformationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_gateway_information
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the gateway virtual machine (VM) software.
    #       The request immediately triggers the software update.</p>
    #          <note>
    #             <p>When you make this request, you get a <code>200 OK</code>
    #         success response immediately. However, it might take some
    #         time for the update to complete.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateGatewaySoftwareNowInput}.
    #
    # @option params [String] :gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway
    #         to be updated.</p>
    #
    # @return [Types::UpdateGatewaySoftwareNowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_gateway_software_now(
    #     gateway_arn: 'GatewayArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateGatewaySoftwareNowOutput
    #   resp.data.gateway_arn #=> String
    #
    def update_gateway_software_now(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGatewaySoftwareNowInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGatewaySoftwareNowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGatewaySoftwareNow
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::UpdateGatewaySoftwareNow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateGatewaySoftwareNow,
        stubs: @stubs,
        params_class: Params::UpdateGatewaySoftwareNowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_gateway_software_now
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a hypervisor metadata, including its host, username, and password. Specify which
    #       hypervisor to update using the Amazon Resource Name (ARN) of the hypervisor in your
    #       request.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateHypervisorInput}.
    #
    # @option params [String] :hypervisor_arn
    #   <p>The Amazon Resource Name (ARN) of the hypervisor to update.</p>
    #
    # @option params [String] :host
    #   <p>The updated host of the hypervisor. This can be either an IP address or a fully-qualified
    #         domain name (FQDN).</p>
    #
    # @option params [String] :username
    #   <p>The updated username for the hypervisor.</p>
    #
    # @option params [String] :password
    #   <p>The updated password for the hypervisor.</p>
    #
    # @option params [String] :name
    #   <p>The updated name for the hypervisor</p>
    #
    # @return [Types::UpdateHypervisorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_hypervisor(
    #     hypervisor_arn: 'HypervisorArn', # required
    #     host: 'Host',
    #     username: 'Username',
    #     password: 'Password',
    #     name: 'Name'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateHypervisorOutput
    #   resp.data.hypervisor_arn #=> String
    #
    def update_hypervisor(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateHypervisorInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateHypervisorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateHypervisor
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException]),
        data_parser: Parsers::UpdateHypervisor
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateHypervisor,
        stubs: @stubs,
        params_class: Params::UpdateHypervisorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_hypervisor
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
