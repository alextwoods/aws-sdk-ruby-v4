# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Drs
  # An API client for ElasticDisasterRecoveryService
  # See {#initialize} for a full list of supported configuration options
  # <p>AWS Elastic Disaster Recovery Service.</p>
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
    def initialize(config = AWS::SDK::Drs::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Create an extended source server in the target Account based on the source server in staging account.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateExtendedSourceServerInput}.
    #
    # @option params [String] :source_server_arn
    #   <p>This defines the ARN of the source server in staging Account based on which you want to create an extended source server.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tags associated with the extended source server.</p>
    #
    # @return [Types::CreateExtendedSourceServerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_extended_source_server(
    #     source_server_arn: 'sourceServerArn', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateExtendedSourceServerOutput
    #   resp.data.source_server #=> Types::SourceServer
    #   resp.data.source_server.source_server_id #=> String
    #   resp.data.source_server.arn #=> String
    #   resp.data.source_server.tags #=> Hash<String, String>
    #   resp.data.source_server.tags['key'] #=> String
    #   resp.data.source_server.recovery_instance_id #=> String
    #   resp.data.source_server.last_launch_result #=> String, one of ["NOT_STARTED", "PENDING", "SUCCEEDED", "FAILED"]
    #   resp.data.source_server.data_replication_info #=> Types::DataReplicationInfo
    #   resp.data.source_server.data_replication_info.lag_duration #=> String
    #   resp.data.source_server.data_replication_info.eta_date_time #=> String
    #   resp.data.source_server.data_replication_info.replicated_disks #=> Array<DataReplicationInfoReplicatedDisk>
    #   resp.data.source_server.data_replication_info.replicated_disks[0] #=> Types::DataReplicationInfoReplicatedDisk
    #   resp.data.source_server.data_replication_info.replicated_disks[0].device_name #=> String
    #   resp.data.source_server.data_replication_info.replicated_disks[0].total_storage_bytes #=> Integer
    #   resp.data.source_server.data_replication_info.replicated_disks[0].replicated_storage_bytes #=> Integer
    #   resp.data.source_server.data_replication_info.replicated_disks[0].rescanned_storage_bytes #=> Integer
    #   resp.data.source_server.data_replication_info.replicated_disks[0].backlogged_storage_bytes #=> Integer
    #   resp.data.source_server.data_replication_info.data_replication_state #=> String, one of ["STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED"]
    #   resp.data.source_server.data_replication_info.data_replication_initiation #=> Types::DataReplicationInitiation
    #   resp.data.source_server.data_replication_info.data_replication_initiation.start_date_time #=> String
    #   resp.data.source_server.data_replication_info.data_replication_initiation.next_attempt_date_time #=> String
    #   resp.data.source_server.data_replication_info.data_replication_initiation.steps #=> Array<DataReplicationInitiationStep>
    #   resp.data.source_server.data_replication_info.data_replication_initiation.steps[0] #=> Types::DataReplicationInitiationStep
    #   resp.data.source_server.data_replication_info.data_replication_initiation.steps[0].name #=> String, one of ["WAIT", "CREATE_SECURITY_GROUP", "LAUNCH_REPLICATION_SERVER", "BOOT_REPLICATION_SERVER", "AUTHENTICATE_WITH_SERVICE", "DOWNLOAD_REPLICATION_SOFTWARE", "CREATE_STAGING_DISKS", "ATTACH_STAGING_DISKS", "PAIR_REPLICATION_SERVER_WITH_AGENT", "CONNECT_AGENT_TO_REPLICATION_SERVER", "START_DATA_TRANSFER"]
    #   resp.data.source_server.data_replication_info.data_replication_initiation.steps[0].status #=> String, one of ["NOT_STARTED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "SKIPPED"]
    #   resp.data.source_server.data_replication_info.data_replication_error #=> Types::DataReplicationError
    #   resp.data.source_server.data_replication_info.data_replication_error.error #=> String, one of ["AGENT_NOT_SEEN", "SNAPSHOTS_FAILURE", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_CREATE_SECURITY_GROUP", "FAILED_TO_LAUNCH_REPLICATION_SERVER", "FAILED_TO_BOOT_REPLICATION_SERVER", "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "FAILED_TO_CREATE_STAGING_DISKS", "FAILED_TO_ATTACH_STAGING_DISKS", "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "FAILED_TO_START_DATA_TRANSFER"]
    #   resp.data.source_server.data_replication_info.data_replication_error.raw_error #=> String
    #   resp.data.source_server.life_cycle #=> Types::LifeCycle
    #   resp.data.source_server.life_cycle.added_to_service_date_time #=> String
    #   resp.data.source_server.life_cycle.first_byte_date_time #=> String
    #   resp.data.source_server.life_cycle.elapsed_replication_duration #=> String
    #   resp.data.source_server.life_cycle.last_seen_by_service_date_time #=> String
    #   resp.data.source_server.life_cycle.last_launch #=> Types::LifeCycleLastLaunch
    #   resp.data.source_server.life_cycle.last_launch.initiated #=> Types::LifeCycleLastLaunchInitiated
    #   resp.data.source_server.life_cycle.last_launch.initiated.api_call_date_time #=> String
    #   resp.data.source_server.life_cycle.last_launch.initiated.job_id #=> String
    #   resp.data.source_server.life_cycle.last_launch.initiated.type #=> String, one of ["RECOVERY", "DRILL"]
    #   resp.data.source_server.source_properties #=> Types::SourceProperties
    #   resp.data.source_server.source_properties.last_updated_date_time #=> String
    #   resp.data.source_server.source_properties.recommended_instance_type #=> String
    #   resp.data.source_server.source_properties.identification_hints #=> Types::IdentificationHints
    #   resp.data.source_server.source_properties.identification_hints.fqdn #=> String
    #   resp.data.source_server.source_properties.identification_hints.hostname #=> String
    #   resp.data.source_server.source_properties.identification_hints.vm_ware_uuid #=> String
    #   resp.data.source_server.source_properties.identification_hints.aws_instance_id #=> String
    #   resp.data.source_server.source_properties.network_interfaces #=> Array<NetworkInterface>
    #   resp.data.source_server.source_properties.network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.source_server.source_properties.network_interfaces[0].mac_address #=> String
    #   resp.data.source_server.source_properties.network_interfaces[0].ips #=> Array<String>
    #   resp.data.source_server.source_properties.network_interfaces[0].ips[0] #=> String
    #   resp.data.source_server.source_properties.network_interfaces[0].is_primary #=> Boolean
    #   resp.data.source_server.source_properties.disks #=> Array<Disk>
    #   resp.data.source_server.source_properties.disks[0] #=> Types::Disk
    #   resp.data.source_server.source_properties.disks[0].device_name #=> String
    #   resp.data.source_server.source_properties.disks[0].bytes #=> Integer
    #   resp.data.source_server.source_properties.cpus #=> Array<CPU>
    #   resp.data.source_server.source_properties.cpus[0] #=> Types::CPU
    #   resp.data.source_server.source_properties.cpus[0].cores #=> Integer
    #   resp.data.source_server.source_properties.cpus[0].model_name #=> String
    #   resp.data.source_server.source_properties.ram_bytes #=> Integer
    #   resp.data.source_server.source_properties.os #=> Types::OS
    #   resp.data.source_server.source_properties.os.full_string #=> String
    #   resp.data.source_server.staging_area #=> Types::StagingArea
    #   resp.data.source_server.staging_area.status #=> String, one of ["EXTENDED", "EXTENSION_ERROR", "NOT_EXTENDED"]
    #   resp.data.source_server.staging_area.staging_account_id #=> String
    #   resp.data.source_server.staging_area.staging_source_server_arn #=> String
    #   resp.data.source_server.staging_area.error_message #=> String
    #
    def create_extended_source_server(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateExtendedSourceServerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateExtendedSourceServerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateExtendedSourceServer
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::AccessDeniedException, Errors::UninitializedAccountException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::CreateExtendedSourceServer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateExtendedSourceServer,
        stubs: @stubs,
        params_class: Params::CreateExtendedSourceServerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_extended_source_server
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
    #   <p>The subnet to be used by the replication staging area.</p>
    #
    # @option params [Boolean] :associate_default_security_group
    #   <p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration Template.</p>
    #
    # @option params [Array<String>] :replication_servers_security_groups_i_ds
    #   <p>The security group IDs that will be used by the replication server.</p>
    #
    # @option params [String] :replication_server_instance_type
    #   <p>The instance type to be used for the replication server.</p>
    #
    # @option params [Boolean] :use_dedicated_replication_server
    #   <p>Whether to use a dedicated Replication Server in the replication staging area.</p>
    #
    # @option params [String] :default_large_staging_disk_type
    #   <p>The Staging Disk EBS volume type to be used during replication.</p>
    #
    # @option params [String] :ebs_encryption
    #   <p>The type of EBS encryption to be used during replication.</p>
    #
    # @option params [String] :ebs_encryption_key_arn
    #   <p>The ARN of the EBS encryption key to be used during replication.</p>
    #
    # @option params [Integer] :bandwidth_throttling
    #   <p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>
    #
    # @option params [String] :data_plane_routing
    #   <p>The data plane routing mechanism that will be used for replication.</p>
    #
    # @option params [Boolean] :create_public_ip
    #   <p>Whether to create a Public IP for the Recovery Instance by default.</p>
    #
    # @option params [Hash<String, String>] :staging_area_tags
    #   <p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>
    #
    # @option params [Array<PITPolicyRule>] :pit_policy
    #   <p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A set of tags to be associated with the Replication Configuration Template resource.</p>
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
    #     default_large_staging_disk_type: 'GP2', # required - accepts ["GP2", "GP3", "ST1"]
    #     ebs_encryption: 'DEFAULT', # required - accepts ["DEFAULT", "CUSTOM"]
    #     ebs_encryption_key_arn: 'ebsEncryptionKeyArn',
    #     bandwidth_throttling: 1, # required
    #     data_plane_routing: 'PRIVATE_IP', # required - accepts ["PRIVATE_IP", "PUBLIC_IP"]
    #     create_public_ip: false, # required
    #     staging_area_tags: {
    #       'key' => 'value'
    #     }, # required
    #     pit_policy: [
    #       {
    #         rule_id: 1,
    #         units: 'MINUTE', # required - accepts ["MINUTE", "HOUR", "DAY"]
    #         interval: 1, # required
    #         retention_duration: 1, # required
    #         enabled: false
    #       }
    #     ], # required
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
    #   resp.data.default_large_staging_disk_type #=> String, one of ["GP2", "GP3", "ST1"]
    #   resp.data.ebs_encryption #=> String, one of ["DEFAULT", "CUSTOM"]
    #   resp.data.ebs_encryption_key_arn #=> String
    #   resp.data.bandwidth_throttling #=> Integer
    #   resp.data.data_plane_routing #=> String, one of ["PRIVATE_IP", "PUBLIC_IP"]
    #   resp.data.create_public_ip #=> Boolean
    #   resp.data.staging_area_tags #=> Hash<String, String>
    #   resp.data.staging_area_tags['key'] #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.pit_policy #=> Array<PITPolicyRule>
    #   resp.data.pit_policy[0] #=> Types::PITPolicyRule
    #   resp.data.pit_policy[0].rule_id #=> Integer
    #   resp.data.pit_policy[0].units #=> String, one of ["MINUTE", "HOUR", "DAY"]
    #   resp.data.pit_policy[0].interval #=> Integer
    #   resp.data.pit_policy[0].retention_duration #=> Integer
    #   resp.data.pit_policy[0].enabled #=> Boolean
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::AccessDeniedException, Errors::UninitializedAccountException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException, Errors::ValidationException, Errors::InternalServerException]),
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
    #   <p>The ID of the Job to be deleted.</p>
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::UninitializedAccountException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException, Errors::ConflictException]),
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

    # <p>Deletes a single Recovery Instance by ID. This deletes the Recovery Instance resource from Elastic Disaster Recovery. The Recovery Instance must be disconnected first in order to delete it.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRecoveryInstanceInput}.
    #
    # @option params [String] :recovery_instance_id
    #   <p>RThe ID of the Recovery Instance to be deleted.</p>
    #
    # @return [Types::DeleteRecoveryInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_recovery_instance(
    #     recovery_instance_id: 'recoveryInstanceID' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRecoveryInstanceOutput
    #
    def delete_recovery_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRecoveryInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRecoveryInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRecoveryInstance
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::UninitializedAccountException, Errors::ThrottlingException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::DeleteRecoveryInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRecoveryInstance,
        stubs: @stubs,
        params_class: Params::DeleteRecoveryInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_recovery_instance
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
    #   <p>The ID of the Replication Configuration Template to be deleted.</p>
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::UninitializedAccountException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException, Errors::ConflictException]),
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

    # <p>Deletes a single Source Server by ID. The Source Server must be disconnected first.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSourceServerInput}.
    #
    # @option params [String] :source_server_id
    #   <p>The ID of the Source Server to be deleted.</p>
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::UninitializedAccountException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException, Errors::ConflictException]),
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

    # <p>Retrieves a detailed Job log with pagination.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeJobLogItemsInput}.
    #
    # @option params [String] :job_id
    #   <p>The ID of the Job for which Job log items will be retrieved.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of Job log items to retrieve.</p>
    #
    # @option params [String] :next_token
    #   <p>The token of the next Job log items to retrieve.</p>
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
    #   resp.data.items[0].event #=> String, one of ["JOB_START", "SERVER_SKIPPED", "CLEANUP_START", "CLEANUP_END", "CLEANUP_FAIL", "SNAPSHOT_START", "SNAPSHOT_END", "SNAPSHOT_FAIL", "USING_PREVIOUS_SNAPSHOT", "USING_PREVIOUS_SNAPSHOT_FAILED", "CONVERSION_START", "CONVERSION_END", "CONVERSION_FAIL", "LAUNCH_START", "LAUNCH_FAILED", "JOB_CANCEL", "JOB_END"]
    #   resp.data.items[0].event_data #=> Types::JobLogEventData
    #   resp.data.items[0].event_data.source_server_id #=> String
    #   resp.data.items[0].event_data.conversion_server_id #=> String
    #   resp.data.items[0].event_data.target_instance_id #=> String
    #   resp.data.items[0].event_data.raw_error #=> String
    #   resp.data.items[0].event_data.conversion_properties #=> Types::ConversionProperties
    #   resp.data.items[0].event_data.conversion_properties.volume_to_conversion_map #=> Hash<String, Hash<String, String>>
    #   resp.data.items[0].event_data.conversion_properties.volume_to_conversion_map['key'] #=> Hash<String, String>
    #   resp.data.items[0].event_data.conversion_properties.volume_to_conversion_map['key']['key'] #=> String
    #   resp.data.items[0].event_data.conversion_properties.root_volume_name #=> String
    #   resp.data.items[0].event_data.conversion_properties.force_uefi #=> Boolean
    #   resp.data.items[0].event_data.conversion_properties.data_timestamp #=> String
    #   resp.data.items[0].event_data.conversion_properties.volume_to_volume_size #=> Hash<String, Integer>
    #   resp.data.items[0].event_data.conversion_properties.volume_to_volume_size['key'] #=> Integer
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UninitializedAccountException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException]),
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

    # <p>Returns a list of Jobs. Use the JobsID and fromDate and toDate filters to limit which jobs are returned. The response is sorted by creationDataTime - latest date first. Jobs are created by the StartRecovery, TerminateRecoveryInstances and StartFailbackLaunch APIs. Jobs are also created by DiagnosticLaunch and TerminateDiagnosticInstances, which are APIs available only to *Support* and only used in response to relevant support tickets.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeJobsInput}.
    #
    # @option params [DescribeJobsRequestFilters] :filters
    #   <p>A set of filters by which to return Jobs.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of Jobs to retrieve.</p>
    #
    # @option params [String] :next_token
    #   <p>The token of the next Job to retrieve.</p>
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
    #   resp.data.items[0].type #=> String, one of ["LAUNCH", "TERMINATE", "CREATE_CONVERTED_SNAPSHOT"]
    #   resp.data.items[0].initiated_by #=> String, one of ["START_RECOVERY", "START_DRILL", "FAILBACK", "DIAGNOSTIC", "TERMINATE_RECOVERY_INSTANCES", "TARGET_ACCOUNT"]
    #   resp.data.items[0].creation_date_time #=> String
    #   resp.data.items[0].end_date_time #=> String
    #   resp.data.items[0].status #=> String, one of ["PENDING", "STARTED", "COMPLETED"]
    #   resp.data.items[0].participating_servers #=> Array<ParticipatingServer>
    #   resp.data.items[0].participating_servers[0] #=> Types::ParticipatingServer
    #   resp.data.items[0].participating_servers[0].source_server_id #=> String
    #   resp.data.items[0].participating_servers[0].recovery_instance_id #=> String
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UninitializedAccountException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException]),
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

    # <p>Lists all Recovery Instances or multiple Recovery Instances by ID.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRecoveryInstancesInput}.
    #
    # @option params [DescribeRecoveryInstancesRequestFilters] :filters
    #   <p>A set of filters by which to return Recovery Instances.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of Recovery Instances to retrieve.</p>
    #
    # @option params [String] :next_token
    #   <p>The token of the next Recovery Instance to retrieve.</p>
    #
    # @return [Types::DescribeRecoveryInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_recovery_instances(
    #     filters: {
    #       recovery_instance_i_ds: [
    #         'member'
    #       ],
    #       source_server_i_ds: [
    #         'member'
    #       ]
    #     },
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRecoveryInstancesOutput
    #   resp.data.next_token #=> String
    #   resp.data.items #=> Array<RecoveryInstance>
    #   resp.data.items[0] #=> Types::RecoveryInstance
    #   resp.data.items[0].ec2_instance_id #=> String
    #   resp.data.items[0].ec2_instance_state #=> String, one of ["PENDING", "RUNNING", "STOPPING", "STOPPED", "SHUTTING-DOWN", "TERMINATED", "NOT_FOUND"]
    #   resp.data.items[0].job_id #=> String
    #   resp.data.items[0].recovery_instance_id #=> String
    #   resp.data.items[0].source_server_id #=> String
    #   resp.data.items[0].arn #=> String
    #   resp.data.items[0].tags #=> Hash<String, String>
    #   resp.data.items[0].tags['key'] #=> String
    #   resp.data.items[0].failback #=> Types::RecoveryInstanceFailback
    #   resp.data.items[0].failback.failback_client_id #=> String
    #   resp.data.items[0].failback.failback_job_id #=> String
    #   resp.data.items[0].failback.failback_initiation_time #=> String
    #   resp.data.items[0].failback.state #=> String, one of ["FAILBACK_NOT_STARTED", "FAILBACK_IN_PROGRESS", "FAILBACK_READY_FOR_LAUNCH", "FAILBACK_COMPLETED", "FAILBACK_ERROR"]
    #   resp.data.items[0].failback.agent_last_seen_by_service_date_time #=> String
    #   resp.data.items[0].failback.failback_client_last_seen_by_service_date_time #=> String
    #   resp.data.items[0].failback.failback_to_original_server #=> Boolean
    #   resp.data.items[0].failback.first_byte_date_time #=> String
    #   resp.data.items[0].failback.elapsed_replication_duration #=> String
    #   resp.data.items[0].data_replication_info #=> Types::RecoveryInstanceDataReplicationInfo
    #   resp.data.items[0].data_replication_info.lag_duration #=> String
    #   resp.data.items[0].data_replication_info.eta_date_time #=> String
    #   resp.data.items[0].data_replication_info.replicated_disks #=> Array<RecoveryInstanceDataReplicationInfoReplicatedDisk>
    #   resp.data.items[0].data_replication_info.replicated_disks[0] #=> Types::RecoveryInstanceDataReplicationInfoReplicatedDisk
    #   resp.data.items[0].data_replication_info.replicated_disks[0].device_name #=> String
    #   resp.data.items[0].data_replication_info.replicated_disks[0].total_storage_bytes #=> Integer
    #   resp.data.items[0].data_replication_info.replicated_disks[0].replicated_storage_bytes #=> Integer
    #   resp.data.items[0].data_replication_info.replicated_disks[0].rescanned_storage_bytes #=> Integer
    #   resp.data.items[0].data_replication_info.replicated_disks[0].backlogged_storage_bytes #=> Integer
    #   resp.data.items[0].data_replication_info.data_replication_state #=> String, one of ["STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED"]
    #   resp.data.items[0].data_replication_info.data_replication_initiation #=> Types::RecoveryInstanceDataReplicationInitiation
    #   resp.data.items[0].data_replication_info.data_replication_initiation.start_date_time #=> String
    #   resp.data.items[0].data_replication_info.data_replication_initiation.steps #=> Array<RecoveryInstanceDataReplicationInitiationStep>
    #   resp.data.items[0].data_replication_info.data_replication_initiation.steps[0] #=> Types::RecoveryInstanceDataReplicationInitiationStep
    #   resp.data.items[0].data_replication_info.data_replication_initiation.steps[0].name #=> String, one of ["LINK_FAILBACK_CLIENT_WITH_RECOVERY_INSTANCE", "COMPLETE_VOLUME_MAPPING", "ESTABLISH_RECOVERY_INSTANCE_COMMUNICATION", "DOWNLOAD_REPLICATION_SOFTWARE_TO_FAILBACK_CLIENT", "CONFIGURE_REPLICATION_SOFTWARE", "PAIR_AGENT_WITH_REPLICATION_SOFTWARE", "ESTABLISH_AGENT_REPLICATOR_SOFTWARE_COMMUNICATION"]
    #   resp.data.items[0].data_replication_info.data_replication_initiation.steps[0].status #=> String, one of ["NOT_STARTED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "SKIPPED"]
    #   resp.data.items[0].data_replication_info.data_replication_error #=> Types::RecoveryInstanceDataReplicationError
    #   resp.data.items[0].data_replication_info.data_replication_error.error #=> String, one of ["AGENT_NOT_SEEN", "FAILBACK_CLIENT_NOT_SEEN", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_ESTABLISH_RECOVERY_INSTANCE_COMMUNICATION", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE_TO_FAILBACK_CLIENT", "FAILED_TO_CONFIGURE_REPLICATION_SOFTWARE", "FAILED_TO_PAIR_AGENT_WITH_REPLICATION_SOFTWARE", "FAILED_TO_ESTABLISH_AGENT_REPLICATOR_SOFTWARE_COMMUNICATION"]
    #   resp.data.items[0].data_replication_info.data_replication_error.raw_error #=> String
    #   resp.data.items[0].recovery_instance_properties #=> Types::RecoveryInstanceProperties
    #   resp.data.items[0].recovery_instance_properties.last_updated_date_time #=> String
    #   resp.data.items[0].recovery_instance_properties.identification_hints #=> Types::IdentificationHints
    #   resp.data.items[0].recovery_instance_properties.identification_hints.fqdn #=> String
    #   resp.data.items[0].recovery_instance_properties.identification_hints.hostname #=> String
    #   resp.data.items[0].recovery_instance_properties.identification_hints.vm_ware_uuid #=> String
    #   resp.data.items[0].recovery_instance_properties.identification_hints.aws_instance_id #=> String
    #   resp.data.items[0].recovery_instance_properties.network_interfaces #=> Array<NetworkInterface>
    #   resp.data.items[0].recovery_instance_properties.network_interfaces[0] #=> Types::NetworkInterface
    #   resp.data.items[0].recovery_instance_properties.network_interfaces[0].mac_address #=> String
    #   resp.data.items[0].recovery_instance_properties.network_interfaces[0].ips #=> Array<String>
    #   resp.data.items[0].recovery_instance_properties.network_interfaces[0].ips[0] #=> String
    #   resp.data.items[0].recovery_instance_properties.network_interfaces[0].is_primary #=> Boolean
    #   resp.data.items[0].recovery_instance_properties.disks #=> Array<RecoveryInstanceDisk>
    #   resp.data.items[0].recovery_instance_properties.disks[0] #=> Types::RecoveryInstanceDisk
    #   resp.data.items[0].recovery_instance_properties.disks[0].internal_device_name #=> String
    #   resp.data.items[0].recovery_instance_properties.disks[0].bytes #=> Integer
    #   resp.data.items[0].recovery_instance_properties.disks[0].ebs_volume_id #=> String
    #   resp.data.items[0].recovery_instance_properties.cpus #=> Array<CPU>
    #   resp.data.items[0].recovery_instance_properties.cpus[0] #=> Types::CPU
    #   resp.data.items[0].recovery_instance_properties.cpus[0].cores #=> Integer
    #   resp.data.items[0].recovery_instance_properties.cpus[0].model_name #=> String
    #   resp.data.items[0].recovery_instance_properties.ram_bytes #=> Integer
    #   resp.data.items[0].recovery_instance_properties.os #=> Types::OS
    #   resp.data.items[0].recovery_instance_properties.os.full_string #=> String
    #   resp.data.items[0].point_in_time_snapshot_date_time #=> String
    #   resp.data.items[0].is_drill #=> Boolean
    #
    def describe_recovery_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRecoveryInstancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRecoveryInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRecoveryInstances
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::UninitializedAccountException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::DescribeRecoveryInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRecoveryInstances,
        stubs: @stubs,
        params_class: Params::DescribeRecoveryInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_recovery_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all Recovery Snapshots for a single Source Server.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRecoverySnapshotsInput}.
    #
    # @option params [String] :source_server_id
    #   <p>Filter Recovery Snapshots by Source Server ID.</p>
    #
    # @option params [DescribeRecoverySnapshotsRequestFilters] :filters
    #   <p>A set of filters by which to return Recovery Snapshots.</p>
    #
    # @option params [String] :order
    #   <p>The sorted ordering by which to return Recovery Snapshots.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of Recovery Snapshots to retrieve.</p>
    #
    # @option params [String] :next_token
    #   <p>The token of the next Recovery Snapshot to retrieve.</p>
    #
    # @return [Types::DescribeRecoverySnapshotsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_recovery_snapshots(
    #     source_server_id: 'sourceServerID', # required
    #     filters: {
    #       from_date_time: 'fromDateTime',
    #       to_date_time: 'toDateTime'
    #     },
    #     order: 'ASC', # accepts ["ASC", "DESC"]
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRecoverySnapshotsOutput
    #   resp.data.items #=> Array<RecoverySnapshot>
    #   resp.data.items[0] #=> Types::RecoverySnapshot
    #   resp.data.items[0].snapshot_id #=> String
    #   resp.data.items[0].source_server_id #=> String
    #   resp.data.items[0].expected_timestamp #=> String
    #   resp.data.items[0].timestamp #=> String
    #   resp.data.items[0].ebs_snapshots #=> Array<String>
    #   resp.data.items[0].ebs_snapshots[0] #=> String
    #   resp.data.next_token #=> String
    #
    def describe_recovery_snapshots(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRecoverySnapshotsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRecoverySnapshotsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRecoverySnapshots
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::UninitializedAccountException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::DescribeRecoverySnapshots
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRecoverySnapshots,
        stubs: @stubs,
        params_class: Params::DescribeRecoverySnapshotsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_recovery_snapshots
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
    #   <p>The IDs of the Replication Configuration Templates to retrieve. An empty list means all Replication Configuration Templates.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of Replication Configuration Templates to retrieve.</p>
    #
    # @option params [String] :next_token
    #   <p>The token of the next Replication Configuration Template to retrieve.</p>
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
    #   resp.data.items[0].default_large_staging_disk_type #=> String, one of ["GP2", "GP3", "ST1"]
    #   resp.data.items[0].ebs_encryption #=> String, one of ["DEFAULT", "CUSTOM"]
    #   resp.data.items[0].ebs_encryption_key_arn #=> String
    #   resp.data.items[0].bandwidth_throttling #=> Integer
    #   resp.data.items[0].data_plane_routing #=> String, one of ["PRIVATE_IP", "PUBLIC_IP"]
    #   resp.data.items[0].create_public_ip #=> Boolean
    #   resp.data.items[0].staging_area_tags #=> Hash<String, String>
    #   resp.data.items[0].staging_area_tags['key'] #=> String
    #   resp.data.items[0].tags #=> Hash<String, String>
    #   resp.data.items[0].pit_policy #=> Array<PITPolicyRule>
    #   resp.data.items[0].pit_policy[0] #=> Types::PITPolicyRule
    #   resp.data.items[0].pit_policy[0].rule_id #=> Integer
    #   resp.data.items[0].pit_policy[0].units #=> String, one of ["MINUTE", "HOUR", "DAY"]
    #   resp.data.items[0].pit_policy[0].interval #=> Integer
    #   resp.data.items[0].pit_policy[0].retention_duration #=> Integer
    #   resp.data.items[0].pit_policy[0].enabled #=> Boolean
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UninitializedAccountException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException]),
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

    # <p>Lists all Source Servers or multiple Source Servers filtered by ID.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeSourceServersInput}.
    #
    # @option params [DescribeSourceServersRequestFilters] :filters
    #   <p>A set of filters by which to return Source Servers.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of Source Servers to retrieve.</p>
    #
    # @option params [String] :next_token
    #   <p>The token of the next Source Server to retrieve.</p>
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
    #       hardware_id: 'hardwareId',
    #       staging_account_i_ds: [
    #         'member'
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
    #   resp.data.items[0].tags #=> Hash<String, String>
    #   resp.data.items[0].tags['key'] #=> String
    #   resp.data.items[0].recovery_instance_id #=> String
    #   resp.data.items[0].last_launch_result #=> String, one of ["NOT_STARTED", "PENDING", "SUCCEEDED", "FAILED"]
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
    #   resp.data.items[0].data_replication_info.data_replication_state #=> String, one of ["STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED"]
    #   resp.data.items[0].data_replication_info.data_replication_initiation #=> Types::DataReplicationInitiation
    #   resp.data.items[0].data_replication_info.data_replication_initiation.start_date_time #=> String
    #   resp.data.items[0].data_replication_info.data_replication_initiation.next_attempt_date_time #=> String
    #   resp.data.items[0].data_replication_info.data_replication_initiation.steps #=> Array<DataReplicationInitiationStep>
    #   resp.data.items[0].data_replication_info.data_replication_initiation.steps[0] #=> Types::DataReplicationInitiationStep
    #   resp.data.items[0].data_replication_info.data_replication_initiation.steps[0].name #=> String, one of ["WAIT", "CREATE_SECURITY_GROUP", "LAUNCH_REPLICATION_SERVER", "BOOT_REPLICATION_SERVER", "AUTHENTICATE_WITH_SERVICE", "DOWNLOAD_REPLICATION_SOFTWARE", "CREATE_STAGING_DISKS", "ATTACH_STAGING_DISKS", "PAIR_REPLICATION_SERVER_WITH_AGENT", "CONNECT_AGENT_TO_REPLICATION_SERVER", "START_DATA_TRANSFER"]
    #   resp.data.items[0].data_replication_info.data_replication_initiation.steps[0].status #=> String, one of ["NOT_STARTED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "SKIPPED"]
    #   resp.data.items[0].data_replication_info.data_replication_error #=> Types::DataReplicationError
    #   resp.data.items[0].data_replication_info.data_replication_error.error #=> String, one of ["AGENT_NOT_SEEN", "SNAPSHOTS_FAILURE", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_CREATE_SECURITY_GROUP", "FAILED_TO_LAUNCH_REPLICATION_SERVER", "FAILED_TO_BOOT_REPLICATION_SERVER", "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "FAILED_TO_CREATE_STAGING_DISKS", "FAILED_TO_ATTACH_STAGING_DISKS", "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "FAILED_TO_START_DATA_TRANSFER"]
    #   resp.data.items[0].data_replication_info.data_replication_error.raw_error #=> String
    #   resp.data.items[0].life_cycle #=> Types::LifeCycle
    #   resp.data.items[0].life_cycle.added_to_service_date_time #=> String
    #   resp.data.items[0].life_cycle.first_byte_date_time #=> String
    #   resp.data.items[0].life_cycle.elapsed_replication_duration #=> String
    #   resp.data.items[0].life_cycle.last_seen_by_service_date_time #=> String
    #   resp.data.items[0].life_cycle.last_launch #=> Types::LifeCycleLastLaunch
    #   resp.data.items[0].life_cycle.last_launch.initiated #=> Types::LifeCycleLastLaunchInitiated
    #   resp.data.items[0].life_cycle.last_launch.initiated.api_call_date_time #=> String
    #   resp.data.items[0].life_cycle.last_launch.initiated.job_id #=> String
    #   resp.data.items[0].life_cycle.last_launch.initiated.type #=> String, one of ["RECOVERY", "DRILL"]
    #   resp.data.items[0].source_properties #=> Types::SourceProperties
    #   resp.data.items[0].source_properties.last_updated_date_time #=> String
    #   resp.data.items[0].source_properties.recommended_instance_type #=> String
    #   resp.data.items[0].source_properties.identification_hints #=> Types::IdentificationHints
    #   resp.data.items[0].source_properties.identification_hints.fqdn #=> String
    #   resp.data.items[0].source_properties.identification_hints.hostname #=> String
    #   resp.data.items[0].source_properties.identification_hints.vm_ware_uuid #=> String
    #   resp.data.items[0].source_properties.identification_hints.aws_instance_id #=> String
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
    #   resp.data.items[0].staging_area #=> Types::StagingArea
    #   resp.data.items[0].staging_area.status #=> String, one of ["EXTENDED", "EXTENSION_ERROR", "NOT_EXTENDED"]
    #   resp.data.items[0].staging_area.staging_account_id #=> String
    #   resp.data.items[0].staging_area.staging_source_server_arn #=> String
    #   resp.data.items[0].staging_area.error_message #=> String
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UninitializedAccountException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException]),
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

    # <p>Disconnect a Recovery Instance from Elastic Disaster Recovery. Data replication is stopped immediately. All AWS resources created by Elastic Disaster Recovery for enabling the replication of the Recovery Instance will be terminated / deleted within 90 minutes. If the agent on the Recovery Instance has not been prevented from communicating with the Elastic Disaster Recovery service, then it will receive a command to uninstall itself (within approximately 10 minutes). The following properties of the Recovery Instance will be changed immediately: dataReplicationInfo.dataReplicationState will be set to DISCONNECTED; The totalStorageBytes property for each of dataReplicationInfo.replicatedDisks will be set to zero; dataReplicationInfo.lagDuration and dataReplicationInfo.lagDuration will be nullified.</p>
    #
    # @param [Hash] params
    #   See {Types::DisconnectRecoveryInstanceInput}.
    #
    # @option params [String] :recovery_instance_id
    #   <p>The ID of the Recovery Instance to disconnect.</p>
    #
    # @return [Types::DisconnectRecoveryInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disconnect_recovery_instance(
    #     recovery_instance_id: 'recoveryInstanceID' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisconnectRecoveryInstanceOutput
    #
    def disconnect_recovery_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisconnectRecoveryInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisconnectRecoveryInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisconnectRecoveryInstance
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::UninitializedAccountException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::DisconnectRecoveryInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisconnectRecoveryInstance,
        stubs: @stubs,
        params_class: Params::DisconnectRecoveryInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disconnect_recovery_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disconnects a specific Source Server from Elastic Disaster Recovery. Data replication is stopped immediately. All AWS resources created by Elastic Disaster Recovery for enabling the replication of the Source Server will be terminated / deleted within 90 minutes. You cannot disconnect a Source Server if it has a Recovery Instance. If the agent on the Source Server has not been prevented from communicating with the Elastic Disaster Recovery service, then it will receive a command to uninstall itself (within approximately 10 minutes). The following properties of the SourceServer will be changed immediately: dataReplicationInfo.dataReplicationState will be set to DISCONNECTED; The totalStorageBytes property for each of dataReplicationInfo.replicatedDisks will be set to zero; dataReplicationInfo.lagDuration and dataReplicationInfo.lagDuration will be nullified.</p>
    #
    # @param [Hash] params
    #   See {Types::DisconnectSourceServerInput}.
    #
    # @option params [String] :source_server_id
    #   <p>The ID of the Source Server to disconnect.</p>
    #
    # @return [Types::DisconnectSourceServerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disconnect_source_server(
    #     source_server_id: 'sourceServerID' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisconnectSourceServerOutput
    #   resp.data.source_server_id #=> String
    #   resp.data.arn #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.recovery_instance_id #=> String
    #   resp.data.last_launch_result #=> String, one of ["NOT_STARTED", "PENDING", "SUCCEEDED", "FAILED"]
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
    #   resp.data.data_replication_info.data_replication_state #=> String, one of ["STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED"]
    #   resp.data.data_replication_info.data_replication_initiation #=> Types::DataReplicationInitiation
    #   resp.data.data_replication_info.data_replication_initiation.start_date_time #=> String
    #   resp.data.data_replication_info.data_replication_initiation.next_attempt_date_time #=> String
    #   resp.data.data_replication_info.data_replication_initiation.steps #=> Array<DataReplicationInitiationStep>
    #   resp.data.data_replication_info.data_replication_initiation.steps[0] #=> Types::DataReplicationInitiationStep
    #   resp.data.data_replication_info.data_replication_initiation.steps[0].name #=> String, one of ["WAIT", "CREATE_SECURITY_GROUP", "LAUNCH_REPLICATION_SERVER", "BOOT_REPLICATION_SERVER", "AUTHENTICATE_WITH_SERVICE", "DOWNLOAD_REPLICATION_SOFTWARE", "CREATE_STAGING_DISKS", "ATTACH_STAGING_DISKS", "PAIR_REPLICATION_SERVER_WITH_AGENT", "CONNECT_AGENT_TO_REPLICATION_SERVER", "START_DATA_TRANSFER"]
    #   resp.data.data_replication_info.data_replication_initiation.steps[0].status #=> String, one of ["NOT_STARTED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "SKIPPED"]
    #   resp.data.data_replication_info.data_replication_error #=> Types::DataReplicationError
    #   resp.data.data_replication_info.data_replication_error.error #=> String, one of ["AGENT_NOT_SEEN", "SNAPSHOTS_FAILURE", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_CREATE_SECURITY_GROUP", "FAILED_TO_LAUNCH_REPLICATION_SERVER", "FAILED_TO_BOOT_REPLICATION_SERVER", "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "FAILED_TO_CREATE_STAGING_DISKS", "FAILED_TO_ATTACH_STAGING_DISKS", "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "FAILED_TO_START_DATA_TRANSFER"]
    #   resp.data.data_replication_info.data_replication_error.raw_error #=> String
    #   resp.data.life_cycle #=> Types::LifeCycle
    #   resp.data.life_cycle.added_to_service_date_time #=> String
    #   resp.data.life_cycle.first_byte_date_time #=> String
    #   resp.data.life_cycle.elapsed_replication_duration #=> String
    #   resp.data.life_cycle.last_seen_by_service_date_time #=> String
    #   resp.data.life_cycle.last_launch #=> Types::LifeCycleLastLaunch
    #   resp.data.life_cycle.last_launch.initiated #=> Types::LifeCycleLastLaunchInitiated
    #   resp.data.life_cycle.last_launch.initiated.api_call_date_time #=> String
    #   resp.data.life_cycle.last_launch.initiated.job_id #=> String
    #   resp.data.life_cycle.last_launch.initiated.type #=> String, one of ["RECOVERY", "DRILL"]
    #   resp.data.source_properties #=> Types::SourceProperties
    #   resp.data.source_properties.last_updated_date_time #=> String
    #   resp.data.source_properties.recommended_instance_type #=> String
    #   resp.data.source_properties.identification_hints #=> Types::IdentificationHints
    #   resp.data.source_properties.identification_hints.fqdn #=> String
    #   resp.data.source_properties.identification_hints.hostname #=> String
    #   resp.data.source_properties.identification_hints.vm_ware_uuid #=> String
    #   resp.data.source_properties.identification_hints.aws_instance_id #=> String
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
    #   resp.data.staging_area #=> Types::StagingArea
    #   resp.data.staging_area.status #=> String, one of ["EXTENDED", "EXTENSION_ERROR", "NOT_EXTENDED"]
    #   resp.data.staging_area.staging_account_id #=> String
    #   resp.data.staging_area.staging_source_server_arn #=> String
    #   resp.data.staging_area.error_message #=> String
    #
    def disconnect_source_server(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisconnectSourceServerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisconnectSourceServerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisconnectSourceServer
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UninitializedAccountException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::DisconnectSourceServer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisconnectSourceServer,
        stubs: @stubs,
        params_class: Params::DisconnectSourceServerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disconnect_source_server
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all Failback ReplicationConfigurations, filtered by Recovery Instance ID.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFailbackReplicationConfigurationInput}.
    #
    # @option params [String] :recovery_instance_id
    #   <p>The ID of the Recovery Instance whose failback replication configuration should be returned.</p>
    #
    # @return [Types::GetFailbackReplicationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_failback_replication_configuration(
    #     recovery_instance_id: 'recoveryInstanceID' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFailbackReplicationConfigurationOutput
    #   resp.data.recovery_instance_id #=> String
    #   resp.data.name #=> String
    #   resp.data.bandwidth_throttling #=> Integer
    #   resp.data.use_private_ip #=> Boolean
    #
    def get_failback_replication_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFailbackReplicationConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFailbackReplicationConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFailbackReplicationConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UninitializedAccountException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::GetFailbackReplicationConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFailbackReplicationConfiguration,
        stubs: @stubs,
        params_class: Params::GetFailbackReplicationConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_failback_replication_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a LaunchConfiguration, filtered by Source Server IDs.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLaunchConfigurationInput}.
    #
    # @option params [String] :source_server_id
    #   <p>The ID of the Source Server that we want to retrieve a Launch Configuration for.</p>
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UninitializedAccountException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
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

    # <p>Gets a ReplicationConfiguration, filtered by Source Server ID.</p>
    #
    # @param [Hash] params
    #   See {Types::GetReplicationConfigurationInput}.
    #
    # @option params [String] :source_server_id
    #   <p>The ID of the Source Serve for this Replication Configuration.r</p>
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
    #   resp.data.default_large_staging_disk_type #=> String, one of ["GP2", "GP3", "ST1"]
    #   resp.data.replicated_disks #=> Array<ReplicationConfigurationReplicatedDisk>
    #   resp.data.replicated_disks[0] #=> Types::ReplicationConfigurationReplicatedDisk
    #   resp.data.replicated_disks[0].device_name #=> String
    #   resp.data.replicated_disks[0].is_boot_disk #=> Boolean
    #   resp.data.replicated_disks[0].staging_disk_type #=> String, one of ["AUTO", "GP2", "GP3", "IO1", "SC1", "ST1", "STANDARD"]
    #   resp.data.replicated_disks[0].iops #=> Integer
    #   resp.data.replicated_disks[0].throughput #=> Integer
    #   resp.data.ebs_encryption #=> String, one of ["DEFAULT", "CUSTOM"]
    #   resp.data.ebs_encryption_key_arn #=> String
    #   resp.data.bandwidth_throttling #=> Integer
    #   resp.data.data_plane_routing #=> String, one of ["PRIVATE_IP", "PUBLIC_IP"]
    #   resp.data.create_public_ip #=> Boolean
    #   resp.data.staging_area_tags #=> Hash<String, String>
    #   resp.data.staging_area_tags['key'] #=> String
    #   resp.data.pit_policy #=> Array<PITPolicyRule>
    #   resp.data.pit_policy[0] #=> Types::PITPolicyRule
    #   resp.data.pit_policy[0].rule_id #=> Integer
    #   resp.data.pit_policy[0].units #=> String, one of ["MINUTE", "HOUR", "DAY"]
    #   resp.data.pit_policy[0].interval #=> Integer
    #   resp.data.pit_policy[0].retention_duration #=> Integer
    #   resp.data.pit_policy[0].enabled #=> Boolean
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::UninitializedAccountException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
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

    # <p>Initialize Elastic Disaster Recovery.</p>
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::AccessDeniedException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException]),
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

    # <p>Returns a list of source servers on a staging account that are extensible, which means that:
    #             a. The source server is not already extended into this Account.
    #             b. The source server on the Account we’re reading from is not an extension of another source server.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::ListExtensibleSourceServersInput}.
    #
    # @option params [String] :staging_account_id
    #   <p>The Id of the staging Account to retrieve extensible source servers from.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of extensible source servers to retrieve.</p>
    #
    # @option params [String] :next_token
    #   <p>The token of the next extensible source server to retrieve.</p>
    #
    # @return [Types::ListExtensibleSourceServersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_extensible_source_servers(
    #     staging_account_id: 'stagingAccountID', # required
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListExtensibleSourceServersOutput
    #   resp.data.items #=> Array<StagingSourceServer>
    #   resp.data.items[0] #=> Types::StagingSourceServer
    #   resp.data.items[0].hostname #=> String
    #   resp.data.items[0].arn #=> String
    #   resp.data.items[0].tags #=> Hash<String, String>
    #   resp.data.items[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_extensible_source_servers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListExtensibleSourceServersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListExtensibleSourceServersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListExtensibleSourceServers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::UninitializedAccountException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListExtensibleSourceServers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListExtensibleSourceServers,
        stubs: @stubs,
        params_class: Params::ListExtensibleSourceServersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_extensible_source_servers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an array of staging accounts for existing extended source servers.</p>
    #
    # @param [Hash] params
    #   See {Types::ListStagingAccountsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of staging Accounts to retrieve.</p>
    #
    # @option params [String] :next_token
    #   <p>The token of the next staging Account to retrieve.</p>
    #
    # @return [Types::ListStagingAccountsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_staging_accounts(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListStagingAccountsOutput
    #   resp.data.accounts #=> Array<Account>
    #   resp.data.accounts[0] #=> Types::Account
    #   resp.data.accounts[0].account_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_staging_accounts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListStagingAccountsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListStagingAccountsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListStagingAccounts
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::UninitializedAccountException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListStagingAccounts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListStagingAccounts,
        stubs: @stubs,
        params_class: Params::ListStagingAccountsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_staging_accounts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List all tags for your Elastic Disaster Recovery resources.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource whose tags should be returned.</p>
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException]),
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

    # <p>Causes the data replication initiation sequence to begin immediately upon next Handshake for the specified Source Server ID, regardless of when the previous initiation started. This command will work only if the Source Server is stalled or is in a DISCONNECTED or STOPPED state.</p>
    #
    # @param [Hash] params
    #   See {Types::RetryDataReplicationInput}.
    #
    # @option params [String] :source_server_id
    #   <p>The ID of the Source Server whose data replication should be retried.</p>
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
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.recovery_instance_id #=> String
    #   resp.data.last_launch_result #=> String, one of ["NOT_STARTED", "PENDING", "SUCCEEDED", "FAILED"]
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
    #   resp.data.data_replication_info.data_replication_state #=> String, one of ["STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED"]
    #   resp.data.data_replication_info.data_replication_initiation #=> Types::DataReplicationInitiation
    #   resp.data.data_replication_info.data_replication_initiation.start_date_time #=> String
    #   resp.data.data_replication_info.data_replication_initiation.next_attempt_date_time #=> String
    #   resp.data.data_replication_info.data_replication_initiation.steps #=> Array<DataReplicationInitiationStep>
    #   resp.data.data_replication_info.data_replication_initiation.steps[0] #=> Types::DataReplicationInitiationStep
    #   resp.data.data_replication_info.data_replication_initiation.steps[0].name #=> String, one of ["WAIT", "CREATE_SECURITY_GROUP", "LAUNCH_REPLICATION_SERVER", "BOOT_REPLICATION_SERVER", "AUTHENTICATE_WITH_SERVICE", "DOWNLOAD_REPLICATION_SOFTWARE", "CREATE_STAGING_DISKS", "ATTACH_STAGING_DISKS", "PAIR_REPLICATION_SERVER_WITH_AGENT", "CONNECT_AGENT_TO_REPLICATION_SERVER", "START_DATA_TRANSFER"]
    #   resp.data.data_replication_info.data_replication_initiation.steps[0].status #=> String, one of ["NOT_STARTED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "SKIPPED"]
    #   resp.data.data_replication_info.data_replication_error #=> Types::DataReplicationError
    #   resp.data.data_replication_info.data_replication_error.error #=> String, one of ["AGENT_NOT_SEEN", "SNAPSHOTS_FAILURE", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_CREATE_SECURITY_GROUP", "FAILED_TO_LAUNCH_REPLICATION_SERVER", "FAILED_TO_BOOT_REPLICATION_SERVER", "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "FAILED_TO_CREATE_STAGING_DISKS", "FAILED_TO_ATTACH_STAGING_DISKS", "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "FAILED_TO_START_DATA_TRANSFER"]
    #   resp.data.data_replication_info.data_replication_error.raw_error #=> String
    #   resp.data.life_cycle #=> Types::LifeCycle
    #   resp.data.life_cycle.added_to_service_date_time #=> String
    #   resp.data.life_cycle.first_byte_date_time #=> String
    #   resp.data.life_cycle.elapsed_replication_duration #=> String
    #   resp.data.life_cycle.last_seen_by_service_date_time #=> String
    #   resp.data.life_cycle.last_launch #=> Types::LifeCycleLastLaunch
    #   resp.data.life_cycle.last_launch.initiated #=> Types::LifeCycleLastLaunchInitiated
    #   resp.data.life_cycle.last_launch.initiated.api_call_date_time #=> String
    #   resp.data.life_cycle.last_launch.initiated.job_id #=> String
    #   resp.data.life_cycle.last_launch.initiated.type #=> String, one of ["RECOVERY", "DRILL"]
    #   resp.data.source_properties #=> Types::SourceProperties
    #   resp.data.source_properties.last_updated_date_time #=> String
    #   resp.data.source_properties.recommended_instance_type #=> String
    #   resp.data.source_properties.identification_hints #=> Types::IdentificationHints
    #   resp.data.source_properties.identification_hints.fqdn #=> String
    #   resp.data.source_properties.identification_hints.hostname #=> String
    #   resp.data.source_properties.identification_hints.vm_ware_uuid #=> String
    #   resp.data.source_properties.identification_hints.aws_instance_id #=> String
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
    #   resp.data.staging_area #=> Types::StagingArea
    #   resp.data.staging_area.status #=> String, one of ["EXTENDED", "EXTENSION_ERROR", "NOT_EXTENDED"]
    #   resp.data.staging_area.staging_account_id #=> String
    #   resp.data.staging_area.staging_source_server_arn #=> String
    #   resp.data.staging_area.error_message #=> String
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UninitializedAccountException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException]),
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

    # <p>Initiates a Job for launching the machine that is being failed back to from the specified Recovery Instance. This will run conversion on the failback client and will reboot your machine, thus completing the failback process.</p>
    #
    # @param [Hash] params
    #   See {Types::StartFailbackLaunchInput}.
    #
    # @option params [Array<String>] :recovery_instance_i_ds
    #   <p>The IDs of the Recovery Instance whose failback launch we want to request.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be associated with the failback launch Job.</p>
    #
    # @return [Types::StartFailbackLaunchOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_failback_launch(
    #     recovery_instance_i_ds: [
    #       'member'
    #     ], # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartFailbackLaunchOutput
    #   resp.data.job #=> Types::Job
    #   resp.data.job.job_id #=> String
    #   resp.data.job.arn #=> String
    #   resp.data.job.type #=> String, one of ["LAUNCH", "TERMINATE", "CREATE_CONVERTED_SNAPSHOT"]
    #   resp.data.job.initiated_by #=> String, one of ["START_RECOVERY", "START_DRILL", "FAILBACK", "DIAGNOSTIC", "TERMINATE_RECOVERY_INSTANCES", "TARGET_ACCOUNT"]
    #   resp.data.job.creation_date_time #=> String
    #   resp.data.job.end_date_time #=> String
    #   resp.data.job.status #=> String, one of ["PENDING", "STARTED", "COMPLETED"]
    #   resp.data.job.participating_servers #=> Array<ParticipatingServer>
    #   resp.data.job.participating_servers[0] #=> Types::ParticipatingServer
    #   resp.data.job.participating_servers[0].source_server_id #=> String
    #   resp.data.job.participating_servers[0].recovery_instance_id #=> String
    #   resp.data.job.participating_servers[0].launch_status #=> String, one of ["PENDING", "IN_PROGRESS", "LAUNCHED", "FAILED", "TERMINATED"]
    #   resp.data.job.tags #=> Hash<String, String>
    #   resp.data.job.tags['key'] #=> String
    #
    def start_failback_launch(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartFailbackLaunchInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartFailbackLaunchInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartFailbackLaunch
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UninitializedAccountException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::StartFailbackLaunch
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartFailbackLaunch,
        stubs: @stubs,
        params_class: Params::StartFailbackLaunchOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_failback_launch
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Launches Recovery Instances for the specified Source Servers. For each Source Server you may choose a point in time snapshot to launch from, or use an on demand snapshot.</p>
    #
    # @param [Hash] params
    #   See {Types::StartRecoveryInput}.
    #
    # @option params [Array<StartRecoveryRequestSourceServer>] :source_servers
    #   <p>The Source Servers that we want to start a Recovery Job for.</p>
    #
    # @option params [Boolean] :is_drill
    #   <p>Whether this Source Server Recovery operation is a drill or not.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to be associated with the Recovery Job.</p>
    #
    # @return [Types::StartRecoveryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_recovery(
    #     source_servers: [
    #       {
    #         source_server_id: 'sourceServerID', # required
    #         recovery_snapshot_id: 'recoverySnapshotID'
    #       }
    #     ], # required
    #     is_drill: false,
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartRecoveryOutput
    #   resp.data.job #=> Types::Job
    #   resp.data.job.job_id #=> String
    #   resp.data.job.arn #=> String
    #   resp.data.job.type #=> String, one of ["LAUNCH", "TERMINATE", "CREATE_CONVERTED_SNAPSHOT"]
    #   resp.data.job.initiated_by #=> String, one of ["START_RECOVERY", "START_DRILL", "FAILBACK", "DIAGNOSTIC", "TERMINATE_RECOVERY_INSTANCES", "TARGET_ACCOUNT"]
    #   resp.data.job.creation_date_time #=> String
    #   resp.data.job.end_date_time #=> String
    #   resp.data.job.status #=> String, one of ["PENDING", "STARTED", "COMPLETED"]
    #   resp.data.job.participating_servers #=> Array<ParticipatingServer>
    #   resp.data.job.participating_servers[0] #=> Types::ParticipatingServer
    #   resp.data.job.participating_servers[0].source_server_id #=> String
    #   resp.data.job.participating_servers[0].recovery_instance_id #=> String
    #   resp.data.job.participating_servers[0].launch_status #=> String, one of ["PENDING", "IN_PROGRESS", "LAUNCHED", "FAILED", "TERMINATED"]
    #   resp.data.job.tags #=> Hash<String, String>
    #   resp.data.job.tags['key'] #=> String
    #
    def start_recovery(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartRecoveryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartRecoveryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartRecovery
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::UninitializedAccountException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::StartRecovery
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartRecovery,
        stubs: @stubs,
        params_class: Params::StartRecoveryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_recovery
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops the failback process for a specified Recovery Instance. This changes the Failback State of the Recovery Instance back to FAILBACK_NOT_STARTED.</p>
    #
    # @param [Hash] params
    #   See {Types::StopFailbackInput}.
    #
    # @option params [String] :recovery_instance_id
    #   <p>The ID of the Recovery Instance we want to stop failback for.</p>
    #
    # @return [Types::StopFailbackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_failback(
    #     recovery_instance_id: 'recoveryInstanceID' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopFailbackOutput
    #
    def stop_failback(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopFailbackInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopFailbackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopFailback
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UninitializedAccountException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::StopFailback
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopFailback,
        stubs: @stubs,
        params_class: Params::StopFailbackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_failback
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or overwrites only the specified tags for the specified Elastic Disaster Recovery resource or resources. When you specify an existing tag key, the value is overwritten with the new value. Each resource can have a maximum of 50 tags. Each tag consists of a key and optional value.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>ARN of the resource for which tags are to be added or updated.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Array of tags to be added or updated.</p>
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException]),
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

    # <p>Initiates a Job for terminating the EC2 resources associated with the specified Recovery Instances, and then will delete the Recovery Instances from the Elastic Disaster Recovery service.</p>
    #
    # @param [Hash] params
    #   See {Types::TerminateRecoveryInstancesInput}.
    #
    # @option params [Array<String>] :recovery_instance_i_ds
    #   <p>The IDs of the Recovery Instances that should be terminated.</p>
    #
    # @return [Types::TerminateRecoveryInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_recovery_instances(
    #     recovery_instance_i_ds: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TerminateRecoveryInstancesOutput
    #   resp.data.job #=> Types::Job
    #   resp.data.job.job_id #=> String
    #   resp.data.job.arn #=> String
    #   resp.data.job.type #=> String, one of ["LAUNCH", "TERMINATE", "CREATE_CONVERTED_SNAPSHOT"]
    #   resp.data.job.initiated_by #=> String, one of ["START_RECOVERY", "START_DRILL", "FAILBACK", "DIAGNOSTIC", "TERMINATE_RECOVERY_INSTANCES", "TARGET_ACCOUNT"]
    #   resp.data.job.creation_date_time #=> String
    #   resp.data.job.end_date_time #=> String
    #   resp.data.job.status #=> String, one of ["PENDING", "STARTED", "COMPLETED"]
    #   resp.data.job.participating_servers #=> Array<ParticipatingServer>
    #   resp.data.job.participating_servers[0] #=> Types::ParticipatingServer
    #   resp.data.job.participating_servers[0].source_server_id #=> String
    #   resp.data.job.participating_servers[0].recovery_instance_id #=> String
    #   resp.data.job.participating_servers[0].launch_status #=> String, one of ["PENDING", "IN_PROGRESS", "LAUNCHED", "FAILED", "TERMINATED"]
    #   resp.data.job.tags #=> Hash<String, String>
    #   resp.data.job.tags['key'] #=> String
    #
    def terminate_recovery_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TerminateRecoveryInstancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TerminateRecoveryInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TerminateRecoveryInstances
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UninitializedAccountException, Errors::ThrottlingException, Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ConflictException]),
        data_parser: Parsers::TerminateRecoveryInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TerminateRecoveryInstances,
        stubs: @stubs,
        params_class: Params::TerminateRecoveryInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :terminate_recovery_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified set of tags from the specified set of Elastic Disaster Recovery resources.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>ARN of the resource for which tags are to be removed.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>Array of tags to be removed.</p>
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException]),
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

    # <p>Allows you to update the failback replication configuration of a Recovery Instance by ID.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFailbackReplicationConfigurationInput}.
    #
    # @option params [String] :recovery_instance_id
    #   <p>The ID of the Recovery Instance.</p>
    #
    # @option params [String] :name
    #   <p>The name of the Failback Replication Configuration.</p>
    #
    # @option params [Integer] :bandwidth_throttling
    #   <p>Configure bandwidth throttling for the outbound data transfer rate of the Recovery Instance in Mbps.</p>
    #
    # @option params [Boolean] :use_private_ip
    #   <p>Whether to use Private IP for the failback replication of the Recovery Instance.</p>
    #
    # @return [Types::UpdateFailbackReplicationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_failback_replication_configuration(
    #     recovery_instance_id: 'recoveryInstanceID', # required
    #     name: 'name',
    #     bandwidth_throttling: 1,
    #     use_private_ip: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFailbackReplicationConfigurationOutput
    #
    def update_failback_replication_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFailbackReplicationConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFailbackReplicationConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFailbackReplicationConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::UninitializedAccountException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::UpdateFailbackReplicationConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFailbackReplicationConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateFailbackReplicationConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_failback_replication_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a LaunchConfiguration by Source Server ID.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateLaunchConfigurationInput}.
    #
    # @option params [String] :source_server_id
    #   <p>The ID of the Source Server that we want to retrieve a Launch Configuration for.</p>
    #
    # @option params [String] :name
    #   <p>The name of the launch configuration.</p>
    #
    # @option params [String] :launch_disposition
    #   <p>The state of the Recovery Instance in EC2 after the recovery operation.</p>
    #
    # @option params [String] :target_instance_type_right_sizing_method
    #   <p>Whether Elastic Disaster Recovery should try to automatically choose the instance type that best matches the OS, CPU, and RAM of your Source Server.</p>
    #
    # @option params [Boolean] :copy_private_ip
    #   <p>Whether we should copy the Private IP of the Source Server to the Recovery Instance.</p>
    #
    # @option params [Boolean] :copy_tags
    #   <p>Whether we want to copy the tags of the Source Server to the EC2 machine of the Recovery Instance.</p>
    #
    # @option params [Licensing] :licensing
    #   <p>The licensing configuration to be used for this launch configuration.</p>
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
    #     }
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UninitializedAccountException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException]),
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

    # <p>Allows you to update a ReplicationConfiguration by Source Server ID.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateReplicationConfigurationInput}.
    #
    # @option params [String] :source_server_id
    #   <p>The ID of the Source Server for this Replication Configuration.</p>
    #
    # @option params [String] :name
    #   <p>The name of the Replication Configuration.</p>
    #
    # @option params [String] :staging_area_subnet_id
    #   <p>The subnet to be used by the replication staging area.</p>
    #
    # @option params [Boolean] :associate_default_security_group
    #   <p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration.</p>
    #
    # @option params [Array<String>] :replication_servers_security_groups_i_ds
    #   <p>The security group IDs that will be used by the replication server.</p>
    #
    # @option params [String] :replication_server_instance_type
    #   <p>The instance type to be used for the replication server.</p>
    #
    # @option params [Boolean] :use_dedicated_replication_server
    #   <p>Whether to use a dedicated Replication Server in the replication staging area.</p>
    #
    # @option params [String] :default_large_staging_disk_type
    #   <p>The Staging Disk EBS volume type to be used during replication.</p>
    #
    # @option params [Array<ReplicationConfigurationReplicatedDisk>] :replicated_disks
    #   <p>The configuration of the disks of the Source Server to be replicated.</p>
    #
    # @option params [String] :ebs_encryption
    #   <p>The type of EBS encryption to be used during replication.</p>
    #
    # @option params [String] :ebs_encryption_key_arn
    #   <p>The ARN of the EBS encryption key to be used during replication.</p>
    #
    # @option params [Integer] :bandwidth_throttling
    #   <p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>
    #
    # @option params [String] :data_plane_routing
    #   <p>The data plane routing mechanism that will be used for replication.</p>
    #
    # @option params [Boolean] :create_public_ip
    #   <p>Whether to create a Public IP for the Recovery Instance by default.</p>
    #
    # @option params [Hash<String, String>] :staging_area_tags
    #   <p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>
    #
    # @option params [Array<PITPolicyRule>] :pit_policy
    #   <p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>
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
    #     default_large_staging_disk_type: 'GP2', # accepts ["GP2", "GP3", "ST1"]
    #     replicated_disks: [
    #       {
    #         device_name: 'deviceName',
    #         is_boot_disk: false,
    #         staging_disk_type: 'AUTO', # accepts ["AUTO", "GP2", "GP3", "IO1", "SC1", "ST1", "STANDARD"]
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
    #     },
    #     pit_policy: [
    #       {
    #         rule_id: 1,
    #         units: 'MINUTE', # required - accepts ["MINUTE", "HOUR", "DAY"]
    #         interval: 1, # required
    #         retention_duration: 1, # required
    #         enabled: false
    #       }
    #     ]
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
    #   resp.data.default_large_staging_disk_type #=> String, one of ["GP2", "GP3", "ST1"]
    #   resp.data.replicated_disks #=> Array<ReplicationConfigurationReplicatedDisk>
    #   resp.data.replicated_disks[0] #=> Types::ReplicationConfigurationReplicatedDisk
    #   resp.data.replicated_disks[0].device_name #=> String
    #   resp.data.replicated_disks[0].is_boot_disk #=> Boolean
    #   resp.data.replicated_disks[0].staging_disk_type #=> String, one of ["AUTO", "GP2", "GP3", "IO1", "SC1", "ST1", "STANDARD"]
    #   resp.data.replicated_disks[0].iops #=> Integer
    #   resp.data.replicated_disks[0].throughput #=> Integer
    #   resp.data.ebs_encryption #=> String, one of ["DEFAULT", "CUSTOM"]
    #   resp.data.ebs_encryption_key_arn #=> String
    #   resp.data.bandwidth_throttling #=> Integer
    #   resp.data.data_plane_routing #=> String, one of ["PRIVATE_IP", "PUBLIC_IP"]
    #   resp.data.create_public_ip #=> Boolean
    #   resp.data.staging_area_tags #=> Hash<String, String>
    #   resp.data.staging_area_tags['key'] #=> String
    #   resp.data.pit_policy #=> Array<PITPolicyRule>
    #   resp.data.pit_policy[0] #=> Types::PITPolicyRule
    #   resp.data.pit_policy[0].rule_id #=> Integer
    #   resp.data.pit_policy[0].units #=> String, one of ["MINUTE", "HOUR", "DAY"]
    #   resp.data.pit_policy[0].interval #=> Integer
    #   resp.data.pit_policy[0].retention_duration #=> Integer
    #   resp.data.pit_policy[0].enabled #=> Boolean
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::UninitializedAccountException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ConflictException]),
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

    # <p>Updates a ReplicationConfigurationTemplate by ID.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateReplicationConfigurationTemplateInput}.
    #
    # @option params [String] :replication_configuration_template_id
    #   <p>The Replication Configuration Template ID.</p>
    #
    # @option params [String] :arn
    #   <p>The Replication Configuration Template ARN.</p>
    #
    # @option params [String] :staging_area_subnet_id
    #   <p>The subnet to be used by the replication staging area.</p>
    #
    # @option params [Boolean] :associate_default_security_group
    #   <p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration Template.</p>
    #
    # @option params [Array<String>] :replication_servers_security_groups_i_ds
    #   <p>The security group IDs that will be used by the replication server.</p>
    #
    # @option params [String] :replication_server_instance_type
    #   <p>The instance type to be used for the replication server.</p>
    #
    # @option params [Boolean] :use_dedicated_replication_server
    #   <p>Whether to use a dedicated Replication Server in the replication staging area.</p>
    #
    # @option params [String] :default_large_staging_disk_type
    #   <p>The Staging Disk EBS volume type to be used during replication.</p>
    #
    # @option params [String] :ebs_encryption
    #   <p>The type of EBS encryption to be used during replication.</p>
    #
    # @option params [String] :ebs_encryption_key_arn
    #   <p>The ARN of the EBS encryption key to be used during replication.</p>
    #
    # @option params [Integer] :bandwidth_throttling
    #   <p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>
    #
    # @option params [String] :data_plane_routing
    #   <p>The data plane routing mechanism that will be used for replication.</p>
    #
    # @option params [Boolean] :create_public_ip
    #   <p>Whether to create a Public IP for the Recovery Instance by default.</p>
    #
    # @option params [Hash<String, String>] :staging_area_tags
    #   <p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>
    #
    # @option params [Array<PITPolicyRule>] :pit_policy
    #   <p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>
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
    #     default_large_staging_disk_type: 'GP2', # accepts ["GP2", "GP3", "ST1"]
    #     ebs_encryption: 'DEFAULT', # accepts ["DEFAULT", "CUSTOM"]
    #     ebs_encryption_key_arn: 'ebsEncryptionKeyArn',
    #     bandwidth_throttling: 1,
    #     data_plane_routing: 'PRIVATE_IP', # accepts ["PRIVATE_IP", "PUBLIC_IP"]
    #     create_public_ip: false,
    #     staging_area_tags: {
    #       'key' => 'value'
    #     },
    #     pit_policy: [
    #       {
    #         rule_id: 1,
    #         units: 'MINUTE', # required - accepts ["MINUTE", "HOUR", "DAY"]
    #         interval: 1, # required
    #         retention_duration: 1, # required
    #         enabled: false
    #       }
    #     ]
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
    #   resp.data.default_large_staging_disk_type #=> String, one of ["GP2", "GP3", "ST1"]
    #   resp.data.ebs_encryption #=> String, one of ["DEFAULT", "CUSTOM"]
    #   resp.data.ebs_encryption_key_arn #=> String
    #   resp.data.bandwidth_throttling #=> Integer
    #   resp.data.data_plane_routing #=> String, one of ["PRIVATE_IP", "PUBLIC_IP"]
    #   resp.data.create_public_ip #=> Boolean
    #   resp.data.staging_area_tags #=> Hash<String, String>
    #   resp.data.staging_area_tags['key'] #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.pit_policy #=> Array<PITPolicyRule>
    #   resp.data.pit_policy[0] #=> Types::PITPolicyRule
    #   resp.data.pit_policy[0].rule_id #=> Integer
    #   resp.data.pit_policy[0].units #=> String, one of ["MINUTE", "HOUR", "DAY"]
    #   resp.data.pit_policy[0].interval #=> Integer
    #   resp.data.pit_policy[0].retention_duration #=> Integer
    #   resp.data.pit_policy[0].enabled #=> Boolean
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::UninitializedAccountException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException]),
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

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
