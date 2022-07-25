# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Mgn
  # An API client for ApplicationMigrationService
  # See {#initialize} for a full list of supported configuration options
  # <p>The Application Migration Service service.</p>
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
    def initialize(config = AWS::SDK::Mgn::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Allows the user to set the SourceServer.LifeCycle.state property for specific Source Server IDs to one of the following: READY_FOR_TEST or READY_FOR_CUTOVER. This command only works if the Source Server is already launchable (dataReplicationInfo.lagDuration is not null.)</p>
    #
    # @param [Hash] params
    #   See {Types::ChangeServerLifeCycleStateInput}.
    #
    # @option params [String] :source_server_id
    #   <p>The request to change the source server migration lifecycle state by source server ID.</p>
    #
    # @option params [ChangeServerLifeCycleStateSourceServerLifecycle] :life_cycle
    #   <p>The request to change the source server migration lifecycle state.</p>
    #
    # @return [Types::ChangeServerLifeCycleStateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.change_server_life_cycle_state(
    #     source_server_id: 'sourceServerID', # required
    #     life_cycle: {
    #       state: 'READY_FOR_TEST' # required - accepts ["READY_FOR_TEST", "READY_FOR_CUTOVER", "CUTOVER"]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ChangeServerLifeCycleStateOutput
    #   resp.data.source_server_id #=> String
    #   resp.data.arn #=> String
    #   resp.data.is_archived #=> Boolean
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.launched_instance #=> Types::LaunchedInstance
    #   resp.data.launched_instance.ec2_instance_id #=> String
    #   resp.data.launched_instance.job_id #=> String
    #   resp.data.launched_instance.first_boot #=> String, one of ["WAITING", "SUCCEEDED", "UNKNOWN", "STOPPED"]
    #   resp.data.data_replication_info #=> Types::DataReplicationInfo
    #   resp.data.data_replication_info.lag_duration #=> String
    #   resp.data.data_replication_info.eta_date_time #=> String
    #   resp.data.data_replication_info.replicated_disks #=> Array<DataReplicationInfoReplicatedDisk>
    #   resp.data.data_replication_info.replicated_disks[0] #=> Types::DataReplicationInfoReplicatedDisk
    #   resp.data.data_replication_info.replicated_disks[0].device_name #=> String
    #   resp.data.data_replication_info.replicated_disks[0].total_storage_bytes #=> Integer
    #   resp.data.data_replication_info.replicated_disks[0].replicated_storage_bytes #=> Integer
    #   resp.data.data_replication_info.replicated_disks[0].rescanned_storage_bytes #=> Integer
    #   resp.data.data_replication_info.replicated_disks[0].backlogged_storage_bytes #=> Integer
    #   resp.data.data_replication_info.data_replication_state #=> String, one of ["STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED", "PENDING_SNAPSHOT_SHIPPING", "SHIPPING_SNAPSHOT"]
    #   resp.data.data_replication_info.data_replication_initiation #=> Types::DataReplicationInitiation
    #   resp.data.data_replication_info.data_replication_initiation.start_date_time #=> String
    #   resp.data.data_replication_info.data_replication_initiation.next_attempt_date_time #=> String
    #   resp.data.data_replication_info.data_replication_initiation.steps #=> Array<DataReplicationInitiationStep>
    #   resp.data.data_replication_info.data_replication_initiation.steps[0] #=> Types::DataReplicationInitiationStep
    #   resp.data.data_replication_info.data_replication_initiation.steps[0].name #=> String, one of ["WAIT", "CREATE_SECURITY_GROUP", "LAUNCH_REPLICATION_SERVER", "BOOT_REPLICATION_SERVER", "AUTHENTICATE_WITH_SERVICE", "DOWNLOAD_REPLICATION_SOFTWARE", "CREATE_STAGING_DISKS", "ATTACH_STAGING_DISKS", "PAIR_REPLICATION_SERVER_WITH_AGENT", "CONNECT_AGENT_TO_REPLICATION_SERVER", "START_DATA_TRANSFER"]
    #   resp.data.data_replication_info.data_replication_initiation.steps[0].status #=> String, one of ["NOT_STARTED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "SKIPPED"]
    #   resp.data.data_replication_info.data_replication_error #=> Types::DataReplicationError
    #   resp.data.data_replication_info.data_replication_error.error #=> String, one of ["AGENT_NOT_SEEN", "SNAPSHOTS_FAILURE", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_CREATE_SECURITY_GROUP", "FAILED_TO_LAUNCH_REPLICATION_SERVER", "FAILED_TO_BOOT_REPLICATION_SERVER", "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "FAILED_TO_CREATE_STAGING_DISKS", "FAILED_TO_ATTACH_STAGING_DISKS", "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "FAILED_TO_START_DATA_TRANSFER", "UNSUPPORTED_VM_CONFIGURATION", "LAST_SNAPSHOT_JOB_FAILED"]
    #   resp.data.data_replication_info.data_replication_error.raw_error #=> String
    #   resp.data.data_replication_info.last_snapshot_date_time #=> String
    #   resp.data.life_cycle #=> Types::LifeCycle
    #   resp.data.life_cycle.added_to_service_date_time #=> String
    #   resp.data.life_cycle.first_byte_date_time #=> String
    #   resp.data.life_cycle.elapsed_replication_duration #=> String
    #   resp.data.life_cycle.last_seen_by_service_date_time #=> String
    #   resp.data.life_cycle.last_test #=> Types::LifeCycleLastTest
    #   resp.data.life_cycle.last_test.initiated #=> Types::LifeCycleLastTestInitiated
    #   resp.data.life_cycle.last_test.initiated.api_call_date_time #=> String
    #   resp.data.life_cycle.last_test.initiated.job_id #=> String
    #   resp.data.life_cycle.last_test.reverted #=> Types::LifeCycleLastTestReverted
    #   resp.data.life_cycle.last_test.reverted.api_call_date_time #=> String
    #   resp.data.life_cycle.last_test.finalized #=> Types::LifeCycleLastTestFinalized
    #   resp.data.life_cycle.last_test.finalized.api_call_date_time #=> String
    #   resp.data.life_cycle.last_cutover #=> Types::LifeCycleLastCutover
    #   resp.data.life_cycle.last_cutover.initiated #=> Types::LifeCycleLastCutoverInitiated
    #   resp.data.life_cycle.last_cutover.initiated.api_call_date_time #=> String
    #   resp.data.life_cycle.last_cutover.initiated.job_id #=> String
    #   resp.data.life_cycle.last_cutover.reverted #=> Types::LifeCycleLastCutoverReverted
    #   resp.data.life_cycle.last_cutover.reverted.api_call_date_time #=> String
    #   resp.data.life_cycle.last_cutover.finalized #=> Types::LifeCycleLastCutoverFinalized
    #   resp.data.life_cycle.last_cutover.finalized.api_call_date_time #=> String
    #   resp.data.life_cycle.state #=> String, one of ["STOPPED", "NOT_READY", "READY_FOR_TEST", "TESTING", "READY_FOR_CUTOVER", "CUTTING_OVER", "CUTOVER", "DISCONNECTED", "DISCOVERED"]
    #   resp.data.source_properties #=> Types::SourceProperties
    #   resp.data.source_properties.last_updated_date_time #=> String
    #   resp.data.source_properties.recommended_instance_type #=> String
    #   resp.data.source_properties.identification_hints #=> Types::IdentificationHints
    #   resp.data.source_properties.identification_hints.fqdn #=> String
    #   resp.data.source_properties.identification_hints.hostname #=> String
    #   resp.data.source_properties.identification_hints.vm_ware_uuid #=> String
    #   resp.data.source_properties.identification_hints.aws_instance_id #=> String
    #   resp.data.source_properties.identification_hints.vm_path #=> String
    #   resp.data.source_properties.network_interfaces #=> Array<NetworkInterface>
    #   resp.data.source_properties.network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.source_properties.network_interfaces[0].mac_address #=> String
    #   resp.data.source_properties.network_interfaces[0].ips #=> Array<String>
    #   resp.data.source_properties.network_interfaces[0].ips[0] #=> String
    #   resp.data.source_properties.network_interfaces[0].is_primary #=> Boolean
    #   resp.data.source_properties.disks #=> Array<Disk>
    #   resp.data.source_properties.disks[0] #=> Types::Disk
    #   resp.data.source_properties.disks[0].device_name #=> String
    #   resp.data.source_properties.disks[0].bytes #=> Integer
    #   resp.data.source_properties.cpus #=> Array<CPU>
    #   resp.data.source_properties.cpus[0] #=> Types::CPU
    #   resp.data.source_properties.cpus[0].cores #=> Integer
    #   resp.data.source_properties.cpus[0].model_name #=> String
    #   resp.data.source_properties.ram_bytes #=> Integer
    #   resp.data.source_properties.os #=> Types::OS
    #   resp.data.source_properties.os.full_string #=> String
    #   resp.data.replication_type #=> String, one of ["AGENT_BASED", "SNAPSHOT_SHIPPING"]
    #   resp.data.vcenter_client_id #=> String
    #
    def change_server_life_cycle_state(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ChangeServerLifeCycleStateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ChangeServerLifeCycleStateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ChangeServerLifeCycleState
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::UninitializedAccountException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ChangeServerLifeCycleState
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ChangeServerLifeCycleState,
        stubs: @stubs,
        params_class: Params::ChangeServerLifeCycleStateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :change_server_life_cycle_state
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new ReplicationConfigurationTemplate.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateReplicationConfigurationTemplateInput}.
    #
    # @option params [String] :staging_area_subnet_id
    #   <p>Request to configure the Staging Area subnet ID during Replication Settings template creation.</p>
    #
    # @option params [Boolean] :associate_default_security_group
    #   <p>Request to associate the default Application Migration Service Security group with the Replication Settings template.</p>
    #
    # @option params [Array<String>] :replication_servers_security_groups_i_ds
    #   <p>Request to configure the Replication Server Security group ID during Replication Settings template creation.</p>
    #
    # @option params [String] :replication_server_instance_type
    #   <p>Request to configure the Replication Server instance type during Replication Settings template creation.</p>
    #
    # @option params [Boolean] :use_dedicated_replication_server
    #   <p>Request to use Dedicated Replication Servers during Replication Settings template creation.</p>
    #
    # @option params [String] :default_large_staging_disk_type
    #   <p>Request to configure the default large staging disk EBS volume type during Replication Settings template creation.</p>
    #
    # @option params [String] :ebs_encryption
    #   <p>Request to configure EBS encryption during Replication Settings template creation.</p>
    #
    # @option params [String] :ebs_encryption_key_arn
    #   <p>Request to configure an EBS encryption key during Replication Settings template creation.</p>
    #
    # @option params [Integer] :bandwidth_throttling
    #   <p>Request to configure bandwidth throttling during Replication Settings template creation.</p>
    #
    # @option params [String] :data_plane_routing
    #   <p>Request to configure  data plane routing during Replication Settings template creation.</p>
    #
    # @option params [Boolean] :create_public_ip
    #   <p>Request to create Public IP during Replication Settings template creation.</p>
    #
    # @option params [Hash<String, String>] :staging_area_tags
    #   <p>Request to configure Staging Area tags during Replication Settings template creation.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Request to configure tags during Replication Settings template creation.</p>
    #
    # @return [Types::CreateReplicationConfigurationTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_replication_configuration_template(
    #     staging_area_subnet_id: 'stagingAreaSubnetId', # required
    #     associate_default_security_group: false, # required
    #     replication_servers_security_groups_i_ds: [
    #       'member'
    #     ], # required
    #     replication_server_instance_type: 'replicationServerInstanceType', # required
    #     use_dedicated_replication_server: false, # required
    #     default_large_staging_disk_type: 'GP2', # required - accepts ["GP2", "ST1", "GP3"]
    #     ebs_encryption: 'DEFAULT', # required - accepts ["DEFAULT", "CUSTOM"]
    #     ebs_encryption_key_arn: 'ebsEncryptionKeyArn',
    #     bandwidth_throttling: 1, # required
    #     data_plane_routing: 'PRIVATE_IP', # required - accepts ["PRIVATE_IP", "PUBLIC_IP"]
    #     create_public_ip: false, # required
    #     staging_area_tags: {
    #       'key' => 'value'
    #     }, # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateReplicationConfigurationTemplateOutput
    #   resp.data.replication_configuration_template_id #=> String
    #   resp.data.arn #=> String
    #   resp.data.staging_area_subnet_id #=> String
    #   resp.data.associate_default_security_group #=> Boolean
    #   resp.data.replication_servers_security_groups_i_ds #=> Array<String>
    #   resp.data.replication_servers_security_groups_i_ds[0] #=> String
    #   resp.data.replication_server_instance_type #=> String
    #   resp.data.use_dedicated_replication_server #=> Boolean
    #   resp.data.default_large_staging_disk_type #=> String, one of ["GP2", "ST1", "GP3"]
    #   resp.data.ebs_encryption #=> String, one of ["DEFAULT", "CUSTOM"]
    #   resp.data.ebs_encryption_key_arn #=> String
    #   resp.data.bandwidth_throttling #=> Integer
    #   resp.data.data_plane_routing #=> String, one of ["PRIVATE_IP", "PUBLIC_IP"]
    #   resp.data.create_public_ip #=> Boolean
    #   resp.data.staging_area_tags #=> Hash<String, String>
    #   resp.data.staging_area_tags['key'] #=> String
    #   resp.data.tags #=> Hash<String, String>
    #
    def create_replication_configuration_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateReplicationConfigurationTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateReplicationConfigurationTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateReplicationConfigurationTemplate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::UninitializedAccountException]),
        data_parser: Parsers::CreateReplicationConfigurationTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateReplicationConfigurationTemplate,
        stubs: @stubs,
        params_class: Params::CreateReplicationConfigurationTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_replication_configuration_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a single Job by ID.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteJobInput}.
    #
    # @option params [String] :job_id
    #   <p>Request to delete Job from service by Job ID.</p>
    #
    # @return [Types::DeleteJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_job(
    #     job_id: 'jobID' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteJobOutput
    #
    def delete_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteJob
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ConflictException, Errors::UninitializedAccountException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteJob,
        stubs: @stubs,
        params_class: Params::DeleteJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a single Replication Configuration Template by ID</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteReplicationConfigurationTemplateInput}.
    #
    # @option params [String] :replication_configuration_template_id
    #   <p>Request to delete Replication Configuration Template from service by Replication Configuration Template ID.</p>
    #
    # @return [Types::DeleteReplicationConfigurationTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_replication_configuration_template(
    #     replication_configuration_template_id: 'replicationConfigurationTemplateID' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteReplicationConfigurationTemplateOutput
    #
    def delete_replication_configuration_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteReplicationConfigurationTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteReplicationConfigurationTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteReplicationConfigurationTemplate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ConflictException, Errors::UninitializedAccountException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteReplicationConfigurationTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteReplicationConfigurationTemplate,
        stubs: @stubs,
        params_class: Params::DeleteReplicationConfigurationTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_replication_configuration_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a single source server by ID.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSourceServerInput}.
    #
    # @option params [String] :source_server_id
    #   <p>Request to delete Source Server from service by Server ID.</p>
    #
    # @return [Types::DeleteSourceServerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_source_server(
    #     source_server_id: 'sourceServerID' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSourceServerOutput
    #
    def delete_source_server(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSourceServerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSourceServerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSourceServer
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ConflictException, Errors::UninitializedAccountException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteSourceServer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSourceServer,
        stubs: @stubs,
        params_class: Params::DeleteSourceServerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_source_server
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a given vCenter client by ID.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteVcenterClientInput}.
    #
    # @option params [String] :vcenter_client_id
    #   <p>ID of resource to be deleted.</p>
    #
    # @return [Types::DeleteVcenterClientOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vcenter_client(
    #     vcenter_client_id: 'vcenterClientID' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVcenterClientOutput
    #
    def delete_vcenter_client(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVcenterClientInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVcenterClientInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVcenterClient
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ValidationException, Errors::UninitializedAccountException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteVcenterClient
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVcenterClient,
        stubs: @stubs,
        params_class: Params::DeleteVcenterClientOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_vcenter_client
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves detailed job log items with paging.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeJobLogItemsInput}.
    #
    # @option params [String] :job_id
    #   <p>Request to describe Job log job ID.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Request to describe Job log item maximum results.</p>
    #
    # @option params [String] :next_token
    #   <p>Request to describe Job log next token.</p>
    #
    # @return [Types::DescribeJobLogItemsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_job_log_items(
    #     job_id: 'jobID', # required
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeJobLogItemsOutput
    #   resp.data.items #=> Array<JobLog>
    #   resp.data.items[0] #=> Types::JobLog
    #   resp.data.items[0].log_date_time #=> String
    #   resp.data.items[0].event #=> String, one of ["JOB_START", "SERVER_SKIPPED", "CLEANUP_START", "CLEANUP_END", "CLEANUP_FAIL", "SNAPSHOT_START", "SNAPSHOT_END", "SNAPSHOT_FAIL", "USING_PREVIOUS_SNAPSHOT", "CONVERSION_START", "CONVERSION_END", "CONVERSION_FAIL", "LAUNCH_START", "LAUNCH_FAILED", "JOB_CANCEL", "JOB_END"]
    #   resp.data.items[0].event_data #=> Types::JobLogEventData
    #   resp.data.items[0].event_data.source_server_id #=> String
    #   resp.data.items[0].event_data.conversion_server_id #=> String
    #   resp.data.items[0].event_data.target_instance_id #=> String
    #   resp.data.items[0].event_data.raw_error #=> String
    #   resp.data.next_token #=> String
    #
    def describe_job_log_items(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeJobLogItemsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeJobLogItemsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeJobLogItems
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::UninitializedAccountException]),
        data_parser: Parsers::DescribeJobLogItems
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeJobLogItems,
        stubs: @stubs,
        params_class: Params::DescribeJobLogItemsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_job_log_items
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of Jobs. Use the JobsID and fromDate and toData filters to limit which jobs are returned. The response is sorted by creationDataTime - latest date first. Jobs are normally created by the StartTest, StartCutover, and TerminateTargetInstances APIs. Jobs are also created by DiagnosticLaunch and TerminateDiagnosticInstances, which are APIs available only to *Support* and only used in response to relevant support tickets.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeJobsInput}.
    #
    # @option params [DescribeJobsRequestFilters] :filters
    #   <p>Request to describe Job log filters.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Request to describe job log items by max results.</p>
    #
    # @option params [String] :next_token
    #   <p>Request to describe job log items by next token.</p>
    #
    # @return [Types::DescribeJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_jobs(
    #     filters: {
    #       job_i_ds: [
    #         'member'
    #       ],
    #       from_date: 'fromDate',
    #       to_date: 'toDate'
    #     },
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeJobsOutput
    #   resp.data.items #=> Array<Job>
    #   resp.data.items[0] #=> Types::Job
    #   resp.data.items[0].job_id #=> String
    #   resp.data.items[0].arn #=> String
    #   resp.data.items[0].type #=> String, one of ["LAUNCH", "TERMINATE"]
    #   resp.data.items[0].initiated_by #=> String, one of ["START_TEST", "START_CUTOVER", "DIAGNOSTIC", "TERMINATE"]
    #   resp.data.items[0].creation_date_time #=> String
    #   resp.data.items[0].end_date_time #=> String
    #   resp.data.items[0].status #=> String, one of ["PENDING", "STARTED", "COMPLETED"]
    #   resp.data.items[0].participating_servers #=> Array<ParticipatingServer>
    #   resp.data.items[0].participating_servers[0] #=> Types::ParticipatingServer
    #   resp.data.items[0].participating_servers[0].source_server_id #=> String
    #   resp.data.items[0].participating_servers[0].launch_status #=> String, one of ["PENDING", "IN_PROGRESS", "LAUNCHED", "FAILED", "TERMINATED"]
    #   resp.data.items[0].tags #=> Hash<String, String>
    #   resp.data.items[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def describe_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeJobs
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::UninitializedAccountException]),
        data_parser: Parsers::DescribeJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeJobs,
        stubs: @stubs,
        params_class: Params::DescribeJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all ReplicationConfigurationTemplates, filtered by Source Server IDs.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeReplicationConfigurationTemplatesInput}.
    #
    # @option params [Array<String>] :replication_configuration_template_i_ds
    #   <p>Request to describe Replication Configuration template by template IDs.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Request to describe Replication Configuration template by max results.</p>
    #
    # @option params [String] :next_token
    #   <p>Request to describe Replication Configuration template by next token.</p>
    #
    # @return [Types::DescribeReplicationConfigurationTemplatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_replication_configuration_templates(
    #     replication_configuration_template_i_ds: [
    #       'member'
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeReplicationConfigurationTemplatesOutput
    #   resp.data.items #=> Array<ReplicationConfigurationTemplate>
    #   resp.data.items[0] #=> Types::ReplicationConfigurationTemplate
    #   resp.data.items[0].replication_configuration_template_id #=> String
    #   resp.data.items[0].arn #=> String
    #   resp.data.items[0].staging_area_subnet_id #=> String
    #   resp.data.items[0].associate_default_security_group #=> Boolean
    #   resp.data.items[0].replication_servers_security_groups_i_ds #=> Array<String>
    #   resp.data.items[0].replication_servers_security_groups_i_ds[0] #=> String
    #   resp.data.items[0].replication_server_instance_type #=> String
    #   resp.data.items[0].use_dedicated_replication_server #=> Boolean
    #   resp.data.items[0].default_large_staging_disk_type #=> String, one of ["GP2", "ST1", "GP3"]
    #   resp.data.items[0].ebs_encryption #=> String, one of ["DEFAULT", "CUSTOM"]
    #   resp.data.items[0].ebs_encryption_key_arn #=> String
    #   resp.data.items[0].bandwidth_throttling #=> Integer
    #   resp.data.items[0].data_plane_routing #=> String, one of ["PRIVATE_IP", "PUBLIC_IP"]
    #   resp.data.items[0].create_public_ip #=> Boolean
    #   resp.data.items[0].staging_area_tags #=> Hash<String, String>
    #   resp.data.items[0].staging_area_tags['key'] #=> String
    #   resp.data.items[0].tags #=> Hash<String, String>
    #   resp.data.next_token #=> String
    #
    def describe_replication_configuration_templates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeReplicationConfigurationTemplatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeReplicationConfigurationTemplatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeReplicationConfigurationTemplates
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::UninitializedAccountException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeReplicationConfigurationTemplates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeReplicationConfigurationTemplates,
        stubs: @stubs,
        params_class: Params::DescribeReplicationConfigurationTemplatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_replication_configuration_templates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves all SourceServers or multiple SourceServers by ID.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSourceServersInput}.
    #
    # @option params [DescribeSourceServersRequestFilters] :filters
    #   <p>Request to filter Source Servers list.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Request to filter Source Servers list by maximum results.</p>
    #
    # @option params [String] :next_token
    #   <p>Request to filter Source Servers list by next token.</p>
    #
    # @return [Types::DescribeSourceServersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_source_servers(
    #     filters: {
    #       source_server_i_ds: [
    #         'member'
    #       ],
    #       is_archived: false,
    #       replication_types: [
    #         'AGENT_BASED' # accepts ["AGENT_BASED", "SNAPSHOT_SHIPPING"]
    #       ],
    #       life_cycle_states: [
    #         'STOPPED' # accepts ["STOPPED", "NOT_READY", "READY_FOR_TEST", "TESTING", "READY_FOR_CUTOVER", "CUTTING_OVER", "CUTOVER", "DISCONNECTED", "DISCOVERED"]
    #       ]
    #     },
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSourceServersOutput
    #   resp.data.items #=> Array<SourceServer>
    #   resp.data.items[0] #=> Types::SourceServer
    #   resp.data.items[0].source_server_id #=> String
    #   resp.data.items[0].arn #=> String
    #   resp.data.items[0].is_archived #=> Boolean
    #   resp.data.items[0].tags #=> Hash<String, String>
    #   resp.data.items[0].tags['key'] #=> String
    #   resp.data.items[0].launched_instance #=> Types::LaunchedInstance
    #   resp.data.items[0].launched_instance.ec2_instance_id #=> String
    #   resp.data.items[0].launched_instance.job_id #=> String
    #   resp.data.items[0].launched_instance.first_boot #=> String, one of ["WAITING", "SUCCEEDED", "UNKNOWN", "STOPPED"]
    #   resp.data.items[0].data_replication_info #=> Types::DataReplicationInfo
    #   resp.data.items[0].data_replication_info.lag_duration #=> String
    #   resp.data.items[0].data_replication_info.eta_date_time #=> String
    #   resp.data.items[0].data_replication_info.replicated_disks #=> Array<DataReplicationInfoReplicatedDisk>
    #   resp.data.items[0].data_replication_info.replicated_disks[0] #=> Types::DataReplicationInfoReplicatedDisk
    #   resp.data.items[0].data_replication_info.replicated_disks[0].device_name #=> String
    #   resp.data.items[0].data_replication_info.replicated_disks[0].total_storage_bytes #=> Integer
    #   resp.data.items[0].data_replication_info.replicated_disks[0].replicated_storage_bytes #=> Integer
    #   resp.data.items[0].data_replication_info.replicated_disks[0].rescanned_storage_bytes #=> Integer
    #   resp.data.items[0].data_replication_info.replicated_disks[0].backlogged_storage_bytes #=> Integer
    #   resp.data.items[0].data_replication_info.data_replication_state #=> String, one of ["STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED", "PENDING_SNAPSHOT_SHIPPING", "SHIPPING_SNAPSHOT"]
    #   resp.data.items[0].data_replication_info.data_replication_initiation #=> Types::DataReplicationInitiation
    #   resp.data.items[0].data_replication_info.data_replication_initiation.start_date_time #=> String
    #   resp.data.items[0].data_replication_info.data_replication_initiation.next_attempt_date_time #=> String
    #   resp.data.items[0].data_replication_info.data_replication_initiation.steps #=> Array<DataReplicationInitiationStep>
    #   resp.data.items[0].data_replication_info.data_replication_initiation.steps[0] #=> Types::DataReplicationInitiationStep
    #   resp.data.items[0].data_replication_info.data_replication_initiation.steps[0].name #=> String, one of ["WAIT", "CREATE_SECURITY_GROUP", "LAUNCH_REPLICATION_SERVER", "BOOT_REPLICATION_SERVER", "AUTHENTICATE_WITH_SERVICE", "DOWNLOAD_REPLICATION_SOFTWARE", "CREATE_STAGING_DISKS", "ATTACH_STAGING_DISKS", "PAIR_REPLICATION_SERVER_WITH_AGENT", "CONNECT_AGENT_TO_REPLICATION_SERVER", "START_DATA_TRANSFER"]
    #   resp.data.items[0].data_replication_info.data_replication_initiation.steps[0].status #=> String, one of ["NOT_STARTED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "SKIPPED"]
    #   resp.data.items[0].data_replication_info.data_replication_error #=> Types::DataReplicationError
    #   resp.data.items[0].data_replication_info.data_replication_error.error #=> String, one of ["AGENT_NOT_SEEN", "SNAPSHOTS_FAILURE", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_CREATE_SECURITY_GROUP", "FAILED_TO_LAUNCH_REPLICATION_SERVER", "FAILED_TO_BOOT_REPLICATION_SERVER", "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "FAILED_TO_CREATE_STAGING_DISKS", "FAILED_TO_ATTACH_STAGING_DISKS", "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "FAILED_TO_START_DATA_TRANSFER", "UNSUPPORTED_VM_CONFIGURATION", "LAST_SNAPSHOT_JOB_FAILED"]
    #   resp.data.items[0].data_replication_info.data_replication_error.raw_error #=> String
    #   resp.data.items[0].data_replication_info.last_snapshot_date_time #=> String
    #   resp.data.items[0].life_cycle #=> Types::LifeCycle
    #   resp.data.items[0].life_cycle.added_to_service_date_time #=> String
    #   resp.data.items[0].life_cycle.first_byte_date_time #=> String
    #   resp.data.items[0].life_cycle.elapsed_replication_duration #=> String
    #   resp.data.items[0].life_cycle.last_seen_by_service_date_time #=> String
    #   resp.data.items[0].life_cycle.last_test #=> Types::LifeCycleLastTest
    #   resp.data.items[0].life_cycle.last_test.initiated #=> Types::LifeCycleLastTestInitiated
    #   resp.data.items[0].life_cycle.last_test.initiated.api_call_date_time #=> String
    #   resp.data.items[0].life_cycle.last_test.initiated.job_id #=> String
    #   resp.data.items[0].life_cycle.last_test.reverted #=> Types::LifeCycleLastTestReverted
    #   resp.data.items[0].life_cycle.last_test.reverted.api_call_date_time #=> String
    #   resp.data.items[0].life_cycle.last_test.finalized #=> Types::LifeCycleLastTestFinalized
    #   resp.data.items[0].life_cycle.last_test.finalized.api_call_date_time #=> String
    #   resp.data.items[0].life_cycle.last_cutover #=> Types::LifeCycleLastCutover
    #   resp.data.items[0].life_cycle.last_cutover.initiated #=> Types::LifeCycleLastCutoverInitiated
    #   resp.data.items[0].life_cycle.last_cutover.initiated.api_call_date_time #=> String
    #   resp.data.items[0].life_cycle.last_cutover.initiated.job_id #=> String
    #   resp.data.items[0].life_cycle.last_cutover.reverted #=> Types::LifeCycleLastCutoverReverted
    #   resp.data.items[0].life_cycle.last_cutover.reverted.api_call_date_time #=> String
    #   resp.data.items[0].life_cycle.last_cutover.finalized #=> Types::LifeCycleLastCutoverFinalized
    #   resp.data.items[0].life_cycle.last_cutover.finalized.api_call_date_time #=> String
    #   resp.data.items[0].life_cycle.state #=> String, one of ["STOPPED", "NOT_READY", "READY_FOR_TEST", "TESTING", "READY_FOR_CUTOVER", "CUTTING_OVER", "CUTOVER", "DISCONNECTED", "DISCOVERED"]
    #   resp.data.items[0].source_properties #=> Types::SourceProperties
    #   resp.data.items[0].source_properties.last_updated_date_time #=> String
    #   resp.data.items[0].source_properties.recommended_instance_type #=> String
    #   resp.data.items[0].source_properties.identification_hints #=> Types::IdentificationHints
    #   resp.data.items[0].source_properties.identification_hints.fqdn #=> String
    #   resp.data.items[0].source_properties.identification_hints.hostname #=> String
    #   resp.data.items[0].source_properties.identification_hints.vm_ware_uuid #=> String
    #   resp.data.items[0].source_properties.identification_hints.aws_instance_id #=> String
    #   resp.data.items[0].source_properties.identification_hints.vm_path #=> String
    #   resp.data.items[0].source_properties.network_interfaces #=> Array<NetworkInterface>
    #   resp.data.items[0].source_properties.network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.items[0].source_properties.network_interfaces[0].mac_address #=> String
    #   resp.data.items[0].source_properties.network_interfaces[0].ips #=> Array<String>
    #   resp.data.items[0].source_properties.network_interfaces[0].ips[0] #=> String
    #   resp.data.items[0].source_properties.network_interfaces[0].is_primary #=> Boolean
    #   resp.data.items[0].source_properties.disks #=> Array<Disk>
    #   resp.data.items[0].source_properties.disks[0] #=> Types::Disk
    #   resp.data.items[0].source_properties.disks[0].device_name #=> String
    #   resp.data.items[0].source_properties.disks[0].bytes #=> Integer
    #   resp.data.items[0].source_properties.cpus #=> Array<CPU>
    #   resp.data.items[0].source_properties.cpus[0] #=> Types::CPU
    #   resp.data.items[0].source_properties.cpus[0].cores #=> Integer
    #   resp.data.items[0].source_properties.cpus[0].model_name #=> String
    #   resp.data.items[0].source_properties.ram_bytes #=> Integer
    #   resp.data.items[0].source_properties.os #=> Types::OS
    #   resp.data.items[0].source_properties.os.full_string #=> String
    #   resp.data.items[0].replication_type #=> String, one of ["AGENT_BASED", "SNAPSHOT_SHIPPING"]
    #   resp.data.items[0].vcenter_client_id #=> String
    #   resp.data.next_token #=> String
    #
    def describe_source_servers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSourceServersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeSourceServersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeSourceServers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::UninitializedAccountException]),
        data_parser: Parsers::DescribeSourceServers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeSourceServers,
        stubs: @stubs,
        params_class: Params::DescribeSourceServersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_source_servers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the installed vCenter clients.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeVcenterClientsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>Maximum results to be returned in DescribeVcenterClients.</p>
    #
    # @option params [String] :next_token
    #   <p>Next pagination token to be provided for DescribeVcenterClients.</p>
    #
    # @return [Types::DescribeVcenterClientsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_vcenter_clients(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeVcenterClientsOutput
    #   resp.data.items #=> Array<VcenterClient>
    #   resp.data.items[0] #=> Types::VcenterClient
    #   resp.data.items[0].vcenter_client_id #=> String
    #   resp.data.items[0].arn #=> String
    #   resp.data.items[0].hostname #=> String
    #   resp.data.items[0].vcenter_uuid #=> String
    #   resp.data.items[0].datacenter_name #=> String
    #   resp.data.items[0].last_seen_datetime #=> String
    #   resp.data.items[0].source_server_tags #=> Hash<String, String>
    #   resp.data.items[0].source_server_tags['key'] #=> String
    #   resp.data.items[0].tags #=> Hash<String, String>
    #   resp.data.next_token #=> String
    #
    def describe_vcenter_clients(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeVcenterClientsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeVcenterClientsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeVcenterClients
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::UninitializedAccountException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeVcenterClients
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeVcenterClients,
        stubs: @stubs,
        params_class: Params::DescribeVcenterClientsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_vcenter_clients
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disconnects specific Source Servers from Application Migration Service. Data replication is stopped immediately. All AWS resources created by Application Migration Service for enabling the replication of these source servers will be terminated / deleted within 90 minutes. Launched Test or Cutover instances will NOT be terminated. If the agent on the source server has not been prevented from communicating with the Application Migration Service service, then it will receive a command to uninstall itself (within approximately 10 minutes). The following properties of the SourceServer will be changed immediately: dataReplicationInfo.dataReplicationState will be set to DISCONNECTED; The totalStorageBytes property for each of dataReplicationInfo.replicatedDisks will be set to zero; dataReplicationInfo.lagDuration and dataReplicationInfo.lagDuration will be nullified.</p>
    #
    # @param [Hash] params
    #   See {Types::DisconnectFromServiceInput}.
    #
    # @option params [String] :source_server_id
    #   <p>Request to disconnect Source Server from service by Server ID.</p>
    #
    # @return [Types::DisconnectFromServiceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disconnect_from_service(
    #     source_server_id: 'sourceServerID' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisconnectFromServiceOutput
    #   resp.data.source_server_id #=> String
    #   resp.data.arn #=> String
    #   resp.data.is_archived #=> Boolean
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.launched_instance #=> Types::LaunchedInstance
    #   resp.data.launched_instance.ec2_instance_id #=> String
    #   resp.data.launched_instance.job_id #=> String
    #   resp.data.launched_instance.first_boot #=> String, one of ["WAITING", "SUCCEEDED", "UNKNOWN", "STOPPED"]
    #   resp.data.data_replication_info #=> Types::DataReplicationInfo
    #   resp.data.data_replication_info.lag_duration #=> String
    #   resp.data.data_replication_info.eta_date_time #=> String
    #   resp.data.data_replication_info.replicated_disks #=> Array<DataReplicationInfoReplicatedDisk>
    #   resp.data.data_replication_info.replicated_disks[0] #=> Types::DataReplicationInfoReplicatedDisk
    #   resp.data.data_replication_info.replicated_disks[0].device_name #=> String
    #   resp.data.data_replication_info.replicated_disks[0].total_storage_bytes #=> Integer
    #   resp.data.data_replication_info.replicated_disks[0].replicated_storage_bytes #=> Integer
    #   resp.data.data_replication_info.replicated_disks[0].rescanned_storage_bytes #=> Integer
    #   resp.data.data_replication_info.replicated_disks[0].backlogged_storage_bytes #=> Integer
    #   resp.data.data_replication_info.data_replication_state #=> String, one of ["STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED", "PENDING_SNAPSHOT_SHIPPING", "SHIPPING_SNAPSHOT"]
    #   resp.data.data_replication_info.data_replication_initiation #=> Types::DataReplicationInitiation
    #   resp.data.data_replication_info.data_replication_initiation.start_date_time #=> String
    #   resp.data.data_replication_info.data_replication_initiation.next_attempt_date_time #=> String
    #   resp.data.data_replication_info.data_replication_initiation.steps #=> Array<DataReplicationInitiationStep>
    #   resp.data.data_replication_info.data_replication_initiation.steps[0] #=> Types::DataReplicationInitiationStep
    #   resp.data.data_replication_info.data_replication_initiation.steps[0].name #=> String, one of ["WAIT", "CREATE_SECURITY_GROUP", "LAUNCH_REPLICATION_SERVER", "BOOT_REPLICATION_SERVER", "AUTHENTICATE_WITH_SERVICE", "DOWNLOAD_REPLICATION_SOFTWARE", "CREATE_STAGING_DISKS", "ATTACH_STAGING_DISKS", "PAIR_REPLICATION_SERVER_WITH_AGENT", "CONNECT_AGENT_TO_REPLICATION_SERVER", "START_DATA_TRANSFER"]
    #   resp.data.data_replication_info.data_replication_initiation.steps[0].status #=> String, one of ["NOT_STARTED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "SKIPPED"]
    #   resp.data.data_replication_info.data_replication_error #=> Types::DataReplicationError
    #   resp.data.data_replication_info.data_replication_error.error #=> String, one of ["AGENT_NOT_SEEN", "SNAPSHOTS_FAILURE", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_CREATE_SECURITY_GROUP", "FAILED_TO_LAUNCH_REPLICATION_SERVER", "FAILED_TO_BOOT_REPLICATION_SERVER", "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "FAILED_TO_CREATE_STAGING_DISKS", "FAILED_TO_ATTACH_STAGING_DISKS", "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "FAILED_TO_START_DATA_TRANSFER", "UNSUPPORTED_VM_CONFIGURATION", "LAST_SNAPSHOT_JOB_FAILED"]
    #   resp.data.data_replication_info.data_replication_error.raw_error #=> String
    #   resp.data.data_replication_info.last_snapshot_date_time #=> String
    #   resp.data.life_cycle #=> Types::LifeCycle
    #   resp.data.life_cycle.added_to_service_date_time #=> String
    #   resp.data.life_cycle.first_byte_date_time #=> String
    #   resp.data.life_cycle.elapsed_replication_duration #=> String
    #   resp.data.life_cycle.last_seen_by_service_date_time #=> String
    #   resp.data.life_cycle.last_test #=> Types::LifeCycleLastTest
    #   resp.data.life_cycle.last_test.initiated #=> Types::LifeCycleLastTestInitiated
    #   resp.data.life_cycle.last_test.initiated.api_call_date_time #=> String
    #   resp.data.life_cycle.last_test.initiated.job_id #=> String
    #   resp.data.life_cycle.last_test.reverted #=> Types::LifeCycleLastTestReverted
    #   resp.data.life_cycle.last_test.reverted.api_call_date_time #=> String
    #   resp.data.life_cycle.last_test.finalized #=> Types::LifeCycleLastTestFinalized
    #   resp.data.life_cycle.last_test.finalized.api_call_date_time #=> String
    #   resp.data.life_cycle.last_cutover #=> Types::LifeCycleLastCutover
    #   resp.data.life_cycle.last_cutover.initiated #=> Types::LifeCycleLastCutoverInitiated
    #   resp.data.life_cycle.last_cutover.initiated.api_call_date_time #=> String
    #   resp.data.life_cycle.last_cutover.initiated.job_id #=> String
    #   resp.data.life_cycle.last_cutover.reverted #=> Types::LifeCycleLastCutoverReverted
    #   resp.data.life_cycle.last_cutover.reverted.api_call_date_time #=> String
    #   resp.data.life_cycle.last_cutover.finalized #=> Types::LifeCycleLastCutoverFinalized
    #   resp.data.life_cycle.last_cutover.finalized.api_call_date_time #=> String
    #   resp.data.life_cycle.state #=> String, one of ["STOPPED", "NOT_READY", "READY_FOR_TEST", "TESTING", "READY_FOR_CUTOVER", "CUTTING_OVER", "CUTOVER", "DISCONNECTED", "DISCOVERED"]
    #   resp.data.source_properties #=> Types::SourceProperties
    #   resp.data.source_properties.last_updated_date_time #=> String
    #   resp.data.source_properties.recommended_instance_type #=> String
    #   resp.data.source_properties.identification_hints #=> Types::IdentificationHints
    #   resp.data.source_properties.identification_hints.fqdn #=> String
    #   resp.data.source_properties.identification_hints.hostname #=> String
    #   resp.data.source_properties.identification_hints.vm_ware_uuid #=> String
    #   resp.data.source_properties.identification_hints.aws_instance_id #=> String
    #   resp.data.source_properties.identification_hints.vm_path #=> String
    #   resp.data.source_properties.network_interfaces #=> Array<NetworkInterface>
    #   resp.data.source_properties.network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.source_properties.network_interfaces[0].mac_address #=> String
    #   resp.data.source_properties.network_interfaces[0].ips #=> Array<String>
    #   resp.data.source_properties.network_interfaces[0].ips[0] #=> String
    #   resp.data.source_properties.network_interfaces[0].is_primary #=> Boolean
    #   resp.data.source_properties.disks #=> Array<Disk>
    #   resp.data.source_properties.disks[0] #=> Types::Disk
    #   resp.data.source_properties.disks[0].device_name #=> String
    #   resp.data.source_properties.disks[0].bytes #=> Integer
    #   resp.data.source_properties.cpus #=> Array<CPU>
    #   resp.data.source_properties.cpus[0] #=> Types::CPU
    #   resp.data.source_properties.cpus[0].cores #=> Integer
    #   resp.data.source_properties.cpus[0].model_name #=> String
    #   resp.data.source_properties.ram_bytes #=> Integer
    #   resp.data.source_properties.os #=> Types::OS
    #   resp.data.source_properties.os.full_string #=> String
    #   resp.data.replication_type #=> String, one of ["AGENT_BASED", "SNAPSHOT_SHIPPING"]
    #   resp.data.vcenter_client_id #=> String
    #
    def disconnect_from_service(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisconnectFromServiceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisconnectFromServiceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisconnectFromService
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::UninitializedAccountException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DisconnectFromService
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisconnectFromService,
        stubs: @stubs,
        params_class: Params::DisconnectFromServiceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disconnect_from_service
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Finalizes the cutover immediately for specific Source Servers. All AWS resources created by Application Migration Service for enabling the replication of these source servers will be terminated / deleted within 90 minutes. Launched Test or Cutover instances will NOT be terminated. The AWS Replication Agent will receive a command to uninstall itself (within 10 minutes). The following properties of the SourceServer will be changed immediately: dataReplicationInfo.dataReplicationState will be changed to DISCONNECTED; The SourceServer.lifeCycle.state will be changed to CUTOVER; The totalStorageBytes property fo each of dataReplicationInfo.replicatedDisks will be set to zero; dataReplicationInfo.lagDuration and dataReplicationInfo.lagDuration will be nullified.</p>
    #
    # @param [Hash] params
    #   See {Types::FinalizeCutoverInput}.
    #
    # @option params [String] :source_server_id
    #   <p>Request to finalize Cutover by Source Server ID.</p>
    #
    # @return [Types::FinalizeCutoverOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.finalize_cutover(
    #     source_server_id: 'sourceServerID' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::FinalizeCutoverOutput
    #   resp.data.source_server_id #=> String
    #   resp.data.arn #=> String
    #   resp.data.is_archived #=> Boolean
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.launched_instance #=> Types::LaunchedInstance
    #   resp.data.launched_instance.ec2_instance_id #=> String
    #   resp.data.launched_instance.job_id #=> String
    #   resp.data.launched_instance.first_boot #=> String, one of ["WAITING", "SUCCEEDED", "UNKNOWN", "STOPPED"]
    #   resp.data.data_replication_info #=> Types::DataReplicationInfo
    #   resp.data.data_replication_info.lag_duration #=> String
    #   resp.data.data_replication_info.eta_date_time #=> String
    #   resp.data.data_replication_info.replicated_disks #=> Array<DataReplicationInfoReplicatedDisk>
    #   resp.data.data_replication_info.replicated_disks[0] #=> Types::DataReplicationInfoReplicatedDisk
    #   resp.data.data_replication_info.replicated_disks[0].device_name #=> String
    #   resp.data.data_replication_info.replicated_disks[0].total_storage_bytes #=> Integer
    #   resp.data.data_replication_info.replicated_disks[0].replicated_storage_bytes #=> Integer
    #   resp.data.data_replication_info.replicated_disks[0].rescanned_storage_bytes #=> Integer
    #   resp.data.data_replication_info.replicated_disks[0].backlogged_storage_bytes #=> Integer
    #   resp.data.data_replication_info.data_replication_state #=> String, one of ["STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED", "PENDING_SNAPSHOT_SHIPPING", "SHIPPING_SNAPSHOT"]
    #   resp.data.data_replication_info.data_replication_initiation #=> Types::DataReplicationInitiation
    #   resp.data.data_replication_info.data_replication_initiation.start_date_time #=> String
    #   resp.data.data_replication_info.data_replication_initiation.next_attempt_date_time #=> String
    #   resp.data.data_replication_info.data_replication_initiation.steps #=> Array<DataReplicationInitiationStep>
    #   resp.data.data_replication_info.data_replication_initiation.steps[0] #=> Types::DataReplicationInitiationStep
    #   resp.data.data_replication_info.data_replication_initiation.steps[0].name #=> String, one of ["WAIT", "CREATE_SECURITY_GROUP", "LAUNCH_REPLICATION_SERVER", "BOOT_REPLICATION_SERVER", "AUTHENTICATE_WITH_SERVICE", "DOWNLOAD_REPLICATION_SOFTWARE", "CREATE_STAGING_DISKS", "ATTACH_STAGING_DISKS", "PAIR_REPLICATION_SERVER_WITH_AGENT", "CONNECT_AGENT_TO_REPLICATION_SERVER", "START_DATA_TRANSFER"]
    #   resp.data.data_replication_info.data_replication_initiation.steps[0].status #=> String, one of ["NOT_STARTED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "SKIPPED"]
    #   resp.data.data_replication_info.data_replication_error #=> Types::DataReplicationError
    #   resp.data.data_replication_info.data_replication_error.error #=> String, one of ["AGENT_NOT_SEEN", "SNAPSHOTS_FAILURE", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_CREATE_SECURITY_GROUP", "FAILED_TO_LAUNCH_REPLICATION_SERVER", "FAILED_TO_BOOT_REPLICATION_SERVER", "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "FAILED_TO_CREATE_STAGING_DISKS", "FAILED_TO_ATTACH_STAGING_DISKS", "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "FAILED_TO_START_DATA_TRANSFER", "UNSUPPORTED_VM_CONFIGURATION", "LAST_SNAPSHOT_JOB_FAILED"]
    #   resp.data.data_replication_info.data_replication_error.raw_error #=> String
    #   resp.data.data_replication_info.last_snapshot_date_time #=> String
    #   resp.data.life_cycle #=> Types::LifeCycle
    #   resp.data.life_cycle.added_to_service_date_time #=> String
    #   resp.data.life_cycle.first_byte_date_time #=> String
    #   resp.data.life_cycle.elapsed_replication_duration #=> String
    #   resp.data.life_cycle.last_seen_by_service_date_time #=> String
    #   resp.data.life_cycle.last_test #=> Types::LifeCycleLastTest
    #   resp.data.life_cycle.last_test.initiated #=> Types::LifeCycleLastTestInitiated
    #   resp.data.life_cycle.last_test.initiated.api_call_date_time #=> String
    #   resp.data.life_cycle.last_test.initiated.job_id #=> String
    #   resp.data.life_cycle.last_test.reverted #=> Types::LifeCycleLastTestReverted
    #   resp.data.life_cycle.last_test.reverted.api_call_date_time #=> String
    #   resp.data.life_cycle.last_test.finalized #=> Types::LifeCycleLastTestFinalized
    #   resp.data.life_cycle.last_test.finalized.api_call_date_time #=> String
    #   resp.data.life_cycle.last_cutover #=> Types::LifeCycleLastCutover
    #   resp.data.life_cycle.last_cutover.initiated #=> Types::LifeCycleLastCutoverInitiated
    #   resp.data.life_cycle.last_cutover.initiated.api_call_date_time #=> String
    #   resp.data.life_cycle.last_cutover.initiated.job_id #=> String
    #   resp.data.life_cycle.last_cutover.reverted #=> Types::LifeCycleLastCutoverReverted
    #   resp.data.life_cycle.last_cutover.reverted.api_call_date_time #=> String
    #   resp.data.life_cycle.last_cutover.finalized #=> Types::LifeCycleLastCutoverFinalized
    #   resp.data.life_cycle.last_cutover.finalized.api_call_date_time #=> String
    #   resp.data.life_cycle.state #=> String, one of ["STOPPED", "NOT_READY", "READY_FOR_TEST", "TESTING", "READY_FOR_CUTOVER", "CUTTING_OVER", "CUTOVER", "DISCONNECTED", "DISCOVERED"]
    #   resp.data.source_properties #=> Types::SourceProperties
    #   resp.data.source_properties.last_updated_date_time #=> String
    #   resp.data.source_properties.recommended_instance_type #=> String
    #   resp.data.source_properties.identification_hints #=> Types::IdentificationHints
    #   resp.data.source_properties.identification_hints.fqdn #=> String
    #   resp.data.source_properties.identification_hints.hostname #=> String
    #   resp.data.source_properties.identification_hints.vm_ware_uuid #=> String
    #   resp.data.source_properties.identification_hints.aws_instance_id #=> String
    #   resp.data.source_properties.identification_hints.vm_path #=> String
    #   resp.data.source_properties.network_interfaces #=> Array<NetworkInterface>
    #   resp.data.source_properties.network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.source_properties.network_interfaces[0].mac_address #=> String
    #   resp.data.source_properties.network_interfaces[0].ips #=> Array<String>
    #   resp.data.source_properties.network_interfaces[0].ips[0] #=> String
    #   resp.data.source_properties.network_interfaces[0].is_primary #=> Boolean
    #   resp.data.source_properties.disks #=> Array<Disk>
    #   resp.data.source_properties.disks[0] #=> Types::Disk
    #   resp.data.source_properties.disks[0].device_name #=> String
    #   resp.data.source_properties.disks[0].bytes #=> Integer
    #   resp.data.source_properties.cpus #=> Array<CPU>
    #   resp.data.source_properties.cpus[0] #=> Types::CPU
    #   resp.data.source_properties.cpus[0].cores #=> Integer
    #   resp.data.source_properties.cpus[0].model_name #=> String
    #   resp.data.source_properties.ram_bytes #=> Integer
    #   resp.data.source_properties.os #=> Types::OS
    #   resp.data.source_properties.os.full_string #=> String
    #   resp.data.replication_type #=> String, one of ["AGENT_BASED", "SNAPSHOT_SHIPPING"]
    #   resp.data.vcenter_client_id #=> String
    #
    def finalize_cutover(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::FinalizeCutoverInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::FinalizeCutoverInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::FinalizeCutover
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::UninitializedAccountException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::FinalizeCutover
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::FinalizeCutover,
        stubs: @stubs,
        params_class: Params::FinalizeCutoverOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :finalize_cutover
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all LaunchConfigurations available, filtered by Source Server IDs.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLaunchConfigurationInput}.
    #
    # @option params [String] :source_server_id
    #   <p>Request to get Launch Configuration information by Source Server ID.</p>
    #
    # @return [Types::GetLaunchConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_launch_configuration(
    #     source_server_id: 'sourceServerID' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLaunchConfigurationOutput
    #   resp.data.source_server_id #=> String
    #   resp.data.name #=> String
    #   resp.data.ec2_launch_template_id #=> String
    #   resp.data.launch_disposition #=> String, one of ["STOPPED", "STARTED"]
    #   resp.data.target_instance_type_right_sizing_method #=> String, one of ["NONE", "BASIC"]
    #   resp.data.copy_private_ip #=> Boolean
    #   resp.data.copy_tags #=> Boolean
    #   resp.data.licensing #=> Types::Licensing
    #   resp.data.licensing.os_byol #=> Boolean
    #   resp.data.boot_mode #=> String, one of ["LEGACY_BIOS", "UEFI"]
    #
    def get_launch_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLaunchConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLaunchConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLaunchConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UninitializedAccountException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetLaunchConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLaunchConfiguration,
        stubs: @stubs,
        params_class: Params::GetLaunchConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_launch_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all ReplicationConfigurations, filtered by Source Server ID.</p>
    #
    # @param [Hash] params
    #   See {Types::GetReplicationConfigurationInput}.
    #
    # @option params [String] :source_server_id
    #   <p>Request to get Replication Configuration by Source Server ID.</p>
    #
    # @return [Types::GetReplicationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_replication_configuration(
    #     source_server_id: 'sourceServerID' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetReplicationConfigurationOutput
    #   resp.data.source_server_id #=> String
    #   resp.data.name #=> String
    #   resp.data.staging_area_subnet_id #=> String
    #   resp.data.associate_default_security_group #=> Boolean
    #   resp.data.replication_servers_security_groups_i_ds #=> Array<String>
    #   resp.data.replication_servers_security_groups_i_ds[0] #=> String
    #   resp.data.replication_server_instance_type #=> String
    #   resp.data.use_dedicated_replication_server #=> Boolean
    #   resp.data.default_large_staging_disk_type #=> String, one of ["GP2", "ST1", "GP3"]
    #   resp.data.replicated_disks #=> Array<ReplicationConfigurationReplicatedDisk>
    #   resp.data.replicated_disks[0] #=> Types::ReplicationConfigurationReplicatedDisk
    #   resp.data.replicated_disks[0].device_name #=> String
    #   resp.data.replicated_disks[0].is_boot_disk #=> Boolean
    #   resp.data.replicated_disks[0].staging_disk_type #=> String, one of ["AUTO", "GP2", "IO1", "SC1", "ST1", "STANDARD", "GP3", "IO2"]
    #   resp.data.replicated_disks[0].iops #=> Integer
    #   resp.data.replicated_disks[0].throughput #=> Integer
    #   resp.data.ebs_encryption #=> String, one of ["DEFAULT", "CUSTOM"]
    #   resp.data.ebs_encryption_key_arn #=> String
    #   resp.data.bandwidth_throttling #=> Integer
    #   resp.data.data_plane_routing #=> String, one of ["PRIVATE_IP", "PUBLIC_IP"]
    #   resp.data.create_public_ip #=> Boolean
    #   resp.data.staging_area_tags #=> Hash<String, String>
    #   resp.data.staging_area_tags['key'] #=> String
    #
    def get_replication_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetReplicationConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetReplicationConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetReplicationConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UninitializedAccountException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetReplicationConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetReplicationConfiguration,
        stubs: @stubs,
        params_class: Params::GetReplicationConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_replication_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Initialize Application Migration Service.</p>
    #
    # @param [Hash] params
    #   See {Types::InitializeServiceInput}.
    #
    # @return [Types::InitializeServiceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.initialize_service()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::InitializeServiceOutput
    #
    def initialize_service(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::InitializeServiceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::InitializeServiceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::InitializeService
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::InitializeService
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::InitializeService,
        stubs: @stubs,
        params_class: Params::InitializeServiceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :initialize_service
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List all tags for your Application Migration Service resources.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>List tags for resource request by ARN.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'resourceArn' # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
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

    # <p>Archives specific Source Servers by setting the SourceServer.isArchived property to true for specified SourceServers by ID. This command only works for SourceServers with a lifecycle. state which equals DISCONNECTED or CUTOVER.</p>
    #
    # @param [Hash] params
    #   See {Types::MarkAsArchivedInput}.
    #
    # @option params [String] :source_server_id
    #   <p>Mark as archived by Source Server ID.</p>
    #
    # @return [Types::MarkAsArchivedOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.mark_as_archived(
    #     source_server_id: 'sourceServerID' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::MarkAsArchivedOutput
    #   resp.data.source_server_id #=> String
    #   resp.data.arn #=> String
    #   resp.data.is_archived #=> Boolean
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.launched_instance #=> Types::LaunchedInstance
    #   resp.data.launched_instance.ec2_instance_id #=> String
    #   resp.data.launched_instance.job_id #=> String
    #   resp.data.launched_instance.first_boot #=> String, one of ["WAITING", "SUCCEEDED", "UNKNOWN", "STOPPED"]
    #   resp.data.data_replication_info #=> Types::DataReplicationInfo
    #   resp.data.data_replication_info.lag_duration #=> String
    #   resp.data.data_replication_info.eta_date_time #=> String
    #   resp.data.data_replication_info.replicated_disks #=> Array<DataReplicationInfoReplicatedDisk>
    #   resp.data.data_replication_info.replicated_disks[0] #=> Types::DataReplicationInfoReplicatedDisk
    #   resp.data.data_replication_info.replicated_disks[0].device_name #=> String
    #   resp.data.data_replication_info.replicated_disks[0].total_storage_bytes #=> Integer
    #   resp.data.data_replication_info.replicated_disks[0].replicated_storage_bytes #=> Integer
    #   resp.data.data_replication_info.replicated_disks[0].rescanned_storage_bytes #=> Integer
    #   resp.data.data_replication_info.replicated_disks[0].backlogged_storage_bytes #=> Integer
    #   resp.data.data_replication_info.data_replication_state #=> String, one of ["STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED", "PENDING_SNAPSHOT_SHIPPING", "SHIPPING_SNAPSHOT"]
    #   resp.data.data_replication_info.data_replication_initiation #=> Types::DataReplicationInitiation
    #   resp.data.data_replication_info.data_replication_initiation.start_date_time #=> String
    #   resp.data.data_replication_info.data_replication_initiation.next_attempt_date_time #=> String
    #   resp.data.data_replication_info.data_replication_initiation.steps #=> Array<DataReplicationInitiationStep>
    #   resp.data.data_replication_info.data_replication_initiation.steps[0] #=> Types::DataReplicationInitiationStep
    #   resp.data.data_replication_info.data_replication_initiation.steps[0].name #=> String, one of ["WAIT", "CREATE_SECURITY_GROUP", "LAUNCH_REPLICATION_SERVER", "BOOT_REPLICATION_SERVER", "AUTHENTICATE_WITH_SERVICE", "DOWNLOAD_REPLICATION_SOFTWARE", "CREATE_STAGING_DISKS", "ATTACH_STAGING_DISKS", "PAIR_REPLICATION_SERVER_WITH_AGENT", "CONNECT_AGENT_TO_REPLICATION_SERVER", "START_DATA_TRANSFER"]
    #   resp.data.data_replication_info.data_replication_initiation.steps[0].status #=> String, one of ["NOT_STARTED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "SKIPPED"]
    #   resp.data.data_replication_info.data_replication_error #=> Types::DataReplicationError
    #   resp.data.data_replication_info.data_replication_error.error #=> String, one of ["AGENT_NOT_SEEN", "SNAPSHOTS_FAILURE", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_CREATE_SECURITY_GROUP", "FAILED_TO_LAUNCH_REPLICATION_SERVER", "FAILED_TO_BOOT_REPLICATION_SERVER", "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "FAILED_TO_CREATE_STAGING_DISKS", "FAILED_TO_ATTACH_STAGING_DISKS", "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "FAILED_TO_START_DATA_TRANSFER", "UNSUPPORTED_VM_CONFIGURATION", "LAST_SNAPSHOT_JOB_FAILED"]
    #   resp.data.data_replication_info.data_replication_error.raw_error #=> String
    #   resp.data.data_replication_info.last_snapshot_date_time #=> String
    #   resp.data.life_cycle #=> Types::LifeCycle
    #   resp.data.life_cycle.added_to_service_date_time #=> String
    #   resp.data.life_cycle.first_byte_date_time #=> String
    #   resp.data.life_cycle.elapsed_replication_duration #=> String
    #   resp.data.life_cycle.last_seen_by_service_date_time #=> String
    #   resp.data.life_cycle.last_test #=> Types::LifeCycleLastTest
    #   resp.data.life_cycle.last_test.initiated #=> Types::LifeCycleLastTestInitiated
    #   resp.data.life_cycle.last_test.initiated.api_call_date_time #=> String
    #   resp.data.life_cycle.last_test.initiated.job_id #=> String
    #   resp.data.life_cycle.last_test.reverted #=> Types::LifeCycleLastTestReverted
    #   resp.data.life_cycle.last_test.reverted.api_call_date_time #=> String
    #   resp.data.life_cycle.last_test.finalized #=> Types::LifeCycleLastTestFinalized
    #   resp.data.life_cycle.last_test.finalized.api_call_date_time #=> String
    #   resp.data.life_cycle.last_cutover #=> Types::LifeCycleLastCutover
    #   resp.data.life_cycle.last_cutover.initiated #=> Types::LifeCycleLastCutoverInitiated
    #   resp.data.life_cycle.last_cutover.initiated.api_call_date_time #=> String
    #   resp.data.life_cycle.last_cutover.initiated.job_id #=> String
    #   resp.data.life_cycle.last_cutover.reverted #=> Types::LifeCycleLastCutoverReverted
    #   resp.data.life_cycle.last_cutover.reverted.api_call_date_time #=> String
    #   resp.data.life_cycle.last_cutover.finalized #=> Types::LifeCycleLastCutoverFinalized
    #   resp.data.life_cycle.last_cutover.finalized.api_call_date_time #=> String
    #   resp.data.life_cycle.state #=> String, one of ["STOPPED", "NOT_READY", "READY_FOR_TEST", "TESTING", "READY_FOR_CUTOVER", "CUTTING_OVER", "CUTOVER", "DISCONNECTED", "DISCOVERED"]
    #   resp.data.source_properties #=> Types::SourceProperties
    #   resp.data.source_properties.last_updated_date_time #=> String
    #   resp.data.source_properties.recommended_instance_type #=> String
    #   resp.data.source_properties.identification_hints #=> Types::IdentificationHints
    #   resp.data.source_properties.identification_hints.fqdn #=> String
    #   resp.data.source_properties.identification_hints.hostname #=> String
    #   resp.data.source_properties.identification_hints.vm_ware_uuid #=> String
    #   resp.data.source_properties.identification_hints.aws_instance_id #=> String
    #   resp.data.source_properties.identification_hints.vm_path #=> String
    #   resp.data.source_properties.network_interfaces #=> Array<NetworkInterface>
    #   resp.data.source_properties.network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.source_properties.network_interfaces[0].mac_address #=> String
    #   resp.data.source_properties.network_interfaces[0].ips #=> Array<String>
    #   resp.data.source_properties.network_interfaces[0].ips[0] #=> String
    #   resp.data.source_properties.network_interfaces[0].is_primary #=> Boolean
    #   resp.data.source_properties.disks #=> Array<Disk>
    #   resp.data.source_properties.disks[0] #=> Types::Disk
    #   resp.data.source_properties.disks[0].device_name #=> String
    #   resp.data.source_properties.disks[0].bytes #=> Integer
    #   resp.data.source_properties.cpus #=> Array<CPU>
    #   resp.data.source_properties.cpus[0] #=> Types::CPU
    #   resp.data.source_properties.cpus[0].cores #=> Integer
    #   resp.data.source_properties.cpus[0].model_name #=> String
    #   resp.data.source_properties.ram_bytes #=> Integer
    #   resp.data.source_properties.os #=> Types::OS
    #   resp.data.source_properties.os.full_string #=> String
    #   resp.data.replication_type #=> String, one of ["AGENT_BASED", "SNAPSHOT_SHIPPING"]
    #   resp.data.vcenter_client_id #=> String
    #
    def mark_as_archived(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::MarkAsArchivedInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::MarkAsArchivedInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::MarkAsArchived
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::UninitializedAccountException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::MarkAsArchived
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::MarkAsArchived,
        stubs: @stubs,
        params_class: Params::MarkAsArchivedOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :mark_as_archived
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Causes the data replication initiation sequence to begin immediately upon next Handshake for specified SourceServer IDs, regardless of when the previous initiation started. This command will not work if the SourceServer is not stalled or is in a DISCONNECTED or STOPPED state.</p>
    #
    # @param [Hash] params
    #   See {Types::RetryDataReplicationInput}.
    #
    # @option params [String] :source_server_id
    #   <p>Retry data replication for Source Server ID.</p>
    #
    # @return [Types::RetryDataReplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.retry_data_replication(
    #     source_server_id: 'sourceServerID' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RetryDataReplicationOutput
    #   resp.data.source_server_id #=> String
    #   resp.data.arn #=> String
    #   resp.data.is_archived #=> Boolean
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.launched_instance #=> Types::LaunchedInstance
    #   resp.data.launched_instance.ec2_instance_id #=> String
    #   resp.data.launched_instance.job_id #=> String
    #   resp.data.launched_instance.first_boot #=> String, one of ["WAITING", "SUCCEEDED", "UNKNOWN", "STOPPED"]
    #   resp.data.data_replication_info #=> Types::DataReplicationInfo
    #   resp.data.data_replication_info.lag_duration #=> String
    #   resp.data.data_replication_info.eta_date_time #=> String
    #   resp.data.data_replication_info.replicated_disks #=> Array<DataReplicationInfoReplicatedDisk>
    #   resp.data.data_replication_info.replicated_disks[0] #=> Types::DataReplicationInfoReplicatedDisk
    #   resp.data.data_replication_info.replicated_disks[0].device_name #=> String
    #   resp.data.data_replication_info.replicated_disks[0].total_storage_bytes #=> Integer
    #   resp.data.data_replication_info.replicated_disks[0].replicated_storage_bytes #=> Integer
    #   resp.data.data_replication_info.replicated_disks[0].rescanned_storage_bytes #=> Integer
    #   resp.data.data_replication_info.replicated_disks[0].backlogged_storage_bytes #=> Integer
    #   resp.data.data_replication_info.data_replication_state #=> String, one of ["STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED", "PENDING_SNAPSHOT_SHIPPING", "SHIPPING_SNAPSHOT"]
    #   resp.data.data_replication_info.data_replication_initiation #=> Types::DataReplicationInitiation
    #   resp.data.data_replication_info.data_replication_initiation.start_date_time #=> String
    #   resp.data.data_replication_info.data_replication_initiation.next_attempt_date_time #=> String
    #   resp.data.data_replication_info.data_replication_initiation.steps #=> Array<DataReplicationInitiationStep>
    #   resp.data.data_replication_info.data_replication_initiation.steps[0] #=> Types::DataReplicationInitiationStep
    #   resp.data.data_replication_info.data_replication_initiation.steps[0].name #=> String, one of ["WAIT", "CREATE_SECURITY_GROUP", "LAUNCH_REPLICATION_SERVER", "BOOT_REPLICATION_SERVER", "AUTHENTICATE_WITH_SERVICE", "DOWNLOAD_REPLICATION_SOFTWARE", "CREATE_STAGING_DISKS", "ATTACH_STAGING_DISKS", "PAIR_REPLICATION_SERVER_WITH_AGENT", "CONNECT_AGENT_TO_REPLICATION_SERVER", "START_DATA_TRANSFER"]
    #   resp.data.data_replication_info.data_replication_initiation.steps[0].status #=> String, one of ["NOT_STARTED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "SKIPPED"]
    #   resp.data.data_replication_info.data_replication_error #=> Types::DataReplicationError
    #   resp.data.data_replication_info.data_replication_error.error #=> String, one of ["AGENT_NOT_SEEN", "SNAPSHOTS_FAILURE", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_CREATE_SECURITY_GROUP", "FAILED_TO_LAUNCH_REPLICATION_SERVER", "FAILED_TO_BOOT_REPLICATION_SERVER", "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "FAILED_TO_CREATE_STAGING_DISKS", "FAILED_TO_ATTACH_STAGING_DISKS", "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "FAILED_TO_START_DATA_TRANSFER", "UNSUPPORTED_VM_CONFIGURATION", "LAST_SNAPSHOT_JOB_FAILED"]
    #   resp.data.data_replication_info.data_replication_error.raw_error #=> String
    #   resp.data.data_replication_info.last_snapshot_date_time #=> String
    #   resp.data.life_cycle #=> Types::LifeCycle
    #   resp.data.life_cycle.added_to_service_date_time #=> String
    #   resp.data.life_cycle.first_byte_date_time #=> String
    #   resp.data.life_cycle.elapsed_replication_duration #=> String
    #   resp.data.life_cycle.last_seen_by_service_date_time #=> String
    #   resp.data.life_cycle.last_test #=> Types::LifeCycleLastTest
    #   resp.data.life_cycle.last_test.initiated #=> Types::LifeCycleLastTestInitiated
    #   resp.data.life_cycle.last_test.initiated.api_call_date_time #=> String
    #   resp.data.life_cycle.last_test.initiated.job_id #=> String
    #   resp.data.life_cycle.last_test.reverted #=> Types::LifeCycleLastTestReverted
    #   resp.data.life_cycle.last_test.reverted.api_call_date_time #=> String
    #   resp.data.life_cycle.last_test.finalized #=> Types::LifeCycleLastTestFinalized
    #   resp.data.life_cycle.last_test.finalized.api_call_date_time #=> String
    #   resp.data.life_cycle.last_cutover #=> Types::LifeCycleLastCutover
    #   resp.data.life_cycle.last_cutover.initiated #=> Types::LifeCycleLastCutoverInitiated
    #   resp.data.life_cycle.last_cutover.initiated.api_call_date_time #=> String
    #   resp.data.life_cycle.last_cutover.initiated.job_id #=> String
    #   resp.data.life_cycle.last_cutover.reverted #=> Types::LifeCycleLastCutoverReverted
    #   resp.data.life_cycle.last_cutover.reverted.api_call_date_time #=> String
    #   resp.data.life_cycle.last_cutover.finalized #=> Types::LifeCycleLastCutoverFinalized
    #   resp.data.life_cycle.last_cutover.finalized.api_call_date_time #=> String
    #   resp.data.life_cycle.state #=> String, one of ["STOPPED", "NOT_READY", "READY_FOR_TEST", "TESTING", "READY_FOR_CUTOVER", "CUTTING_OVER", "CUTOVER", "DISCONNECTED", "DISCOVERED"]
    #   resp.data.source_properties #=> Types::SourceProperties
    #   resp.data.source_properties.last_updated_date_time #=> String
    #   resp.data.source_properties.recommended_instance_type #=> String
    #   resp.data.source_properties.identification_hints #=> Types::IdentificationHints
    #   resp.data.source_properties.identification_hints.fqdn #=> String
    #   resp.data.source_properties.identification_hints.hostname #=> String
    #   resp.data.source_properties.identification_hints.vm_ware_uuid #=> String
    #   resp.data.source_properties.identification_hints.aws_instance_id #=> String
    #   resp.data.source_properties.identification_hints.vm_path #=> String
    #   resp.data.source_properties.network_interfaces #=> Array<NetworkInterface>
    #   resp.data.source_properties.network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.source_properties.network_interfaces[0].mac_address #=> String
    #   resp.data.source_properties.network_interfaces[0].ips #=> Array<String>
    #   resp.data.source_properties.network_interfaces[0].ips[0] #=> String
    #   resp.data.source_properties.network_interfaces[0].is_primary #=> Boolean
    #   resp.data.source_properties.disks #=> Array<Disk>
    #   resp.data.source_properties.disks[0] #=> Types::Disk
    #   resp.data.source_properties.disks[0].device_name #=> String
    #   resp.data.source_properties.disks[0].bytes #=> Integer
    #   resp.data.source_properties.cpus #=> Array<CPU>
    #   resp.data.source_properties.cpus[0] #=> Types::CPU
    #   resp.data.source_properties.cpus[0].cores #=> Integer
    #   resp.data.source_properties.cpus[0].model_name #=> String
    #   resp.data.source_properties.ram_bytes #=> Integer
    #   resp.data.source_properties.os #=> Types::OS
    #   resp.data.source_properties.os.full_string #=> String
    #   resp.data.replication_type #=> String, one of ["AGENT_BASED", "SNAPSHOT_SHIPPING"]
    #   resp.data.vcenter_client_id #=> String
    #
    def retry_data_replication(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RetryDataReplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RetryDataReplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RetryDataReplication
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::UninitializedAccountException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::RetryDataReplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RetryDataReplication,
        stubs: @stubs,
        params_class: Params::RetryDataReplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :retry_data_replication
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Launches a Cutover Instance for specific Source Servers. This command starts a LAUNCH job whose initiatedBy property is StartCutover and changes the SourceServer.lifeCycle.state property to CUTTING_OVER.</p>
    #
    # @param [Hash] params
    #   See {Types::StartCutoverInput}.
    #
    # @option params [Array<String>] :source_server_i_ds
    #   <p>Start Cutover by Source Server IDs.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Start Cutover by Tags.</p>
    #
    # @return [Types::StartCutoverOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_cutover(
    #     source_server_i_ds: [
    #       'member'
    #     ], # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartCutoverOutput
    #   resp.data.job #=> Types::Job
    #   resp.data.job.job_id #=> String
    #   resp.data.job.arn #=> String
    #   resp.data.job.type #=> String, one of ["LAUNCH", "TERMINATE"]
    #   resp.data.job.initiated_by #=> String, one of ["START_TEST", "START_CUTOVER", "DIAGNOSTIC", "TERMINATE"]
    #   resp.data.job.creation_date_time #=> String
    #   resp.data.job.end_date_time #=> String
    #   resp.data.job.status #=> String, one of ["PENDING", "STARTED", "COMPLETED"]
    #   resp.data.job.participating_servers #=> Array<ParticipatingServer>
    #   resp.data.job.participating_servers[0] #=> Types::ParticipatingServer
    #   resp.data.job.participating_servers[0].source_server_id #=> String
    #   resp.data.job.participating_servers[0].launch_status #=> String, one of ["PENDING", "IN_PROGRESS", "LAUNCHED", "FAILED", "TERMINATED"]
    #   resp.data.job.tags #=> Hash<String, String>
    #   resp.data.job.tags['key'] #=> String
    #
    def start_cutover(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartCutoverInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartCutoverInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartCutover
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ConflictException, Errors::ValidationException, Errors::UninitializedAccountException]),
        data_parser: Parsers::StartCutover
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartCutover,
        stubs: @stubs,
        params_class: Params::StartCutoverOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_cutover
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts replication for SNAPSHOT_SHIPPING agents.</p>
    #
    # @param [Hash] params
    #   See {Types::StartReplicationInput}.
    #
    # @option params [String] :source_server_id
    #   <p>ID of source server on which to start replication.</p>
    #
    # @return [Types::StartReplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_replication(
    #     source_server_id: 'sourceServerID' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartReplicationOutput
    #   resp.data.source_server_id #=> String
    #   resp.data.arn #=> String
    #   resp.data.is_archived #=> Boolean
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.launched_instance #=> Types::LaunchedInstance
    #   resp.data.launched_instance.ec2_instance_id #=> String
    #   resp.data.launched_instance.job_id #=> String
    #   resp.data.launched_instance.first_boot #=> String, one of ["WAITING", "SUCCEEDED", "UNKNOWN", "STOPPED"]
    #   resp.data.data_replication_info #=> Types::DataReplicationInfo
    #   resp.data.data_replication_info.lag_duration #=> String
    #   resp.data.data_replication_info.eta_date_time #=> String
    #   resp.data.data_replication_info.replicated_disks #=> Array<DataReplicationInfoReplicatedDisk>
    #   resp.data.data_replication_info.replicated_disks[0] #=> Types::DataReplicationInfoReplicatedDisk
    #   resp.data.data_replication_info.replicated_disks[0].device_name #=> String
    #   resp.data.data_replication_info.replicated_disks[0].total_storage_bytes #=> Integer
    #   resp.data.data_replication_info.replicated_disks[0].replicated_storage_bytes #=> Integer
    #   resp.data.data_replication_info.replicated_disks[0].rescanned_storage_bytes #=> Integer
    #   resp.data.data_replication_info.replicated_disks[0].backlogged_storage_bytes #=> Integer
    #   resp.data.data_replication_info.data_replication_state #=> String, one of ["STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED", "PENDING_SNAPSHOT_SHIPPING", "SHIPPING_SNAPSHOT"]
    #   resp.data.data_replication_info.data_replication_initiation #=> Types::DataReplicationInitiation
    #   resp.data.data_replication_info.data_replication_initiation.start_date_time #=> String
    #   resp.data.data_replication_info.data_replication_initiation.next_attempt_date_time #=> String
    #   resp.data.data_replication_info.data_replication_initiation.steps #=> Array<DataReplicationInitiationStep>
    #   resp.data.data_replication_info.data_replication_initiation.steps[0] #=> Types::DataReplicationInitiationStep
    #   resp.data.data_replication_info.data_replication_initiation.steps[0].name #=> String, one of ["WAIT", "CREATE_SECURITY_GROUP", "LAUNCH_REPLICATION_SERVER", "BOOT_REPLICATION_SERVER", "AUTHENTICATE_WITH_SERVICE", "DOWNLOAD_REPLICATION_SOFTWARE", "CREATE_STAGING_DISKS", "ATTACH_STAGING_DISKS", "PAIR_REPLICATION_SERVER_WITH_AGENT", "CONNECT_AGENT_TO_REPLICATION_SERVER", "START_DATA_TRANSFER"]
    #   resp.data.data_replication_info.data_replication_initiation.steps[0].status #=> String, one of ["NOT_STARTED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "SKIPPED"]
    #   resp.data.data_replication_info.data_replication_error #=> Types::DataReplicationError
    #   resp.data.data_replication_info.data_replication_error.error #=> String, one of ["AGENT_NOT_SEEN", "SNAPSHOTS_FAILURE", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_CREATE_SECURITY_GROUP", "FAILED_TO_LAUNCH_REPLICATION_SERVER", "FAILED_TO_BOOT_REPLICATION_SERVER", "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "FAILED_TO_CREATE_STAGING_DISKS", "FAILED_TO_ATTACH_STAGING_DISKS", "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "FAILED_TO_START_DATA_TRANSFER", "UNSUPPORTED_VM_CONFIGURATION", "LAST_SNAPSHOT_JOB_FAILED"]
    #   resp.data.data_replication_info.data_replication_error.raw_error #=> String
    #   resp.data.data_replication_info.last_snapshot_date_time #=> String
    #   resp.data.life_cycle #=> Types::LifeCycle
    #   resp.data.life_cycle.added_to_service_date_time #=> String
    #   resp.data.life_cycle.first_byte_date_time #=> String
    #   resp.data.life_cycle.elapsed_replication_duration #=> String
    #   resp.data.life_cycle.last_seen_by_service_date_time #=> String
    #   resp.data.life_cycle.last_test #=> Types::LifeCycleLastTest
    #   resp.data.life_cycle.last_test.initiated #=> Types::LifeCycleLastTestInitiated
    #   resp.data.life_cycle.last_test.initiated.api_call_date_time #=> String
    #   resp.data.life_cycle.last_test.initiated.job_id #=> String
    #   resp.data.life_cycle.last_test.reverted #=> Types::LifeCycleLastTestReverted
    #   resp.data.life_cycle.last_test.reverted.api_call_date_time #=> String
    #   resp.data.life_cycle.last_test.finalized #=> Types::LifeCycleLastTestFinalized
    #   resp.data.life_cycle.last_test.finalized.api_call_date_time #=> String
    #   resp.data.life_cycle.last_cutover #=> Types::LifeCycleLastCutover
    #   resp.data.life_cycle.last_cutover.initiated #=> Types::LifeCycleLastCutoverInitiated
    #   resp.data.life_cycle.last_cutover.initiated.api_call_date_time #=> String
    #   resp.data.life_cycle.last_cutover.initiated.job_id #=> String
    #   resp.data.life_cycle.last_cutover.reverted #=> Types::LifeCycleLastCutoverReverted
    #   resp.data.life_cycle.last_cutover.reverted.api_call_date_time #=> String
    #   resp.data.life_cycle.last_cutover.finalized #=> Types::LifeCycleLastCutoverFinalized
    #   resp.data.life_cycle.last_cutover.finalized.api_call_date_time #=> String
    #   resp.data.life_cycle.state #=> String, one of ["STOPPED", "NOT_READY", "READY_FOR_TEST", "TESTING", "READY_FOR_CUTOVER", "CUTTING_OVER", "CUTOVER", "DISCONNECTED", "DISCOVERED"]
    #   resp.data.source_properties #=> Types::SourceProperties
    #   resp.data.source_properties.last_updated_date_time #=> String
    #   resp.data.source_properties.recommended_instance_type #=> String
    #   resp.data.source_properties.identification_hints #=> Types::IdentificationHints
    #   resp.data.source_properties.identification_hints.fqdn #=> String
    #   resp.data.source_properties.identification_hints.hostname #=> String
    #   resp.data.source_properties.identification_hints.vm_ware_uuid #=> String
    #   resp.data.source_properties.identification_hints.aws_instance_id #=> String
    #   resp.data.source_properties.identification_hints.vm_path #=> String
    #   resp.data.source_properties.network_interfaces #=> Array<NetworkInterface>
    #   resp.data.source_properties.network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.source_properties.network_interfaces[0].mac_address #=> String
    #   resp.data.source_properties.network_interfaces[0].ips #=> Array<String>
    #   resp.data.source_properties.network_interfaces[0].ips[0] #=> String
    #   resp.data.source_properties.network_interfaces[0].is_primary #=> Boolean
    #   resp.data.source_properties.disks #=> Array<Disk>
    #   resp.data.source_properties.disks[0] #=> Types::Disk
    #   resp.data.source_properties.disks[0].device_name #=> String
    #   resp.data.source_properties.disks[0].bytes #=> Integer
    #   resp.data.source_properties.cpus #=> Array<CPU>
    #   resp.data.source_properties.cpus[0] #=> Types::CPU
    #   resp.data.source_properties.cpus[0].cores #=> Integer
    #   resp.data.source_properties.cpus[0].model_name #=> String
    #   resp.data.source_properties.ram_bytes #=> Integer
    #   resp.data.source_properties.os #=> Types::OS
    #   resp.data.source_properties.os.full_string #=> String
    #   resp.data.replication_type #=> String, one of ["AGENT_BASED", "SNAPSHOT_SHIPPING"]
    #   resp.data.vcenter_client_id #=> String
    #
    def start_replication(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartReplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartReplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartReplication
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::ValidationException, Errors::UninitializedAccountException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StartReplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartReplication,
        stubs: @stubs,
        params_class: Params::StartReplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_replication
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Launches a Test Instance for specific Source Servers. This command starts a LAUNCH job whose initiatedBy property is StartTest and changes the SourceServer.lifeCycle.state property to TESTING.</p>
    #
    # @param [Hash] params
    #   See {Types::StartTestInput}.
    #
    # @option params [Array<String>] :source_server_i_ds
    #   <p>Start Test for Source Server IDs.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Start Test by Tags.</p>
    #
    # @return [Types::StartTestOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_test(
    #     source_server_i_ds: [
    #       'member'
    #     ], # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartTestOutput
    #   resp.data.job #=> Types::Job
    #   resp.data.job.job_id #=> String
    #   resp.data.job.arn #=> String
    #   resp.data.job.type #=> String, one of ["LAUNCH", "TERMINATE"]
    #   resp.data.job.initiated_by #=> String, one of ["START_TEST", "START_CUTOVER", "DIAGNOSTIC", "TERMINATE"]
    #   resp.data.job.creation_date_time #=> String
    #   resp.data.job.end_date_time #=> String
    #   resp.data.job.status #=> String, one of ["PENDING", "STARTED", "COMPLETED"]
    #   resp.data.job.participating_servers #=> Array<ParticipatingServer>
    #   resp.data.job.participating_servers[0] #=> Types::ParticipatingServer
    #   resp.data.job.participating_servers[0].source_server_id #=> String
    #   resp.data.job.participating_servers[0].launch_status #=> String, one of ["PENDING", "IN_PROGRESS", "LAUNCHED", "FAILED", "TERMINATED"]
    #   resp.data.job.tags #=> Hash<String, String>
    #   resp.data.job.tags['key'] #=> String
    #
    def start_test(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartTestInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartTestInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartTest
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ConflictException, Errors::ValidationException, Errors::UninitializedAccountException]),
        data_parser: Parsers::StartTest
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartTest,
        stubs: @stubs,
        params_class: Params::StartTestOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_test
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or overwrites only the specified tags for the specified Application Migration Service resource or resources. When you specify an existing tag key, the value is overwritten with the new value. Each resource can have a maximum of 50 tags. Each tag consists of a key and optional value.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>Tag resource by ARN.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Tag resource by Tags.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceArn', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
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

    # <p>Starts a job that terminates specific launched EC2 Test and Cutover instances. This command will not work for any Source Server with a lifecycle.state of TESTING, CUTTING_OVER, or CUTOVER.</p>
    #
    # @param [Hash] params
    #   See {Types::TerminateTargetInstancesInput}.
    #
    # @option params [Array<String>] :source_server_i_ds
    #   <p>Terminate Target instance by Source Server IDs.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Terminate Target instance by Tags.</p>
    #
    # @return [Types::TerminateTargetInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_target_instances(
    #     source_server_i_ds: [
    #       'member'
    #     ], # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TerminateTargetInstancesOutput
    #   resp.data.job #=> Types::Job
    #   resp.data.job.job_id #=> String
    #   resp.data.job.arn #=> String
    #   resp.data.job.type #=> String, one of ["LAUNCH", "TERMINATE"]
    #   resp.data.job.initiated_by #=> String, one of ["START_TEST", "START_CUTOVER", "DIAGNOSTIC", "TERMINATE"]
    #   resp.data.job.creation_date_time #=> String
    #   resp.data.job.end_date_time #=> String
    #   resp.data.job.status #=> String, one of ["PENDING", "STARTED", "COMPLETED"]
    #   resp.data.job.participating_servers #=> Array<ParticipatingServer>
    #   resp.data.job.participating_servers[0] #=> Types::ParticipatingServer
    #   resp.data.job.participating_servers[0].source_server_id #=> String
    #   resp.data.job.participating_servers[0].launch_status #=> String, one of ["PENDING", "IN_PROGRESS", "LAUNCHED", "FAILED", "TERMINATED"]
    #   resp.data.job.tags #=> Hash<String, String>
    #   resp.data.job.tags['key'] #=> String
    #
    def terminate_target_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TerminateTargetInstancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TerminateTargetInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TerminateTargetInstances
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ConflictException, Errors::ValidationException, Errors::UninitializedAccountException]),
        data_parser: Parsers::TerminateTargetInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TerminateTargetInstances,
        stubs: @stubs,
        params_class: Params::TerminateTargetInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :terminate_target_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified set of tags from the specified set of Application Migration Service resources.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>Untag resource by ARN.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>Untag resource by Keys.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'resourceArn', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
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

    # <p>Updates multiple LaunchConfigurations by Source Server ID.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateLaunchConfigurationInput}.
    #
    # @option params [String] :source_server_id
    #   <p>Update Launch configuration by Source Server ID request.</p>
    #
    # @option params [String] :name
    #   <p>Update Launch configuration name request.</p>
    #
    # @option params [String] :launch_disposition
    #   <p>Update Launch configuration launch disposition request.</p>
    #
    # @option params [String] :target_instance_type_right_sizing_method
    #   <p>Update Launch configuration Target instance right sizing request.</p>
    #
    # @option params [Boolean] :copy_private_ip
    #   <p>Update Launch configuration copy Private IP request.</p>
    #
    # @option params [Boolean] :copy_tags
    #   <p>Update Launch configuration copy Tags request.</p>
    #
    # @option params [Licensing] :licensing
    #   <p>Update Launch configuration licensing request.</p>
    #
    # @option params [String] :boot_mode
    #   <p>Update Launch configuration boot mode request.</p>
    #
    # @return [Types::UpdateLaunchConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_launch_configuration(
    #     source_server_id: 'sourceServerID', # required
    #     name: 'name',
    #     launch_disposition: 'STOPPED', # accepts ["STOPPED", "STARTED"]
    #     target_instance_type_right_sizing_method: 'NONE', # accepts ["NONE", "BASIC"]
    #     copy_private_ip: false,
    #     copy_tags: false,
    #     licensing: {
    #       os_byol: false
    #     },
    #     boot_mode: 'LEGACY_BIOS' # accepts ["LEGACY_BIOS", "UEFI"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateLaunchConfigurationOutput
    #   resp.data.source_server_id #=> String
    #   resp.data.name #=> String
    #   resp.data.ec2_launch_template_id #=> String
    #   resp.data.launch_disposition #=> String, one of ["STOPPED", "STARTED"]
    #   resp.data.target_instance_type_right_sizing_method #=> String, one of ["NONE", "BASIC"]
    #   resp.data.copy_private_ip #=> Boolean
    #   resp.data.copy_tags #=> Boolean
    #   resp.data.licensing #=> Types::Licensing
    #   resp.data.licensing.os_byol #=> Boolean
    #   resp.data.boot_mode #=> String, one of ["LEGACY_BIOS", "UEFI"]
    #
    def update_launch_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateLaunchConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateLaunchConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateLaunchConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::UninitializedAccountException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateLaunchConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateLaunchConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateLaunchConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_launch_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Allows you to update multiple ReplicationConfigurations by Source Server ID.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateReplicationConfigurationInput}.
    #
    # @option params [String] :source_server_id
    #   <p>Update replication configuration Source Server ID request.</p>
    #
    # @option params [String] :name
    #   <p>Update replication configuration name request.</p>
    #
    # @option params [String] :staging_area_subnet_id
    #   <p>Update replication configuration Staging Area subnet request.</p>
    #
    # @option params [Boolean] :associate_default_security_group
    #   <p>Update replication configuration associate default Application Migration Service Security group request.</p>
    #
    # @option params [Array<String>] :replication_servers_security_groups_i_ds
    #   <p>Update replication configuration Replication Server Security Groups IDs request.</p>
    #
    # @option params [String] :replication_server_instance_type
    #   <p>Update replication configuration Replication Server instance type request.</p>
    #
    # @option params [Boolean] :use_dedicated_replication_server
    #   <p>Update replication configuration use dedicated Replication Server request.</p>
    #
    # @option params [String] :default_large_staging_disk_type
    #   <p>Update replication configuration use default large Staging Disk type request.</p>
    #
    # @option params [Array<ReplicationConfigurationReplicatedDisk>] :replicated_disks
    #   <p>Update replication configuration replicated disks request.</p>
    #
    # @option params [String] :ebs_encryption
    #   <p>Update replication configuration EBS encryption request.</p>
    #
    # @option params [String] :ebs_encryption_key_arn
    #   <p>Update replication configuration EBS encryption key ARN request.</p>
    #
    # @option params [Integer] :bandwidth_throttling
    #   <p>Update replication configuration bandwidth throttling request.</p>
    #
    # @option params [String] :data_plane_routing
    #   <p>Update replication configuration data plane routing request.</p>
    #
    # @option params [Boolean] :create_public_ip
    #   <p>Update replication configuration create Public IP request.</p>
    #
    # @option params [Hash<String, String>] :staging_area_tags
    #   <p>Update replication configuration Staging Area Tags request.</p>
    #
    # @return [Types::UpdateReplicationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_replication_configuration(
    #     source_server_id: 'sourceServerID', # required
    #     name: 'name',
    #     staging_area_subnet_id: 'stagingAreaSubnetId',
    #     associate_default_security_group: false,
    #     replication_servers_security_groups_i_ds: [
    #       'member'
    #     ],
    #     replication_server_instance_type: 'replicationServerInstanceType',
    #     use_dedicated_replication_server: false,
    #     default_large_staging_disk_type: 'GP2', # accepts ["GP2", "ST1", "GP3"]
    #     replicated_disks: [
    #       {
    #         device_name: 'deviceName',
    #         is_boot_disk: false,
    #         staging_disk_type: 'AUTO', # accepts ["AUTO", "GP2", "IO1", "SC1", "ST1", "STANDARD", "GP3", "IO2"]
    #         iops: 1,
    #         throughput: 1
    #       }
    #     ],
    #     ebs_encryption: 'DEFAULT', # accepts ["DEFAULT", "CUSTOM"]
    #     ebs_encryption_key_arn: 'ebsEncryptionKeyArn',
    #     bandwidth_throttling: 1,
    #     data_plane_routing: 'PRIVATE_IP', # accepts ["PRIVATE_IP", "PUBLIC_IP"]
    #     create_public_ip: false,
    #     staging_area_tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateReplicationConfigurationOutput
    #   resp.data.source_server_id #=> String
    #   resp.data.name #=> String
    #   resp.data.staging_area_subnet_id #=> String
    #   resp.data.associate_default_security_group #=> Boolean
    #   resp.data.replication_servers_security_groups_i_ds #=> Array<String>
    #   resp.data.replication_servers_security_groups_i_ds[0] #=> String
    #   resp.data.replication_server_instance_type #=> String
    #   resp.data.use_dedicated_replication_server #=> Boolean
    #   resp.data.default_large_staging_disk_type #=> String, one of ["GP2", "ST1", "GP3"]
    #   resp.data.replicated_disks #=> Array<ReplicationConfigurationReplicatedDisk>
    #   resp.data.replicated_disks[0] #=> Types::ReplicationConfigurationReplicatedDisk
    #   resp.data.replicated_disks[0].device_name #=> String
    #   resp.data.replicated_disks[0].is_boot_disk #=> Boolean
    #   resp.data.replicated_disks[0].staging_disk_type #=> String, one of ["AUTO", "GP2", "IO1", "SC1", "ST1", "STANDARD", "GP3", "IO2"]
    #   resp.data.replicated_disks[0].iops #=> Integer
    #   resp.data.replicated_disks[0].throughput #=> Integer
    #   resp.data.ebs_encryption #=> String, one of ["DEFAULT", "CUSTOM"]
    #   resp.data.ebs_encryption_key_arn #=> String
    #   resp.data.bandwidth_throttling #=> Integer
    #   resp.data.data_plane_routing #=> String, one of ["PRIVATE_IP", "PUBLIC_IP"]
    #   resp.data.create_public_ip #=> Boolean
    #   resp.data.staging_area_tags #=> Hash<String, String>
    #   resp.data.staging_area_tags['key'] #=> String
    #
    def update_replication_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateReplicationConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateReplicationConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateReplicationConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::AccessDeniedException, Errors::UninitializedAccountException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateReplicationConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateReplicationConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateReplicationConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_replication_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates multiple ReplicationConfigurationTemplates by ID.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateReplicationConfigurationTemplateInput}.
    #
    # @option params [String] :replication_configuration_template_id
    #   <p>Update replication configuration template template ID request.</p>
    #
    # @option params [String] :arn
    #   <p>Update replication configuration template ARN request.</p>
    #
    # @option params [String] :staging_area_subnet_id
    #   <p>Update replication configuration template Staging Area subnet ID request.</p>
    #
    # @option params [Boolean] :associate_default_security_group
    #   <p>Update replication configuration template associate default Application Migration Service Security group request.</p>
    #
    # @option params [Array<String>] :replication_servers_security_groups_i_ds
    #   <p>Update replication configuration template Replication Server Security groups IDs request.</p>
    #
    # @option params [String] :replication_server_instance_type
    #   <p>Update replication configuration template Replication Server instance type request.</p>
    #
    # @option params [Boolean] :use_dedicated_replication_server
    #   <p>Update replication configuration template use dedicated Replication Server request.</p>
    #
    # @option params [String] :default_large_staging_disk_type
    #   <p>Update replication configuration template use default large Staging Disk type request.</p>
    #
    # @option params [String] :ebs_encryption
    #   <p>Update replication configuration template EBS encryption request.</p>
    #
    # @option params [String] :ebs_encryption_key_arn
    #   <p>Update replication configuration template EBS encryption key ARN request.</p>
    #
    # @option params [Integer] :bandwidth_throttling
    #   <p>Update replication configuration template bandwidth throttling request.</p>
    #
    # @option params [String] :data_plane_routing
    #   <p>Update replication configuration template data plane routing request.</p>
    #
    # @option params [Boolean] :create_public_ip
    #   <p>Update replication configuration template create Public IP request.</p>
    #
    # @option params [Hash<String, String>] :staging_area_tags
    #   <p>Update replication configuration template Staging Area Tags request.</p>
    #
    # @return [Types::UpdateReplicationConfigurationTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_replication_configuration_template(
    #     replication_configuration_template_id: 'replicationConfigurationTemplateID', # required
    #     arn: 'arn',
    #     staging_area_subnet_id: 'stagingAreaSubnetId',
    #     associate_default_security_group: false,
    #     replication_servers_security_groups_i_ds: [
    #       'member'
    #     ],
    #     replication_server_instance_type: 'replicationServerInstanceType',
    #     use_dedicated_replication_server: false,
    #     default_large_staging_disk_type: 'GP2', # accepts ["GP2", "ST1", "GP3"]
    #     ebs_encryption: 'DEFAULT', # accepts ["DEFAULT", "CUSTOM"]
    #     ebs_encryption_key_arn: 'ebsEncryptionKeyArn',
    #     bandwidth_throttling: 1,
    #     data_plane_routing: 'PRIVATE_IP', # accepts ["PRIVATE_IP", "PUBLIC_IP"]
    #     create_public_ip: false,
    #     staging_area_tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateReplicationConfigurationTemplateOutput
    #   resp.data.replication_configuration_template_id #=> String
    #   resp.data.arn #=> String
    #   resp.data.staging_area_subnet_id #=> String
    #   resp.data.associate_default_security_group #=> Boolean
    #   resp.data.replication_servers_security_groups_i_ds #=> Array<String>
    #   resp.data.replication_servers_security_groups_i_ds[0] #=> String
    #   resp.data.replication_server_instance_type #=> String
    #   resp.data.use_dedicated_replication_server #=> Boolean
    #   resp.data.default_large_staging_disk_type #=> String, one of ["GP2", "ST1", "GP3"]
    #   resp.data.ebs_encryption #=> String, one of ["DEFAULT", "CUSTOM"]
    #   resp.data.ebs_encryption_key_arn #=> String
    #   resp.data.bandwidth_throttling #=> Integer
    #   resp.data.data_plane_routing #=> String, one of ["PRIVATE_IP", "PUBLIC_IP"]
    #   resp.data.create_public_ip #=> Boolean
    #   resp.data.staging_area_tags #=> Hash<String, String>
    #   resp.data.staging_area_tags['key'] #=> String
    #   resp.data.tags #=> Hash<String, String>
    #
    def update_replication_configuration_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateReplicationConfigurationTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateReplicationConfigurationTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateReplicationConfigurationTemplate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::UninitializedAccountException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateReplicationConfigurationTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateReplicationConfigurationTemplate,
        stubs: @stubs,
        params_class: Params::UpdateReplicationConfigurationTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_replication_configuration_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Allows you to change between the AGENT_BASED replication type and the SNAPSHOT_SHIPPING replication type.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSourceServerReplicationTypeInput}.
    #
    # @option params [String] :source_server_id
    #   <p>ID of source server on which to update replication type.</p>
    #
    # @option params [String] :replication_type
    #   <p>Replication type to which to update source server.</p>
    #
    # @return [Types::UpdateSourceServerReplicationTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_source_server_replication_type(
    #     source_server_id: 'sourceServerID', # required
    #     replication_type: 'AGENT_BASED' # required - accepts ["AGENT_BASED", "SNAPSHOT_SHIPPING"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSourceServerReplicationTypeOutput
    #   resp.data.source_server_id #=> String
    #   resp.data.arn #=> String
    #   resp.data.is_archived #=> Boolean
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.launched_instance #=> Types::LaunchedInstance
    #   resp.data.launched_instance.ec2_instance_id #=> String
    #   resp.data.launched_instance.job_id #=> String
    #   resp.data.launched_instance.first_boot #=> String, one of ["WAITING", "SUCCEEDED", "UNKNOWN", "STOPPED"]
    #   resp.data.data_replication_info #=> Types::DataReplicationInfo
    #   resp.data.data_replication_info.lag_duration #=> String
    #   resp.data.data_replication_info.eta_date_time #=> String
    #   resp.data.data_replication_info.replicated_disks #=> Array<DataReplicationInfoReplicatedDisk>
    #   resp.data.data_replication_info.replicated_disks[0] #=> Types::DataReplicationInfoReplicatedDisk
    #   resp.data.data_replication_info.replicated_disks[0].device_name #=> String
    #   resp.data.data_replication_info.replicated_disks[0].total_storage_bytes #=> Integer
    #   resp.data.data_replication_info.replicated_disks[0].replicated_storage_bytes #=> Integer
    #   resp.data.data_replication_info.replicated_disks[0].rescanned_storage_bytes #=> Integer
    #   resp.data.data_replication_info.replicated_disks[0].backlogged_storage_bytes #=> Integer
    #   resp.data.data_replication_info.data_replication_state #=> String, one of ["STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED", "PENDING_SNAPSHOT_SHIPPING", "SHIPPING_SNAPSHOT"]
    #   resp.data.data_replication_info.data_replication_initiation #=> Types::DataReplicationInitiation
    #   resp.data.data_replication_info.data_replication_initiation.start_date_time #=> String
    #   resp.data.data_replication_info.data_replication_initiation.next_attempt_date_time #=> String
    #   resp.data.data_replication_info.data_replication_initiation.steps #=> Array<DataReplicationInitiationStep>
    #   resp.data.data_replication_info.data_replication_initiation.steps[0] #=> Types::DataReplicationInitiationStep
    #   resp.data.data_replication_info.data_replication_initiation.steps[0].name #=> String, one of ["WAIT", "CREATE_SECURITY_GROUP", "LAUNCH_REPLICATION_SERVER", "BOOT_REPLICATION_SERVER", "AUTHENTICATE_WITH_SERVICE", "DOWNLOAD_REPLICATION_SOFTWARE", "CREATE_STAGING_DISKS", "ATTACH_STAGING_DISKS", "PAIR_REPLICATION_SERVER_WITH_AGENT", "CONNECT_AGENT_TO_REPLICATION_SERVER", "START_DATA_TRANSFER"]
    #   resp.data.data_replication_info.data_replication_initiation.steps[0].status #=> String, one of ["NOT_STARTED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "SKIPPED"]
    #   resp.data.data_replication_info.data_replication_error #=> Types::DataReplicationError
    #   resp.data.data_replication_info.data_replication_error.error #=> String, one of ["AGENT_NOT_SEEN", "SNAPSHOTS_FAILURE", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_CREATE_SECURITY_GROUP", "FAILED_TO_LAUNCH_REPLICATION_SERVER", "FAILED_TO_BOOT_REPLICATION_SERVER", "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "FAILED_TO_CREATE_STAGING_DISKS", "FAILED_TO_ATTACH_STAGING_DISKS", "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "FAILED_TO_START_DATA_TRANSFER", "UNSUPPORTED_VM_CONFIGURATION", "LAST_SNAPSHOT_JOB_FAILED"]
    #   resp.data.data_replication_info.data_replication_error.raw_error #=> String
    #   resp.data.data_replication_info.last_snapshot_date_time #=> String
    #   resp.data.life_cycle #=> Types::LifeCycle
    #   resp.data.life_cycle.added_to_service_date_time #=> String
    #   resp.data.life_cycle.first_byte_date_time #=> String
    #   resp.data.life_cycle.elapsed_replication_duration #=> String
    #   resp.data.life_cycle.last_seen_by_service_date_time #=> String
    #   resp.data.life_cycle.last_test #=> Types::LifeCycleLastTest
    #   resp.data.life_cycle.last_test.initiated #=> Types::LifeCycleLastTestInitiated
    #   resp.data.life_cycle.last_test.initiated.api_call_date_time #=> String
    #   resp.data.life_cycle.last_test.initiated.job_id #=> String
    #   resp.data.life_cycle.last_test.reverted #=> Types::LifeCycleLastTestReverted
    #   resp.data.life_cycle.last_test.reverted.api_call_date_time #=> String
    #   resp.data.life_cycle.last_test.finalized #=> Types::LifeCycleLastTestFinalized
    #   resp.data.life_cycle.last_test.finalized.api_call_date_time #=> String
    #   resp.data.life_cycle.last_cutover #=> Types::LifeCycleLastCutover
    #   resp.data.life_cycle.last_cutover.initiated #=> Types::LifeCycleLastCutoverInitiated
    #   resp.data.life_cycle.last_cutover.initiated.api_call_date_time #=> String
    #   resp.data.life_cycle.last_cutover.initiated.job_id #=> String
    #   resp.data.life_cycle.last_cutover.reverted #=> Types::LifeCycleLastCutoverReverted
    #   resp.data.life_cycle.last_cutover.reverted.api_call_date_time #=> String
    #   resp.data.life_cycle.last_cutover.finalized #=> Types::LifeCycleLastCutoverFinalized
    #   resp.data.life_cycle.last_cutover.finalized.api_call_date_time #=> String
    #   resp.data.life_cycle.state #=> String, one of ["STOPPED", "NOT_READY", "READY_FOR_TEST", "TESTING", "READY_FOR_CUTOVER", "CUTTING_OVER", "CUTOVER", "DISCONNECTED", "DISCOVERED"]
    #   resp.data.source_properties #=> Types::SourceProperties
    #   resp.data.source_properties.last_updated_date_time #=> String
    #   resp.data.source_properties.recommended_instance_type #=> String
    #   resp.data.source_properties.identification_hints #=> Types::IdentificationHints
    #   resp.data.source_properties.identification_hints.fqdn #=> String
    #   resp.data.source_properties.identification_hints.hostname #=> String
    #   resp.data.source_properties.identification_hints.vm_ware_uuid #=> String
    #   resp.data.source_properties.identification_hints.aws_instance_id #=> String
    #   resp.data.source_properties.identification_hints.vm_path #=> String
    #   resp.data.source_properties.network_interfaces #=> Array<NetworkInterface>
    #   resp.data.source_properties.network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.source_properties.network_interfaces[0].mac_address #=> String
    #   resp.data.source_properties.network_interfaces[0].ips #=> Array<String>
    #   resp.data.source_properties.network_interfaces[0].ips[0] #=> String
    #   resp.data.source_properties.network_interfaces[0].is_primary #=> Boolean
    #   resp.data.source_properties.disks #=> Array<Disk>
    #   resp.data.source_properties.disks[0] #=> Types::Disk
    #   resp.data.source_properties.disks[0].device_name #=> String
    #   resp.data.source_properties.disks[0].bytes #=> Integer
    #   resp.data.source_properties.cpus #=> Array<CPU>
    #   resp.data.source_properties.cpus[0] #=> Types::CPU
    #   resp.data.source_properties.cpus[0].cores #=> Integer
    #   resp.data.source_properties.cpus[0].model_name #=> String
    #   resp.data.source_properties.ram_bytes #=> Integer
    #   resp.data.source_properties.os #=> Types::OS
    #   resp.data.source_properties.os.full_string #=> String
    #   resp.data.replication_type #=> String, one of ["AGENT_BASED", "SNAPSHOT_SHIPPING"]
    #   resp.data.vcenter_client_id #=> String
    #
    def update_source_server_replication_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSourceServerReplicationTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSourceServerReplicationTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSourceServerReplicationType
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::UninitializedAccountException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateSourceServerReplicationType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSourceServerReplicationType,
        stubs: @stubs,
        params_class: Params::UpdateSourceServerReplicationTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_source_server_replication_type
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
