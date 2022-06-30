# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::SMS
  # An API client for AWSServerMigrationService_V2016_10_24
  # See {#initialize} for a full list of supported configuration options
  # <important>
  #             <p>
  #                <b>Product update</b>
  #             </p>
  #             <p>We recommend <a href="http://aws.amazon.com/application-migration-service">Amazon Web Services Application Migration Service</a> (Amazon Web Services
  #                 MGN) as the primary migration service for lift-and-shift migrations. If Amazon Web Services MGN is
  #                 unavailable in a specific Amazon Web Services Region, you can use the Server Migration Service APIs through March
  #                 2023.</p>
  #          </important>
  #
  #         <p>Server Migration Service (Server Migration Service) makes it easier and faster for you to migrate your
  #             on-premises workloads to Amazon Web Services. To learn more about Server Migration Service, see the following
  #             resources:</p>
  #         <ul>
  #             <li>
  #                 <p>
  #                   <a href="http://aws.amazon.com/server-migration-service/">Server Migration Service
  #                     product page</a>
  #                </p>
  #             </li>
  #             <li>
  #                 <p>
  #                   <a href="https://docs.aws.amazon.com/server-migration-service/latest/userguide/">Server Migration Service User Guide</a>
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
    def initialize(config = AWS::SDK::SMS::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates an application. An application consists of one or more server groups. Each
    #             server group contain one or more servers.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAppInput}.
    #
    # @option params [String] :name
    #   <p>The name of the new application.</p>
    #
    # @option params [String] :description
    #   <p>The description of the new application</p>
    #
    # @option params [String] :role_name
    #   <p>The name of the service role in the customer's account to be used by Server Migration Service.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of
    #               application creation.</p>
    #
    # @option params [Array<ServerGroup>] :server_groups
    #   <p>The server groups to include in the application.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be associated with the application.</p>
    #
    # @return [Types::CreateAppOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app(
    #     name: 'name',
    #     description: 'description',
    #     role_name: 'roleName',
    #     client_token: 'clientToken',
    #     server_groups: [
    #       {
    #         server_group_id: 'serverGroupId',
    #         name: 'name',
    #         server_list: [
    #           {
    #             server_id: 'serverId',
    #             server_type: 'VIRTUAL_MACHINE', # accepts ["VIRTUAL_MACHINE"]
    #             vm_server: {
    #               vm_server_address: {
    #                 vm_manager_id: 'vmManagerId',
    #                 vm_id: 'vmId'
    #               },
    #               vm_name: 'vmName',
    #               vm_manager_name: 'vmManagerName',
    #               vm_manager_type: 'VSPHERE', # accepts ["VSPHERE", "SCVMM", "HYPERV-MANAGER"]
    #               vm_path: 'vmPath'
    #             },
    #             replication_job_id: 'replicationJobId',
    #             replication_job_terminated: false
    #           }
    #         ]
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: 'key',
    #         value: 'value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAppOutput
    #   resp.data.app_summary #=> Types::AppSummary
    #   resp.data.app_summary.app_id #=> String
    #   resp.data.app_summary.imported_app_id #=> String
    #   resp.data.app_summary.name #=> String
    #   resp.data.app_summary.description #=> String
    #   resp.data.app_summary.status #=> String, one of ["CREATING", "ACTIVE", "UPDATING", "DELETING", "DELETED", "DELETE_FAILED"]
    #   resp.data.app_summary.status_message #=> String
    #   resp.data.app_summary.replication_configuration_status #=> String, one of ["NOT_CONFIGURED", "CONFIGURED"]
    #   resp.data.app_summary.replication_status #=> String, one of ["READY_FOR_CONFIGURATION", "CONFIGURATION_IN_PROGRESS", "CONFIGURATION_INVALID", "READY_FOR_REPLICATION", "VALIDATION_IN_PROGRESS", "REPLICATION_PENDING", "REPLICATION_IN_PROGRESS", "REPLICATED", "PARTIALLY_REPLICATED", "DELTA_REPLICATION_IN_PROGRESS", "DELTA_REPLICATED", "DELTA_REPLICATION_FAILED", "REPLICATION_FAILED", "REPLICATION_STOPPING", "REPLICATION_STOP_FAILED", "REPLICATION_STOPPED"]
    #   resp.data.app_summary.replication_status_message #=> String
    #   resp.data.app_summary.latest_replication_time #=> Time
    #   resp.data.app_summary.launch_configuration_status #=> String, one of ["NOT_CONFIGURED", "CONFIGURED"]
    #   resp.data.app_summary.launch_status #=> String, one of ["READY_FOR_CONFIGURATION", "CONFIGURATION_IN_PROGRESS", "CONFIGURATION_INVALID", "READY_FOR_LAUNCH", "VALIDATION_IN_PROGRESS", "LAUNCH_PENDING", "LAUNCH_IN_PROGRESS", "LAUNCHED", "PARTIALLY_LAUNCHED", "DELTA_LAUNCH_IN_PROGRESS", "DELTA_LAUNCH_FAILED", "LAUNCH_FAILED", "TERMINATE_IN_PROGRESS", "TERMINATE_FAILED", "TERMINATED"]
    #   resp.data.app_summary.launch_status_message #=> String
    #   resp.data.app_summary.launch_details #=> Types::LaunchDetails
    #   resp.data.app_summary.launch_details.latest_launch_time #=> Time
    #   resp.data.app_summary.launch_details.stack_name #=> String
    #   resp.data.app_summary.launch_details.stack_id #=> String
    #   resp.data.app_summary.creation_time #=> Time
    #   resp.data.app_summary.last_modified #=> Time
    #   resp.data.app_summary.role_name #=> String
    #   resp.data.app_summary.total_server_groups #=> Integer
    #   resp.data.app_summary.total_servers #=> Integer
    #   resp.data.server_groups #=> Array<ServerGroup>
    #   resp.data.server_groups[0] #=> Types::ServerGroup
    #   resp.data.server_groups[0].server_group_id #=> String
    #   resp.data.server_groups[0].name #=> String
    #   resp.data.server_groups[0].server_list #=> Array<Server>
    #   resp.data.server_groups[0].server_list[0] #=> Types::Server
    #   resp.data.server_groups[0].server_list[0].server_id #=> String
    #   resp.data.server_groups[0].server_list[0].server_type #=> String, one of ["VIRTUAL_MACHINE"]
    #   resp.data.server_groups[0].server_list[0].vm_server #=> Types::VmServer
    #   resp.data.server_groups[0].server_list[0].vm_server.vm_server_address #=> Types::VmServerAddress
    #   resp.data.server_groups[0].server_list[0].vm_server.vm_server_address.vm_manager_id #=> String
    #   resp.data.server_groups[0].server_list[0].vm_server.vm_server_address.vm_id #=> String
    #   resp.data.server_groups[0].server_list[0].vm_server.vm_name #=> String
    #   resp.data.server_groups[0].server_list[0].vm_server.vm_manager_name #=> String
    #   resp.data.server_groups[0].server_list[0].vm_server.vm_manager_type #=> String, one of ["VSPHERE", "SCVMM", "HYPERV-MANAGER"]
    #   resp.data.server_groups[0].server_list[0].vm_server.vm_path #=> String
    #   resp.data.server_groups[0].server_list[0].replication_job_id #=> String
    #   resp.data.server_groups[0].server_list[0].replication_job_terminated #=> Boolean
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def create_app(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAppInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAppInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateApp
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterException, Errors::UnauthorizedOperationException, Errors::InternalError, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::CreateApp
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateApp,
        stubs: @stubs,
        params_class: Params::CreateAppOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_app
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a replication job. The replication job schedules periodic replication runs
    #             to replicate your server to Amazon Web Services. Each replication run creates an Amazon Machine Image
    #             (AMI).</p>
    #
    # @param [Hash] params
    #   See {Types::CreateReplicationJobInput}.
    #
    # @option params [String] :server_id
    #   <p>The ID of the server.</p>
    #
    # @option params [Time] :seed_replication_time
    #   <p>The seed replication time.</p>
    #
    # @option params [Integer] :frequency
    #   <p>The time between consecutive replication runs, in hours.</p>
    #
    # @option params [Boolean] :run_once
    #   <p>Indicates whether to run the replication job one time.</p>
    #
    # @option params [String] :license_type
    #   <p>The license type to be used for the AMI created by a successful replication
    #               run.</p>
    #
    # @option params [String] :role_name
    #   <p>The name of the IAM role to be used by the Server Migration Service.</p>
    #
    # @option params [String] :description
    #   <p>The description of the replication job.</p>
    #
    # @option params [Integer] :number_of_recent_amis_to_keep
    #   <p>The maximum number of SMS-created AMIs to retain. The oldest is deleted after the
    #               maximum number is reached and a new AMI is created.</p>
    #
    # @option params [Boolean] :encrypted
    #   <p>Indicates whether the replication job produces encrypted AMIs.</p>
    #
    # @option params [String] :kms_key_id
    #   <p>The ID of the KMS key for replication jobs that produce encrypted AMIs.
    #               This value can be any of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>KMS key ID</p>
    #               </li>
    #               <li>
    #                   <p>KMS key alias</p>
    #               </li>
    #               <li>
    #                   <p>ARN referring to the KMS key ID</p>
    #               </li>
    #               <li>
    #                   <p>ARN referring to the KMS key alias</p>
    #               </li>
    #            </ul>
    #           <p> If encrypted is <i>true</i> but a KMS key ID is not specified, the
    #               customer's default KMS key for Amazon EBS is used. </p>
    #
    # @return [Types::CreateReplicationJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_replication_job(
    #     server_id: 'serverId', # required
    #     seed_replication_time: Time.now, # required
    #     frequency: 1,
    #     run_once: false,
    #     license_type: 'AWS', # accepts ["AWS", "BYOL"]
    #     role_name: 'roleName',
    #     description: 'description',
    #     number_of_recent_amis_to_keep: 1,
    #     encrypted: false,
    #     kms_key_id: 'kmsKeyId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateReplicationJobOutput
    #   resp.data.replication_job_id #=> String
    #
    def create_replication_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateReplicationJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateReplicationJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateReplicationJob
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ReplicationJobAlreadyExistsException, Errors::OperationNotPermittedException, Errors::InvalidParameterException, Errors::NoConnectorsAvailableException, Errors::UnauthorizedOperationException, Errors::TemporarilyUnavailableException, Errors::InternalError, Errors::ServerCannotBeReplicatedException, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::CreateReplicationJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateReplicationJob,
        stubs: @stubs,
        params_class: Params::CreateReplicationJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_replication_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified application. Optionally deletes the launched stack associated with
    #             the application and all Server Migration Service replication jobs for servers in the application.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAppInput}.
    #
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    #
    # @option params [Boolean] :force_stop_app_replication
    #   <p>Indicates whether to stop all replication jobs corresponding to the servers
    #               in the application while deleting the application.</p>
    #
    # @option params [Boolean] :force_terminate_app
    #   <p>Indicates whether to terminate the stack corresponding to the
    #               application while deleting the application.</p>
    #
    # @return [Types::DeleteAppOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app(
    #     app_id: 'appId',
    #     force_stop_app_replication: false,
    #     force_terminate_app: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAppOutput
    #
    def delete_app(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAppInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAppInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteApp
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterException, Errors::UnauthorizedOperationException, Errors::InternalError, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::DeleteApp
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteApp,
        stubs: @stubs,
        params_class: Params::DeleteAppOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_app
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the launch configuration for the specified application.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAppLaunchConfigurationInput}.
    #
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    #
    # @return [Types::DeleteAppLaunchConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_launch_configuration(
    #     app_id: 'appId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAppLaunchConfigurationOutput
    #
    def delete_app_launch_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAppLaunchConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAppLaunchConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAppLaunchConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterException, Errors::UnauthorizedOperationException, Errors::InternalError, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::DeleteAppLaunchConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAppLaunchConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteAppLaunchConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_app_launch_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the replication configuration for the specified application.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAppReplicationConfigurationInput}.
    #
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    #
    # @return [Types::DeleteAppReplicationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_replication_configuration(
    #     app_id: 'appId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAppReplicationConfigurationOutput
    #
    def delete_app_replication_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAppReplicationConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAppReplicationConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAppReplicationConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterException, Errors::UnauthorizedOperationException, Errors::InternalError, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::DeleteAppReplicationConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAppReplicationConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteAppReplicationConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_app_replication_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the validation configuration for the specified application.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAppValidationConfigurationInput}.
    #
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    #
    # @return [Types::DeleteAppValidationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_validation_configuration(
    #     app_id: 'appId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAppValidationConfigurationOutput
    #
    def delete_app_validation_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAppValidationConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAppValidationConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAppValidationConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterException, Errors::UnauthorizedOperationException, Errors::InternalError, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::DeleteAppValidationConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAppValidationConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteAppValidationConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_app_validation_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified replication job.</p>
    #         <p>After you delete a replication job, there are no further replication runs. Amazon Web Services
    #             deletes the contents of the Amazon S3 bucket used to store Server Migration Service artifacts. The AMIs created
    #             by the replication runs are not deleted.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteReplicationJobInput}.
    #
    # @option params [String] :replication_job_id
    #   <p>The ID of the replication job.</p>
    #
    # @return [Types::DeleteReplicationJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_replication_job(
    #     replication_job_id: 'replicationJobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteReplicationJobOutput
    #
    def delete_replication_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteReplicationJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteReplicationJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteReplicationJob
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterException, Errors::UnauthorizedOperationException, Errors::ReplicationJobNotFoundException, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::DeleteReplicationJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteReplicationJob,
        stubs: @stubs,
        params_class: Params::DeleteReplicationJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_replication_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes all servers from your server catalog.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteServerCatalogInput}.
    #
    # @return [Types::DeleteServerCatalogOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_server_catalog()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteServerCatalogOutput
    #
    def delete_server_catalog(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteServerCatalogInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteServerCatalogInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteServerCatalog
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterException, Errors::UnauthorizedOperationException, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::DeleteServerCatalog
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteServerCatalog,
        stubs: @stubs,
        params_class: Params::DeleteServerCatalogOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_server_catalog
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates the specified connector from Server Migration Service.</p>
    #         <p>After you disassociate a connector, it is no longer available to support
    #             replication jobs.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateConnectorInput}.
    #
    # @option params [String] :connector_id
    #   <p>The ID of the connector.</p>
    #
    # @return [Types::DisassociateConnectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_connector(
    #     connector_id: 'connectorId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateConnectorOutput
    #
    def disassociate_connector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateConnectorInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateConnectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateConnector
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterException, Errors::UnauthorizedOperationException, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::DisassociateConnector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateConnector,
        stubs: @stubs,
        params_class: Params::DisassociateConnectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_connector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Generates a target change set for a currently launched stack and writes it to an Amazon S3
    #             object in the customer’s Amazon S3 bucket.</p>
    #
    # @param [Hash] params
    #   See {Types::GenerateChangeSetInput}.
    #
    # @option params [String] :app_id
    #   <p>The ID of the application associated with the change set.</p>
    #
    # @option params [String] :changeset_format
    #   <p>The format for the change set.</p>
    #
    # @return [Types::GenerateChangeSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_change_set(
    #     app_id: 'appId',
    #     changeset_format: 'JSON' # accepts ["JSON", "YAML"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GenerateChangeSetOutput
    #   resp.data.s3_location #=> Types::S3Location
    #   resp.data.s3_location.bucket #=> String
    #   resp.data.s3_location.key #=> String
    #
    def generate_change_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GenerateChangeSetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GenerateChangeSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GenerateChangeSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterException, Errors::UnauthorizedOperationException, Errors::InternalError, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::GenerateChangeSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GenerateChangeSet,
        stubs: @stubs,
        params_class: Params::GenerateChangeSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :generate_change_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Generates an CloudFormation template based on the current launch configuration and writes it to
    #             an Amazon S3 object in the customer’s Amazon S3 bucket.</p>
    #
    # @param [Hash] params
    #   See {Types::GenerateTemplateInput}.
    #
    # @option params [String] :app_id
    #   <p>The ID of the application associated with the CloudFormation template.</p>
    #
    # @option params [String] :template_format
    #   <p>The format for generating the CloudFormation template.</p>
    #
    # @return [Types::GenerateTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_template(
    #     app_id: 'appId',
    #     template_format: 'JSON' # accepts ["JSON", "YAML"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GenerateTemplateOutput
    #   resp.data.s3_location #=> Types::S3Location
    #   resp.data.s3_location.bucket #=> String
    #   resp.data.s3_location.key #=> String
    #
    def generate_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GenerateTemplateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GenerateTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GenerateTemplate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterException, Errors::UnauthorizedOperationException, Errors::InternalError, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::GenerateTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GenerateTemplate,
        stubs: @stubs,
        params_class: Params::GenerateTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :generate_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieve information about the specified application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAppInput}.
    #
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    #
    # @return [Types::GetAppOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_app(
    #     app_id: 'appId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAppOutput
    #   resp.data.app_summary #=> Types::AppSummary
    #   resp.data.app_summary.app_id #=> String
    #   resp.data.app_summary.imported_app_id #=> String
    #   resp.data.app_summary.name #=> String
    #   resp.data.app_summary.description #=> String
    #   resp.data.app_summary.status #=> String, one of ["CREATING", "ACTIVE", "UPDATING", "DELETING", "DELETED", "DELETE_FAILED"]
    #   resp.data.app_summary.status_message #=> String
    #   resp.data.app_summary.replication_configuration_status #=> String, one of ["NOT_CONFIGURED", "CONFIGURED"]
    #   resp.data.app_summary.replication_status #=> String, one of ["READY_FOR_CONFIGURATION", "CONFIGURATION_IN_PROGRESS", "CONFIGURATION_INVALID", "READY_FOR_REPLICATION", "VALIDATION_IN_PROGRESS", "REPLICATION_PENDING", "REPLICATION_IN_PROGRESS", "REPLICATED", "PARTIALLY_REPLICATED", "DELTA_REPLICATION_IN_PROGRESS", "DELTA_REPLICATED", "DELTA_REPLICATION_FAILED", "REPLICATION_FAILED", "REPLICATION_STOPPING", "REPLICATION_STOP_FAILED", "REPLICATION_STOPPED"]
    #   resp.data.app_summary.replication_status_message #=> String
    #   resp.data.app_summary.latest_replication_time #=> Time
    #   resp.data.app_summary.launch_configuration_status #=> String, one of ["NOT_CONFIGURED", "CONFIGURED"]
    #   resp.data.app_summary.launch_status #=> String, one of ["READY_FOR_CONFIGURATION", "CONFIGURATION_IN_PROGRESS", "CONFIGURATION_INVALID", "READY_FOR_LAUNCH", "VALIDATION_IN_PROGRESS", "LAUNCH_PENDING", "LAUNCH_IN_PROGRESS", "LAUNCHED", "PARTIALLY_LAUNCHED", "DELTA_LAUNCH_IN_PROGRESS", "DELTA_LAUNCH_FAILED", "LAUNCH_FAILED", "TERMINATE_IN_PROGRESS", "TERMINATE_FAILED", "TERMINATED"]
    #   resp.data.app_summary.launch_status_message #=> String
    #   resp.data.app_summary.launch_details #=> Types::LaunchDetails
    #   resp.data.app_summary.launch_details.latest_launch_time #=> Time
    #   resp.data.app_summary.launch_details.stack_name #=> String
    #   resp.data.app_summary.launch_details.stack_id #=> String
    #   resp.data.app_summary.creation_time #=> Time
    #   resp.data.app_summary.last_modified #=> Time
    #   resp.data.app_summary.role_name #=> String
    #   resp.data.app_summary.total_server_groups #=> Integer
    #   resp.data.app_summary.total_servers #=> Integer
    #   resp.data.server_groups #=> Array<ServerGroup>
    #   resp.data.server_groups[0] #=> Types::ServerGroup
    #   resp.data.server_groups[0].server_group_id #=> String
    #   resp.data.server_groups[0].name #=> String
    #   resp.data.server_groups[0].server_list #=> Array<Server>
    #   resp.data.server_groups[0].server_list[0] #=> Types::Server
    #   resp.data.server_groups[0].server_list[0].server_id #=> String
    #   resp.data.server_groups[0].server_list[0].server_type #=> String, one of ["VIRTUAL_MACHINE"]
    #   resp.data.server_groups[0].server_list[0].vm_server #=> Types::VmServer
    #   resp.data.server_groups[0].server_list[0].vm_server.vm_server_address #=> Types::VmServerAddress
    #   resp.data.server_groups[0].server_list[0].vm_server.vm_server_address.vm_manager_id #=> String
    #   resp.data.server_groups[0].server_list[0].vm_server.vm_server_address.vm_id #=> String
    #   resp.data.server_groups[0].server_list[0].vm_server.vm_name #=> String
    #   resp.data.server_groups[0].server_list[0].vm_server.vm_manager_name #=> String
    #   resp.data.server_groups[0].server_list[0].vm_server.vm_manager_type #=> String, one of ["VSPHERE", "SCVMM", "HYPERV-MANAGER"]
    #   resp.data.server_groups[0].server_list[0].vm_server.vm_path #=> String
    #   resp.data.server_groups[0].server_list[0].replication_job_id #=> String
    #   resp.data.server_groups[0].server_list[0].replication_job_terminated #=> Boolean
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def get_app(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAppInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAppInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetApp
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterException, Errors::UnauthorizedOperationException, Errors::InternalError, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::GetApp
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetApp,
        stubs: @stubs,
        params_class: Params::GetAppOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_app
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the application launch configuration associated with the specified application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAppLaunchConfigurationInput}.
    #
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    #
    # @return [Types::GetAppLaunchConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_app_launch_configuration(
    #     app_id: 'appId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAppLaunchConfigurationOutput
    #   resp.data.app_id #=> String
    #   resp.data.role_name #=> String
    #   resp.data.auto_launch #=> Boolean
    #   resp.data.server_group_launch_configurations #=> Array<ServerGroupLaunchConfiguration>
    #   resp.data.server_group_launch_configurations[0] #=> Types::ServerGroupLaunchConfiguration
    #   resp.data.server_group_launch_configurations[0].server_group_id #=> String
    #   resp.data.server_group_launch_configurations[0].launch_order #=> Integer
    #   resp.data.server_group_launch_configurations[0].server_launch_configurations #=> Array<ServerLaunchConfiguration>
    #   resp.data.server_group_launch_configurations[0].server_launch_configurations[0] #=> Types::ServerLaunchConfiguration
    #   resp.data.server_group_launch_configurations[0].server_launch_configurations[0].server #=> Types::Server
    #   resp.data.server_group_launch_configurations[0].server_launch_configurations[0].server.server_id #=> String
    #   resp.data.server_group_launch_configurations[0].server_launch_configurations[0].server.server_type #=> String, one of ["VIRTUAL_MACHINE"]
    #   resp.data.server_group_launch_configurations[0].server_launch_configurations[0].server.vm_server #=> Types::VmServer
    #   resp.data.server_group_launch_configurations[0].server_launch_configurations[0].server.vm_server.vm_server_address #=> Types::VmServerAddress
    #   resp.data.server_group_launch_configurations[0].server_launch_configurations[0].server.vm_server.vm_server_address.vm_manager_id #=> String
    #   resp.data.server_group_launch_configurations[0].server_launch_configurations[0].server.vm_server.vm_server_address.vm_id #=> String
    #   resp.data.server_group_launch_configurations[0].server_launch_configurations[0].server.vm_server.vm_name #=> String
    #   resp.data.server_group_launch_configurations[0].server_launch_configurations[0].server.vm_server.vm_manager_name #=> String
    #   resp.data.server_group_launch_configurations[0].server_launch_configurations[0].server.vm_server.vm_manager_type #=> String, one of ["VSPHERE", "SCVMM", "HYPERV-MANAGER"]
    #   resp.data.server_group_launch_configurations[0].server_launch_configurations[0].server.vm_server.vm_path #=> String
    #   resp.data.server_group_launch_configurations[0].server_launch_configurations[0].server.replication_job_id #=> String
    #   resp.data.server_group_launch_configurations[0].server_launch_configurations[0].server.replication_job_terminated #=> Boolean
    #   resp.data.server_group_launch_configurations[0].server_launch_configurations[0].logical_id #=> String
    #   resp.data.server_group_launch_configurations[0].server_launch_configurations[0].vpc #=> String
    #   resp.data.server_group_launch_configurations[0].server_launch_configurations[0].subnet #=> String
    #   resp.data.server_group_launch_configurations[0].server_launch_configurations[0].security_group #=> String
    #   resp.data.server_group_launch_configurations[0].server_launch_configurations[0].ec2_key_name #=> String
    #   resp.data.server_group_launch_configurations[0].server_launch_configurations[0].user_data #=> Types::UserData
    #   resp.data.server_group_launch_configurations[0].server_launch_configurations[0].user_data.s3_location #=> Types::S3Location
    #   resp.data.server_group_launch_configurations[0].server_launch_configurations[0].user_data.s3_location.bucket #=> String
    #   resp.data.server_group_launch_configurations[0].server_launch_configurations[0].user_data.s3_location.key #=> String
    #   resp.data.server_group_launch_configurations[0].server_launch_configurations[0].instance_type #=> String
    #   resp.data.server_group_launch_configurations[0].server_launch_configurations[0].associate_public_ip_address #=> Boolean
    #   resp.data.server_group_launch_configurations[0].server_launch_configurations[0].iam_instance_profile_name #=> String
    #   resp.data.server_group_launch_configurations[0].server_launch_configurations[0].configure_script #=> Types::S3Location
    #   resp.data.server_group_launch_configurations[0].server_launch_configurations[0].configure_script_type #=> String, one of ["SHELL_SCRIPT", "POWERSHELL_SCRIPT"]
    #
    def get_app_launch_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAppLaunchConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAppLaunchConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAppLaunchConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterException, Errors::UnauthorizedOperationException, Errors::InternalError, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::GetAppLaunchConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAppLaunchConfiguration,
        stubs: @stubs,
        params_class: Params::GetAppLaunchConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_app_launch_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the application replication configuration associated with the specified
    #             application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAppReplicationConfigurationInput}.
    #
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    #
    # @return [Types::GetAppReplicationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_app_replication_configuration(
    #     app_id: 'appId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAppReplicationConfigurationOutput
    #   resp.data.server_group_replication_configurations #=> Array<ServerGroupReplicationConfiguration>
    #   resp.data.server_group_replication_configurations[0] #=> Types::ServerGroupReplicationConfiguration
    #   resp.data.server_group_replication_configurations[0].server_group_id #=> String
    #   resp.data.server_group_replication_configurations[0].server_replication_configurations #=> Array<ServerReplicationConfiguration>
    #   resp.data.server_group_replication_configurations[0].server_replication_configurations[0] #=> Types::ServerReplicationConfiguration
    #   resp.data.server_group_replication_configurations[0].server_replication_configurations[0].server #=> Types::Server
    #   resp.data.server_group_replication_configurations[0].server_replication_configurations[0].server.server_id #=> String
    #   resp.data.server_group_replication_configurations[0].server_replication_configurations[0].server.server_type #=> String, one of ["VIRTUAL_MACHINE"]
    #   resp.data.server_group_replication_configurations[0].server_replication_configurations[0].server.vm_server #=> Types::VmServer
    #   resp.data.server_group_replication_configurations[0].server_replication_configurations[0].server.vm_server.vm_server_address #=> Types::VmServerAddress
    #   resp.data.server_group_replication_configurations[0].server_replication_configurations[0].server.vm_server.vm_server_address.vm_manager_id #=> String
    #   resp.data.server_group_replication_configurations[0].server_replication_configurations[0].server.vm_server.vm_server_address.vm_id #=> String
    #   resp.data.server_group_replication_configurations[0].server_replication_configurations[0].server.vm_server.vm_name #=> String
    #   resp.data.server_group_replication_configurations[0].server_replication_configurations[0].server.vm_server.vm_manager_name #=> String
    #   resp.data.server_group_replication_configurations[0].server_replication_configurations[0].server.vm_server.vm_manager_type #=> String, one of ["VSPHERE", "SCVMM", "HYPERV-MANAGER"]
    #   resp.data.server_group_replication_configurations[0].server_replication_configurations[0].server.vm_server.vm_path #=> String
    #   resp.data.server_group_replication_configurations[0].server_replication_configurations[0].server.replication_job_id #=> String
    #   resp.data.server_group_replication_configurations[0].server_replication_configurations[0].server.replication_job_terminated #=> Boolean
    #   resp.data.server_group_replication_configurations[0].server_replication_configurations[0].server_replication_parameters #=> Types::ServerReplicationParameters
    #   resp.data.server_group_replication_configurations[0].server_replication_configurations[0].server_replication_parameters.seed_time #=> Time
    #   resp.data.server_group_replication_configurations[0].server_replication_configurations[0].server_replication_parameters.frequency #=> Integer
    #   resp.data.server_group_replication_configurations[0].server_replication_configurations[0].server_replication_parameters.run_once #=> Boolean
    #   resp.data.server_group_replication_configurations[0].server_replication_configurations[0].server_replication_parameters.license_type #=> String, one of ["AWS", "BYOL"]
    #   resp.data.server_group_replication_configurations[0].server_replication_configurations[0].server_replication_parameters.number_of_recent_amis_to_keep #=> Integer
    #   resp.data.server_group_replication_configurations[0].server_replication_configurations[0].server_replication_parameters.encrypted #=> Boolean
    #   resp.data.server_group_replication_configurations[0].server_replication_configurations[0].server_replication_parameters.kms_key_id #=> String
    #
    def get_app_replication_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAppReplicationConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAppReplicationConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAppReplicationConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterException, Errors::UnauthorizedOperationException, Errors::InternalError, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::GetAppReplicationConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAppReplicationConfiguration,
        stubs: @stubs,
        params_class: Params::GetAppReplicationConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_app_replication_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about a configuration for validating an application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAppValidationConfigurationInput}.
    #
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    #
    # @return [Types::GetAppValidationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_app_validation_configuration(
    #     app_id: 'appId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAppValidationConfigurationOutput
    #   resp.data.app_validation_configurations #=> Array<AppValidationConfiguration>
    #   resp.data.app_validation_configurations[0] #=> Types::AppValidationConfiguration
    #   resp.data.app_validation_configurations[0].validation_id #=> String
    #   resp.data.app_validation_configurations[0].name #=> String
    #   resp.data.app_validation_configurations[0].app_validation_strategy #=> String, one of ["SSM"]
    #   resp.data.app_validation_configurations[0].ssm_validation_parameters #=> Types::SSMValidationParameters
    #   resp.data.app_validation_configurations[0].ssm_validation_parameters.source #=> Types::Source
    #   resp.data.app_validation_configurations[0].ssm_validation_parameters.source.s3_location #=> Types::S3Location
    #   resp.data.app_validation_configurations[0].ssm_validation_parameters.source.s3_location.bucket #=> String
    #   resp.data.app_validation_configurations[0].ssm_validation_parameters.source.s3_location.key #=> String
    #   resp.data.app_validation_configurations[0].ssm_validation_parameters.instance_id #=> String
    #   resp.data.app_validation_configurations[0].ssm_validation_parameters.script_type #=> String, one of ["SHELL_SCRIPT", "POWERSHELL_SCRIPT"]
    #   resp.data.app_validation_configurations[0].ssm_validation_parameters.command #=> String
    #   resp.data.app_validation_configurations[0].ssm_validation_parameters.execution_timeout_seconds #=> Integer
    #   resp.data.app_validation_configurations[0].ssm_validation_parameters.output_s3_bucket_name #=> String
    #   resp.data.server_group_validation_configurations #=> Array<ServerGroupValidationConfiguration>
    #   resp.data.server_group_validation_configurations[0] #=> Types::ServerGroupValidationConfiguration
    #   resp.data.server_group_validation_configurations[0].server_group_id #=> String
    #   resp.data.server_group_validation_configurations[0].server_validation_configurations #=> Array<ServerValidationConfiguration>
    #   resp.data.server_group_validation_configurations[0].server_validation_configurations[0] #=> Types::ServerValidationConfiguration
    #   resp.data.server_group_validation_configurations[0].server_validation_configurations[0].server #=> Types::Server
    #   resp.data.server_group_validation_configurations[0].server_validation_configurations[0].server.server_id #=> String
    #   resp.data.server_group_validation_configurations[0].server_validation_configurations[0].server.server_type #=> String, one of ["VIRTUAL_MACHINE"]
    #   resp.data.server_group_validation_configurations[0].server_validation_configurations[0].server.vm_server #=> Types::VmServer
    #   resp.data.server_group_validation_configurations[0].server_validation_configurations[0].server.vm_server.vm_server_address #=> Types::VmServerAddress
    #   resp.data.server_group_validation_configurations[0].server_validation_configurations[0].server.vm_server.vm_server_address.vm_manager_id #=> String
    #   resp.data.server_group_validation_configurations[0].server_validation_configurations[0].server.vm_server.vm_server_address.vm_id #=> String
    #   resp.data.server_group_validation_configurations[0].server_validation_configurations[0].server.vm_server.vm_name #=> String
    #   resp.data.server_group_validation_configurations[0].server_validation_configurations[0].server.vm_server.vm_manager_name #=> String
    #   resp.data.server_group_validation_configurations[0].server_validation_configurations[0].server.vm_server.vm_manager_type #=> String, one of ["VSPHERE", "SCVMM", "HYPERV-MANAGER"]
    #   resp.data.server_group_validation_configurations[0].server_validation_configurations[0].server.vm_server.vm_path #=> String
    #   resp.data.server_group_validation_configurations[0].server_validation_configurations[0].server.replication_job_id #=> String
    #   resp.data.server_group_validation_configurations[0].server_validation_configurations[0].server.replication_job_terminated #=> Boolean
    #   resp.data.server_group_validation_configurations[0].server_validation_configurations[0].validation_id #=> String
    #   resp.data.server_group_validation_configurations[0].server_validation_configurations[0].name #=> String
    #   resp.data.server_group_validation_configurations[0].server_validation_configurations[0].server_validation_strategy #=> String, one of ["USERDATA"]
    #   resp.data.server_group_validation_configurations[0].server_validation_configurations[0].user_data_validation_parameters #=> Types::UserDataValidationParameters
    #   resp.data.server_group_validation_configurations[0].server_validation_configurations[0].user_data_validation_parameters.source #=> Types::Source
    #   resp.data.server_group_validation_configurations[0].server_validation_configurations[0].user_data_validation_parameters.script_type #=> String, one of ["SHELL_SCRIPT", "POWERSHELL_SCRIPT"]
    #
    def get_app_validation_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAppValidationConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAppValidationConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAppValidationConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterException, Errors::UnauthorizedOperationException, Errors::InternalError, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::GetAppValidationConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAppValidationConfiguration,
        stubs: @stubs,
        params_class: Params::GetAppValidationConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_app_validation_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves output from validating an application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAppValidationOutputInput}.
    #
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    #
    # @return [Types::GetAppValidationOutputOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_app_validation_output(
    #     app_id: 'appId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAppValidationOutputOutput
    #   resp.data.validation_output_list #=> Array<ValidationOutput>
    #   resp.data.validation_output_list[0] #=> Types::ValidationOutput
    #   resp.data.validation_output_list[0].validation_id #=> String
    #   resp.data.validation_output_list[0].name #=> String
    #   resp.data.validation_output_list[0].status #=> String, one of ["READY_FOR_VALIDATION", "PENDING", "IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #   resp.data.validation_output_list[0].status_message #=> String
    #   resp.data.validation_output_list[0].latest_validation_time #=> Time
    #   resp.data.validation_output_list[0].app_validation_output #=> Types::AppValidationOutput
    #   resp.data.validation_output_list[0].app_validation_output.ssm_output #=> Types::SSMOutput
    #   resp.data.validation_output_list[0].app_validation_output.ssm_output.s3_location #=> Types::S3Location
    #   resp.data.validation_output_list[0].app_validation_output.ssm_output.s3_location.bucket #=> String
    #   resp.data.validation_output_list[0].app_validation_output.ssm_output.s3_location.key #=> String
    #   resp.data.validation_output_list[0].server_validation_output #=> Types::ServerValidationOutput
    #   resp.data.validation_output_list[0].server_validation_output.server #=> Types::Server
    #   resp.data.validation_output_list[0].server_validation_output.server.server_id #=> String
    #   resp.data.validation_output_list[0].server_validation_output.server.server_type #=> String, one of ["VIRTUAL_MACHINE"]
    #   resp.data.validation_output_list[0].server_validation_output.server.vm_server #=> Types::VmServer
    #   resp.data.validation_output_list[0].server_validation_output.server.vm_server.vm_server_address #=> Types::VmServerAddress
    #   resp.data.validation_output_list[0].server_validation_output.server.vm_server.vm_server_address.vm_manager_id #=> String
    #   resp.data.validation_output_list[0].server_validation_output.server.vm_server.vm_server_address.vm_id #=> String
    #   resp.data.validation_output_list[0].server_validation_output.server.vm_server.vm_name #=> String
    #   resp.data.validation_output_list[0].server_validation_output.server.vm_server.vm_manager_name #=> String
    #   resp.data.validation_output_list[0].server_validation_output.server.vm_server.vm_manager_type #=> String, one of ["VSPHERE", "SCVMM", "HYPERV-MANAGER"]
    #   resp.data.validation_output_list[0].server_validation_output.server.vm_server.vm_path #=> String
    #   resp.data.validation_output_list[0].server_validation_output.server.replication_job_id #=> String
    #   resp.data.validation_output_list[0].server_validation_output.server.replication_job_terminated #=> Boolean
    #
    def get_app_validation_output(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAppValidationOutputInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAppValidationOutputInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAppValidationOutput
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterException, Errors::UnauthorizedOperationException, Errors::InternalError, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::GetAppValidationOutput
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAppValidationOutput,
        stubs: @stubs,
        params_class: Params::GetAppValidationOutputOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_app_validation_output
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the connectors registered with the Server Migration Service.</p>
    #
    # @param [Hash] params
    #   See {Types::GetConnectorsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. The default value is 50.
    #               To retrieve the remaining results, make another call with the returned
    #                   <code>NextToken</code> value.</p>
    #
    # @return [Types::GetConnectorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connectors(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetConnectorsOutput
    #   resp.data.connector_list #=> Array<Connector>
    #   resp.data.connector_list[0] #=> Types::Connector
    #   resp.data.connector_list[0].connector_id #=> String
    #   resp.data.connector_list[0].version #=> String
    #   resp.data.connector_list[0].status #=> String, one of ["HEALTHY", "UNHEALTHY"]
    #   resp.data.connector_list[0].capability_list #=> Array<String>
    #   resp.data.connector_list[0].capability_list[0] #=> String, one of ["VSPHERE", "SCVMM", "HYPERV-MANAGER", "SNAPSHOT_BATCHING", "SMS_OPTIMIZED"]
    #   resp.data.connector_list[0].vm_manager_name #=> String
    #   resp.data.connector_list[0].vm_manager_type #=> String, one of ["VSPHERE", "SCVMM", "HYPERV-MANAGER"]
    #   resp.data.connector_list[0].vm_manager_id #=> String
    #   resp.data.connector_list[0].ip_address #=> String
    #   resp.data.connector_list[0].mac_address #=> String
    #   resp.data.connector_list[0].associated_on #=> Time
    #   resp.data.next_token #=> String
    #
    def get_connectors(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetConnectorsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetConnectorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetConnectors
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedOperationException]),
        data_parser: Parsers::GetConnectors
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetConnectors,
        stubs: @stubs,
        params_class: Params::GetConnectorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_connectors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified replication job or all of your replication jobs.</p>
    #
    # @param [Hash] params
    #   See {Types::GetReplicationJobsInput}.
    #
    # @option params [String] :replication_job_id
    #   <p>The ID of the replication job.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. The default value is 50.
    #               To retrieve the remaining results, make another call with the returned
    #                   <code>NextToken</code> value.</p>
    #
    # @return [Types::GetReplicationJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_replication_jobs(
    #     replication_job_id: 'replicationJobId',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetReplicationJobsOutput
    #   resp.data.replication_job_list #=> Array<ReplicationJob>
    #   resp.data.replication_job_list[0] #=> Types::ReplicationJob
    #   resp.data.replication_job_list[0].replication_job_id #=> String
    #   resp.data.replication_job_list[0].server_id #=> String
    #   resp.data.replication_job_list[0].server_type #=> String, one of ["VIRTUAL_MACHINE"]
    #   resp.data.replication_job_list[0].vm_server #=> Types::VmServer
    #   resp.data.replication_job_list[0].vm_server.vm_server_address #=> Types::VmServerAddress
    #   resp.data.replication_job_list[0].vm_server.vm_server_address.vm_manager_id #=> String
    #   resp.data.replication_job_list[0].vm_server.vm_server_address.vm_id #=> String
    #   resp.data.replication_job_list[0].vm_server.vm_name #=> String
    #   resp.data.replication_job_list[0].vm_server.vm_manager_name #=> String
    #   resp.data.replication_job_list[0].vm_server.vm_manager_type #=> String, one of ["VSPHERE", "SCVMM", "HYPERV-MANAGER"]
    #   resp.data.replication_job_list[0].vm_server.vm_path #=> String
    #   resp.data.replication_job_list[0].seed_replication_time #=> Time
    #   resp.data.replication_job_list[0].frequency #=> Integer
    #   resp.data.replication_job_list[0].run_once #=> Boolean
    #   resp.data.replication_job_list[0].next_replication_run_start_time #=> Time
    #   resp.data.replication_job_list[0].license_type #=> String, one of ["AWS", "BYOL"]
    #   resp.data.replication_job_list[0].role_name #=> String
    #   resp.data.replication_job_list[0].latest_ami_id #=> String
    #   resp.data.replication_job_list[0].state #=> String, one of ["PENDING", "ACTIVE", "FAILED", "DELETING", "DELETED", "COMPLETED", "PAUSED_ON_FAILURE", "FAILING"]
    #   resp.data.replication_job_list[0].status_message #=> String
    #   resp.data.replication_job_list[0].description #=> String
    #   resp.data.replication_job_list[0].number_of_recent_amis_to_keep #=> Integer
    #   resp.data.replication_job_list[0].encrypted #=> Boolean
    #   resp.data.replication_job_list[0].kms_key_id #=> String
    #   resp.data.replication_job_list[0].replication_run_list #=> Array<ReplicationRun>
    #   resp.data.replication_job_list[0].replication_run_list[0] #=> Types::ReplicationRun
    #   resp.data.replication_job_list[0].replication_run_list[0].replication_run_id #=> String
    #   resp.data.replication_job_list[0].replication_run_list[0].state #=> String, one of ["PENDING", "MISSED", "ACTIVE", "FAILED", "COMPLETED", "DELETING", "DELETED"]
    #   resp.data.replication_job_list[0].replication_run_list[0].type #=> String, one of ["ON_DEMAND", "AUTOMATIC"]
    #   resp.data.replication_job_list[0].replication_run_list[0].stage_details #=> Types::ReplicationRunStageDetails
    #   resp.data.replication_job_list[0].replication_run_list[0].stage_details.stage #=> String
    #   resp.data.replication_job_list[0].replication_run_list[0].stage_details.stage_progress #=> String
    #   resp.data.replication_job_list[0].replication_run_list[0].status_message #=> String
    #   resp.data.replication_job_list[0].replication_run_list[0].ami_id #=> String
    #   resp.data.replication_job_list[0].replication_run_list[0].scheduled_start_time #=> Time
    #   resp.data.replication_job_list[0].replication_run_list[0].completed_time #=> Time
    #   resp.data.replication_job_list[0].replication_run_list[0].description #=> String
    #   resp.data.replication_job_list[0].replication_run_list[0].encrypted #=> Boolean
    #   resp.data.replication_job_list[0].replication_run_list[0].kms_key_id #=> String
    #   resp.data.next_token #=> String
    #
    def get_replication_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetReplicationJobsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetReplicationJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetReplicationJobs
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::UnauthorizedOperationException, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::GetReplicationJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetReplicationJobs,
        stubs: @stubs,
        params_class: Params::GetReplicationJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_replication_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the replication runs for the specified replication job.</p>
    #
    # @param [Hash] params
    #   See {Types::GetReplicationRunsInput}.
    #
    # @option params [String] :replication_job_id
    #   <p>The ID of the replication job.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. The default value is 50.
    #               To retrieve the remaining results, make another call with the returned
    #                   <code>NextToken</code> value.</p>
    #
    # @return [Types::GetReplicationRunsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_replication_runs(
    #     replication_job_id: 'replicationJobId', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetReplicationRunsOutput
    #   resp.data.replication_job #=> Types::ReplicationJob
    #   resp.data.replication_job.replication_job_id #=> String
    #   resp.data.replication_job.server_id #=> String
    #   resp.data.replication_job.server_type #=> String, one of ["VIRTUAL_MACHINE"]
    #   resp.data.replication_job.vm_server #=> Types::VmServer
    #   resp.data.replication_job.vm_server.vm_server_address #=> Types::VmServerAddress
    #   resp.data.replication_job.vm_server.vm_server_address.vm_manager_id #=> String
    #   resp.data.replication_job.vm_server.vm_server_address.vm_id #=> String
    #   resp.data.replication_job.vm_server.vm_name #=> String
    #   resp.data.replication_job.vm_server.vm_manager_name #=> String
    #   resp.data.replication_job.vm_server.vm_manager_type #=> String, one of ["VSPHERE", "SCVMM", "HYPERV-MANAGER"]
    #   resp.data.replication_job.vm_server.vm_path #=> String
    #   resp.data.replication_job.seed_replication_time #=> Time
    #   resp.data.replication_job.frequency #=> Integer
    #   resp.data.replication_job.run_once #=> Boolean
    #   resp.data.replication_job.next_replication_run_start_time #=> Time
    #   resp.data.replication_job.license_type #=> String, one of ["AWS", "BYOL"]
    #   resp.data.replication_job.role_name #=> String
    #   resp.data.replication_job.latest_ami_id #=> String
    #   resp.data.replication_job.state #=> String, one of ["PENDING", "ACTIVE", "FAILED", "DELETING", "DELETED", "COMPLETED", "PAUSED_ON_FAILURE", "FAILING"]
    #   resp.data.replication_job.status_message #=> String
    #   resp.data.replication_job.description #=> String
    #   resp.data.replication_job.number_of_recent_amis_to_keep #=> Integer
    #   resp.data.replication_job.encrypted #=> Boolean
    #   resp.data.replication_job.kms_key_id #=> String
    #   resp.data.replication_job.replication_run_list #=> Array<ReplicationRun>
    #   resp.data.replication_job.replication_run_list[0] #=> Types::ReplicationRun
    #   resp.data.replication_job.replication_run_list[0].replication_run_id #=> String
    #   resp.data.replication_job.replication_run_list[0].state #=> String, one of ["PENDING", "MISSED", "ACTIVE", "FAILED", "COMPLETED", "DELETING", "DELETED"]
    #   resp.data.replication_job.replication_run_list[0].type #=> String, one of ["ON_DEMAND", "AUTOMATIC"]
    #   resp.data.replication_job.replication_run_list[0].stage_details #=> Types::ReplicationRunStageDetails
    #   resp.data.replication_job.replication_run_list[0].stage_details.stage #=> String
    #   resp.data.replication_job.replication_run_list[0].stage_details.stage_progress #=> String
    #   resp.data.replication_job.replication_run_list[0].status_message #=> String
    #   resp.data.replication_job.replication_run_list[0].ami_id #=> String
    #   resp.data.replication_job.replication_run_list[0].scheduled_start_time #=> Time
    #   resp.data.replication_job.replication_run_list[0].completed_time #=> Time
    #   resp.data.replication_job.replication_run_list[0].description #=> String
    #   resp.data.replication_job.replication_run_list[0].encrypted #=> Boolean
    #   resp.data.replication_job.replication_run_list[0].kms_key_id #=> String
    #   resp.data.replication_run_list #=> Array<ReplicationRun>
    #   resp.data.next_token #=> String
    #
    def get_replication_runs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetReplicationRunsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetReplicationRunsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetReplicationRuns
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::UnauthorizedOperationException, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::GetReplicationRuns
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetReplicationRuns,
        stubs: @stubs,
        params_class: Params::GetReplicationRunsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_replication_runs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the servers in your server catalog.</p>
    #         <p>Before you can describe your servers, you must import them using <a>ImportServerCatalog</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetServersInput}.
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. The default value is 50.
    #               To retrieve the remaining results, make another call with the returned
    #                   <code>NextToken</code> value.</p>
    #
    # @option params [Array<VmServerAddress>] :vm_server_address_list
    #   <p>The server addresses.</p>
    #
    # @return [Types::GetServersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_servers(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     vm_server_address_list: [
    #       {
    #         vm_manager_id: 'vmManagerId',
    #         vm_id: 'vmId'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetServersOutput
    #   resp.data.last_modified_on #=> Time
    #   resp.data.server_catalog_status #=> String, one of ["NOT_IMPORTED", "IMPORTING", "AVAILABLE", "DELETED", "EXPIRED"]
    #   resp.data.server_list #=> Array<Server>
    #   resp.data.server_list[0] #=> Types::Server
    #   resp.data.server_list[0].server_id #=> String
    #   resp.data.server_list[0].server_type #=> String, one of ["VIRTUAL_MACHINE"]
    #   resp.data.server_list[0].vm_server #=> Types::VmServer
    #   resp.data.server_list[0].vm_server.vm_server_address #=> Types::VmServerAddress
    #   resp.data.server_list[0].vm_server.vm_server_address.vm_manager_id #=> String
    #   resp.data.server_list[0].vm_server.vm_server_address.vm_id #=> String
    #   resp.data.server_list[0].vm_server.vm_name #=> String
    #   resp.data.server_list[0].vm_server.vm_manager_name #=> String
    #   resp.data.server_list[0].vm_server.vm_manager_type #=> String, one of ["VSPHERE", "SCVMM", "HYPERV-MANAGER"]
    #   resp.data.server_list[0].vm_server.vm_path #=> String
    #   resp.data.server_list[0].replication_job_id #=> String
    #   resp.data.server_list[0].replication_job_terminated #=> Boolean
    #   resp.data.next_token #=> String
    #
    def get_servers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetServersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetServersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetServers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::UnauthorizedOperationException, Errors::InternalError, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::GetServers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetServers,
        stubs: @stubs,
        params_class: Params::GetServersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_servers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Allows application import from Migration Hub.</p>
    #
    # @param [Hash] params
    #   See {Types::ImportAppCatalogInput}.
    #
    # @option params [String] :role_name
    #   <p>The name of the service role. If you omit this parameter, we create a service-linked role
    #               for Migration Hub in your account. Otherwise, the role that you provide must have the <a href="https://docs.aws.amazon.com/migrationhub/latest/ug/new-customer-setup.html#sms-managed">policy
    #                   and trust policy</a> described in the <i>Migration Hub User Guide</i>.</p>
    #
    # @return [Types::ImportAppCatalogOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_app_catalog(
    #     role_name: 'roleName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ImportAppCatalogOutput
    #
    def import_app_catalog(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ImportAppCatalogInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ImportAppCatalogInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ImportAppCatalog
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterException, Errors::UnauthorizedOperationException, Errors::InternalError, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::ImportAppCatalog
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ImportAppCatalog,
        stubs: @stubs,
        params_class: Params::ImportAppCatalogOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :import_app_catalog
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gathers a complete list of on-premises servers. Connectors must be installed and
    #             monitoring all servers to import.</p>
    #         <p>This call returns immediately, but might take additional time to retrieve all the
    #             servers.</p>
    #
    # @param [Hash] params
    #   See {Types::ImportServerCatalogInput}.
    #
    # @return [Types::ImportServerCatalogOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_server_catalog()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ImportServerCatalogOutput
    #
    def import_server_catalog(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ImportServerCatalogInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ImportServerCatalogInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ImportServerCatalog
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterException, Errors::NoConnectorsAvailableException, Errors::UnauthorizedOperationException, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::ImportServerCatalog
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ImportServerCatalog,
        stubs: @stubs,
        params_class: Params::ImportServerCatalogOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :import_server_catalog
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Launches the specified application as a stack in CloudFormation.</p>
    #
    # @param [Hash] params
    #   See {Types::LaunchAppInput}.
    #
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    #
    # @return [Types::LaunchAppOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.launch_app(
    #     app_id: 'appId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::LaunchAppOutput
    #
    def launch_app(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::LaunchAppInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::LaunchAppInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::LaunchApp
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterException, Errors::UnauthorizedOperationException, Errors::InternalError, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::LaunchApp
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::LaunchApp,
        stubs: @stubs,
        params_class: Params::LaunchAppOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :launch_app
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves summaries for all applications.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAppsInput}.
    #
    # @option params [Array<String>] :app_ids
    #   <p>The unique application IDs.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. The default value is 100. To
    #               retrieve the remaining results, make another call with the returned
    #                   <code>NextToken</code> value. </p>
    #
    # @return [Types::ListAppsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_apps(
    #     app_ids: [
    #       'member'
    #     ],
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAppsOutput
    #   resp.data.apps #=> Array<AppSummary>
    #   resp.data.apps[0] #=> Types::AppSummary
    #   resp.data.apps[0].app_id #=> String
    #   resp.data.apps[0].imported_app_id #=> String
    #   resp.data.apps[0].name #=> String
    #   resp.data.apps[0].description #=> String
    #   resp.data.apps[0].status #=> String, one of ["CREATING", "ACTIVE", "UPDATING", "DELETING", "DELETED", "DELETE_FAILED"]
    #   resp.data.apps[0].status_message #=> String
    #   resp.data.apps[0].replication_configuration_status #=> String, one of ["NOT_CONFIGURED", "CONFIGURED"]
    #   resp.data.apps[0].replication_status #=> String, one of ["READY_FOR_CONFIGURATION", "CONFIGURATION_IN_PROGRESS", "CONFIGURATION_INVALID", "READY_FOR_REPLICATION", "VALIDATION_IN_PROGRESS", "REPLICATION_PENDING", "REPLICATION_IN_PROGRESS", "REPLICATED", "PARTIALLY_REPLICATED", "DELTA_REPLICATION_IN_PROGRESS", "DELTA_REPLICATED", "DELTA_REPLICATION_FAILED", "REPLICATION_FAILED", "REPLICATION_STOPPING", "REPLICATION_STOP_FAILED", "REPLICATION_STOPPED"]
    #   resp.data.apps[0].replication_status_message #=> String
    #   resp.data.apps[0].latest_replication_time #=> Time
    #   resp.data.apps[0].launch_configuration_status #=> String, one of ["NOT_CONFIGURED", "CONFIGURED"]
    #   resp.data.apps[0].launch_status #=> String, one of ["READY_FOR_CONFIGURATION", "CONFIGURATION_IN_PROGRESS", "CONFIGURATION_INVALID", "READY_FOR_LAUNCH", "VALIDATION_IN_PROGRESS", "LAUNCH_PENDING", "LAUNCH_IN_PROGRESS", "LAUNCHED", "PARTIALLY_LAUNCHED", "DELTA_LAUNCH_IN_PROGRESS", "DELTA_LAUNCH_FAILED", "LAUNCH_FAILED", "TERMINATE_IN_PROGRESS", "TERMINATE_FAILED", "TERMINATED"]
    #   resp.data.apps[0].launch_status_message #=> String
    #   resp.data.apps[0].launch_details #=> Types::LaunchDetails
    #   resp.data.apps[0].launch_details.latest_launch_time #=> Time
    #   resp.data.apps[0].launch_details.stack_name #=> String
    #   resp.data.apps[0].launch_details.stack_id #=> String
    #   resp.data.apps[0].creation_time #=> Time
    #   resp.data.apps[0].last_modified #=> Time
    #   resp.data.apps[0].role_name #=> String
    #   resp.data.apps[0].total_server_groups #=> Integer
    #   resp.data.apps[0].total_servers #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_apps(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAppsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAppsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListApps
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterException, Errors::UnauthorizedOperationException, Errors::InternalError, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::ListApps
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListApps,
        stubs: @stubs,
        params_class: Params::ListAppsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_apps
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides information to Server Migration Service about whether application validation is successful.</p>
    #
    # @param [Hash] params
    #   See {Types::NotifyAppValidationOutputInput}.
    #
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    #
    # @option params [NotificationContext] :notification_context
    #   <p>The notification information.</p>
    #
    # @return [Types::NotifyAppValidationOutputOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.notify_app_validation_output(
    #     app_id: 'appId', # required
    #     notification_context: {
    #       validation_id: 'validationId',
    #       status: 'READY_FOR_VALIDATION', # accepts ["READY_FOR_VALIDATION", "PENDING", "IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #       status_message: 'statusMessage'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::NotifyAppValidationOutputOutput
    #
    def notify_app_validation_output(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::NotifyAppValidationOutputInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::NotifyAppValidationOutputInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::NotifyAppValidationOutput
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterException, Errors::UnauthorizedOperationException, Errors::InternalError, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::NotifyAppValidationOutput
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::NotifyAppValidationOutput,
        stubs: @stubs,
        params_class: Params::NotifyAppValidationOutputOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :notify_app_validation_output
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates the launch configuration for the specified application.</p>
    #
    # @param [Hash] params
    #   See {Types::PutAppLaunchConfigurationInput}.
    #
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    #
    # @option params [String] :role_name
    #   <p>The name of service role in the customer's account that CloudFormation uses to launch the
    #               application.</p>
    #
    # @option params [Boolean] :auto_launch
    #   <p>Indicates whether the application is configured to launch automatically after replication is complete.</p>
    #
    # @option params [Array<ServerGroupLaunchConfiguration>] :server_group_launch_configurations
    #   <p>Information about the launch configurations for server groups in the application.</p>
    #
    # @return [Types::PutAppLaunchConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_app_launch_configuration(
    #     app_id: 'appId',
    #     role_name: 'roleName',
    #     auto_launch: false,
    #     server_group_launch_configurations: [
    #       {
    #         server_group_id: 'serverGroupId',
    #         launch_order: 1,
    #         server_launch_configurations: [
    #           {
    #             server: {
    #               server_id: 'serverId',
    #               server_type: 'VIRTUAL_MACHINE', # accepts ["VIRTUAL_MACHINE"]
    #               vm_server: {
    #                 vm_server_address: {
    #                   vm_manager_id: 'vmManagerId',
    #                   vm_id: 'vmId'
    #                 },
    #                 vm_name: 'vmName',
    #                 vm_manager_name: 'vmManagerName',
    #                 vm_manager_type: 'VSPHERE', # accepts ["VSPHERE", "SCVMM", "HYPERV-MANAGER"]
    #                 vm_path: 'vmPath'
    #               },
    #               replication_job_id: 'replicationJobId',
    #               replication_job_terminated: false
    #             },
    #             logical_id: 'logicalId',
    #             vpc: 'vpc',
    #             subnet: 'subnet',
    #             security_group: 'securityGroup',
    #             ec2_key_name: 'ec2KeyName',
    #             user_data: {
    #               s3_location: {
    #                 bucket: 'bucket',
    #                 key: 'key'
    #               }
    #             },
    #             instance_type: 'instanceType',
    #             associate_public_ip_address: false,
    #             iam_instance_profile_name: 'iamInstanceProfileName',
    #             configure_script_type: 'SHELL_SCRIPT' # accepts ["SHELL_SCRIPT", "POWERSHELL_SCRIPT"]
    #           }
    #         ]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutAppLaunchConfigurationOutput
    #
    def put_app_launch_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutAppLaunchConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutAppLaunchConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutAppLaunchConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterException, Errors::UnauthorizedOperationException, Errors::InternalError, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::PutAppLaunchConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutAppLaunchConfiguration,
        stubs: @stubs,
        params_class: Params::PutAppLaunchConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_app_launch_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates the replication configuration for the specified application.</p>
    #
    # @param [Hash] params
    #   See {Types::PutAppReplicationConfigurationInput}.
    #
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    #
    # @option params [Array<ServerGroupReplicationConfiguration>] :server_group_replication_configurations
    #   <p>Information about the replication configurations for server groups in the application.</p>
    #
    # @return [Types::PutAppReplicationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_app_replication_configuration(
    #     app_id: 'appId',
    #     server_group_replication_configurations: [
    #       {
    #         server_group_id: 'serverGroupId',
    #         server_replication_configurations: [
    #           {
    #             server: {
    #               server_id: 'serverId',
    #               server_type: 'VIRTUAL_MACHINE', # accepts ["VIRTUAL_MACHINE"]
    #               vm_server: {
    #                 vm_server_address: {
    #                   vm_manager_id: 'vmManagerId',
    #                   vm_id: 'vmId'
    #                 },
    #                 vm_name: 'vmName',
    #                 vm_manager_name: 'vmManagerName',
    #                 vm_manager_type: 'VSPHERE', # accepts ["VSPHERE", "SCVMM", "HYPERV-MANAGER"]
    #                 vm_path: 'vmPath'
    #               },
    #               replication_job_id: 'replicationJobId',
    #               replication_job_terminated: false
    #             },
    #             server_replication_parameters: {
    #               seed_time: Time.now,
    #               frequency: 1,
    #               run_once: false,
    #               license_type: 'AWS', # accepts ["AWS", "BYOL"]
    #               number_of_recent_amis_to_keep: 1,
    #               encrypted: false,
    #               kms_key_id: 'kmsKeyId'
    #             }
    #           }
    #         ]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutAppReplicationConfigurationOutput
    #
    def put_app_replication_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutAppReplicationConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutAppReplicationConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutAppReplicationConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterException, Errors::UnauthorizedOperationException, Errors::InternalError, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::PutAppReplicationConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutAppReplicationConfiguration,
        stubs: @stubs,
        params_class: Params::PutAppReplicationConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_app_replication_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates a validation configuration for the specified application.</p>
    #
    # @param [Hash] params
    #   See {Types::PutAppValidationConfigurationInput}.
    #
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    #
    # @option params [Array<AppValidationConfiguration>] :app_validation_configurations
    #   <p>The configuration for application validation.</p>
    #
    # @option params [Array<ServerGroupValidationConfiguration>] :server_group_validation_configurations
    #   <p>The configuration for instance validation.</p>
    #
    # @return [Types::PutAppValidationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_app_validation_configuration(
    #     app_id: 'appId', # required
    #     app_validation_configurations: [
    #       {
    #         validation_id: 'validationId',
    #         name: 'name',
    #         app_validation_strategy: 'SSM', # accepts ["SSM"]
    #         ssm_validation_parameters: {
    #           source: {
    #             s3_location: {
    #               bucket: 'bucket',
    #               key: 'key'
    #             }
    #           },
    #           instance_id: 'instanceId',
    #           script_type: 'SHELL_SCRIPT', # accepts ["SHELL_SCRIPT", "POWERSHELL_SCRIPT"]
    #           command: 'command',
    #           execution_timeout_seconds: 1,
    #           output_s3_bucket_name: 'outputS3BucketName'
    #         }
    #       }
    #     ],
    #     server_group_validation_configurations: [
    #       {
    #         server_group_id: 'serverGroupId',
    #         server_validation_configurations: [
    #           {
    #             server: {
    #               server_id: 'serverId',
    #               server_type: 'VIRTUAL_MACHINE', # accepts ["VIRTUAL_MACHINE"]
    #               vm_server: {
    #                 vm_server_address: {
    #                   vm_manager_id: 'vmManagerId',
    #                   vm_id: 'vmId'
    #                 },
    #                 vm_name: 'vmName',
    #                 vm_manager_name: 'vmManagerName',
    #                 vm_manager_type: 'VSPHERE', # accepts ["VSPHERE", "SCVMM", "HYPERV-MANAGER"]
    #                 vm_path: 'vmPath'
    #               },
    #               replication_job_id: 'replicationJobId',
    #               replication_job_terminated: false
    #             },
    #             validation_id: 'validationId',
    #             name: 'name',
    #             server_validation_strategy: 'USERDATA', # accepts ["USERDATA"]
    #             user_data_validation_parameters: {
    #               script_type: 'SHELL_SCRIPT' # accepts ["SHELL_SCRIPT", "POWERSHELL_SCRIPT"]
    #             }
    #           }
    #         ]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutAppValidationConfigurationOutput
    #
    def put_app_validation_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutAppValidationConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutAppValidationConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutAppValidationConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterException, Errors::UnauthorizedOperationException, Errors::InternalError, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::PutAppValidationConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutAppValidationConfiguration,
        stubs: @stubs,
        params_class: Params::PutAppValidationConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_app_validation_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts replicating the specified application by creating replication jobs for each server in the
    #             application.</p>
    #
    # @param [Hash] params
    #   See {Types::StartAppReplicationInput}.
    #
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    #
    # @return [Types::StartAppReplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_app_replication(
    #     app_id: 'appId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartAppReplicationOutput
    #
    def start_app_replication(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartAppReplicationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartAppReplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartAppReplication
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterException, Errors::UnauthorizedOperationException, Errors::InternalError, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::StartAppReplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartAppReplication,
        stubs: @stubs,
        params_class: Params::StartAppReplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_app_replication
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts an on-demand replication run for the specified application.</p>
    #
    # @param [Hash] params
    #   See {Types::StartOnDemandAppReplicationInput}.
    #
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    #
    # @option params [String] :description
    #   <p>The description of the replication run.</p>
    #
    # @return [Types::StartOnDemandAppReplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_on_demand_app_replication(
    #     app_id: 'appId', # required
    #     description: 'description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartOnDemandAppReplicationOutput
    #
    def start_on_demand_app_replication(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartOnDemandAppReplicationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartOnDemandAppReplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartOnDemandAppReplication
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterException, Errors::UnauthorizedOperationException, Errors::InternalError, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::StartOnDemandAppReplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartOnDemandAppReplication,
        stubs: @stubs,
        params_class: Params::StartOnDemandAppReplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_on_demand_app_replication
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts an on-demand replication run for the specified replication job. This
    #             replication run starts immediately. This replication run is in addition to the ones
    #             already scheduled.</p>
    #         <p>There is a limit on the number of on-demand replications runs that you can request
    #             in a 24-hour period.</p>
    #
    # @param [Hash] params
    #   See {Types::StartOnDemandReplicationRunInput}.
    #
    # @option params [String] :replication_job_id
    #   <p>The ID of the replication job.</p>
    #
    # @option params [String] :description
    #   <p>The description of the replication run.</p>
    #
    # @return [Types::StartOnDemandReplicationRunOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_on_demand_replication_run(
    #     replication_job_id: 'replicationJobId', # required
    #     description: 'description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartOnDemandReplicationRunOutput
    #   resp.data.replication_run_id #=> String
    #
    def start_on_demand_replication_run(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartOnDemandReplicationRunInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartOnDemandReplicationRunInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartOnDemandReplicationRun
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterException, Errors::UnauthorizedOperationException, Errors::ReplicationRunLimitExceededException, Errors::DryRunOperationException, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::StartOnDemandReplicationRun
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartOnDemandReplicationRun,
        stubs: @stubs,
        params_class: Params::StartOnDemandReplicationRunOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_on_demand_replication_run
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops replicating the specified application by deleting the replication job for each server in
    #             the application.</p>
    #
    # @param [Hash] params
    #   See {Types::StopAppReplicationInput}.
    #
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    #
    # @return [Types::StopAppReplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_app_replication(
    #     app_id: 'appId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopAppReplicationOutput
    #
    def stop_app_replication(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopAppReplicationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopAppReplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopAppReplication
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterException, Errors::UnauthorizedOperationException, Errors::InternalError, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::StopAppReplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopAppReplication,
        stubs: @stubs,
        params_class: Params::StopAppReplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_app_replication
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Terminates the stack for the specified application.</p>
    #
    # @param [Hash] params
    #   See {Types::TerminateAppInput}.
    #
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    #
    # @return [Types::TerminateAppOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_app(
    #     app_id: 'appId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TerminateAppOutput
    #
    def terminate_app(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TerminateAppInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TerminateAppInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TerminateApp
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterException, Errors::UnauthorizedOperationException, Errors::InternalError, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::TerminateApp
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TerminateApp,
        stubs: @stubs,
        params_class: Params::TerminateAppOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :terminate_app
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified application.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAppInput}.
    #
    # @option params [String] :app_id
    #   <p>The ID of the application.</p>
    #
    # @option params [String] :name
    #   <p>The new name of the application.</p>
    #
    # @option params [String] :description
    #   <p>The new description of the application.</p>
    #
    # @option params [String] :role_name
    #   <p>The name of the service role in the customer's account used by Server Migration Service.</p>
    #
    # @option params [Array<ServerGroup>] :server_groups
    #   <p>The server groups in the application to update.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to associate with the application.</p>
    #
    # @return [Types::UpdateAppOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_app(
    #     app_id: 'appId',
    #     name: 'name',
    #     description: 'description',
    #     role_name: 'roleName',
    #     server_groups: [
    #       {
    #         server_group_id: 'serverGroupId',
    #         name: 'name',
    #         server_list: [
    #           {
    #             server_id: 'serverId',
    #             server_type: 'VIRTUAL_MACHINE', # accepts ["VIRTUAL_MACHINE"]
    #             vm_server: {
    #               vm_server_address: {
    #                 vm_manager_id: 'vmManagerId',
    #                 vm_id: 'vmId'
    #               },
    #               vm_name: 'vmName',
    #               vm_manager_name: 'vmManagerName',
    #               vm_manager_type: 'VSPHERE', # accepts ["VSPHERE", "SCVMM", "HYPERV-MANAGER"]
    #               vm_path: 'vmPath'
    #             },
    #             replication_job_id: 'replicationJobId',
    #             replication_job_terminated: false
    #           }
    #         ]
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: 'key',
    #         value: 'value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAppOutput
    #   resp.data.app_summary #=> Types::AppSummary
    #   resp.data.app_summary.app_id #=> String
    #   resp.data.app_summary.imported_app_id #=> String
    #   resp.data.app_summary.name #=> String
    #   resp.data.app_summary.description #=> String
    #   resp.data.app_summary.status #=> String, one of ["CREATING", "ACTIVE", "UPDATING", "DELETING", "DELETED", "DELETE_FAILED"]
    #   resp.data.app_summary.status_message #=> String
    #   resp.data.app_summary.replication_configuration_status #=> String, one of ["NOT_CONFIGURED", "CONFIGURED"]
    #   resp.data.app_summary.replication_status #=> String, one of ["READY_FOR_CONFIGURATION", "CONFIGURATION_IN_PROGRESS", "CONFIGURATION_INVALID", "READY_FOR_REPLICATION", "VALIDATION_IN_PROGRESS", "REPLICATION_PENDING", "REPLICATION_IN_PROGRESS", "REPLICATED", "PARTIALLY_REPLICATED", "DELTA_REPLICATION_IN_PROGRESS", "DELTA_REPLICATED", "DELTA_REPLICATION_FAILED", "REPLICATION_FAILED", "REPLICATION_STOPPING", "REPLICATION_STOP_FAILED", "REPLICATION_STOPPED"]
    #   resp.data.app_summary.replication_status_message #=> String
    #   resp.data.app_summary.latest_replication_time #=> Time
    #   resp.data.app_summary.launch_configuration_status #=> String, one of ["NOT_CONFIGURED", "CONFIGURED"]
    #   resp.data.app_summary.launch_status #=> String, one of ["READY_FOR_CONFIGURATION", "CONFIGURATION_IN_PROGRESS", "CONFIGURATION_INVALID", "READY_FOR_LAUNCH", "VALIDATION_IN_PROGRESS", "LAUNCH_PENDING", "LAUNCH_IN_PROGRESS", "LAUNCHED", "PARTIALLY_LAUNCHED", "DELTA_LAUNCH_IN_PROGRESS", "DELTA_LAUNCH_FAILED", "LAUNCH_FAILED", "TERMINATE_IN_PROGRESS", "TERMINATE_FAILED", "TERMINATED"]
    #   resp.data.app_summary.launch_status_message #=> String
    #   resp.data.app_summary.launch_details #=> Types::LaunchDetails
    #   resp.data.app_summary.launch_details.latest_launch_time #=> Time
    #   resp.data.app_summary.launch_details.stack_name #=> String
    #   resp.data.app_summary.launch_details.stack_id #=> String
    #   resp.data.app_summary.creation_time #=> Time
    #   resp.data.app_summary.last_modified #=> Time
    #   resp.data.app_summary.role_name #=> String
    #   resp.data.app_summary.total_server_groups #=> Integer
    #   resp.data.app_summary.total_servers #=> Integer
    #   resp.data.server_groups #=> Array<ServerGroup>
    #   resp.data.server_groups[0] #=> Types::ServerGroup
    #   resp.data.server_groups[0].server_group_id #=> String
    #   resp.data.server_groups[0].name #=> String
    #   resp.data.server_groups[0].server_list #=> Array<Server>
    #   resp.data.server_groups[0].server_list[0] #=> Types::Server
    #   resp.data.server_groups[0].server_list[0].server_id #=> String
    #   resp.data.server_groups[0].server_list[0].server_type #=> String, one of ["VIRTUAL_MACHINE"]
    #   resp.data.server_groups[0].server_list[0].vm_server #=> Types::VmServer
    #   resp.data.server_groups[0].server_list[0].vm_server.vm_server_address #=> Types::VmServerAddress
    #   resp.data.server_groups[0].server_list[0].vm_server.vm_server_address.vm_manager_id #=> String
    #   resp.data.server_groups[0].server_list[0].vm_server.vm_server_address.vm_id #=> String
    #   resp.data.server_groups[0].server_list[0].vm_server.vm_name #=> String
    #   resp.data.server_groups[0].server_list[0].vm_server.vm_manager_name #=> String
    #   resp.data.server_groups[0].server_list[0].vm_server.vm_manager_type #=> String, one of ["VSPHERE", "SCVMM", "HYPERV-MANAGER"]
    #   resp.data.server_groups[0].server_list[0].vm_server.vm_path #=> String
    #   resp.data.server_groups[0].server_list[0].replication_job_id #=> String
    #   resp.data.server_groups[0].server_list[0].replication_job_terminated #=> Boolean
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def update_app(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAppInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAppInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateApp
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterException, Errors::UnauthorizedOperationException, Errors::InternalError, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::UpdateApp
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateApp,
        stubs: @stubs,
        params_class: Params::UpdateAppOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_app
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified settings for the specified replication job.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateReplicationJobInput}.
    #
    # @option params [String] :replication_job_id
    #   <p>The ID of the replication job.</p>
    #
    # @option params [Integer] :frequency
    #   <p>The time between consecutive replication runs, in hours.</p>
    #
    # @option params [Time] :next_replication_run_start_time
    #   <p>The start time of the next replication run.</p>
    #
    # @option params [String] :license_type
    #   <p>The license type to be used for the AMI created by a successful replication
    #               run.</p>
    #
    # @option params [String] :role_name
    #   <p>The name of the IAM role to be used by Server Migration Service.</p>
    #
    # @option params [String] :description
    #   <p>The description of the replication job.</p>
    #
    # @option params [Integer] :number_of_recent_amis_to_keep
    #   <p>The maximum number of SMS-created AMIs to retain. The oldest is deleted after the
    #               maximum number is reached and a new AMI is created.</p>
    #
    # @option params [Boolean] :encrypted
    #   <p>When true, the replication job produces encrypted AMIs. For more information,
    #                   <code>KmsKeyId</code>.</p>
    #
    # @option params [String] :kms_key_id
    #   <p>The ID of the KMS key for replication jobs that produce encrypted AMIs.
    #               This value can be any of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>KMS key ID</p>
    #               </li>
    #               <li>
    #                   <p>KMS key alias</p>
    #               </li>
    #               <li>
    #                   <p>ARN referring to the KMS key ID</p>
    #               </li>
    #               <li>
    #                   <p>ARN referring to the KMS key alias</p>
    #               </li>
    #            </ul>
    #           <p>If encrypted is enabled but a KMS key ID is not specified, the
    #               customer's default KMS key for Amazon EBS is used.</p>
    #
    # @return [Types::UpdateReplicationJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_replication_job(
    #     replication_job_id: 'replicationJobId', # required
    #     frequency: 1,
    #     next_replication_run_start_time: Time.now,
    #     license_type: 'AWS', # accepts ["AWS", "BYOL"]
    #     role_name: 'roleName',
    #     description: 'description',
    #     number_of_recent_amis_to_keep: 1,
    #     encrypted: false,
    #     kms_key_id: 'kmsKeyId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateReplicationJobOutput
    #
    def update_replication_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateReplicationJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateReplicationJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateReplicationJob
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterException, Errors::UnauthorizedOperationException, Errors::ReplicationJobNotFoundException, Errors::TemporarilyUnavailableException, Errors::InternalError, Errors::ServerCannotBeReplicatedException, Errors::MissingRequiredParameterException]),
        data_parser: Parsers::UpdateReplicationJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateReplicationJob,
        stubs: @stubs,
        params_class: Params::UpdateReplicationJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_replication_job
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
