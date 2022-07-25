# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Mq
  # An API client for mq
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon MQ is a managed message broker service for Apache ActiveMQ and RabbitMQ that makes it easy to set up and operate message brokers in the cloud. A message broker allows software applications and components to communicate using various programming languages, operating systems, and formal messaging protocols.</p>
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
    def initialize(config = AWS::SDK::Mq::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a broker. Note: This API is asynchronous.</p> <p>To create a broker, you must either use the AmazonMQFullAccess IAM policy or include the following EC2 permissions in your IAM policy.</p> <ul><li><p>ec2:CreateNetworkInterface</p> <p>This permission is required to allow Amazon MQ to create an elastic network interface (ENI) on behalf of your account.</p></li> <li><p>ec2:CreateNetworkInterfacePermission</p> <p>This permission is required to attach the ENI to the broker instance.</p></li> <li><p>ec2:DeleteNetworkInterface</p></li> <li><p>ec2:DeleteNetworkInterfacePermission</p></li> <li><p>ec2:DetachNetworkInterface</p></li> <li><p>ec2:DescribeInternetGateways</p></li> <li><p>ec2:DescribeNetworkInterfaces</p></li> <li><p>ec2:DescribeNetworkInterfacePermissions</p></li> <li><p>ec2:DescribeRouteTables</p></li> <li><p>ec2:DescribeSecurityGroups</p></li> <li><p>ec2:DescribeSubnets</p></li> <li><p>ec2:DescribeVpcs</p></li></ul> <p>For more information, see <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/amazon-mq-setting-up.html#create-iam-user">Create an IAM User and Get Your AWS Credentials</a> and <a href="https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/connecting-to-amazon-mq.html#never-modify-delete-elastic-network-interface">Never Modify or Delete the Amazon MQ Elastic Network Interface</a> in the <i>Amazon MQ Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateBrokerInput}.
    #
    # @option params [String] :authentication_strategy
    #   <p>Optional. The authentication strategy used to secure the broker. The default is SIMPLE.</p>
    #
    # @option params [Boolean] :auto_minor_version_upgrade
    #   <p>Enables automatic upgrades to new minor versions for brokers, as new versions are released and supported by Amazon MQ. Automatic upgrades occur during the scheduled maintenance window of the broker or after a manual broker reboot. Set to true by default, if no value is specified.</p>
    #
    # @option params [String] :broker_name
    #   <p>Required. The broker's name. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain white spaces, brackets, wildcard characters, or special characters.</p>
    #
    # @option params [ConfigurationId] :configuration
    #   <p>A list of information about the configuration.</p>
    #
    # @option params [String] :creator_request_id
    #   <p>The unique ID that the requester receives for the created broker. Amazon MQ passes your ID with the API action. Note: We recommend using a Universally Unique Identifier (UUID) for the creatorRequestId. You may omit the creatorRequestId if your application doesn't require idempotency.</p>
    #
    # @option params [String] :deployment_mode
    #   <p>Required. The broker's deployment mode.</p>
    #
    # @option params [EncryptionOptions] :encryption_options
    #   <p>Encryption options for the broker. Does not apply to RabbitMQ brokers.</p>
    #
    # @option params [String] :engine_type
    #   <p>Required. The type of broker engine. Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.</p>
    #
    # @option params [String] :engine_version
    #   <p>Required. The broker engine's version. For a list of supported engine versions, see <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker-engine.html">Supported engines</a>.</p>
    #
    # @option params [String] :host_instance_type
    #   <p>Required. The broker's instance type.</p>
    #
    # @option params [LdapServerMetadataInput] :ldap_server_metadata
    #   <p>Optional. The metadata of the LDAP server used to authenticate and authorize connections to the broker. Does not apply to RabbitMQ brokers.</p>
    #
    # @option params [Logs] :logs
    #   <p>Enables Amazon CloudWatch logging for brokers.</p>
    #
    # @option params [WeeklyStartTime] :maintenance_window_start_time
    #   <p>The parameters that determine the WeeklyStartTime.</p>
    #
    # @option params [Boolean] :publicly_accessible
    #   <p>Enables connections from applications outside of the VPC that hosts the broker's subnets. Set to false by default, if no value is provided.</p>
    #
    # @option params [Array<String>] :security_groups
    #   <p>The list of rules (1 minimum, 125 maximum) that authorize connections to brokers.</p>
    #
    # @option params [String] :storage_type
    #   <p>The broker's storage type.</p>
    #
    # @option params [Array<String>] :subnet_ids
    #   <p>The list of groups that define which subnets and IP ranges the broker can use from different Availability Zones. If you specify more than one subnet, the subnets must be in different Availability Zones. Amazon MQ will not be able to create VPC endpoints for your broker with multiple subnets in the same Availability Zone. A SINGLE_INSTANCE deployment requires one subnet (for example, the default subnet). An ACTIVE_STANDBY_MULTI_AZ Amazon MQ for ActiveMQ deployment requires two subnets. A CLUSTER_MULTI_AZ Amazon MQ for RabbitMQ deployment has no subnet requirements when deployed with public accessibility. Deployment without public accessibility requires at least one subnet.</p> <important><p>If you specify subnets in a <a href="https://docs.aws.amazon.com/vpc/latest/userguide/vpc-sharing.html">shared VPC</a> for a RabbitMQ broker, the associated VPC to which the specified subnets belong must be owned by your AWS account. Amazon MQ will not be able to create VPC endpoints in VPCs that are not owned by your AWS account.</p></important>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Create tags when creating the broker.</p>
    #
    # @option params [Array<User>] :users
    #   <p>Required. The list of broker users (persons or applications) who can access queues and topics. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p> <important><title>Amazon MQ for RabbitMQ</title> <p>When you create an Amazon MQ for RabbitMQ broker, one and only one administrative user is accepted and created when a broker is first provisioned. All subsequent broker users are created by making RabbitMQ API calls directly to brokers or via the RabbitMQ web console.</p></important>
    #
    # @return [Types::CreateBrokerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_broker(
    #     authentication_strategy: 'SIMPLE', # accepts ["SIMPLE", "LDAP"]
    #     auto_minor_version_upgrade: false, # required
    #     broker_name: 'BrokerName', # required
    #     configuration: {
    #       id: 'Id', # required
    #       revision: 1
    #     },
    #     creator_request_id: 'CreatorRequestId',
    #     deployment_mode: 'SINGLE_INSTANCE', # required - accepts ["SINGLE_INSTANCE", "ACTIVE_STANDBY_MULTI_AZ", "CLUSTER_MULTI_AZ"]
    #     encryption_options: {
    #       kms_key_id: 'KmsKeyId',
    #       use_aws_owned_key: false # required
    #     },
    #     engine_type: 'ACTIVEMQ', # required - accepts ["ACTIVEMQ", "RABBITMQ"]
    #     engine_version: 'EngineVersion', # required
    #     host_instance_type: 'HostInstanceType', # required
    #     ldap_server_metadata: {
    #       hosts: [
    #         'member'
    #       ], # required
    #       role_base: 'RoleBase', # required
    #       role_name: 'RoleName',
    #       role_search_matching: 'RoleSearchMatching', # required
    #       role_search_subtree: false,
    #       service_account_password: 'ServiceAccountPassword', # required
    #       service_account_username: 'ServiceAccountUsername', # required
    #       user_base: 'UserBase', # required
    #       user_role_name: 'UserRoleName',
    #       user_search_matching: 'UserSearchMatching', # required
    #       user_search_subtree: false
    #     },
    #     logs: {
    #       audit: false,
    #       general: false
    #     },
    #     maintenance_window_start_time: {
    #       day_of_week: 'MONDAY', # required - accepts ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
    #       time_of_day: 'TimeOfDay', # required
    #       time_zone: 'TimeZone'
    #     },
    #     publicly_accessible: false, # required
    #     storage_type: 'EBS', # accepts ["EBS", "EFS"]
    #     tags: {
    #       'key' => 'value'
    #     },
    #     users: [
    #       {
    #         console_access: false,
    #         password: 'Password', # required
    #         username: 'Username' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBrokerOutput
    #   resp.data.broker_arn #=> String
    #   resp.data.broker_id #=> String
    #
    def create_broker(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBrokerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBrokerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBroker
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::UnauthorizedException]),
        data_parser: Parsers::CreateBroker
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBroker,
        stubs: @stubs,
        params_class: Params::CreateBrokerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_broker
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new configuration for the specified configuration name. Amazon MQ uses the default configuration (the engine type and version).</p>
    #
    # @param [Hash] params
    #   See {Types::CreateConfigurationInput}.
    #
    # @option params [String] :authentication_strategy
    #   <p>Optional. The authentication strategy associated with the configuration. The default is SIMPLE.</p>
    #
    # @option params [String] :engine_type
    #   <p>Required. The type of broker engine. Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.</p>
    #
    # @option params [String] :engine_version
    #   <p>Required. The broker engine's version. For a list of supported engine versions, see <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker-engine.html">Supported engines</a>.</p>
    #
    # @option params [String] :name
    #   <p>Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Create tags when creating the configuration.</p>
    #
    # @return [Types::CreateConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configuration(
    #     authentication_strategy: 'SIMPLE', # accepts ["SIMPLE", "LDAP"]
    #     engine_type: 'ACTIVEMQ', # required - accepts ["ACTIVEMQ", "RABBITMQ"]
    #     engine_version: 'EngineVersion', # required
    #     name: 'Name', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateConfigurationOutput
    #   resp.data.arn #=> String
    #   resp.data.authentication_strategy #=> String, one of ["SIMPLE", "LDAP"]
    #   resp.data.created #=> Time
    #   resp.data.id #=> String
    #   resp.data.latest_revision #=> Types::ConfigurationRevision
    #   resp.data.latest_revision.created #=> Time
    #   resp.data.latest_revision.description #=> String
    #   resp.data.latest_revision.revision #=> Integer
    #   resp.data.name #=> String
    #
    def create_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException]),
        data_parser: Parsers::CreateConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateConfiguration,
        stubs: @stubs,
        params_class: Params::CreateConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Add a tag to a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateTagsInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource tag.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value pair for the resource tag.</p>
    #
    # @return [Types::CreateTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_tags(
    #     resource_arn: 'ResourceArn', # required
    #     tags: {
    #       'key' => 'value'
    #     }
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException]),
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

    # <p>Creates an ActiveMQ user.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateUserInput}.
    #
    # @option params [String] :broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #
    # @option params [Boolean] :console_access
    #   <p>Enables access to the ActiveMQ Web Console for the ActiveMQ user.</p>
    #
    # @option params [Array<String>] :groups
    #   <p>The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>
    #
    # @option params [String] :password
    #   <p>Required. The password of the user. This value must be at least 12 characters long, must contain at least 4 unique characters, and must not contain commas, colons, or equal signs (,:=).</p>
    #
    # @option params [String] :username
    #   <p>The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>
    #
    # @return [Types::CreateUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user(
    #     broker_id: 'BrokerId', # required
    #     console_access: false,
    #     groups: [
    #       'member'
    #     ],
    #     password: 'Password', # required
    #     username: 'Username' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateUserOutput
    #
    def create_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException]),
        data_parser: Parsers::CreateUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateUser,
        stubs: @stubs,
        params_class: Params::CreateUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a broker. Note: This API is asynchronous.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBrokerInput}.
    #
    # @option params [String] :broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #
    # @return [Types::DeleteBrokerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_broker(
    #     broker_id: 'BrokerId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBrokerOutput
    #   resp.data.broker_id #=> String
    #
    def delete_broker(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBrokerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBrokerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBroker
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteBroker
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBroker,
        stubs: @stubs,
        params_class: Params::DeleteBrokerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_broker
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a tag from a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTagsInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource tag.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>An array of tag keys to delete</p>
    #
    # @return [Types::DeleteTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tags(
    #     resource_arn: 'ResourceArn', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException]),
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

    # <p>Deletes an ActiveMQ user.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteUserInput}.
    #
    # @option params [String] :broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #
    # @option params [String] :username
    #   <p>The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>
    #
    # @return [Types::DeleteUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user(
    #     broker_id: 'BrokerId', # required
    #     username: 'Username' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteUserOutput
    #
    def delete_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteUser
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException]),
        data_parser: Parsers::DeleteUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteUser,
        stubs: @stubs,
        params_class: Params::DeleteUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the specified broker.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeBrokerInput}.
    #
    # @option params [String] :broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #
    # @return [Types::DescribeBrokerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_broker(
    #     broker_id: 'BrokerId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeBrokerOutput
    #   resp.data.actions_required #=> Array<ActionRequired>
    #   resp.data.actions_required[0] #=> Types::ActionRequired
    #   resp.data.actions_required[0].action_required_code #=> String
    #   resp.data.actions_required[0].action_required_info #=> String
    #   resp.data.authentication_strategy #=> String, one of ["SIMPLE", "LDAP"]
    #   resp.data.auto_minor_version_upgrade #=> Boolean
    #   resp.data.broker_arn #=> String
    #   resp.data.broker_id #=> String
    #   resp.data.broker_instances #=> Array<BrokerInstance>
    #   resp.data.broker_instances[0] #=> Types::BrokerInstance
    #   resp.data.broker_instances[0].console_url #=> String
    #   resp.data.broker_instances[0].endpoints #=> Array<String>
    #   resp.data.broker_instances[0].endpoints[0] #=> String
    #   resp.data.broker_instances[0].ip_address #=> String
    #   resp.data.broker_name #=> String
    #   resp.data.broker_state #=> String, one of ["CREATION_IN_PROGRESS", "CREATION_FAILED", "DELETION_IN_PROGRESS", "RUNNING", "REBOOT_IN_PROGRESS", "CRITICAL_ACTION_REQUIRED"]
    #   resp.data.configurations #=> Types::Configurations
    #   resp.data.configurations.current #=> Types::ConfigurationId
    #   resp.data.configurations.current.id #=> String
    #   resp.data.configurations.current.revision #=> Integer
    #   resp.data.configurations.history #=> Array<ConfigurationId>
    #   resp.data.configurations.pending #=> Types::ConfigurationId
    #   resp.data.created #=> Time
    #   resp.data.deployment_mode #=> String, one of ["SINGLE_INSTANCE", "ACTIVE_STANDBY_MULTI_AZ", "CLUSTER_MULTI_AZ"]
    #   resp.data.encryption_options #=> Types::EncryptionOptions
    #   resp.data.encryption_options.kms_key_id #=> String
    #   resp.data.encryption_options.use_aws_owned_key #=> Boolean
    #   resp.data.engine_type #=> String, one of ["ACTIVEMQ", "RABBITMQ"]
    #   resp.data.engine_version #=> String
    #   resp.data.host_instance_type #=> String
    #   resp.data.ldap_server_metadata #=> Types::LdapServerMetadataOutput
    #   resp.data.ldap_server_metadata.hosts #=> Array<String>
    #   resp.data.ldap_server_metadata.role_base #=> String
    #   resp.data.ldap_server_metadata.role_name #=> String
    #   resp.data.ldap_server_metadata.role_search_matching #=> String
    #   resp.data.ldap_server_metadata.role_search_subtree #=> Boolean
    #   resp.data.ldap_server_metadata.service_account_username #=> String
    #   resp.data.ldap_server_metadata.user_base #=> String
    #   resp.data.ldap_server_metadata.user_role_name #=> String
    #   resp.data.ldap_server_metadata.user_search_matching #=> String
    #   resp.data.ldap_server_metadata.user_search_subtree #=> Boolean
    #   resp.data.logs #=> Types::LogsSummary
    #   resp.data.logs.audit #=> Boolean
    #   resp.data.logs.audit_log_group #=> String
    #   resp.data.logs.general #=> Boolean
    #   resp.data.logs.general_log_group #=> String
    #   resp.data.logs.pending #=> Types::PendingLogs
    #   resp.data.logs.pending.audit #=> Boolean
    #   resp.data.logs.pending.general #=> Boolean
    #   resp.data.maintenance_window_start_time #=> Types::WeeklyStartTime
    #   resp.data.maintenance_window_start_time.day_of_week #=> String, one of ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
    #   resp.data.maintenance_window_start_time.time_of_day #=> String
    #   resp.data.maintenance_window_start_time.time_zone #=> String
    #   resp.data.pending_authentication_strategy #=> String, one of ["SIMPLE", "LDAP"]
    #   resp.data.pending_engine_version #=> String
    #   resp.data.pending_host_instance_type #=> String
    #   resp.data.pending_ldap_server_metadata #=> Types::LdapServerMetadataOutput
    #   resp.data.pending_security_groups #=> Array<String>
    #   resp.data.publicly_accessible #=> Boolean
    #   resp.data.security_groups #=> Array<String>
    #   resp.data.storage_type #=> String, one of ["EBS", "EFS"]
    #   resp.data.subnet_ids #=> Array<String>
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.users #=> Array<UserSummary>
    #   resp.data.users[0] #=> Types::UserSummary
    #   resp.data.users[0].pending_change #=> String, one of ["CREATE", "UPDATE", "DELETE"]
    #   resp.data.users[0].username #=> String
    #
    def describe_broker(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeBrokerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeBrokerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeBroker
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException]),
        data_parser: Parsers::DescribeBroker
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeBroker,
        stubs: @stubs,
        params_class: Params::DescribeBrokerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_broker
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describe available engine types and versions.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeBrokerEngineTypesInput}.
    #
    # @option params [String] :engine_type
    #   <p>Filter response by engine type.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    #
    # @return [Types::DescribeBrokerEngineTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_broker_engine_types(
    #     engine_type: 'EngineType',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeBrokerEngineTypesOutput
    #   resp.data.broker_engine_types #=> Array<BrokerEngineType>
    #   resp.data.broker_engine_types[0] #=> Types::BrokerEngineType
    #   resp.data.broker_engine_types[0].engine_type #=> String, one of ["ACTIVEMQ", "RABBITMQ"]
    #   resp.data.broker_engine_types[0].engine_versions #=> Array<EngineVersion>
    #   resp.data.broker_engine_types[0].engine_versions[0] #=> Types::EngineVersion
    #   resp.data.broker_engine_types[0].engine_versions[0].name #=> String
    #   resp.data.max_results #=> Integer
    #   resp.data.next_token #=> String
    #
    def describe_broker_engine_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeBrokerEngineTypesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeBrokerEngineTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeBrokerEngineTypes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException]),
        data_parser: Parsers::DescribeBrokerEngineTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeBrokerEngineTypes,
        stubs: @stubs,
        params_class: Params::DescribeBrokerEngineTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_broker_engine_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describe available broker instance options.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeBrokerInstanceOptionsInput}.
    #
    # @option params [String] :engine_type
    #   <p>Filter response by engine type.</p>
    #
    # @option params [String] :host_instance_type
    #   <p>Filter response by host instance type.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    #
    # @option params [String] :storage_type
    #   <p>Filter response by storage type.</p>
    #
    # @return [Types::DescribeBrokerInstanceOptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_broker_instance_options(
    #     engine_type: 'EngineType',
    #     host_instance_type: 'HostInstanceType',
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     storage_type: 'StorageType'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeBrokerInstanceOptionsOutput
    #   resp.data.broker_instance_options #=> Array<BrokerInstanceOption>
    #   resp.data.broker_instance_options[0] #=> Types::BrokerInstanceOption
    #   resp.data.broker_instance_options[0].availability_zones #=> Array<AvailabilityZone>
    #   resp.data.broker_instance_options[0].availability_zones[0] #=> Types::AvailabilityZone
    #   resp.data.broker_instance_options[0].availability_zones[0].name #=> String
    #   resp.data.broker_instance_options[0].engine_type #=> String, one of ["ACTIVEMQ", "RABBITMQ"]
    #   resp.data.broker_instance_options[0].host_instance_type #=> String
    #   resp.data.broker_instance_options[0].storage_type #=> String, one of ["EBS", "EFS"]
    #   resp.data.broker_instance_options[0].supported_deployment_modes #=> Array<String>
    #   resp.data.broker_instance_options[0].supported_deployment_modes[0] #=> String, one of ["SINGLE_INSTANCE", "ACTIVE_STANDBY_MULTI_AZ", "CLUSTER_MULTI_AZ"]
    #   resp.data.broker_instance_options[0].supported_engine_versions #=> Array<String>
    #   resp.data.broker_instance_options[0].supported_engine_versions[0] #=> String
    #   resp.data.max_results #=> Integer
    #   resp.data.next_token #=> String
    #
    def describe_broker_instance_options(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeBrokerInstanceOptionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeBrokerInstanceOptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeBrokerInstanceOptions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException]),
        data_parser: Parsers::DescribeBrokerInstanceOptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeBrokerInstanceOptions,
        stubs: @stubs,
        params_class: Params::DescribeBrokerInstanceOptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_broker_instance_options
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the specified configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeConfigurationInput}.
    #
    # @option params [String] :configuration_id
    #   <p>The unique ID that Amazon MQ generates for the configuration.</p>
    #
    # @return [Types::DescribeConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_configuration(
    #     configuration_id: 'ConfigurationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeConfigurationOutput
    #   resp.data.arn #=> String
    #   resp.data.authentication_strategy #=> String, one of ["SIMPLE", "LDAP"]
    #   resp.data.created #=> Time
    #   resp.data.description #=> String
    #   resp.data.engine_type #=> String, one of ["ACTIVEMQ", "RABBITMQ"]
    #   resp.data.engine_version #=> String
    #   resp.data.id #=> String
    #   resp.data.latest_revision #=> Types::ConfigurationRevision
    #   resp.data.latest_revision.created #=> Time
    #   resp.data.latest_revision.description #=> String
    #   resp.data.latest_revision.revision #=> Integer
    #   resp.data.name #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def describe_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException]),
        data_parser: Parsers::DescribeConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeConfiguration,
        stubs: @stubs,
        params_class: Params::DescribeConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the specified configuration revision for the specified configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeConfigurationRevisionInput}.
    #
    # @option params [String] :configuration_id
    #   <p>The unique ID that Amazon MQ generates for the configuration.</p>
    #
    # @option params [String] :configuration_revision
    #   <p>The revision of the configuration.</p>
    #
    # @return [Types::DescribeConfigurationRevisionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_configuration_revision(
    #     configuration_id: 'ConfigurationId', # required
    #     configuration_revision: 'ConfigurationRevision' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeConfigurationRevisionOutput
    #   resp.data.configuration_id #=> String
    #   resp.data.created #=> Time
    #   resp.data.data #=> String
    #   resp.data.description #=> String
    #
    def describe_configuration_revision(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeConfigurationRevisionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeConfigurationRevisionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeConfigurationRevision
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException]),
        data_parser: Parsers::DescribeConfigurationRevision
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeConfigurationRevision,
        stubs: @stubs,
        params_class: Params::DescribeConfigurationRevisionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_configuration_revision
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about an ActiveMQ user.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeUserInput}.
    #
    # @option params [String] :broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #
    # @option params [String] :username
    #   <p>The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>
    #
    # @return [Types::DescribeUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user(
    #     broker_id: 'BrokerId', # required
    #     username: 'Username' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeUserOutput
    #   resp.data.broker_id #=> String
    #   resp.data.console_access #=> Boolean
    #   resp.data.groups #=> Array<String>
    #   resp.data.groups[0] #=> String
    #   resp.data.pending #=> Types::UserPendingChanges
    #   resp.data.pending.console_access #=> Boolean
    #   resp.data.pending.groups #=> Array<String>
    #   resp.data.pending.pending_change #=> String, one of ["CREATE", "UPDATE", "DELETE"]
    #   resp.data.username #=> String
    #
    def describe_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeUser
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException]),
        data_parser: Parsers::DescribeUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeUser,
        stubs: @stubs,
        params_class: Params::DescribeUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of all brokers.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBrokersInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    #
    # @return [Types::ListBrokersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_brokers(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBrokersOutput
    #   resp.data.broker_summaries #=> Array<BrokerSummary>
    #   resp.data.broker_summaries[0] #=> Types::BrokerSummary
    #   resp.data.broker_summaries[0].broker_arn #=> String
    #   resp.data.broker_summaries[0].broker_id #=> String
    #   resp.data.broker_summaries[0].broker_name #=> String
    #   resp.data.broker_summaries[0].broker_state #=> String, one of ["CREATION_IN_PROGRESS", "CREATION_FAILED", "DELETION_IN_PROGRESS", "RUNNING", "REBOOT_IN_PROGRESS", "CRITICAL_ACTION_REQUIRED"]
    #   resp.data.broker_summaries[0].created #=> Time
    #   resp.data.broker_summaries[0].deployment_mode #=> String, one of ["SINGLE_INSTANCE", "ACTIVE_STANDBY_MULTI_AZ", "CLUSTER_MULTI_AZ"]
    #   resp.data.broker_summaries[0].engine_type #=> String, one of ["ACTIVEMQ", "RABBITMQ"]
    #   resp.data.broker_summaries[0].host_instance_type #=> String
    #   resp.data.next_token #=> String
    #
    def list_brokers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBrokersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBrokersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBrokers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException]),
        data_parser: Parsers::ListBrokers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBrokers,
        stubs: @stubs,
        params_class: Params::ListBrokersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_brokers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of all revisions for the specified configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::ListConfigurationRevisionsInput}.
    #
    # @option params [String] :configuration_id
    #   <p>The unique ID that Amazon MQ generates for the configuration.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    #
    # @return [Types::ListConfigurationRevisionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configuration_revisions(
    #     configuration_id: 'ConfigurationId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListConfigurationRevisionsOutput
    #   resp.data.configuration_id #=> String
    #   resp.data.max_results #=> Integer
    #   resp.data.next_token #=> String
    #   resp.data.revisions #=> Array<ConfigurationRevision>
    #   resp.data.revisions[0] #=> Types::ConfigurationRevision
    #   resp.data.revisions[0].created #=> Time
    #   resp.data.revisions[0].description #=> String
    #   resp.data.revisions[0].revision #=> Integer
    #
    def list_configuration_revisions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListConfigurationRevisionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListConfigurationRevisionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListConfigurationRevisions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException]),
        data_parser: Parsers::ListConfigurationRevisions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListConfigurationRevisions,
        stubs: @stubs,
        params_class: Params::ListConfigurationRevisionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_configuration_revisions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of all configurations.</p>
    #
    # @param [Hash] params
    #   See {Types::ListConfigurationsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    #
    # @return [Types::ListConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configurations(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListConfigurationsOutput
    #   resp.data.configurations #=> Array<Configuration>
    #   resp.data.configurations[0] #=> Types::Configuration
    #   resp.data.configurations[0].arn #=> String
    #   resp.data.configurations[0].authentication_strategy #=> String, one of ["SIMPLE", "LDAP"]
    #   resp.data.configurations[0].created #=> Time
    #   resp.data.configurations[0].description #=> String
    #   resp.data.configurations[0].engine_type #=> String, one of ["ACTIVEMQ", "RABBITMQ"]
    #   resp.data.configurations[0].engine_version #=> String
    #   resp.data.configurations[0].id #=> String
    #   resp.data.configurations[0].latest_revision #=> Types::ConfigurationRevision
    #   resp.data.configurations[0].latest_revision.created #=> Time
    #   resp.data.configurations[0].latest_revision.description #=> String
    #   resp.data.configurations[0].latest_revision.revision #=> Integer
    #   resp.data.configurations[0].name #=> String
    #   resp.data.configurations[0].tags #=> Hash<String, String>
    #   resp.data.configurations[0].tags['key'] #=> String
    #   resp.data.max_results #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListConfigurationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListConfigurations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException]),
        data_parser: Parsers::ListConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListConfigurations,
        stubs: @stubs,
        params_class: Params::ListConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists tags for a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource tag.</p>
    #
    # @return [Types::ListTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags(
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsOutput
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def list_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTags
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException]),
        data_parser: Parsers::ListTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTags,
        stubs: @stubs,
        params_class: Params::ListTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of all ActiveMQ users.</p>
    #
    # @param [Hash] params
    #   See {Types::ListUsersInput}.
    #
    # @option params [String] :broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>
    #
    # @option params [String] :next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    #
    # @return [Types::ListUsersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users(
    #     broker_id: 'BrokerId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListUsersOutput
    #   resp.data.broker_id #=> String
    #   resp.data.max_results #=> Integer
    #   resp.data.next_token #=> String
    #   resp.data.users #=> Array<UserSummary>
    #   resp.data.users[0] #=> Types::UserSummary
    #   resp.data.users[0].pending_change #=> String, one of ["CREATE", "UPDATE", "DELETE"]
    #   resp.data.users[0].username #=> String
    #
    def list_users(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListUsersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListUsersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListUsers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException]),
        data_parser: Parsers::ListUsers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListUsers,
        stubs: @stubs,
        params_class: Params::ListUsersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_users
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Reboots a broker. Note: This API is asynchronous.</p>
    #
    # @param [Hash] params
    #   See {Types::RebootBrokerInput}.
    #
    # @option params [String] :broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #
    # @return [Types::RebootBrokerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reboot_broker(
    #     broker_id: 'BrokerId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RebootBrokerOutput
    #
    def reboot_broker(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RebootBrokerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RebootBrokerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RebootBroker
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException]),
        data_parser: Parsers::RebootBroker
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RebootBroker,
        stubs: @stubs,
        params_class: Params::RebootBrokerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reboot_broker
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds a pending configuration change to a broker.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateBrokerInput}.
    #
    # @option params [String] :authentication_strategy
    #   <p>Optional. The authentication strategy used to secure the broker. The default is SIMPLE.</p>
    #
    # @option params [Boolean] :auto_minor_version_upgrade
    #   <p>Enables automatic upgrades to new minor versions for brokers, as new versions are released and supported by Amazon MQ. Automatic upgrades occur during the scheduled maintenance window of the broker or after a manual broker reboot.</p>
    #
    # @option params [String] :broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #
    # @option params [ConfigurationId] :configuration
    #   <p>A list of information about the configuration.</p>
    #
    # @option params [String] :engine_version
    #   <p>The broker engine version. For a list of supported engine versions, see <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker-engine.html">Supported engines</a>.</p>
    #
    # @option params [String] :host_instance_type
    #   <p>The broker's host instance type to upgrade to. For a list of supported instance types, see <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker.html#broker-instance-types">Broker instance types</a>.</p>
    #
    # @option params [LdapServerMetadataInput] :ldap_server_metadata
    #   <p>Optional. The metadata of the LDAP server used to authenticate and authorize connections to the broker. Does not apply to RabbitMQ brokers.</p>
    #
    # @option params [Logs] :logs
    #   <p>Enables Amazon CloudWatch logging for brokers.</p>
    #
    # @option params [WeeklyStartTime] :maintenance_window_start_time
    #   <p>The parameters that determine the WeeklyStartTime.</p>
    #
    # @option params [Array<String>] :security_groups
    #   <p>The list of security groups (1 minimum, 5 maximum) that authorizes connections to brokers.</p>
    #
    # @return [Types::UpdateBrokerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_broker(
    #     authentication_strategy: 'SIMPLE', # accepts ["SIMPLE", "LDAP"]
    #     auto_minor_version_upgrade: false,
    #     broker_id: 'BrokerId', # required
    #     configuration: {
    #       id: 'Id', # required
    #       revision: 1
    #     },
    #     engine_version: 'EngineVersion',
    #     host_instance_type: 'HostInstanceType',
    #     ldap_server_metadata: {
    #       hosts: [
    #         'member'
    #       ], # required
    #       role_base: 'RoleBase', # required
    #       role_name: 'RoleName',
    #       role_search_matching: 'RoleSearchMatching', # required
    #       role_search_subtree: false,
    #       service_account_password: 'ServiceAccountPassword', # required
    #       service_account_username: 'ServiceAccountUsername', # required
    #       user_base: 'UserBase', # required
    #       user_role_name: 'UserRoleName',
    #       user_search_matching: 'UserSearchMatching', # required
    #       user_search_subtree: false
    #     },
    #     logs: {
    #       audit: false,
    #       general: false
    #     },
    #     maintenance_window_start_time: {
    #       day_of_week: 'MONDAY', # required - accepts ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
    #       time_of_day: 'TimeOfDay', # required
    #       time_zone: 'TimeZone'
    #     },
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateBrokerOutput
    #   resp.data.authentication_strategy #=> String, one of ["SIMPLE", "LDAP"]
    #   resp.data.auto_minor_version_upgrade #=> Boolean
    #   resp.data.broker_id #=> String
    #   resp.data.configuration #=> Types::ConfigurationId
    #   resp.data.configuration.id #=> String
    #   resp.data.configuration.revision #=> Integer
    #   resp.data.engine_version #=> String
    #   resp.data.host_instance_type #=> String
    #   resp.data.ldap_server_metadata #=> Types::LdapServerMetadataOutput
    #   resp.data.ldap_server_metadata.hosts #=> Array<String>
    #   resp.data.ldap_server_metadata.hosts[0] #=> String
    #   resp.data.ldap_server_metadata.role_base #=> String
    #   resp.data.ldap_server_metadata.role_name #=> String
    #   resp.data.ldap_server_metadata.role_search_matching #=> String
    #   resp.data.ldap_server_metadata.role_search_subtree #=> Boolean
    #   resp.data.ldap_server_metadata.service_account_username #=> String
    #   resp.data.ldap_server_metadata.user_base #=> String
    #   resp.data.ldap_server_metadata.user_role_name #=> String
    #   resp.data.ldap_server_metadata.user_search_matching #=> String
    #   resp.data.ldap_server_metadata.user_search_subtree #=> Boolean
    #   resp.data.logs #=> Types::Logs
    #   resp.data.logs.audit #=> Boolean
    #   resp.data.logs.general #=> Boolean
    #   resp.data.maintenance_window_start_time #=> Types::WeeklyStartTime
    #   resp.data.maintenance_window_start_time.day_of_week #=> String, one of ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
    #   resp.data.maintenance_window_start_time.time_of_day #=> String
    #   resp.data.maintenance_window_start_time.time_zone #=> String
    #   resp.data.security_groups #=> Array<String>
    #
    def update_broker(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateBrokerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateBrokerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateBroker
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateBroker
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateBroker,
        stubs: @stubs,
        params_class: Params::UpdateBrokerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_broker
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateConfigurationInput}.
    #
    # @option params [String] :configuration_id
    #   <p>The unique ID that Amazon MQ generates for the configuration.</p>
    #
    # @option params [String] :data
    #   <p>Required. The base64-encoded XML configuration.</p>
    #
    # @option params [String] :description
    #   <p>The description of the configuration.</p>
    #
    # @return [Types::UpdateConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configuration(
    #     configuration_id: 'ConfigurationId', # required
    #     data: 'Data', # required
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateConfigurationOutput
    #   resp.data.arn #=> String
    #   resp.data.created #=> Time
    #   resp.data.id #=> String
    #   resp.data.latest_revision #=> Types::ConfigurationRevision
    #   resp.data.latest_revision.created #=> Time
    #   resp.data.latest_revision.description #=> String
    #   resp.data.latest_revision.revision #=> Integer
    #   resp.data.name #=> String
    #   resp.data.warnings #=> Array<SanitizationWarning>
    #   resp.data.warnings[0] #=> Types::SanitizationWarning
    #   resp.data.warnings[0].attribute_name #=> String
    #   resp.data.warnings[0].element_name #=> String
    #   resp.data.warnings[0].reason #=> String, one of ["DISALLOWED_ELEMENT_REMOVED", "DISALLOWED_ATTRIBUTE_REMOVED", "INVALID_ATTRIBUTE_VALUE_REMOVED"]
    #
    def update_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the information for an ActiveMQ user.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateUserInput}.
    #
    # @option params [String] :broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #
    # @option params [Boolean] :console_access
    #   <p>Enables access to the the ActiveMQ Web Console for the ActiveMQ user.</p>
    #
    # @option params [Array<String>] :groups
    #   <p>The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>
    #
    # @option params [String] :password
    #   <p>The password of the user. This value must be at least 12 characters long, must contain at least 4 unique characters, and must not contain commas, colons, or equal signs (,:=).</p>
    #
    # @option params [String] :username
    #   <p>The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>
    #
    # @return [Types::UpdateUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user(
    #     broker_id: 'BrokerId', # required
    #     console_access: false,
    #     groups: [
    #       'member'
    #     ],
    #     password: 'Password',
    #     username: 'Username' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateUserOutput
    #
    def update_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::NotFoundException]),
        data_parser: Parsers::UpdateUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateUser,
        stubs: @stubs,
        params_class: Params::UpdateUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_user
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
