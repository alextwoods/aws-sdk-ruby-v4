# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::WorkSpaces
  # An API client for WorkspacesService
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon WorkSpaces Service</fullname>
  #          <p>Amazon WorkSpaces enables you to provision virtual, cloud-based Microsoft Windows
  #          or Amazon Linux desktops for your users, known as <i>WorkSpaces</i>.
  #             WorkSpaces eliminates the need to procure and deploy hardware or install complex
  #          software. You can quickly add or remove users as your needs change. Users can access their
  #          virtual desktops from multiple devices or web browsers.</p>
  #          <p>This API Reference provides detailed information about the actions, data types,
  #          parameters, and errors of the WorkSpaces service. For more information about the
  #          supported Amazon Web Services Regions, endpoints, and service quotas of the Amazon WorkSpaces service, see <a href="https://docs.aws.amazon.com/general/latest/gr/wsp.html">WorkSpaces endpoints and quotas</a> in the <i>Amazon Web Services
  #             General Reference</i>.</p>
  #          <p>You can also manage your WorkSpaces resources using the WorkSpaces
  #          console, Command Line Interface (CLI), and SDKs. For more information about
  #          administering WorkSpaces, see the <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/">Amazon WorkSpaces Administration Guide</a>.
  #          For more information about using the Amazon WorkSpaces client application or web
  #          browser to access provisioned WorkSpaces, see the <a href="https://docs.aws.amazon.com/workspaces/latest/userguide/">Amazon WorkSpaces User Guide</a>. For more
  #          information about using the CLI to manage your WorkSpaces resources,
  #          see the <a href="https://docs.aws.amazon.com/cli/latest/reference/workspaces/index.html">WorkSpaces section of the CLI Reference</a>.</p>
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
    def initialize(config = AWS::SDK::WorkSpaces::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Associates the specified connection alias with the specified directory to enable
    #          cross-Region redirection. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html"> Cross-Region
    #             Redirection for Amazon WorkSpaces</a>.</p>
    #          <note>
    #             <p>Before performing this operation, call <a href="https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html">
    #                DescribeConnectionAliases</a> to make sure that the current state of the
    #             connection alias is <code>CREATED</code>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::AssociateConnectionAliasInput}.
    #
    # @option params [String] :alias_id
    #   <p>The identifier of the connection alias.</p>
    #
    # @option params [String] :resource_id
    #   <p>The identifier of the directory to associate the connection alias with.</p>
    #
    # @return [Types::AssociateConnectionAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_connection_alias(
    #     alias_id: 'AliasId', # required
    #     resource_id: 'ResourceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateConnectionAliasOutput
    #   resp.data.connection_identifier #=> String
    #
    def associate_connection_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateConnectionAliasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateConnectionAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateConnectionAlias
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InvalidParameterValuesException, Errors::OperationNotSupportedException, Errors::InvalidResourceStateException, Errors::ResourceAssociatedException]),
        data_parser: Parsers::AssociateConnectionAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateConnectionAlias,
        stubs: @stubs,
        params_class: Params::AssociateConnectionAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_connection_alias
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates the specified IP access control group with the specified directory.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateIpGroupsInput}.
    #
    # @option params [String] :directory_id
    #   <p>The identifier of the directory.</p>
    #
    # @option params [Array<String>] :group_ids
    #   <p>The identifiers of one or more IP access control groups.</p>
    #
    # @return [Types::AssociateIpGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_ip_groups(
    #     directory_id: 'DirectoryId', # required
    #     group_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateIpGroupsOutput
    #
    def associate_ip_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateIpGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateIpGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateIpGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ResourceLimitExceededException, Errors::AccessDeniedException, Errors::InvalidParameterValuesException, Errors::OperationNotSupportedException, Errors::InvalidResourceStateException]),
        data_parser: Parsers::AssociateIpGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateIpGroups,
        stubs: @stubs,
        params_class: Params::AssociateIpGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_ip_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds one or more rules to the specified IP access control group.</p>
    #          <p>This action gives users permission to access their WorkSpaces from the CIDR address
    #          ranges specified in the rules.</p>
    #
    # @param [Hash] params
    #   See {Types::AuthorizeIpRulesInput}.
    #
    # @option params [String] :group_id
    #   <p>The identifier of the group.</p>
    #
    # @option params [Array<IpRuleItem>] :user_rules
    #   <p>The rules to add to the group.</p>
    #
    # @return [Types::AuthorizeIpRulesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.authorize_ip_rules(
    #     group_id: 'GroupId', # required
    #     user_rules: [
    #       {
    #         ip_rule: 'ipRule',
    #         rule_desc: 'ruleDesc'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AuthorizeIpRulesOutput
    #
    def authorize_ip_rules(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AuthorizeIpRulesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AuthorizeIpRulesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AuthorizeIpRules
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ResourceLimitExceededException, Errors::AccessDeniedException, Errors::InvalidParameterValuesException, Errors::InvalidResourceStateException]),
        data_parser: Parsers::AuthorizeIpRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AuthorizeIpRules,
        stubs: @stubs,
        params_class: Params::AuthorizeIpRulesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :authorize_ip_rules
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Copies the specified image from the specified Region to the current Region. For more
    #          information about copying images, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/copy-custom-image.html"> Copy a Custom WorkSpaces
    #             Image</a>.</p>
    #          <p>In the China (Ningxia) Region, you can copy images only within the same Region.</p>
    #          <p>In Amazon Web Services GovCloud (US), to copy images to and from other Regions, contact Amazon Web Services Support.</p>
    #          <important>
    #             <p>Before copying a shared image, be sure to verify that it has been shared from the
    #             correct Amazon Web Services account. To determine if an image has been shared and to see
    #             the ID of the Amazon Web Services account that owns an image, use the <a href="https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceImages.html">DescribeWorkSpaceImages</a> and <a href="https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceImagePermissions.html">DescribeWorkspaceImagePermissions</a> API operations. </p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::CopyWorkspaceImageInput}.
    #
    # @option params [String] :name
    #   <p>The name of the image.</p>
    #
    # @option params [String] :description
    #   <p>A description of the image.</p>
    #
    # @option params [String] :source_image_id
    #   <p>The identifier of the source image.</p>
    #
    # @option params [String] :source_region
    #   <p>The identifier of the source Region.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags for the image.</p>
    #
    # @return [Types::CopyWorkspaceImageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_workspace_image(
    #     name: 'Name', # required
    #     description: 'Description',
    #     source_image_id: 'SourceImageId', # required
    #     source_region: 'SourceRegion', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CopyWorkspaceImageOutput
    #   resp.data.image_id #=> String
    #
    def copy_workspace_image(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CopyWorkspaceImageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CopyWorkspaceImageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CopyWorkspaceImage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ResourceLimitExceededException, Errors::AccessDeniedException, Errors::ResourceUnavailableException, Errors::InvalidParameterValuesException, Errors::OperationNotSupportedException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CopyWorkspaceImage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CopyWorkspaceImage,
        stubs: @stubs,
        params_class: Params::CopyWorkspaceImageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :copy_workspace_image
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a client-add-in for Amazon Connect within a directory. You can create only
    #          one Amazon Connect client add-in within a directory.</p>
    #          <p>This client add-in allows WorkSpaces users to seamlessly connect to Amazon Connect.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateConnectClientAddInInput}.
    #
    # @option params [String] :resource_id
    #   <p>The directory identifier for which to configure the client add-in.</p>
    #
    # @option params [String] :name
    #   <p>The name of the client add-in.</p>
    #
    # @option params [String] :url
    #   <p>The endpoint URL of the Amazon Connect client add-in.</p>
    #
    # @return [Types::CreateConnectClientAddInOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connect_client_add_in(
    #     resource_id: 'ResourceId', # required
    #     name: 'Name', # required
    #     url: 'URL' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateConnectClientAddInOutput
    #   resp.data.add_in_id #=> String
    #
    def create_connect_client_add_in(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateConnectClientAddInInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateConnectClientAddInInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateConnectClientAddIn
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InvalidParameterValuesException, Errors::ResourceCreationFailedException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateConnectClientAddIn
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateConnectClientAddIn,
        stubs: @stubs,
        params_class: Params::CreateConnectClientAddInOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_connect_client_add_in
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates the specified connection alias for use with cross-Region redirection. For more
    #          information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html"> Cross-Region
    #             Redirection for Amazon WorkSpaces</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateConnectionAliasInput}.
    #
    # @option params [String] :connection_string
    #   <p>A connection string in the form of a fully qualified domain name (FQDN), such as
    #               <code>www.example.com</code>.</p>
    #            <important>
    #               <p>After you create a connection string, it is always associated to your Amazon Web Services account. You cannot recreate the same connection string with a different
    #               account, even if you delete all instances of it from the original account. The
    #               connection string is globally reserved for your account.</p>
    #            </important>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to associate with the connection alias.</p>
    #
    # @return [Types::CreateConnectionAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connection_alias(
    #     connection_string: 'ConnectionString', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateConnectionAliasOutput
    #   resp.data.alias_id #=> String
    #
    def create_connection_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateConnectionAliasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateConnectionAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateConnectionAlias
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceLimitExceededException, Errors::AccessDeniedException, Errors::InvalidParameterValuesException, Errors::OperationNotSupportedException, Errors::ResourceAlreadyExistsException, Errors::InvalidResourceStateException]),
        data_parser: Parsers::CreateConnectionAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateConnectionAlias,
        stubs: @stubs,
        params_class: Params::CreateConnectionAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_connection_alias
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an IP access control group.</p>
    #          <p>An IP access control group provides you with the ability to control the IP addresses
    #          from which users are allowed to access their WorkSpaces. To specify the CIDR address
    #          ranges, add rules to your IP access control group and then associate the group with your
    #          directory. You can add rules when you create the group or at any time using <a>AuthorizeIpRules</a>.</p>
    #          <p>There is a default IP access control group associated with your directory. If you don't
    #          associate an IP access control group with your directory, the default group is used. The
    #          default group includes a default rule that allows users to access their WorkSpaces from
    #          anywhere. You cannot modify the default IP access control group for your directory.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateIpGroupInput}.
    #
    # @option params [String] :group_name
    #   <p>The name of the group.</p>
    #
    # @option params [String] :group_desc
    #   <p>The description of the group.</p>
    #
    # @option params [Array<IpRuleItem>] :user_rules
    #   <p>The rules to add to the group.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags. Each WorkSpaces resource can have a maximum of 50 tags.</p>
    #
    # @return [Types::CreateIpGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ip_group(
    #     group_name: 'GroupName', # required
    #     group_desc: 'GroupDesc',
    #     user_rules: [
    #       {
    #         ip_rule: 'ipRule',
    #         rule_desc: 'ruleDesc'
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateIpGroupOutput
    #   resp.data.group_id #=> String
    #
    def create_ip_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateIpGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateIpGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateIpGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceLimitExceededException, Errors::AccessDeniedException, Errors::InvalidParameterValuesException, Errors::ResourceCreationFailedException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateIpGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateIpGroup,
        stubs: @stubs,
        params_class: Params::CreateIpGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_ip_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates the specified tags for the specified WorkSpaces resource.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateTagsInput}.
    #
    # @option params [String] :resource_id
    #   <p>The identifier of the WorkSpaces resource. The supported resource types are WorkSpaces,
    #            registered directories, images, custom bundles, IP access control groups, and connection
    #            aliases.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags. Each WorkSpaces resource can have a maximum of 50 tags.</p>
    #
    # @return [Types::CreateTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_tags(
    #     resource_id: 'ResourceId', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateTagsOutput
    #
    def create_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTags
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ResourceLimitExceededException, Errors::InvalidParameterValuesException]),
        data_parser: Parsers::CreateTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTags,
        stubs: @stubs,
        params_class: Params::CreateTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new updated WorkSpace image based on the specified source image. The new
    #          updated WorkSpace image has the latest drivers and other updates required by the Amazon
    #          WorkSpaces components.</p>
    #          <p>To determine which WorkSpace images need to be updated with the latest Amazon WorkSpaces
    #          requirements, use <a href="https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceImages.html">
    #             DescribeWorkspaceImages</a>.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>Only Windows 10, Windows Sever 2016, and Windows Server 2019 WorkSpace images
    #                   can be programmatically updated at this time.</p>
    #                </li>
    #                <li>
    #                   <p>Microsoft Windows updates and other application updates are not included in the
    #                   update process.</p>
    #                </li>
    #                <li>
    #                   <p>The source WorkSpace image is not deleted. You can delete the source image
    #                   after you've verified your new updated image and created a new bundle. </p>
    #                </li>
    #             </ul>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateUpdatedWorkspaceImageInput}.
    #
    # @option params [String] :name
    #   <p>The name of the new updated WorkSpace image.</p>
    #
    # @option params [String] :description
    #   <p>A description of whether updates for the WorkSpace image are available.</p>
    #
    # @option params [String] :source_image_id
    #   <p>The identifier of the source WorkSpace image.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags that you want to add to the new updated WorkSpace image.</p>
    #            <note>
    #               <p>To add tags at the same time when you're creating the updated image, you must create
    #               an IAM policy that grants your IAM user permissions to use
    #                  <code>workspaces:CreateTags</code>. </p>
    #            </note>
    #
    # @return [Types::CreateUpdatedWorkspaceImageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_updated_workspace_image(
    #     name: 'Name', # required
    #     description: 'Description', # required
    #     source_image_id: 'SourceImageId', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateUpdatedWorkspaceImageOutput
    #   resp.data.image_id #=> String
    #
    def create_updated_workspace_image(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateUpdatedWorkspaceImageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateUpdatedWorkspaceImageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateUpdatedWorkspaceImage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ResourceLimitExceededException, Errors::AccessDeniedException, Errors::InvalidParameterValuesException, Errors::OperationNotSupportedException, Errors::ResourceAlreadyExistsException, Errors::InvalidResourceStateException]),
        data_parser: Parsers::CreateUpdatedWorkspaceImage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateUpdatedWorkspaceImage,
        stubs: @stubs,
        params_class: Params::CreateUpdatedWorkspaceImageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_updated_workspace_image
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates the specified WorkSpace bundle. For more information about creating WorkSpace bundles, see
    #          <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/create-custom-bundle.html">
    #             Create a Custom WorkSpaces Image and Bundle</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateWorkspaceBundleInput}.
    #
    # @option params [String] :bundle_name
    #   <p>The name of the bundle.</p>
    #
    # @option params [String] :bundle_description
    #   <p>The description of the bundle.</p>
    #
    # @option params [String] :image_id
    #   <p>The identifier of the image that is used to create the bundle.</p>
    #
    # @option params [ComputeType] :compute_type
    #   <p>Describes the compute type of the bundle.</p>
    #
    # @option params [UserStorage] :user_storage
    #   <p>Describes the user volume for a WorkSpace bundle.</p>
    #
    # @option params [RootStorage] :root_storage
    #   <p>Describes the root volume for a WorkSpace bundle.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags associated with the bundle.</p>
    #
    #            <note>
    #               <p>To add tags at the same time when you're creating the bundle, you must create an IAM policy that
    #               grants your IAM user permissions to use <code>workspaces:CreateTags</code>. </p>
    #            </note>
    #
    # @return [Types::CreateWorkspaceBundleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workspace_bundle(
    #     bundle_name: 'BundleName', # required
    #     bundle_description: 'BundleDescription', # required
    #     image_id: 'ImageId', # required
    #     compute_type: {
    #       name: 'VALUE' # accepts ["VALUE", "STANDARD", "PERFORMANCE", "POWER", "GRAPHICS", "POWERPRO", "GRAPHICSPRO", "GRAPHICS_G4DN", "GRAPHICSPRO_G4DN"]
    #     }, # required
    #     user_storage: {
    #       capacity: 'Capacity'
    #     }, # required
    #     root_storage: {
    #       capacity: 'Capacity'
    #     },
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateWorkspaceBundleOutput
    #   resp.data.workspace_bundle #=> Types::WorkspaceBundle
    #   resp.data.workspace_bundle.bundle_id #=> String
    #   resp.data.workspace_bundle.name #=> String
    #   resp.data.workspace_bundle.owner #=> String
    #   resp.data.workspace_bundle.description #=> String
    #   resp.data.workspace_bundle.image_id #=> String
    #   resp.data.workspace_bundle.root_storage #=> Types::RootStorage
    #   resp.data.workspace_bundle.root_storage.capacity #=> String
    #   resp.data.workspace_bundle.user_storage #=> Types::UserStorage
    #   resp.data.workspace_bundle.user_storage.capacity #=> String
    #   resp.data.workspace_bundle.compute_type #=> Types::ComputeType
    #   resp.data.workspace_bundle.compute_type.name #=> String, one of ["VALUE", "STANDARD", "PERFORMANCE", "POWER", "GRAPHICS", "POWERPRO", "GRAPHICSPRO", "GRAPHICS_G4DN", "GRAPHICSPRO_G4DN"]
    #   resp.data.workspace_bundle.last_updated_time #=> Time
    #   resp.data.workspace_bundle.creation_time #=> Time
    #
    def create_workspace_bundle(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateWorkspaceBundleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateWorkspaceBundleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateWorkspaceBundle
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ResourceLimitExceededException, Errors::AccessDeniedException, Errors::ResourceUnavailableException, Errors::InvalidParameterValuesException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateWorkspaceBundle
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateWorkspaceBundle,
        stubs: @stubs,
        params_class: Params::CreateWorkspaceBundleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_workspace_bundle
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates one or more WorkSpaces.</p>
    #          <p>This operation is asynchronous and returns before the WorkSpaces are created.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateWorkspacesInput}.
    #
    # @option params [Array<WorkspaceRequest>] :workspaces
    #   <p>The WorkSpaces to create. You can specify up to 25 WorkSpaces.</p>
    #
    # @return [Types::CreateWorkspacesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workspaces(
    #     workspaces: [
    #       {
    #         directory_id: 'DirectoryId', # required
    #         user_name: 'UserName', # required
    #         bundle_id: 'BundleId', # required
    #         volume_encryption_key: 'VolumeEncryptionKey',
    #         user_volume_encryption_enabled: false,
    #         root_volume_encryption_enabled: false,
    #         workspace_properties: {
    #           running_mode: 'AUTO_STOP', # accepts ["AUTO_STOP", "ALWAYS_ON"]
    #           running_mode_auto_stop_timeout_in_minutes: 1,
    #           root_volume_size_gib: 1,
    #           user_volume_size_gib: 1,
    #           compute_type_name: 'VALUE' # accepts ["VALUE", "STANDARD", "PERFORMANCE", "POWER", "GRAPHICS", "POWERPRO", "GRAPHICSPRO", "GRAPHICS_G4DN", "GRAPHICSPRO_G4DN"]
    #         },
    #         tags: [
    #           {
    #             key: 'Key', # required
    #             value: 'Value'
    #           }
    #         ]
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateWorkspacesOutput
    #   resp.data.failed_requests #=> Array<FailedCreateWorkspaceRequest>
    #   resp.data.failed_requests[0] #=> Types::FailedCreateWorkspaceRequest
    #   resp.data.failed_requests[0].workspace_request #=> Types::WorkspaceRequest
    #   resp.data.failed_requests[0].workspace_request.directory_id #=> String
    #   resp.data.failed_requests[0].workspace_request.user_name #=> String
    #   resp.data.failed_requests[0].workspace_request.bundle_id #=> String
    #   resp.data.failed_requests[0].workspace_request.volume_encryption_key #=> String
    #   resp.data.failed_requests[0].workspace_request.user_volume_encryption_enabled #=> Boolean
    #   resp.data.failed_requests[0].workspace_request.root_volume_encryption_enabled #=> Boolean
    #   resp.data.failed_requests[0].workspace_request.workspace_properties #=> Types::WorkspaceProperties
    #   resp.data.failed_requests[0].workspace_request.workspace_properties.running_mode #=> String, one of ["AUTO_STOP", "ALWAYS_ON"]
    #   resp.data.failed_requests[0].workspace_request.workspace_properties.running_mode_auto_stop_timeout_in_minutes #=> Integer
    #   resp.data.failed_requests[0].workspace_request.workspace_properties.root_volume_size_gib #=> Integer
    #   resp.data.failed_requests[0].workspace_request.workspace_properties.user_volume_size_gib #=> Integer
    #   resp.data.failed_requests[0].workspace_request.workspace_properties.compute_type_name #=> String, one of ["VALUE", "STANDARD", "PERFORMANCE", "POWER", "GRAPHICS", "POWERPRO", "GRAPHICSPRO", "GRAPHICS_G4DN", "GRAPHICSPRO_G4DN"]
    #   resp.data.failed_requests[0].workspace_request.tags #=> Array<Tag>
    #   resp.data.failed_requests[0].workspace_request.tags[0] #=> Types::Tag
    #   resp.data.failed_requests[0].workspace_request.tags[0].key #=> String
    #   resp.data.failed_requests[0].workspace_request.tags[0].value #=> String
    #   resp.data.failed_requests[0].error_code #=> String
    #   resp.data.failed_requests[0].error_message #=> String
    #   resp.data.pending_requests #=> Array<Workspace>
    #   resp.data.pending_requests[0] #=> Types::Workspace
    #   resp.data.pending_requests[0].workspace_id #=> String
    #   resp.data.pending_requests[0].directory_id #=> String
    #   resp.data.pending_requests[0].user_name #=> String
    #   resp.data.pending_requests[0].ip_address #=> String
    #   resp.data.pending_requests[0].state #=> String, one of ["PENDING", "AVAILABLE", "IMPAIRED", "UNHEALTHY", "REBOOTING", "STARTING", "REBUILDING", "RESTORING", "MAINTENANCE", "ADMIN_MAINTENANCE", "TERMINATING", "TERMINATED", "SUSPENDED", "UPDATING", "STOPPING", "STOPPED", "ERROR"]
    #   resp.data.pending_requests[0].bundle_id #=> String
    #   resp.data.pending_requests[0].subnet_id #=> String
    #   resp.data.pending_requests[0].error_message #=> String
    #   resp.data.pending_requests[0].error_code #=> String
    #   resp.data.pending_requests[0].computer_name #=> String
    #   resp.data.pending_requests[0].volume_encryption_key #=> String
    #   resp.data.pending_requests[0].user_volume_encryption_enabled #=> Boolean
    #   resp.data.pending_requests[0].root_volume_encryption_enabled #=> Boolean
    #   resp.data.pending_requests[0].workspace_properties #=> Types::WorkspaceProperties
    #   resp.data.pending_requests[0].modification_states #=> Array<ModificationState>
    #   resp.data.pending_requests[0].modification_states[0] #=> Types::ModificationState
    #   resp.data.pending_requests[0].modification_states[0].resource #=> String, one of ["ROOT_VOLUME", "USER_VOLUME", "COMPUTE_TYPE"]
    #   resp.data.pending_requests[0].modification_states[0].state #=> String, one of ["UPDATE_INITIATED", "UPDATE_IN_PROGRESS"]
    #
    def create_workspaces(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateWorkspacesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateWorkspacesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateWorkspaces
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceLimitExceededException, Errors::InvalidParameterValuesException]),
        data_parser: Parsers::CreateWorkspaces
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateWorkspaces,
        stubs: @stubs,
        params_class: Params::CreateWorkspacesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_workspaces
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes customized client branding. Client branding allows you to customize your
    #          WorkSpace's client login portal. You can tailor your login portal company logo, the support
    #          email address, support link, link to reset password, and a custom message for users trying
    #          to sign in.</p>
    #          <p>After you delete your customized client branding, your login portal reverts to the
    #          default client branding.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteClientBrandingInput}.
    #
    # @option params [String] :resource_id
    #   <p>The directory identifier of the WorkSpace for which you want to delete client
    #            branding.</p>
    #
    # @option params [Array<String>] :platforms
    #   <p>The device type for which you want to delete client branding.</p>
    #
    # @return [Types::DeleteClientBrandingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_client_branding(
    #     resource_id: 'ResourceId', # required
    #     platforms: [
    #       'DeviceTypeWindows' # accepts ["DeviceTypeWindows", "DeviceTypeOsx", "DeviceTypeAndroid", "DeviceTypeIos", "DeviceTypeLinux", "DeviceTypeWeb"]
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteClientBrandingOutput
    #
    def delete_client_branding(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteClientBrandingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteClientBrandingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteClientBranding
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InvalidParameterValuesException]),
        data_parser: Parsers::DeleteClientBranding
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteClientBranding,
        stubs: @stubs,
        params_class: Params::DeleteClientBrandingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_client_branding
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a client-add-in for Amazon Connect that is configured within a
    #          directory.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteConnectClientAddInInput}.
    #
    # @option params [String] :add_in_id
    #   <p>The identifier of the client add-in to delete.</p>
    #
    # @option params [String] :resource_id
    #   <p>The directory identifier for which the client add-in is configured.</p>
    #
    # @return [Types::DeleteConnectClientAddInOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connect_client_add_in(
    #     add_in_id: 'AddInId', # required
    #     resource_id: 'ResourceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteConnectClientAddInOutput
    #
    def delete_connect_client_add_in(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteConnectClientAddInInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteConnectClientAddInInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteConnectClientAddIn
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InvalidParameterValuesException]),
        data_parser: Parsers::DeleteConnectClientAddIn
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteConnectClientAddIn,
        stubs: @stubs,
        params_class: Params::DeleteConnectClientAddInOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_connect_client_add_in
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified connection alias. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html">
    #             Cross-Region Redirection for Amazon WorkSpaces</a>.</p>
    #          <important>
    #             <p>
    #                <b>If you will no longer be using a fully qualified domain name
    #                (FQDN) as the registration code for your WorkSpaces users, you must take certain
    #                precautions to prevent potential security issues.</b> For more information,
    #             see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html#cross-region-redirection-security-considerations"> Security Considerations if You Stop Using Cross-Region Redirection</a>.</p>
    #          </important>
    #          <note>
    #             <p>To delete a connection alias that has been shared, the shared account must first
    #             disassociate the connection alias from any directories it has been associated with. Then
    #             you must unshare the connection alias from the account it has been shared with. You can
    #             delete a connection alias only after it is no longer shared with any accounts or
    #             associated with any directories.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteConnectionAliasInput}.
    #
    # @option params [String] :alias_id
    #   <p>The identifier of the connection alias to delete.</p>
    #
    # @return [Types::DeleteConnectionAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connection_alias(
    #     alias_id: 'AliasId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteConnectionAliasOutput
    #
    def delete_connection_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteConnectionAliasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteConnectionAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteConnectionAlias
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InvalidParameterValuesException, Errors::OperationNotSupportedException, Errors::InvalidResourceStateException, Errors::ResourceAssociatedException]),
        data_parser: Parsers::DeleteConnectionAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteConnectionAlias,
        stubs: @stubs,
        params_class: Params::DeleteConnectionAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_connection_alias
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified IP access control group.</p>
    #          <p>You cannot delete an IP access control group that is associated with a directory.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteIpGroupInput}.
    #
    # @option params [String] :group_id
    #   <p>The identifier of the IP access control group.</p>
    #
    # @return [Types::DeleteIpGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ip_group(
    #     group_id: 'GroupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteIpGroupOutput
    #
    def delete_ip_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteIpGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteIpGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteIpGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InvalidParameterValuesException, Errors::ResourceAssociatedException]),
        data_parser: Parsers::DeleteIpGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteIpGroup,
        stubs: @stubs,
        params_class: Params::DeleteIpGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_ip_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified tags from the specified WorkSpaces resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTagsInput}.
    #
    # @option params [String] :resource_id
    #   <p>The identifier of the WorkSpaces resource. The supported resource types are WorkSpaces,
    #            registered directories, images, custom bundles, IP access control groups, and connection
    #            aliases.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys.</p>
    #
    # @return [Types::DeleteTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tags(
    #     resource_id: 'ResourceId', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTagsOutput
    #
    def delete_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTags
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterValuesException]),
        data_parser: Parsers::DeleteTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTags,
        stubs: @stubs,
        params_class: Params::DeleteTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified WorkSpace bundle. For more information about deleting WorkSpace bundles, see
    #          <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/delete_bundle.html">
    #             Delete a Custom WorkSpaces Bundle or Image</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteWorkspaceBundleInput}.
    #
    # @option params [String] :bundle_id
    #   <p>The identifier of the bundle.</p>
    #
    # @return [Types::DeleteWorkspaceBundleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workspace_bundle(
    #     bundle_id: 'BundleId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteWorkspaceBundleOutput
    #
    def delete_workspace_bundle(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteWorkspaceBundleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteWorkspaceBundleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteWorkspaceBundle
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InvalidParameterValuesException, Errors::ResourceAssociatedException]),
        data_parser: Parsers::DeleteWorkspaceBundle
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteWorkspaceBundle,
        stubs: @stubs,
        params_class: Params::DeleteWorkspaceBundleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_workspace_bundle
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified image from your account. To delete an image, you must first delete
    #          any bundles that are associated with the image and unshare the image if it is shared with
    #          other accounts. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteWorkspaceImageInput}.
    #
    # @option params [String] :image_id
    #   <p>The identifier of the image.</p>
    #
    # @return [Types::DeleteWorkspaceImageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workspace_image(
    #     image_id: 'ImageId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteWorkspaceImageOutput
    #
    def delete_workspace_image(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteWorkspaceImageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteWorkspaceImageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteWorkspaceImage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InvalidResourceStateException, Errors::ResourceAssociatedException]),
        data_parser: Parsers::DeleteWorkspaceImage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteWorkspaceImage,
        stubs: @stubs,
        params_class: Params::DeleteWorkspaceImageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_workspace_image
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deregisters the specified directory. This operation is asynchronous and returns before
    #          the WorkSpace directory is deregistered. If any WorkSpaces are registered to this
    #          directory, you must remove them before you can deregister the directory.</p>
    #          <note>
    #             <p>Simple AD and AD Connector are made available to you free of charge to use with
    #             WorkSpaces. If there are no WorkSpaces being used with your Simple AD or AD Connector
    #             directory for 30 consecutive days, this directory will be automatically deregistered for
    #             use with Amazon WorkSpaces, and you will be charged for this directory as per the <a href="http://aws.amazon.com/directoryservice/pricing/">Directory Service pricing
    #                terms</a>.</p>
    #             <p>To delete empty directories, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/delete-workspaces-directory.html"> Delete the
    #                Directory for Your WorkSpaces</a>. If you delete your Simple AD or AD Connector
    #             directory, you can always create a new one when you want to start using WorkSpaces
    #             again.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeregisterWorkspaceDirectoryInput}.
    #
    # @option params [String] :directory_id
    #   <p>The identifier of the directory. If any WorkSpaces are registered to this directory, you
    #            must remove them before you deregister the directory, or you will receive an
    #            OperationNotSupportedException error.</p>
    #
    # @return [Types::DeregisterWorkspaceDirectoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_workspace_directory(
    #     directory_id: 'DirectoryId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterWorkspaceDirectoryOutput
    #
    def deregister_workspace_directory(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterWorkspaceDirectoryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterWorkspaceDirectoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterWorkspaceDirectory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InvalidParameterValuesException, Errors::OperationNotSupportedException, Errors::InvalidResourceStateException]),
        data_parser: Parsers::DeregisterWorkspaceDirectory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterWorkspaceDirectory,
        stubs: @stubs,
        params_class: Params::DeregisterWorkspaceDirectoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_workspace_directory
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list that describes the configuration of Bring Your Own License (BYOL) for
    #          the specified account.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAccountInput}.
    #
    # @return [Types::DescribeAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAccountOutput
    #   resp.data.dedicated_tenancy_support #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.dedicated_tenancy_management_cidr_range #=> String
    #
    def describe_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAccount,
        stubs: @stubs,
        params_class: Params::DescribeAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list that describes modifications to the configuration of Bring Your Own
    #          License (BYOL) for the specified account.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAccountModificationsInput}.
    #
    # @option params [String] :next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    #
    # @return [Types::DescribeAccountModificationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_modifications(
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAccountModificationsOutput
    #   resp.data.account_modifications #=> Array<AccountModification>
    #   resp.data.account_modifications[0] #=> Types::AccountModification
    #   resp.data.account_modifications[0].modification_state #=> String, one of ["PENDING", "COMPLETED", "FAILED"]
    #   resp.data.account_modifications[0].dedicated_tenancy_support #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.account_modifications[0].dedicated_tenancy_management_cidr_range #=> String
    #   resp.data.account_modifications[0].start_time #=> Time
    #   resp.data.account_modifications[0].error_code #=> String
    #   resp.data.account_modifications[0].error_message #=> String
    #   resp.data.next_token #=> String
    #
    def describe_account_modifications(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAccountModificationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAccountModificationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAccountModifications
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeAccountModifications
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAccountModifications,
        stubs: @stubs,
        params_class: Params::DescribeAccountModificationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_account_modifications
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified client branding. Client branding allows you to customize the log
    #          in page of various device types for your users. You can add your company logo, the support
    #          email address, support link, link to reset password, and a custom message for users trying
    #          to sign in.</p>
    #          <note>
    #             <p>Only device types that have branding information configured will be shown in the
    #             response.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeClientBrandingInput}.
    #
    # @option params [String] :resource_id
    #   <p>The directory identifier of the WorkSpace for which you want to view client branding
    #            information.</p>
    #
    # @return [Types::DescribeClientBrandingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_client_branding(
    #     resource_id: 'ResourceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeClientBrandingOutput
    #   resp.data.device_type_windows #=> Types::DefaultClientBrandingAttributes
    #   resp.data.device_type_windows.logo_url #=> String
    #   resp.data.device_type_windows.support_email #=> String
    #   resp.data.device_type_windows.support_link #=> String
    #   resp.data.device_type_windows.forgot_password_link #=> String
    #   resp.data.device_type_windows.login_message #=> Hash<String, String>
    #   resp.data.device_type_windows.login_message['key'] #=> String
    #   resp.data.device_type_osx #=> Types::DefaultClientBrandingAttributes
    #   resp.data.device_type_android #=> Types::DefaultClientBrandingAttributes
    #   resp.data.device_type_ios #=> Types::IosClientBrandingAttributes
    #   resp.data.device_type_ios.logo_url #=> String
    #   resp.data.device_type_ios.logo2x_url #=> String
    #   resp.data.device_type_ios.logo3x_url #=> String
    #   resp.data.device_type_ios.support_email #=> String
    #   resp.data.device_type_ios.support_link #=> String
    #   resp.data.device_type_ios.forgot_password_link #=> String
    #   resp.data.device_type_ios.login_message #=> Hash<String, String>
    #   resp.data.device_type_linux #=> Types::DefaultClientBrandingAttributes
    #   resp.data.device_type_web #=> Types::DefaultClientBrandingAttributes
    #
    def describe_client_branding(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeClientBrandingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeClientBrandingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeClientBranding
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InvalidParameterValuesException]),
        data_parser: Parsers::DescribeClientBranding
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeClientBranding,
        stubs: @stubs,
        params_class: Params::DescribeClientBrandingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_client_branding
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list that describes one or more specified Amazon WorkSpaces clients.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeClientPropertiesInput}.
    #
    # @option params [Array<String>] :resource_ids
    #   <p>The resource identifier, in the form of directory IDs.</p>
    #
    # @return [Types::DescribeClientPropertiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_client_properties(
    #     resource_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeClientPropertiesOutput
    #   resp.data.client_properties_list #=> Array<ClientPropertiesResult>
    #   resp.data.client_properties_list[0] #=> Types::ClientPropertiesResult
    #   resp.data.client_properties_list[0].resource_id #=> String
    #   resp.data.client_properties_list[0].client_properties #=> Types::ClientProperties
    #   resp.data.client_properties_list[0].client_properties.reconnect_enabled #=> String, one of ["ENABLED", "DISABLED"]
    #
    def describe_client_properties(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeClientPropertiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeClientPropertiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeClientProperties
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InvalidParameterValuesException]),
        data_parser: Parsers::DescribeClientProperties
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeClientProperties,
        stubs: @stubs,
        params_class: Params::DescribeClientPropertiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_client_properties
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of Amazon Connect client add-ins that have been created.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeConnectClientAddInsInput}.
    #
    # @option params [String] :resource_id
    #   <p>The directory identifier for which the client add-in is configured.</p>
    #
    # @option params [String] :next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return.</p>
    #
    # @return [Types::DescribeConnectClientAddInsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connect_client_add_ins(
    #     resource_id: 'ResourceId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeConnectClientAddInsOutput
    #   resp.data.add_ins #=> Array<ConnectClientAddIn>
    #   resp.data.add_ins[0] #=> Types::ConnectClientAddIn
    #   resp.data.add_ins[0].add_in_id #=> String
    #   resp.data.add_ins[0].resource_id #=> String
    #   resp.data.add_ins[0].name #=> String
    #   resp.data.add_ins[0].url #=> String
    #   resp.data.next_token #=> String
    #
    def describe_connect_client_add_ins(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeConnectClientAddInsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeConnectClientAddInsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeConnectClientAddIns
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InvalidParameterValuesException]),
        data_parser: Parsers::DescribeConnectClientAddIns
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeConnectClientAddIns,
        stubs: @stubs,
        params_class: Params::DescribeConnectClientAddInsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_connect_client_add_ins
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the permissions that the owner of a connection alias has granted to another
    #             Amazon Web Services account for the specified connection alias. For more information, see
    #             <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html"> Cross-Region
    #             Redirection for Amazon WorkSpaces</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeConnectionAliasPermissionsInput}.
    #
    # @option params [String] :alias_id
    #   <p>The identifier of the connection alias.</p>
    #
    # @option params [String] :next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @return [Types::DescribeConnectionAliasPermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connection_alias_permissions(
    #     alias_id: 'AliasId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeConnectionAliasPermissionsOutput
    #   resp.data.alias_id #=> String
    #   resp.data.connection_alias_permissions #=> Array<ConnectionAliasPermission>
    #   resp.data.connection_alias_permissions[0] #=> Types::ConnectionAliasPermission
    #   resp.data.connection_alias_permissions[0].shared_account_id #=> String
    #   resp.data.connection_alias_permissions[0].allow_association #=> Boolean
    #   resp.data.next_token #=> String
    #
    def describe_connection_alias_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeConnectionAliasPermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeConnectionAliasPermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeConnectionAliasPermissions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InvalidParameterValuesException, Errors::OperationNotSupportedException]),
        data_parser: Parsers::DescribeConnectionAliasPermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeConnectionAliasPermissions,
        stubs: @stubs,
        params_class: Params::DescribeConnectionAliasPermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_connection_alias_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list that describes the connection aliases used for cross-Region
    #          redirection. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html"> Cross-Region
    #             Redirection for Amazon WorkSpaces</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeConnectionAliasesInput}.
    #
    # @option params [Array<String>] :alias_ids
    #   <p>The identifiers of the connection aliases to describe.</p>
    #
    # @option params [String] :resource_id
    #   <p>The identifier of the directory associated with the connection alias.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of connection aliases to return.</p>
    #
    # @option params [String] :next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results. </p>
    #
    # @return [Types::DescribeConnectionAliasesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connection_aliases(
    #     alias_ids: [
    #       'member'
    #     ],
    #     resource_id: 'ResourceId',
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeConnectionAliasesOutput
    #   resp.data.connection_aliases #=> Array<ConnectionAlias>
    #   resp.data.connection_aliases[0] #=> Types::ConnectionAlias
    #   resp.data.connection_aliases[0].connection_string #=> String
    #   resp.data.connection_aliases[0].alias_id #=> String
    #   resp.data.connection_aliases[0].state #=> String, one of ["CREATING", "CREATED", "DELETING"]
    #   resp.data.connection_aliases[0].owner_account_id #=> String
    #   resp.data.connection_aliases[0].associations #=> Array<ConnectionAliasAssociation>
    #   resp.data.connection_aliases[0].associations[0] #=> Types::ConnectionAliasAssociation
    #   resp.data.connection_aliases[0].associations[0].association_status #=> String, one of ["NOT_ASSOCIATED", "ASSOCIATED_WITH_OWNER_ACCOUNT", "ASSOCIATED_WITH_SHARED_ACCOUNT", "PENDING_ASSOCIATION", "PENDING_DISASSOCIATION"]
    #   resp.data.connection_aliases[0].associations[0].associated_account_id #=> String
    #   resp.data.connection_aliases[0].associations[0].resource_id #=> String
    #   resp.data.connection_aliases[0].associations[0].connection_identifier #=> String
    #   resp.data.next_token #=> String
    #
    def describe_connection_aliases(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeConnectionAliasesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeConnectionAliasesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeConnectionAliases
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InvalidParameterValuesException, Errors::OperationNotSupportedException]),
        data_parser: Parsers::DescribeConnectionAliases
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeConnectionAliases,
        stubs: @stubs,
        params_class: Params::DescribeConnectionAliasesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_connection_aliases
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes one or more of your IP access control groups.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeIpGroupsInput}.
    #
    # @option params [Array<String>] :group_ids
    #   <p>The identifiers of one or more IP access control groups.</p>
    #
    # @option params [String] :next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return.</p>
    #
    # @return [Types::DescribeIpGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_ip_groups(
    #     group_ids: [
    #       'member'
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeIpGroupsOutput
    #   resp.data.result #=> Array<WorkspacesIpGroup>
    #   resp.data.result[0] #=> Types::WorkspacesIpGroup
    #   resp.data.result[0].group_id #=> String
    #   resp.data.result[0].group_name #=> String
    #   resp.data.result[0].group_desc #=> String
    #   resp.data.result[0].user_rules #=> Array<IpRuleItem>
    #   resp.data.result[0].user_rules[0] #=> Types::IpRuleItem
    #   resp.data.result[0].user_rules[0].ip_rule #=> String
    #   resp.data.result[0].user_rules[0].rule_desc #=> String
    #   resp.data.next_token #=> String
    #
    def describe_ip_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeIpGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeIpGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeIpGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InvalidParameterValuesException]),
        data_parser: Parsers::DescribeIpGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeIpGroups,
        stubs: @stubs,
        params_class: Params::DescribeIpGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_ip_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified tags for the specified WorkSpaces resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTagsInput}.
    #
    # @option params [String] :resource_id
    #   <p>The identifier of the WorkSpaces resource. The supported resource types are WorkSpaces,
    #            registered directories, images, custom bundles, IP access control groups, and connection
    #            aliases.</p>
    #
    # @return [Types::DescribeTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tags(
    #     resource_id: 'ResourceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTagsOutput
    #   resp.data.tag_list #=> Array<Tag>
    #   resp.data.tag_list[0] #=> Types::Tag
    #   resp.data.tag_list[0].key #=> String
    #   resp.data.tag_list[0].value #=> String
    #
    def describe_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTags
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
        data_parser: Parsers::DescribeTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTags,
        stubs: @stubs,
        params_class: Params::DescribeTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list that describes the available WorkSpace bundles.</p>
    #          <p>You can filter the results using either bundle ID or owner, but not both.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeWorkspaceBundlesInput}.
    #
    # @option params [Array<String>] :bundle_ids
    #   <p>The identifiers of the bundles. You cannot combine this parameter with any other filter.</p>
    #
    # @option params [String] :owner
    #   <p>The owner of the bundles. You cannot combine this parameter with any other filter.</p>
    #            <p>To describe the bundles provided by Amazon Web Services, specify <code>AMAZON</code>.
    #            To describe the bundles that belong to your account, don't specify a value.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. (You received this token from a previous call.)</p>
    #
    # @return [Types::DescribeWorkspaceBundlesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspace_bundles(
    #     bundle_ids: [
    #       'member'
    #     ],
    #     owner: 'Owner',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeWorkspaceBundlesOutput
    #   resp.data.bundles #=> Array<WorkspaceBundle>
    #   resp.data.bundles[0] #=> Types::WorkspaceBundle
    #   resp.data.bundles[0].bundle_id #=> String
    #   resp.data.bundles[0].name #=> String
    #   resp.data.bundles[0].owner #=> String
    #   resp.data.bundles[0].description #=> String
    #   resp.data.bundles[0].image_id #=> String
    #   resp.data.bundles[0].root_storage #=> Types::RootStorage
    #   resp.data.bundles[0].root_storage.capacity #=> String
    #   resp.data.bundles[0].user_storage #=> Types::UserStorage
    #   resp.data.bundles[0].user_storage.capacity #=> String
    #   resp.data.bundles[0].compute_type #=> Types::ComputeType
    #   resp.data.bundles[0].compute_type.name #=> String, one of ["VALUE", "STANDARD", "PERFORMANCE", "POWER", "GRAPHICS", "POWERPRO", "GRAPHICSPRO", "GRAPHICS_G4DN", "GRAPHICSPRO_G4DN"]
    #   resp.data.bundles[0].last_updated_time #=> Time
    #   resp.data.bundles[0].creation_time #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_workspace_bundles(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeWorkspaceBundlesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeWorkspaceBundlesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeWorkspaceBundles
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValuesException]),
        data_parser: Parsers::DescribeWorkspaceBundles
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeWorkspaceBundles,
        stubs: @stubs,
        params_class: Params::DescribeWorkspaceBundlesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_workspace_bundles
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the available directories that are registered with Amazon WorkSpaces.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeWorkspaceDirectoriesInput}.
    #
    # @option params [Array<String>] :directory_ids
    #   <p>The identifiers of the directories. If the value is null, all directories are
    #            retrieved.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of directories to return.</p>
    #
    # @option params [String] :next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    #
    # @return [Types::DescribeWorkspaceDirectoriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspace_directories(
    #     directory_ids: [
    #       'member'
    #     ],
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeWorkspaceDirectoriesOutput
    #   resp.data.directories #=> Array<WorkspaceDirectory>
    #   resp.data.directories[0] #=> Types::WorkspaceDirectory
    #   resp.data.directories[0].directory_id #=> String
    #   resp.data.directories[0].alias #=> String
    #   resp.data.directories[0].directory_name #=> String
    #   resp.data.directories[0].registration_code #=> String
    #   resp.data.directories[0].subnet_ids #=> Array<String>
    #   resp.data.directories[0].subnet_ids[0] #=> String
    #   resp.data.directories[0].dns_ip_addresses #=> Array<String>
    #   resp.data.directories[0].dns_ip_addresses[0] #=> String
    #   resp.data.directories[0].customer_user_name #=> String
    #   resp.data.directories[0].iam_role_id #=> String
    #   resp.data.directories[0].directory_type #=> String, one of ["SIMPLE_AD", "AD_CONNECTOR"]
    #   resp.data.directories[0].workspace_security_group_id #=> String
    #   resp.data.directories[0].state #=> String, one of ["REGISTERING", "REGISTERED", "DEREGISTERING", "DEREGISTERED", "ERROR"]
    #   resp.data.directories[0].workspace_creation_properties #=> Types::DefaultWorkspaceCreationProperties
    #   resp.data.directories[0].workspace_creation_properties.enable_work_docs #=> Boolean
    #   resp.data.directories[0].workspace_creation_properties.enable_internet_access #=> Boolean
    #   resp.data.directories[0].workspace_creation_properties.default_ou #=> String
    #   resp.data.directories[0].workspace_creation_properties.custom_security_group_id #=> String
    #   resp.data.directories[0].workspace_creation_properties.user_enabled_as_local_administrator #=> Boolean
    #   resp.data.directories[0].workspace_creation_properties.enable_maintenance_mode #=> Boolean
    #   resp.data.directories[0].ip_group_ids #=> Array<String>
    #   resp.data.directories[0].ip_group_ids[0] #=> String
    #   resp.data.directories[0].workspace_access_properties #=> Types::WorkspaceAccessProperties
    #   resp.data.directories[0].workspace_access_properties.device_type_windows #=> String, one of ["ALLOW", "DENY"]
    #   resp.data.directories[0].workspace_access_properties.device_type_osx #=> String, one of ["ALLOW", "DENY"]
    #   resp.data.directories[0].workspace_access_properties.device_type_web #=> String, one of ["ALLOW", "DENY"]
    #   resp.data.directories[0].workspace_access_properties.device_type_ios #=> String, one of ["ALLOW", "DENY"]
    #   resp.data.directories[0].workspace_access_properties.device_type_android #=> String, one of ["ALLOW", "DENY"]
    #   resp.data.directories[0].workspace_access_properties.device_type_chrome_os #=> String, one of ["ALLOW", "DENY"]
    #   resp.data.directories[0].workspace_access_properties.device_type_zero_client #=> String, one of ["ALLOW", "DENY"]
    #   resp.data.directories[0].workspace_access_properties.device_type_linux #=> String, one of ["ALLOW", "DENY"]
    #   resp.data.directories[0].tenancy #=> String, one of ["DEDICATED", "SHARED"]
    #   resp.data.directories[0].selfservice_permissions #=> Types::SelfservicePermissions
    #   resp.data.directories[0].selfservice_permissions.restart_workspace #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.directories[0].selfservice_permissions.increase_volume_size #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.directories[0].selfservice_permissions.change_compute_type #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.directories[0].selfservice_permissions.switch_running_mode #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.directories[0].selfservice_permissions.rebuild_workspace #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.next_token #=> String
    #
    def describe_workspace_directories(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeWorkspaceDirectoriesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeWorkspaceDirectoriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeWorkspaceDirectories
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValuesException]),
        data_parser: Parsers::DescribeWorkspaceDirectories
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeWorkspaceDirectories,
        stubs: @stubs,
        params_class: Params::DescribeWorkspaceDirectoriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_workspace_directories
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the permissions that the owner of an image has granted to other Amazon Web Services accounts for an image.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeWorkspaceImagePermissionsInput}.
    #
    # @option params [String] :image_id
    #   <p>The identifier of the image.</p>
    #
    # @option params [String] :next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return.</p>
    #
    # @return [Types::DescribeWorkspaceImagePermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspace_image_permissions(
    #     image_id: 'ImageId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeWorkspaceImagePermissionsOutput
    #   resp.data.image_id #=> String
    #   resp.data.image_permissions #=> Array<ImagePermission>
    #   resp.data.image_permissions[0] #=> Types::ImagePermission
    #   resp.data.image_permissions[0].shared_account_id #=> String
    #   resp.data.next_token #=> String
    #
    def describe_workspace_image_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeWorkspaceImagePermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeWorkspaceImagePermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeWorkspaceImagePermissions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InvalidParameterValuesException]),
        data_parser: Parsers::DescribeWorkspaceImagePermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeWorkspaceImagePermissions,
        stubs: @stubs,
        params_class: Params::DescribeWorkspaceImagePermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_workspace_image_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list that describes one or more specified images, if the image identifiers
    #          are provided. Otherwise, all images in the account are described. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeWorkspaceImagesInput}.
    #
    # @option params [Array<String>] :image_ids
    #   <p>The identifier of the image.</p>
    #
    # @option params [String] :image_type
    #   <p>The type (owned or shared) of the image.</p>
    #
    # @option params [String] :next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return.</p>
    #
    # @return [Types::DescribeWorkspaceImagesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspace_images(
    #     image_ids: [
    #       'member'
    #     ],
    #     image_type: 'OWNED', # accepts ["OWNED", "SHARED"]
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeWorkspaceImagesOutput
    #   resp.data.images #=> Array<WorkspaceImage>
    #   resp.data.images[0] #=> Types::WorkspaceImage
    #   resp.data.images[0].image_id #=> String
    #   resp.data.images[0].name #=> String
    #   resp.data.images[0].description #=> String
    #   resp.data.images[0].operating_system #=> Types::OperatingSystem
    #   resp.data.images[0].operating_system.type #=> String, one of ["WINDOWS", "LINUX"]
    #   resp.data.images[0].state #=> String, one of ["AVAILABLE", "PENDING", "ERROR"]
    #   resp.data.images[0].required_tenancy #=> String, one of ["DEFAULT", "DEDICATED"]
    #   resp.data.images[0].error_code #=> String
    #   resp.data.images[0].error_message #=> String
    #   resp.data.images[0].created #=> Time
    #   resp.data.images[0].owner_account_id #=> String
    #   resp.data.images[0].updates #=> Types::UpdateResult
    #   resp.data.images[0].updates.update_available #=> Boolean
    #   resp.data.images[0].updates.description #=> String
    #   resp.data.next_token #=> String
    #
    def describe_workspace_images(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeWorkspaceImagesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeWorkspaceImagesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeWorkspaceImages
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeWorkspaceImages
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeWorkspaceImages,
        stubs: @stubs,
        params_class: Params::DescribeWorkspaceImagesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_workspace_images
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the snapshots for the specified WorkSpace.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeWorkspaceSnapshotsInput}.
    #
    # @option params [String] :workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    #
    # @return [Types::DescribeWorkspaceSnapshotsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspace_snapshots(
    #     workspace_id: 'WorkspaceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeWorkspaceSnapshotsOutput
    #   resp.data.rebuild_snapshots #=> Array<Snapshot>
    #   resp.data.rebuild_snapshots[0] #=> Types::Snapshot
    #   resp.data.rebuild_snapshots[0].snapshot_time #=> Time
    #   resp.data.restore_snapshots #=> Array<Snapshot>
    #
    def describe_workspace_snapshots(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeWorkspaceSnapshotsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeWorkspaceSnapshotsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeWorkspaceSnapshots
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InvalidParameterValuesException]),
        data_parser: Parsers::DescribeWorkspaceSnapshots
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeWorkspaceSnapshots,
        stubs: @stubs,
        params_class: Params::DescribeWorkspaceSnapshotsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_workspace_snapshots
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified WorkSpaces.</p>
    #          <p>You can filter the results by using the bundle identifier, directory identifier, or
    #          owner, but you can specify only one filter at a time.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeWorkspacesInput}.
    #
    # @option params [Array<String>] :workspace_ids
    #   <p>The identifiers of the WorkSpaces. You cannot combine this parameter with any other
    #            filter.</p>
    #            <p>Because the <a>CreateWorkspaces</a> operation is asynchronous, the identifier
    #            it returns is not immediately available. If you immediately call <a>DescribeWorkspaces</a> with this identifier, no information is returned.</p>
    #
    # @option params [String] :directory_id
    #   <p>The identifier of the directory. In addition, you can optionally specify a specific
    #            directory user (see <code>UserName</code>). You cannot combine this parameter with any
    #            other filter.</p>
    #
    # @option params [String] :user_name
    #   <p>The name of the directory user. You must specify this parameter with
    #               <code>DirectoryId</code>.</p>
    #
    # @option params [String] :bundle_id
    #   <p>The identifier of the bundle. All WorkSpaces that are created from this bundle are
    #            retrieved. You cannot combine this parameter with any other filter.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of items to return.</p>
    #
    # @option params [String] :next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    #
    # @return [Types::DescribeWorkspacesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspaces(
    #     workspace_ids: [
    #       'member'
    #     ],
    #     directory_id: 'DirectoryId',
    #     user_name: 'UserName',
    #     bundle_id: 'BundleId',
    #     limit: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeWorkspacesOutput
    #   resp.data.workspaces #=> Array<Workspace>
    #   resp.data.workspaces[0] #=> Types::Workspace
    #   resp.data.workspaces[0].workspace_id #=> String
    #   resp.data.workspaces[0].directory_id #=> String
    #   resp.data.workspaces[0].user_name #=> String
    #   resp.data.workspaces[0].ip_address #=> String
    #   resp.data.workspaces[0].state #=> String, one of ["PENDING", "AVAILABLE", "IMPAIRED", "UNHEALTHY", "REBOOTING", "STARTING", "REBUILDING", "RESTORING", "MAINTENANCE", "ADMIN_MAINTENANCE", "TERMINATING", "TERMINATED", "SUSPENDED", "UPDATING", "STOPPING", "STOPPED", "ERROR"]
    #   resp.data.workspaces[0].bundle_id #=> String
    #   resp.data.workspaces[0].subnet_id #=> String
    #   resp.data.workspaces[0].error_message #=> String
    #   resp.data.workspaces[0].error_code #=> String
    #   resp.data.workspaces[0].computer_name #=> String
    #   resp.data.workspaces[0].volume_encryption_key #=> String
    #   resp.data.workspaces[0].user_volume_encryption_enabled #=> Boolean
    #   resp.data.workspaces[0].root_volume_encryption_enabled #=> Boolean
    #   resp.data.workspaces[0].workspace_properties #=> Types::WorkspaceProperties
    #   resp.data.workspaces[0].workspace_properties.running_mode #=> String, one of ["AUTO_STOP", "ALWAYS_ON"]
    #   resp.data.workspaces[0].workspace_properties.running_mode_auto_stop_timeout_in_minutes #=> Integer
    #   resp.data.workspaces[0].workspace_properties.root_volume_size_gib #=> Integer
    #   resp.data.workspaces[0].workspace_properties.user_volume_size_gib #=> Integer
    #   resp.data.workspaces[0].workspace_properties.compute_type_name #=> String, one of ["VALUE", "STANDARD", "PERFORMANCE", "POWER", "GRAPHICS", "POWERPRO", "GRAPHICSPRO", "GRAPHICS_G4DN", "GRAPHICSPRO_G4DN"]
    #   resp.data.workspaces[0].modification_states #=> Array<ModificationState>
    #   resp.data.workspaces[0].modification_states[0] #=> Types::ModificationState
    #   resp.data.workspaces[0].modification_states[0].resource #=> String, one of ["ROOT_VOLUME", "USER_VOLUME", "COMPUTE_TYPE"]
    #   resp.data.workspaces[0].modification_states[0].state #=> String, one of ["UPDATE_INITIATED", "UPDATE_IN_PROGRESS"]
    #   resp.data.next_token #=> String
    #
    def describe_workspaces(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeWorkspacesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeWorkspacesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeWorkspaces
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceUnavailableException, Errors::InvalidParameterValuesException]),
        data_parser: Parsers::DescribeWorkspaces
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeWorkspaces,
        stubs: @stubs,
        params_class: Params::DescribeWorkspacesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_workspaces
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the connection status of the specified WorkSpaces.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeWorkspacesConnectionStatusInput}.
    #
    # @option params [Array<String>] :workspace_ids
    #   <p>The identifiers of the WorkSpaces. You can specify up to 25 WorkSpaces.</p>
    #
    # @option params [String] :next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    #
    # @return [Types::DescribeWorkspacesConnectionStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspaces_connection_status(
    #     workspace_ids: [
    #       'member'
    #     ],
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeWorkspacesConnectionStatusOutput
    #   resp.data.workspaces_connection_status #=> Array<WorkspaceConnectionStatus>
    #   resp.data.workspaces_connection_status[0] #=> Types::WorkspaceConnectionStatus
    #   resp.data.workspaces_connection_status[0].workspace_id #=> String
    #   resp.data.workspaces_connection_status[0].connection_state #=> String, one of ["CONNECTED", "DISCONNECTED", "UNKNOWN"]
    #   resp.data.workspaces_connection_status[0].connection_state_check_timestamp #=> Time
    #   resp.data.workspaces_connection_status[0].last_known_user_connection_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_workspaces_connection_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeWorkspacesConnectionStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeWorkspacesConnectionStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeWorkspacesConnectionStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValuesException]),
        data_parser: Parsers::DescribeWorkspacesConnectionStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeWorkspacesConnectionStatus,
        stubs: @stubs,
        params_class: Params::DescribeWorkspacesConnectionStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_workspaces_connection_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a connection alias from a directory. Disassociating a connection alias
    #          disables cross-Region redirection between two directories in different Regions. For more
    #          information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html"> Cross-Region
    #             Redirection for Amazon WorkSpaces</a>.</p>
    #          <note>
    #             <p>Before performing this operation, call <a href="https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html">
    #                DescribeConnectionAliases</a> to make sure that the current state of the
    #             connection alias is <code>CREATED</code>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DisassociateConnectionAliasInput}.
    #
    # @option params [String] :alias_id
    #   <p>The identifier of the connection alias to disassociate.</p>
    #
    # @return [Types::DisassociateConnectionAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_connection_alias(
    #     alias_id: 'AliasId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateConnectionAliasOutput
    #
    def disassociate_connection_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateConnectionAliasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateConnectionAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateConnectionAlias
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InvalidParameterValuesException, Errors::OperationNotSupportedException, Errors::InvalidResourceStateException]),
        data_parser: Parsers::DisassociateConnectionAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateConnectionAlias,
        stubs: @stubs,
        params_class: Params::DisassociateConnectionAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_connection_alias
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates the specified IP access control group from the specified directory.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateIpGroupsInput}.
    #
    # @option params [String] :directory_id
    #   <p>The identifier of the directory.</p>
    #
    # @option params [Array<String>] :group_ids
    #   <p>The identifiers of one or more IP access control groups.</p>
    #
    # @return [Types::DisassociateIpGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_ip_groups(
    #     directory_id: 'DirectoryId', # required
    #     group_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateIpGroupsOutput
    #
    def disassociate_ip_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateIpGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateIpGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateIpGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InvalidParameterValuesException, Errors::InvalidResourceStateException]),
        data_parser: Parsers::DisassociateIpGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateIpGroups,
        stubs: @stubs,
        params_class: Params::DisassociateIpGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_ip_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Imports client branding. Client branding allows you to customize your WorkSpace's client
    #          login portal. You can tailor your login portal company logo, the support email address,
    #          support link, link to reset password, and a custom message for users trying to sign
    #          in.</p>
    #          <p>After you import client branding, the default branding experience for the specified
    #          platform type is replaced with the imported experience</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>You must specify at least one platform type when importing client
    #                   branding.</p>
    #                </li>
    #                <li>
    #                   <p>You can import up to 6 MB of data with each request. If your request exceeds
    #                   this limit, you can import client branding for different platform types using
    #                   separate requests.</p>
    #                </li>
    #                <li>
    #                   <p>In each platform type, the <code>SupportEmail</code> and
    #                      <code>SupportLink</code> parameters are mutually exclusive. You can specify
    #                   only one parameter for each platform type, but not both.</p>
    #                </li>
    #                <li>
    #                   <p>Imported data can take up to a minute to appear in the WorkSpaces
    #                   client.</p>
    #                </li>
    #             </ul>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ImportClientBrandingInput}.
    #
    # @option params [String] :resource_id
    #   <p>The directory identifier of the WorkSpace for which you want to import client
    #            branding.</p>
    #
    # @option params [DefaultImportClientBrandingAttributes] :device_type_windows
    #   <p>The branding information to import for Windows devices.</p>
    #
    # @option params [DefaultImportClientBrandingAttributes] :device_type_osx
    #   <p>The branding information to import for macOS devices.</p>
    #
    # @option params [DefaultImportClientBrandingAttributes] :device_type_android
    #   <p>The branding information to import for Android devices.</p>
    #
    # @option params [IosImportClientBrandingAttributes] :device_type_ios
    #   <p>The branding information to import for iOS devices.</p>
    #
    # @option params [DefaultImportClientBrandingAttributes] :device_type_linux
    #   <p>The branding information to import for Linux devices.</p>
    #
    # @option params [DefaultImportClientBrandingAttributes] :device_type_web
    #   <p>The branding information to import for web access.</p>
    #
    # @return [Types::ImportClientBrandingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_client_branding(
    #     resource_id: 'ResourceId', # required
    #     device_type_windows: {
    #       logo: 'Logo',
    #       support_email: 'SupportEmail',
    #       support_link: 'SupportLink',
    #       forgot_password_link: 'ForgotPasswordLink',
    #       login_message: {
    #         'key' => 'value'
    #       }
    #     },
    #     device_type_ios: {
    #       logo: 'Logo',
    #       logo2x: 'Logo2x',
    #       logo3x: 'Logo3x',
    #       support_email: 'SupportEmail',
    #       support_link: 'SupportLink',
    #       forgot_password_link: 'ForgotPasswordLink',
    #     },
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ImportClientBrandingOutput
    #   resp.data.device_type_windows #=> Types::DefaultClientBrandingAttributes
    #   resp.data.device_type_windows.logo_url #=> String
    #   resp.data.device_type_windows.support_email #=> String
    #   resp.data.device_type_windows.support_link #=> String
    #   resp.data.device_type_windows.forgot_password_link #=> String
    #   resp.data.device_type_windows.login_message #=> Hash<String, String>
    #   resp.data.device_type_windows.login_message['key'] #=> String
    #   resp.data.device_type_osx #=> Types::DefaultClientBrandingAttributes
    #   resp.data.device_type_android #=> Types::DefaultClientBrandingAttributes
    #   resp.data.device_type_ios #=> Types::IosClientBrandingAttributes
    #   resp.data.device_type_ios.logo_url #=> String
    #   resp.data.device_type_ios.logo2x_url #=> String
    #   resp.data.device_type_ios.logo3x_url #=> String
    #   resp.data.device_type_ios.support_email #=> String
    #   resp.data.device_type_ios.support_link #=> String
    #   resp.data.device_type_ios.forgot_password_link #=> String
    #   resp.data.device_type_ios.login_message #=> Hash<String, String>
    #   resp.data.device_type_linux #=> Types::DefaultClientBrandingAttributes
    #   resp.data.device_type_web #=> Types::DefaultClientBrandingAttributes
    #
    def import_client_branding(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ImportClientBrandingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ImportClientBrandingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ImportClientBranding
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceLimitExceededException, Errors::AccessDeniedException, Errors::InvalidParameterValuesException]),
        data_parser: Parsers::ImportClientBranding
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ImportClientBranding,
        stubs: @stubs,
        params_class: Params::ImportClientBrandingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :import_client_branding
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Imports the specified Windows 10 Bring Your Own License (BYOL) image into Amazon
    #          WorkSpaces. The image must be an already licensed Amazon EC2 image that is in your Amazon Web Services account, and you must own the image. For more information about creating BYOL
    #          images, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html"> Bring Your Own Windows
    #             Desktop Licenses</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ImportWorkspaceImageInput}.
    #
    # @option params [String] :ec2_image_id
    #   <p>The identifier of the EC2 image.</p>
    #
    # @option params [String] :ingestion_process
    #   <p>The ingestion process to be used when importing the image, depending on which protocol
    #            you want to use for your BYOL Workspace image, either PCoIP or WorkSpaces Streaming Protocol
    #            (WSP). To use WSP, specify a value that ends in <code>_WSP</code>. To use PCoIP, specify a value
    #            that does not end in <code>_WSP</code>. </p>
    #
    #            <p>For non-GPU-enabled images (bundles other than Graphics.g4dn, GraphicsPro.g4dn, Graphics,
    #            or GraphicsPro), specify <code>BYOL_REGULAR</code> or <code>BYOL_REGULAR_WSP</code>, depending
    #            on the protocol.</p>
    #            <note>
    #               <p>Use <code>BYOL_GRAPHICS_G4DN</code> ingestion for both Graphics.g4dn and
    #               GraphicsPro.g4dn.</p>
    #            </note>
    #
    # @option params [String] :image_name
    #   <p>The name of the WorkSpace image.</p>
    #
    # @option params [String] :image_description
    #   <p>The description of the WorkSpace image.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags. Each WorkSpaces resource can have a maximum of 50 tags.</p>
    #
    # @option params [Array<String>] :applications
    #   <p>If specified, the version of Microsoft Office to subscribe to. Valid only for Windows 10
    #            BYOL images. For more information about subscribing to Office for BYOL images, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html"> Bring
    #               Your Own Windows Desktop Licenses</a>.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>Although this parameter is an array, only one item is allowed at this time</p>
    #                  </li>
    #                  <li>
    #                     <p>Microsoft Office 2016 application subscription through AWS is currently not supported
    #                     for Graphics.g4dn Bring Your Own License (BYOL) images</p>
    #                  </li>
    #               </ul>
    #            </note>
    #
    # @return [Types::ImportWorkspaceImageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_workspace_image(
    #     ec2_image_id: 'Ec2ImageId', # required
    #     ingestion_process: 'BYOL_REGULAR', # required - accepts ["BYOL_REGULAR", "BYOL_GRAPHICS", "BYOL_GRAPHICSPRO", "BYOL_GRAPHICS_G4DN", "BYOL_REGULAR_WSP"]
    #     image_name: 'ImageName', # required
    #     image_description: 'ImageDescription', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ],
    #     applications: [
    #       'Microsoft_Office_2016' # accepts ["Microsoft_Office_2016", "Microsoft_Office_2019"]
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ImportWorkspaceImageOutput
    #   resp.data.image_id #=> String
    #
    def import_workspace_image(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ImportWorkspaceImageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ImportWorkspaceImageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ImportWorkspaceImage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ResourceLimitExceededException, Errors::AccessDeniedException, Errors::InvalidParameterValuesException, Errors::OperationNotSupportedException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::ImportWorkspaceImage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ImportWorkspaceImage,
        stubs: @stubs,
        params_class: Params::ImportWorkspaceImageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :import_workspace_image
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of IP address ranges, specified as IPv4 CIDR blocks, that you can use
    #          for the network management interface when you enable Bring Your Own License (BYOL). </p>
    #          <p>This operation can be run only by Amazon Web Services accounts that are enabled for BYOL.
    #          If your account isn't enabled for BYOL, you'll receive an
    #             <code>AccessDeniedException</code> error.</p>
    #          <p>The management network interface is connected to a secure Amazon WorkSpaces management
    #          network. It is used for interactive streaming of the WorkSpace desktop to Amazon WorkSpaces
    #          clients, and to allow Amazon WorkSpaces to manage the WorkSpace.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAvailableManagementCidrRangesInput}.
    #
    # @option params [String] :management_cidr_range_constraint
    #   <p>The IP address range to search. Specify an IP address range that is compatible with your
    #            network and in CIDR notation (that is, specify the range as an IPv4 CIDR block).</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return.</p>
    #
    # @option params [String] :next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    #
    # @return [Types::ListAvailableManagementCidrRangesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_available_management_cidr_ranges(
    #     management_cidr_range_constraint: 'ManagementCidrRangeConstraint', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAvailableManagementCidrRangesOutput
    #   resp.data.management_cidr_ranges #=> Array<String>
    #   resp.data.management_cidr_ranges[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_available_management_cidr_ranges(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAvailableManagementCidrRangesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAvailableManagementCidrRangesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAvailableManagementCidrRanges
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InvalidParameterValuesException]),
        data_parser: Parsers::ListAvailableManagementCidrRanges
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAvailableManagementCidrRanges,
        stubs: @stubs,
        params_class: Params::ListAvailableManagementCidrRangesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_available_management_cidr_ranges
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Migrates a WorkSpace from one operating system or bundle type to another, while
    #          retaining the data on the user volume.</p>
    #          <p>The migration process recreates the WorkSpace by using a new root volume from the target
    #          bundle image and the user volume from the last available snapshot of the original
    #          WorkSpace. During migration, the original <code>D:\Users\%USERNAME%</code> user profile
    #          folder is renamed to <code>D:\Users\%USERNAME%MMddyyTHHmmss%.NotMigrated</code>. A new
    #             <code>D:\Users\%USERNAME%\</code> folder is generated by the new OS. Certain files in
    #          the old user profile are moved to the new user profile.</p>
    #          <p>For available migration scenarios, details about what happens during migration, and best
    #          practices, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/migrate-workspaces.html">Migrate a
    #          WorkSpace</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::MigrateWorkspaceInput}.
    #
    # @option params [String] :source_workspace_id
    #   <p>The identifier of the WorkSpace to migrate from.</p>
    #
    # @option params [String] :bundle_id
    #   <p>The identifier of the target bundle type to migrate the WorkSpace to.</p>
    #
    # @return [Types::MigrateWorkspaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.migrate_workspace(
    #     source_workspace_id: 'SourceWorkspaceId', # required
    #     bundle_id: 'BundleId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::MigrateWorkspaceOutput
    #   resp.data.source_workspace_id #=> String
    #   resp.data.target_workspace_id #=> String
    #
    def migrate_workspace(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::MigrateWorkspaceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::MigrateWorkspaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::MigrateWorkspace
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ResourceUnavailableException, Errors::InvalidParameterValuesException, Errors::OperationNotSupportedException, Errors::OperationInProgressException]),
        data_parser: Parsers::MigrateWorkspace
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::MigrateWorkspace,
        stubs: @stubs,
        params_class: Params::MigrateWorkspaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :migrate_workspace
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the configuration of Bring Your Own License (BYOL) for the specified
    #          account.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyAccountInput}.
    #
    # @option params [String] :dedicated_tenancy_support
    #   <p>The status of BYOL.</p>
    #
    # @option params [String] :dedicated_tenancy_management_cidr_range
    #   <p>The IP address range, specified as an IPv4 CIDR block, for the management network
    #            interface. Specify an IP address range that is compatible with your network and in CIDR
    #            notation (that is, specify the range as an IPv4 CIDR block). The CIDR block size must be
    #            /16 (for example, 203.0.113.25/16). It must also be specified as available by the
    #               <code>ListAvailableManagementCidrRanges</code> operation.</p>
    #
    # @return [Types::ModifyAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_account(
    #     dedicated_tenancy_support: 'ENABLED', # accepts ["ENABLED"]
    #     dedicated_tenancy_management_cidr_range: 'DedicatedTenancyManagementCidrRange'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyAccountOutput
    #
    def modify_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ResourceUnavailableException, Errors::InvalidParameterValuesException, Errors::InvalidResourceStateException]),
        data_parser: Parsers::ModifyAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyAccount,
        stubs: @stubs,
        params_class: Params::ModifyAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the properties of the specified Amazon WorkSpaces clients.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyClientPropertiesInput}.
    #
    # @option params [String] :resource_id
    #   <p>The resource identifiers, in the form of directory IDs.</p>
    #
    # @option params [ClientProperties] :client_properties
    #   <p>Information about the Amazon WorkSpaces client.</p>
    #
    # @return [Types::ModifyClientPropertiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_client_properties(
    #     resource_id: 'ResourceId', # required
    #     client_properties: {
    #       reconnect_enabled: 'ENABLED' # accepts ["ENABLED", "DISABLED"]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyClientPropertiesOutput
    #
    def modify_client_properties(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyClientPropertiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyClientPropertiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyClientProperties
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InvalidParameterValuesException]),
        data_parser: Parsers::ModifyClientProperties
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyClientProperties,
        stubs: @stubs,
        params_class: Params::ModifyClientPropertiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_client_properties
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the self-service WorkSpace management capabilities for your users. For more
    #          information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/enable-user-self-service-workspace-management.html">Enable Self-Service WorkSpace Management Capabilities for Your Users</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifySelfservicePermissionsInput}.
    #
    # @option params [String] :resource_id
    #   <p>The identifier of the directory.</p>
    #
    # @option params [SelfservicePermissions] :selfservice_permissions
    #   <p>The permissions to enable or disable self-service capabilities.</p>
    #
    # @return [Types::ModifySelfservicePermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_selfservice_permissions(
    #     resource_id: 'ResourceId', # required
    #     selfservice_permissions: {
    #       restart_workspace: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #       increase_volume_size: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #       change_compute_type: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #       switch_running_mode: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #       rebuild_workspace: 'ENABLED' # accepts ["ENABLED", "DISABLED"]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifySelfservicePermissionsOutput
    #
    def modify_selfservice_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifySelfservicePermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifySelfservicePermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifySelfservicePermissions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InvalidParameterValuesException]),
        data_parser: Parsers::ModifySelfservicePermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifySelfservicePermissions,
        stubs: @stubs,
        params_class: Params::ModifySelfservicePermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_selfservice_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Specifies which devices and operating systems users can use to access their WorkSpaces.
    #          For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/update-directory-details.html#control-device-access">
    #             Control Device Access</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyWorkspaceAccessPropertiesInput}.
    #
    # @option params [String] :resource_id
    #   <p>The identifier of the directory.</p>
    #
    # @option params [WorkspaceAccessProperties] :workspace_access_properties
    #   <p>The device types and operating systems to enable or disable for access.</p>
    #
    # @return [Types::ModifyWorkspaceAccessPropertiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_workspace_access_properties(
    #     resource_id: 'ResourceId', # required
    #     workspace_access_properties: {
    #       device_type_windows: 'ALLOW', # accepts ["ALLOW", "DENY"]
    #       device_type_osx: 'ALLOW', # accepts ["ALLOW", "DENY"]
    #       device_type_web: 'ALLOW', # accepts ["ALLOW", "DENY"]
    #       device_type_ios: 'ALLOW', # accepts ["ALLOW", "DENY"]
    #       device_type_android: 'ALLOW', # accepts ["ALLOW", "DENY"]
    #       device_type_chrome_os: 'ALLOW', # accepts ["ALLOW", "DENY"]
    #       device_type_zero_client: 'ALLOW', # accepts ["ALLOW", "DENY"]
    #       device_type_linux: 'ALLOW' # accepts ["ALLOW", "DENY"]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyWorkspaceAccessPropertiesOutput
    #
    def modify_workspace_access_properties(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyWorkspaceAccessPropertiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyWorkspaceAccessPropertiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyWorkspaceAccessProperties
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
        data_parser: Parsers::ModifyWorkspaceAccessProperties
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyWorkspaceAccessProperties,
        stubs: @stubs,
        params_class: Params::ModifyWorkspaceAccessPropertiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_workspace_access_properties
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modify the default properties used to create WorkSpaces.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyWorkspaceCreationPropertiesInput}.
    #
    # @option params [String] :resource_id
    #   <p>The identifier of the directory.</p>
    #
    # @option params [WorkspaceCreationProperties] :workspace_creation_properties
    #   <p>The default properties for creating WorkSpaces.</p>
    #
    # @return [Types::ModifyWorkspaceCreationPropertiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_workspace_creation_properties(
    #     resource_id: 'ResourceId', # required
    #     workspace_creation_properties: {
    #       enable_work_docs: false,
    #       enable_internet_access: false,
    #       default_ou: 'DefaultOu',
    #       custom_security_group_id: 'CustomSecurityGroupId',
    #       user_enabled_as_local_administrator: false,
    #       enable_maintenance_mode: false
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyWorkspaceCreationPropertiesOutput
    #
    def modify_workspace_creation_properties(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyWorkspaceCreationPropertiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyWorkspaceCreationPropertiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyWorkspaceCreationProperties
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InvalidParameterValuesException, Errors::OperationNotSupportedException]),
        data_parser: Parsers::ModifyWorkspaceCreationProperties
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyWorkspaceCreationProperties,
        stubs: @stubs,
        params_class: Params::ModifyWorkspaceCreationPropertiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_workspace_creation_properties
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies the specified WorkSpace properties. For important information about how to
    #          modify the size of the root and user volumes, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/modify-workspaces.html"> Modify a WorkSpace</a>.
    #       </p>
    #
    # @param [Hash] params
    #   See {Types::ModifyWorkspacePropertiesInput}.
    #
    # @option params [String] :workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    #
    # @option params [WorkspaceProperties] :workspace_properties
    #   <p>The properties of the WorkSpace.</p>
    #
    # @return [Types::ModifyWorkspacePropertiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_workspace_properties(
    #     workspace_id: 'WorkspaceId', # required
    #     workspace_properties: {
    #       running_mode: 'AUTO_STOP', # accepts ["AUTO_STOP", "ALWAYS_ON"]
    #       running_mode_auto_stop_timeout_in_minutes: 1,
    #       root_volume_size_gib: 1,
    #       user_volume_size_gib: 1,
    #       compute_type_name: 'VALUE' # accepts ["VALUE", "STANDARD", "PERFORMANCE", "POWER", "GRAPHICS", "POWERPRO", "GRAPHICSPRO", "GRAPHICS_G4DN", "GRAPHICSPRO_G4DN"]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyWorkspacePropertiesOutput
    #
    def modify_workspace_properties(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyWorkspacePropertiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyWorkspacePropertiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyWorkspaceProperties
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ResourceUnavailableException, Errors::InvalidParameterValuesException, Errors::UnsupportedWorkspaceConfigurationException, Errors::OperationInProgressException, Errors::InvalidResourceStateException]),
        data_parser: Parsers::ModifyWorkspaceProperties
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyWorkspaceProperties,
        stubs: @stubs,
        params_class: Params::ModifyWorkspacePropertiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_workspace_properties
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the state of the specified WorkSpace.</p>
    #          <p>To maintain a WorkSpace without being interrupted, set the WorkSpace state to
    #             <code>ADMIN_MAINTENANCE</code>. WorkSpaces in this state do not respond to requests to
    #          reboot, stop, start, rebuild, or restore. An AutoStop WorkSpace in this state is not
    #          stopped. Users cannot log into a WorkSpace in the <code>ADMIN_MAINTENANCE</code>
    #          state.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyWorkspaceStateInput}.
    #
    # @option params [String] :workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    #
    # @option params [String] :workspace_state
    #   <p>The WorkSpace state.</p>
    #
    # @return [Types::ModifyWorkspaceStateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_workspace_state(
    #     workspace_id: 'WorkspaceId', # required
    #     workspace_state: 'AVAILABLE' # required - accepts ["AVAILABLE", "ADMIN_MAINTENANCE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyWorkspaceStateOutput
    #
    def modify_workspace_state(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyWorkspaceStateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyWorkspaceStateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyWorkspaceState
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterValuesException, Errors::InvalidResourceStateException]),
        data_parser: Parsers::ModifyWorkspaceState
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyWorkspaceState,
        stubs: @stubs,
        params_class: Params::ModifyWorkspaceStateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_workspace_state
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Reboots the specified WorkSpaces.</p>
    #          <p>You cannot reboot a WorkSpace unless its state is <code>AVAILABLE</code> or
    #             <code>UNHEALTHY</code>.</p>
    #          <p>This operation is asynchronous and returns before the WorkSpaces have rebooted.</p>
    #
    # @param [Hash] params
    #   See {Types::RebootWorkspacesInput}.
    #
    # @option params [Array<RebootRequest>] :reboot_workspace_requests
    #   <p>The WorkSpaces to reboot. You can specify up to 25 WorkSpaces.</p>
    #
    # @return [Types::RebootWorkspacesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reboot_workspaces(
    #     reboot_workspace_requests: [
    #       {
    #         workspace_id: 'WorkspaceId' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RebootWorkspacesOutput
    #   resp.data.failed_requests #=> Array<FailedWorkspaceChangeRequest>
    #   resp.data.failed_requests[0] #=> Types::FailedWorkspaceChangeRequest
    #   resp.data.failed_requests[0].workspace_id #=> String
    #   resp.data.failed_requests[0].error_code #=> String
    #   resp.data.failed_requests[0].error_message #=> String
    #
    def reboot_workspaces(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RebootWorkspacesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RebootWorkspacesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RebootWorkspaces
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
        data_parser: Parsers::RebootWorkspaces
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RebootWorkspaces,
        stubs: @stubs,
        params_class: Params::RebootWorkspacesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reboot_workspaces
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Rebuilds the specified WorkSpace.</p>
    #          <p>You cannot rebuild a WorkSpace unless its state is <code>AVAILABLE</code>,
    #             <code>ERROR</code>, <code>UNHEALTHY</code>, <code>STOPPED</code>, or
    #             <code>REBOOTING</code>.</p>
    #          <p>Rebuilding a WorkSpace is a potentially destructive action that can result in the loss
    #          of data. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/reset-workspace.html">Rebuild a
    #          WorkSpace</a>.</p>
    #          <p>This operation is asynchronous and returns before the WorkSpaces have been completely
    #          rebuilt.</p>
    #
    # @param [Hash] params
    #   See {Types::RebuildWorkspacesInput}.
    #
    # @option params [Array<RebuildRequest>] :rebuild_workspace_requests
    #   <p>The WorkSpace to rebuild. You can specify a single WorkSpace.</p>
    #
    # @return [Types::RebuildWorkspacesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.rebuild_workspaces(
    #     rebuild_workspace_requests: [
    #       {
    #         workspace_id: 'WorkspaceId' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RebuildWorkspacesOutput
    #   resp.data.failed_requests #=> Array<FailedWorkspaceChangeRequest>
    #   resp.data.failed_requests[0] #=> Types::FailedWorkspaceChangeRequest
    #   resp.data.failed_requests[0].workspace_id #=> String
    #   resp.data.failed_requests[0].error_code #=> String
    #   resp.data.failed_requests[0].error_message #=> String
    #
    def rebuild_workspaces(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RebuildWorkspacesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RebuildWorkspacesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RebuildWorkspaces
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
        data_parser: Parsers::RebuildWorkspaces
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RebuildWorkspaces,
        stubs: @stubs,
        params_class: Params::RebuildWorkspacesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :rebuild_workspaces
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers the specified directory. This operation is asynchronous and returns before the
    #          WorkSpace directory is registered. If this is the first time you are registering a
    #          directory, you will need to create the workspaces_DefaultRole role before you can register
    #          a directory. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/workspaces-access-control.html#create-default-role">
    #             Creating the workspaces_DefaultRole Role</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterWorkspaceDirectoryInput}.
    #
    # @option params [String] :directory_id
    #   <p>The identifier of the directory. You cannot register a directory if it does not have a
    #            status of Active. If the directory does not have a status of Active, you will receive an
    #            InvalidResourceStateException error. If you have already registered the maximum number of
    #            directories that you can register with Amazon WorkSpaces, you will receive a
    #            ResourceLimitExceededException error. Deregister directories that you are not using for
    #            WorkSpaces, and try again.</p>
    #
    # @option params [Array<String>] :subnet_ids
    #   <p>The identifiers of the subnets for your virtual private cloud (VPC). Make sure that the
    #            subnets are in supported Availability Zones. The subnets must also be in separate
    #            Availability Zones. If these conditions are not met, you will receive an
    #            OperationNotSupportedException error.</p>
    #
    # @option params [Boolean] :enable_work_docs
    #   <p>Indicates whether Amazon WorkDocs is enabled or disabled. If you have enabled this
    #            parameter and WorkDocs is not available in the Region, you will receive an
    #            OperationNotSupportedException error. Set <code>EnableWorkDocs</code> to disabled, and try
    #            again.</p>
    #
    # @option params [Boolean] :enable_self_service
    #   <p>Indicates whether self-service capabilities are enabled or disabled.</p>
    #
    # @option params [String] :tenancy
    #   <p>Indicates whether your WorkSpace directory is dedicated or shared. To use Bring Your Own
    #            License (BYOL) images, this value must be set to <code>DEDICATED</code> and your Amazon Web Services account must be enabled for BYOL. If your account has not been enabled for
    #            BYOL, you will receive an InvalidParameterValuesException error. For more information about
    #            BYOL images, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html">Bring Your Own Windows
    #               Desktop Images</a>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags associated with the directory.</p>
    #
    # @return [Types::RegisterWorkspaceDirectoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_workspace_directory(
    #     directory_id: 'DirectoryId', # required
    #     subnet_ids: [
    #       'member'
    #     ],
    #     enable_work_docs: false, # required
    #     enable_self_service: false,
    #     tenancy: 'DEDICATED', # accepts ["DEDICATED", "SHARED"]
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterWorkspaceDirectoryOutput
    #
    def register_workspace_directory(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterWorkspaceDirectoryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterWorkspaceDirectoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterWorkspaceDirectory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ResourceLimitExceededException, Errors::UnsupportedNetworkConfigurationException, Errors::AccessDeniedException, Errors::InvalidParameterValuesException, Errors::OperationNotSupportedException, Errors::WorkspacesDefaultRoleNotFoundException, Errors::InvalidResourceStateException]),
        data_parser: Parsers::RegisterWorkspaceDirectory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterWorkspaceDirectory,
        stubs: @stubs,
        params_class: Params::RegisterWorkspaceDirectoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_workspace_directory
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Restores the specified WorkSpace to its last known healthy state.</p>
    #          <p>You cannot restore a WorkSpace unless its state is <code> AVAILABLE</code>,
    #             <code>ERROR</code>, <code>UNHEALTHY</code>, or <code>STOPPED</code>.</p>
    #          <p>Restoring a WorkSpace is a potentially destructive action that can result in the loss of
    #          data. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/restore-workspace.html">Restore a
    #          WorkSpace</a>.</p>
    #          <p>This operation is asynchronous and returns before the WorkSpace is completely
    #          restored.</p>
    #
    # @param [Hash] params
    #   See {Types::RestoreWorkspaceInput}.
    #
    # @option params [String] :workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    #
    # @return [Types::RestoreWorkspaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_workspace(
    #     workspace_id: 'WorkspaceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RestoreWorkspaceOutput
    #
    def restore_workspace(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RestoreWorkspaceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RestoreWorkspaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RestoreWorkspace
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InvalidParameterValuesException]),
        data_parser: Parsers::RestoreWorkspace
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RestoreWorkspace,
        stubs: @stubs,
        params_class: Params::RestoreWorkspaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :restore_workspace
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes one or more rules from the specified IP access control group.</p>
    #
    # @param [Hash] params
    #   See {Types::RevokeIpRulesInput}.
    #
    # @option params [String] :group_id
    #   <p>The identifier of the group.</p>
    #
    # @option params [Array<String>] :user_rules
    #   <p>The rules to remove from the group.</p>
    #
    # @return [Types::RevokeIpRulesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_ip_rules(
    #     group_id: 'GroupId', # required
    #     user_rules: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RevokeIpRulesOutput
    #
    def revoke_ip_rules(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RevokeIpRulesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RevokeIpRulesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RevokeIpRules
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InvalidParameterValuesException, Errors::InvalidResourceStateException]),
        data_parser: Parsers::RevokeIpRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RevokeIpRules,
        stubs: @stubs,
        params_class: Params::RevokeIpRulesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :revoke_ip_rules
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts the specified WorkSpaces.</p>
    #          <p>You cannot start a WorkSpace unless it has a running mode of <code>AutoStop</code> and a
    #          state of <code>STOPPED</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::StartWorkspacesInput}.
    #
    # @option params [Array<StartRequest>] :start_workspace_requests
    #   <p>The WorkSpaces to start. You can specify up to 25 WorkSpaces.</p>
    #
    # @return [Types::StartWorkspacesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_workspaces(
    #     start_workspace_requests: [
    #       {
    #         workspace_id: 'WorkspaceId'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartWorkspacesOutput
    #   resp.data.failed_requests #=> Array<FailedWorkspaceChangeRequest>
    #   resp.data.failed_requests[0] #=> Types::FailedWorkspaceChangeRequest
    #   resp.data.failed_requests[0].workspace_id #=> String
    #   resp.data.failed_requests[0].error_code #=> String
    #   resp.data.failed_requests[0].error_message #=> String
    #
    def start_workspaces(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartWorkspacesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartWorkspacesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartWorkspaces
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
        data_parser: Parsers::StartWorkspaces
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartWorkspaces,
        stubs: @stubs,
        params_class: Params::StartWorkspacesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_workspaces
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Stops the specified WorkSpaces.</p>
    #          <p>You cannot stop a WorkSpace unless it has a running mode of <code>AutoStop</code> and a
    #          state of <code>AVAILABLE</code>, <code>IMPAIRED</code>, <code>UNHEALTHY</code>, or
    #             <code>ERROR</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::StopWorkspacesInput}.
    #
    # @option params [Array<StopRequest>] :stop_workspace_requests
    #   <p>The WorkSpaces to stop. You can specify up to 25 WorkSpaces.</p>
    #
    # @return [Types::StopWorkspacesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_workspaces(
    #     stop_workspace_requests: [
    #       {
    #         workspace_id: 'WorkspaceId'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopWorkspacesOutput
    #   resp.data.failed_requests #=> Array<FailedWorkspaceChangeRequest>
    #   resp.data.failed_requests[0] #=> Types::FailedWorkspaceChangeRequest
    #   resp.data.failed_requests[0].workspace_id #=> String
    #   resp.data.failed_requests[0].error_code #=> String
    #   resp.data.failed_requests[0].error_message #=> String
    #
    def stop_workspaces(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopWorkspacesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopWorkspacesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopWorkspaces
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
        data_parser: Parsers::StopWorkspaces
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopWorkspaces,
        stubs: @stubs,
        params_class: Params::StopWorkspacesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_workspaces
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Terminates the specified WorkSpaces.</p>
    #          <important>
    #             <p>Terminating a WorkSpace is a permanent action and cannot be undone. The user's data
    #             is destroyed. If you need to archive any user data, contact Amazon Web Services Support before
    #             terminating the WorkSpace.</p>
    #          </important>
    #          <p>You can terminate a WorkSpace that is in any state except <code>SUSPENDED</code>.</p>
    #          <p>This operation is asynchronous and returns before the WorkSpaces have been completely
    #          terminated. After a WorkSpace is terminated, the <code>TERMINATED</code> state is returned
    #          only briefly before the WorkSpace directory metadata is cleaned up, so this state is rarely
    #          returned. To confirm that a WorkSpace is terminated, check for the WorkSpace ID by using
    #             <a href="https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaces.html">
    #             DescribeWorkSpaces</a>. If the WorkSpace ID isn't returned, then the WorkSpace has
    #          been successfully terminated.</p>
    #          <note>
    #             <p>Simple AD and AD Connector are made available to you free of charge to use with
    #             WorkSpaces. If there are no WorkSpaces being used with your Simple AD or AD Connector
    #             directory for 30 consecutive days, this directory will be automatically deregistered for
    #             use with Amazon WorkSpaces, and you will be charged for this directory as per the <a href="http://aws.amazon.com/directoryservice/pricing/">Directory Service pricing
    #                terms</a>.</p>
    #             <p>To delete empty directories, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/delete-workspaces-directory.html"> Delete the
    #                Directory for Your WorkSpaces</a>. If you delete your Simple AD or AD Connector
    #             directory, you can always create a new one when you want to start using WorkSpaces
    #             again.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::TerminateWorkspacesInput}.
    #
    # @option params [Array<TerminateRequest>] :terminate_workspace_requests
    #   <p>The WorkSpaces to terminate. You can specify up to 25 WorkSpaces.</p>
    #
    # @return [Types::TerminateWorkspacesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_workspaces(
    #     terminate_workspace_requests: [
    #       {
    #         workspace_id: 'WorkspaceId' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TerminateWorkspacesOutput
    #   resp.data.failed_requests #=> Array<FailedWorkspaceChangeRequest>
    #   resp.data.failed_requests[0] #=> Types::FailedWorkspaceChangeRequest
    #   resp.data.failed_requests[0].workspace_id #=> String
    #   resp.data.failed_requests[0].error_code #=> String
    #   resp.data.failed_requests[0].error_message #=> String
    #
    def terminate_workspaces(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TerminateWorkspacesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TerminateWorkspacesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TerminateWorkspaces
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
        data_parser: Parsers::TerminateWorkspaces
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TerminateWorkspaces,
        stubs: @stubs,
        params_class: Params::TerminateWorkspacesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :terminate_workspaces
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a Amazon Connect client add-in. Use this action to update the name and
    #          endpoint URL of a Amazon Connect client add-in.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateConnectClientAddInInput}.
    #
    # @option params [String] :add_in_id
    #   <p>The identifier of the client add-in to update.</p>
    #
    # @option params [String] :resource_id
    #   <p>The directory identifier for which the client add-in is configured.</p>
    #
    # @option params [String] :name
    #   <p>The name of the client add-in.</p>
    #
    # @option params [String] :url
    #   <p>The endpoint URL of the Amazon Connect client add-in.</p>
    #
    # @return [Types::UpdateConnectClientAddInOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_connect_client_add_in(
    #     add_in_id: 'AddInId', # required
    #     resource_id: 'ResourceId', # required
    #     name: 'Name',
    #     url: 'URL'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateConnectClientAddInOutput
    #
    def update_connect_client_add_in(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateConnectClientAddInInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateConnectClientAddInInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateConnectClientAddIn
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InvalidParameterValuesException]),
        data_parser: Parsers::UpdateConnectClientAddIn
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateConnectClientAddIn,
        stubs: @stubs,
        params_class: Params::UpdateConnectClientAddInOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_connect_client_add_in
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Shares or unshares a connection alias with one account by specifying whether that
    #          account has permission to associate the connection alias with a directory. If the
    #          association permission is granted, the connection alias is shared with that account. If the
    #          association permission is revoked, the connection alias is unshared with the account. For
    #          more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html"> Cross-Region
    #             Redirection for Amazon WorkSpaces</a>.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>Before performing this operation, call <a href="https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html">
    #                      DescribeConnectionAliases</a> to make sure that the current state of the
    #                   connection alias is <code>CREATED</code>.</p>
    #                </li>
    #                <li>
    #                   <p>To delete a connection alias that has been shared, the shared account must
    #                   first disassociate the connection alias from any directories it has been
    #                   associated with. Then you must unshare the connection alias from the account it
    #                   has been shared with. You can delete a connection alias only after it is no longer
    #                   shared with any accounts or associated with any directories.</p>
    #                </li>
    #             </ul>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateConnectionAliasPermissionInput}.
    #
    # @option params [String] :alias_id
    #   <p>The identifier of the connection alias that you want to update permissions for.</p>
    #
    # @option params [ConnectionAliasPermission] :connection_alias_permission
    #   <p>Indicates whether to share or unshare the connection alias with the specified Amazon Web Services account.</p>
    #
    # @return [Types::UpdateConnectionAliasPermissionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_connection_alias_permission(
    #     alias_id: 'AliasId', # required
    #     connection_alias_permission: {
    #       shared_account_id: 'SharedAccountId', # required
    #       allow_association: false # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateConnectionAliasPermissionOutput
    #
    def update_connection_alias_permission(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateConnectionAliasPermissionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateConnectionAliasPermissionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateConnectionAliasPermission
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ResourceLimitExceededException, Errors::AccessDeniedException, Errors::InvalidParameterValuesException, Errors::OperationNotSupportedException, Errors::InvalidResourceStateException, Errors::ResourceAssociatedException]),
        data_parser: Parsers::UpdateConnectionAliasPermission
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateConnectionAliasPermission,
        stubs: @stubs,
        params_class: Params::UpdateConnectionAliasPermissionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_connection_alias_permission
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Replaces the current rules of the specified IP access control group with the specified
    #          rules.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRulesOfIpGroupInput}.
    #
    # @option params [String] :group_id
    #   <p>The identifier of the group.</p>
    #
    # @option params [Array<IpRuleItem>] :user_rules
    #   <p>One or more rules.</p>
    #
    # @return [Types::UpdateRulesOfIpGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_rules_of_ip_group(
    #     group_id: 'GroupId', # required
    #     user_rules: [
    #       {
    #         ip_rule: 'ipRule',
    #         rule_desc: 'ruleDesc'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRulesOfIpGroupOutput
    #
    def update_rules_of_ip_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRulesOfIpGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRulesOfIpGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRulesOfIpGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ResourceLimitExceededException, Errors::AccessDeniedException, Errors::InvalidParameterValuesException, Errors::InvalidResourceStateException]),
        data_parser: Parsers::UpdateRulesOfIpGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRulesOfIpGroup,
        stubs: @stubs,
        params_class: Params::UpdateRulesOfIpGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_rules_of_ip_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a WorkSpace bundle with a new image. For more information about updating WorkSpace bundles, see
    #          <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/update-custom-bundle.html">
    #             Update a Custom WorkSpaces Bundle</a>.</p>
    #
    #          <important>
    #             <p>Existing WorkSpaces aren't automatically updated when you update the bundle that they're
    #             based on. To update existing WorkSpaces that are based on a bundle that you've updated, you
    #             must either rebuild the WorkSpaces or delete and recreate them.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::UpdateWorkspaceBundleInput}.
    #
    # @option params [String] :bundle_id
    #   <p>The identifier of the bundle.</p>
    #
    # @option params [String] :image_id
    #   <p>The identifier of the image.</p>
    #
    # @return [Types::UpdateWorkspaceBundleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workspace_bundle(
    #     bundle_id: 'BundleId',
    #     image_id: 'ImageId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateWorkspaceBundleOutput
    #
    def update_workspace_bundle(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateWorkspaceBundleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateWorkspaceBundleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateWorkspaceBundle
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ResourceUnavailableException, Errors::InvalidParameterValuesException]),
        data_parser: Parsers::UpdateWorkspaceBundle
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateWorkspaceBundle,
        stubs: @stubs,
        params_class: Params::UpdateWorkspaceBundleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_workspace_bundle
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Shares or unshares an image with one account in the same Amazon Web Services Region by
    #          specifying whether that account has permission to copy the image. If the copy image
    #          permission is granted, the image is shared with that account. If the copy image permission
    #          is revoked, the image is unshared with the account.</p>
    #          <p>After an image has been shared, the recipient account can copy the image to other
    #          Regions as needed.</p>
    #          <p>In the China (Ningxia) Region, you can copy images only within the same Region.</p>
    #          <p>In Amazon Web Services GovCloud (US), to copy images to and from other Regions, contact Amazon Web Services Support.</p>
    #          <p>For more information about sharing images, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/share-custom-image.html"> Share or Unshare a Custom
    #             WorkSpaces Image</a>.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>To delete an image that has been shared, you must unshare the image before you
    #                   delete it.</p>
    #                </li>
    #                <li>
    #                   <p>Sharing Bring Your Own License (BYOL) images across Amazon Web Services accounts
    #                   isn't supported at this time in Amazon Web Services GovCloud (US). To share BYOL images
    #                   across accounts in Amazon Web Services GovCloud (US), contact Amazon Web Services Support.</p>
    #                </li>
    #             </ul>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateWorkspaceImagePermissionInput}.
    #
    # @option params [String] :image_id
    #   <p>The identifier of the image.</p>
    #
    # @option params [Boolean] :allow_copy_image
    #   <p>The permission to copy the image. This permission can be revoked only after an image has
    #            been shared.</p>
    #
    # @option params [String] :shared_account_id
    #   <p>The identifier of the Amazon Web Services account to share or unshare the image
    #            with.</p>
    #            <important>
    #               <p>Before sharing the image, confirm that you are sharing to the correct Amazon Web Services account ID.</p>
    #            </important>
    #
    # @return [Types::UpdateWorkspaceImagePermissionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workspace_image_permission(
    #     image_id: 'ImageId', # required
    #     allow_copy_image: false, # required
    #     shared_account_id: 'SharedAccountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateWorkspaceImagePermissionOutput
    #
    def update_workspace_image_permission(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateWorkspaceImagePermissionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateWorkspaceImagePermissionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateWorkspaceImagePermission
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ResourceUnavailableException, Errors::InvalidParameterValuesException, Errors::OperationNotSupportedException]),
        data_parser: Parsers::UpdateWorkspaceImagePermission
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateWorkspaceImagePermission,
        stubs: @stubs,
        params_class: Params::UpdateWorkspaceImagePermissionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_workspace_image_permission
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
