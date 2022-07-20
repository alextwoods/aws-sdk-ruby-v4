# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::DataSync
  # An API client for FmrsService
  # See {#initialize} for a full list of supported configuration options
  # <fullname>DataSync</fullname>
  #
  #          <p>DataSync is a managed data transfer service that makes it simpler for you to
  #       automate moving data between on-premises storage and Amazon Simple Storage Service (Amazon S3)
  #       or Amazon Elastic File System (Amazon EFS). </p>
  #          <p>This API interface reference for DataSync contains documentation for a
  #       programming interface that you can use to manage DataSync.</p>
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
    def initialize(config = AWS::SDK::DataSync::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Cancels execution of a task. </p>
    #          <p>When you cancel a task execution, the transfer of some files is abruptly interrupted.
    #       The contents of files that are transferred to the destination might be incomplete or
    #       inconsistent with the source files. However, if you start a new task execution on the same
    #       task and you allow the task execution to complete, file content on the destination is complete
    #       and consistent. This applies to other unexpected failures that interrupt a task execution. In
    #       all of these cases, DataSync successfully complete the transfer when you start the next
    #       task execution.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelTaskExecutionInput}.
    #
    # @option params [String] :task_execution_arn
    #   <p>The Amazon Resource Name (ARN) of the task execution to cancel.</p>
    #
    # @return [Types::CancelTaskExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_task_execution(
    #     task_execution_arn: 'TaskExecutionArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelTaskExecutionOutput
    #
    def cancel_task_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelTaskExecutionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelTaskExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelTaskExecution
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::CancelTaskExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelTaskExecution,
        stubs: @stubs,
        params_class: Params::CancelTaskExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_task_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Activates an DataSync agent that you have deployed on your host. The activation
    #       process associates your agent with your account. In the activation process, you specify
    #       information such as the Amazon Web Services Region that you want to activate the agent in. You activate the
    #       agent in the Amazon Web Services Region where your target locations (in Amazon S3 or Amazon EFS) reside. Your
    #       tasks are created in this Amazon Web Services Region.</p>
    #          <p>You can activate the agent in a VPC (virtual private cloud) or provide the agent access to
    #       a VPC endpoint so you can run tasks without going over the public internet.</p>
    #          <p>You can use an agent for more than one location. If a task uses multiple agents, all of
    #       them need to have status AVAILABLE for the task to run. If you use multiple agents for a
    #       source location, the status of all the agents must be AVAILABLE for the task to run. </p>
    #
    #
    #          <p>Agents are automatically updated by Amazon Web Services on a regular basis, using a mechanism that
    #       ensures minimal interruption to your tasks.</p>
    #          <p></p>
    #
    # @param [Hash] params
    #   See {Types::CreateAgentInput}.
    #
    # @option params [String] :activation_key
    #   <p>Your agent activation key. You can get the activation key either by sending an HTTP GET
    #         request with redirects that enable you to get the agent IP address (port 80). Alternatively,
    #         you can get it from the DataSync console.</p>
    #            <p>The redirect URL returned in the response provides you the activation key for your
    #         agent in the query string parameter <code>activationKey</code>. It might also include other
    #         activation-related parameters; however, these are merely defaults. The arguments you pass to
    #         this API call determine the actual configuration of your agent.</p>
    #
    #
    #            <p>For more information, see Activating an Agent in the <i>DataSync
    #           User Guide.</i>
    #            </p>
    #
    # @option params [String] :agent_name
    #   <p>The name you configured for your agent. This value is a text reference that is used to
    #         identify the agent in the console.</p>
    #
    # @option params [Array<TagListEntry>] :tags
    #   <p>The key-value pair that represents the tag that you want to associate with the agent.
    #         The value can be an empty string. This value helps you manage, filter, and search for your
    #         agents.</p>
    #            <note>
    #               <p>Valid characters for key and value are letters, spaces, and numbers representable in
    #           UTF-8 format, and the following special characters: + - = . _ : / @. </p>
    #            </note>
    #
    # @option params [String] :vpc_endpoint_id
    #   <p>The ID of the VPC (virtual private cloud) endpoint that the agent has access to. This is
    #         the client-side VPC endpoint, also called a PrivateLink. If you don't have a PrivateLink VPC
    #         endpoint, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/endpoint-service.html#create-endpoint-service">Creating a VPC Endpoint Service Configuration</a> in the Amazon VPC User Guide.</p>
    #            <p>VPC endpoint ID looks like this: <code>vpce-01234d5aff67890e1</code>.</p>
    #
    # @option params [Array<String>] :subnet_arns
    #   <p>The Amazon Resource Names (ARNs) of the subnets in which DataSync will create elastic
    #         network interfaces for each data transfer task. The agent that runs a task must be private.
    #         When you start a task that is associated with an agent created in a VPC, or one that has
    #         access to an IP address in a VPC, then the task is also private. In this case, DataSync
    #         creates four network interfaces for each task in your subnet. For a data transfer to work, the
    #         agent must be able to route to all these four network interfaces.</p>
    #
    # @option params [Array<String>] :security_group_arns
    #   <p>The ARNs of the security groups used to protect your data transfer task subnets. See <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_Ec2Config.html#DataSync-Type-Ec2Config-SecurityGroupArns">SecurityGroupArns</a>.</p>
    #
    # @return [Types::CreateAgentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_agent(
    #     activation_key: 'ActivationKey', # required
    #     agent_name: 'AgentName',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ],
    #     vpc_endpoint_id: 'VpcEndpointId',
    #     subnet_arns: [
    #       'member'
    #     ],
    #     security_group_arns: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAgentOutput
    #   resp.data.agent_arn #=> String
    #
    def create_agent(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAgentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAgentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAgent
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateAgent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAgent,
        stubs: @stubs,
        params_class: Params::CreateAgentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_agent
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an endpoint for an Amazon EFS file system that DataSync
    #       can access for a transfer. For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-efs-location.html">Creating a location for Amazon EFS</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateLocationEfsInput}.
    #
    # @option params [String] :subdirectory
    #   <p>Specifies a mount path for your Amazon EFS file system. This is where DataSync reads or writes data (depending on if this is a source or destination location). By default, DataSync uses the root directory, but you can also include subdirectories.</p>
    #            <note>
    #               <p>You must specify a value with forward slashes (for example,
    #             <code>/path/to/folder</code>).</p>
    #            </note>
    #
    # @option params [String] :efs_filesystem_arn
    #   <p>Specifies the ARN for the Amazon EFS file system.</p>
    #
    # @option params [Ec2Config] :ec2_config
    #   <p>Specifies the subnet and security groups DataSync uses to access your Amazon EFS file system.</p>
    #
    # @option params [Array<TagListEntry>] :tags
    #   <p>Specifies the key-value pair that represents a tag that you want to add to the
    #         resource. The value can be an empty string. This value helps you manage, filter, and search
    #         for your resources. We recommend that you create a name tag for your location.</p>
    #
    # @option params [String] :access_point_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the access point that DataSync uses to access the Amazon EFS file system.</p>
    #
    # @option params [String] :file_system_access_role_arn
    #   <p>Specifies an Identity and Access Management (IAM) role that DataSync
    #         assumes when mounting the Amazon EFS file system.</p>
    #
    # @option params [String] :in_transit_encryption
    #   <p>Specifies whether you want DataSync to use TLS encryption when transferring data to or from your Amazon EFS file system.</p>
    #            <p>If you specify an access point using <code>AccessPointArn</code> or an IAM
    #         role using <code>FileSystemAccessRoleArn</code>, you must set this parameter to
    #           <code>TLS1_2</code>.</p>
    #
    # @return [Types::CreateLocationEfsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_location_efs(
    #     subdirectory: 'Subdirectory',
    #     efs_filesystem_arn: 'EfsFilesystemArn', # required
    #     ec2_config: {
    #       subnet_arn: 'SubnetArn', # required
    #       security_group_arns: [
    #         'member'
    #       ] # required
    #     }, # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ],
    #     access_point_arn: 'AccessPointArn',
    #     file_system_access_role_arn: 'FileSystemAccessRoleArn',
    #     in_transit_encryption: 'NONE' # accepts ["NONE", "TLS1_2"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateLocationEfsOutput
    #   resp.data.location_arn #=> String
    #
    def create_location_efs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLocationEfsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLocationEfsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLocationEfs
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateLocationEfs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLocationEfs,
        stubs: @stubs,
        params_class: Params::CreateLocationEfsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_location_efs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an endpoint for an Amazon FSx for Lustre file system.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateLocationFsxLustreInput}.
    #
    # @option params [String] :fsx_filesystem_arn
    #   <p>The Amazon Resource Name (ARN) for the FSx for Lustre file system.</p>
    #
    # @option params [Array<String>] :security_group_arns
    #   <p>The Amazon Resource Names (ARNs) of the security groups that are used to configure the FSx for Lustre file system.</p>
    #
    # @option params [String] :subdirectory
    #   <p>A subdirectory in the location's path. This subdirectory in the FSx for Lustre file system is used to read data from the FSx for Lustre source location or write data to the FSx for Lustre  destination.</p>
    #
    # @option params [Array<TagListEntry>] :tags
    #   <p>The key-value pair that represents a tag that you want to add to the resource. The value can be an empty string. This value helps you manage, filter, and search for your resources. We recommend that you create a name tag for your location.</p>
    #
    # @return [Types::CreateLocationFsxLustreOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_location_fsx_lustre(
    #     fsx_filesystem_arn: 'FsxFilesystemArn', # required
    #     security_group_arns: [
    #       'member'
    #     ], # required
    #     subdirectory: 'Subdirectory',
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
    #   resp.data #=> Types::CreateLocationFsxLustreOutput
    #   resp.data.location_arn #=> String
    #
    def create_location_fsx_lustre(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLocationFsxLustreInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLocationFsxLustreInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLocationFsxLustre
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateLocationFsxLustre
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLocationFsxLustre,
        stubs: @stubs,
        params_class: Params::CreateLocationFsxLustreOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_location_fsx_lustre
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an endpoint for an Amazon FSx for OpenZFS file system.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateLocationFsxOpenZfsInput}.
    #
    # @option params [String] :fsx_filesystem_arn
    #   <p>The Amazon Resource Name (ARN) of the FSx for OpenZFS file system.</p>
    #
    # @option params [FsxProtocol] :protocol
    #   <p>The type of protocol that DataSync uses to
    #         access your file system.</p>
    #
    # @option params [Array<String>] :security_group_arns
    #   <p>The ARNs of the security groups that are used to configure the
    #         FSx for OpenZFS file system.</p>
    #
    # @option params [String] :subdirectory
    #   <p>A subdirectory in the location's path that must begin with <code>/fsx</code>. DataSync uses this subdirectory to read
    #         or write data (depending on whether the file system is a source or destination
    #         location).</p>
    #
    # @option params [Array<TagListEntry>] :tags
    #   <p>The key-value pair that represents a tag that you want to add to the resource. The value can be an empty string. This value helps you manage, filter, and search for your resources. We recommend that you create a name tag for your location.</p>
    #
    # @return [Types::CreateLocationFsxOpenZfsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_location_fsx_open_zfs(
    #     fsx_filesystem_arn: 'FsxFilesystemArn', # required
    #     protocol: {
    #       nfs: {
    #         mount_options: {
    #           version: 'AUTOMATIC' # accepts ["AUTOMATIC", "NFS3", "NFS4_0", "NFS4_1"]
    #         }
    #       }
    #     }, # required
    #     security_group_arns: [
    #       'member'
    #     ], # required
    #     subdirectory: 'Subdirectory',
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
    #   resp.data #=> Types::CreateLocationFsxOpenZfsOutput
    #   resp.data.location_arn #=> String
    #
    def create_location_fsx_open_zfs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLocationFsxOpenZfsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLocationFsxOpenZfsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLocationFsxOpenZfs
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateLocationFsxOpenZfs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLocationFsxOpenZfs,
        stubs: @stubs,
        params_class: Params::CreateLocationFsxOpenZfsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_location_fsx_open_zfs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an endpoint for an Amazon FSx for Windows File Server file system.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateLocationFsxWindowsInput}.
    #
    # @option params [String] :subdirectory
    #   <p>A subdirectory in the location's path. This subdirectory in the Amazon FSx for Windows
    #         File Server file system is used to read data from the Amazon FSx for Windows File Server
    #         source location or write data to the FSx for Windows File Server destination.</p>
    #
    # @option params [String] :fsx_filesystem_arn
    #   <p>The Amazon Resource Name (ARN) for the FSx for Windows File Server file system.</p>
    #
    # @option params [Array<String>] :security_group_arns
    #   <p>The ARNs of the security groups that are used to configure the
    #         FSx for Windows File Server file system.</p>
    #
    # @option params [Array<TagListEntry>] :tags
    #   <p>The key-value pair that represents a tag that you want to add to the resource. The
    #         value can be an empty string. This value helps you manage, filter, and search for your
    #         resources. We recommend that you create a name tag for your location.</p>
    #
    # @option params [String] :user
    #   <p>The user who has the permissions to access files and folders in the FSx for Windows File
    #         Server file system.</p>
    #            <p>For information about choosing a user name that ensures sufficient permissions to files,
    #         folders, and metadata, see <a href="create-fsx-location.html#FSxWuser">user</a>.</p>
    #
    # @option params [String] :domain
    #   <p>The name of the Windows domain that the FSx for Windows File Server belongs to.</p>
    #
    # @option params [String] :password
    #   <p>The password of the user who has the permissions to access files and folders in the FSx
    #         for Windows File Server file system.</p>
    #
    # @return [Types::CreateLocationFsxWindowsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_location_fsx_windows(
    #     subdirectory: 'Subdirectory',
    #     fsx_filesystem_arn: 'FsxFilesystemArn', # required
    #     security_group_arns: [
    #       'member'
    #     ], # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ],
    #     user: 'User', # required
    #     domain: 'Domain',
    #     password: 'Password' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateLocationFsxWindowsOutput
    #   resp.data.location_arn #=> String
    #
    def create_location_fsx_windows(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLocationFsxWindowsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLocationFsxWindowsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLocationFsxWindows
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateLocationFsxWindows
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLocationFsxWindows,
        stubs: @stubs,
        params_class: Params::CreateLocationFsxWindowsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_location_fsx_windows
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an endpoint for a Hadoop Distributed File System (HDFS). </p>
    #
    # @param [Hash] params
    #   See {Types::CreateLocationHdfsInput}.
    #
    # @option params [String] :subdirectory
    #   <p>A subdirectory in the HDFS cluster. This subdirectory is used to read data from or write
    #         data to the HDFS cluster. If the subdirectory isn't specified, it will default to
    #           <code>/</code>.</p>
    #
    # @option params [Array<HdfsNameNode>] :name_nodes
    #   <p>The NameNode that manages the HDFS namespace. The NameNode performs operations such as
    #         opening, closing, and renaming files and directories. The NameNode contains the information to
    #         map blocks of data to the DataNodes. You can use only one NameNode.</p>
    #
    # @option params [Integer] :block_size
    #   <p>The size of data blocks to write into the HDFS cluster. The block size must be a multiple
    #         of 512 bytes. The default block size is 128 mebibytes (MiB).</p>
    #
    # @option params [Integer] :replication_factor
    #   <p>The number of DataNodes to replicate the data to when writing to the HDFS cluster. By
    #         default, data is replicated to three DataNodes.</p>
    #
    # @option params [String] :kms_key_provider_uri
    #   <p>The URI of the HDFS cluster's Key Management Server (KMS). </p>
    #
    # @option params [QopConfiguration] :qop_configuration
    #   <p>The Quality of Protection (QOP) configuration specifies the Remote Procedure Call (RPC)
    #         and data transfer protection settings configured on the Hadoop Distributed File System (HDFS)
    #         cluster. If <code>QopConfiguration</code> isn't specified, <code>RpcProtection</code> and
    #           <code>DataTransferProtection</code> default to <code>PRIVACY</code>. If you set
    #           <code>RpcProtection</code> or <code>DataTransferProtection</code>, the other parameter
    #         assumes the same value. </p>
    #
    # @option params [String] :authentication_type
    #   <p>The type of authentication used to determine the identity of the user. </p>
    #
    # @option params [String] :simple_user
    #   <p>The user name used to identify the client on the host operating system. </p>
    #            <note>
    #               <p>If <code>SIMPLE</code> is specified for <code>AuthenticationType</code>, this parameter
    #           is required. </p>
    #            </note>
    #
    # @option params [String] :kerberos_principal
    #   <p>The Kerberos principal with access to the files and folders on the HDFS cluster. </p>
    #            <note>
    #               <p>If <code>KERBEROS</code> is specified for <code>AuthenticationType</code>, this
    #           parameter is required.</p>
    #            </note>
    #
    # @option params [String] :kerberos_keytab
    #   <p>The Kerberos key table (keytab) that contains mappings between the defined Kerberos
    #         principal and the encrypted keys. You can load the keytab from a file by providing the file's
    #         address. If you're using the CLI, it performs base64 encoding for you.
    #         Otherwise, provide the base64-encoded text. </p>
    #            <note>
    #               <p>If <code>KERBEROS</code> is specified for <code>AuthenticationType</code>, this
    #           parameter is required. </p>
    #            </note>
    #
    # @option params [String] :kerberos_krb5_conf
    #   <p>The <code>krb5.conf</code> file that contains the Kerberos configuration information. You
    #         can load the <code>krb5.conf</code> file by providing the file's address. If you're using the
    #           CLI, it performs the base64 encoding for you. Otherwise, provide the
    #         base64-encoded text. </p>
    #            <note>
    #               <p>If <code>KERBEROS</code> is specified for <code>AuthenticationType</code>, this
    #           parameter is required.</p>
    #            </note>
    #
    # @option params [Array<String>] :agent_arns
    #   <p>The Amazon Resource Names (ARNs) of the agents that are used to connect to the HDFS
    #         cluster.</p>
    #
    # @option params [Array<TagListEntry>] :tags
    #   <p>The key-value pair that represents the tag that you want to add to the location. The value
    #         can be an empty string. We recommend using tags to name your resources. </p>
    #
    # @return [Types::CreateLocationHdfsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_location_hdfs(
    #     subdirectory: 'Subdirectory',
    #     name_nodes: [
    #       {
    #         hostname: 'Hostname', # required
    #         port: 1 # required
    #       }
    #     ], # required
    #     block_size: 1,
    #     replication_factor: 1,
    #     kms_key_provider_uri: 'KmsKeyProviderUri',
    #     qop_configuration: {
    #       rpc_protection: 'DISABLED', # accepts ["DISABLED", "AUTHENTICATION", "INTEGRITY", "PRIVACY"]
    #       data_transfer_protection: 'DISABLED' # accepts ["DISABLED", "AUTHENTICATION", "INTEGRITY", "PRIVACY"]
    #     },
    #     authentication_type: 'SIMPLE', # required - accepts ["SIMPLE", "KERBEROS"]
    #     simple_user: 'SimpleUser',
    #     kerberos_principal: 'KerberosPrincipal',
    #     kerberos_keytab: 'KerberosKeytab',
    #     kerberos_krb5_conf: 'KerberosKrb5Conf',
    #     agent_arns: [
    #       'member'
    #     ], # required
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
    #   resp.data #=> Types::CreateLocationHdfsOutput
    #   resp.data.location_arn #=> String
    #
    def create_location_hdfs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLocationHdfsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLocationHdfsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLocationHdfs
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateLocationHdfs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLocationHdfs,
        stubs: @stubs,
        params_class: Params::CreateLocationHdfsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_location_hdfs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Defines a file system on a Network File System (NFS) server that can be read from or
    #       written to.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateLocationNfsInput}.
    #
    # @option params [String] :subdirectory
    #   <p>The subdirectory in the NFS file system that is used to read data from the NFS source
    #         location or write data to the NFS destination. The NFS path should be a path that's
    #         exported by the NFS server, or a subdirectory of that path. The path should be such that it
    #         can be mounted by other NFS clients in your network. </p>
    #            <p>To see all the paths exported by your NFS server, run "<code>showmount -e
    #           nfs-server-name</code>" from an NFS client that has access to your server. You can specify
    #         any directory that appears in the results, and any subdirectory of that directory. Ensure that
    #         the NFS export is accessible without Kerberos authentication. </p>
    #            <p>To transfer all the data in the folder you specified, DataSync needs to have
    #         permissions to read all the data. To ensure this, either configure the NFS export with
    #           <code>no_root_squash,</code> or ensure that the permissions for all of the files that you
    #         want DataSync allow read access for all users. Doing either enables the agent to read the
    #         files. For the agent to access directories, you must additionally enable all execute
    #         access.</p>
    #            <p>If you are copying data to or from your Snowcone device, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html#nfs-on-snowcone">NFS Server on Snowcone</a> for more information.</p>
    #
    #            <p>For information about NFS export configuration, see 18.7. The /etc/exports
    #         Configuration File in the Red Hat Enterprise Linux documentation.</p>
    #
    # @option params [String] :server_hostname
    #   <p>The name of the NFS server. This value is the IP address or Domain Name Service (DNS)
    #         name of the NFS server. An agent that is installed on-premises uses this hostname to mount the
    #         NFS server in a network. </p>
    #            <p>If you are copying data to or from your Snowcone device, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html#nfs-on-snowcone">NFS Server on Snowcone</a> for more information.</p>
    #            <note>
    #               <p>This name must either be DNS-compliant or must be an IP version 4 (IPv4)
    #           address.</p>
    #            </note>
    #
    # @option params [OnPremConfig] :on_prem_config
    #   <p>Contains a list of Amazon Resource Names (ARNs) of agents that are used to connect to
    #         an NFS server. </p>
    #            <p>If you are copying data to or from your Snowcone device, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html#nfs-on-snowcone">NFS Server on Snowcone</a> for more information.</p>
    #
    # @option params [NfsMountOptions] :mount_options
    #   <p>The NFS mount options that DataSync can use to mount your NFS share.</p>
    #
    # @option params [Array<TagListEntry>] :tags
    #   <p>The key-value pair that represents the tag that you want to add to the location. The
    #         value can be an empty string. We recommend using tags to name your resources.</p>
    #
    # @return [Types::CreateLocationNfsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_location_nfs(
    #     subdirectory: 'Subdirectory', # required
    #     server_hostname: 'ServerHostname', # required
    #     on_prem_config: {
    #       agent_arns: [
    #         'member'
    #       ] # required
    #     }, # required
    #     mount_options: {
    #       version: 'AUTOMATIC' # accepts ["AUTOMATIC", "NFS3", "NFS4_0", "NFS4_1"]
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
    #   resp.data #=> Types::CreateLocationNfsOutput
    #   resp.data.location_arn #=> String
    #
    def create_location_nfs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLocationNfsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLocationNfsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLocationNfs
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateLocationNfs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLocationNfs,
        stubs: @stubs,
        params_class: Params::CreateLocationNfsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_location_nfs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an endpoint for a self-managed object storage bucket. For more information
    #       about self-managed object storage locations, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-object-location.html">Creating a location for object storage</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateLocationObjectStorageInput}.
    #
    # @option params [String] :server_hostname
    #   <p>The name of the self-managed object storage server. This value is the IP address or Domain
    #         Name Service (DNS) name of the object storage server. An agent uses this hostname to mount the
    #         object storage server in a network. </p>
    #
    # @option params [Integer] :server_port
    #   <p>The port that your self-managed object storage server accepts inbound network traffic on.
    #         The server port is set by default to TCP 80 (HTTP) or TCP 443 (HTTPS). You can
    #         specify a custom port if your self-managed object storage server requires one.</p>
    #
    # @option params [String] :server_protocol
    #   <p>The protocol that the object storage server uses to communicate.
    #         Valid values are HTTP or HTTPS.</p>
    #
    # @option params [String] :subdirectory
    #   <p>The subdirectory in the self-managed object storage server that is used
    #         to read data from.</p>
    #
    # @option params [String] :bucket_name
    #   <p>The bucket on the self-managed object storage server that is used
    #         to read data from.</p>
    #
    # @option params [String] :access_key
    #   <p>Optional. The access key is used if credentials are required to access the self-managed
    #         object storage server. If your object storage requires a user name and password to
    #         authenticate, use <code>AccessKey</code> and <code>SecretKey</code> to provide the user name
    #         and password, respectively.</p>
    #
    # @option params [String] :secret_key
    #   <p>Optional. The secret key is used if credentials are required to access the self-managed
    #         object storage server. If your object storage requires a user name and password to
    #         authenticate, use <code>AccessKey</code> and <code>SecretKey</code> to provide the user name
    #         and password, respectively.</p>
    #
    # @option params [Array<String>] :agent_arns
    #   <p>The Amazon Resource Name (ARN) of the agents associated with the
    #         self-managed object storage server location.</p>
    #
    # @option params [Array<TagListEntry>] :tags
    #   <p>The key-value pair that represents the tag that you want to add to the location. The
    #         value can be an empty string. We recommend using tags to name your resources.</p>
    #
    # @return [Types::CreateLocationObjectStorageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_location_object_storage(
    #     server_hostname: 'ServerHostname', # required
    #     server_port: 1,
    #     server_protocol: 'HTTPS', # accepts ["HTTPS", "HTTP"]
    #     subdirectory: 'Subdirectory',
    #     bucket_name: 'BucketName', # required
    #     access_key: 'AccessKey',
    #     secret_key: 'SecretKey',
    #     agent_arns: [
    #       'member'
    #     ], # required
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
    #   resp.data #=> Types::CreateLocationObjectStorageOutput
    #   resp.data.location_arn #=> String
    #
    def create_location_object_storage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLocationObjectStorageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLocationObjectStorageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLocationObjectStorage
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateLocationObjectStorage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLocationObjectStorage,
        stubs: @stubs,
        params_class: Params::CreateLocationObjectStorageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_location_object_storage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an endpoint for an Amazon S3 bucket.</p>
    #
    #
    #          <p>For
    #       more information, see
    #       <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-locations-cli.html#create-location-s3-cli">Create an Amazon S3 location</a>
    #       in the <i>DataSync User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateLocationS3Input}.
    #
    # @option params [String] :subdirectory
    #   <p>A subdirectory in the Amazon S3 bucket. This subdirectory in Amazon S3 is used to read
    #         data from the S3 source location or write data to the S3 destination.</p>
    #
    # @option params [String] :s3_bucket_arn
    #   <p>The ARN of the Amazon S3 bucket. If the bucket is on an Amazon Web Services Outpost, this must be an
    #         access point ARN.</p>
    #
    # @option params [String] :s3_storage_class
    #   <p>The Amazon S3 storage class that you want to store your files in when this location is
    #         used as a task destination. For buckets in Amazon Web Services Regions, the storage class defaults to Standard.
    #         For buckets on Outposts, the storage class defaults to Amazon Web Services S3 Outposts.</p>
    #
    #            <p>For more information about S3 storage classes, see <a href="http://aws.amazon.com/s3/storage-classes/">Amazon S3 Storage Classes</a>. Some storage classes have behaviors that
    #         can affect your S3 storage cost. For detailed information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-s3-location.html#using-storage-classes">Considerations when working with S3 storage classes in DataSync</a>.</p>
    #
    # @option params [S3Config] :s3_config
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role used to access
    #         an Amazon S3 bucket.</p>
    #
    #            <p>For detailed information about using such a role, see Creating a Location for
    #         Amazon S3 in the <i>DataSync User Guide</i>.</p>
    #
    # @option params [Array<String>] :agent_arns
    #   <p>If you're using DataSync on an Amazon Web Services Outpost, specify the Amazon Resource
    #         Names (ARNs) of the DataSync agents deployed on your Outpost. For more information about
    #         launching a DataSync agent on an Amazon Web Services Outpost, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/deploy-agents.html#outposts-agent">Deploy your DataSync agent
    #           on Outposts</a>.</p>
    #
    # @option params [Array<TagListEntry>] :tags
    #   <p>The key-value pair that represents the tag that you want to add to the location. The
    #         value can be an empty string. We recommend using tags to name your resources.</p>
    #
    # @return [Types::CreateLocationS3Output]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_location_s3(
    #     subdirectory: 'Subdirectory',
    #     s3_bucket_arn: 'S3BucketArn', # required
    #     s3_storage_class: 'STANDARD', # accepts ["STANDARD", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS"]
    #     s3_config: {
    #       bucket_access_role_arn: 'BucketAccessRoleArn' # required
    #     }, # required
    #     agent_arns: [
    #       'member'
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
    #   resp.data #=> Types::CreateLocationS3Output
    #   resp.data.location_arn #=> String
    #
    def create_location_s3(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLocationS3Input.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLocationS3Input,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLocationS3
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateLocationS3
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLocationS3,
        stubs: @stubs,
        params_class: Params::CreateLocationS3Output
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_location_s3
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Defines a file system on a Server Message Block (SMB) server that can be read from or
    #       written to.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateLocationSmbInput}.
    #
    # @option params [String] :subdirectory
    #   <p>The subdirectory in the SMB file system that is used to read data from the SMB source
    #         location or write data to the SMB destination. The SMB path should be a path that's
    #         exported by the SMB server, or a subdirectory of that path. The path should be such that it
    #         can be mounted by other SMB clients in your network.</p>
    #            <note>
    #               <p>
    #                  <code>Subdirectory</code> must be specified with forward slashes. For example,
    #             <code>/path/to/folder</code>.</p>
    #            </note>
    #
    #            <p>To transfer all the data in the folder you specified, DataSync needs to have permissions
    #         to mount the SMB share, as well as to access all the data in that share. To ensure this,
    #         either ensure that the user/password specified belongs to the user who can mount the share,
    #         and who has the appropriate permissions for all of the files and directories that you want
    #         DataSync to access, or use credentials of a member of the Backup Operators group to mount
    #         the share. Doing either enables the agent to access the data. For the agent to access
    #         directories, you must additionally enable all execute access.</p>
    #
    # @option params [String] :server_hostname
    #   <p>The name of the SMB server. This value is the IP address or Domain Name Service (DNS) name
    #         of the SMB server. An agent that is installed on-premises uses this hostname to mount the SMB
    #         server in a network.</p>
    #            <note>
    #               <p>This name must either be DNS-compliant or must be an IP version 4 (IPv4) address.</p>
    #            </note>
    #
    # @option params [String] :user
    #   <p>The user who can mount the share, has the permissions to access files and folders in the
    #         SMB share.</p>
    #
    #            <p>For information about choosing a user name that ensures sufficient permissions to files,
    #         folders, and metadata, see <a href="create-smb-location.html#SMBuser">user</a>.</p>
    #
    # @option params [String] :domain
    #   <p>The name of the Windows domain that the SMB server belongs to.</p>
    #
    # @option params [String] :password
    #   <p>The password of the user who can mount the share, has the permissions to access files and
    #         folders in the SMB share.</p>
    #
    # @option params [Array<String>] :agent_arns
    #   <p>The Amazon Resource Names (ARNs) of agents to use for a Simple Message Block (SMB)
    #         location. </p>
    #
    # @option params [SmbMountOptions] :mount_options
    #   <p>The mount options used by DataSync to access the SMB server.</p>
    #
    # @option params [Array<TagListEntry>] :tags
    #   <p>The key-value pair that represents the tag that you want to add to the location. The value
    #         can be an empty string. We recommend using tags to name your resources.</p>
    #
    # @return [Types::CreateLocationSmbOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_location_smb(
    #     subdirectory: 'Subdirectory', # required
    #     server_hostname: 'ServerHostname', # required
    #     user: 'User', # required
    #     domain: 'Domain',
    #     password: 'Password', # required
    #     agent_arns: [
    #       'member'
    #     ], # required
    #     mount_options: {
    #       version: 'AUTOMATIC' # accepts ["AUTOMATIC", "SMB2", "SMB3"]
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
    #   resp.data #=> Types::CreateLocationSmbOutput
    #   resp.data.location_arn #=> String
    #
    def create_location_smb(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLocationSmbInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLocationSmbInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLocationSmb
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateLocationSmb
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLocationSmb,
        stubs: @stubs,
        params_class: Params::CreateLocationSmbOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_location_smb
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a task.</p>
    #          <p>A task includes a source location and a destination location, and a configuration
    #       that specifies how data is transferred. A task always transfers data from the source
    #       location to the destination location. The configuration specifies options such as
    #       task scheduling, bandwidth limits, etc. A task is the complete definition of a data
    #       transfer.</p>
    #          <p>When you create a task that transfers data between Amazon Web Services services in different Amazon Web Services Regions,
    #       one of the two locations that you specify must reside in the Region where DataSync is being
    #       used. The other location must be specified in a different Region.</p>
    #          <p>You can transfer data between commercial Amazon Web Services Regions except for China, or between
    #       Amazon Web Services GovCloud (US) Regions.</p>
    #
    #          <important>
    #             <p>When you use DataSync to copy files or objects between Amazon Web Services Regions,
    #       you pay for data transfer between Regions. This is billed as data transfer OUT
    #       from your source Region to your destination Region. For more information,
    #       see <a href="http://aws.amazon.com/ec2/pricing/on-demand/#Data_Transfer">Data Transfer pricing</a>.
    #     </p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::CreateTaskInput}.
    #
    # @option params [String] :source_location_arn
    #   <p>The Amazon Resource Name (ARN) of the source location for the task.</p>
    #
    # @option params [String] :destination_location_arn
    #   <p>The Amazon Resource Name (ARN) of an Amazon Web Services storage resource's location. </p>
    #
    # @option params [String] :cloud_watch_log_group_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon CloudWatch log group that is used to
    #         monitor and log events in the task. </p>
    #
    # @option params [String] :name
    #   <p>The name of a task. This value is a text reference that is used to identify the task in
    #         the console. </p>
    #
    # @option params [Options] :options
    #   <p>The set of configuration options that control the behavior of a single execution of the
    #         task that occurs when you call <code>StartTaskExecution</code>. You can configure these
    #         options to preserve metadata such as user ID (UID) and group ID (GID), file permissions, data
    #         integrity verification, and so on.</p>
    #            <p>For each individual task execution, you can override these options by specifying the
    #           <code>OverrideOptions</code> before starting the task execution. For more information, see
    #         the <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html">StartTaskExecution</a> operation. </p>
    #
    # @option params [Array<FilterRule>] :excludes
    #   <p>A list of filter rules that determines which files to exclude from a task. The list should
    #         contain a single filter string that consists of the patterns to exclude. The patterns are
    #         delimited by "|" (that is, a pipe), for example, <code>"/folder1|/folder2"</code>. </p>
    #            <p>
    #       </p>
    #
    # @option params [TaskSchedule] :schedule
    #   <p>Specifies a schedule used to periodically transfer files from a source to a destination
    #         location. The schedule should be specified in UTC time. For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/task-scheduling.html">Scheduling your task</a>.</p>
    #
    # @option params [Array<TagListEntry>] :tags
    #   <p>The key-value pair that represents the tag that you want to add to the resource. The
    #         value can be an empty string. </p>
    #
    # @option params [Array<FilterRule>] :includes
    #   <p>A list of filter rules that determines which files to include when running a task. The
    #         pattern contains a single filter string that consists of the patterns to include. The patterns
    #         are delimited by "|" (that is, a pipe), for example, <code>"/folder1|/folder2"</code>.</p>
    #
    # @return [Types::CreateTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_task(
    #     source_location_arn: 'SourceLocationArn', # required
    #     destination_location_arn: 'DestinationLocationArn', # required
    #     cloud_watch_log_group_arn: 'CloudWatchLogGroupArn',
    #     name: 'Name',
    #     options: {
    #       verify_mode: 'POINT_IN_TIME_CONSISTENT', # accepts ["POINT_IN_TIME_CONSISTENT", "ONLY_FILES_TRANSFERRED", "NONE"]
    #       overwrite_mode: 'ALWAYS', # accepts ["ALWAYS", "NEVER"]
    #       atime: 'NONE', # accepts ["NONE", "BEST_EFFORT"]
    #       mtime: 'NONE', # accepts ["NONE", "PRESERVE"]
    #       uid: 'NONE', # accepts ["NONE", "INT_VALUE", "NAME", "BOTH"]
    #       gid: 'NONE', # accepts ["NONE", "INT_VALUE", "NAME", "BOTH"]
    #       preserve_deleted_files: 'PRESERVE', # accepts ["PRESERVE", "REMOVE"]
    #       preserve_devices: 'NONE', # accepts ["NONE", "PRESERVE"]
    #       posix_permissions: 'NONE', # accepts ["NONE", "PRESERVE"]
    #       bytes_per_second: 1,
    #       task_queueing: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #       log_level: 'OFF', # accepts ["OFF", "BASIC", "TRANSFER"]
    #       transfer_mode: 'CHANGED', # accepts ["CHANGED", "ALL"]
    #       security_descriptor_copy_flags: 'NONE', # accepts ["NONE", "OWNER_DACL", "OWNER_DACL_SACL"]
    #       object_tags: 'PRESERVE' # accepts ["PRESERVE", "NONE"]
    #     },
    #     excludes: [
    #       {
    #         filter_type: 'SIMPLE_PATTERN', # accepts ["SIMPLE_PATTERN"]
    #         value: 'Value'
    #       }
    #     ],
    #     schedule: {
    #       schedule_expression: 'ScheduleExpression' # required
    #     },
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ],
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateTaskOutput
    #   resp.data.task_arn #=> String
    #
    def create_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTaskInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTask
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::CreateTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTask,
        stubs: @stubs,
        params_class: Params::CreateTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an agent. To specify which agent to delete, use the Amazon Resource Name (ARN)
    #       of the agent in your request. The operation disassociates the agent from your Amazon Web Services account.
    #       However, it doesn't delete the agent virtual machine (VM) from your on-premises
    #       environment.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAgentInput}.
    #
    # @option params [String] :agent_arn
    #   <p>The Amazon Resource Name (ARN) of the agent to delete. Use the <code>ListAgents</code>
    #         operation to return a list of agents for your account and Amazon Web Services Region.</p>
    #
    # @return [Types::DeleteAgentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_agent(
    #     agent_arn: 'AgentArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAgentOutput
    #
    def delete_agent(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAgentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAgentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAgent
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::DeleteAgent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAgent,
        stubs: @stubs,
        params_class: Params::DeleteAgentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_agent
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the configuration of a location used by DataSync. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLocationInput}.
    #
    # @option params [String] :location_arn
    #   <p>The Amazon Resource Name (ARN) of the location to delete.</p>
    #
    # @return [Types::DeleteLocationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_location(
    #     location_arn: 'LocationArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLocationOutput
    #
    def delete_location(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLocationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLocationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLocation
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::DeleteLocation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLocation,
        stubs: @stubs,
        params_class: Params::DeleteLocationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_location
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a task.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTaskInput}.
    #
    # @option params [String] :task_arn
    #   <p>The Amazon Resource Name (ARN) of the task to delete.</p>
    #
    # @return [Types::DeleteTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_task(
    #     task_arn: 'TaskArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTaskOutput
    #
    def delete_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTaskInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTask
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::DeleteTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTask,
        stubs: @stubs,
        params_class: Params::DeleteTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns metadata such as the name, the network interfaces, and the status (that is,
    #       whether the agent is running or not) for an agent. To specify which agent to describe, use the
    #       Amazon Resource Name (ARN) of the agent in your request. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAgentInput}.
    #
    # @option params [String] :agent_arn
    #   <p>The Amazon Resource Name (ARN) of the agent to describe.</p>
    #
    # @return [Types::DescribeAgentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_agent(
    #     agent_arn: 'AgentArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAgentOutput
    #   resp.data.agent_arn #=> String
    #   resp.data.name #=> String
    #   resp.data.status #=> String, one of ["ONLINE", "OFFLINE"]
    #   resp.data.last_connection_time #=> Time
    #   resp.data.creation_time #=> Time
    #   resp.data.endpoint_type #=> String, one of ["PUBLIC", "PRIVATE_LINK", "FIPS"]
    #   resp.data.private_link_config #=> Types::PrivateLinkConfig
    #   resp.data.private_link_config.vpc_endpoint_id #=> String
    #   resp.data.private_link_config.private_link_endpoint #=> String
    #   resp.data.private_link_config.subnet_arns #=> Array<String>
    #   resp.data.private_link_config.subnet_arns[0] #=> String
    #   resp.data.private_link_config.security_group_arns #=> Array<String>
    #   resp.data.private_link_config.security_group_arns[0] #=> String
    #
    def describe_agent(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAgentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAgentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAgent
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeAgent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAgent,
        stubs: @stubs,
        params_class: Params::DescribeAgentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_agent
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns metadata about your DataSync location for an Amazon EFS file system.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLocationEfsInput}.
    #
    # @option params [String] :location_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon EFS file system location that you want information about.</p>
    #
    # @return [Types::DescribeLocationEfsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_location_efs(
    #     location_arn: 'LocationArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLocationEfsOutput
    #   resp.data.location_arn #=> String
    #   resp.data.location_uri #=> String
    #   resp.data.ec2_config #=> Types::Ec2Config
    #   resp.data.ec2_config.subnet_arn #=> String
    #   resp.data.ec2_config.security_group_arns #=> Array<String>
    #   resp.data.ec2_config.security_group_arns[0] #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.access_point_arn #=> String
    #   resp.data.file_system_access_role_arn #=> String
    #   resp.data.in_transit_encryption #=> String, one of ["NONE", "TLS1_2"]
    #
    def describe_location_efs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLocationEfsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLocationEfsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLocationEfs
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeLocationEfs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLocationEfs,
        stubs: @stubs,
        params_class: Params::DescribeLocationEfsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_location_efs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns metadata about an Amazon FSx for Lustre
    #       location, such as information about its path.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLocationFsxLustreInput}.
    #
    # @option params [String] :location_arn
    #   <p>The Amazon Resource Name (ARN) of the FSx for Lustre location to describe. </p>
    #
    # @return [Types::DescribeLocationFsxLustreOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_location_fsx_lustre(
    #     location_arn: 'LocationArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLocationFsxLustreOutput
    #   resp.data.location_arn #=> String
    #   resp.data.location_uri #=> String
    #   resp.data.security_group_arns #=> Array<String>
    #   resp.data.security_group_arns[0] #=> String
    #   resp.data.creation_time #=> Time
    #
    def describe_location_fsx_lustre(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLocationFsxLustreInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLocationFsxLustreInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLocationFsxLustre
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeLocationFsxLustre
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLocationFsxLustre,
        stubs: @stubs,
        params_class: Params::DescribeLocationFsxLustreOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_location_fsx_lustre
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns metadata about an Amazon FSx for OpenZFS
    #       location, such as information about its path.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLocationFsxOpenZfsInput}.
    #
    # @option params [String] :location_arn
    #   <p>The Amazon Resource Name (ARN) of the FSx for OpenZFS location to describe.</p>
    #
    # @return [Types::DescribeLocationFsxOpenZfsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_location_fsx_open_zfs(
    #     location_arn: 'LocationArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLocationFsxOpenZfsOutput
    #   resp.data.location_arn #=> String
    #   resp.data.location_uri #=> String
    #   resp.data.security_group_arns #=> Array<String>
    #   resp.data.security_group_arns[0] #=> String
    #   resp.data.protocol #=> Types::FsxProtocol
    #   resp.data.protocol.nfs #=> Types::FsxProtocolNfs
    #   resp.data.protocol.nfs.mount_options #=> Types::NfsMountOptions
    #   resp.data.protocol.nfs.mount_options.version #=> String, one of ["AUTOMATIC", "NFS3", "NFS4_0", "NFS4_1"]
    #   resp.data.creation_time #=> Time
    #
    def describe_location_fsx_open_zfs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLocationFsxOpenZfsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLocationFsxOpenZfsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLocationFsxOpenZfs
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeLocationFsxOpenZfs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLocationFsxOpenZfs,
        stubs: @stubs,
        params_class: Params::DescribeLocationFsxOpenZfsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_location_fsx_open_zfs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns metadata about an Amazon FSx for Windows File Server
    #       location, such as information about its path.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLocationFsxWindowsInput}.
    #
    # @option params [String] :location_arn
    #   <p>The Amazon Resource Name (ARN) of the FSx for Windows File Server location to
    #         describe.</p>
    #
    # @return [Types::DescribeLocationFsxWindowsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_location_fsx_windows(
    #     location_arn: 'LocationArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLocationFsxWindowsOutput
    #   resp.data.location_arn #=> String
    #   resp.data.location_uri #=> String
    #   resp.data.security_group_arns #=> Array<String>
    #   resp.data.security_group_arns[0] #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.user #=> String
    #   resp.data.domain #=> String
    #
    def describe_location_fsx_windows(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLocationFsxWindowsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLocationFsxWindowsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLocationFsxWindows
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeLocationFsxWindows
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLocationFsxWindows,
        stubs: @stubs,
        params_class: Params::DescribeLocationFsxWindowsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_location_fsx_windows
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns metadata, such as the authentication information about the Hadoop Distributed File
    #       System (HDFS) location. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLocationHdfsInput}.
    #
    # @option params [String] :location_arn
    #   <p>The Amazon Resource Name (ARN) of the HDFS cluster location to describe.</p>
    #
    # @return [Types::DescribeLocationHdfsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_location_hdfs(
    #     location_arn: 'LocationArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLocationHdfsOutput
    #   resp.data.location_arn #=> String
    #   resp.data.location_uri #=> String
    #   resp.data.name_nodes #=> Array<HdfsNameNode>
    #   resp.data.name_nodes[0] #=> Types::HdfsNameNode
    #   resp.data.name_nodes[0].hostname #=> String
    #   resp.data.name_nodes[0].port #=> Integer
    #   resp.data.block_size #=> Integer
    #   resp.data.replication_factor #=> Integer
    #   resp.data.kms_key_provider_uri #=> String
    #   resp.data.qop_configuration #=> Types::QopConfiguration
    #   resp.data.qop_configuration.rpc_protection #=> String, one of ["DISABLED", "AUTHENTICATION", "INTEGRITY", "PRIVACY"]
    #   resp.data.qop_configuration.data_transfer_protection #=> String, one of ["DISABLED", "AUTHENTICATION", "INTEGRITY", "PRIVACY"]
    #   resp.data.authentication_type #=> String, one of ["SIMPLE", "KERBEROS"]
    #   resp.data.simple_user #=> String
    #   resp.data.kerberos_principal #=> String
    #   resp.data.agent_arns #=> Array<String>
    #   resp.data.agent_arns[0] #=> String
    #   resp.data.creation_time #=> Time
    #
    def describe_location_hdfs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLocationHdfsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLocationHdfsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLocationHdfs
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeLocationHdfs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLocationHdfs,
        stubs: @stubs,
        params_class: Params::DescribeLocationHdfsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_location_hdfs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns metadata, such as the path information, about an NFS location.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLocationNfsInput}.
    #
    # @option params [String] :location_arn
    #   <p>The Amazon Resource Name (ARN) of the NFS location to describe.</p>
    #
    # @return [Types::DescribeLocationNfsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_location_nfs(
    #     location_arn: 'LocationArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLocationNfsOutput
    #   resp.data.location_arn #=> String
    #   resp.data.location_uri #=> String
    #   resp.data.on_prem_config #=> Types::OnPremConfig
    #   resp.data.on_prem_config.agent_arns #=> Array<String>
    #   resp.data.on_prem_config.agent_arns[0] #=> String
    #   resp.data.mount_options #=> Types::NfsMountOptions
    #   resp.data.mount_options.version #=> String, one of ["AUTOMATIC", "NFS3", "NFS4_0", "NFS4_1"]
    #   resp.data.creation_time #=> Time
    #
    def describe_location_nfs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLocationNfsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLocationNfsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLocationNfs
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeLocationNfs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLocationNfs,
        stubs: @stubs,
        params_class: Params::DescribeLocationNfsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_location_nfs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns metadata about a self-managed object storage server location. For more information
    #       about self-managed object storage locations, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-object-location.html">Creating a location for object storage</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLocationObjectStorageInput}.
    #
    # @option params [String] :location_arn
    #   <p>The Amazon Resource Name (ARN) of the self-managed object storage server location that was described.</p>
    #
    # @return [Types::DescribeLocationObjectStorageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_location_object_storage(
    #     location_arn: 'LocationArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLocationObjectStorageOutput
    #   resp.data.location_arn #=> String
    #   resp.data.location_uri #=> String
    #   resp.data.access_key #=> String
    #   resp.data.server_port #=> Integer
    #   resp.data.server_protocol #=> String, one of ["HTTPS", "HTTP"]
    #   resp.data.agent_arns #=> Array<String>
    #   resp.data.agent_arns[0] #=> String
    #   resp.data.creation_time #=> Time
    #
    def describe_location_object_storage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLocationObjectStorageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLocationObjectStorageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLocationObjectStorage
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeLocationObjectStorage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLocationObjectStorage,
        stubs: @stubs,
        params_class: Params::DescribeLocationObjectStorageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_location_object_storage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns metadata, such as bucket name, about an Amazon S3 bucket location.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLocationS3Input}.
    #
    # @option params [String] :location_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon S3 bucket location to describe.</p>
    #
    # @return [Types::DescribeLocationS3Output]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_location_s3(
    #     location_arn: 'LocationArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLocationS3Output
    #   resp.data.location_arn #=> String
    #   resp.data.location_uri #=> String
    #   resp.data.s3_storage_class #=> String, one of ["STANDARD", "STANDARD_IA", "ONEZONE_IA", "INTELLIGENT_TIERING", "GLACIER", "DEEP_ARCHIVE", "OUTPOSTS"]
    #   resp.data.s3_config #=> Types::S3Config
    #   resp.data.s3_config.bucket_access_role_arn #=> String
    #   resp.data.agent_arns #=> Array<String>
    #   resp.data.agent_arns[0] #=> String
    #   resp.data.creation_time #=> Time
    #
    def describe_location_s3(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLocationS3Input.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLocationS3Input,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLocationS3
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeLocationS3
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLocationS3,
        stubs: @stubs,
        params_class: Params::DescribeLocationS3Output
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_location_s3
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns metadata, such as the path and user information about an SMB location.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLocationSmbInput}.
    #
    # @option params [String] :location_arn
    #   <p>The Amazon Resource Name (ARN) of the SMB location to describe.</p>
    #
    # @return [Types::DescribeLocationSmbOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_location_smb(
    #     location_arn: 'LocationArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLocationSmbOutput
    #   resp.data.location_arn #=> String
    #   resp.data.location_uri #=> String
    #   resp.data.agent_arns #=> Array<String>
    #   resp.data.agent_arns[0] #=> String
    #   resp.data.user #=> String
    #   resp.data.domain #=> String
    #   resp.data.mount_options #=> Types::SmbMountOptions
    #   resp.data.mount_options.version #=> String, one of ["AUTOMATIC", "SMB2", "SMB3"]
    #   resp.data.creation_time #=> Time
    #
    def describe_location_smb(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLocationSmbInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLocationSmbInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLocationSmb
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeLocationSmb
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLocationSmb,
        stubs: @stubs,
        params_class: Params::DescribeLocationSmbOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_location_smb
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns metadata about a task.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTaskInput}.
    #
    # @option params [String] :task_arn
    #   <p>The Amazon Resource Name (ARN) of the task to describe.</p>
    #
    # @return [Types::DescribeTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_task(
    #     task_arn: 'TaskArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTaskOutput
    #   resp.data.task_arn #=> String
    #   resp.data.status #=> String, one of ["AVAILABLE", "CREATING", "QUEUED", "RUNNING", "UNAVAILABLE"]
    #   resp.data.name #=> String
    #   resp.data.current_task_execution_arn #=> String
    #   resp.data.source_location_arn #=> String
    #   resp.data.destination_location_arn #=> String
    #   resp.data.cloud_watch_log_group_arn #=> String
    #   resp.data.source_network_interface_arns #=> Array<String>
    #   resp.data.source_network_interface_arns[0] #=> String
    #   resp.data.destination_network_interface_arns #=> Array<String>
    #   resp.data.destination_network_interface_arns[0] #=> String
    #   resp.data.options #=> Types::Options
    #   resp.data.options.verify_mode #=> String, one of ["POINT_IN_TIME_CONSISTENT", "ONLY_FILES_TRANSFERRED", "NONE"]
    #   resp.data.options.overwrite_mode #=> String, one of ["ALWAYS", "NEVER"]
    #   resp.data.options.atime #=> String, one of ["NONE", "BEST_EFFORT"]
    #   resp.data.options.mtime #=> String, one of ["NONE", "PRESERVE"]
    #   resp.data.options.uid #=> String, one of ["NONE", "INT_VALUE", "NAME", "BOTH"]
    #   resp.data.options.gid #=> String, one of ["NONE", "INT_VALUE", "NAME", "BOTH"]
    #   resp.data.options.preserve_deleted_files #=> String, one of ["PRESERVE", "REMOVE"]
    #   resp.data.options.preserve_devices #=> String, one of ["NONE", "PRESERVE"]
    #   resp.data.options.posix_permissions #=> String, one of ["NONE", "PRESERVE"]
    #   resp.data.options.bytes_per_second #=> Integer
    #   resp.data.options.task_queueing #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.options.log_level #=> String, one of ["OFF", "BASIC", "TRANSFER"]
    #   resp.data.options.transfer_mode #=> String, one of ["CHANGED", "ALL"]
    #   resp.data.options.security_descriptor_copy_flags #=> String, one of ["NONE", "OWNER_DACL", "OWNER_DACL_SACL"]
    #   resp.data.options.object_tags #=> String, one of ["PRESERVE", "NONE"]
    #   resp.data.excludes #=> Array<FilterRule>
    #   resp.data.excludes[0] #=> Types::FilterRule
    #   resp.data.excludes[0].filter_type #=> String, one of ["SIMPLE_PATTERN"]
    #   resp.data.excludes[0].value #=> String
    #   resp.data.schedule #=> Types::TaskSchedule
    #   resp.data.schedule.schedule_expression #=> String
    #   resp.data.error_code #=> String
    #   resp.data.error_detail #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.includes #=> Array<FilterRule>
    #
    def describe_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTaskInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTask
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTask,
        stubs: @stubs,
        params_class: Params::DescribeTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns detailed metadata about a task that is being executed.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTaskExecutionInput}.
    #
    # @option params [String] :task_execution_arn
    #   <p>The Amazon Resource Name (ARN) of the task that is being executed.</p>
    #
    # @return [Types::DescribeTaskExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_task_execution(
    #     task_execution_arn: 'TaskExecutionArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTaskExecutionOutput
    #   resp.data.task_execution_arn #=> String
    #   resp.data.status #=> String, one of ["QUEUED", "LAUNCHING", "PREPARING", "TRANSFERRING", "VERIFYING", "SUCCESS", "ERROR"]
    #   resp.data.options #=> Types::Options
    #   resp.data.options.verify_mode #=> String, one of ["POINT_IN_TIME_CONSISTENT", "ONLY_FILES_TRANSFERRED", "NONE"]
    #   resp.data.options.overwrite_mode #=> String, one of ["ALWAYS", "NEVER"]
    #   resp.data.options.atime #=> String, one of ["NONE", "BEST_EFFORT"]
    #   resp.data.options.mtime #=> String, one of ["NONE", "PRESERVE"]
    #   resp.data.options.uid #=> String, one of ["NONE", "INT_VALUE", "NAME", "BOTH"]
    #   resp.data.options.gid #=> String, one of ["NONE", "INT_VALUE", "NAME", "BOTH"]
    #   resp.data.options.preserve_deleted_files #=> String, one of ["PRESERVE", "REMOVE"]
    #   resp.data.options.preserve_devices #=> String, one of ["NONE", "PRESERVE"]
    #   resp.data.options.posix_permissions #=> String, one of ["NONE", "PRESERVE"]
    #   resp.data.options.bytes_per_second #=> Integer
    #   resp.data.options.task_queueing #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.options.log_level #=> String, one of ["OFF", "BASIC", "TRANSFER"]
    #   resp.data.options.transfer_mode #=> String, one of ["CHANGED", "ALL"]
    #   resp.data.options.security_descriptor_copy_flags #=> String, one of ["NONE", "OWNER_DACL", "OWNER_DACL_SACL"]
    #   resp.data.options.object_tags #=> String, one of ["PRESERVE", "NONE"]
    #   resp.data.excludes #=> Array<FilterRule>
    #   resp.data.excludes[0] #=> Types::FilterRule
    #   resp.data.excludes[0].filter_type #=> String, one of ["SIMPLE_PATTERN"]
    #   resp.data.excludes[0].value #=> String
    #   resp.data.includes #=> Array<FilterRule>
    #   resp.data.start_time #=> Time
    #   resp.data.estimated_files_to_transfer #=> Integer
    #   resp.data.estimated_bytes_to_transfer #=> Integer
    #   resp.data.files_transferred #=> Integer
    #   resp.data.bytes_written #=> Integer
    #   resp.data.bytes_transferred #=> Integer
    #   resp.data.result #=> Types::TaskExecutionResultDetail
    #   resp.data.result.prepare_duration #=> Integer
    #   resp.data.result.prepare_status #=> String, one of ["PENDING", "SUCCESS", "ERROR"]
    #   resp.data.result.total_duration #=> Integer
    #   resp.data.result.transfer_duration #=> Integer
    #   resp.data.result.transfer_status #=> String, one of ["PENDING", "SUCCESS", "ERROR"]
    #   resp.data.result.verify_duration #=> Integer
    #   resp.data.result.verify_status #=> String, one of ["PENDING", "SUCCESS", "ERROR"]
    #   resp.data.result.error_code #=> String
    #   resp.data.result.error_detail #=> String
    #
    def describe_task_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTaskExecutionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTaskExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTaskExecution
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::DescribeTaskExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTaskExecution,
        stubs: @stubs,
        params_class: Params::DescribeTaskExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_task_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of agents owned by an Amazon Web Services account in the Amazon Web Services Region specified in the
    #       request. The returned list is ordered by agent Amazon Resource Name (ARN).</p>
    #          <p>By default, this operation returns a maximum of 100 agents. This operation supports
    #       pagination that enables you to optionally reduce the number of agents returned in a
    #       response.</p>
    #          <p>If you have more agents than are returned in a response (that is, the response returns
    #       only a truncated list of your agents), the response contains a marker that you can specify in
    #       your next request to fetch the next page of agents.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAgentsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of agents to list.</p>
    #
    # @option params [String] :next_token
    #   <p>An opaque string that indicates the position at which to begin the next list of
    #         agents.</p>
    #
    # @return [Types::ListAgentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_agents(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAgentsOutput
    #   resp.data.agents #=> Array<AgentListEntry>
    #   resp.data.agents[0] #=> Types::AgentListEntry
    #   resp.data.agents[0].agent_arn #=> String
    #   resp.data.agents[0].name #=> String
    #   resp.data.agents[0].status #=> String, one of ["ONLINE", "OFFLINE"]
    #   resp.data.next_token #=> String
    #
    def list_agents(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAgentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAgentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAgents
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListAgents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAgents,
        stubs: @stubs,
        params_class: Params::ListAgentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_agents
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of source and destination locations.</p>
    #          <p>If you have more locations than are returned in a response (that is, the response
    #       returns only a truncated list of your agents), the response contains a token that you can
    #       specify in your next request to fetch the next page of locations.</p>
    #
    # @param [Hash] params
    #   See {Types::ListLocationsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of locations to return.</p>
    #
    # @option params [String] :next_token
    #   <p>An opaque string that indicates the position at which to begin the next list of
    #         locations.</p>
    #
    # @option params [Array<LocationFilter>] :filters
    #   <p>You can use API filters to narrow down the list of resources returned by <code>ListLocations</code>.
    #         For example, to retrieve all tasks on a specific source location, you can use <code>ListLocations</code>
    #         with filter name <code>LocationType S3</code> and <code>Operator Equals</code>.</p>
    #
    # @return [Types::ListLocationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_locations(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     filters: [
    #       {
    #         name: 'LocationUri', # required - accepts ["LocationUri", "LocationType", "CreationTime"]
    #         values: [
    #           'member'
    #         ], # required
    #         operator: 'Equals' # required - accepts ["Equals", "NotEquals", "In", "LessThanOrEqual", "LessThan", "GreaterThanOrEqual", "GreaterThan", "Contains", "NotContains", "BeginsWith"]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListLocationsOutput
    #   resp.data.locations #=> Array<LocationListEntry>
    #   resp.data.locations[0] #=> Types::LocationListEntry
    #   resp.data.locations[0].location_arn #=> String
    #   resp.data.locations[0].location_uri #=> String
    #   resp.data.next_token #=> String
    #
    def list_locations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLocationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLocationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLocations
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListLocations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListLocations,
        stubs: @stubs,
        params_class: Params::ListLocationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_locations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns all the tags associated with a specified resource. </p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource whose tags to list.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of locations to return.</p>
    #
    # @option params [String] :next_token
    #   <p>An opaque string that indicates the position at which to begin the next list of
    #         locations.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Array<TagListEntry>
    #   resp.data.tags[0] #=> Types::TagListEntry
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
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

    # <p>Returns a list of executed tasks.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTaskExecutionsInput}.
    #
    # @option params [String] :task_arn
    #   <p>The Amazon Resource Name (ARN) of the task whose tasks you want to list.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of executed tasks to list.</p>
    #
    # @option params [String] :next_token
    #   <p>An opaque string that indicates the position at which to begin the next list of the
    #         executed tasks.</p>
    #
    # @return [Types::ListTaskExecutionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_task_executions(
    #     task_arn: 'TaskArn',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTaskExecutionsOutput
    #   resp.data.task_executions #=> Array<TaskExecutionListEntry>
    #   resp.data.task_executions[0] #=> Types::TaskExecutionListEntry
    #   resp.data.task_executions[0].task_execution_arn #=> String
    #   resp.data.task_executions[0].status #=> String, one of ["QUEUED", "LAUNCHING", "PREPARING", "TRANSFERRING", "VERIFYING", "SUCCESS", "ERROR"]
    #   resp.data.next_token #=> String
    #
    def list_task_executions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTaskExecutionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTaskExecutionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTaskExecutions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListTaskExecutions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTaskExecutions,
        stubs: @stubs,
        params_class: Params::ListTaskExecutionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_task_executions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of all the tasks.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTasksInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of tasks to return.</p>
    #
    # @option params [String] :next_token
    #   <p>An opaque string that indicates the position at which to begin the next list of
    #         tasks.</p>
    #
    # @option params [Array<TaskFilter>] :filters
    #   <p>You can use API filters to narrow down the list of resources returned by <code>ListTasks</code>.
    #         For example, to retrieve all tasks on a specific source location, you can use <code>ListTasks</code>
    #         with filter name <code>LocationId</code> and <code>Operator Equals</code> with the ARN for the
    #         location.</p>
    #
    # @return [Types::ListTasksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tasks(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     filters: [
    #       {
    #         name: 'LocationId', # required - accepts ["LocationId", "CreationTime"]
    #         values: [
    #           'member'
    #         ], # required
    #         operator: 'Equals' # required - accepts ["Equals", "NotEquals", "In", "LessThanOrEqual", "LessThan", "GreaterThanOrEqual", "GreaterThan", "Contains", "NotContains", "BeginsWith"]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTasksOutput
    #   resp.data.tasks #=> Array<TaskListEntry>
    #   resp.data.tasks[0] #=> Types::TaskListEntry
    #   resp.data.tasks[0].task_arn #=> String
    #   resp.data.tasks[0].status #=> String, one of ["AVAILABLE", "CREATING", "QUEUED", "RUNNING", "UNAVAILABLE"]
    #   resp.data.tasks[0].name #=> String
    #   resp.data.next_token #=> String
    #
    def list_tasks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTasksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTasksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTasks
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::ListTasks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTasks,
        stubs: @stubs,
        params_class: Params::ListTasksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tasks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts a specific invocation of a task. A <code>TaskExecution</code> value represents
    #       an individual run of a task. Each task can have at most one <code>TaskExecution</code> at a
    #       time.</p>
    #          <p>
    #             <code>TaskExecution</code> has the following transition phases: INITIALIZING |
    #       PREPARING | TRANSFERRING | VERIFYING | SUCCESS/FAILURE. </p>
    #
    #          <p>For detailed information, see the Task Execution section in the Components and
    #       Terminology topic in the <i>DataSync User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::StartTaskExecutionInput}.
    #
    # @option params [String] :task_arn
    #   <p>The Amazon Resource Name (ARN) of the task to start.</p>
    #
    # @option params [Options] :override_options
    #   <p>Represents the options that are available to control the behavior of a
    #         <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html">StartTaskExecution</a>
    #         operation. Behavior includes preserving metadata such as user
    #         ID (UID), group ID (GID), and file permissions, and also overwriting files in the destination,
    #         data integrity verification, and so on.</p>
    #            <p>A task has a set of default options associated with it. If you don't specify an option
    #         in <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html">StartTaskExecution</a>,
    #         the default value is used. You can override the
    #         defaults options on each task execution by specifying an overriding <code>Options</code> value
    #         to <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html">StartTaskExecution</a>.</p>
    #
    # @option params [Array<FilterRule>] :includes
    #   <p>A list of filter rules that determines which files to include when running a task. The
    #         pattern should contain a single filter string that consists of the patterns to include. The
    #         patterns are delimited by "|" (that is, a pipe), for example,
    #         <code>"/folder1|/folder2"</code>. </p>
    #
    #            <p>
    #       </p>
    #
    # @option params [Array<FilterRule>] :excludes
    #   <p>A list of filter rules that determines which files to exclude from a task. The list
    #         contains a single filter string that consists of the patterns to exclude. The patterns are
    #         delimited by "|" (that is, a pipe), for example, <code>"/folder1|/folder2"</code>. </p>
    #
    # @return [Types::StartTaskExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_task_execution(
    #     task_arn: 'TaskArn', # required
    #     override_options: {
    #       verify_mode: 'POINT_IN_TIME_CONSISTENT', # accepts ["POINT_IN_TIME_CONSISTENT", "ONLY_FILES_TRANSFERRED", "NONE"]
    #       overwrite_mode: 'ALWAYS', # accepts ["ALWAYS", "NEVER"]
    #       atime: 'NONE', # accepts ["NONE", "BEST_EFFORT"]
    #       mtime: 'NONE', # accepts ["NONE", "PRESERVE"]
    #       uid: 'NONE', # accepts ["NONE", "INT_VALUE", "NAME", "BOTH"]
    #       gid: 'NONE', # accepts ["NONE", "INT_VALUE", "NAME", "BOTH"]
    #       preserve_deleted_files: 'PRESERVE', # accepts ["PRESERVE", "REMOVE"]
    #       preserve_devices: 'NONE', # accepts ["NONE", "PRESERVE"]
    #       posix_permissions: 'NONE', # accepts ["NONE", "PRESERVE"]
    #       bytes_per_second: 1,
    #       task_queueing: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #       log_level: 'OFF', # accepts ["OFF", "BASIC", "TRANSFER"]
    #       transfer_mode: 'CHANGED', # accepts ["CHANGED", "ALL"]
    #       security_descriptor_copy_flags: 'NONE', # accepts ["NONE", "OWNER_DACL", "OWNER_DACL_SACL"]
    #       object_tags: 'PRESERVE' # accepts ["PRESERVE", "NONE"]
    #     },
    #     includes: [
    #       {
    #         filter_type: 'SIMPLE_PATTERN', # accepts ["SIMPLE_PATTERN"]
    #         value: 'Value'
    #       }
    #     ],
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartTaskExecutionOutput
    #   resp.data.task_execution_arn #=> String
    #
    def start_task_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartTaskExecutionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartTaskExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartTaskExecution
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::StartTaskExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartTaskExecution,
        stubs: @stubs,
        params_class: Params::StartTaskExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_task_execution
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Applies a key-value pair to an Amazon Web Services resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to apply the tag to.</p>
    #
    # @option params [Array<TagListEntry>] :tags
    #   <p>The tags to apply.</p>
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
    #         value: 'Value'
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
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

    # <p>Removes a tag from an Amazon Web Services resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove the tag from.</p>
    #
    # @option params [Array<String>] :keys
    #   <p>The keys in the key-value pair in the tag to remove.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceArn', # required
    #     keys: [
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
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

    # <p>Updates the name of an agent.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAgentInput}.
    #
    # @option params [String] :agent_arn
    #   <p>The Amazon Resource Name (ARN) of the agent to update.</p>
    #
    # @option params [String] :name
    #   <p>The name that you want to use to configure the agent.</p>
    #
    # @return [Types::UpdateAgentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_agent(
    #     agent_arn: 'AgentArn', # required
    #     name: 'Name'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAgentOutput
    #
    def update_agent(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAgentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAgentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAgent
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateAgent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAgent,
        stubs: @stubs,
        params_class: Params::UpdateAgentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_agent
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates some parameters of a previously created location for a Hadoop Distributed File
    #       System cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateLocationHdfsInput}.
    #
    # @option params [String] :location_arn
    #   <p>The Amazon Resource Name (ARN) of the source HDFS cluster location.</p>
    #
    # @option params [String] :subdirectory
    #   <p>A subdirectory in the HDFS cluster. This subdirectory is used to read data from or write
    #         data to the HDFS cluster.</p>
    #
    # @option params [Array<HdfsNameNode>] :name_nodes
    #   <p>The NameNode that manages the HDFS namespace. The NameNode performs operations such as
    #         opening, closing, and renaming files and directories. The NameNode contains the information to
    #         map blocks of data to the DataNodes. You can use only one NameNode.</p>
    #
    # @option params [Integer] :block_size
    #   <p>The size of the data blocks to write into the HDFS cluster. </p>
    #
    # @option params [Integer] :replication_factor
    #   <p>The number of DataNodes to replicate the data to when writing to the HDFS cluster. </p>
    #
    # @option params [String] :kms_key_provider_uri
    #   <p>The URI of the HDFS cluster's Key Management Server (KMS). </p>
    #
    # @option params [QopConfiguration] :qop_configuration
    #   <p>The Quality of Protection (QOP) configuration specifies the Remote Procedure Call (RPC)
    #         and data transfer privacy settings configured on the Hadoop Distributed File System (HDFS)
    #         cluster. </p>
    #
    # @option params [String] :authentication_type
    #   <p>The type of authentication used to determine the identity of the user. </p>
    #
    # @option params [String] :simple_user
    #   <p>The user name used to identify the client on the host operating system.</p>
    #
    # @option params [String] :kerberos_principal
    #   <p>The Kerberos principal with access to the files and folders on the HDFS cluster. </p>
    #
    # @option params [String] :kerberos_keytab
    #   <p>The Kerberos key table (keytab) that contains mappings between the defined Kerberos
    #         principal and the encrypted keys. You can load the keytab from a file by providing the file's
    #         address. If you use the CLI, it performs base64 encoding for you. Otherwise,
    #         provide the base64-encoded text.</p>
    #
    # @option params [String] :kerberos_krb5_conf
    #   <p>The <code>krb5.conf</code> file that contains the Kerberos configuration information. You
    #         can load the <code>krb5.conf</code> file by providing the file's address. If you're using the
    #           CLI, it performs the base64 encoding for you. Otherwise, provide the
    #         base64-encoded text.</p>
    #
    # @option params [Array<String>] :agent_arns
    #   <p>The ARNs of the agents that are used to connect to the HDFS cluster. </p>
    #
    # @return [Types::UpdateLocationHdfsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_location_hdfs(
    #     location_arn: 'LocationArn', # required
    #     subdirectory: 'Subdirectory',
    #     name_nodes: [
    #       {
    #         hostname: 'Hostname', # required
    #         port: 1 # required
    #       }
    #     ],
    #     block_size: 1,
    #     replication_factor: 1,
    #     kms_key_provider_uri: 'KmsKeyProviderUri',
    #     qop_configuration: {
    #       rpc_protection: 'DISABLED', # accepts ["DISABLED", "AUTHENTICATION", "INTEGRITY", "PRIVACY"]
    #       data_transfer_protection: 'DISABLED' # accepts ["DISABLED", "AUTHENTICATION", "INTEGRITY", "PRIVACY"]
    #     },
    #     authentication_type: 'SIMPLE', # accepts ["SIMPLE", "KERBEROS"]
    #     simple_user: 'SimpleUser',
    #     kerberos_principal: 'KerberosPrincipal',
    #     kerberos_keytab: 'KerberosKeytab',
    #     kerberos_krb5_conf: 'KerberosKrb5Conf',
    #     agent_arns: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateLocationHdfsOutput
    #
    def update_location_hdfs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateLocationHdfsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateLocationHdfsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateLocationHdfs
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateLocationHdfs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateLocationHdfs,
        stubs: @stubs,
        params_class: Params::UpdateLocationHdfsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_location_hdfs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates some of the parameters of a previously created location for Network File System (NFS) access.
    #       For information about creating an NFS location, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html">Creating a location for NFS</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateLocationNfsInput}.
    #
    # @option params [String] :location_arn
    #   <p>The Amazon Resource Name (ARN) of the NFS location to update.</p>
    #
    # @option params [String] :subdirectory
    #   <p>The subdirectory in the NFS file system that is used to read data from the NFS source
    #         location or write data to the NFS destination. The NFS path should be a path that's
    #         exported by the NFS server, or a subdirectory of that path. The path should be such that it
    #         can be mounted by other NFS clients in your network.</p>
    #
    #            <p>To see all the paths exported by your NFS server, run "<code>showmount -e
    #           nfs-server-name</code>" from an NFS client that has access to your server. You can specify
    #           any directory that appears in the results, and any subdirectory of that directory. Ensure that
    #           the NFS export is accessible without Kerberos authentication. </p>
    #            <p>To transfer all the data in the folder that you specified, DataSync must have
    #         permissions to read all the data. To ensure this, either configure the NFS export with
    #           <code>no_root_squash</code>, or ensure that the files you want DataSync to
    #         access have permissions that allow read access for all users. Doing either option enables the
    #         agent to read the files. For the agent to access directories, you must additionally enable all
    #         execute access.</p>
    #            <p>If you are copying data to or from your Snowcone device, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-nfs-location.html#nfs-on-snowcone">NFS Server on Snowcone</a> for more information.</p>
    #
    #            <p>For information about NFS export configuration, see 18.7. The /etc/exports
    #         Configuration File in the Red Hat Enterprise Linux documentation.</p>
    #
    # @option params [OnPremConfig] :on_prem_config
    #   <p>A list of Amazon Resource Names (ARNs) of agents to use for a Network File System (NFS)
    #         location.</p>
    #
    # @option params [NfsMountOptions] :mount_options
    #   <p>Represents the mount options that are available for DataSync to access an NFS
    #         location.</p>
    #
    # @return [Types::UpdateLocationNfsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_location_nfs(
    #     location_arn: 'LocationArn', # required
    #     subdirectory: 'Subdirectory',
    #     on_prem_config: {
    #       agent_arns: [
    #         'member'
    #       ] # required
    #     },
    #     mount_options: {
    #       version: 'AUTOMATIC' # accepts ["AUTOMATIC", "NFS3", "NFS4_0", "NFS4_1"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateLocationNfsOutput
    #
    def update_location_nfs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateLocationNfsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateLocationNfsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateLocationNfs
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateLocationNfs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateLocationNfs,
        stubs: @stubs,
        params_class: Params::UpdateLocationNfsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_location_nfs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates some of the parameters of a previously created location for self-managed object
    #       storage server access. For information about creating a self-managed object storage location,
    #       see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-object-location.html">Creating a location for object storage</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateLocationObjectStorageInput}.
    #
    # @option params [String] :location_arn
    #   <p>The Amazon Resource Name (ARN) of the self-managed object storage server location to be updated.</p>
    #
    # @option params [Integer] :server_port
    #   <p>The port that your self-managed object storage server accepts inbound network traffic on.
    #         The server port is set by default to TCP 80 (HTTP) or TCP 443 (HTTPS). You can
    #         specify a custom port if your self-managed object storage server requires one.</p>
    #
    # @option params [String] :server_protocol
    #   <p>The protocol that the object storage server uses to communicate. Valid values are
    #           <code>HTTP</code> or <code>HTTPS</code>.</p>
    #
    # @option params [String] :subdirectory
    #   <p>The subdirectory in the self-managed object storage server that is used
    #         to read data from.</p>
    #
    # @option params [String] :access_key
    #   <p>Optional. The access key is used if credentials are required to access the self-managed
    #         object storage server. If your object storage requires a user name and password to
    #         authenticate, use <code>AccessKey</code> and <code>SecretKey</code> to provide the user name
    #         and password, respectively.</p>
    #
    # @option params [String] :secret_key
    #   <p>Optional. The secret key is used if credentials are required to access the self-managed
    #         object storage server. If your object storage requires a user name and password to
    #         authenticate, use <code>AccessKey</code> and <code>SecretKey</code> to provide the user name
    #         and password, respectively.</p>
    #
    # @option params [Array<String>] :agent_arns
    #   <p>The Amazon Resource Name (ARN) of the agents associated with the
    #         self-managed object storage server location.</p>
    #
    # @return [Types::UpdateLocationObjectStorageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_location_object_storage(
    #     location_arn: 'LocationArn', # required
    #     server_port: 1,
    #     server_protocol: 'HTTPS', # accepts ["HTTPS", "HTTP"]
    #     subdirectory: 'Subdirectory',
    #     access_key: 'AccessKey',
    #     secret_key: 'SecretKey',
    #     agent_arns: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateLocationObjectStorageOutput
    #
    def update_location_object_storage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateLocationObjectStorageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateLocationObjectStorageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateLocationObjectStorage
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateLocationObjectStorage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateLocationObjectStorage,
        stubs: @stubs,
        params_class: Params::UpdateLocationObjectStorageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_location_object_storage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates some of the parameters of a previously created location for Server Message Block
    #       (SMB) file system access. For information about creating an SMB location, see
    #       <a href="https://docs.aws.amazon.com/datasync/latest/userguide/create-smb-location.html">Creating a location for SMB</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateLocationSmbInput}.
    #
    # @option params [String] :location_arn
    #   <p>The Amazon Resource Name (ARN) of the SMB location to update.</p>
    #
    # @option params [String] :subdirectory
    #   <p>The subdirectory in the SMB file system that is used to read data from the SMB source
    #         location or write data to the SMB destination. The SMB path should be a path that's
    #         exported by the SMB server, or a subdirectory of that path. The path should be such that it
    #         can be mounted by other SMB clients in your network.</p>
    #            <note>
    #               <p>
    #                  <code>Subdirectory</code> must be specified with forward slashes. For example,
    #         <code>/path/to/folder</code>.</p>
    #            </note>
    #
    #            <p>To transfer all the data in the folder that you specified, DataSync must have
    #         permissions to mount the SMB share and to access all the data in that share. To ensure this,
    #         do either of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Ensure that the user/password specified belongs to the user who can mount the share
    #             and who has the appropriate permissions for all of the files and directories that you want
    #             DataSync to access.</p>
    #               </li>
    #               <li>
    #                  <p>Use credentials of a member of the Backup Operators group to mount the share. </p>
    #               </li>
    #            </ul>
    #            <p>Doing either of these options enables the agent to access the data. For the agent to
    #         access directories, you must also enable all execute access.</p>
    #
    # @option params [String] :user
    #   <p>The user who can mount the share has the permissions to access files and folders in the
    #         SMB share.</p>
    #
    # @option params [String] :domain
    #   <p>The name of the Windows domain that the SMB server belongs to.</p>
    #
    # @option params [String] :password
    #   <p>The password of the user who can mount the share has the permissions to access files and
    #         folders in the SMB share.</p>
    #
    # @option params [Array<String>] :agent_arns
    #   <p>The Amazon Resource Names (ARNs) of agents to use for a Simple Message Block (SMB)
    #         location.</p>
    #
    # @option params [SmbMountOptions] :mount_options
    #   <p>Represents the mount options that are available for DataSync to access an SMB
    #         location.</p>
    #
    # @return [Types::UpdateLocationSmbOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_location_smb(
    #     location_arn: 'LocationArn', # required
    #     subdirectory: 'Subdirectory',
    #     user: 'User',
    #     domain: 'Domain',
    #     password: 'Password',
    #     agent_arns: [
    #       'member'
    #     ],
    #     mount_options: {
    #       version: 'AUTOMATIC' # accepts ["AUTOMATIC", "SMB2", "SMB3"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateLocationSmbOutput
    #
    def update_location_smb(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateLocationSmbInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateLocationSmbInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateLocationSmb
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateLocationSmb
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateLocationSmb,
        stubs: @stubs,
        params_class: Params::UpdateLocationSmbOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_location_smb
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the metadata associated with a task.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateTaskInput}.
    #
    # @option params [String] :task_arn
    #   <p>The Amazon Resource Name (ARN) of the resource name of the task to update.</p>
    #
    # @option params [Options] :options
    #   <p>Represents the options that are available to control the behavior of a
    #         <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html">StartTaskExecution</a>
    #         operation. Behavior includes preserving metadata such as user
    #         ID (UID), group ID (GID), and file permissions, and also overwriting files in the destination,
    #         data integrity verification, and so on.</p>
    #            <p>A task has a set of default options associated with it. If you don't specify an option
    #         in <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html">StartTaskExecution</a>,
    #         the default value is used. You can override the
    #         defaults options on each task execution by specifying an overriding <code>Options</code> value
    #         to <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html">StartTaskExecution</a>.</p>
    #
    # @option params [Array<FilterRule>] :excludes
    #   <p>A list of filter rules that determines which files to exclude from a task. The list should
    #         contain a single filter string that consists of the patterns to exclude. The patterns are
    #         delimited by "|" (that is, a pipe), for example, <code>"/folder1|/folder2"</code>.</p>
    #            <p>
    #       </p>
    #
    # @option params [TaskSchedule] :schedule
    #   <p>Specifies a schedule used to periodically transfer files from a source to a destination
    #         location. You can configure your task to execute hourly, daily, weekly or on specific days of
    #         the week. You control when in the day or hour you want the task to execute. The time you
    #         specify is UTC time. For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/task-scheduling.html">Scheduling your task</a>.</p>
    #
    # @option params [String] :name
    #   <p>The name of the task to update.</p>
    #
    # @option params [String] :cloud_watch_log_group_arn
    #   <p>The Amazon Resource Name (ARN) of the resource name of the Amazon CloudWatch log
    #         group.</p>
    #
    # @option params [Array<FilterRule>] :includes
    #   <p>A list of filter rules that determines which files to include when running a task. The
    #         pattern contains a single filter string that consists of the patterns to include. The patterns
    #         are delimited by "|" (that is, a pipe), for example, <code>"/folder1|/folder2"</code>.</p>
    #
    # @return [Types::UpdateTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_task(
    #     task_arn: 'TaskArn', # required
    #     options: {
    #       verify_mode: 'POINT_IN_TIME_CONSISTENT', # accepts ["POINT_IN_TIME_CONSISTENT", "ONLY_FILES_TRANSFERRED", "NONE"]
    #       overwrite_mode: 'ALWAYS', # accepts ["ALWAYS", "NEVER"]
    #       atime: 'NONE', # accepts ["NONE", "BEST_EFFORT"]
    #       mtime: 'NONE', # accepts ["NONE", "PRESERVE"]
    #       uid: 'NONE', # accepts ["NONE", "INT_VALUE", "NAME", "BOTH"]
    #       gid: 'NONE', # accepts ["NONE", "INT_VALUE", "NAME", "BOTH"]
    #       preserve_deleted_files: 'PRESERVE', # accepts ["PRESERVE", "REMOVE"]
    #       preserve_devices: 'NONE', # accepts ["NONE", "PRESERVE"]
    #       posix_permissions: 'NONE', # accepts ["NONE", "PRESERVE"]
    #       bytes_per_second: 1,
    #       task_queueing: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #       log_level: 'OFF', # accepts ["OFF", "BASIC", "TRANSFER"]
    #       transfer_mode: 'CHANGED', # accepts ["CHANGED", "ALL"]
    #       security_descriptor_copy_flags: 'NONE', # accepts ["NONE", "OWNER_DACL", "OWNER_DACL_SACL"]
    #       object_tags: 'PRESERVE' # accepts ["PRESERVE", "NONE"]
    #     },
    #     excludes: [
    #       {
    #         filter_type: 'SIMPLE_PATTERN', # accepts ["SIMPLE_PATTERN"]
    #         value: 'Value'
    #       }
    #     ],
    #     schedule: {
    #       schedule_expression: 'ScheduleExpression' # required
    #     },
    #     name: 'Name',
    #     cloud_watch_log_group_arn: 'CloudWatchLogGroupArn',
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateTaskOutput
    #
    def update_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTaskInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTask
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateTask,
        stubs: @stubs,
        params_class: Params::UpdateTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates execution of a task.</p>
    #          <p>You can modify bandwidth throttling for a task execution that is running or queued.
    #       For more information, see <a href="https://docs.aws.amazon.com/datasync/latest/userguide/working-with-task-executions.html#adjust-bandwidth-throttling">Adjusting Bandwidth Throttling for a Task Execution</a>.</p>
    #
    #          <note>
    #             <p>The only <code>Option</code> that can be modified by <code>UpdateTaskExecution</code>
    #         is <code>
    #                   <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_Options.html#DataSync-Type-Options-BytesPerSecond">BytesPerSecond</a>
    #                </code>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateTaskExecutionInput}.
    #
    # @option params [String] :task_execution_arn
    #   <p>The Amazon Resource Name (ARN) of the specific task execution that is being updated. </p>
    #
    # @option params [Options] :options
    #   <p>Represents the options that are available to control the behavior of a
    #         <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html">StartTaskExecution</a>
    #         operation. Behavior includes preserving metadata such as user
    #         ID (UID), group ID (GID), and file permissions, and also overwriting files in the destination,
    #         data integrity verification, and so on.</p>
    #            <p>A task has a set of default options associated with it. If you don't specify an option
    #         in <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html">StartTaskExecution</a>,
    #         the default value is used. You can override the
    #         defaults options on each task execution by specifying an overriding <code>Options</code> value
    #         to <a href="https://docs.aws.amazon.com/datasync/latest/userguide/API_StartTaskExecution.html">StartTaskExecution</a>.</p>
    #
    # @return [Types::UpdateTaskExecutionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_task_execution(
    #     task_execution_arn: 'TaskExecutionArn', # required
    #     options: {
    #       verify_mode: 'POINT_IN_TIME_CONSISTENT', # accepts ["POINT_IN_TIME_CONSISTENT", "ONLY_FILES_TRANSFERRED", "NONE"]
    #       overwrite_mode: 'ALWAYS', # accepts ["ALWAYS", "NEVER"]
    #       atime: 'NONE', # accepts ["NONE", "BEST_EFFORT"]
    #       mtime: 'NONE', # accepts ["NONE", "PRESERVE"]
    #       uid: 'NONE', # accepts ["NONE", "INT_VALUE", "NAME", "BOTH"]
    #       gid: 'NONE', # accepts ["NONE", "INT_VALUE", "NAME", "BOTH"]
    #       preserve_deleted_files: 'PRESERVE', # accepts ["PRESERVE", "REMOVE"]
    #       preserve_devices: 'NONE', # accepts ["NONE", "PRESERVE"]
    #       posix_permissions: 'NONE', # accepts ["NONE", "PRESERVE"]
    #       bytes_per_second: 1,
    #       task_queueing: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #       log_level: 'OFF', # accepts ["OFF", "BASIC", "TRANSFER"]
    #       transfer_mode: 'CHANGED', # accepts ["CHANGED", "ALL"]
    #       security_descriptor_copy_flags: 'NONE', # accepts ["NONE", "OWNER_DACL", "OWNER_DACL_SACL"]
    #       object_tags: 'PRESERVE' # accepts ["PRESERVE", "NONE"]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateTaskExecutionOutput
    #
    def update_task_execution(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTaskExecutionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTaskExecutionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTaskExecution
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::InvalidRequestException]),
        data_parser: Parsers::UpdateTaskExecution
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateTaskExecution,
        stubs: @stubs,
        params_class: Params::UpdateTaskExecutionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_task_execution
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
