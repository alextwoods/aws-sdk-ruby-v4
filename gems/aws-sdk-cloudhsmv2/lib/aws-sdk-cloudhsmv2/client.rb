# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::CloudHSMV2
  # An API client for BaldrApiService
  # See {#initialize} for a full list of supported configuration options
  # <p>For more information about AWS CloudHSM, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a> and the <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS
  #       CloudHSM User Guide</a>.</p>
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
    def initialize(config = AWS::SDK::CloudHSMV2::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Copy an AWS CloudHSM cluster backup to a different region.</p>
    #
    # @param [Hash] params
    #   See {Types::CopyBackupToRegionInput}.
    #
    # @option params [String] :destination_region
    #   <p>The AWS region that will contain your copied CloudHSM cluster backup.</p>
    #
    # @option params [String] :backup_id
    #   <p>The ID of the backup that will be copied to the destination region. </p>
    #
    # @option params [Array<Tag>] :tag_list
    #   <p>Tags to apply to the destination backup during creation. If you specify tags, only these tags will be applied to the destination backup. If you do not specify tags, the service copies tags from the source backup to the destination backup.</p>
    #
    # @return [Types::CopyBackupToRegionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_backup_to_region(
    #     destination_region: 'DestinationRegion', # required
    #     backup_id: 'BackupId', # required
    #     tag_list: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CopyBackupToRegionOutput
    #   resp.data.destination_backup #=> Types::DestinationBackup
    #   resp.data.destination_backup.create_timestamp #=> Time
    #   resp.data.destination_backup.source_region #=> String
    #   resp.data.destination_backup.source_backup #=> String
    #   resp.data.destination_backup.source_cluster #=> String
    #
    def copy_backup_to_region(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CopyBackupToRegionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CopyBackupToRegionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CopyBackupToRegion
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmAccessDeniedException, Errors::CloudHsmInvalidRequestException, Errors::CloudHsmResourceNotFoundException, Errors::CloudHsmTagException, Errors::CloudHsmInternalFailureException, Errors::CloudHsmServiceException]),
        data_parser: Parsers::CopyBackupToRegion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CopyBackupToRegion,
        stubs: @stubs,
        params_class: Params::CopyBackupToRegionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :copy_backup_to_region
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new AWS CloudHSM cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateClusterInput}.
    #
    # @option params [BackupRetentionPolicy] :backup_retention_policy
    #   <p>A policy that defines how the service retains backups.</p>
    #
    # @option params [String] :hsm_type
    #   <p>The type of HSM to use in the cluster. Currently the only allowed value is
    #         <code>hsm1.medium</code>.</p>
    #
    # @option params [String] :source_backup_id
    #   <p>The identifier (ID) of the cluster backup to restore. Use this value to restore the
    #         cluster from a backup instead of creating a new cluster. To find the backup ID, use <a>DescribeBackups</a>.</p>
    #
    # @option params [Array<String>] :subnet_ids
    #   <p>The identifiers (IDs) of the subnets where you are creating the cluster. You must
    #         specify at least one subnet. If you specify multiple subnets, they must meet the following
    #         criteria:</p>
    #            <ul>
    #               <li>
    #                  <p>All subnets must be in the same virtual private cloud (VPC).</p>
    #               </li>
    #               <li>
    #                  <p>You can specify only one subnet per Availability Zone.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<Tag>] :tag_list
    #   <p>Tags to apply to the CloudHSM cluster during creation.</p>
    #
    # @return [Types::CreateClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster(
    #     backup_retention_policy: {
    #       type: 'DAYS', # accepts ["DAYS"]
    #       value: 'Value'
    #     },
    #     hsm_type: 'HsmType', # required
    #     source_backup_id: 'SourceBackupId',
    #     subnet_ids: [
    #       'member'
    #     ], # required
    #     tag_list: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateClusterOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.backup_policy #=> String, one of ["DEFAULT"]
    #   resp.data.cluster.backup_retention_policy #=> Types::BackupRetentionPolicy
    #   resp.data.cluster.backup_retention_policy.type #=> String, one of ["DAYS"]
    #   resp.data.cluster.backup_retention_policy.value #=> String
    #   resp.data.cluster.cluster_id #=> String
    #   resp.data.cluster.create_timestamp #=> Time
    #   resp.data.cluster.hsms #=> Array<Hsm>
    #   resp.data.cluster.hsms[0] #=> Types::Hsm
    #   resp.data.cluster.hsms[0].availability_zone #=> String
    #   resp.data.cluster.hsms[0].cluster_id #=> String
    #   resp.data.cluster.hsms[0].subnet_id #=> String
    #   resp.data.cluster.hsms[0].eni_id #=> String
    #   resp.data.cluster.hsms[0].eni_ip #=> String
    #   resp.data.cluster.hsms[0].hsm_id #=> String
    #   resp.data.cluster.hsms[0].state #=> String, one of ["CREATE_IN_PROGRESS", "ACTIVE", "DEGRADED", "DELETE_IN_PROGRESS", "DELETED"]
    #   resp.data.cluster.hsms[0].state_message #=> String
    #   resp.data.cluster.hsm_type #=> String
    #   resp.data.cluster.pre_co_password #=> String
    #   resp.data.cluster.security_group #=> String
    #   resp.data.cluster.source_backup_id #=> String
    #   resp.data.cluster.state #=> String, one of ["CREATE_IN_PROGRESS", "UNINITIALIZED", "INITIALIZE_IN_PROGRESS", "INITIALIZED", "ACTIVE", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DEGRADED"]
    #   resp.data.cluster.state_message #=> String
    #   resp.data.cluster.subnet_mapping #=> Hash<String, String>
    #   resp.data.cluster.subnet_mapping['key'] #=> String
    #   resp.data.cluster.vpc_id #=> String
    #   resp.data.cluster.certificates #=> Types::Certificates
    #   resp.data.cluster.certificates.cluster_csr #=> String
    #   resp.data.cluster.certificates.hsm_certificate #=> String
    #   resp.data.cluster.certificates.aws_hardware_certificate #=> String
    #   resp.data.cluster.certificates.manufacturer_hardware_certificate #=> String
    #   resp.data.cluster.certificates.cluster_certificate #=> String
    #   resp.data.cluster.tag_list #=> Array<Tag>
    #   resp.data.cluster.tag_list[0] #=> Types::Tag
    #   resp.data.cluster.tag_list[0].key #=> String
    #   resp.data.cluster.tag_list[0].value #=> String
    #
    def create_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCluster
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmAccessDeniedException, Errors::CloudHsmInvalidRequestException, Errors::CloudHsmResourceNotFoundException, Errors::CloudHsmTagException, Errors::CloudHsmInternalFailureException, Errors::CloudHsmServiceException]),
        data_parser: Parsers::CreateCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCluster,
        stubs: @stubs,
        params_class: Params::CreateClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new hardware security module (HSM) in the specified AWS CloudHSM
    #       cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateHsmInput}.
    #
    # @option params [String] :cluster_id
    #   <p>The identifier (ID) of the HSM's cluster. To find the cluster ID, use <a>DescribeClusters</a>.</p>
    #
    # @option params [String] :availability_zone
    #   <p>The Availability Zone where you are creating the HSM. To find the cluster's
    #         Availability Zones, use <a>DescribeClusters</a>.</p>
    #
    # @option params [String] :ip_address
    #   <p>The HSM's IP address. If you specify an IP address, use an available address from the
    #         subnet that maps to the Availability Zone where you are creating the HSM. If you don't specify
    #         an IP address, one is chosen for you from that subnet.</p>
    #
    # @return [Types::CreateHsmOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_hsm(
    #     cluster_id: 'ClusterId', # required
    #     availability_zone: 'AvailabilityZone', # required
    #     ip_address: 'IpAddress'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateHsmOutput
    #   resp.data.hsm #=> Types::Hsm
    #   resp.data.hsm.availability_zone #=> String
    #   resp.data.hsm.cluster_id #=> String
    #   resp.data.hsm.subnet_id #=> String
    #   resp.data.hsm.eni_id #=> String
    #   resp.data.hsm.eni_ip #=> String
    #   resp.data.hsm.hsm_id #=> String
    #   resp.data.hsm.state #=> String, one of ["CREATE_IN_PROGRESS", "ACTIVE", "DEGRADED", "DELETE_IN_PROGRESS", "DELETED"]
    #   resp.data.hsm.state_message #=> String
    #
    def create_hsm(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateHsmInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateHsmInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateHsm
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmAccessDeniedException, Errors::CloudHsmInvalidRequestException, Errors::CloudHsmResourceNotFoundException, Errors::CloudHsmInternalFailureException, Errors::CloudHsmServiceException]),
        data_parser: Parsers::CreateHsm
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateHsm,
        stubs: @stubs,
        params_class: Params::CreateHsmOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_hsm
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a specified AWS CloudHSM backup. A backup can be restored up to 7 days
    #             after the DeleteBackup request is made. For more information on restoring a backup, see
    #                 <a>RestoreBackup</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBackupInput}.
    #
    # @option params [String] :backup_id
    #   <p>The ID of the backup to be deleted. To find the ID of a backup, use the <a>DescribeBackups</a> operation.</p>
    #
    # @return [Types::DeleteBackupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backup(
    #     backup_id: 'BackupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBackupOutput
    #   resp.data.backup #=> Types::Backup
    #   resp.data.backup.backup_id #=> String
    #   resp.data.backup.backup_state #=> String, one of ["CREATE_IN_PROGRESS", "READY", "DELETED", "PENDING_DELETION"]
    #   resp.data.backup.cluster_id #=> String
    #   resp.data.backup.create_timestamp #=> Time
    #   resp.data.backup.copy_timestamp #=> Time
    #   resp.data.backup.never_expires #=> Boolean
    #   resp.data.backup.source_region #=> String
    #   resp.data.backup.source_backup #=> String
    #   resp.data.backup.source_cluster #=> String
    #   resp.data.backup.delete_timestamp #=> Time
    #   resp.data.backup.tag_list #=> Array<Tag>
    #   resp.data.backup.tag_list[0] #=> Types::Tag
    #   resp.data.backup.tag_list[0].key #=> String
    #   resp.data.backup.tag_list[0].value #=> String
    #
    def delete_backup(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBackupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBackupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBackup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmAccessDeniedException, Errors::CloudHsmInvalidRequestException, Errors::CloudHsmResourceNotFoundException, Errors::CloudHsmInternalFailureException, Errors::CloudHsmServiceException]),
        data_parser: Parsers::DeleteBackup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBackup,
        stubs: @stubs,
        params_class: Params::DeleteBackupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_backup
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified AWS CloudHSM cluster. Before you can delete a cluster, you must
    #       delete all HSMs in the cluster. To see if the cluster contains any HSMs, use <a>DescribeClusters</a>. To delete an HSM, use <a>DeleteHsm</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteClusterInput}.
    #
    # @option params [String] :cluster_id
    #   <p>The identifier (ID) of the cluster that you are deleting. To find the cluster ID, use
    #         <a>DescribeClusters</a>.</p>
    #
    # @return [Types::DeleteClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cluster(
    #     cluster_id: 'ClusterId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteClusterOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.backup_policy #=> String, one of ["DEFAULT"]
    #   resp.data.cluster.backup_retention_policy #=> Types::BackupRetentionPolicy
    #   resp.data.cluster.backup_retention_policy.type #=> String, one of ["DAYS"]
    #   resp.data.cluster.backup_retention_policy.value #=> String
    #   resp.data.cluster.cluster_id #=> String
    #   resp.data.cluster.create_timestamp #=> Time
    #   resp.data.cluster.hsms #=> Array<Hsm>
    #   resp.data.cluster.hsms[0] #=> Types::Hsm
    #   resp.data.cluster.hsms[0].availability_zone #=> String
    #   resp.data.cluster.hsms[0].cluster_id #=> String
    #   resp.data.cluster.hsms[0].subnet_id #=> String
    #   resp.data.cluster.hsms[0].eni_id #=> String
    #   resp.data.cluster.hsms[0].eni_ip #=> String
    #   resp.data.cluster.hsms[0].hsm_id #=> String
    #   resp.data.cluster.hsms[0].state #=> String, one of ["CREATE_IN_PROGRESS", "ACTIVE", "DEGRADED", "DELETE_IN_PROGRESS", "DELETED"]
    #   resp.data.cluster.hsms[0].state_message #=> String
    #   resp.data.cluster.hsm_type #=> String
    #   resp.data.cluster.pre_co_password #=> String
    #   resp.data.cluster.security_group #=> String
    #   resp.data.cluster.source_backup_id #=> String
    #   resp.data.cluster.state #=> String, one of ["CREATE_IN_PROGRESS", "UNINITIALIZED", "INITIALIZE_IN_PROGRESS", "INITIALIZED", "ACTIVE", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DEGRADED"]
    #   resp.data.cluster.state_message #=> String
    #   resp.data.cluster.subnet_mapping #=> Hash<String, String>
    #   resp.data.cluster.subnet_mapping['key'] #=> String
    #   resp.data.cluster.vpc_id #=> String
    #   resp.data.cluster.certificates #=> Types::Certificates
    #   resp.data.cluster.certificates.cluster_csr #=> String
    #   resp.data.cluster.certificates.hsm_certificate #=> String
    #   resp.data.cluster.certificates.aws_hardware_certificate #=> String
    #   resp.data.cluster.certificates.manufacturer_hardware_certificate #=> String
    #   resp.data.cluster.certificates.cluster_certificate #=> String
    #   resp.data.cluster.tag_list #=> Array<Tag>
    #   resp.data.cluster.tag_list[0] #=> Types::Tag
    #   resp.data.cluster.tag_list[0].key #=> String
    #   resp.data.cluster.tag_list[0].value #=> String
    #
    def delete_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCluster
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmAccessDeniedException, Errors::CloudHsmInvalidRequestException, Errors::CloudHsmResourceNotFoundException, Errors::CloudHsmTagException, Errors::CloudHsmInternalFailureException, Errors::CloudHsmServiceException]),
        data_parser: Parsers::DeleteCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCluster,
        stubs: @stubs,
        params_class: Params::DeleteClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified HSM. To specify an HSM, you can use its identifier (ID), the IP
    #       address of the HSM's elastic network interface (ENI), or the ID of the HSM's ENI. You need to
    #       specify only one of these values. To find these values, use <a>DescribeClusters</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteHsmInput}.
    #
    # @option params [String] :cluster_id
    #   <p>The identifier (ID) of the cluster that contains the HSM that you are
    #         deleting.</p>
    #
    # @option params [String] :hsm_id
    #   <p>The identifier (ID) of the HSM that you are deleting.</p>
    #
    # @option params [String] :eni_id
    #   <p>The identifier (ID) of the elastic network interface (ENI) of the HSM that you are
    #         deleting.</p>
    #
    # @option params [String] :eni_ip
    #   <p>The IP address of the elastic network interface (ENI) of the HSM that you are
    #         deleting.</p>
    #
    # @return [Types::DeleteHsmOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_hsm(
    #     cluster_id: 'ClusterId', # required
    #     hsm_id: 'HsmId',
    #     eni_id: 'EniId',
    #     eni_ip: 'EniIp'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteHsmOutput
    #   resp.data.hsm_id #=> String
    #
    def delete_hsm(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteHsmInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteHsmInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteHsm
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmAccessDeniedException, Errors::CloudHsmInvalidRequestException, Errors::CloudHsmResourceNotFoundException, Errors::CloudHsmInternalFailureException, Errors::CloudHsmServiceException]),
        data_parser: Parsers::DeleteHsm
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteHsm,
        stubs: @stubs,
        params_class: Params::DeleteHsmOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_hsm
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about backups of AWS CloudHSM clusters.</p>
    #          <p>This is a paginated operation, which means that each response might contain only a
    #       subset of all the backups. When the response contains only a subset of backups, it includes a
    #         <code>NextToken</code> value. Use this value in a subsequent <code>DescribeBackups</code>
    #       request to get more backups. When you receive a response with no <code>NextToken</code> (or an
    #       empty or null value), that means there are no more backups to get.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeBackupsInput}.
    #
    # @option params [String] :next_token
    #   <p>The <code>NextToken</code> value that you received in the previous response. Use this
    #         value to get more backups.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of backups to return in the response. When there are more backups
    #         than the number you specify, the response contains a <code>NextToken</code> value.</p>
    #
    # @option params [Hash<String, Array<String>>] :filters
    #   <p>One or more filters to limit the items returned in the response.</p>
    #            <p>Use the <code>backupIds</code> filter to return only the specified backups. Specify
    #         backups by their backup identifier (ID).</p>
    #            <p>Use the <code>sourceBackupIds</code> filter to return only the backups created from a
    #         source backup. The <code>sourceBackupID</code> of a source backup is returned by the <a>CopyBackupToRegion</a> operation.</p>
    #            <p>Use the <code>clusterIds</code> filter to return only the backups for the specified
    #         clusters. Specify clusters by their cluster identifier (ID).</p>
    #            <p>Use the <code>states</code> filter to return only backups that match the specified
    #         state.</p>
    #            <p>Use the <code>neverExpires</code> filter to return backups filtered by the value in the
    #           <code>neverExpires</code> parameter. <code>True</code> returns all backups exempt from the
    #         backup retention policy. <code>False</code> returns all backups with a backup retention policy
    #         defined at the cluster.</p>
    #
    # @option params [Boolean] :sort_ascending
    #   <p>Designates whether or not to sort the return backups by ascending chronological order
    #         of generation.</p>
    #
    # @return [Types::DescribeBackupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_backups(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     filters: {
    #       'key' => [
    #         'member'
    #       ]
    #     },
    #     sort_ascending: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeBackupsOutput
    #   resp.data.backups #=> Array<Backup>
    #   resp.data.backups[0] #=> Types::Backup
    #   resp.data.backups[0].backup_id #=> String
    #   resp.data.backups[0].backup_state #=> String, one of ["CREATE_IN_PROGRESS", "READY", "DELETED", "PENDING_DELETION"]
    #   resp.data.backups[0].cluster_id #=> String
    #   resp.data.backups[0].create_timestamp #=> Time
    #   resp.data.backups[0].copy_timestamp #=> Time
    #   resp.data.backups[0].never_expires #=> Boolean
    #   resp.data.backups[0].source_region #=> String
    #   resp.data.backups[0].source_backup #=> String
    #   resp.data.backups[0].source_cluster #=> String
    #   resp.data.backups[0].delete_timestamp #=> Time
    #   resp.data.backups[0].tag_list #=> Array<Tag>
    #   resp.data.backups[0].tag_list[0] #=> Types::Tag
    #   resp.data.backups[0].tag_list[0].key #=> String
    #   resp.data.backups[0].tag_list[0].value #=> String
    #   resp.data.next_token #=> String
    #
    def describe_backups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeBackupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeBackupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeBackups
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmAccessDeniedException, Errors::CloudHsmInvalidRequestException, Errors::CloudHsmResourceNotFoundException, Errors::CloudHsmTagException, Errors::CloudHsmInternalFailureException, Errors::CloudHsmServiceException]),
        data_parser: Parsers::DescribeBackups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeBackups,
        stubs: @stubs,
        params_class: Params::DescribeBackupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_backups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about AWS CloudHSM clusters.</p>
    #          <p>This is a paginated operation, which means that each response might contain only a
    #       subset of all the clusters. When the response contains only a subset of clusters, it includes
    #       a <code>NextToken</code> value. Use this value in a subsequent <code>DescribeClusters</code>
    #       request to get more clusters. When you receive a response with no <code>NextToken</code> (or
    #       an empty or null value), that means there are no more clusters to get.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeClustersInput}.
    #
    # @option params [Hash<String, Array<String>>] :filters
    #   <p>One or more filters to limit the items returned in the response.</p>
    #            <p>Use the <code>clusterIds</code> filter to return only the specified clusters. Specify
    #         clusters by their cluster identifier (ID).</p>
    #            <p>Use the <code>vpcIds</code> filter to return only the clusters in the specified virtual
    #         private clouds (VPCs). Specify VPCs by their VPC identifier (ID).</p>
    #            <p>Use the <code>states</code> filter to return only clusters that match the specified
    #         state.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>NextToken</code> value that you received in the previous response. Use this
    #         value to get more clusters.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of clusters to return in the response. When there are more clusters
    #         than the number you specify, the response contains a <code>NextToken</code> value.</p>
    #
    # @return [Types::DescribeClustersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_clusters(
    #     filters: {
    #       'key' => [
    #         'member'
    #       ]
    #     },
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeClustersOutput
    #   resp.data.clusters #=> Array<Cluster>
    #   resp.data.clusters[0] #=> Types::Cluster
    #   resp.data.clusters[0].backup_policy #=> String, one of ["DEFAULT"]
    #   resp.data.clusters[0].backup_retention_policy #=> Types::BackupRetentionPolicy
    #   resp.data.clusters[0].backup_retention_policy.type #=> String, one of ["DAYS"]
    #   resp.data.clusters[0].backup_retention_policy.value #=> String
    #   resp.data.clusters[0].cluster_id #=> String
    #   resp.data.clusters[0].create_timestamp #=> Time
    #   resp.data.clusters[0].hsms #=> Array<Hsm>
    #   resp.data.clusters[0].hsms[0] #=> Types::Hsm
    #   resp.data.clusters[0].hsms[0].availability_zone #=> String
    #   resp.data.clusters[0].hsms[0].cluster_id #=> String
    #   resp.data.clusters[0].hsms[0].subnet_id #=> String
    #   resp.data.clusters[0].hsms[0].eni_id #=> String
    #   resp.data.clusters[0].hsms[0].eni_ip #=> String
    #   resp.data.clusters[0].hsms[0].hsm_id #=> String
    #   resp.data.clusters[0].hsms[0].state #=> String, one of ["CREATE_IN_PROGRESS", "ACTIVE", "DEGRADED", "DELETE_IN_PROGRESS", "DELETED"]
    #   resp.data.clusters[0].hsms[0].state_message #=> String
    #   resp.data.clusters[0].hsm_type #=> String
    #   resp.data.clusters[0].pre_co_password #=> String
    #   resp.data.clusters[0].security_group #=> String
    #   resp.data.clusters[0].source_backup_id #=> String
    #   resp.data.clusters[0].state #=> String, one of ["CREATE_IN_PROGRESS", "UNINITIALIZED", "INITIALIZE_IN_PROGRESS", "INITIALIZED", "ACTIVE", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DEGRADED"]
    #   resp.data.clusters[0].state_message #=> String
    #   resp.data.clusters[0].subnet_mapping #=> Hash<String, String>
    #   resp.data.clusters[0].subnet_mapping['key'] #=> String
    #   resp.data.clusters[0].vpc_id #=> String
    #   resp.data.clusters[0].certificates #=> Types::Certificates
    #   resp.data.clusters[0].certificates.cluster_csr #=> String
    #   resp.data.clusters[0].certificates.hsm_certificate #=> String
    #   resp.data.clusters[0].certificates.aws_hardware_certificate #=> String
    #   resp.data.clusters[0].certificates.manufacturer_hardware_certificate #=> String
    #   resp.data.clusters[0].certificates.cluster_certificate #=> String
    #   resp.data.clusters[0].tag_list #=> Array<Tag>
    #   resp.data.clusters[0].tag_list[0] #=> Types::Tag
    #   resp.data.clusters[0].tag_list[0].key #=> String
    #   resp.data.clusters[0].tag_list[0].value #=> String
    #   resp.data.next_token #=> String
    #
    def describe_clusters(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeClustersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeClustersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeClusters
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmAccessDeniedException, Errors::CloudHsmInvalidRequestException, Errors::CloudHsmTagException, Errors::CloudHsmInternalFailureException, Errors::CloudHsmServiceException]),
        data_parser: Parsers::DescribeClusters
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeClusters,
        stubs: @stubs,
        params_class: Params::DescribeClustersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_clusters
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Claims an AWS CloudHSM cluster by submitting the cluster certificate issued by your
    #       issuing certificate authority (CA) and the CA's root certificate. Before you can claim a
    #       cluster, you must sign the cluster's certificate signing request (CSR) with your issuing CA.
    #       To get the cluster's CSR, use <a>DescribeClusters</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::InitializeClusterInput}.
    #
    # @option params [String] :cluster_id
    #   <p>The identifier (ID) of the cluster that you are claiming. To find the cluster ID, use
    #           <a>DescribeClusters</a>.</p>
    #
    # @option params [String] :signed_cert
    #   <p>The cluster certificate issued (signed) by your issuing certificate authority (CA). The
    #         certificate must be in PEM format and can contain a maximum of 5000 characters.</p>
    #
    # @option params [String] :trust_anchor
    #   <p>The issuing certificate of the issuing certificate authority (CA) that issued (signed)
    #         the cluster certificate. You must use a self-signed certificate. The certificate used to sign the HSM CSR must be directly available, and thus must be the
    #         root certificate. The certificate must be in PEM format and can contain a
    #         maximum of 5000 characters.</p>
    #
    # @return [Types::InitializeClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.initialize_cluster(
    #     cluster_id: 'ClusterId', # required
    #     signed_cert: 'SignedCert', # required
    #     trust_anchor: 'TrustAnchor' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::InitializeClusterOutput
    #   resp.data.state #=> String, one of ["CREATE_IN_PROGRESS", "UNINITIALIZED", "INITIALIZE_IN_PROGRESS", "INITIALIZED", "ACTIVE", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DEGRADED"]
    #   resp.data.state_message #=> String
    #
    def initialize_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::InitializeClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::InitializeClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::InitializeCluster
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmAccessDeniedException, Errors::CloudHsmInvalidRequestException, Errors::CloudHsmResourceNotFoundException, Errors::CloudHsmInternalFailureException, Errors::CloudHsmServiceException]),
        data_parser: Parsers::InitializeCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::InitializeCluster,
        stubs: @stubs,
        params_class: Params::InitializeClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :initialize_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of tags for the specified AWS CloudHSM cluster.</p>
    #          <p>This is a paginated operation, which means that each response might contain only a
    #       subset of all the tags. When the response contains only a subset of tags, it includes a
    #       <code>NextToken</code> value. Use this value in a subsequent <code>ListTags</code> request to
    #       get more tags. When you receive a response with no <code>NextToken</code> (or an empty or null
    #       value), that means there are no more tags to get.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsInput}.
    #
    # @option params [String] :resource_id
    #   <p>The cluster identifier (ID) for the cluster whose tags you are getting. To find the
    #         cluster ID, use <a>DescribeClusters</a>.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>NextToken</code> value that you received in the previous response. Use this
    #         value to get more tags.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of tags to return in the response. When there are more tags than the
    #         number you specify, the response contains a <code>NextToken</code> value.</p>
    #
    # @return [Types::ListTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags(
    #     resource_id: 'ResourceId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsOutput
    #   resp.data.tag_list #=> Array<Tag>
    #   resp.data.tag_list[0] #=> Types::Tag
    #   resp.data.tag_list[0].key #=> String
    #   resp.data.tag_list[0].value #=> String
    #   resp.data.next_token #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmAccessDeniedException, Errors::CloudHsmInvalidRequestException, Errors::CloudHsmResourceNotFoundException, Errors::CloudHsmTagException, Errors::CloudHsmInternalFailureException, Errors::CloudHsmServiceException]),
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

    # <p>Modifies attributes for AWS CloudHSM backup.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyBackupAttributesInput}.
    #
    # @option params [String] :backup_id
    #   <p>The identifier (ID) of the backup to modify. To find the ID of a backup, use the <a>DescribeBackups</a> operation.</p>
    #
    # @option params [Boolean] :never_expires
    #   <p>Specifies whether the service should exempt a backup from the retention policy for the cluster. <code>True</code> exempts
    #       a backup from the retention policy. <code>False</code> means the service applies the backup retention policy defined at the cluster.</p>
    #
    # @return [Types::ModifyBackupAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_backup_attributes(
    #     backup_id: 'BackupId', # required
    #     never_expires: false # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyBackupAttributesOutput
    #   resp.data.backup #=> Types::Backup
    #   resp.data.backup.backup_id #=> String
    #   resp.data.backup.backup_state #=> String, one of ["CREATE_IN_PROGRESS", "READY", "DELETED", "PENDING_DELETION"]
    #   resp.data.backup.cluster_id #=> String
    #   resp.data.backup.create_timestamp #=> Time
    #   resp.data.backup.copy_timestamp #=> Time
    #   resp.data.backup.never_expires #=> Boolean
    #   resp.data.backup.source_region #=> String
    #   resp.data.backup.source_backup #=> String
    #   resp.data.backup.source_cluster #=> String
    #   resp.data.backup.delete_timestamp #=> Time
    #   resp.data.backup.tag_list #=> Array<Tag>
    #   resp.data.backup.tag_list[0] #=> Types::Tag
    #   resp.data.backup.tag_list[0].key #=> String
    #   resp.data.backup.tag_list[0].value #=> String
    #
    def modify_backup_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyBackupAttributesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyBackupAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyBackupAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmAccessDeniedException, Errors::CloudHsmInvalidRequestException, Errors::CloudHsmResourceNotFoundException, Errors::CloudHsmInternalFailureException, Errors::CloudHsmServiceException]),
        data_parser: Parsers::ModifyBackupAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyBackupAttributes,
        stubs: @stubs,
        params_class: Params::ModifyBackupAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_backup_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies AWS CloudHSM cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::ModifyClusterInput}.
    #
    # @option params [BackupRetentionPolicy] :backup_retention_policy
    #   <p>A policy that defines how the service retains backups.</p>
    #
    # @option params [String] :cluster_id
    #   <p>The identifier (ID) of the cluster that you want to modify. To find the cluster ID, use
    #           <a>DescribeClusters</a>.</p>
    #
    # @return [Types::ModifyClusterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_cluster(
    #     backup_retention_policy: {
    #       type: 'DAYS', # accepts ["DAYS"]
    #       value: 'Value'
    #     }, # required
    #     cluster_id: 'ClusterId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyClusterOutput
    #   resp.data.cluster #=> Types::Cluster
    #   resp.data.cluster.backup_policy #=> String, one of ["DEFAULT"]
    #   resp.data.cluster.backup_retention_policy #=> Types::BackupRetentionPolicy
    #   resp.data.cluster.backup_retention_policy.type #=> String, one of ["DAYS"]
    #   resp.data.cluster.backup_retention_policy.value #=> String
    #   resp.data.cluster.cluster_id #=> String
    #   resp.data.cluster.create_timestamp #=> Time
    #   resp.data.cluster.hsms #=> Array<Hsm>
    #   resp.data.cluster.hsms[0] #=> Types::Hsm
    #   resp.data.cluster.hsms[0].availability_zone #=> String
    #   resp.data.cluster.hsms[0].cluster_id #=> String
    #   resp.data.cluster.hsms[0].subnet_id #=> String
    #   resp.data.cluster.hsms[0].eni_id #=> String
    #   resp.data.cluster.hsms[0].eni_ip #=> String
    #   resp.data.cluster.hsms[0].hsm_id #=> String
    #   resp.data.cluster.hsms[0].state #=> String, one of ["CREATE_IN_PROGRESS", "ACTIVE", "DEGRADED", "DELETE_IN_PROGRESS", "DELETED"]
    #   resp.data.cluster.hsms[0].state_message #=> String
    #   resp.data.cluster.hsm_type #=> String
    #   resp.data.cluster.pre_co_password #=> String
    #   resp.data.cluster.security_group #=> String
    #   resp.data.cluster.source_backup_id #=> String
    #   resp.data.cluster.state #=> String, one of ["CREATE_IN_PROGRESS", "UNINITIALIZED", "INITIALIZE_IN_PROGRESS", "INITIALIZED", "ACTIVE", "UPDATE_IN_PROGRESS", "DELETE_IN_PROGRESS", "DELETED", "DEGRADED"]
    #   resp.data.cluster.state_message #=> String
    #   resp.data.cluster.subnet_mapping #=> Hash<String, String>
    #   resp.data.cluster.subnet_mapping['key'] #=> String
    #   resp.data.cluster.vpc_id #=> String
    #   resp.data.cluster.certificates #=> Types::Certificates
    #   resp.data.cluster.certificates.cluster_csr #=> String
    #   resp.data.cluster.certificates.hsm_certificate #=> String
    #   resp.data.cluster.certificates.aws_hardware_certificate #=> String
    #   resp.data.cluster.certificates.manufacturer_hardware_certificate #=> String
    #   resp.data.cluster.certificates.cluster_certificate #=> String
    #   resp.data.cluster.tag_list #=> Array<Tag>
    #   resp.data.cluster.tag_list[0] #=> Types::Tag
    #   resp.data.cluster.tag_list[0].key #=> String
    #   resp.data.cluster.tag_list[0].value #=> String
    #
    def modify_cluster(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyClusterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyClusterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyCluster
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmAccessDeniedException, Errors::CloudHsmInvalidRequestException, Errors::CloudHsmResourceNotFoundException, Errors::CloudHsmInternalFailureException, Errors::CloudHsmServiceException]),
        data_parser: Parsers::ModifyCluster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyCluster,
        stubs: @stubs,
        params_class: Params::ModifyClusterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_cluster
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Restores a specified AWS CloudHSM backup that is in the
    #                 <code>PENDING_DELETION</code> state. For mor information on deleting a backup, see
    #                 <a>DeleteBackup</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::RestoreBackupInput}.
    #
    # @option params [String] :backup_id
    #   <p>The ID of the backup to be restored. To find the ID of a backup, use the <a>DescribeBackups</a> operation.</p>
    #
    # @return [Types::RestoreBackupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_backup(
    #     backup_id: 'BackupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RestoreBackupOutput
    #   resp.data.backup #=> Types::Backup
    #   resp.data.backup.backup_id #=> String
    #   resp.data.backup.backup_state #=> String, one of ["CREATE_IN_PROGRESS", "READY", "DELETED", "PENDING_DELETION"]
    #   resp.data.backup.cluster_id #=> String
    #   resp.data.backup.create_timestamp #=> Time
    #   resp.data.backup.copy_timestamp #=> Time
    #   resp.data.backup.never_expires #=> Boolean
    #   resp.data.backup.source_region #=> String
    #   resp.data.backup.source_backup #=> String
    #   resp.data.backup.source_cluster #=> String
    #   resp.data.backup.delete_timestamp #=> Time
    #   resp.data.backup.tag_list #=> Array<Tag>
    #   resp.data.backup.tag_list[0] #=> Types::Tag
    #   resp.data.backup.tag_list[0].key #=> String
    #   resp.data.backup.tag_list[0].value #=> String
    #
    def restore_backup(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RestoreBackupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RestoreBackupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RestoreBackup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmAccessDeniedException, Errors::CloudHsmInvalidRequestException, Errors::CloudHsmResourceNotFoundException, Errors::CloudHsmInternalFailureException, Errors::CloudHsmServiceException]),
        data_parser: Parsers::RestoreBackup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RestoreBackup,
        stubs: @stubs,
        params_class: Params::RestoreBackupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :restore_backup
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or overwrites one or more tags for the specified AWS CloudHSM cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_id
    #   <p>The cluster identifier (ID) for the cluster that you are tagging. To find the cluster
    #         ID, use <a>DescribeClusters</a>.</p>
    #
    # @option params [Array<Tag>] :tag_list
    #   <p>A list of one or more tags.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_id: 'ResourceId', # required
    #     tag_list: [
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmAccessDeniedException, Errors::CloudHsmInvalidRequestException, Errors::CloudHsmResourceNotFoundException, Errors::CloudHsmTagException, Errors::CloudHsmInternalFailureException, Errors::CloudHsmServiceException]),
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

    # <p>Removes the specified tag or tags from the specified AWS CloudHSM cluster.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_id
    #   <p>The cluster identifier (ID) for the cluster whose tags you are removing. To find the
    #         cluster ID, use <a>DescribeClusters</a>.</p>
    #
    # @option params [Array<String>] :tag_key_list
    #   <p>A list of one or more tag keys for the tags that you are removing. Specify only the tag
    #         keys, not the tag values.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_id: 'ResourceId', # required
    #     tag_key_list: [
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CloudHsmAccessDeniedException, Errors::CloudHsmInvalidRequestException, Errors::CloudHsmResourceNotFoundException, Errors::CloudHsmTagException, Errors::CloudHsmInternalFailureException, Errors::CloudHsmServiceException]),
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

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
