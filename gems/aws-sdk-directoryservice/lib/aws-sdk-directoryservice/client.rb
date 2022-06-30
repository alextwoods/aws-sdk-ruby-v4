# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::DirectoryService
  # An API client for DirectoryService_20150416
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Directory Service</fullname>
  #          <p>Directory Service is a web service that makes it easy for you to setup and run directories in the
  #          Amazon Web Services cloud, or connect your Amazon Web Services resources with an existing self-managed Microsoft Active
  #          Directory. This guide provides detailed information about Directory Service operations, data types,
  #          parameters, and errors. For information about Directory Services features, see <a href="https://aws.amazon.com/directoryservice/">Directory Service</a> and the <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/what_is.html">Directory Service
  #             Administration Guide</a>.</p>
  #          <note>
  #             <p>Amazon Web Services provides SDKs that consist of libraries and sample code for various
  #             programming languages and platforms (Java, Ruby, .Net, iOS, Android, etc.). The SDKs
  #             provide a convenient way to create programmatic access to Directory Service and other Amazon Web Services
  #             services. For more information about the Amazon Web Services SDKs, including how to download and
  #             install them, see <a href="http://aws.amazon.com/tools/">Tools for Amazon Web
  #                Services</a>.</p>
  #          </note>
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
    def initialize(config = AWS::SDK::DirectoryService::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Accepts a directory sharing request that was sent from the directory owner account.</p>
    #
    # @param [Hash] params
    #   See {Types::AcceptSharedDirectoryInput}.
    #
    # @option params [String] :shared_directory_id
    #   <p>Identifier of the shared directory in the directory consumer account. This identifier is
    #         different for each directory owner account. </p>
    #
    # @return [Types::AcceptSharedDirectoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_shared_directory(
    #     shared_directory_id: 'SharedDirectoryId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AcceptSharedDirectoryOutput
    #   resp.data.shared_directory #=> Types::SharedDirectory
    #   resp.data.shared_directory.owner_account_id #=> String
    #   resp.data.shared_directory.owner_directory_id #=> String
    #   resp.data.shared_directory.share_method #=> String, one of ["ORGANIZATIONS", "HANDSHAKE"]
    #   resp.data.shared_directory.shared_account_id #=> String
    #   resp.data.shared_directory.shared_directory_id #=> String
    #   resp.data.shared_directory.share_status #=> String, one of ["Shared", "PendingAcceptance", "Rejected", "Rejecting", "RejectFailed", "Sharing", "ShareFailed", "Deleted", "Deleting"]
    #   resp.data.shared_directory.share_notes #=> String
    #   resp.data.shared_directory.created_date_time #=> Time
    #   resp.data.shared_directory.last_updated_date_time #=> Time
    #
    def accept_shared_directory(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AcceptSharedDirectoryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AcceptSharedDirectoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AcceptSharedDirectory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::DirectoryAlreadySharedException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::AcceptSharedDirectory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AcceptSharedDirectory,
        stubs: @stubs,
        params_class: Params::AcceptSharedDirectoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :accept_shared_directory
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>If the DNS server for your self-managed domain uses a publicly addressable IP address,
    #          you must add a CIDR address block to correctly route traffic to and from your Microsoft AD
    #          on Amazon Web Services. <i>AddIpRoutes</i> adds this address block. You can
    #          also use <i>AddIpRoutes</i> to facilitate routing traffic that uses public IP
    #          ranges from your Microsoft AD on Amazon Web Services to a peer VPC. </p>
    #          <p>Before you call <i>AddIpRoutes</i>, ensure that all of the required
    #          permissions have been explicitly granted through a policy. For details about what
    #          permissions are required to run the <i>AddIpRoutes</i> operation, see <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html">Directory Service API Permissions: Actions, Resources, and Conditions Reference</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::AddIpRoutesInput}.
    #
    # @option params [String] :directory_id
    #   <p>Identifier (ID) of the directory to which to add the address block.</p>
    #
    # @option params [Array<IpRoute>] :ip_routes
    #   <p>IP address blocks, using CIDR format, of the traffic to route. This is often the IP
    #            address block of the DNS server used for your self-managed domain.</p>
    #
    # @option params [Boolean] :update_security_group_for_directory_controllers
    #   <p>If set to true, updates the inbound and outbound rules of the security group that has
    #            the description: "Amazon Web Services created security group for <i>directory ID</i>
    #            directory controllers." Following are the new rules: </p>
    #            <p>Inbound:</p>
    #            <ul>
    #               <li>
    #                  <p>Type: Custom UDP Rule, Protocol: UDP, Range: 88, Source: 0.0.0.0/0</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom UDP Rule, Protocol: UDP, Range: 123, Source: 0.0.0.0/0</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom UDP Rule, Protocol: UDP, Range: 138, Source: 0.0.0.0/0</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom UDP Rule, Protocol: UDP, Range: 389, Source: 0.0.0.0/0</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom UDP Rule, Protocol: UDP, Range: 464, Source: 0.0.0.0/0</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom UDP Rule, Protocol: UDP, Range: 445, Source: 0.0.0.0/0</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom TCP Rule, Protocol: TCP, Range: 88, Source: 0.0.0.0/0</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom TCP Rule, Protocol: TCP, Range: 135, Source: 0.0.0.0/0</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom TCP Rule, Protocol: TCP, Range: 445, Source: 0.0.0.0/0</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom TCP Rule, Protocol: TCP, Range: 464, Source: 0.0.0.0/0</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom TCP Rule, Protocol: TCP, Range: 636, Source: 0.0.0.0/0</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom TCP Rule, Protocol: TCP, Range: 1024-65535, Source:
    #                  0.0.0.0/0</p>
    #               </li>
    #               <li>
    #                  <p>Type: Custom TCP Rule, Protocol: TCP, Range: 3268-33269, Source:
    #                  0.0.0.0/0</p>
    #               </li>
    #               <li>
    #                  <p>Type: DNS (UDP), Protocol: UDP, Range: 53, Source: 0.0.0.0/0</p>
    #               </li>
    #               <li>
    #                  <p>Type: DNS (TCP), Protocol: TCP, Range: 53, Source: 0.0.0.0/0</p>
    #               </li>
    #               <li>
    #                  <p>Type: LDAP, Protocol: TCP, Range: 389, Source: 0.0.0.0/0</p>
    #               </li>
    #               <li>
    #                  <p>Type: All ICMP, Protocol: All, Range: N/A, Source: 0.0.0.0/0</p>
    #               </li>
    #            </ul>
    #
    #            <p></p>
    #            <p>Outbound:</p>
    #            <ul>
    #               <li>
    #                  <p>Type: All traffic, Protocol: All, Range: All, Destination: 0.0.0.0/0</p>
    #               </li>
    #            </ul>
    #            <p>These security rules impact an internal network interface that is not exposed
    #            publicly.</p>
    #
    # @return [Types::AddIpRoutesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_ip_routes(
    #     directory_id: 'DirectoryId', # required
    #     ip_routes: [
    #       {
    #         cidr_ip: 'CidrIp',
    #         description: 'Description'
    #       }
    #     ], # required
    #     update_security_group_for_directory_controllers: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddIpRoutesOutput
    #
    def add_ip_routes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddIpRoutesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddIpRoutesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddIpRoutes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::IpRouteLimitExceededException, Errors::EntityAlreadyExistsException, Errors::DirectoryUnavailableException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::AddIpRoutes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddIpRoutes,
        stubs: @stubs,
        params_class: Params::AddIpRoutesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_ip_routes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds two domain controllers in the specified Region for the specified directory.</p>
    #
    # @param [Hash] params
    #   See {Types::AddRegionInput}.
    #
    # @option params [String] :directory_id
    #   <p>The identifier of the directory to which you want to add Region replication.</p>
    #
    # @option params [String] :region_name
    #   <p>The name of the Region where you want to add domain controllers for replication. For
    #         example, <code>us-east-1</code>.</p>
    #
    # @option params [DirectoryVpcSettings] :vpc_settings
    #   <p>Contains VPC information for the <a>CreateDirectory</a> or <a>CreateMicrosoftAD</a> operation.</p>
    #
    # @return [Types::AddRegionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_region(
    #     directory_id: 'DirectoryId', # required
    #     region_name: 'RegionName', # required
    #     vpc_settings: {
    #       vpc_id: 'VpcId', # required
    #       subnet_ids: [
    #         'member'
    #       ] # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddRegionOutput
    #
    def add_region(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddRegionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddRegionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddRegion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::UnsupportedOperationException, Errors::DirectoryUnavailableException, Errors::DirectoryDoesNotExistException, Errors::AccessDeniedException, Errors::RegionLimitExceededException, Errors::InvalidParameterException, Errors::ClientException, Errors::DirectoryAlreadyInRegionException]),
        data_parser: Parsers::AddRegion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddRegion,
        stubs: @stubs,
        params_class: Params::AddRegionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_region
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or overwrites one or more tags for the specified directory. Each directory can
    #       have a maximum of 50 tags. Each tag consists of a key and optional value. Tag keys must be
    #       unique to each resource.</p>
    #
    # @param [Hash] params
    #   See {Types::AddTagsToResourceInput}.
    #
    # @option params [String] :resource_id
    #   <p>Identifier (ID) for the directory to which to add the tag.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be assigned to the directory.</p>
    #
    # @return [Types::AddTagsToResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags_to_resource(
    #     resource_id: 'ResourceId', # required
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
    #   resp.data #=> Types::AddTagsToResourceOutput
    #
    def add_tags_to_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddTagsToResourceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddTagsToResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddTagsToResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::InvalidParameterException, Errors::TagLimitExceededException, Errors::ClientException]),
        data_parser: Parsers::AddTagsToResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddTagsToResource,
        stubs: @stubs,
        params_class: Params::AddTagsToResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_tags_to_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels an in-progress schema extension to a Microsoft AD directory. Once a schema
    #       extension has started replicating to all domain controllers, the task can no longer be
    #       canceled. A schema extension can be canceled during any of the following states;
    #         <code>Initializing</code>, <code>CreatingSnapshot</code>, and
    #       <code>UpdatingSchema</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelSchemaExtensionInput}.
    #
    # @option params [String] :directory_id
    #   <p>The identifier of the directory whose schema extension will be canceled.</p>
    #
    # @option params [String] :schema_extension_id
    #   <p>The identifier of the schema extension that will be canceled.</p>
    #
    # @return [Types::CancelSchemaExtensionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_schema_extension(
    #     directory_id: 'DirectoryId', # required
    #     schema_extension_id: 'SchemaExtensionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelSchemaExtensionOutput
    #
    def cancel_schema_extension(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelSchemaExtensionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelSchemaExtensionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelSchemaExtension
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::ClientException]),
        data_parser: Parsers::CancelSchemaExtension
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelSchemaExtension,
        stubs: @stubs,
        params_class: Params::CancelSchemaExtensionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_schema_extension
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an AD Connector to connect to a self-managed directory.</p>
    #          <p>Before you call <code>ConnectDirectory</code>, ensure that all of the required permissions
    #       have been explicitly granted through a policy. For details about what permissions are required
    #       to run the <code>ConnectDirectory</code> operation, see <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html">Directory Service API Permissions: Actions, Resources, and Conditions
    #       Reference</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ConnectDirectoryInput}.
    #
    # @option params [String] :name
    #   <p>The fully qualified name of your self-managed directory, such as
    #           <code>corp.example.com</code>.</p>
    #
    # @option params [String] :short_name
    #   <p>The NetBIOS name of your self-managed directory, such as <code>CORP</code>.</p>
    #
    # @option params [String] :password
    #   <p>The password for your self-managed user account.</p>
    #
    # @option params [String] :description
    #   <p>A description for the directory.</p>
    #
    # @option params [String] :size
    #   <p>The size of the directory.</p>
    #
    # @option params [DirectoryConnectSettings] :connect_settings
    #   <p>A <a>DirectoryConnectSettings</a> object that contains additional information
    #         for the operation.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be assigned to AD Connector.</p>
    #
    # @return [Types::ConnectDirectoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.connect_directory(
    #     name: 'Name', # required
    #     short_name: 'ShortName',
    #     password: 'Password', # required
    #     description: 'Description',
    #     size: 'Small', # required - accepts ["Small", "Large"]
    #     connect_settings: {
    #       vpc_id: 'VpcId', # required
    #       subnet_ids: [
    #         'member'
    #       ], # required
    #       customer_dns_ips: [
    #         'member'
    #       ], # required
    #       customer_user_name: 'CustomerUserName' # required
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
    #   resp.data #=> Types::ConnectDirectoryOutput
    #   resp.data.directory_id #=> String
    #
    def connect_directory(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ConnectDirectoryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ConnectDirectoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ConnectDirectory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceException, Errors::DirectoryLimitExceededException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::ConnectDirectory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ConnectDirectory,
        stubs: @stubs,
        params_class: Params::ConnectDirectoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :connect_directory
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an alias for a directory and assigns the alias to the directory. The alias is used
    #          to construct the access URL for the directory, such as
    #             <code>http://<alias>.awsapps.com</code>.</p>
    #          <important>
    #             <p>After an alias has been created, it cannot be deleted or reused, so this operation should only be used when absolutely necessary.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::CreateAliasInput}.
    #
    # @option params [String] :directory_id
    #   <p>The identifier of the directory for which to create the alias.</p>
    #
    # @option params [String] :alias
    #   <p>The requested alias.</p>
    #            <p>The alias must be unique amongst all aliases in Amazon Web Services. This operation throws an
    #               <code>EntityAlreadyExistsException</code> error if the alias already exists.</p>
    #
    # @return [Types::CreateAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_alias(
    #     directory_id: 'DirectoryId', # required
    #     alias: 'Alias' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAliasOutput
    #   resp.data.directory_id #=> String
    #   resp.data.alias #=> String
    #
    def create_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAliasInput.build(params)
      response_body = StringIO.new
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::EntityAlreadyExistsException, Errors::InvalidParameterException, Errors::ClientException]),
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

    # <p>Creates an Active Directory computer object in the specified directory.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateComputerInput}.
    #
    # @option params [String] :directory_id
    #   <p>The identifier of the directory in which to create the computer account.</p>
    #
    # @option params [String] :computer_name
    #   <p>The name of the computer account.</p>
    #
    # @option params [String] :password
    #   <p>A one-time password that is used to join the computer to the directory. You should generate a random, strong password to use for this parameter.</p>
    #
    # @option params [String] :organizational_unit_distinguished_name
    #   <p>The fully-qualified distinguished name of the organizational unit to place the computer account in.</p>
    #
    # @option params [Array<Attribute>] :computer_attributes
    #   <p>An array of <a>Attribute</a> objects that contain any LDAP attributes to apply to the
    #               computer account.</p>
    #
    # @return [Types::CreateComputerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_computer(
    #     directory_id: 'DirectoryId', # required
    #     computer_name: 'ComputerName', # required
    #     password: 'Password', # required
    #     organizational_unit_distinguished_name: 'OrganizationalUnitDistinguishedName',
    #     computer_attributes: [
    #       {
    #         name: 'Name',
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateComputerOutput
    #   resp.data.computer #=> Types::Computer
    #   resp.data.computer.computer_id #=> String
    #   resp.data.computer.computer_name #=> String
    #   resp.data.computer.computer_attributes #=> Array<Attribute>
    #   resp.data.computer.computer_attributes[0] #=> Types::Attribute
    #   resp.data.computer.computer_attributes[0].name #=> String
    #   resp.data.computer.computer_attributes[0].value #=> String
    #
    def create_computer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateComputerInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateComputerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateComputer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::UnsupportedOperationException, Errors::EntityAlreadyExistsException, Errors::AuthenticationFailedException, Errors::DirectoryUnavailableException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::CreateComputer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateComputer,
        stubs: @stubs,
        params_class: Params::CreateComputerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_computer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a conditional forwarder associated with your Amazon Web Services directory. Conditional
    #       forwarders are required in order to set up a trust relationship with another domain. The
    #       conditional forwarder points to the trusted domain.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateConditionalForwarderInput}.
    #
    # @option params [String] :directory_id
    #   <p>The directory ID of the Amazon Web Services directory for which you are creating the conditional
    #         forwarder.</p>
    #
    # @option params [String] :remote_domain_name
    #   <p>The fully qualified domain name (FQDN) of the remote domain with which you will set up
    #         a trust relationship.</p>
    #
    # @option params [Array<String>] :dns_ip_addrs
    #   <p>The IP addresses of the remote DNS server associated with RemoteDomainName.</p>
    #
    # @return [Types::CreateConditionalForwarderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_conditional_forwarder(
    #     directory_id: 'DirectoryId', # required
    #     remote_domain_name: 'RemoteDomainName', # required
    #     dns_ip_addrs: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateConditionalForwarderOutput
    #
    def create_conditional_forwarder(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateConditionalForwarderInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateConditionalForwarderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateConditionalForwarder
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::UnsupportedOperationException, Errors::EntityAlreadyExistsException, Errors::DirectoryUnavailableException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::CreateConditionalForwarder
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateConditionalForwarder,
        stubs: @stubs,
        params_class: Params::CreateConditionalForwarderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_conditional_forwarder
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a Simple AD directory. For more information, see <a href="https://docs.aws.amazon.com/directoryservice/latest/admin-guide/directory_simple_ad.html">Simple Active Directory</a> in the <i>Directory Service Admin
    #         Guide</i>.</p>
    #          <p>Before you call <code>CreateDirectory</code>, ensure that all of the required permissions
    #       have been explicitly granted through a policy. For details about what permissions are required
    #       to run the <code>CreateDirectory</code> operation, see <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html">Directory Service API Permissions: Actions, Resources, and Conditions
    #       Reference</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDirectoryInput}.
    #
    # @option params [String] :name
    #   <p>The fully qualified name for the directory, such as <code>corp.example.com</code>.</p>
    #
    # @option params [String] :short_name
    #   <p>The NetBIOS name of the directory, such as <code>CORP</code>.</p>
    #
    # @option params [String] :password
    #   <p>The password for the directory administrator. The directory creation process creates a
    #         directory administrator account with the user name <code>Administrator</code> and this
    #         password.</p>
    #            <p>If you need to change the password for the administrator account, you can use the <a>ResetUserPassword</a> API call.</p>
    #            <p>The regex pattern for this string is made up of the following conditions:</p>
    #            <ul>
    #               <li>
    #                  <p>Length (?=^.{8,64}$) – Must be between 8 and 64 characters</p>
    #               </li>
    #            </ul>
    #            <p>AND any 3 of the following password complexity rules required by Active Directory:</p>
    #            <ul>
    #               <li>
    #                  <p>Numbers and upper case and lowercase (?=.*\d)(?=.*[A-Z])(?=.*[a-z])</p>
    #               </li>
    #               <li>
    #                  <p>Numbers and special characters and lower case
    #             (?=.*\d)(?=.*[^A-Za-z0-9\s])(?=.*[a-z])</p>
    #               </li>
    #               <li>
    #                  <p>Special characters and upper case and lower case
    #             (?=.*[^A-Za-z0-9\s])(?=.*[A-Z])(?=.*[a-z])</p>
    #               </li>
    #               <li>
    #                  <p>Numbers and upper case and special characters
    #             (?=.*\d)(?=.*[A-Z])(?=.*[^A-Za-z0-9\s])</p>
    #               </li>
    #            </ul>
    #            <p>For additional information about how Active Directory passwords are enforced, see <a href="https://docs.microsoft.com/en-us/windows/security/threat-protection/security-policy-settings/password-must-meet-complexity-requirements">Password must meet complexity requirements</a> on the Microsoft website.</p>
    #
    # @option params [String] :description
    #   <p>A description for the directory.</p>
    #
    # @option params [String] :size
    #   <p>The size of the directory.</p>
    #
    # @option params [DirectoryVpcSettings] :vpc_settings
    #   <p>A <a>DirectoryVpcSettings</a> object that contains additional information for
    #         the operation.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be assigned to the Simple AD directory.</p>
    #
    # @return [Types::CreateDirectoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_directory(
    #     name: 'Name', # required
    #     short_name: 'ShortName',
    #     password: 'Password', # required
    #     description: 'Description',
    #     size: 'Small', # required - accepts ["Small", "Large"]
    #     vpc_settings: {
    #       vpc_id: 'VpcId', # required
    #       subnet_ids: [
    #         'member'
    #       ] # required
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
    #   resp.data #=> Types::CreateDirectoryOutput
    #   resp.data.directory_id #=> String
    #
    def create_directory(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDirectoryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDirectoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDirectory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceException, Errors::DirectoryLimitExceededException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::CreateDirectory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDirectory,
        stubs: @stubs,
        params_class: Params::CreateDirectoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_directory
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a subscription to forward real-time Directory Service domain controller security
    #       logs to the specified Amazon CloudWatch log group in your Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateLogSubscriptionInput}.
    #
    # @option params [String] :directory_id
    #   <p>Identifier of the directory to which you want to subscribe and receive real-time logs to
    #         your specified CloudWatch log group.</p>
    #
    # @option params [String] :log_group_name
    #   <p>The name of the CloudWatch log group where the real-time domain controller logs are
    #         forwarded.</p>
    #
    # @return [Types::CreateLogSubscriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_log_subscription(
    #     directory_id: 'DirectoryId', # required
    #     log_group_name: 'LogGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateLogSubscriptionOutput
    #
    def create_log_subscription(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLogSubscriptionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLogSubscriptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLogSubscription
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::UnsupportedOperationException, Errors::EntityAlreadyExistsException, Errors::InsufficientPermissionsException, Errors::ClientException]),
        data_parser: Parsers::CreateLogSubscription
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLogSubscription,
        stubs: @stubs,
        params_class: Params::CreateLogSubscriptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_log_subscription
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a Microsoft AD directory in the Amazon Web Services Cloud. For more information, see <a href="https://docs.aws.amazon.com/directoryservice/latest/admin-guide/directory_microsoft_ad.html">Managed Microsoft AD</a> in the <i>Directory Service Admin Guide</i>.</p>
    #          <p>Before you call <i>CreateMicrosoftAD</i>, ensure that all of the required
    #       permissions have been explicitly granted through a policy. For details about what permissions
    #       are required to run the <i>CreateMicrosoftAD</i> operation, see <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html">Directory Service API Permissions: Actions, Resources, and Conditions Reference</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateMicrosoftADInput}.
    #
    # @option params [String] :name
    #   <p>The fully qualified domain name for the Managed Microsoft AD directory, such as
    #           <code>corp.example.com</code>. This name will resolve inside your VPC only. It does not need
    #         to be publicly resolvable.</p>
    #
    # @option params [String] :short_name
    #   <p>The NetBIOS name for your domain, such as <code>CORP</code>. If you don't specify a
    #         NetBIOS name, it will default to the first part of your directory DNS. For example,
    #           <code>CORP</code> for the directory DNS <code>corp.example.com</code>. </p>
    #
    # @option params [String] :password
    #   <p>The password for the default administrative user named <code>Admin</code>.</p>
    #            <p>If you need to change the password for the administrator account, you can use the <a>ResetUserPassword</a> API call.</p>
    #
    # @option params [String] :description
    #   <p>A description for the directory. This label will appear on the Amazon Web Services console
    #           <code>Directory Details</code> page after the directory is created.</p>
    #
    # @option params [DirectoryVpcSettings] :vpc_settings
    #   <p>Contains VPC information for the <a>CreateDirectory</a> or <a>CreateMicrosoftAD</a> operation.</p>
    #
    # @option params [String] :edition
    #   <p>Managed Microsoft AD is available in two editions: <code>Standard</code> and
    #           <code>Enterprise</code>. <code>Enterprise</code> is the default.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be assigned to the Managed Microsoft AD directory.</p>
    #
    # @return [Types::CreateMicrosoftADOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_microsoft_ad(
    #     name: 'Name', # required
    #     short_name: 'ShortName',
    #     password: 'Password', # required
    #     description: 'Description',
    #     vpc_settings: {
    #       vpc_id: 'VpcId', # required
    #       subnet_ids: [
    #         'member'
    #       ] # required
    #     }, # required
    #     edition: 'Enterprise', # accepts ["Enterprise", "Standard"]
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
    #   resp.data #=> Types::CreateMicrosoftADOutput
    #   resp.data.directory_id #=> String
    #
    def create_microsoft_ad(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateMicrosoftADInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateMicrosoftADInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateMicrosoftAD
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceException, Errors::UnsupportedOperationException, Errors::DirectoryLimitExceededException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::CreateMicrosoftAD
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateMicrosoftAD,
        stubs: @stubs,
        params_class: Params::CreateMicrosoftADOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_microsoft_ad
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a snapshot of a Simple AD or Microsoft AD directory in the Amazon Web Services cloud.</p>
    #          <note>
    #             <p>You cannot take snapshots of AD Connector directories.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateSnapshotInput}.
    #
    # @option params [String] :directory_id
    #   <p>The identifier of the directory of which to take a snapshot.</p>
    #
    # @option params [String] :name
    #   <p>The descriptive name to apply to the snapshot.</p>
    #
    # @return [Types::CreateSnapshotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_snapshot(
    #     directory_id: 'DirectoryId', # required
    #     name: 'Name'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSnapshotOutput
    #   resp.data.snapshot_id #=> String
    #
    def create_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSnapshotInput.build(params)
      response_body = StringIO.new
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::SnapshotLimitExceededException, Errors::InvalidParameterException, Errors::ClientException]),
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

    # <p>Directory Service for Microsoft Active Directory allows you to configure trust relationships. For
    #       example, you can establish a trust between your Managed Microsoft AD directory, and your existing
    #       self-managed Microsoft Active Directory. This would allow you to provide users and groups
    #       access to resources in either domain, with a single set of credentials.</p>
    #          <p>This action initiates the creation of the Amazon Web Services side of a trust relationship between an
    #       Managed Microsoft AD directory and an external domain. You can create either a forest trust or an
    #       external trust.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateTrustInput}.
    #
    # @option params [String] :directory_id
    #   <p>The Directory ID of the Managed Microsoft AD directory for which to establish the trust
    #         relationship.</p>
    #
    # @option params [String] :remote_domain_name
    #   <p>The Fully Qualified Domain Name (FQDN) of the external domain for which to create the
    #         trust relationship.</p>
    #
    # @option params [String] :trust_password
    #   <p>The trust password. The must be the same password that was used when creating the trust
    #         relationship on the external domain.</p>
    #
    # @option params [String] :trust_direction
    #   <p>The direction of the trust relationship.</p>
    #
    # @option params [String] :trust_type
    #   <p>The trust relationship type. <code>Forest</code> is the default.</p>
    #
    # @option params [Array<String>] :conditional_forwarder_ip_addrs
    #   <p>The IP addresses of the remote DNS server associated with RemoteDomainName.</p>
    #
    # @option params [String] :selective_auth
    #   <p>Optional parameter to enable selective authentication for the trust.</p>
    #
    # @return [Types::CreateTrustOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_trust(
    #     directory_id: 'DirectoryId', # required
    #     remote_domain_name: 'RemoteDomainName', # required
    #     trust_password: 'TrustPassword', # required
    #     trust_direction: 'One-Way: Outgoing', # required - accepts ["One-Way: Outgoing", "One-Way: Incoming", "Two-Way"]
    #     trust_type: 'Forest', # accepts ["Forest", "External"]
    #     conditional_forwarder_ip_addrs: [
    #       'member'
    #     ],
    #     selective_auth: 'Enabled' # accepts ["Enabled", "Disabled"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateTrustOutput
    #   resp.data.trust_id #=> String
    #
    def create_trust(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTrustInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTrustInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTrust
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::UnsupportedOperationException, Errors::EntityAlreadyExistsException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::CreateTrust
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTrust,
        stubs: @stubs,
        params_class: Params::CreateTrustOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_trust
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a conditional forwarder that has been set up for your Amazon Web Services
    #       directory.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteConditionalForwarderInput}.
    #
    # @option params [String] :directory_id
    #   <p>The directory ID for which you are deleting the conditional forwarder.</p>
    #
    # @option params [String] :remote_domain_name
    #   <p>The fully qualified domain name (FQDN) of the remote domain with which you are deleting
    #         the conditional forwarder.</p>
    #
    # @return [Types::DeleteConditionalForwarderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_conditional_forwarder(
    #     directory_id: 'DirectoryId', # required
    #     remote_domain_name: 'RemoteDomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteConditionalForwarderOutput
    #
    def delete_conditional_forwarder(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteConditionalForwarderInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteConditionalForwarderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteConditionalForwarder
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::UnsupportedOperationException, Errors::DirectoryUnavailableException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DeleteConditionalForwarder
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteConditionalForwarder,
        stubs: @stubs,
        params_class: Params::DeleteConditionalForwarderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_conditional_forwarder
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Directory Service directory.</p>
    #          <p>Before you call <code>DeleteDirectory</code>, ensure that all of the required permissions
    #       have been explicitly granted through a policy. For details about what permissions are required
    #       to run the <code>DeleteDirectory</code> operation, see <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html">Directory Service API Permissions: Actions, Resources, and Conditions
    #       Reference</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDirectoryInput}.
    #
    # @option params [String] :directory_id
    #   <p>The identifier of the directory to delete.</p>
    #
    # @return [Types::DeleteDirectoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_directory(
    #     directory_id: 'DirectoryId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDirectoryOutput
    #   resp.data.directory_id #=> String
    #
    def delete_directory(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDirectoryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDirectoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDirectory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::ClientException]),
        data_parser: Parsers::DeleteDirectory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDirectory,
        stubs: @stubs,
        params_class: Params::DeleteDirectoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_directory
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified log subscription.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLogSubscriptionInput}.
    #
    # @option params [String] :directory_id
    #   <p>Identifier of the directory whose log subscription you want to delete.</p>
    #
    # @return [Types::DeleteLogSubscriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_log_subscription(
    #     directory_id: 'DirectoryId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLogSubscriptionOutput
    #
    def delete_log_subscription(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLogSubscriptionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLogSubscriptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLogSubscription
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::UnsupportedOperationException, Errors::ClientException]),
        data_parser: Parsers::DeleteLogSubscription
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLogSubscription,
        stubs: @stubs,
        params_class: Params::DeleteLogSubscriptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_log_subscription
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a directory snapshot.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSnapshotInput}.
    #
    # @option params [String] :snapshot_id
    #   <p>The identifier of the directory snapshot to be deleted.</p>
    #
    # @return [Types::DeleteSnapshotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_snapshot(
    #     snapshot_id: 'SnapshotId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSnapshotOutput
    #   resp.data.snapshot_id #=> String
    #
    def delete_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSnapshotInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSnapshotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSnapshot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DeleteSnapshot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSnapshot,
        stubs: @stubs,
        params_class: Params::DeleteSnapshotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_snapshot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing trust relationship between your Managed Microsoft AD directory and an external
    #       domain.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTrustInput}.
    #
    # @option params [String] :trust_id
    #   <p>The Trust ID of the trust relationship to be deleted.</p>
    #
    # @option params [Boolean] :delete_associated_conditional_forwarder
    #   <p>Delete a conditional forwarder as part of a DeleteTrustRequest.</p>
    #
    # @return [Types::DeleteTrustOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_trust(
    #     trust_id: 'TrustId', # required
    #     delete_associated_conditional_forwarder: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTrustOutput
    #   resp.data.trust_id #=> String
    #
    def delete_trust(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTrustInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTrustInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTrust
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::UnsupportedOperationException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DeleteTrust
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTrust,
        stubs: @stubs,
        params_class: Params::DeleteTrustOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_trust
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes from the system the certificate that was registered for secure LDAP or client certificate authentication.</p>
    #
    # @param [Hash] params
    #   See {Types::DeregisterCertificateInput}.
    #
    # @option params [String] :directory_id
    #   <p>The identifier of the directory.</p>
    #
    # @option params [String] :certificate_id
    #   <p>The identifier of the certificate.</p>
    #
    # @return [Types::DeregisterCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_certificate(
    #     directory_id: 'DirectoryId', # required
    #     certificate_id: 'CertificateId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterCertificateOutput
    #
    def deregister_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterCertificateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterCertificate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceException, Errors::UnsupportedOperationException, Errors::CertificateInUseException, Errors::DirectoryUnavailableException, Errors::DirectoryDoesNotExistException, Errors::CertificateDoesNotExistException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DeregisterCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterCertificate,
        stubs: @stubs,
        params_class: Params::DeregisterCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified directory as a publisher to the specified Amazon SNS topic.</p>
    #
    # @param [Hash] params
    #   See {Types::DeregisterEventTopicInput}.
    #
    # @option params [String] :directory_id
    #   <p>The Directory ID to remove as a publisher. This directory will no longer send messages
    #         to the specified Amazon SNS topic.</p>
    #
    # @option params [String] :topic_name
    #   <p>The name of the Amazon SNS topic from which to remove the directory as a
    #         publisher.</p>
    #
    # @return [Types::DeregisterEventTopicOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_event_topic(
    #     directory_id: 'DirectoryId', # required
    #     topic_name: 'TopicName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterEventTopicOutput
    #
    def deregister_event_topic(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterEventTopicInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterEventTopicInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterEventTopic
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DeregisterEventTopic
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterEventTopic,
        stubs: @stubs,
        params_class: Params::DeregisterEventTopicOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_event_topic
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Displays information about the certificate registered for secure LDAP or client certificate authentication.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCertificateInput}.
    #
    # @option params [String] :directory_id
    #   <p>The identifier of the directory.</p>
    #
    # @option params [String] :certificate_id
    #   <p>The identifier of the certificate.</p>
    #
    # @return [Types::DescribeCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_certificate(
    #     directory_id: 'DirectoryId', # required
    #     certificate_id: 'CertificateId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCertificateOutput
    #   resp.data.certificate #=> Types::Certificate
    #   resp.data.certificate.certificate_id #=> String
    #   resp.data.certificate.state #=> String, one of ["Registering", "Registered", "RegisterFailed", "Deregistering", "Deregistered", "DeregisterFailed"]
    #   resp.data.certificate.state_reason #=> String
    #   resp.data.certificate.common_name #=> String
    #   resp.data.certificate.registered_date_time #=> Time
    #   resp.data.certificate.expiry_date_time #=> Time
    #   resp.data.certificate.type #=> String, one of ["ClientCertAuth", "ClientLDAPS"]
    #   resp.data.certificate.client_cert_auth_settings #=> Types::ClientCertAuthSettings
    #   resp.data.certificate.client_cert_auth_settings.ocsp_url #=> String
    #
    def describe_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCertificateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCertificate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceException, Errors::UnsupportedOperationException, Errors::DirectoryDoesNotExistException, Errors::CertificateDoesNotExistException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DescribeCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCertificate,
        stubs: @stubs,
        params_class: Params::DescribeCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the type of client authentication for the specified directory, if the type is specified. If no type is specified, information about all client authentication types that are supported for the specified directory is retrieved. Currently, only <code>SmartCard</code> is supported.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeClientAuthenticationSettingsInput}.
    #
    # @option params [String] :directory_id
    #   <p>The identifier of the directory for which to retrieve information.</p>
    #
    # @option params [String] :type
    #   <p>The type of client authentication for which to retrieve information. If no type is specified, a list of all client authentication types that are supported for the specified directory is retrieved.</p>
    #
    # @option params [String] :next_token
    #   <p>The <i>DescribeClientAuthenticationSettingsResult.NextToken</i> value from a previous call to <a>DescribeClientAuthenticationSettings</a>. Pass null if this is the first call.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of items to return. If this value is zero, the maximum number of items is specified by the limitations of the operation. </p>
    #
    # @return [Types::DescribeClientAuthenticationSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_client_authentication_settings(
    #     directory_id: 'DirectoryId', # required
    #     type: 'SmartCard', # accepts ["SmartCard"]
    #     next_token: 'NextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeClientAuthenticationSettingsOutput
    #   resp.data.client_authentication_settings_info #=> Array<ClientAuthenticationSettingInfo>
    #   resp.data.client_authentication_settings_info[0] #=> Types::ClientAuthenticationSettingInfo
    #   resp.data.client_authentication_settings_info[0].type #=> String, one of ["SmartCard"]
    #   resp.data.client_authentication_settings_info[0].status #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.client_authentication_settings_info[0].last_updated_date_time #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_client_authentication_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeClientAuthenticationSettingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeClientAuthenticationSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeClientAuthenticationSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceException, Errors::UnsupportedOperationException, Errors::DirectoryDoesNotExistException, Errors::AccessDeniedException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DescribeClientAuthenticationSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeClientAuthenticationSettings,
        stubs: @stubs,
        params_class: Params::DescribeClientAuthenticationSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_client_authentication_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Obtains information about the conditional forwarders for this account.</p>
    #          <p>If no input parameters are provided for RemoteDomainNames, this request describes all
    #       conditional forwarders for the specified directory ID.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeConditionalForwardersInput}.
    #
    # @option params [String] :directory_id
    #   <p>The directory ID for which to get the list of associated conditional
    #         forwarders.</p>
    #
    # @option params [Array<String>] :remote_domain_names
    #   <p>The fully qualified domain names (FQDN) of the remote domains for which to get the list
    #         of associated conditional forwarders. If this member is null, all conditional forwarders are
    #         returned.</p>
    #
    # @return [Types::DescribeConditionalForwardersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_conditional_forwarders(
    #     directory_id: 'DirectoryId', # required
    #     remote_domain_names: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeConditionalForwardersOutput
    #   resp.data.conditional_forwarders #=> Array<ConditionalForwarder>
    #   resp.data.conditional_forwarders[0] #=> Types::ConditionalForwarder
    #   resp.data.conditional_forwarders[0].remote_domain_name #=> String
    #   resp.data.conditional_forwarders[0].dns_ip_addrs #=> Array<String>
    #   resp.data.conditional_forwarders[0].dns_ip_addrs[0] #=> String
    #   resp.data.conditional_forwarders[0].replication_scope #=> String, one of ["Domain"]
    #
    def describe_conditional_forwarders(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeConditionalForwardersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeConditionalForwardersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeConditionalForwarders
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::UnsupportedOperationException, Errors::DirectoryUnavailableException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DescribeConditionalForwarders
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeConditionalForwarders,
        stubs: @stubs,
        params_class: Params::DescribeConditionalForwardersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_conditional_forwarders
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Obtains information about the directories that belong to this account.</p>
    #          <p>You can retrieve information about specific directories by passing the directory
    #       identifiers in the <code>DirectoryIds</code> parameter. Otherwise, all directories that belong
    #       to the current account are returned.</p>
    #          <p>This operation supports pagination with the use of the <code>NextToken</code> request and
    #       response parameters. If more results are available, the
    #         <code>DescribeDirectoriesResult.NextToken</code> member contains a token that you pass in
    #       the next call to <a>DescribeDirectories</a> to retrieve the next set of
    #       items.</p>
    #          <p>You can also specify a maximum number of return results with the <code>Limit</code>
    #       parameter.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDirectoriesInput}.
    #
    # @option params [Array<String>] :directory_ids
    #   <p>A list of identifiers of the directories for which to obtain the information. If this
    #         member is null, all directories that belong to the current account are returned.</p>
    #            <p>An empty list results in an <code>InvalidParameterException</code> being thrown.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>DescribeDirectoriesResult.NextToken</code> value from a previous call to <a>DescribeDirectories</a>. Pass null if this is the first call.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of items to return. If this value is zero, the maximum number of items
    #         is specified by the limitations of the operation.</p>
    #
    # @return [Types::DescribeDirectoriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_directories(
    #     directory_ids: [
    #       'member'
    #     ],
    #     next_token: 'NextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDirectoriesOutput
    #   resp.data.directory_descriptions #=> Array<DirectoryDescription>
    #   resp.data.directory_descriptions[0] #=> Types::DirectoryDescription
    #   resp.data.directory_descriptions[0].directory_id #=> String
    #   resp.data.directory_descriptions[0].name #=> String
    #   resp.data.directory_descriptions[0].short_name #=> String
    #   resp.data.directory_descriptions[0].size #=> String, one of ["Small", "Large"]
    #   resp.data.directory_descriptions[0].edition #=> String, one of ["Enterprise", "Standard"]
    #   resp.data.directory_descriptions[0].alias #=> String
    #   resp.data.directory_descriptions[0].access_url #=> String
    #   resp.data.directory_descriptions[0].description #=> String
    #   resp.data.directory_descriptions[0].dns_ip_addrs #=> Array<String>
    #   resp.data.directory_descriptions[0].dns_ip_addrs[0] #=> String
    #   resp.data.directory_descriptions[0].stage #=> String, one of ["Requested", "Creating", "Created", "Active", "Inoperable", "Impaired", "Restoring", "RestoreFailed", "Deleting", "Deleted", "Failed"]
    #   resp.data.directory_descriptions[0].share_status #=> String, one of ["Shared", "PendingAcceptance", "Rejected", "Rejecting", "RejectFailed", "Sharing", "ShareFailed", "Deleted", "Deleting"]
    #   resp.data.directory_descriptions[0].share_method #=> String, one of ["ORGANIZATIONS", "HANDSHAKE"]
    #   resp.data.directory_descriptions[0].share_notes #=> String
    #   resp.data.directory_descriptions[0].launch_time #=> Time
    #   resp.data.directory_descriptions[0].stage_last_updated_date_time #=> Time
    #   resp.data.directory_descriptions[0].type #=> String, one of ["SimpleAD", "ADConnector", "MicrosoftAD", "SharedMicrosoftAD"]
    #   resp.data.directory_descriptions[0].vpc_settings #=> Types::DirectoryVpcSettingsDescription
    #   resp.data.directory_descriptions[0].vpc_settings.vpc_id #=> String
    #   resp.data.directory_descriptions[0].vpc_settings.subnet_ids #=> Array<String>
    #   resp.data.directory_descriptions[0].vpc_settings.subnet_ids[0] #=> String
    #   resp.data.directory_descriptions[0].vpc_settings.security_group_id #=> String
    #   resp.data.directory_descriptions[0].vpc_settings.availability_zones #=> Array<String>
    #   resp.data.directory_descriptions[0].vpc_settings.availability_zones[0] #=> String
    #   resp.data.directory_descriptions[0].connect_settings #=> Types::DirectoryConnectSettingsDescription
    #   resp.data.directory_descriptions[0].connect_settings.vpc_id #=> String
    #   resp.data.directory_descriptions[0].connect_settings.subnet_ids #=> Array<String>
    #   resp.data.directory_descriptions[0].connect_settings.customer_user_name #=> String
    #   resp.data.directory_descriptions[0].connect_settings.security_group_id #=> String
    #   resp.data.directory_descriptions[0].connect_settings.availability_zones #=> Array<String>
    #   resp.data.directory_descriptions[0].connect_settings.connect_ips #=> Array<String>
    #   resp.data.directory_descriptions[0].connect_settings.connect_ips[0] #=> String
    #   resp.data.directory_descriptions[0].radius_settings #=> Types::RadiusSettings
    #   resp.data.directory_descriptions[0].radius_settings.radius_servers #=> Array<String>
    #   resp.data.directory_descriptions[0].radius_settings.radius_servers[0] #=> String
    #   resp.data.directory_descriptions[0].radius_settings.radius_port #=> Integer
    #   resp.data.directory_descriptions[0].radius_settings.radius_timeout #=> Integer
    #   resp.data.directory_descriptions[0].radius_settings.radius_retries #=> Integer
    #   resp.data.directory_descriptions[0].radius_settings.shared_secret #=> String
    #   resp.data.directory_descriptions[0].radius_settings.authentication_protocol #=> String, one of ["PAP", "CHAP", "MS-CHAPv1", "MS-CHAPv2"]
    #   resp.data.directory_descriptions[0].radius_settings.display_label #=> String
    #   resp.data.directory_descriptions[0].radius_settings.use_same_username #=> Boolean
    #   resp.data.directory_descriptions[0].radius_status #=> String, one of ["Creating", "Completed", "Failed"]
    #   resp.data.directory_descriptions[0].stage_reason #=> String
    #   resp.data.directory_descriptions[0].sso_enabled #=> Boolean
    #   resp.data.directory_descriptions[0].desired_number_of_domain_controllers #=> Integer
    #   resp.data.directory_descriptions[0].owner_directory_description #=> Types::OwnerDirectoryDescription
    #   resp.data.directory_descriptions[0].owner_directory_description.directory_id #=> String
    #   resp.data.directory_descriptions[0].owner_directory_description.account_id #=> String
    #   resp.data.directory_descriptions[0].owner_directory_description.dns_ip_addrs #=> Array<String>
    #   resp.data.directory_descriptions[0].owner_directory_description.vpc_settings #=> Types::DirectoryVpcSettingsDescription
    #   resp.data.directory_descriptions[0].owner_directory_description.radius_settings #=> Types::RadiusSettings
    #   resp.data.directory_descriptions[0].owner_directory_description.radius_status #=> String, one of ["Creating", "Completed", "Failed"]
    #   resp.data.directory_descriptions[0].regions_info #=> Types::RegionsInfo
    #   resp.data.directory_descriptions[0].regions_info.primary_region #=> String
    #   resp.data.directory_descriptions[0].regions_info.additional_regions #=> Array<String>
    #   resp.data.directory_descriptions[0].regions_info.additional_regions[0] #=> String
    #   resp.data.next_token #=> String
    #
    def describe_directories(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDirectoriesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDirectoriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDirectories
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::InvalidNextTokenException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DescribeDirectories
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDirectories,
        stubs: @stubs,
        params_class: Params::DescribeDirectoriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_directories
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides information about any domain controllers in your directory.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDomainControllersInput}.
    #
    # @option params [String] :directory_id
    #   <p>Identifier of the directory for which to retrieve the domain controller
    #         information.</p>
    #
    # @option params [Array<String>] :domain_controller_ids
    #   <p>A list of identifiers for the domain controllers whose information will be
    #         provided.</p>
    #
    # @option params [String] :next_token
    #   <p>The <i>DescribeDomainControllers.NextToken</i> value from a previous call
    #         to <a>DescribeDomainControllers</a>. Pass null if this is the first call.
    #       </p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of items to return.</p>
    #
    # @return [Types::DescribeDomainControllersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_domain_controllers(
    #     directory_id: 'DirectoryId', # required
    #     domain_controller_ids: [
    #       'member'
    #     ],
    #     next_token: 'NextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDomainControllersOutput
    #   resp.data.domain_controllers #=> Array<DomainController>
    #   resp.data.domain_controllers[0] #=> Types::DomainController
    #   resp.data.domain_controllers[0].directory_id #=> String
    #   resp.data.domain_controllers[0].domain_controller_id #=> String
    #   resp.data.domain_controllers[0].dns_ip_addr #=> String
    #   resp.data.domain_controllers[0].vpc_id #=> String
    #   resp.data.domain_controllers[0].subnet_id #=> String
    #   resp.data.domain_controllers[0].availability_zone #=> String
    #   resp.data.domain_controllers[0].status #=> String, one of ["Creating", "Active", "Impaired", "Restoring", "Deleting", "Deleted", "Failed"]
    #   resp.data.domain_controllers[0].status_reason #=> String
    #   resp.data.domain_controllers[0].launch_time #=> Time
    #   resp.data.domain_controllers[0].status_last_updated_date_time #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_domain_controllers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDomainControllersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDomainControllersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDomainControllers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::UnsupportedOperationException, Errors::InvalidNextTokenException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DescribeDomainControllers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDomainControllers,
        stubs: @stubs,
        params_class: Params::DescribeDomainControllersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_domain_controllers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Obtains information about which Amazon SNS topics receive status messages from the specified
    #       directory.</p>
    #          <p>If no input parameters are provided, such as DirectoryId or TopicName, this request
    #       describes all of the associations in the account.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEventTopicsInput}.
    #
    # @option params [String] :directory_id
    #   <p>The Directory ID for which to get the list of associated Amazon SNS topics. If this member
    #         is null, associations for all Directory IDs are returned.</p>
    #
    # @option params [Array<String>] :topic_names
    #   <p>A list of Amazon SNS topic names for which to obtain the information. If this member is
    #         null, all associations for the specified Directory ID are returned.</p>
    #            <p>An empty list results in an <code>InvalidParameterException</code> being
    #         thrown.</p>
    #
    # @return [Types::DescribeEventTopicsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_topics(
    #     directory_id: 'DirectoryId',
    #     topic_names: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEventTopicsOutput
    #   resp.data.event_topics #=> Array<EventTopic>
    #   resp.data.event_topics[0] #=> Types::EventTopic
    #   resp.data.event_topics[0].directory_id #=> String
    #   resp.data.event_topics[0].topic_name #=> String
    #   resp.data.event_topics[0].topic_arn #=> String
    #   resp.data.event_topics[0].created_date_time #=> Time
    #   resp.data.event_topics[0].status #=> String, one of ["Registered", "Topic not found", "Failed", "Deleted"]
    #
    def describe_event_topics(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEventTopicsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEventTopicsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEventTopics
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DescribeEventTopics
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEventTopics,
        stubs: @stubs,
        params_class: Params::DescribeEventTopicsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_event_topics
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the status of LDAP security for the specified directory.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLDAPSSettingsInput}.
    #
    # @option params [String] :directory_id
    #   <p>The identifier of the directory.</p>
    #
    # @option params [String] :type
    #   <p>The type of LDAP security to enable. Currently only the value <code>Client</code> is
    #         supported.</p>
    #
    # @option params [String] :next_token
    #   <p>The type of next token used for pagination.</p>
    #
    # @option params [Integer] :limit
    #   <p>Specifies the number of items that should be displayed on one page.</p>
    #
    # @return [Types::DescribeLDAPSSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_ldaps_settings(
    #     directory_id: 'DirectoryId', # required
    #     type: 'Client', # accepts ["Client"]
    #     next_token: 'NextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLDAPSSettingsOutput
    #   resp.data.ldaps_settings_info #=> Array<LDAPSSettingInfo>
    #   resp.data.ldaps_settings_info[0] #=> Types::LDAPSSettingInfo
    #   resp.data.ldaps_settings_info[0].ldaps_status #=> String, one of ["Enabling", "Enabled", "EnableFailed", "Disabled"]
    #   resp.data.ldaps_settings_info[0].ldaps_status_reason #=> String
    #   resp.data.ldaps_settings_info[0].last_updated_date_time #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_ldaps_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLDAPSSettingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLDAPSSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLDAPSSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceException, Errors::UnsupportedOperationException, Errors::InvalidNextTokenException, Errors::DirectoryDoesNotExistException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DescribeLDAPSSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLDAPSSettings,
        stubs: @stubs,
        params_class: Params::DescribeLDAPSSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_ldaps_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides information about the Regions that are configured for multi-Region
    #       replication.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRegionsInput}.
    #
    # @option params [String] :directory_id
    #   <p>The identifier of the directory.</p>
    #
    # @option params [String] :region_name
    #   <p>The name of the Region. For example, <code>us-east-1</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>DescribeRegionsResult.NextToken</code> value from a previous call to <a>DescribeRegions</a>. Pass null if this is the first call.</p>
    #
    # @return [Types::DescribeRegionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_regions(
    #     directory_id: 'DirectoryId', # required
    #     region_name: 'RegionName',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRegionsOutput
    #   resp.data.regions_description #=> Array<RegionDescription>
    #   resp.data.regions_description[0] #=> Types::RegionDescription
    #   resp.data.regions_description[0].directory_id #=> String
    #   resp.data.regions_description[0].region_name #=> String
    #   resp.data.regions_description[0].region_type #=> String, one of ["Primary", "Additional"]
    #   resp.data.regions_description[0].status #=> String, one of ["Requested", "Creating", "Created", "Active", "Inoperable", "Impaired", "Restoring", "RestoreFailed", "Deleting", "Deleted", "Failed"]
    #   resp.data.regions_description[0].vpc_settings #=> Types::DirectoryVpcSettings
    #   resp.data.regions_description[0].vpc_settings.vpc_id #=> String
    #   resp.data.regions_description[0].vpc_settings.subnet_ids #=> Array<String>
    #   resp.data.regions_description[0].vpc_settings.subnet_ids[0] #=> String
    #   resp.data.regions_description[0].desired_number_of_domain_controllers #=> Integer
    #   resp.data.regions_description[0].launch_time #=> Time
    #   resp.data.regions_description[0].status_last_updated_date_time #=> Time
    #   resp.data.regions_description[0].last_updated_date_time #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_regions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRegionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRegionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRegions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceException, Errors::UnsupportedOperationException, Errors::InvalidNextTokenException, Errors::DirectoryDoesNotExistException, Errors::AccessDeniedException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DescribeRegions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRegions,
        stubs: @stubs,
        params_class: Params::DescribeRegionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_regions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the shared directories in your account. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSharedDirectoriesInput}.
    #
    # @option params [String] :owner_directory_id
    #   <p>Returns the identifier of the directory in the directory owner account. </p>
    #
    # @option params [Array<String>] :shared_directory_ids
    #   <p>A list of identifiers of all shared directories in your account. </p>
    #
    # @option params [String] :next_token
    #   <p>The <code>DescribeSharedDirectoriesResult.NextToken</code> value from a previous call to
    #           <a>DescribeSharedDirectories</a>. Pass null if this is the first call. </p>
    #
    # @option params [Integer] :limit
    #   <p>The number of shared directories to return in the response object.</p>
    #
    # @return [Types::DescribeSharedDirectoriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_shared_directories(
    #     owner_directory_id: 'OwnerDirectoryId', # required
    #     shared_directory_ids: [
    #       'member'
    #     ],
    #     next_token: 'NextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSharedDirectoriesOutput
    #   resp.data.shared_directories #=> Array<SharedDirectory>
    #   resp.data.shared_directories[0] #=> Types::SharedDirectory
    #   resp.data.shared_directories[0].owner_account_id #=> String
    #   resp.data.shared_directories[0].owner_directory_id #=> String
    #   resp.data.shared_directories[0].share_method #=> String, one of ["ORGANIZATIONS", "HANDSHAKE"]
    #   resp.data.shared_directories[0].shared_account_id #=> String
    #   resp.data.shared_directories[0].shared_directory_id #=> String
    #   resp.data.shared_directories[0].share_status #=> String, one of ["Shared", "PendingAcceptance", "Rejected", "Rejecting", "RejectFailed", "Sharing", "ShareFailed", "Deleted", "Deleting"]
    #   resp.data.shared_directories[0].share_notes #=> String
    #   resp.data.shared_directories[0].created_date_time #=> Time
    #   resp.data.shared_directories[0].last_updated_date_time #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_shared_directories(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSharedDirectoriesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSharedDirectoriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSharedDirectories
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::UnsupportedOperationException, Errors::InvalidNextTokenException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DescribeSharedDirectories
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSharedDirectories,
        stubs: @stubs,
        params_class: Params::DescribeSharedDirectoriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_shared_directories
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Obtains information about the directory snapshots that belong to this account.</p>
    #          <p>This operation supports pagination with the use of the <i>NextToken</i> request and
    #          response parameters. If more results are available, the <i>DescribeSnapshots.NextToken</i>
    #          member contains a token that you pass in the next call to <a>DescribeSnapshots</a> to
    #          retrieve the next set of items.</p>
    #          <p>You can also specify a maximum number of return results with the <i>Limit</i>
    #          parameter.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSnapshotsInput}.
    #
    # @option params [String] :directory_id
    #   <p>The identifier of the directory for which to retrieve snapshot information.</p>
    #
    # @option params [Array<String>] :snapshot_ids
    #   <p>A list of identifiers of the snapshots to obtain the information for. If this member is
    #            null or empty, all snapshots are returned using the <i>Limit</i> and <i>NextToken</i>
    #            members.</p>
    #
    # @option params [String] :next_token
    #   <p>The <i>DescribeSnapshotsResult.NextToken</i> value from a previous call to
    #               <a>DescribeSnapshots</a>. Pass null if this is the first call.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of objects to return.</p>
    #
    # @return [Types::DescribeSnapshotsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_snapshots(
    #     directory_id: 'DirectoryId',
    #     snapshot_ids: [
    #       'member'
    #     ],
    #     next_token: 'NextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSnapshotsOutput
    #   resp.data.snapshots #=> Array<Snapshot>
    #   resp.data.snapshots[0] #=> Types::Snapshot
    #   resp.data.snapshots[0].directory_id #=> String
    #   resp.data.snapshots[0].snapshot_id #=> String
    #   resp.data.snapshots[0].type #=> String, one of ["Auto", "Manual"]
    #   resp.data.snapshots[0].name #=> String
    #   resp.data.snapshots[0].status #=> String, one of ["Creating", "Completed", "Failed"]
    #   resp.data.snapshots[0].start_time #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_snapshots(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSnapshotsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSnapshotsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSnapshots
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::InvalidNextTokenException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DescribeSnapshots
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSnapshots,
        stubs: @stubs,
        params_class: Params::DescribeSnapshotsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_snapshots
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Obtains information about the trust relationships for this account.</p>
    #          <p>If no input parameters are provided, such as DirectoryId or TrustIds, this request
    #       describes all the trust relationships belonging to the account.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTrustsInput}.
    #
    # @option params [String] :directory_id
    #   <p>The Directory ID of the Amazon Web Services directory that is a part of the requested trust
    #         relationship.</p>
    #
    # @option params [Array<String>] :trust_ids
    #   <p>A list of identifiers of the trust relationships for which to obtain the information. If
    #         this member is null, all trust relationships that belong to the current account are
    #         returned.</p>
    #            <p>An empty list results in an <code>InvalidParameterException</code> being thrown.</p>
    #
    # @option params [String] :next_token
    #   <p>The <i>DescribeTrustsResult.NextToken</i> value from a previous call to
    #           <a>DescribeTrusts</a>. Pass null if this is the first call.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of objects to return.</p>
    #
    # @return [Types::DescribeTrustsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_trusts(
    #     directory_id: 'DirectoryId',
    #     trust_ids: [
    #       'member'
    #     ],
    #     next_token: 'NextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTrustsOutput
    #   resp.data.trusts #=> Array<Trust>
    #   resp.data.trusts[0] #=> Types::Trust
    #   resp.data.trusts[0].directory_id #=> String
    #   resp.data.trusts[0].trust_id #=> String
    #   resp.data.trusts[0].remote_domain_name #=> String
    #   resp.data.trusts[0].trust_type #=> String, one of ["Forest", "External"]
    #   resp.data.trusts[0].trust_direction #=> String, one of ["One-Way: Outgoing", "One-Way: Incoming", "Two-Way"]
    #   resp.data.trusts[0].trust_state #=> String, one of ["Creating", "Created", "Verifying", "VerifyFailed", "Verified", "Updating", "UpdateFailed", "Updated", "Deleting", "Deleted", "Failed"]
    #   resp.data.trusts[0].created_date_time #=> Time
    #   resp.data.trusts[0].last_updated_date_time #=> Time
    #   resp.data.trusts[0].state_last_updated_date_time #=> Time
    #   resp.data.trusts[0].trust_state_reason #=> String
    #   resp.data.trusts[0].selective_auth #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.next_token #=> String
    #
    def describe_trusts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTrustsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTrustsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTrusts
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::UnsupportedOperationException, Errors::InvalidNextTokenException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::DescribeTrusts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTrusts,
        stubs: @stubs,
        params_class: Params::DescribeTrustsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_trusts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables alternative client authentication methods for the specified directory. </p>
    #
    # @param [Hash] params
    #   See {Types::DisableClientAuthenticationInput}.
    #
    # @option params [String] :directory_id
    #   <p>The identifier of the directory </p>
    #
    # @option params [String] :type
    #   <p>The type of client authentication to disable. Currently, only the parameter, <code>SmartCard</code> is supported.</p>
    #
    # @return [Types::DisableClientAuthenticationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_client_authentication(
    #     directory_id: 'DirectoryId', # required
    #     type: 'SmartCard' # required - accepts ["SmartCard"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisableClientAuthenticationOutput
    #
    def disable_client_authentication(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableClientAuthenticationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableClientAuthenticationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableClientAuthentication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceException, Errors::UnsupportedOperationException, Errors::DirectoryDoesNotExistException, Errors::AccessDeniedException, Errors::InvalidClientAuthStatusException, Errors::ClientException]),
        data_parser: Parsers::DisableClientAuthentication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisableClientAuthentication,
        stubs: @stubs,
        params_class: Params::DisableClientAuthenticationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disable_client_authentication
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deactivates LDAP secure calls for the specified directory.</p>
    #
    # @param [Hash] params
    #   See {Types::DisableLDAPSInput}.
    #
    # @option params [String] :directory_id
    #   <p>The identifier of the directory.</p>
    #
    # @option params [String] :type
    #   <p>The type of LDAP security to enable. Currently only the value <code>Client</code> is
    #         supported.</p>
    #
    # @return [Types::DisableLDAPSOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_ldaps(
    #     directory_id: 'DirectoryId', # required
    #     type: 'Client' # required - accepts ["Client"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisableLDAPSOutput
    #
    def disable_ldaps(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableLDAPSInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableLDAPSInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableLDAPS
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceException, Errors::UnsupportedOperationException, Errors::DirectoryUnavailableException, Errors::DirectoryDoesNotExistException, Errors::InvalidParameterException, Errors::ClientException, Errors::InvalidLDAPSStatusException]),
        data_parser: Parsers::DisableLDAPS
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisableLDAPS,
        stubs: @stubs,
        params_class: Params::DisableLDAPSOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disable_ldaps
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables multi-factor authentication (MFA) with the Remote Authentication Dial In
    #          User Service (RADIUS) server for an AD Connector or Microsoft AD directory.</p>
    #
    # @param [Hash] params
    #   See {Types::DisableRadiusInput}.
    #
    # @option params [String] :directory_id
    #   <p>The identifier of the directory for which to disable MFA.</p>
    #
    # @return [Types::DisableRadiusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_radius(
    #     directory_id: 'DirectoryId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisableRadiusOutput
    #
    def disable_radius(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableRadiusInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableRadiusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableRadius
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::ClientException]),
        data_parser: Parsers::DisableRadius
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisableRadius,
        stubs: @stubs,
        params_class: Params::DisableRadiusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disable_radius
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables single-sign on for a directory.</p>
    #
    # @param [Hash] params
    #   See {Types::DisableSsoInput}.
    #
    # @option params [String] :directory_id
    #   <p>The identifier of the directory for which to disable single-sign on.</p>
    #
    # @option params [String] :user_name
    #   <p>The username of an alternate account to use to disable single-sign on. This is only used
    #         for AD Connector directories. This account must have privileges to remove a service
    #         principal name.</p>
    #            <p>If the AD Connector service account does not have privileges to remove a service
    #         principal name, you can specify an alternate account with the <i>UserName</i>
    #         and <i>Password</i> parameters. These credentials are only used to disable
    #         single sign-on and are not stored by the service. The AD Connector service account is not
    #         changed.</p>
    #
    # @option params [String] :password
    #   <p>The password of an alternate account to use to disable single-sign on. This is only used
    #         for AD Connector directories. For more information, see the <i>UserName</i>
    #         parameter.</p>
    #
    # @return [Types::DisableSsoOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_sso(
    #     directory_id: 'DirectoryId', # required
    #     user_name: 'UserName',
    #     password: 'Password'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisableSsoOutput
    #
    def disable_sso(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableSsoInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableSsoInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableSso
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::AuthenticationFailedException, Errors::InsufficientPermissionsException, Errors::ClientException]),
        data_parser: Parsers::DisableSso
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisableSso,
        stubs: @stubs,
        params_class: Params::DisableSsoOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disable_sso
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables alternative client authentication methods for the specified directory.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableClientAuthenticationInput}.
    #
    # @option params [String] :directory_id
    #   <p>The identifier of the specified directory. </p>
    #
    # @option params [String] :type
    #   <p>The type of client authentication to enable. Currently only the value <code>SmartCard</code> is
    #         supported. Smart card authentication in AD Connector requires that you enable Kerberos
    #         Constrained Delegation for the Service User to the LDAP service in your self-managed AD.
    #       </p>
    #
    # @return [Types::EnableClientAuthenticationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_client_authentication(
    #     directory_id: 'DirectoryId', # required
    #     type: 'SmartCard' # required - accepts ["SmartCard"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableClientAuthenticationOutput
    #
    def enable_client_authentication(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableClientAuthenticationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableClientAuthenticationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableClientAuthentication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceException, Errors::UnsupportedOperationException, Errors::DirectoryDoesNotExistException, Errors::AccessDeniedException, Errors::InvalidClientAuthStatusException, Errors::NoAvailableCertificateException, Errors::ClientException]),
        data_parser: Parsers::EnableClientAuthentication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnableClientAuthentication,
        stubs: @stubs,
        params_class: Params::EnableClientAuthenticationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_client_authentication
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Activates the switch for the specific directory to always use LDAP secure calls.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableLDAPSInput}.
    #
    # @option params [String] :directory_id
    #   <p>The identifier of the directory.</p>
    #
    # @option params [String] :type
    #   <p>The type of LDAP security to enable. Currently only the value <code>Client</code> is
    #         supported.</p>
    #
    # @return [Types::EnableLDAPSOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_ldaps(
    #     directory_id: 'DirectoryId', # required
    #     type: 'Client' # required - accepts ["Client"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableLDAPSOutput
    #
    def enable_ldaps(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableLDAPSInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableLDAPSInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableLDAPS
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceException, Errors::UnsupportedOperationException, Errors::DirectoryUnavailableException, Errors::DirectoryDoesNotExistException, Errors::InvalidParameterException, Errors::NoAvailableCertificateException, Errors::ClientException, Errors::InvalidLDAPSStatusException]),
        data_parser: Parsers::EnableLDAPS
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnableLDAPS,
        stubs: @stubs,
        params_class: Params::EnableLDAPSOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_ldaps
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables multi-factor authentication (MFA) with the Remote Authentication Dial In User
    #          Service (RADIUS) server for an AD Connector or Microsoft AD directory.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableRadiusInput}.
    #
    # @option params [String] :directory_id
    #   <p>The identifier of the directory for which to enable MFA.</p>
    #
    # @option params [RadiusSettings] :radius_settings
    #   <p>A <a>RadiusSettings</a> object that contains information about the RADIUS
    #            server.</p>
    #
    # @return [Types::EnableRadiusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_radius(
    #     directory_id: 'DirectoryId', # required
    #     radius_settings: {
    #       radius_servers: [
    #         'member'
    #       ],
    #       radius_port: 1,
    #       radius_timeout: 1,
    #       radius_retries: 1,
    #       shared_secret: 'SharedSecret',
    #       authentication_protocol: 'PAP', # accepts ["PAP", "CHAP", "MS-CHAPv1", "MS-CHAPv2"]
    #       display_label: 'DisplayLabel',
    #       use_same_username: false
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableRadiusOutput
    #
    def enable_radius(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableRadiusInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableRadiusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableRadius
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::EntityAlreadyExistsException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::EnableRadius
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnableRadius,
        stubs: @stubs,
        params_class: Params::EnableRadiusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_radius
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables single sign-on for a directory. Single sign-on allows users in your directory to
    #       access certain Amazon Web Services services from a computer joined to the directory without having to enter
    #       their credentials separately.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableSsoInput}.
    #
    # @option params [String] :directory_id
    #   <p>The identifier of the directory for which to enable single-sign on.</p>
    #
    # @option params [String] :user_name
    #   <p>The username of an alternate account to use to enable single-sign on. This is only used
    #         for AD Connector directories. This account must have privileges to add a service principal
    #         name.</p>
    #            <p>If the AD Connector service account does not have privileges to add a service principal
    #         name, you can specify an alternate account with the <i>UserName</i> and
    #           <i>Password</i> parameters. These credentials are only used to enable single
    #         sign-on and are not stored by the service. The AD Connector service account is not
    #         changed.</p>
    #
    # @option params [String] :password
    #   <p>The password of an alternate account to use to enable single-sign on. This is only used
    #         for AD Connector directories. For more information, see the <i>UserName</i>
    #         parameter.</p>
    #
    # @return [Types::EnableSsoOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_sso(
    #     directory_id: 'DirectoryId', # required
    #     user_name: 'UserName',
    #     password: 'Password'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableSsoOutput
    #
    def enable_sso(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableSsoInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableSsoInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableSso
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::AuthenticationFailedException, Errors::InsufficientPermissionsException, Errors::ClientException]),
        data_parser: Parsers::EnableSso
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnableSso,
        stubs: @stubs,
        params_class: Params::EnableSsoOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_sso
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Obtains directory limit information for the current Region.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDirectoryLimitsInput}.
    #
    # @return [Types::GetDirectoryLimitsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_directory_limits()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDirectoryLimitsOutput
    #   resp.data.directory_limits #=> Types::DirectoryLimits
    #   resp.data.directory_limits.cloud_only_directories_limit #=> Integer
    #   resp.data.directory_limits.cloud_only_directories_current_count #=> Integer
    #   resp.data.directory_limits.cloud_only_directories_limit_reached #=> Boolean
    #   resp.data.directory_limits.cloud_only_microsoft_ad_limit #=> Integer
    #   resp.data.directory_limits.cloud_only_microsoft_ad_current_count #=> Integer
    #   resp.data.directory_limits.cloud_only_microsoft_ad_limit_reached #=> Boolean
    #   resp.data.directory_limits.connected_directories_limit #=> Integer
    #   resp.data.directory_limits.connected_directories_current_count #=> Integer
    #   resp.data.directory_limits.connected_directories_limit_reached #=> Boolean
    #
    def get_directory_limits(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDirectoryLimitsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDirectoryLimitsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDirectoryLimits
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::ClientException]),
        data_parser: Parsers::GetDirectoryLimits
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDirectoryLimits,
        stubs: @stubs,
        params_class: Params::GetDirectoryLimitsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_directory_limits
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Obtains the manual snapshot limits for a directory.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSnapshotLimitsInput}.
    #
    # @option params [String] :directory_id
    #   <p>Contains the identifier of the directory to obtain the limits for.</p>
    #
    # @return [Types::GetSnapshotLimitsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_snapshot_limits(
    #     directory_id: 'DirectoryId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSnapshotLimitsOutput
    #   resp.data.snapshot_limits #=> Types::SnapshotLimits
    #   resp.data.snapshot_limits.manual_snapshots_limit #=> Integer
    #   resp.data.snapshot_limits.manual_snapshots_current_count #=> Integer
    #   resp.data.snapshot_limits.manual_snapshots_limit_reached #=> Boolean
    #
    def get_snapshot_limits(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSnapshotLimitsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSnapshotLimitsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSnapshotLimits
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::ClientException]),
        data_parser: Parsers::GetSnapshotLimits
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSnapshotLimits,
        stubs: @stubs,
        params_class: Params::GetSnapshotLimitsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_snapshot_limits
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>For the specified directory, lists all the certificates registered for a secure LDAP or client certificate authentication.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCertificatesInput}.
    #
    # @option params [String] :directory_id
    #   <p>The identifier of the directory.</p>
    #
    # @option params [String] :next_token
    #   <p>A token for requesting another page of certificates if the <code>NextToken</code> response
    #         element indicates that more certificates are available. Use the value of the returned
    #           <code>NextToken</code> element in your request until the token comes back as
    #           <code>null</code>. Pass <code>null</code> if this is the first call.</p>
    #
    # @option params [Integer] :limit
    #   <p>The number of items that should show up on one page</p>
    #
    # @return [Types::ListCertificatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_certificates(
    #     directory_id: 'DirectoryId', # required
    #     next_token: 'NextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCertificatesOutput
    #   resp.data.next_token #=> String
    #   resp.data.certificates_info #=> Array<CertificateInfo>
    #   resp.data.certificates_info[0] #=> Types::CertificateInfo
    #   resp.data.certificates_info[0].certificate_id #=> String
    #   resp.data.certificates_info[0].common_name #=> String
    #   resp.data.certificates_info[0].state #=> String, one of ["Registering", "Registered", "RegisterFailed", "Deregistering", "Deregistered", "DeregisterFailed"]
    #   resp.data.certificates_info[0].expiry_date_time #=> Time
    #   resp.data.certificates_info[0].type #=> String, one of ["ClientCertAuth", "ClientLDAPS"]
    #
    def list_certificates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCertificatesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCertificatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCertificates
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceException, Errors::UnsupportedOperationException, Errors::InvalidNextTokenException, Errors::DirectoryDoesNotExistException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::ListCertificates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCertificates,
        stubs: @stubs,
        params_class: Params::ListCertificatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_certificates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the address blocks that you have added to a directory.</p>
    #
    # @param [Hash] params
    #   See {Types::ListIpRoutesInput}.
    #
    # @option params [String] :directory_id
    #   <p>Identifier (ID) of the directory for which you want to retrieve the IP
    #            addresses.</p>
    #
    # @option params [String] :next_token
    #   <p>The <i>ListIpRoutes.NextToken</i> value from a previous call to <a>ListIpRoutes</a>. Pass null if this is the first call.</p>
    #
    # @option params [Integer] :limit
    #   <p>Maximum number of items to return. If this value is zero, the maximum number of items
    #            is specified by the limitations of the operation.</p>
    #
    # @return [Types::ListIpRoutesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ip_routes(
    #     directory_id: 'DirectoryId', # required
    #     next_token: 'NextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListIpRoutesOutput
    #   resp.data.ip_routes_info #=> Array<IpRouteInfo>
    #   resp.data.ip_routes_info[0] #=> Types::IpRouteInfo
    #   resp.data.ip_routes_info[0].directory_id #=> String
    #   resp.data.ip_routes_info[0].cidr_ip #=> String
    #   resp.data.ip_routes_info[0].ip_route_status_msg #=> String, one of ["Adding", "Added", "Removing", "Removed", "AddFailed", "RemoveFailed"]
    #   resp.data.ip_routes_info[0].added_date_time #=> Time
    #   resp.data.ip_routes_info[0].ip_route_status_reason #=> String
    #   resp.data.ip_routes_info[0].description #=> String
    #   resp.data.next_token #=> String
    #
    def list_ip_routes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListIpRoutesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListIpRoutesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListIpRoutes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::InvalidNextTokenException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::ListIpRoutes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListIpRoutes,
        stubs: @stubs,
        params_class: Params::ListIpRoutesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_ip_routes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the active log subscriptions for the Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListLogSubscriptionsInput}.
    #
    # @option params [String] :directory_id
    #   <p>If a <i>DirectoryID</i> is provided, lists only the log subscription
    #         associated with that directory. If no <i>DirectoryId</i> is provided, lists all
    #         log subscriptions associated with your Amazon Web Services account. If there are no log subscriptions for the
    #         Amazon Web Services account or the directory, an empty list will be returned.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of items to return.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of items returned.</p>
    #
    # @return [Types::ListLogSubscriptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_log_subscriptions(
    #     directory_id: 'DirectoryId',
    #     next_token: 'NextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListLogSubscriptionsOutput
    #   resp.data.log_subscriptions #=> Array<LogSubscription>
    #   resp.data.log_subscriptions[0] #=> Types::LogSubscription
    #   resp.data.log_subscriptions[0].directory_id #=> String
    #   resp.data.log_subscriptions[0].log_group_name #=> String
    #   resp.data.log_subscriptions[0].subscription_created_date_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_log_subscriptions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLogSubscriptionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLogSubscriptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLogSubscriptions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::InvalidNextTokenException, Errors::ClientException]),
        data_parser: Parsers::ListLogSubscriptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListLogSubscriptions,
        stubs: @stubs,
        params_class: Params::ListLogSubscriptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_log_subscriptions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all schema extensions applied to a Microsoft AD Directory.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSchemaExtensionsInput}.
    #
    # @option params [String] :directory_id
    #   <p>The identifier of the directory from which to retrieve the schema extension
    #         information.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>ListSchemaExtensions.NextToken</code> value from a previous call to
    #           <code>ListSchemaExtensions</code>. Pass null if this is the first call.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of items to return.</p>
    #
    # @return [Types::ListSchemaExtensionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_schema_extensions(
    #     directory_id: 'DirectoryId', # required
    #     next_token: 'NextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSchemaExtensionsOutput
    #   resp.data.schema_extensions_info #=> Array<SchemaExtensionInfo>
    #   resp.data.schema_extensions_info[0] #=> Types::SchemaExtensionInfo
    #   resp.data.schema_extensions_info[0].directory_id #=> String
    #   resp.data.schema_extensions_info[0].schema_extension_id #=> String
    #   resp.data.schema_extensions_info[0].description #=> String
    #   resp.data.schema_extensions_info[0].schema_extension_status #=> String, one of ["Initializing", "CreatingSnapshot", "UpdatingSchema", "Replicating", "CancelInProgress", "RollbackInProgress", "Cancelled", "Failed", "Completed"]
    #   resp.data.schema_extensions_info[0].schema_extension_status_reason #=> String
    #   resp.data.schema_extensions_info[0].start_date_time #=> Time
    #   resp.data.schema_extensions_info[0].end_date_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_schema_extensions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSchemaExtensionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSchemaExtensionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSchemaExtensions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::InvalidNextTokenException, Errors::ClientException]),
        data_parser: Parsers::ListSchemaExtensions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSchemaExtensions,
        stubs: @stubs,
        params_class: Params::ListSchemaExtensionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_schema_extensions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all tags on a directory.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_id
    #   <p>Identifier (ID) of the directory for which you want to retrieve tags.</p>
    #
    # @option params [String] :next_token
    #   <p>Reserved for future use.</p>
    #
    # @option params [Integer] :limit
    #   <p>Reserved for future use.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_id: 'ResourceId', # required
    #     next_token: 'NextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.next_token #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::InvalidNextTokenException, Errors::InvalidParameterException, Errors::ClientException]),
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

    # <p>Registers a certificate for a secure LDAP or client certificate authentication.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterCertificateInput}.
    #
    # @option params [String] :directory_id
    #   <p>The identifier of the directory.</p>
    #
    # @option params [String] :certificate_data
    #   <p>The certificate PEM string that needs to be registered.</p>
    #
    # @option params [String] :type
    #   <p>The function that the registered certificate performs. Valid values include <code>ClientLDAPS</code> or <code>ClientCertAuth</code>. The default value is <code>ClientLDAPS</code>.</p>
    #
    # @option params [ClientCertAuthSettings] :client_cert_auth_settings
    #   <p>A <code>ClientCertAuthSettings</code> object that contains client certificate authentication settings.</p>
    #
    # @return [Types::RegisterCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_certificate(
    #     directory_id: 'DirectoryId', # required
    #     certificate_data: 'CertificateData', # required
    #     type: 'ClientCertAuth', # accepts ["ClientCertAuth", "ClientLDAPS"]
    #     client_cert_auth_settings: {
    #       ocsp_url: 'OCSPUrl'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterCertificateOutput
    #   resp.data.certificate_id #=> String
    #
    def register_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterCertificateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterCertificate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CertificateAlreadyExistsException, Errors::ServiceException, Errors::UnsupportedOperationException, Errors::DirectoryUnavailableException, Errors::CertificateLimitExceededException, Errors::DirectoryDoesNotExistException, Errors::InvalidCertificateException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::RegisterCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterCertificate,
        stubs: @stubs,
        params_class: Params::RegisterCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a directory with an Amazon SNS topic. This establishes the directory as a
    #       publisher to the specified Amazon SNS topic. You can then receive email or text (SMS) messages when
    #       the status of your directory changes. You get notified if your directory goes from an Active
    #       status to an Impaired or Inoperable status. You also receive a notification when the directory
    #       returns to an Active status.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterEventTopicInput}.
    #
    # @option params [String] :directory_id
    #   <p>The Directory ID that will publish status messages to the Amazon SNS topic.</p>
    #
    # @option params [String] :topic_name
    #   <p>The Amazon SNS topic name to which the directory will publish status messages. This Amazon SNS
    #         topic must be in the same region as the specified Directory ID.</p>
    #
    # @return [Types::RegisterEventTopicOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_event_topic(
    #     directory_id: 'DirectoryId', # required
    #     topic_name: 'TopicName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterEventTopicOutput
    #
    def register_event_topic(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterEventTopicInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterEventTopicInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterEventTopic
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::RegisterEventTopic
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterEventTopic,
        stubs: @stubs,
        params_class: Params::RegisterEventTopicOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_event_topic
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Rejects a directory sharing request that was sent from the directory owner account.</p>
    #
    # @param [Hash] params
    #   See {Types::RejectSharedDirectoryInput}.
    #
    # @option params [String] :shared_directory_id
    #   <p>Identifier of the shared directory in the directory consumer account. This identifier is
    #         different for each directory owner account.</p>
    #
    # @return [Types::RejectSharedDirectoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_shared_directory(
    #     shared_directory_id: 'SharedDirectoryId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RejectSharedDirectoryOutput
    #   resp.data.shared_directory_id #=> String
    #
    def reject_shared_directory(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RejectSharedDirectoryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RejectSharedDirectoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RejectSharedDirectory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::DirectoryAlreadySharedException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::RejectSharedDirectory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RejectSharedDirectory,
        stubs: @stubs,
        params_class: Params::RejectSharedDirectoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reject_shared_directory
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes IP address blocks from a directory.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveIpRoutesInput}.
    #
    # @option params [String] :directory_id
    #   <p>Identifier (ID) of the directory from which you want to remove the IP
    #            addresses.</p>
    #
    # @option params [Array<String>] :cidr_ips
    #   <p>IP address blocks that you want to remove.</p>
    #
    # @return [Types::RemoveIpRoutesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_ip_routes(
    #     directory_id: 'DirectoryId', # required
    #     cidr_ips: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveIpRoutesOutput
    #
    def remove_ip_routes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveIpRoutesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveIpRoutesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveIpRoutes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::DirectoryUnavailableException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::RemoveIpRoutes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveIpRoutes,
        stubs: @stubs,
        params_class: Params::RemoveIpRoutesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_ip_routes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops all replication and removes the domain controllers from the specified Region. You
    #       cannot remove the primary Region with this operation. Instead, use the
    #         <code>DeleteDirectory</code> API.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveRegionInput}.
    #
    # @option params [String] :directory_id
    #   <p>The identifier of the directory for which you want to remove Region replication.</p>
    #
    # @return [Types::RemoveRegionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_region(
    #     directory_id: 'DirectoryId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveRegionOutput
    #
    def remove_region(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveRegionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveRegionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveRegion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceException, Errors::UnsupportedOperationException, Errors::DirectoryUnavailableException, Errors::DirectoryDoesNotExistException, Errors::AccessDeniedException, Errors::ClientException]),
        data_parser: Parsers::RemoveRegion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveRegion,
        stubs: @stubs,
        params_class: Params::RemoveRegionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_region
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes tags from a directory.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveTagsFromResourceInput}.
    #
    # @option params [String] :resource_id
    #   <p>Identifier (ID) of the directory from which to remove the tag.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag key (name) of the tag to be removed.</p>
    #
    # @return [Types::RemoveTagsFromResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags_from_resource(
    #     resource_id: 'ResourceId', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveTagsFromResourceOutput
    #
    def remove_tags_from_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveTagsFromResourceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveTagsFromResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveTagsFromResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::RemoveTagsFromResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveTagsFromResource,
        stubs: @stubs,
        params_class: Params::RemoveTagsFromResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_tags_from_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Resets the password for any user in your Managed Microsoft AD or Simple AD
    #       directory.</p>
    #          <p>You can reset the password for any user in your directory with the following
    #       exceptions:</p>
    #          <ul>
    #             <li>
    #                <p>For Simple AD, you cannot reset the password for any user that is a member of either
    #           the <b>Domain Admins</b> or <b>Enterprise
    #             Admins</b> group except for the administrator user.</p>
    #             </li>
    #             <li>
    #                <p>For Managed Microsoft AD, you can only reset the password for a user that is in an
    #           OU based off of the NetBIOS name that you typed when you created your directory. For
    #           example, you cannot reset the password for a user in the <b>Amazon Web Services
    #             Reserved</b> OU. For more information about the OU structure for an Managed Microsoft AD directory, see <a href="https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ms_ad_getting_started_what_gets_created.html">What Gets Created</a> in the <i>Directory Service Administration
    #             Guide</i>.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ResetUserPasswordInput}.
    #
    # @option params [String] :directory_id
    #   <p>Identifier of the Managed Microsoft AD or Simple AD directory in which the user
    #         resides.</p>
    #
    # @option params [String] :user_name
    #   <p>The user name of the user whose password will be reset.</p>
    #
    # @option params [String] :new_password
    #   <p>The new password that will be reset.</p>
    #
    # @return [Types::ResetUserPasswordOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_user_password(
    #     directory_id: 'DirectoryId', # required
    #     user_name: 'UserName', # required
    #     new_password: 'NewPassword' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResetUserPasswordOutput
    #
    def reset_user_password(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResetUserPasswordInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResetUserPasswordInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResetUserPassword
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::UnsupportedOperationException, Errors::UserDoesNotExistException, Errors::DirectoryUnavailableException, Errors::InvalidPasswordException, Errors::ClientException]),
        data_parser: Parsers::ResetUserPassword
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResetUserPassword,
        stubs: @stubs,
        params_class: Params::ResetUserPasswordOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reset_user_password
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Restores a directory using an existing directory snapshot.</p>
    #          <p>When you restore a directory from a snapshot, any changes made to the directory after the snapshot date are overwritten.</p>
    #          <p>This action returns as soon as the restore operation is initiated. You can monitor the
    #          progress of the restore operation by calling the <a>DescribeDirectories</a> operation with
    #          the directory identifier. When the <b>DirectoryDescription.Stage</b> value changes to
    #             <code>Active</code>, the restore operation is complete.</p>
    #
    # @param [Hash] params
    #   See {Types::RestoreFromSnapshotInput}.
    #
    # @option params [String] :snapshot_id
    #   <p>The identifier of the snapshot to restore from.</p>
    #
    # @return [Types::RestoreFromSnapshotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_from_snapshot(
    #     snapshot_id: 'SnapshotId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RestoreFromSnapshotOutput
    #
    def restore_from_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RestoreFromSnapshotInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RestoreFromSnapshotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RestoreFromSnapshot
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::RestoreFromSnapshot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RestoreFromSnapshot,
        stubs: @stubs,
        params_class: Params::RestoreFromSnapshotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :restore_from_snapshot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Shares a specified directory (<code>DirectoryId</code>) in your Amazon Web Services account (directory
    #       owner) with another Amazon Web Services account (directory consumer). With this operation you can use your
    #       directory from any Amazon Web Services account and from any Amazon VPC within an Amazon Web Services Region.</p>
    #          <p>When you share your Managed Microsoft AD directory, Directory Service creates a
    #       shared directory in the directory consumer account. This shared directory contains the
    #       metadata to provide access to the directory within the directory owner account. The shared
    #       directory is visible in all VPCs in the directory consumer account.</p>
    #          <p>The <code>ShareMethod</code> parameter determines whether the specified directory can be
    #       shared between Amazon Web Services accounts inside the same Amazon Web Services organization (<code>ORGANIZATIONS</code>). It
    #       also determines whether you can share the directory with any other Amazon Web Services account either inside
    #       or outside of the organization (<code>HANDSHAKE</code>).</p>
    #          <p>The <code>ShareNotes</code> parameter is only used when <code>HANDSHAKE</code> is called,
    #       which sends a directory sharing request to the directory consumer. </p>
    #
    # @param [Hash] params
    #   See {Types::ShareDirectoryInput}.
    #
    # @option params [String] :directory_id
    #   <p>Identifier of the Managed Microsoft AD directory that you want to share with other Amazon Web Services accounts.</p>
    #
    # @option params [String] :share_notes
    #   <p>A directory share request that is sent by the directory owner to the directory consumer.
    #         The request includes a typed message to help the directory consumer administrator determine
    #         whether to approve or reject the share invitation.</p>
    #
    # @option params [ShareTarget] :share_target
    #   <p>Identifier for the directory consumer account with whom the directory is to be
    #         shared.</p>
    #
    # @option params [String] :share_method
    #   <p>The method used when sharing a directory to determine whether the directory should be
    #         shared within your Amazon Web Services organization (<code>ORGANIZATIONS</code>) or with any Amazon Web Services account by
    #         sending a directory sharing request (<code>HANDSHAKE</code>).</p>
    #
    # @return [Types::ShareDirectoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.share_directory(
    #     directory_id: 'DirectoryId', # required
    #     share_notes: 'ShareNotes',
    #     share_target: {
    #       id: 'Id', # required
    #       type: 'ACCOUNT' # required - accepts ["ACCOUNT"]
    #     }, # required
    #     share_method: 'ORGANIZATIONS' # required - accepts ["ORGANIZATIONS", "HANDSHAKE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ShareDirectoryOutput
    #   resp.data.shared_directory_id #=> String
    #
    def share_directory(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ShareDirectoryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ShareDirectoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ShareDirectory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::OrganizationsException, Errors::UnsupportedOperationException, Errors::ShareLimitExceededException, Errors::AccessDeniedException, Errors::InvalidTargetException, Errors::DirectoryAlreadySharedException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::ShareDirectory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ShareDirectory,
        stubs: @stubs,
        params_class: Params::ShareDirectoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :share_directory
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Applies a schema extension to a Microsoft AD directory.</p>
    #
    # @param [Hash] params
    #   See {Types::StartSchemaExtensionInput}.
    #
    # @option params [String] :directory_id
    #   <p>The identifier of the directory for which the schema extension will be applied
    #         to.</p>
    #
    # @option params [Boolean] :create_snapshot_before_schema_extension
    #   <p>If true, creates a snapshot of the directory before applying the schema
    #         extension.</p>
    #
    # @option params [String] :ldif_content
    #   <p>The LDIF file represented as a string. To construct the LdifContent string, precede
    #         each line as it would be formatted in an ldif file with \n. See the example request below for
    #         more details. The file size can be no larger than 1MB.</p>
    #
    # @option params [String] :description
    #   <p>A description of the schema extension.</p>
    #
    # @return [Types::StartSchemaExtensionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_schema_extension(
    #     directory_id: 'DirectoryId', # required
    #     create_snapshot_before_schema_extension: false, # required
    #     ldif_content: 'LdifContent', # required
    #     description: 'Description' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartSchemaExtensionOutput
    #   resp.data.schema_extension_id #=> String
    #
    def start_schema_extension(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartSchemaExtensionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartSchemaExtensionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartSchemaExtension
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::SnapshotLimitExceededException, Errors::DirectoryUnavailableException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::StartSchemaExtension
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartSchemaExtension,
        stubs: @stubs,
        params_class: Params::StartSchemaExtensionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_schema_extension
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops the directory sharing between the directory owner and consumer accounts. </p>
    #
    # @param [Hash] params
    #   See {Types::UnshareDirectoryInput}.
    #
    # @option params [String] :directory_id
    #   <p>The identifier of the Managed Microsoft AD directory that you want to stop
    #         sharing.</p>
    #
    # @option params [UnshareTarget] :unshare_target
    #   <p>Identifier for the directory consumer account with whom the directory has to be
    #         unshared.</p>
    #
    # @return [Types::UnshareDirectoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.unshare_directory(
    #     directory_id: 'DirectoryId', # required
    #     unshare_target: {
    #       id: 'Id', # required
    #       type: 'ACCOUNT' # required - accepts ["ACCOUNT"]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UnshareDirectoryOutput
    #   resp.data.shared_directory_id #=> String
    #
    def unshare_directory(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UnshareDirectoryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UnshareDirectoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UnshareDirectory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectoryNotSharedException, Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::InvalidTargetException, Errors::ClientException]),
        data_parser: Parsers::UnshareDirectory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UnshareDirectory,
        stubs: @stubs,
        params_class: Params::UnshareDirectoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :unshare_directory
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a conditional forwarder that has been set up for your Amazon Web Services
    #       directory.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateConditionalForwarderInput}.
    #
    # @option params [String] :directory_id
    #   <p>The directory ID of the Amazon Web Services directory for which to update the conditional
    #         forwarder.</p>
    #
    # @option params [String] :remote_domain_name
    #   <p>The fully qualified domain name (FQDN) of the remote domain with which you will set up
    #         a trust relationship.</p>
    #
    # @option params [Array<String>] :dns_ip_addrs
    #   <p>The updated IP addresses of the remote DNS server associated with the conditional
    #         forwarder.</p>
    #
    # @return [Types::UpdateConditionalForwarderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_conditional_forwarder(
    #     directory_id: 'DirectoryId', # required
    #     remote_domain_name: 'RemoteDomainName', # required
    #     dns_ip_addrs: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateConditionalForwarderOutput
    #
    def update_conditional_forwarder(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateConditionalForwarderInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateConditionalForwarderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateConditionalForwarder
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::UnsupportedOperationException, Errors::DirectoryUnavailableException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::UpdateConditionalForwarder
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateConditionalForwarder,
        stubs: @stubs,
        params_class: Params::UpdateConditionalForwarderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_conditional_forwarder
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or removes domain controllers to or from the directory. Based on the difference
    #       between current value and new value (provided through this API call), domain controllers will
    #       be added or removed. It may take up to 45 minutes for any new domain controllers to become
    #       fully active once the requested number of domain controllers is updated. During this time, you
    #       cannot make another update request.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateNumberOfDomainControllersInput}.
    #
    # @option params [String] :directory_id
    #   <p>Identifier of the directory to which the domain controllers will be added or
    #         removed.</p>
    #
    # @option params [Integer] :desired_number
    #   <p>The number of domain controllers desired in the directory.</p>
    #
    # @return [Types::UpdateNumberOfDomainControllersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_number_of_domain_controllers(
    #     directory_id: 'DirectoryId', # required
    #     desired_number: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateNumberOfDomainControllersOutput
    #
    def update_number_of_domain_controllers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateNumberOfDomainControllersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateNumberOfDomainControllersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateNumberOfDomainControllers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::DomainControllerLimitExceededException, Errors::UnsupportedOperationException, Errors::DirectoryUnavailableException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::UpdateNumberOfDomainControllers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateNumberOfDomainControllers,
        stubs: @stubs,
        params_class: Params::UpdateNumberOfDomainControllersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_number_of_domain_controllers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the Remote Authentication Dial In User Service (RADIUS) server information
    #          for an AD Connector or Microsoft AD directory.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRadiusInput}.
    #
    # @option params [String] :directory_id
    #   <p>The identifier of the directory for which to update the RADIUS server
    #            information.</p>
    #
    # @option params [RadiusSettings] :radius_settings
    #   <p>A <a>RadiusSettings</a> object that contains information about the RADIUS
    #            server.</p>
    #
    # @return [Types::UpdateRadiusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_radius(
    #     directory_id: 'DirectoryId', # required
    #     radius_settings: {
    #       radius_servers: [
    #         'member'
    #       ],
    #       radius_port: 1,
    #       radius_timeout: 1,
    #       radius_retries: 1,
    #       shared_secret: 'SharedSecret',
    #       authentication_protocol: 'PAP', # accepts ["PAP", "CHAP", "MS-CHAPv1", "MS-CHAPv2"]
    #       display_label: 'DisplayLabel',
    #       use_same_username: false
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRadiusOutput
    #
    def update_radius(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRadiusInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRadiusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRadius
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::UpdateRadius
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRadius,
        stubs: @stubs,
        params_class: Params::UpdateRadiusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_radius
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the trust that has been set up between your Managed Microsoft AD directory and an
    #       self-managed Active Directory.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateTrustInput}.
    #
    # @option params [String] :trust_id
    #   <p>Identifier of the trust relationship.</p>
    #
    # @option params [String] :selective_auth
    #   <p>Updates selective authentication for the trust.</p>
    #
    # @return [Types::UpdateTrustOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_trust(
    #     trust_id: 'TrustId', # required
    #     selective_auth: 'Enabled' # accepts ["Enabled", "Disabled"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateTrustOutput
    #   resp.data.request_id #=> String
    #   resp.data.trust_id #=> String
    #
    def update_trust(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTrustInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTrustInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTrust
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::UpdateTrust
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateTrust,
        stubs: @stubs,
        params_class: Params::UpdateTrustOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_trust
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Directory Service for Microsoft Active Directory allows you to configure and verify trust
    #       relationships.</p>
    #          <p>This action verifies a trust relationship between your Managed Microsoft AD directory and an
    #       external domain.</p>
    #
    # @param [Hash] params
    #   See {Types::VerifyTrustInput}.
    #
    # @option params [String] :trust_id
    #   <p>The unique Trust ID of the trust relationship to verify.</p>
    #
    # @return [Types::VerifyTrustOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.verify_trust(
    #     trust_id: 'TrustId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::VerifyTrustOutput
    #   resp.data.trust_id #=> String
    #
    def verify_trust(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::VerifyTrustInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::VerifyTrustInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::VerifyTrust
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityDoesNotExistException, Errors::ServiceException, Errors::UnsupportedOperationException, Errors::InvalidParameterException, Errors::ClientException]),
        data_parser: Parsers::VerifyTrust
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::VerifyTrust,
        stubs: @stubs,
        params_class: Params::VerifyTrustOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :verify_trust
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
