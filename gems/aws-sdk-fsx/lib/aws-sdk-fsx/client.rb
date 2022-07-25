# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::FSx
  # An API client for AWSSimbaAPIService_v20180301
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon FSx is a fully managed service that makes it easy for storage and
  #             application administrators to launch and use shared file storage.</p>
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
    def initialize(config = AWS::SDK::FSx::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Use this action to associate one or more Domain Name Server (DNS) aliases with an existing Amazon FSx for Windows File Server file system.
    #         A file system can have a maximum of 50 DNS aliases associated with it at any one time. If you try to
    #         associate a DNS alias that is already associated with the file system, FSx takes no action on that alias in the request.
    #         For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html">Working with DNS Aliases</a> and
    #             <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/walkthrough05-file-system-custom-CNAME.html">Walkthrough 5: Using DNS aliases to access your file system</a>, including
    #              additional steps you must take to be able to access your file system using a DNS alias.</p>
    #         <p>The system response shows the DNS aliases that
    #             Amazon FSx is attempting to associate with the file system.
    #             Use the  API
    #             operation to monitor the status of the aliases Amazon FSx is
    #             associating with the file system.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateFileSystemAliasesInput}.
    #
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 64
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #
    # @option params [String] :file_system_id
    #   <p>Specifies the file system with which you want to associate one or more DNS aliases.</p>
    #
    # @option params [Array<String>] :aliases
    #   <p>An array of one or more DNS alias names to associate with the file system.
    #               The alias name has to comply with the following formatting requirements:</p>
    #               <ul>
    #               <li>
    #                  <p>Formatted as a fully-qualified domain name (FQDN), <i>
    #                        <code>hostname.domain</code>
    #                     </i>,
    #                       for example, <code>accounting.corp.example.com</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Can contain alphanumeric characters and the hyphen (-).</p>
    #               </li>
    #               <li>
    #                  <p>Cannot start or end with a hyphen.</p>
    #               </li>
    #               <li>
    #                  <p>Can start with a numeric.</p>
    #               </li>
    #            </ul>
    #           <p>For DNS alias names, Amazon FSx stores alphabetic characters as lowercase letters (a-z), regardless of how you specify them:
    #               as uppercase letters, lowercase letters, or the corresponding letters in escape codes.</p>
    #
    # @return [Types::AssociateFileSystemAliasesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_file_system_aliases(
    #     client_request_token: 'ClientRequestToken',
    #     file_system_id: 'FileSystemId', # required
    #     aliases: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateFileSystemAliasesOutput
    #   resp.data.aliases #=> Array<Alias>
    #   resp.data.aliases[0] #=> Types::Alias
    #   resp.data.aliases[0].name #=> String
    #   resp.data.aliases[0].lifecycle #=> String, one of ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #
    def associate_file_system_aliases(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateFileSystemAliasesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateFileSystemAliasesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateFileSystemAliases
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::BadRequest, Errors::FileSystemNotFound]),
        data_parser: Parsers::AssociateFileSystemAliases
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateFileSystemAliases,
        stubs: @stubs,
        params_class: Params::AssociateFileSystemAliasesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_file_system_aliases
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels an existing Amazon FSx for Lustre data repository task if that task is in either the
    #             <code>PENDING</code> or <code>EXECUTING</code> state. When you cancel a task, Amazon FSx does the following.</p>
    #             <ul>
    #             <li>
    #                <p>Any files that FSx has already exported are not reverted.</p>
    #             </li>
    #             <li>
    #                <p>FSx continues to export any files that are "in-flight" when the cancel operation is received.</p>
    #             </li>
    #             <li>
    #                <p>FSx does not export any files that have not yet been exported.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CancelDataRepositoryTaskInput}.
    #
    # @option params [String] :task_id
    #   <p>Specifies the data repository task to cancel.</p>
    #
    # @return [Types::CancelDataRepositoryTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_data_repository_task(
    #     task_id: 'TaskId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelDataRepositoryTaskOutput
    #   resp.data.lifecycle #=> String, one of ["PENDING", "EXECUTING", "FAILED", "SUCCEEDED", "CANCELED", "CANCELING"]
    #   resp.data.task_id #=> String
    #
    def cancel_data_repository_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelDataRepositoryTaskInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelDataRepositoryTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelDataRepositoryTask
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::DataRepositoryTaskNotFound, Errors::BadRequest, Errors::DataRepositoryTaskEnded, Errors::UnsupportedOperation]),
        data_parser: Parsers::CancelDataRepositoryTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelDataRepositoryTask,
        stubs: @stubs,
        params_class: Params::CancelDataRepositoryTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_data_repository_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Copies an existing backup within the same Amazon Web Services account to another Amazon Web Services Region
    #          (cross-Region copy) or within the same Amazon Web Services Region (in-Region copy). You can have up to five
    #          backup copy requests in progress to a single destination Region per account.</p>
    #          <p>You can use cross-Region backup copies for cross-Region disaster recovery. You can
    #          periodically take backups and copy them to another Region so that in the event of a
    #          disaster in the primary Region, you can restore from backup and recover availability
    #          quickly in the other Region. You can make cross-Region copies only within your Amazon Web Services partition. A partition is a grouping of Regions. Amazon Web Services currently
    #          has three partitions: <code>aws</code> (Standard Regions), <code>aws-cn</code> (China
    #          Regions), and <code>aws-us-gov</code> (Amazon Web Services GovCloud [US] Regions).</p>
    #          <p>You can also use backup copies to clone your file dataset to another Region or within
    #          the same Region.</p>
    #          <p>You can use the <code>SourceRegion</code> parameter to specify the Amazon Web Services Region
    #          from which the backup will be copied. For example, if you make the call from the
    #          <code>us-west-1</code> Region and want to copy a backup from the <code>us-east-2</code>
    #          Region, you specify <code>us-east-2</code> in the <code>SourceRegion</code> parameter
    #          to make a cross-Region copy. If you don't specify a Region, the backup copy is
    #          created in the same Region where the request is sent from (in-Region copy).</p>
    #          <p>For more information about creating backup copies, see <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/using-backups.html#copy-backups"> Copying backups</a>
    #          in the <i>Amazon FSx for Windows User Guide</i>, <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/using-backups-fsx.html#copy-backups">Copying backups</a> in the <i>Amazon FSx for Lustre User
    #             Guide</i>, and <a href="https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/using-backups.html#copy-backups">Copying backups</a> in the <i>Amazon FSx for OpenZFS User
    #             Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CopyBackupInput}.
    #
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 64
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #
    # @option params [String] :source_backup_id
    #   <p>The ID of the source backup. Specifies the ID of the backup that's being copied.</p>
    #
    # @option params [String] :source_region
    #   <p>The source Amazon Web Services Region of the backup. Specifies the Amazon Web Services Region from which the backup is being copied. The source and destination
    #            Regions must be in the same Amazon Web Services partition. If you don't specify a
    #            Region, <code>SourceRegion</code> defaults to the Region where the request is sent from
    #            (in-Region copy).</p>
    #
    # @option params [String] :kms_key_id
    #   <p>Specifies the ID of the Key Management Service (KMS) key to use for encrypting data on
    #                Amazon FSx file systems, as follows:</p>
    #           <ul>
    #               <li>
    #                  <p>Amazon FSx for Lustre <code>PERSISTENT_1</code>
    #                   and <code>PERSISTENT_2</code> deployment types only.</p>
    #                   <p>
    #                     <code>SCRATCH_1</code> and <code>SCRATCH_2</code> types are encrypted using
    #                       the Amazon FSx service KMS key for your account.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon FSx for NetApp ONTAP</p>
    #               </li>
    #               <li>
    #                  <p>Amazon FSx for OpenZFS</p>
    #               </li>
    #               <li>
    #                  <p>Amazon FSx for Windows File Server</p>
    #               </li>
    #            </ul>
    #           <p>If a <code>KmsKeyId</code> isn't specified, the Amazon FSx-managed KMS key for your account is used.
    #               For more information, see <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_Encrypt.html">Encrypt</a> in the
    #               <i>Key Management Service API Reference</i>.</p>
    #
    # @option params [Boolean] :copy_tags
    #   <p>A Boolean flag indicating whether tags from the source backup should be copied to the
    #            backup copy. This value defaults to <code>false</code>.</p>
    #            <p>If you set <code>CopyTags</code> to <code>true</code> and the source backup has existing
    #            tags, you can use the <code>Tags</code> parameter to create new tags, provided that the sum
    #            of the source backup tags and the new tags doesn't exceed 50. Both sets of tags are
    #            merged. If there are tag conflicts (for example, two tags with the same key but different
    #            values), the tags created with the <code>Tags</code> parameter take precedence.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>
    #
    # @return [Types::CopyBackupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_backup(
    #     client_request_token: 'ClientRequestToken',
    #     source_backup_id: 'SourceBackupId', # required
    #     source_region: 'SourceRegion',
    #     kms_key_id: 'KmsKeyId',
    #     copy_tags: false,
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
    #   resp.data #=> Types::CopyBackupOutput
    #   resp.data.backup #=> Types::Backup
    #   resp.data.backup.backup_id #=> String
    #   resp.data.backup.lifecycle #=> String, one of ["AVAILABLE", "CREATING", "TRANSFERRING", "DELETED", "FAILED", "PENDING", "COPYING"]
    #   resp.data.backup.failure_details #=> Types::BackupFailureDetails
    #   resp.data.backup.failure_details.message #=> String
    #   resp.data.backup.type #=> String, one of ["AUTOMATIC", "USER_INITIATED", "AWS_BACKUP"]
    #   resp.data.backup.progress_percent #=> Integer
    #   resp.data.backup.creation_time #=> Time
    #   resp.data.backup.kms_key_id #=> String
    #   resp.data.backup.resource_arn #=> String
    #   resp.data.backup.tags #=> Array<Tag>
    #   resp.data.backup.tags[0] #=> Types::Tag
    #   resp.data.backup.tags[0].key #=> String
    #   resp.data.backup.tags[0].value #=> String
    #   resp.data.backup.file_system #=> Types::FileSystem
    #   resp.data.backup.file_system.owner_id #=> String
    #   resp.data.backup.file_system.creation_time #=> Time
    #   resp.data.backup.file_system.file_system_id #=> String
    #   resp.data.backup.file_system.file_system_type #=> String, one of ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"]
    #   resp.data.backup.file_system.lifecycle #=> String, one of ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"]
    #   resp.data.backup.file_system.failure_details #=> Types::FileSystemFailureDetails
    #   resp.data.backup.file_system.failure_details.message #=> String
    #   resp.data.backup.file_system.storage_capacity #=> Integer
    #   resp.data.backup.file_system.storage_type #=> String, one of ["SSD", "HDD"]
    #   resp.data.backup.file_system.vpc_id #=> String
    #   resp.data.backup.file_system.subnet_ids #=> Array<String>
    #   resp.data.backup.file_system.subnet_ids[0] #=> String
    #   resp.data.backup.file_system.network_interface_ids #=> Array<String>
    #   resp.data.backup.file_system.network_interface_ids[0] #=> String
    #   resp.data.backup.file_system.dns_name #=> String
    #   resp.data.backup.file_system.kms_key_id #=> String
    #   resp.data.backup.file_system.resource_arn #=> String
    #   resp.data.backup.file_system.tags #=> Array<Tag>
    #   resp.data.backup.file_system.windows_configuration #=> Types::WindowsFileSystemConfiguration
    #   resp.data.backup.file_system.windows_configuration.active_directory_id #=> String
    #   resp.data.backup.file_system.windows_configuration.self_managed_active_directory_configuration #=> Types::SelfManagedActiveDirectoryAttributes
    #   resp.data.backup.file_system.windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.data.backup.file_system.windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.data.backup.file_system.windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.data.backup.file_system.windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.data.backup.file_system.windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array<String>
    #   resp.data.backup.file_system.windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.data.backup.file_system.windows_configuration.deployment_type #=> String, one of ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"]
    #   resp.data.backup.file_system.windows_configuration.remote_administration_endpoint #=> String
    #   resp.data.backup.file_system.windows_configuration.preferred_subnet_id #=> String
    #   resp.data.backup.file_system.windows_configuration.preferred_file_server_ip #=> String
    #   resp.data.backup.file_system.windows_configuration.throughput_capacity #=> Integer
    #   resp.data.backup.file_system.windows_configuration.maintenance_operations_in_progress #=> Array<String>
    #   resp.data.backup.file_system.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of ["PATCHING", "BACKING_UP"]
    #   resp.data.backup.file_system.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.backup.file_system.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.backup.file_system.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.backup.file_system.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.backup.file_system.windows_configuration.aliases #=> Array<Alias>
    #   resp.data.backup.file_system.windows_configuration.aliases[0] #=> Types::Alias
    #   resp.data.backup.file_system.windows_configuration.aliases[0].name #=> String
    #   resp.data.backup.file_system.windows_configuration.aliases[0].lifecycle #=> String, one of ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #   resp.data.backup.file_system.windows_configuration.audit_log_configuration #=> Types::WindowsAuditLogConfiguration
    #   resp.data.backup.file_system.windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #   resp.data.backup.file_system.windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #   resp.data.backup.file_system.windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.data.backup.file_system.lustre_configuration #=> Types::LustreFileSystemConfiguration
    #   resp.data.backup.file_system.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.backup.file_system.lustre_configuration.data_repository_configuration #=> Types::DataRepositoryConfiguration
    #   resp.data.backup.file_system.lustre_configuration.data_repository_configuration.lifecycle #=> String, one of ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"]
    #   resp.data.backup.file_system.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.data.backup.file_system.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.data.backup.file_system.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.data.backup.file_system.lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"]
    #   resp.data.backup.file_system.lustre_configuration.data_repository_configuration.failure_details #=> Types::DataRepositoryFailureDetails
    #   resp.data.backup.file_system.lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.data.backup.file_system.lustre_configuration.deployment_type #=> String, one of ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"]
    #   resp.data.backup.file_system.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.data.backup.file_system.lustre_configuration.mount_name #=> String
    #   resp.data.backup.file_system.lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.backup.file_system.lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.backup.file_system.lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.backup.file_system.lustre_configuration.drive_cache_type #=> String, one of ["NONE", "READ"]
    #   resp.data.backup.file_system.lustre_configuration.data_compression_type #=> String, one of ["NONE", "LZ4"]
    #   resp.data.backup.file_system.lustre_configuration.log_configuration #=> Types::LustreLogConfiguration
    #   resp.data.backup.file_system.lustre_configuration.log_configuration.level #=> String, one of ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"]
    #   resp.data.backup.file_system.lustre_configuration.log_configuration.destination #=> String
    #   resp.data.backup.file_system.lustre_configuration.root_squash_configuration #=> Types::LustreRootSquashConfiguration
    #   resp.data.backup.file_system.lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.data.backup.file_system.lustre_configuration.root_squash_configuration.no_squash_nids #=> Array<String>
    #   resp.data.backup.file_system.lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.data.backup.file_system.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.backup.file_system.administrative_actions[0] #=> Types::AdministrativeAction
    #   resp.data.backup.file_system.administrative_actions[0].administrative_action_type #=> String, one of ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS"]
    #   resp.data.backup.file_system.administrative_actions[0].progress_percent #=> Integer
    #   resp.data.backup.file_system.administrative_actions[0].request_time #=> Time
    #   resp.data.backup.file_system.administrative_actions[0].status #=> String, one of ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"]
    #   resp.data.backup.file_system.administrative_actions[0].target_file_system_values #=> Types::FileSystem
    #   resp.data.backup.file_system.administrative_actions[0].failure_details #=> Types::AdministrativeActionFailureDetails
    #   resp.data.backup.file_system.administrative_actions[0].failure_details.message #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values #=> Types::Volume
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.creation_time #=> Time
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.file_system_id #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.lifecycle #=> String, one of ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"]
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.name #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration #=> Types::OntapVolumeConfiguration
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.flex_cache_endpoint_type #=> String, one of ["NONE", "ORIGIN", "CACHE"]
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.junction_path #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.security_style #=> String, one of ["UNIX", "NTFS", "MIXED"]
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.size_in_megabytes #=> Integer
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy #=> Types::TieringPolicy
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.name #=> String, one of ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.uuid #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.ontap_volume_type #=> String, one of ["RW", "DP", "LS"]
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.resource_arn #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.tags #=> Array<Tag>
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.volume_id #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.volume_type #=> String, one of ["ONTAP", "OPENZFS"]
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.lifecycle_transition_reason #=> Types::LifecycleTransitionReason
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.lifecycle_transition_reason.message #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration #=> Types::OpenZFSVolumeConfiguration
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.parent_volume_id #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.volume_path #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.data_compression_type #=> String, one of ["NONE", "ZSTD", "LZ4"]
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot #=> Types::OpenZFSOriginSnapshotConfiguration
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of ["CLONE", "FULL_COPY"]
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.read_only #=> Boolean
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports #=> Array<OpenZFSNfsExport>
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0] #=> Types::OpenZFSNfsExport
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations #=> Array<OpenZFSClientConfiguration>
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0] #=> Types::OpenZFSClientConfiguration
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array<String>
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas #=> Array<OpenZFSUserOrGroupQuota>
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0] #=> Types::OpenZFSUserOrGroupQuota
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of ["USER", "GROUP"]
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #   resp.data.backup.file_system.administrative_actions[0].target_snapshot_values #=> Types::Snapshot
    #   resp.data.backup.file_system.administrative_actions[0].target_snapshot_values.resource_arn #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_snapshot_values.snapshot_id #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_snapshot_values.name #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_snapshot_values.volume_id #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_snapshot_values.creation_time #=> Time
    #   resp.data.backup.file_system.administrative_actions[0].target_snapshot_values.lifecycle #=> String, one of ["PENDING", "CREATING", "DELETING", "AVAILABLE"]
    #   resp.data.backup.file_system.administrative_actions[0].target_snapshot_values.lifecycle_transition_reason #=> Types::LifecycleTransitionReason
    #   resp.data.backup.file_system.administrative_actions[0].target_snapshot_values.tags #=> Array<Tag>
    #   resp.data.backup.file_system.administrative_actions[0].target_snapshot_values.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.backup.file_system.ontap_configuration #=> Types::OntapFileSystemConfiguration
    #   resp.data.backup.file_system.ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.backup.file_system.ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.backup.file_system.ontap_configuration.deployment_type #=> String, one of ["MULTI_AZ_1", "SINGLE_AZ_1"]
    #   resp.data.backup.file_system.ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.data.backup.file_system.ontap_configuration.endpoints #=> Types::FileSystemEndpoints
    #   resp.data.backup.file_system.ontap_configuration.endpoints.intercluster #=> Types::FileSystemEndpoint
    #   resp.data.backup.file_system.ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.data.backup.file_system.ontap_configuration.endpoints.intercluster.ip_addresses #=> Array<String>
    #   resp.data.backup.file_system.ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.data.backup.file_system.ontap_configuration.endpoints.management #=> Types::FileSystemEndpoint
    #   resp.data.backup.file_system.ontap_configuration.disk_iops_configuration #=> Types::DiskIopsConfiguration
    #   resp.data.backup.file_system.ontap_configuration.disk_iops_configuration.mode #=> String, one of ["AUTOMATIC", "USER_PROVISIONED"]
    #   resp.data.backup.file_system.ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.data.backup.file_system.ontap_configuration.preferred_subnet_id #=> String
    #   resp.data.backup.file_system.ontap_configuration.route_table_ids #=> Array<String>
    #   resp.data.backup.file_system.ontap_configuration.route_table_ids[0] #=> String
    #   resp.data.backup.file_system.ontap_configuration.throughput_capacity #=> Integer
    #   resp.data.backup.file_system.ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.backup.file_system.file_system_type_version #=> String
    #   resp.data.backup.file_system.open_zfs_configuration #=> Types::OpenZFSFileSystemConfiguration
    #   resp.data.backup.file_system.open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.backup.file_system.open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.backup.file_system.open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.data.backup.file_system.open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.backup.file_system.open_zfs_configuration.deployment_type #=> String, one of ["SINGLE_AZ_1"]
    #   resp.data.backup.file_system.open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.data.backup.file_system.open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.backup.file_system.open_zfs_configuration.disk_iops_configuration #=> Types::DiskIopsConfiguration
    #   resp.data.backup.file_system.open_zfs_configuration.root_volume_id #=> String
    #   resp.data.backup.directory_information #=> Types::ActiveDirectoryBackupAttributes
    #   resp.data.backup.directory_information.domain_name #=> String
    #   resp.data.backup.directory_information.active_directory_id #=> String
    #   resp.data.backup.directory_information.resource_arn #=> String
    #   resp.data.backup.owner_id #=> String
    #   resp.data.backup.source_backup_id #=> String
    #   resp.data.backup.source_backup_region #=> String
    #   resp.data.backup.resource_type #=> String, one of ["FILE_SYSTEM", "VOLUME"]
    #   resp.data.backup.volume #=> Types::Volume
    #
    def copy_backup(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CopyBackupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CopyBackupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CopyBackup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidSourceKmsKey, Errors::IncompatibleParameterError, Errors::SourceBackupUnavailable, Errors::InvalidRegion, Errors::IncompatibleRegionForMultiAZ, Errors::BadRequest, Errors::BackupNotFound, Errors::UnsupportedOperation, Errors::InvalidDestinationKmsKey, Errors::ServiceLimitExceeded]),
        data_parser: Parsers::CopyBackup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CopyBackup,
        stubs: @stubs,
        params_class: Params::CopyBackupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :copy_backup
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a backup of an existing Amazon FSx for Windows File Server file
    #             system, Amazon FSx for Lustre file system, Amazon FSx for NetApp ONTAP
    #             volume, or Amazon FSx for OpenZFS file system. We recommend creating regular
    #             backups so that you can restore a file system or volume from a backup if an issue arises
    #             with the original file system or volume.</p>
    #         <p>For Amazon FSx for Lustre file systems, you can create a backup only for file
    #             systems that have the following configuration:</p>
    #         <ul>
    #             <li>
    #                <p>A Persistent deployment type</p>
    #             </li>
    #             <li>
    #                <p>Are <i>not</i> linked to a data repository</p>
    #             </li>
    #          </ul>
    #             <p>For more information about backups, see the following:</p>
    #         <ul>
    #             <li>
    #                 <p>For Amazon FSx for Lustre, see <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/using-backups-fsx.html">Working with FSx for
    #                         Lustre backups</a>.</p>
    #             </li>
    #             <li>
    #                 <p>For Amazon FSx for Windows, see <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/using-backups.html">Working with FSx for
    #                         Windows backups</a>.</p>
    #             </li>
    #             <li>
    #                 <p>For Amazon FSx for NetApp ONTAP, see <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/using-backups.html">Working with FSx for NetApp
    #                         ONTAP backups</a>.</p>
    #             </li>
    #             <li>
    #                 <p>For Amazon FSx for OpenZFS, see <a href="https://docs.aws.amazon.com/fsx/latest/OpenZFSGuide/using-backups.html">Working with FSx for OpenZFS backups</a>.</p>
    #             </li>
    #          </ul>
    #         <p>If a backup with the specified client request token exists and the parameters match,
    #             this operation returns the description of the existing backup. If a backup with the
    #             specified client request token exists and the parameters don't match, this operation
    #             returns <code>IncompatibleParameterError</code>. If a backup with the specified client
    #             request token doesn't exist, <code>CreateBackup</code> does the following: </p>
    #         <ul>
    #             <li>
    #                 <p>Creates a new Amazon FSx backup with an assigned ID, and an initial
    #                     lifecycle state of <code>CREATING</code>.</p>
    #             </li>
    #             <li>
    #                 <p>Returns the description of the backup.</p>
    #             </li>
    #          </ul>
    #
    #         <p>By using the idempotent operation, you can retry a <code>CreateBackup</code>
    #             operation without the risk of creating an extra backup. This approach can be useful when
    #             an initial call fails in a way that makes it unclear whether a backup was created. If
    #             you use the same client request token and the initial call created a backup, the
    #             operation returns a successful result because all the parameters are the same.</p>
    #
    #         <p>The <code>CreateBackup</code> operation returns while the backup's lifecycle state is
    #             still <code>CREATING</code>. You can check the backup creation status by calling the
    #                 <a href="https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeBackups.html">DescribeBackups</a> operation, which returns the backup state along with other
    #             information.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateBackupInput}.
    #
    # @option params [String] :file_system_id
    #   <p>The ID of the file system to back up.</p>
    #
    # @option params [String] :client_request_token
    #   <p>(Optional) A string of up to 64 ASCII characters that Amazon FSx uses to
    #               ensure idempotent creation. This string is automatically filled on your behalf when you
    #               use the Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>(Optional) The tags to apply to the backup at backup creation. The key value of the
    #                   <code>Name</code> tag appears in the console as the backup name. If you have set
    #                   <code>CopyTagsToBackups</code> to <code>true</code>, and you specify one or more
    #               tags using the <code>CreateBackup</code> operation, no existing file system tags are
    #               copied from the file system to the backup.</p>
    #
    # @option params [String] :volume_id
    #   <p>(Optional) The ID of the FSx for ONTAP volume to back up.</p>
    #
    # @return [Types::CreateBackupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_backup(
    #     file_system_id: 'FileSystemId',
    #     client_request_token: 'ClientRequestToken',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     volume_id: 'VolumeId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBackupOutput
    #   resp.data.backup #=> Types::Backup
    #   resp.data.backup.backup_id #=> String
    #   resp.data.backup.lifecycle #=> String, one of ["AVAILABLE", "CREATING", "TRANSFERRING", "DELETED", "FAILED", "PENDING", "COPYING"]
    #   resp.data.backup.failure_details #=> Types::BackupFailureDetails
    #   resp.data.backup.failure_details.message #=> String
    #   resp.data.backup.type #=> String, one of ["AUTOMATIC", "USER_INITIATED", "AWS_BACKUP"]
    #   resp.data.backup.progress_percent #=> Integer
    #   resp.data.backup.creation_time #=> Time
    #   resp.data.backup.kms_key_id #=> String
    #   resp.data.backup.resource_arn #=> String
    #   resp.data.backup.tags #=> Array<Tag>
    #   resp.data.backup.tags[0] #=> Types::Tag
    #   resp.data.backup.tags[0].key #=> String
    #   resp.data.backup.tags[0].value #=> String
    #   resp.data.backup.file_system #=> Types::FileSystem
    #   resp.data.backup.file_system.owner_id #=> String
    #   resp.data.backup.file_system.creation_time #=> Time
    #   resp.data.backup.file_system.file_system_id #=> String
    #   resp.data.backup.file_system.file_system_type #=> String, one of ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"]
    #   resp.data.backup.file_system.lifecycle #=> String, one of ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"]
    #   resp.data.backup.file_system.failure_details #=> Types::FileSystemFailureDetails
    #   resp.data.backup.file_system.failure_details.message #=> String
    #   resp.data.backup.file_system.storage_capacity #=> Integer
    #   resp.data.backup.file_system.storage_type #=> String, one of ["SSD", "HDD"]
    #   resp.data.backup.file_system.vpc_id #=> String
    #   resp.data.backup.file_system.subnet_ids #=> Array<String>
    #   resp.data.backup.file_system.subnet_ids[0] #=> String
    #   resp.data.backup.file_system.network_interface_ids #=> Array<String>
    #   resp.data.backup.file_system.network_interface_ids[0] #=> String
    #   resp.data.backup.file_system.dns_name #=> String
    #   resp.data.backup.file_system.kms_key_id #=> String
    #   resp.data.backup.file_system.resource_arn #=> String
    #   resp.data.backup.file_system.tags #=> Array<Tag>
    #   resp.data.backup.file_system.windows_configuration #=> Types::WindowsFileSystemConfiguration
    #   resp.data.backup.file_system.windows_configuration.active_directory_id #=> String
    #   resp.data.backup.file_system.windows_configuration.self_managed_active_directory_configuration #=> Types::SelfManagedActiveDirectoryAttributes
    #   resp.data.backup.file_system.windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.data.backup.file_system.windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.data.backup.file_system.windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.data.backup.file_system.windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.data.backup.file_system.windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array<String>
    #   resp.data.backup.file_system.windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.data.backup.file_system.windows_configuration.deployment_type #=> String, one of ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"]
    #   resp.data.backup.file_system.windows_configuration.remote_administration_endpoint #=> String
    #   resp.data.backup.file_system.windows_configuration.preferred_subnet_id #=> String
    #   resp.data.backup.file_system.windows_configuration.preferred_file_server_ip #=> String
    #   resp.data.backup.file_system.windows_configuration.throughput_capacity #=> Integer
    #   resp.data.backup.file_system.windows_configuration.maintenance_operations_in_progress #=> Array<String>
    #   resp.data.backup.file_system.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of ["PATCHING", "BACKING_UP"]
    #   resp.data.backup.file_system.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.backup.file_system.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.backup.file_system.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.backup.file_system.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.backup.file_system.windows_configuration.aliases #=> Array<Alias>
    #   resp.data.backup.file_system.windows_configuration.aliases[0] #=> Types::Alias
    #   resp.data.backup.file_system.windows_configuration.aliases[0].name #=> String
    #   resp.data.backup.file_system.windows_configuration.aliases[0].lifecycle #=> String, one of ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #   resp.data.backup.file_system.windows_configuration.audit_log_configuration #=> Types::WindowsAuditLogConfiguration
    #   resp.data.backup.file_system.windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #   resp.data.backup.file_system.windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #   resp.data.backup.file_system.windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.data.backup.file_system.lustre_configuration #=> Types::LustreFileSystemConfiguration
    #   resp.data.backup.file_system.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.backup.file_system.lustre_configuration.data_repository_configuration #=> Types::DataRepositoryConfiguration
    #   resp.data.backup.file_system.lustre_configuration.data_repository_configuration.lifecycle #=> String, one of ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"]
    #   resp.data.backup.file_system.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.data.backup.file_system.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.data.backup.file_system.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.data.backup.file_system.lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"]
    #   resp.data.backup.file_system.lustre_configuration.data_repository_configuration.failure_details #=> Types::DataRepositoryFailureDetails
    #   resp.data.backup.file_system.lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.data.backup.file_system.lustre_configuration.deployment_type #=> String, one of ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"]
    #   resp.data.backup.file_system.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.data.backup.file_system.lustre_configuration.mount_name #=> String
    #   resp.data.backup.file_system.lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.backup.file_system.lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.backup.file_system.lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.backup.file_system.lustre_configuration.drive_cache_type #=> String, one of ["NONE", "READ"]
    #   resp.data.backup.file_system.lustre_configuration.data_compression_type #=> String, one of ["NONE", "LZ4"]
    #   resp.data.backup.file_system.lustre_configuration.log_configuration #=> Types::LustreLogConfiguration
    #   resp.data.backup.file_system.lustre_configuration.log_configuration.level #=> String, one of ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"]
    #   resp.data.backup.file_system.lustre_configuration.log_configuration.destination #=> String
    #   resp.data.backup.file_system.lustre_configuration.root_squash_configuration #=> Types::LustreRootSquashConfiguration
    #   resp.data.backup.file_system.lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.data.backup.file_system.lustre_configuration.root_squash_configuration.no_squash_nids #=> Array<String>
    #   resp.data.backup.file_system.lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.data.backup.file_system.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.backup.file_system.administrative_actions[0] #=> Types::AdministrativeAction
    #   resp.data.backup.file_system.administrative_actions[0].administrative_action_type #=> String, one of ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS"]
    #   resp.data.backup.file_system.administrative_actions[0].progress_percent #=> Integer
    #   resp.data.backup.file_system.administrative_actions[0].request_time #=> Time
    #   resp.data.backup.file_system.administrative_actions[0].status #=> String, one of ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"]
    #   resp.data.backup.file_system.administrative_actions[0].target_file_system_values #=> Types::FileSystem
    #   resp.data.backup.file_system.administrative_actions[0].failure_details #=> Types::AdministrativeActionFailureDetails
    #   resp.data.backup.file_system.administrative_actions[0].failure_details.message #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values #=> Types::Volume
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.creation_time #=> Time
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.file_system_id #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.lifecycle #=> String, one of ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"]
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.name #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration #=> Types::OntapVolumeConfiguration
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.flex_cache_endpoint_type #=> String, one of ["NONE", "ORIGIN", "CACHE"]
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.junction_path #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.security_style #=> String, one of ["UNIX", "NTFS", "MIXED"]
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.size_in_megabytes #=> Integer
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy #=> Types::TieringPolicy
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.name #=> String, one of ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.uuid #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.ontap_configuration.ontap_volume_type #=> String, one of ["RW", "DP", "LS"]
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.resource_arn #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.tags #=> Array<Tag>
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.volume_id #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.volume_type #=> String, one of ["ONTAP", "OPENZFS"]
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.lifecycle_transition_reason #=> Types::LifecycleTransitionReason
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.lifecycle_transition_reason.message #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration #=> Types::OpenZFSVolumeConfiguration
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.parent_volume_id #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.volume_path #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.data_compression_type #=> String, one of ["NONE", "ZSTD", "LZ4"]
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot #=> Types::OpenZFSOriginSnapshotConfiguration
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of ["CLONE", "FULL_COPY"]
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.read_only #=> Boolean
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports #=> Array<OpenZFSNfsExport>
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0] #=> Types::OpenZFSNfsExport
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations #=> Array<OpenZFSClientConfiguration>
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0] #=> Types::OpenZFSClientConfiguration
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array<String>
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas #=> Array<OpenZFSUserOrGroupQuota>
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0] #=> Types::OpenZFSUserOrGroupQuota
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of ["USER", "GROUP"]
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.data.backup.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #   resp.data.backup.file_system.administrative_actions[0].target_snapshot_values #=> Types::Snapshot
    #   resp.data.backup.file_system.administrative_actions[0].target_snapshot_values.resource_arn #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_snapshot_values.snapshot_id #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_snapshot_values.name #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_snapshot_values.volume_id #=> String
    #   resp.data.backup.file_system.administrative_actions[0].target_snapshot_values.creation_time #=> Time
    #   resp.data.backup.file_system.administrative_actions[0].target_snapshot_values.lifecycle #=> String, one of ["PENDING", "CREATING", "DELETING", "AVAILABLE"]
    #   resp.data.backup.file_system.administrative_actions[0].target_snapshot_values.lifecycle_transition_reason #=> Types::LifecycleTransitionReason
    #   resp.data.backup.file_system.administrative_actions[0].target_snapshot_values.tags #=> Array<Tag>
    #   resp.data.backup.file_system.administrative_actions[0].target_snapshot_values.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.backup.file_system.ontap_configuration #=> Types::OntapFileSystemConfiguration
    #   resp.data.backup.file_system.ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.backup.file_system.ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.backup.file_system.ontap_configuration.deployment_type #=> String, one of ["MULTI_AZ_1", "SINGLE_AZ_1"]
    #   resp.data.backup.file_system.ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.data.backup.file_system.ontap_configuration.endpoints #=> Types::FileSystemEndpoints
    #   resp.data.backup.file_system.ontap_configuration.endpoints.intercluster #=> Types::FileSystemEndpoint
    #   resp.data.backup.file_system.ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.data.backup.file_system.ontap_configuration.endpoints.intercluster.ip_addresses #=> Array<String>
    #   resp.data.backup.file_system.ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.data.backup.file_system.ontap_configuration.endpoints.management #=> Types::FileSystemEndpoint
    #   resp.data.backup.file_system.ontap_configuration.disk_iops_configuration #=> Types::DiskIopsConfiguration
    #   resp.data.backup.file_system.ontap_configuration.disk_iops_configuration.mode #=> String, one of ["AUTOMATIC", "USER_PROVISIONED"]
    #   resp.data.backup.file_system.ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.data.backup.file_system.ontap_configuration.preferred_subnet_id #=> String
    #   resp.data.backup.file_system.ontap_configuration.route_table_ids #=> Array<String>
    #   resp.data.backup.file_system.ontap_configuration.route_table_ids[0] #=> String
    #   resp.data.backup.file_system.ontap_configuration.throughput_capacity #=> Integer
    #   resp.data.backup.file_system.ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.backup.file_system.file_system_type_version #=> String
    #   resp.data.backup.file_system.open_zfs_configuration #=> Types::OpenZFSFileSystemConfiguration
    #   resp.data.backup.file_system.open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.backup.file_system.open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.backup.file_system.open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.data.backup.file_system.open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.backup.file_system.open_zfs_configuration.deployment_type #=> String, one of ["SINGLE_AZ_1"]
    #   resp.data.backup.file_system.open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.data.backup.file_system.open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.backup.file_system.open_zfs_configuration.disk_iops_configuration #=> Types::DiskIopsConfiguration
    #   resp.data.backup.file_system.open_zfs_configuration.root_volume_id #=> String
    #   resp.data.backup.directory_information #=> Types::ActiveDirectoryBackupAttributes
    #   resp.data.backup.directory_information.domain_name #=> String
    #   resp.data.backup.directory_information.active_directory_id #=> String
    #   resp.data.backup.directory_information.resource_arn #=> String
    #   resp.data.backup.owner_id #=> String
    #   resp.data.backup.source_backup_id #=> String
    #   resp.data.backup.source_backup_region #=> String
    #   resp.data.backup.resource_type #=> String, one of ["FILE_SYSTEM", "VOLUME"]
    #   resp.data.backup.volume #=> Types::Volume
    #
    def create_backup(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBackupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBackupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBackup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BackupInProgress, Errors::InternalServerError, Errors::IncompatibleParameterError, Errors::VolumeNotFound, Errors::BadRequest, Errors::FileSystemNotFound, Errors::UnsupportedOperation, Errors::ServiceLimitExceeded]),
        data_parser: Parsers::CreateBackup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBackup,
        stubs: @stubs,
        params_class: Params::CreateBackupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_backup
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Amazon FSx for Lustre data repository association (DRA). A data
    #             repository association is a link between a directory on the file system and
    #             an Amazon S3 bucket or prefix. You can have a maximum of 8 data repository
    #             associations on a file system. Data repository associations are supported only
    #             for file systems with the <code>Persistent_2</code> deployment type.</p>
    #         <p>Each data repository association must have a unique Amazon FSx file
    #             system directory and a unique S3 bucket or prefix associated with it. You
    #             can configure a data repository association for automatic import only,
    #             for automatic export only, or for both. To learn more about linking a
    #             data repository to your file system, see
    #             <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/create-dra-linked-data-repo.html">Linking your file system to an S3 bucket</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDataRepositoryAssociationInput}.
    #
    # @option params [String] :file_system_id
    #   <p>The globally unique ID of the file system, assigned by Amazon FSx.</p>
    #
    # @option params [String] :file_system_path
    #   <p>A path on the file system that points to a high-level directory (such
    #               as <code>/ns1/</code>) or subdirectory (such as <code>/ns1/subdir/</code>)
    #               that will be mapped 1-1 with <code>DataRepositoryPath</code>.
    #               The leading forward slash in the name is required. Two data repository
    #               associations cannot have overlapping file system paths. For example, if
    #               a data repository is associated with file system path <code>/ns1/</code>,
    #               then you cannot link another data repository with file system
    #               path <code>/ns1/ns2</code>.</p>
    #           <p>This path specifies where in your file system files will be exported
    #               from or imported to. This file system directory can be linked to only one
    #               Amazon S3 bucket, and no other S3 bucket can be linked to the directory.</p>
    #           <note>
    #               <p>If you specify only a forward slash (<code>/</code>) as the file system
    #               path, you can link only 1 data repository to the file system. You can only specify
    #               "/" as the file system path for the first data repository associated with a file system.</p>
    #            </note>
    #
    # @option params [String] :data_repository_path
    #   <p>The path to the Amazon S3 data repository that will be linked to the file
    #               system. The path can be an S3 bucket or prefix in the format
    #               <code>s3://myBucket/myPrefix/</code>. This path specifies where in the S3
    #               data repository files will be imported from or exported to.</p>
    #
    # @option params [Boolean] :batch_import_meta_data_on_create
    #   <p>Set to <code>true</code> to run an import data repository task to import
    #               metadata from the data repository to the file system after the data repository
    #               association is created. Default is <code>false</code>.</p>
    #
    # @option params [Integer] :imported_file_chunk_size
    #   <p>For files imported from a data repository, this value determines the stripe count and
    #               maximum amount of data per file (in MiB) stored on a single physical disk. The maximum
    #               number of disks that a single file can be striped across is limited by the total number
    #               of disks that make up the file system.</p>
    #
    #           <p>The default chunk size is 1,024 MiB (1 GiB) and can go as high as 512,000 MiB (500
    #               GiB). Amazon S3 objects have a maximum size of 5 TB.</p>
    #
    # @option params [S3DataRepositoryConfiguration] :s3
    #   <p>The configuration for an Amazon S3 data repository linked to an
    #               Amazon FSx Lustre file system with a data repository association.
    #               The configuration defines which file events (new, changed, or
    #               deleted files or directories) are automatically imported from
    #               the linked data repository to the file system or automatically
    #               exported from the file system to the data repository.</p>
    #
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 64
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>
    #
    # @return [Types::CreateDataRepositoryAssociationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_repository_association(
    #     file_system_id: 'FileSystemId', # required
    #     file_system_path: 'FileSystemPath', # required
    #     data_repository_path: 'DataRepositoryPath', # required
    #     batch_import_meta_data_on_create: false,
    #     imported_file_chunk_size: 1,
    #     s3: {
    #       auto_import_policy: {
    #         events: [
    #           'NEW' # accepts ["NEW", "CHANGED", "DELETED"]
    #         ]
    #       },
    #       auto_export_policy: {
    #       }
    #     },
    #     client_request_token: 'ClientRequestToken',
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
    #   resp.data #=> Types::CreateDataRepositoryAssociationOutput
    #   resp.data.association #=> Types::DataRepositoryAssociation
    #   resp.data.association.association_id #=> String
    #   resp.data.association.resource_arn #=> String
    #   resp.data.association.file_system_id #=> String
    #   resp.data.association.lifecycle #=> String, one of ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"]
    #   resp.data.association.failure_details #=> Types::DataRepositoryFailureDetails
    #   resp.data.association.failure_details.message #=> String
    #   resp.data.association.file_system_path #=> String
    #   resp.data.association.data_repository_path #=> String
    #   resp.data.association.batch_import_meta_data_on_create #=> Boolean
    #   resp.data.association.imported_file_chunk_size #=> Integer
    #   resp.data.association.s3 #=> Types::S3DataRepositoryConfiguration
    #   resp.data.association.s3.auto_import_policy #=> Types::AutoImportPolicy
    #   resp.data.association.s3.auto_import_policy.events #=> Array<String>
    #   resp.data.association.s3.auto_import_policy.events[0] #=> String, one of ["NEW", "CHANGED", "DELETED"]
    #   resp.data.association.s3.auto_export_policy #=> Types::AutoExportPolicy
    #   resp.data.association.s3.auto_export_policy.events #=> Array<String>
    #   resp.data.association.tags #=> Array<Tag>
    #   resp.data.association.tags[0] #=> Types::Tag
    #   resp.data.association.tags[0].key #=> String
    #   resp.data.association.tags[0].value #=> String
    #   resp.data.association.creation_time #=> Time
    #
    def create_data_repository_association(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDataRepositoryAssociationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDataRepositoryAssociationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDataRepositoryAssociation
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::IncompatibleParameterError, Errors::BadRequest, Errors::FileSystemNotFound, Errors::UnsupportedOperation, Errors::ServiceLimitExceeded]),
        data_parser: Parsers::CreateDataRepositoryAssociation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDataRepositoryAssociation,
        stubs: @stubs,
        params_class: Params::CreateDataRepositoryAssociationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_data_repository_association
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Amazon FSx for Lustre data repository task. You use data repository tasks
    #             to perform bulk operations between your Amazon FSx file system and its linked data
    #             repositories. An example of a data repository task is exporting any data and metadata
    #             changes, including POSIX metadata, to files, directories, and symbolic links (symlinks)
    #             from your FSx file system to a linked data repository. A <code>CreateDataRepositoryTask</code>
    #             operation will fail if a data repository is not linked to the FSx file system. To learn
    #             more about data repository tasks, see
    #             <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/data-repository-tasks.html">Data Repository Tasks</a>.
    #             To learn more about linking a data repository to your file system, see
    #             <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/create-dra-linked-data-repo.html">Linking your file system to an S3 bucket</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDataRepositoryTaskInput}.
    #
    # @option params [String] :type
    #   <p>Specifies the type of data repository task to create.</p>
    #
    # @option params [Array<String>] :paths
    #   <p>(Optional) The path or paths on the Amazon FSx file system to use when the data repository task is processed.
    #               The default path is the file system root directory. The paths you provide need to be relative to the mount point of the file system.
    #               If the mount point is <code>/mnt/fsx</code> and <code>/mnt/fsx/path1</code> is a directory or
    #               file on the file system you want to export, then the path to provide is <code>path1</code>.
    #               If a path that you provide isn't valid, the task fails.</p>
    #
    # @option params [String] :file_system_id
    #   <p>The globally unique ID of the file system, assigned by Amazon FSx.</p>
    #
    # @option params [CompletionReport] :report
    #   <p>Defines whether or not Amazon FSx provides a CompletionReport once the task has completed.
    #               A CompletionReport provides a detailed  report on the files that Amazon FSx processed that meet the criteria specified by the
    #               <code>Scope</code> parameter. For more information, see
    #               <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/task-completion-report.html">Working with Task Completion Reports</a>.</p>
    #
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 64
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>
    #
    # @return [Types::CreateDataRepositoryTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_repository_task(
    #     type: 'EXPORT_TO_REPOSITORY', # required - accepts ["EXPORT_TO_REPOSITORY", "IMPORT_METADATA_FROM_REPOSITORY"]
    #     paths: [
    #       'member'
    #     ],
    #     file_system_id: 'FileSystemId', # required
    #     report: {
    #       enabled: false, # required
    #       path: 'Path',
    #       format: 'REPORT_CSV_20191124', # accepts ["REPORT_CSV_20191124"]
    #       scope: 'FAILED_FILES_ONLY' # accepts ["FAILED_FILES_ONLY"]
    #     }, # required
    #     client_request_token: 'ClientRequestToken',
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
    #   resp.data #=> Types::CreateDataRepositoryTaskOutput
    #   resp.data.data_repository_task #=> Types::DataRepositoryTask
    #   resp.data.data_repository_task.task_id #=> String
    #   resp.data.data_repository_task.lifecycle #=> String, one of ["PENDING", "EXECUTING", "FAILED", "SUCCEEDED", "CANCELED", "CANCELING"]
    #   resp.data.data_repository_task.type #=> String, one of ["EXPORT_TO_REPOSITORY", "IMPORT_METADATA_FROM_REPOSITORY"]
    #   resp.data.data_repository_task.creation_time #=> Time
    #   resp.data.data_repository_task.start_time #=> Time
    #   resp.data.data_repository_task.end_time #=> Time
    #   resp.data.data_repository_task.resource_arn #=> String
    #   resp.data.data_repository_task.tags #=> Array<Tag>
    #   resp.data.data_repository_task.tags[0] #=> Types::Tag
    #   resp.data.data_repository_task.tags[0].key #=> String
    #   resp.data.data_repository_task.tags[0].value #=> String
    #   resp.data.data_repository_task.file_system_id #=> String
    #   resp.data.data_repository_task.paths #=> Array<String>
    #   resp.data.data_repository_task.paths[0] #=> String
    #   resp.data.data_repository_task.failure_details #=> Types::DataRepositoryTaskFailureDetails
    #   resp.data.data_repository_task.failure_details.message #=> String
    #   resp.data.data_repository_task.status #=> Types::DataRepositoryTaskStatus
    #   resp.data.data_repository_task.status.total_count #=> Integer
    #   resp.data.data_repository_task.status.succeeded_count #=> Integer
    #   resp.data.data_repository_task.status.failed_count #=> Integer
    #   resp.data.data_repository_task.status.last_updated_time #=> Time
    #   resp.data.data_repository_task.report #=> Types::CompletionReport
    #   resp.data.data_repository_task.report.enabled #=> Boolean
    #   resp.data.data_repository_task.report.path #=> String
    #   resp.data.data_repository_task.report.format #=> String, one of ["REPORT_CSV_20191124"]
    #   resp.data.data_repository_task.report.scope #=> String, one of ["FAILED_FILES_ONLY"]
    #
    def create_data_repository_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDataRepositoryTaskInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDataRepositoryTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDataRepositoryTask
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::IncompatibleParameterError, Errors::DataRepositoryTaskExecuting, Errors::BadRequest, Errors::FileSystemNotFound, Errors::UnsupportedOperation, Errors::ServiceLimitExceeded]),
        data_parser: Parsers::CreateDataRepositoryTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDataRepositoryTask,
        stubs: @stubs,
        params_class: Params::CreateDataRepositoryTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_data_repository_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new, empty Amazon FSx file system. You can create the following supported
    #         Amazon FSx file systems using the <code>CreateFileSystem</code> API operation:</p>
    #         <ul>
    #             <li>
    #                <p>Amazon FSx for Lustre</p>
    #             </li>
    #             <li>
    #                <p>Amazon FSx for NetApp ONTAP</p>
    #             </li>
    #             <li>
    #                <p>Amazon FSx for OpenZFS</p>
    #             </li>
    #             <li>
    #                <p>Amazon FSx for Windows File Server</p>
    #             </li>
    #          </ul>
    #         <p>This operation requires a client request token in the request that Amazon FSx uses
    #             to ensure idempotent creation. This means that calling the operation multiple times with
    #             the same client request token has no effect. By using the idempotent operation, you can
    #             retry a <code>CreateFileSystem</code> operation without the risk of creating an extra
    #             file system. This approach can be useful when an initial call fails in a way that makes
    #             it unclear whether a file system was created. Examples are if a transport level timeout
    #             occurred, or your connection was reset. If you use the same client request token and the
    #             initial call created a file system, the client receives success as long as the
    #             parameters are the same.</p>
    #         <p>If a file system with the specified client request token exists and the parameters
    #             match, <code>CreateFileSystem</code> returns the description of the existing file
    #             system. If a file system with the specified client request token exists and the
    #             parameters don't match, this call returns <code>IncompatibleParameterError</code>. If a
    #             file system with the specified client request token doesn't exist,
    #                 <code>CreateFileSystem</code> does the following: </p>
    #         <ul>
    #             <li>
    #                 <p>Creates a new, empty Amazon FSx file system with an assigned ID, and
    #                     an initial lifecycle state of <code>CREATING</code>.</p>
    #             </li>
    #             <li>
    #                 <p>Returns the description of the file system in JSON format.</p>
    #             </li>
    #          </ul>
    #
    #         <p>This operation requires a client request token in the request that Amazon FSx
    #             uses to ensure idempotent creation. This means that calling the operation multiple times
    #             with the same client request token has no effect. By using the idempotent operation, you
    #             can retry a <code>CreateFileSystem</code> operation without the risk of creating an
    #             extra file system. This approach can be useful when an initial call fails in a way that
    #             makes it unclear whether a file system was created. Examples are if a transport-level
    #             timeout occurred, or your connection was reset. If you use the same client request token
    #             and the initial call created a file system, the client receives a success message as
    #             long as the parameters are the same.</p>
    #         <note>
    #             <p>The <code>CreateFileSystem</code> call returns while the file system's lifecycle
    #                 state is still <code>CREATING</code>. You can check the file-system creation status
    #                 by calling the <a href="https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeFileSystems.html">DescribeFileSystems</a> operation, which returns the file system state
    #                 along with other information.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::CreateFileSystemInput}.
    #
    # @option params [String] :client_request_token
    #   <p>A string of up to 64 ASCII characters that Amazon FSx uses to ensure
    #               idempotent creation. This string is automatically filled on your behalf when you use the
    #                   Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #
    # @option params [String] :file_system_type
    #   <p>The type of Amazon FSx file system to create. Valid values are
    #                   <code>WINDOWS</code>, <code>LUSTRE</code>, <code>ONTAP</code>, and
    #                   <code>OPENZFS</code>.</p>
    #
    # @option params [Integer] :storage_capacity
    #   <p>Sets the storage capacity of the file system that you're creating, in gibibytes (GiB).</p>
    #           <p>
    #               <b>FSx for Lustre file systems</b> - The amount of
    #               storage capacity that you can configure depends on the value that you set for
    #                   <code>StorageType</code> and the Lustre <code>DeploymentType</code>, as
    #               follows:</p>
    #           <ul>
    #               <li>
    #                  <p>For <code>SCRATCH_2</code>, <code>PERSISTENT_2</code> and <code>PERSISTENT_1</code> deployment types
    #                   using SSD storage type, the valid values are 1200 GiB, 2400 GiB, and increments of 2400 GiB.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>PERSISTENT_1</code> HDD file systems, valid values are increments of 6000 GiB for
    #                   12 MB/s/TiB file systems and increments of 1800 GiB for 40 MB/s/TiB file systems.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>SCRATCH_1</code> deployment type, valid values are
    #                   1200 GiB, 2400 GiB, and increments of 3600 GiB.</p>
    #               </li>
    #            </ul>
    #           <p>
    #               <b>FSx for ONTAP file systems</b> - The amount of storage capacity
    #               that you can configure is from 1024 GiB up to 196,608 GiB (192 TiB).</p>
    #           <p>
    #               <b>FSx for OpenZFS file systems</b> - The amount of storage capacity that
    #               you can configure is from 64 GiB up to 524,288 GiB (512 TiB).</p>
    #           <p>
    #               <b>FSx for Windows File Server file systems</b> - The amount
    #               of storage capacity that you can configure depends on the value that you set for
    #                   <code>StorageType</code> as follows:</p>
    #           <ul>
    #               <li>
    #                  <p>For SSD storage, valid values are 32 GiB-65,536 GiB (64 TiB).</p>
    #               </li>
    #               <li>
    #                  <p>For HDD storage, valid values are 2000 GiB-65,536 GiB (64 TiB).</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :storage_type
    #   <p>Sets the storage type for the file system that you're creating. Valid values are
    #                   <code>SSD</code> and <code>HDD</code>.</p>
    #           <ul>
    #               <li>
    #                  <p>Set to <code>SSD</code> to use solid state drive storage. SSD is supported on all Windows,
    #                       Lustre, ONTAP, and OpenZFS deployment types.</p>
    #               </li>
    #               <li>
    #                  <p>Set to <code>HDD</code> to use hard disk drive storage.
    #                   HDD is supported on <code>SINGLE_AZ_2</code> and <code>MULTI_AZ_1</code> Windows file system deployment types,
    #                   and on <code>PERSISTENT_1</code> Lustre file system deployment types.
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>Default value is <code>SSD</code>. For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/optimize-fsx-costs.html#storage-type-options"> Storage
    #                   type options</a> in the <i>FSx for Windows File Server User
    #                   Guide</i> and <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/what-is.html#storage-options">Multiple storage
    #                   options</a> in the <i>FSx for Lustre User
    #               Guide</i>. </p>
    #
    # @option params [Array<String>] :subnet_ids
    #   <p>Specifies the IDs of the subnets that the file system will be accessible from. For
    #               Windows and ONTAP <code>MULTI_AZ_1</code> deployment types,provide exactly two subnet
    #               IDs, one for the preferred file server and one for the standby file server. You specify
    #               one of these subnets as the preferred subnet using the <code>WindowsConfiguration >
    #                   PreferredSubnetID</code> or <code>OntapConfiguration > PreferredSubnetID</code>
    #               properties. For more information about Multi-AZ file system configuration, see <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/high-availability-multiAZ.html">
    #                   Availability and durability: Single-AZ and Multi-AZ file systems</a> in the
    #                   <i>Amazon FSx for Windows User Guide</i> and <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/high-availability-multiAZ.html">
    #                   Availability and durability</a> in the <i>Amazon FSx for ONTAP User
    #                   Guide</i>.</p>
    #           <p>For Windows <code>SINGLE_AZ_1</code> and <code>SINGLE_AZ_2</code> and all Lustre
    #               deployment types, provide exactly one subnet ID.
    #              The file server is launched in that subnet's Availability Zone.</p>
    #
    # @option params [Array<String>] :security_group_ids
    #   <p>A list of IDs specifying the security groups to apply to all network interfaces
    #               created for file system access. This list isn't returned in later requests to
    #               describe the file system.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to apply to the file system that's being created. The key value of the
    #                   <code>Name</code> tag appears in the console as the file system name.</p>
    #
    # @option params [String] :kms_key_id
    #   <p>Specifies the ID of the Key Management Service (KMS) key to use for encrypting data on
    #                Amazon FSx file systems, as follows:</p>
    #           <ul>
    #               <li>
    #                  <p>Amazon FSx for Lustre <code>PERSISTENT_1</code>
    #                   and <code>PERSISTENT_2</code> deployment types only.</p>
    #                   <p>
    #                     <code>SCRATCH_1</code> and <code>SCRATCH_2</code> types are encrypted using
    #                       the Amazon FSx service KMS key for your account.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon FSx for NetApp ONTAP</p>
    #               </li>
    #               <li>
    #                  <p>Amazon FSx for OpenZFS</p>
    #               </li>
    #               <li>
    #                  <p>Amazon FSx for Windows File Server</p>
    #               </li>
    #            </ul>
    #           <p>If a <code>KmsKeyId</code> isn't specified, the Amazon FSx-managed KMS key for your account is used.
    #               For more information, see <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_Encrypt.html">Encrypt</a> in the
    #               <i>Key Management Service API Reference</i>.</p>
    #
    # @option params [CreateFileSystemWindowsConfiguration] :windows_configuration
    #   <p>The Microsoft Windows configuration for the file system that's being created. </p>
    #
    # @option params [CreateFileSystemLustreConfiguration] :lustre_configuration
    #   <p>The Lustre configuration for the file system being created.</p>
    #           <note>
    #               <p>The following parameters are not supported for file systems with the <code>Persistent_2</code>
    #               deployment type. Instead, use <code>CreateDataRepositoryAssociation</code>
    #               to create a data repository association to link your Lustre file system to a data repository.</p>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <code>AutoImportPolicy</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>ExportPath</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>ImportedChunkSize</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>ImportPath</code>
    #                     </p>
    #                  </li>
    #               </ul>
    #            </note>
    #
    # @option params [CreateFileSystemOntapConfiguration] :ontap_configuration
    #   <p>The ONTAP configuration properties of the FSx for ONTAP file system that you
    #               are creating.</p>
    #
    # @option params [String] :file_system_type_version
    #   <p>(Optional) For FSx for Lustre file systems, sets the Lustre version for the
    #               file system that you're creating. Valid values are <code>2.10</code> and
    #                   <code>2.12</code>:</p>
    #
    #           <ul>
    #               <li>
    #                  <p>2.10 is supported by the Scratch and Persistent_1 Lustre deployment types.</p>
    #               </li>
    #               <li>
    #                  <p>2.12 is supported by all Lustre deployment types. <code>2.12</code> is
    #                   required when setting FSx for Lustre <code>DeploymentType</code> to
    #                   <code>PERSISTENT_2</code>.</p>
    #               </li>
    #            </ul>
    #           <p>Default value = <code>2.10</code>, except when <code>DeploymentType</code> is set to
    #               <code>PERSISTENT_2</code>, then the default is <code>2.12</code>.</p>
    #           <note>
    #               <p>If you set <code>FileSystemTypeVersion</code> to <code>2.10</code> for a
    #               <code>PERSISTENT_2</code> Lustre deployment type, the <code>CreateFileSystem</code>
    #               operation fails.</p>
    #            </note>
    #
    # @option params [CreateFileSystemOpenZFSConfiguration] :open_zfs_configuration
    #   <p>The OpenZFS configuration for the file system that's being created.</p>
    #
    # @return [Types::CreateFileSystemOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_file_system(
    #     client_request_token: 'ClientRequestToken',
    #     file_system_type: 'WINDOWS', # required - accepts ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"]
    #     storage_capacity: 1, # required
    #     storage_type: 'SSD', # accepts ["SSD", "HDD"]
    #     subnet_ids: [
    #       'member'
    #     ], # required
    #     security_group_ids: [
    #       'member'
    #     ],
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     kms_key_id: 'KmsKeyId',
    #     windows_configuration: {
    #       active_directory_id: 'ActiveDirectoryId',
    #       self_managed_active_directory_configuration: {
    #         domain_name: 'DomainName', # required
    #         organizational_unit_distinguished_name: 'OrganizationalUnitDistinguishedName',
    #         file_system_administrators_group: 'FileSystemAdministratorsGroup',
    #         user_name: 'UserName', # required
    #         password: 'Password', # required
    #         dns_ips: [
    #           'member'
    #         ] # required
    #       },
    #       deployment_type: 'MULTI_AZ_1', # accepts ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"]
    #       preferred_subnet_id: 'PreferredSubnetId',
    #       throughput_capacity: 1, # required
    #       weekly_maintenance_start_time: 'WeeklyMaintenanceStartTime',
    #       daily_automatic_backup_start_time: 'DailyAutomaticBackupStartTime',
    #       automatic_backup_retention_days: 1,
    #       copy_tags_to_backups: false,
    #       aliases: [
    #         'member'
    #       ],
    #       audit_log_configuration: {
    #         file_access_audit_log_level: 'DISABLED', # required - accepts ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #         file_share_access_audit_log_level: 'DISABLED', # required - accepts ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #         audit_log_destination: 'AuditLogDestination'
    #       }
    #     },
    #     lustre_configuration: {
    #       weekly_maintenance_start_time: 'WeeklyMaintenanceStartTime',
    #       import_path: 'ImportPath',
    #       export_path: 'ExportPath',
    #       imported_file_chunk_size: 1,
    #       deployment_type: 'SCRATCH_1', # accepts ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"]
    #       auto_import_policy: 'NONE', # accepts ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"]
    #       per_unit_storage_throughput: 1,
    #       daily_automatic_backup_start_time: 'DailyAutomaticBackupStartTime',
    #       automatic_backup_retention_days: 1,
    #       copy_tags_to_backups: false,
    #       drive_cache_type: 'NONE', # accepts ["NONE", "READ"]
    #       data_compression_type: 'NONE', # accepts ["NONE", "LZ4"]
    #       log_configuration: {
    #         level: 'DISABLED', # required - accepts ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"]
    #         destination: 'Destination'
    #       },
    #       root_squash_configuration: {
    #         root_squash: 'RootSquash',
    #         no_squash_nids: [
    #           'member'
    #         ]
    #       }
    #     },
    #     ontap_configuration: {
    #       automatic_backup_retention_days: 1,
    #       daily_automatic_backup_start_time: 'DailyAutomaticBackupStartTime',
    #       deployment_type: 'MULTI_AZ_1', # required - accepts ["MULTI_AZ_1", "SINGLE_AZ_1"]
    #       endpoint_ip_address_range: 'EndpointIpAddressRange',
    #       fsx_admin_password: 'FsxAdminPassword',
    #       disk_iops_configuration: {
    #         mode: 'AUTOMATIC', # accepts ["AUTOMATIC", "USER_PROVISIONED"]
    #         iops: 1
    #       },
    #       preferred_subnet_id: 'PreferredSubnetId',
    #       route_table_ids: [
    #         'member'
    #       ],
    #       throughput_capacity: 1, # required
    #       weekly_maintenance_start_time: 'WeeklyMaintenanceStartTime'
    #     },
    #     file_system_type_version: 'FileSystemTypeVersion',
    #     open_zfs_configuration: {
    #       automatic_backup_retention_days: 1,
    #       copy_tags_to_backups: false,
    #       copy_tags_to_volumes: false,
    #       daily_automatic_backup_start_time: 'DailyAutomaticBackupStartTime',
    #       deployment_type: 'SINGLE_AZ_1', # required - accepts ["SINGLE_AZ_1"]
    #       throughput_capacity: 1, # required
    #       weekly_maintenance_start_time: 'WeeklyMaintenanceStartTime',
    #       root_volume_configuration: {
    #         record_size_ki_b: 1,
    #         data_compression_type: 'NONE', # accepts ["NONE", "ZSTD", "LZ4"]
    #         nfs_exports: [
    #           {
    #             client_configurations: [
    #               {
    #                 clients: 'Clients', # required
    #                 options: [
    #                   'member'
    #                 ] # required
    #               }
    #             ] # required
    #           }
    #         ],
    #         user_and_group_quotas: [
    #           {
    #             type: 'USER', # required - accepts ["USER", "GROUP"]
    #             id: 1, # required
    #             storage_capacity_quota_gi_b: 1 # required
    #           }
    #         ],
    #         copy_tags_to_snapshots: false,
    #         read_only: false
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFileSystemOutput
    #   resp.data.file_system #=> Types::FileSystem
    #   resp.data.file_system.owner_id #=> String
    #   resp.data.file_system.creation_time #=> Time
    #   resp.data.file_system.file_system_id #=> String
    #   resp.data.file_system.file_system_type #=> String, one of ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"]
    #   resp.data.file_system.lifecycle #=> String, one of ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"]
    #   resp.data.file_system.failure_details #=> Types::FileSystemFailureDetails
    #   resp.data.file_system.failure_details.message #=> String
    #   resp.data.file_system.storage_capacity #=> Integer
    #   resp.data.file_system.storage_type #=> String, one of ["SSD", "HDD"]
    #   resp.data.file_system.vpc_id #=> String
    #   resp.data.file_system.subnet_ids #=> Array<String>
    #   resp.data.file_system.subnet_ids[0] #=> String
    #   resp.data.file_system.network_interface_ids #=> Array<String>
    #   resp.data.file_system.network_interface_ids[0] #=> String
    #   resp.data.file_system.dns_name #=> String
    #   resp.data.file_system.kms_key_id #=> String
    #   resp.data.file_system.resource_arn #=> String
    #   resp.data.file_system.tags #=> Array<Tag>
    #   resp.data.file_system.tags[0] #=> Types::Tag
    #   resp.data.file_system.tags[0].key #=> String
    #   resp.data.file_system.tags[0].value #=> String
    #   resp.data.file_system.windows_configuration #=> Types::WindowsFileSystemConfiguration
    #   resp.data.file_system.windows_configuration.active_directory_id #=> String
    #   resp.data.file_system.windows_configuration.self_managed_active_directory_configuration #=> Types::SelfManagedActiveDirectoryAttributes
    #   resp.data.file_system.windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.data.file_system.windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.data.file_system.windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.data.file_system.windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.data.file_system.windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array<String>
    #   resp.data.file_system.windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.data.file_system.windows_configuration.deployment_type #=> String, one of ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"]
    #   resp.data.file_system.windows_configuration.remote_administration_endpoint #=> String
    #   resp.data.file_system.windows_configuration.preferred_subnet_id #=> String
    #   resp.data.file_system.windows_configuration.preferred_file_server_ip #=> String
    #   resp.data.file_system.windows_configuration.throughput_capacity #=> Integer
    #   resp.data.file_system.windows_configuration.maintenance_operations_in_progress #=> Array<String>
    #   resp.data.file_system.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of ["PATCHING", "BACKING_UP"]
    #   resp.data.file_system.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.file_system.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.file_system.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.file_system.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.file_system.windows_configuration.aliases #=> Array<Alias>
    #   resp.data.file_system.windows_configuration.aliases[0] #=> Types::Alias
    #   resp.data.file_system.windows_configuration.aliases[0].name #=> String
    #   resp.data.file_system.windows_configuration.aliases[0].lifecycle #=> String, one of ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #   resp.data.file_system.windows_configuration.audit_log_configuration #=> Types::WindowsAuditLogConfiguration
    #   resp.data.file_system.windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #   resp.data.file_system.windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #   resp.data.file_system.windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.data.file_system.lustre_configuration #=> Types::LustreFileSystemConfiguration
    #   resp.data.file_system.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.file_system.lustre_configuration.data_repository_configuration #=> Types::DataRepositoryConfiguration
    #   resp.data.file_system.lustre_configuration.data_repository_configuration.lifecycle #=> String, one of ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"]
    #   resp.data.file_system.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.data.file_system.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.data.file_system.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.data.file_system.lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"]
    #   resp.data.file_system.lustre_configuration.data_repository_configuration.failure_details #=> Types::DataRepositoryFailureDetails
    #   resp.data.file_system.lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.data.file_system.lustre_configuration.deployment_type #=> String, one of ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"]
    #   resp.data.file_system.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.data.file_system.lustre_configuration.mount_name #=> String
    #   resp.data.file_system.lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.file_system.lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.file_system.lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.file_system.lustre_configuration.drive_cache_type #=> String, one of ["NONE", "READ"]
    #   resp.data.file_system.lustre_configuration.data_compression_type #=> String, one of ["NONE", "LZ4"]
    #   resp.data.file_system.lustre_configuration.log_configuration #=> Types::LustreLogConfiguration
    #   resp.data.file_system.lustre_configuration.log_configuration.level #=> String, one of ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"]
    #   resp.data.file_system.lustre_configuration.log_configuration.destination #=> String
    #   resp.data.file_system.lustre_configuration.root_squash_configuration #=> Types::LustreRootSquashConfiguration
    #   resp.data.file_system.lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.data.file_system.lustre_configuration.root_squash_configuration.no_squash_nids #=> Array<String>
    #   resp.data.file_system.lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.data.file_system.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.file_system.administrative_actions[0] #=> Types::AdministrativeAction
    #   resp.data.file_system.administrative_actions[0].administrative_action_type #=> String, one of ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS"]
    #   resp.data.file_system.administrative_actions[0].progress_percent #=> Integer
    #   resp.data.file_system.administrative_actions[0].request_time #=> Time
    #   resp.data.file_system.administrative_actions[0].status #=> String, one of ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"]
    #   resp.data.file_system.administrative_actions[0].target_file_system_values #=> Types::FileSystem
    #   resp.data.file_system.administrative_actions[0].failure_details #=> Types::AdministrativeActionFailureDetails
    #   resp.data.file_system.administrative_actions[0].failure_details.message #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values #=> Types::Volume
    #   resp.data.file_system.administrative_actions[0].target_volume_values.creation_time #=> Time
    #   resp.data.file_system.administrative_actions[0].target_volume_values.file_system_id #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.lifecycle #=> String, one of ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.name #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration #=> Types::OntapVolumeConfiguration
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.flex_cache_endpoint_type #=> String, one of ["NONE", "ORIGIN", "CACHE"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.junction_path #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.security_style #=> String, one of ["UNIX", "NTFS", "MIXED"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.size_in_megabytes #=> Integer
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy #=> Types::TieringPolicy
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.name #=> String, one of ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.uuid #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.ontap_volume_type #=> String, one of ["RW", "DP", "LS"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.resource_arn #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.tags #=> Array<Tag>
    #   resp.data.file_system.administrative_actions[0].target_volume_values.volume_id #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.volume_type #=> String, one of ["ONTAP", "OPENZFS"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.lifecycle_transition_reason #=> Types::LifecycleTransitionReason
    #   resp.data.file_system.administrative_actions[0].target_volume_values.lifecycle_transition_reason.message #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration #=> Types::OpenZFSVolumeConfiguration
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.parent_volume_id #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.volume_path #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.data_compression_type #=> String, one of ["NONE", "ZSTD", "LZ4"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot #=> Types::OpenZFSOriginSnapshotConfiguration
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of ["CLONE", "FULL_COPY"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.read_only #=> Boolean
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports #=> Array<OpenZFSNfsExport>
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0] #=> Types::OpenZFSNfsExport
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations #=> Array<OpenZFSClientConfiguration>
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0] #=> Types::OpenZFSClientConfiguration
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array<String>
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas #=> Array<OpenZFSUserOrGroupQuota>
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0] #=> Types::OpenZFSUserOrGroupQuota
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of ["USER", "GROUP"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values #=> Types::Snapshot
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.resource_arn #=> String
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.snapshot_id #=> String
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.name #=> String
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.volume_id #=> String
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.creation_time #=> Time
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.lifecycle #=> String, one of ["PENDING", "CREATING", "DELETING", "AVAILABLE"]
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.lifecycle_transition_reason #=> Types::LifecycleTransitionReason
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.tags #=> Array<Tag>
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.file_system.ontap_configuration #=> Types::OntapFileSystemConfiguration
    #   resp.data.file_system.ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.file_system.ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.file_system.ontap_configuration.deployment_type #=> String, one of ["MULTI_AZ_1", "SINGLE_AZ_1"]
    #   resp.data.file_system.ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.data.file_system.ontap_configuration.endpoints #=> Types::FileSystemEndpoints
    #   resp.data.file_system.ontap_configuration.endpoints.intercluster #=> Types::FileSystemEndpoint
    #   resp.data.file_system.ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.data.file_system.ontap_configuration.endpoints.intercluster.ip_addresses #=> Array<String>
    #   resp.data.file_system.ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.data.file_system.ontap_configuration.endpoints.management #=> Types::FileSystemEndpoint
    #   resp.data.file_system.ontap_configuration.disk_iops_configuration #=> Types::DiskIopsConfiguration
    #   resp.data.file_system.ontap_configuration.disk_iops_configuration.mode #=> String, one of ["AUTOMATIC", "USER_PROVISIONED"]
    #   resp.data.file_system.ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.data.file_system.ontap_configuration.preferred_subnet_id #=> String
    #   resp.data.file_system.ontap_configuration.route_table_ids #=> Array<String>
    #   resp.data.file_system.ontap_configuration.route_table_ids[0] #=> String
    #   resp.data.file_system.ontap_configuration.throughput_capacity #=> Integer
    #   resp.data.file_system.ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.file_system.file_system_type_version #=> String
    #   resp.data.file_system.open_zfs_configuration #=> Types::OpenZFSFileSystemConfiguration
    #   resp.data.file_system.open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.file_system.open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.file_system.open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.data.file_system.open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.file_system.open_zfs_configuration.deployment_type #=> String, one of ["SINGLE_AZ_1"]
    #   resp.data.file_system.open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.data.file_system.open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.file_system.open_zfs_configuration.disk_iops_configuration #=> Types::DiskIopsConfiguration
    #   resp.data.file_system.open_zfs_configuration.root_volume_id #=> String
    #
    def create_file_system(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFileSystemInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFileSystemInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFileSystem
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidPerUnitStorageThroughput, Errors::IncompatibleParameterError, Errors::InvalidNetworkSettings, Errors::InvalidExportPath, Errors::MissingFileSystemConfiguration, Errors::InvalidImportPath, Errors::ActiveDirectoryError, Errors::BadRequest, Errors::ServiceLimitExceeded]),
        data_parser: Parsers::CreateFileSystem
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFileSystem,
        stubs: @stubs,
        params_class: Params::CreateFileSystemOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_file_system
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new Amazon FSx for Lustre, Amazon FSx for Windows File
    #             Server, or Amazon FSx for OpenZFS file system from an existing Amazon FSx backup.</p>
    #
    #         <p>If a file system with the specified client request token exists and the parameters
    #             match, this operation returns the description of the file system. If a file system
    #             with the specified client request token exists but the parameters don't match, this
    #             call returns <code>IncompatibleParameterError</code>. If a file system with the
    #             specified client request token doesn't exist, this operation does the following:</p>
    #
    #         <ul>
    #             <li>
    #                 <p>Creates a new Amazon FSx file system from backup with an assigned ID,
    #                     and an initial lifecycle state of <code>CREATING</code>.</p>
    #             </li>
    #             <li>
    #                 <p>Returns the description of the file system.</p>
    #             </li>
    #          </ul>
    #
    #         <p>Parameters like the Active Directory, default share name, automatic backup, and backup
    #             settings default to the parameters of the file system that was backed up, unless
    #             overridden. You can explicitly supply other settings.</p>
    #
    #         <p>By using the idempotent operation, you can retry a
    #                 <code>CreateFileSystemFromBackup</code> call without the risk of creating an extra
    #             file system. This approach can be useful when an initial call fails in a way that makes
    #             it unclear whether a file system was created. Examples are if a transport level timeout
    #             occurred, or your connection was reset. If you use the same client request token and the
    #             initial call created a file system, the client receives a success message as long as the
    #             parameters are the same.</p>
    #         <note>
    #             <p>The <code>CreateFileSystemFromBackup</code> call returns while the file system's
    #                 lifecycle state is still <code>CREATING</code>. You can check the file-system
    #                 creation status by calling the <a href="https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeFileSystems.html">
    #                     DescribeFileSystems</a> operation, which returns the file system state along
    #                 with other information.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::CreateFileSystemFromBackupInput}.
    #
    # @option params [String] :backup_id
    #   <p>The ID of the source backup. Specifies the backup that you are copying.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A string of up to 64 ASCII characters that Amazon FSx uses to ensure
    #               idempotent creation. This string is automatically filled on your behalf when you use the
    #                   Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #
    # @option params [Array<String>] :subnet_ids
    #   <p>Specifies the IDs of the subnets that the file system will be accessible from. For Windows <code>MULTI_AZ_1</code>
    #               file system deployment types, provide exactly two subnet IDs, one for the preferred file server
    #               and one for the standby file server. You specify one of these subnets as the preferred subnet
    #               using the <code>WindowsConfiguration > PreferredSubnetID</code> property.</p>
    #           <p>Windows <code>SINGLE_AZ_1</code> and <code>SINGLE_AZ_2</code> file system deployment
    #               types, Lustre file systems, and OpenZFS file systems provide exactly one subnet ID. The
    #               file server is launched in that subnet's Availability Zone.</p>
    #
    # @option params [Array<String>] :security_group_ids
    #   <p>A list of IDs for the security groups that apply to the specified network interfaces
    #               created for file system access. These security groups apply to all network interfaces.
    #               This value isn't returned in later <code>DescribeFileSystem</code> requests.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to be applied to the file system at file system creation. The key value of
    #               the <code>Name</code> tag appears in the console as the file system
    #               name.</p>
    #
    # @option params [CreateFileSystemWindowsConfiguration] :windows_configuration
    #   <p>The configuration for this Microsoft Windows file system.</p>
    #
    # @option params [CreateFileSystemLustreConfiguration] :lustre_configuration
    #   <p>The Lustre configuration for the file system being created.</p>
    #           <note>
    #               <p>The following parameters are not supported for file systems with the <code>Persistent_2</code>
    #               deployment type. Instead, use <code>CreateDataRepositoryAssociation</code>
    #               to create a data repository association to link your Lustre file system to a data repository.</p>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <code>AutoImportPolicy</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>ExportPath</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>ImportedChunkSize</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>ImportPath</code>
    #                     </p>
    #                  </li>
    #               </ul>
    #            </note>
    #
    # @option params [String] :storage_type
    #   <p>Sets the storage type for the Windows or OpenZFS file system that you're creating from
    #               a backup. Valid values are <code>SSD</code> and <code>HDD</code>.</p>
    #           <ul>
    #               <li>
    #                  <p>Set to <code>SSD</code> to use solid state drive storage. SSD is supported on all Windows and OpenZFS
    #                       deployment types.</p>
    #               </li>
    #               <li>
    #                  <p>Set to <code>HDD</code> to use hard disk drive storage.
    #                       HDD is supported on <code>SINGLE_AZ_2</code> and <code>MULTI_AZ_1</code> FSx for Windows File Server file system deployment types.</p>
    #               </li>
    #            </ul>
    #           <p> The default value is <code>SSD</code>. </p>
    #           <note>
    #               <p>HDD and SSD storage types have different minimum storage capacity requirements.
    #               A restored file system's storage capacity is tied to the file system that was backed up.
    #               You can create a file system that uses HDD storage from a backup of a file system that
    #               used SSD storage if the original SSD file system had a storage capacity of at least 2000 GiB.</p>
    #            </note>
    #
    # @option params [String] :kms_key_id
    #   <p>Specifies the ID of the Key Management Service (KMS) key to use for encrypting data on
    #                Amazon FSx file systems, as follows:</p>
    #           <ul>
    #               <li>
    #                  <p>Amazon FSx for Lustre <code>PERSISTENT_1</code>
    #                   and <code>PERSISTENT_2</code> deployment types only.</p>
    #                   <p>
    #                     <code>SCRATCH_1</code> and <code>SCRATCH_2</code> types are encrypted using
    #                       the Amazon FSx service KMS key for your account.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon FSx for NetApp ONTAP</p>
    #               </li>
    #               <li>
    #                  <p>Amazon FSx for OpenZFS</p>
    #               </li>
    #               <li>
    #                  <p>Amazon FSx for Windows File Server</p>
    #               </li>
    #            </ul>
    #           <p>If a <code>KmsKeyId</code> isn't specified, the Amazon FSx-managed KMS key for your account is used.
    #               For more information, see <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_Encrypt.html">Encrypt</a> in the
    #               <i>Key Management Service API Reference</i>.</p>
    #
    # @option params [String] :file_system_type_version
    #   <p>Sets the version for the Amazon FSx for Lustre file system that you're
    #               creating from a backup. Valid values are <code>2.10</code> and <code>2.12</code>.</p>
    #           <p>You don't need to specify <code>FileSystemTypeVersion</code> because it will
    #               be applied using the backup's <code>FileSystemTypeVersion</code> setting.
    #               If you choose to specify <code>FileSystemTypeVersion</code> when creating from backup, the
    #               value must match the backup's <code>FileSystemTypeVersion</code> setting.</p>
    #
    # @option params [CreateFileSystemOpenZFSConfiguration] :open_zfs_configuration
    #   <p>The OpenZFS configuration for the file system that's being created. </p>
    #
    # @return [Types::CreateFileSystemFromBackupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_file_system_from_backup(
    #     backup_id: 'BackupId', # required
    #     client_request_token: 'ClientRequestToken',
    #     subnet_ids: [
    #       'member'
    #     ], # required
    #     security_group_ids: [
    #       'member'
    #     ],
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     windows_configuration: {
    #       active_directory_id: 'ActiveDirectoryId',
    #       self_managed_active_directory_configuration: {
    #         domain_name: 'DomainName', # required
    #         organizational_unit_distinguished_name: 'OrganizationalUnitDistinguishedName',
    #         file_system_administrators_group: 'FileSystemAdministratorsGroup',
    #         user_name: 'UserName', # required
    #         password: 'Password', # required
    #         dns_ips: [
    #           'member'
    #         ] # required
    #       },
    #       deployment_type: 'MULTI_AZ_1', # accepts ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"]
    #       preferred_subnet_id: 'PreferredSubnetId',
    #       throughput_capacity: 1, # required
    #       weekly_maintenance_start_time: 'WeeklyMaintenanceStartTime',
    #       daily_automatic_backup_start_time: 'DailyAutomaticBackupStartTime',
    #       automatic_backup_retention_days: 1,
    #       copy_tags_to_backups: false,
    #       aliases: [
    #         'member'
    #       ],
    #       audit_log_configuration: {
    #         file_access_audit_log_level: 'DISABLED', # required - accepts ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #         file_share_access_audit_log_level: 'DISABLED', # required - accepts ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #         audit_log_destination: 'AuditLogDestination'
    #       }
    #     },
    #     lustre_configuration: {
    #       weekly_maintenance_start_time: 'WeeklyMaintenanceStartTime',
    #       import_path: 'ImportPath',
    #       export_path: 'ExportPath',
    #       imported_file_chunk_size: 1,
    #       deployment_type: 'SCRATCH_1', # accepts ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"]
    #       auto_import_policy: 'NONE', # accepts ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"]
    #       per_unit_storage_throughput: 1,
    #       daily_automatic_backup_start_time: 'DailyAutomaticBackupStartTime',
    #       automatic_backup_retention_days: 1,
    #       copy_tags_to_backups: false,
    #       drive_cache_type: 'NONE', # accepts ["NONE", "READ"]
    #       data_compression_type: 'NONE', # accepts ["NONE", "LZ4"]
    #       log_configuration: {
    #         level: 'DISABLED', # required - accepts ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"]
    #         destination: 'Destination'
    #       },
    #       root_squash_configuration: {
    #         root_squash: 'RootSquash',
    #         no_squash_nids: [
    #           'member'
    #         ]
    #       }
    #     },
    #     storage_type: 'SSD', # accepts ["SSD", "HDD"]
    #     kms_key_id: 'KmsKeyId',
    #     file_system_type_version: 'FileSystemTypeVersion',
    #     open_zfs_configuration: {
    #       automatic_backup_retention_days: 1,
    #       copy_tags_to_backups: false,
    #       copy_tags_to_volumes: false,
    #       daily_automatic_backup_start_time: 'DailyAutomaticBackupStartTime',
    #       deployment_type: 'SINGLE_AZ_1', # required - accepts ["SINGLE_AZ_1"]
    #       throughput_capacity: 1, # required
    #       weekly_maintenance_start_time: 'WeeklyMaintenanceStartTime',
    #       disk_iops_configuration: {
    #         mode: 'AUTOMATIC', # accepts ["AUTOMATIC", "USER_PROVISIONED"]
    #         iops: 1
    #       },
    #       root_volume_configuration: {
    #         record_size_ki_b: 1,
    #         data_compression_type: 'NONE', # accepts ["NONE", "ZSTD", "LZ4"]
    #         nfs_exports: [
    #           {
    #             client_configurations: [
    #               {
    #                 clients: 'Clients', # required
    #                 options: [
    #                   'member'
    #                 ] # required
    #               }
    #             ] # required
    #           }
    #         ],
    #         user_and_group_quotas: [
    #           {
    #             type: 'USER', # required - accepts ["USER", "GROUP"]
    #             id: 1, # required
    #             storage_capacity_quota_gi_b: 1 # required
    #           }
    #         ],
    #         copy_tags_to_snapshots: false,
    #         read_only: false
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFileSystemFromBackupOutput
    #   resp.data.file_system #=> Types::FileSystem
    #   resp.data.file_system.owner_id #=> String
    #   resp.data.file_system.creation_time #=> Time
    #   resp.data.file_system.file_system_id #=> String
    #   resp.data.file_system.file_system_type #=> String, one of ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"]
    #   resp.data.file_system.lifecycle #=> String, one of ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"]
    #   resp.data.file_system.failure_details #=> Types::FileSystemFailureDetails
    #   resp.data.file_system.failure_details.message #=> String
    #   resp.data.file_system.storage_capacity #=> Integer
    #   resp.data.file_system.storage_type #=> String, one of ["SSD", "HDD"]
    #   resp.data.file_system.vpc_id #=> String
    #   resp.data.file_system.subnet_ids #=> Array<String>
    #   resp.data.file_system.subnet_ids[0] #=> String
    #   resp.data.file_system.network_interface_ids #=> Array<String>
    #   resp.data.file_system.network_interface_ids[0] #=> String
    #   resp.data.file_system.dns_name #=> String
    #   resp.data.file_system.kms_key_id #=> String
    #   resp.data.file_system.resource_arn #=> String
    #   resp.data.file_system.tags #=> Array<Tag>
    #   resp.data.file_system.tags[0] #=> Types::Tag
    #   resp.data.file_system.tags[0].key #=> String
    #   resp.data.file_system.tags[0].value #=> String
    #   resp.data.file_system.windows_configuration #=> Types::WindowsFileSystemConfiguration
    #   resp.data.file_system.windows_configuration.active_directory_id #=> String
    #   resp.data.file_system.windows_configuration.self_managed_active_directory_configuration #=> Types::SelfManagedActiveDirectoryAttributes
    #   resp.data.file_system.windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.data.file_system.windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.data.file_system.windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.data.file_system.windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.data.file_system.windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array<String>
    #   resp.data.file_system.windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.data.file_system.windows_configuration.deployment_type #=> String, one of ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"]
    #   resp.data.file_system.windows_configuration.remote_administration_endpoint #=> String
    #   resp.data.file_system.windows_configuration.preferred_subnet_id #=> String
    #   resp.data.file_system.windows_configuration.preferred_file_server_ip #=> String
    #   resp.data.file_system.windows_configuration.throughput_capacity #=> Integer
    #   resp.data.file_system.windows_configuration.maintenance_operations_in_progress #=> Array<String>
    #   resp.data.file_system.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of ["PATCHING", "BACKING_UP"]
    #   resp.data.file_system.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.file_system.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.file_system.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.file_system.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.file_system.windows_configuration.aliases #=> Array<Alias>
    #   resp.data.file_system.windows_configuration.aliases[0] #=> Types::Alias
    #   resp.data.file_system.windows_configuration.aliases[0].name #=> String
    #   resp.data.file_system.windows_configuration.aliases[0].lifecycle #=> String, one of ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #   resp.data.file_system.windows_configuration.audit_log_configuration #=> Types::WindowsAuditLogConfiguration
    #   resp.data.file_system.windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #   resp.data.file_system.windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #   resp.data.file_system.windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.data.file_system.lustre_configuration #=> Types::LustreFileSystemConfiguration
    #   resp.data.file_system.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.file_system.lustre_configuration.data_repository_configuration #=> Types::DataRepositoryConfiguration
    #   resp.data.file_system.lustre_configuration.data_repository_configuration.lifecycle #=> String, one of ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"]
    #   resp.data.file_system.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.data.file_system.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.data.file_system.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.data.file_system.lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"]
    #   resp.data.file_system.lustre_configuration.data_repository_configuration.failure_details #=> Types::DataRepositoryFailureDetails
    #   resp.data.file_system.lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.data.file_system.lustre_configuration.deployment_type #=> String, one of ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"]
    #   resp.data.file_system.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.data.file_system.lustre_configuration.mount_name #=> String
    #   resp.data.file_system.lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.file_system.lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.file_system.lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.file_system.lustre_configuration.drive_cache_type #=> String, one of ["NONE", "READ"]
    #   resp.data.file_system.lustre_configuration.data_compression_type #=> String, one of ["NONE", "LZ4"]
    #   resp.data.file_system.lustre_configuration.log_configuration #=> Types::LustreLogConfiguration
    #   resp.data.file_system.lustre_configuration.log_configuration.level #=> String, one of ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"]
    #   resp.data.file_system.lustre_configuration.log_configuration.destination #=> String
    #   resp.data.file_system.lustre_configuration.root_squash_configuration #=> Types::LustreRootSquashConfiguration
    #   resp.data.file_system.lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.data.file_system.lustre_configuration.root_squash_configuration.no_squash_nids #=> Array<String>
    #   resp.data.file_system.lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.data.file_system.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.file_system.administrative_actions[0] #=> Types::AdministrativeAction
    #   resp.data.file_system.administrative_actions[0].administrative_action_type #=> String, one of ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS"]
    #   resp.data.file_system.administrative_actions[0].progress_percent #=> Integer
    #   resp.data.file_system.administrative_actions[0].request_time #=> Time
    #   resp.data.file_system.administrative_actions[0].status #=> String, one of ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"]
    #   resp.data.file_system.administrative_actions[0].target_file_system_values #=> Types::FileSystem
    #   resp.data.file_system.administrative_actions[0].failure_details #=> Types::AdministrativeActionFailureDetails
    #   resp.data.file_system.administrative_actions[0].failure_details.message #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values #=> Types::Volume
    #   resp.data.file_system.administrative_actions[0].target_volume_values.creation_time #=> Time
    #   resp.data.file_system.administrative_actions[0].target_volume_values.file_system_id #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.lifecycle #=> String, one of ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.name #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration #=> Types::OntapVolumeConfiguration
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.flex_cache_endpoint_type #=> String, one of ["NONE", "ORIGIN", "CACHE"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.junction_path #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.security_style #=> String, one of ["UNIX", "NTFS", "MIXED"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.size_in_megabytes #=> Integer
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy #=> Types::TieringPolicy
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.name #=> String, one of ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.uuid #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.ontap_volume_type #=> String, one of ["RW", "DP", "LS"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.resource_arn #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.tags #=> Array<Tag>
    #   resp.data.file_system.administrative_actions[0].target_volume_values.volume_id #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.volume_type #=> String, one of ["ONTAP", "OPENZFS"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.lifecycle_transition_reason #=> Types::LifecycleTransitionReason
    #   resp.data.file_system.administrative_actions[0].target_volume_values.lifecycle_transition_reason.message #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration #=> Types::OpenZFSVolumeConfiguration
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.parent_volume_id #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.volume_path #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.data_compression_type #=> String, one of ["NONE", "ZSTD", "LZ4"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot #=> Types::OpenZFSOriginSnapshotConfiguration
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of ["CLONE", "FULL_COPY"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.read_only #=> Boolean
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports #=> Array<OpenZFSNfsExport>
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0] #=> Types::OpenZFSNfsExport
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations #=> Array<OpenZFSClientConfiguration>
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0] #=> Types::OpenZFSClientConfiguration
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array<String>
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas #=> Array<OpenZFSUserOrGroupQuota>
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0] #=> Types::OpenZFSUserOrGroupQuota
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of ["USER", "GROUP"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values #=> Types::Snapshot
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.resource_arn #=> String
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.snapshot_id #=> String
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.name #=> String
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.volume_id #=> String
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.creation_time #=> Time
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.lifecycle #=> String, one of ["PENDING", "CREATING", "DELETING", "AVAILABLE"]
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.lifecycle_transition_reason #=> Types::LifecycleTransitionReason
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.tags #=> Array<Tag>
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.file_system.ontap_configuration #=> Types::OntapFileSystemConfiguration
    #   resp.data.file_system.ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.file_system.ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.file_system.ontap_configuration.deployment_type #=> String, one of ["MULTI_AZ_1", "SINGLE_AZ_1"]
    #   resp.data.file_system.ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.data.file_system.ontap_configuration.endpoints #=> Types::FileSystemEndpoints
    #   resp.data.file_system.ontap_configuration.endpoints.intercluster #=> Types::FileSystemEndpoint
    #   resp.data.file_system.ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.data.file_system.ontap_configuration.endpoints.intercluster.ip_addresses #=> Array<String>
    #   resp.data.file_system.ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.data.file_system.ontap_configuration.endpoints.management #=> Types::FileSystemEndpoint
    #   resp.data.file_system.ontap_configuration.disk_iops_configuration #=> Types::DiskIopsConfiguration
    #   resp.data.file_system.ontap_configuration.disk_iops_configuration.mode #=> String, one of ["AUTOMATIC", "USER_PROVISIONED"]
    #   resp.data.file_system.ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.data.file_system.ontap_configuration.preferred_subnet_id #=> String
    #   resp.data.file_system.ontap_configuration.route_table_ids #=> Array<String>
    #   resp.data.file_system.ontap_configuration.route_table_ids[0] #=> String
    #   resp.data.file_system.ontap_configuration.throughput_capacity #=> Integer
    #   resp.data.file_system.ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.file_system.file_system_type_version #=> String
    #   resp.data.file_system.open_zfs_configuration #=> Types::OpenZFSFileSystemConfiguration
    #   resp.data.file_system.open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.file_system.open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.file_system.open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.data.file_system.open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.file_system.open_zfs_configuration.deployment_type #=> String, one of ["SINGLE_AZ_1"]
    #   resp.data.file_system.open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.data.file_system.open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.file_system.open_zfs_configuration.disk_iops_configuration #=> Types::DiskIopsConfiguration
    #   resp.data.file_system.open_zfs_configuration.root_volume_id #=> String
    #
    def create_file_system_from_backup(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFileSystemFromBackupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFileSystemFromBackupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFileSystemFromBackup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::InvalidPerUnitStorageThroughput, Errors::IncompatibleParameterError, Errors::InvalidNetworkSettings, Errors::MissingFileSystemConfiguration, Errors::ActiveDirectoryError, Errors::BadRequest, Errors::BackupNotFound, Errors::ServiceLimitExceeded]),
        data_parser: Parsers::CreateFileSystemFromBackup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFileSystemFromBackup,
        stubs: @stubs,
        params_class: Params::CreateFileSystemFromBackupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_file_system_from_backup
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a snapshot of an existing Amazon FSx for OpenZFS volume. With
    #             snapshots, you can easily undo file changes and compare file versions by restoring the
    #             volume to a previous version.</p>
    #         <p>If a snapshot with the specified client request token exists, and the parameters
    #             match, this operation returns the description of the existing snapshot. If a snapshot
    #             with the specified client request token exists, and the parameters don't match, this
    #             operation returns <code>IncompatibleParameterError</code>. If a snapshot with the
    #             specified client request token doesn't exist, <code>CreateSnapshot</code> does the
    #             following:</p>
    #         <ul>
    #             <li>
    #                 <p>Creates a new OpenZFS snapshot with an assigned ID, and an initial lifecycle
    #                     state of <code>CREATING</code>.</p>
    #             </li>
    #             <li>
    #                 <p>Returns the description of the snapshot.</p>
    #             </li>
    #          </ul>
    #         <p>By using the idempotent operation, you can retry a <code>CreateSnapshot</code>
    #             operation without the risk of creating an extra snapshot. This approach can be useful
    #             when an initial call fails in a way that makes it unclear whether a snapshot was
    #             created. If you use the same client request token and the initial call created a
    #             snapshot, the operation returns a successful result because all the parameters are the
    #             same.</p>
    #         <p>The <code>CreateSnapshot</code> operation returns while the snapshot's lifecycle state
    #             is still <code>CREATING</code>. You can check the snapshot creation status by calling
    #             the <a href="https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeSnapshots.html">DescribeSnapshots</a> operation, which returns the snapshot state along with
    #             other information.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSnapshotInput}.
    #
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 64
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #
    # @option params [String] :name
    #   <p>The name of the snapshot. </p>
    #
    # @option params [String] :volume_id
    #   <p>The ID of the volume that you are taking a snapshot of.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>
    #
    # @return [Types::CreateSnapshotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_snapshot(
    #     client_request_token: 'ClientRequestToken',
    #     name: 'Name', # required
    #     volume_id: 'VolumeId', # required
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
    #   resp.data #=> Types::CreateSnapshotOutput
    #   resp.data.snapshot #=> Types::Snapshot
    #   resp.data.snapshot.resource_arn #=> String
    #   resp.data.snapshot.snapshot_id #=> String
    #   resp.data.snapshot.name #=> String
    #   resp.data.snapshot.volume_id #=> String
    #   resp.data.snapshot.creation_time #=> Time
    #   resp.data.snapshot.lifecycle #=> String, one of ["PENDING", "CREATING", "DELETING", "AVAILABLE"]
    #   resp.data.snapshot.lifecycle_transition_reason #=> Types::LifecycleTransitionReason
    #   resp.data.snapshot.lifecycle_transition_reason.message #=> String
    #   resp.data.snapshot.tags #=> Array<Tag>
    #   resp.data.snapshot.tags[0] #=> Types::Tag
    #   resp.data.snapshot.tags[0].key #=> String
    #   resp.data.snapshot.tags[0].value #=> String
    #   resp.data.snapshot.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.snapshot.administrative_actions[0] #=> Types::AdministrativeAction
    #   resp.data.snapshot.administrative_actions[0].administrative_action_type #=> String, one of ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS"]
    #   resp.data.snapshot.administrative_actions[0].progress_percent #=> Integer
    #   resp.data.snapshot.administrative_actions[0].request_time #=> Time
    #   resp.data.snapshot.administrative_actions[0].status #=> String, one of ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values #=> Types::FileSystem
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.owner_id #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.creation_time #=> Time
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.file_system_id #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.file_system_type #=> String, one of ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lifecycle #=> String, one of ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.failure_details #=> Types::FileSystemFailureDetails
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.failure_details.message #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.storage_capacity #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.storage_type #=> String, one of ["SSD", "HDD"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.vpc_id #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.subnet_ids #=> Array<String>
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.subnet_ids[0] #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.network_interface_ids #=> Array<String>
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.network_interface_ids[0] #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.dns_name #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.kms_key_id #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.resource_arn #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.tags #=> Array<Tag>
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration #=> Types::WindowsFileSystemConfiguration
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.active_directory_id #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration #=> Types::SelfManagedActiveDirectoryAttributes
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array<String>
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.deployment_type #=> String, one of ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.remote_administration_endpoint #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.preferred_subnet_id #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.preferred_file_server_ip #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.throughput_capacity #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress #=> Array<String>
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of ["PATCHING", "BACKING_UP"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.aliases #=> Array<Alias>
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.aliases[0] #=> Types::Alias
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].name #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].lifecycle #=> String, one of ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration #=> Types::WindowsAuditLogConfiguration
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration #=> Types::LustreFileSystemConfiguration
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration #=> Types::DataRepositoryConfiguration
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.lifecycle #=> String, one of ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.failure_details #=> Types::DataRepositoryFailureDetails
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.deployment_type #=> String, one of ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.mount_name #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.drive_cache_type #=> String, one of ["NONE", "READ"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.data_compression_type #=> String, one of ["NONE", "LZ4"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration #=> Types::LustreLogConfiguration
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.level #=> String, one of ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.destination #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration #=> Types::LustreRootSquashConfiguration
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids #=> Array<String>
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration #=> Types::OntapFileSystemConfiguration
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.deployment_type #=> String, one of ["MULTI_AZ_1", "SINGLE_AZ_1"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints #=> Types::FileSystemEndpoints
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster #=> Types::FileSystemEndpoint
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses #=> Array<String>
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management #=> Types::FileSystemEndpoint
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration #=> Types::DiskIopsConfiguration
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.mode #=> String, one of ["AUTOMATIC", "USER_PROVISIONED"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.preferred_subnet_id #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids #=> Array<String>
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids[0] #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.throughput_capacity #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.file_system_type_version #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration #=> Types::OpenZFSFileSystemConfiguration
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.deployment_type #=> String, one of ["SINGLE_AZ_1"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.disk_iops_configuration #=> Types::DiskIopsConfiguration
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.root_volume_id #=> String
    #   resp.data.snapshot.administrative_actions[0].failure_details #=> Types::AdministrativeActionFailureDetails
    #   resp.data.snapshot.administrative_actions[0].failure_details.message #=> String
    #   resp.data.snapshot.administrative_actions[0].target_volume_values #=> Types::Volume
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.creation_time #=> Time
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.file_system_id #=> String
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.lifecycle #=> String, one of ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"]
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.name #=> String
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.ontap_configuration #=> Types::OntapVolumeConfiguration
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.flex_cache_endpoint_type #=> String, one of ["NONE", "ORIGIN", "CACHE"]
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.junction_path #=> String
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.security_style #=> String, one of ["UNIX", "NTFS", "MIXED"]
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.size_in_megabytes #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy #=> Types::TieringPolicy
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.name #=> String, one of ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.uuid #=> String
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.ontap_volume_type #=> String, one of ["RW", "DP", "LS"]
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.resource_arn #=> String
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.tags #=> Array<Tag>
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.volume_id #=> String
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.volume_type #=> String, one of ["ONTAP", "OPENZFS"]
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.lifecycle_transition_reason #=> Types::LifecycleTransitionReason
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration #=> Types::OpenZFSVolumeConfiguration
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.parent_volume_id #=> String
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.volume_path #=> String
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.data_compression_type #=> String, one of ["NONE", "ZSTD", "LZ4"]
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot #=> Types::OpenZFSOriginSnapshotConfiguration
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of ["CLONE", "FULL_COPY"]
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.read_only #=> Boolean
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports #=> Array<OpenZFSNfsExport>
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0] #=> Types::OpenZFSNfsExport
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations #=> Array<OpenZFSClientConfiguration>
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0] #=> Types::OpenZFSClientConfiguration
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array<String>
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas #=> Array<OpenZFSUserOrGroupQuota>
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0] #=> Types::OpenZFSUserOrGroupQuota
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of ["USER", "GROUP"]
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_snapshot_values #=> Types::Snapshot
    #
    def create_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSnapshotInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::VolumeNotFound, Errors::BadRequest, Errors::ServiceLimitExceeded]),
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

    # <p>Creates a storage virtual machine (SVM) for an Amazon FSx for ONTAP file system.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateStorageVirtualMachineInput}.
    #
    # @option params [CreateSvmActiveDirectoryConfiguration] :active_directory_configuration
    #   <p>Describes the self-managed Microsoft Active Directory to which you want to join the SVM.
    #         Joining an Active Directory provides user authentication and access control for SMB clients,
    #         including Microsoft Windows and macOS client accessing the file system.</p>
    #
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 64
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #
    # @option params [String] :file_system_id
    #   <p>The globally unique ID of the file system, assigned by Amazon FSx.</p>
    #
    # @option params [String] :name
    #   <p>The name of the SVM.</p>
    #
    # @option params [String] :svm_admin_password
    #   <p>The password to use when managing the SVM using the NetApp ONTAP CLI or REST API.
    #               If you do not specify a password, you can still use the file system's
    #               <code>fsxadmin</code> user to manage the SVM.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>
    #
    # @option params [String] :root_volume_security_style
    #   <p>The security style of the root volume of the SVM. Specify one of the following values:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>UNIX</code> if the file system is managed by a UNIX
    #                   administrator, the majority of users are NFS clients, and an application
    #                   accessing the data uses a UNIX user as the service account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NTFS</code> if the file system is managed by a Windows
    #                   administrator, the majority of users are SMB clients, and an application
    #                   accessing the data uses a Windows user as the service account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MIXED</code> if the file system is managed by both UNIX
    #                   and Windows administrators and users consist of both NFS and SMB clients.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::CreateStorageVirtualMachineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_storage_virtual_machine(
    #     active_directory_configuration: {
    #       net_bios_name: 'NetBiosName', # required
    #       self_managed_active_directory_configuration: {
    #         domain_name: 'DomainName', # required
    #         organizational_unit_distinguished_name: 'OrganizationalUnitDistinguishedName',
    #         file_system_administrators_group: 'FileSystemAdministratorsGroup',
    #         user_name: 'UserName', # required
    #         password: 'Password', # required
    #         dns_ips: [
    #           'member'
    #         ] # required
    #       }
    #     },
    #     client_request_token: 'ClientRequestToken',
    #     file_system_id: 'FileSystemId', # required
    #     name: 'Name', # required
    #     svm_admin_password: 'SvmAdminPassword',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     root_volume_security_style: 'UNIX' # accepts ["UNIX", "NTFS", "MIXED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateStorageVirtualMachineOutput
    #   resp.data.storage_virtual_machine #=> Types::StorageVirtualMachine
    #   resp.data.storage_virtual_machine.active_directory_configuration #=> Types::SvmActiveDirectoryConfiguration
    #   resp.data.storage_virtual_machine.active_directory_configuration.net_bios_name #=> String
    #   resp.data.storage_virtual_machine.active_directory_configuration.self_managed_active_directory_configuration #=> Types::SelfManagedActiveDirectoryAttributes
    #   resp.data.storage_virtual_machine.active_directory_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.data.storage_virtual_machine.active_directory_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.data.storage_virtual_machine.active_directory_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.data.storage_virtual_machine.active_directory_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.data.storage_virtual_machine.active_directory_configuration.self_managed_active_directory_configuration.dns_ips #=> Array<String>
    #   resp.data.storage_virtual_machine.active_directory_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.data.storage_virtual_machine.creation_time #=> Time
    #   resp.data.storage_virtual_machine.endpoints #=> Types::SvmEndpoints
    #   resp.data.storage_virtual_machine.endpoints.iscsi #=> Types::SvmEndpoint
    #   resp.data.storage_virtual_machine.endpoints.iscsi.dns_name #=> String
    #   resp.data.storage_virtual_machine.endpoints.iscsi.ip_addresses #=> Array<String>
    #   resp.data.storage_virtual_machine.endpoints.iscsi.ip_addresses[0] #=> String
    #   resp.data.storage_virtual_machine.endpoints.management #=> Types::SvmEndpoint
    #   resp.data.storage_virtual_machine.endpoints.nfs #=> Types::SvmEndpoint
    #   resp.data.storage_virtual_machine.endpoints.smb #=> Types::SvmEndpoint
    #   resp.data.storage_virtual_machine.file_system_id #=> String
    #   resp.data.storage_virtual_machine.lifecycle #=> String, one of ["CREATED", "CREATING", "DELETING", "FAILED", "MISCONFIGURED", "PENDING"]
    #   resp.data.storage_virtual_machine.name #=> String
    #   resp.data.storage_virtual_machine.resource_arn #=> String
    #   resp.data.storage_virtual_machine.storage_virtual_machine_id #=> String
    #   resp.data.storage_virtual_machine.subtype #=> String, one of ["DEFAULT", "DP_DESTINATION", "SYNC_DESTINATION", "SYNC_SOURCE"]
    #   resp.data.storage_virtual_machine.uuid #=> String
    #   resp.data.storage_virtual_machine.tags #=> Array<Tag>
    #   resp.data.storage_virtual_machine.tags[0] #=> Types::Tag
    #   resp.data.storage_virtual_machine.tags[0].key #=> String
    #   resp.data.storage_virtual_machine.tags[0].value #=> String
    #   resp.data.storage_virtual_machine.lifecycle_transition_reason #=> Types::LifecycleTransitionReason
    #   resp.data.storage_virtual_machine.lifecycle_transition_reason.message #=> String
    #   resp.data.storage_virtual_machine.root_volume_security_style #=> String, one of ["UNIX", "NTFS", "MIXED"]
    #
    def create_storage_virtual_machine(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateStorageVirtualMachineInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateStorageVirtualMachineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateStorageVirtualMachine
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::IncompatibleParameterError, Errors::ActiveDirectoryError, Errors::BadRequest, Errors::FileSystemNotFound, Errors::UnsupportedOperation, Errors::ServiceLimitExceeded]),
        data_parser: Parsers::CreateStorageVirtualMachine
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateStorageVirtualMachine,
        stubs: @stubs,
        params_class: Params::CreateStorageVirtualMachineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_storage_virtual_machine
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an FSx for ONTAP or Amazon FSx for OpenZFS storage volume.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateVolumeInput}.
    #
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 64
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #
    # @option params [String] :volume_type
    #   <p>Specifies the type of volume to create; <code>ONTAP</code> and <code>OPENZFS</code> are
    #               the only valid volume types.</p>
    #
    # @option params [String] :name
    #   <p>Specifies the name of the volume that you're creating.</p>
    #
    # @option params [CreateOntapVolumeConfiguration] :ontap_configuration
    #   <p>Specifies the configuration to use when creating the ONTAP volume.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>
    #
    # @option params [CreateOpenZFSVolumeConfiguration] :open_zfs_configuration
    #   <p>Specifies the configuration to use when creating the OpenZFS volume.</p>
    #
    # @return [Types::CreateVolumeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_volume(
    #     client_request_token: 'ClientRequestToken',
    #     volume_type: 'ONTAP', # required - accepts ["ONTAP", "OPENZFS"]
    #     name: 'Name', # required
    #     ontap_configuration: {
    #       junction_path: 'JunctionPath', # required
    #       security_style: 'UNIX', # accepts ["UNIX", "NTFS", "MIXED"]
    #       size_in_megabytes: 1, # required
    #       storage_efficiency_enabled: false, # required
    #       storage_virtual_machine_id: 'StorageVirtualMachineId', # required
    #       tiering_policy: {
    #         cooling_period: 1,
    #         name: 'SNAPSHOT_ONLY' # accepts ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #       }
    #     },
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     open_zfs_configuration: {
    #       parent_volume_id: 'ParentVolumeId', # required
    #       storage_capacity_reservation_gi_b: 1,
    #       storage_capacity_quota_gi_b: 1,
    #       record_size_ki_b: 1,
    #       data_compression_type: 'NONE', # accepts ["NONE", "ZSTD", "LZ4"]
    #       copy_tags_to_snapshots: false,
    #       origin_snapshot: {
    #         snapshot_arn: 'SnapshotARN', # required
    #         copy_strategy: 'CLONE' # required - accepts ["CLONE", "FULL_COPY"]
    #       },
    #       read_only: false,
    #       nfs_exports: [
    #         {
    #           client_configurations: [
    #             {
    #               clients: 'Clients', # required
    #               options: [
    #                 'member'
    #               ] # required
    #             }
    #           ] # required
    #         }
    #       ],
    #       user_and_group_quotas: [
    #         {
    #           type: 'USER', # required - accepts ["USER", "GROUP"]
    #           id: 1, # required
    #           storage_capacity_quota_gi_b: 1 # required
    #         }
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateVolumeOutput
    #   resp.data.volume #=> Types::Volume
    #   resp.data.volume.creation_time #=> Time
    #   resp.data.volume.file_system_id #=> String
    #   resp.data.volume.lifecycle #=> String, one of ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"]
    #   resp.data.volume.name #=> String
    #   resp.data.volume.ontap_configuration #=> Types::OntapVolumeConfiguration
    #   resp.data.volume.ontap_configuration.flex_cache_endpoint_type #=> String, one of ["NONE", "ORIGIN", "CACHE"]
    #   resp.data.volume.ontap_configuration.junction_path #=> String
    #   resp.data.volume.ontap_configuration.security_style #=> String, one of ["UNIX", "NTFS", "MIXED"]
    #   resp.data.volume.ontap_configuration.size_in_megabytes #=> Integer
    #   resp.data.volume.ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.data.volume.ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.data.volume.ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.data.volume.ontap_configuration.tiering_policy #=> Types::TieringPolicy
    #   resp.data.volume.ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.data.volume.ontap_configuration.tiering_policy.name #=> String, one of ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #   resp.data.volume.ontap_configuration.uuid #=> String
    #   resp.data.volume.ontap_configuration.ontap_volume_type #=> String, one of ["RW", "DP", "LS"]
    #   resp.data.volume.resource_arn #=> String
    #   resp.data.volume.tags #=> Array<Tag>
    #   resp.data.volume.tags[0] #=> Types::Tag
    #   resp.data.volume.tags[0].key #=> String
    #   resp.data.volume.tags[0].value #=> String
    #   resp.data.volume.volume_id #=> String
    #   resp.data.volume.volume_type #=> String, one of ["ONTAP", "OPENZFS"]
    #   resp.data.volume.lifecycle_transition_reason #=> Types::LifecycleTransitionReason
    #   resp.data.volume.lifecycle_transition_reason.message #=> String
    #   resp.data.volume.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.volume.administrative_actions[0] #=> Types::AdministrativeAction
    #   resp.data.volume.administrative_actions[0].administrative_action_type #=> String, one of ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS"]
    #   resp.data.volume.administrative_actions[0].progress_percent #=> Integer
    #   resp.data.volume.administrative_actions[0].request_time #=> Time
    #   resp.data.volume.administrative_actions[0].status #=> String, one of ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values #=> Types::FileSystem
    #   resp.data.volume.administrative_actions[0].target_file_system_values.owner_id #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.creation_time #=> Time
    #   resp.data.volume.administrative_actions[0].target_file_system_values.file_system_id #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.file_system_type #=> String, one of ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lifecycle #=> String, one of ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.failure_details #=> Types::FileSystemFailureDetails
    #   resp.data.volume.administrative_actions[0].target_file_system_values.failure_details.message #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.storage_capacity #=> Integer
    #   resp.data.volume.administrative_actions[0].target_file_system_values.storage_type #=> String, one of ["SSD", "HDD"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.vpc_id #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.subnet_ids #=> Array<String>
    #   resp.data.volume.administrative_actions[0].target_file_system_values.subnet_ids[0] #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.network_interface_ids #=> Array<String>
    #   resp.data.volume.administrative_actions[0].target_file_system_values.network_interface_ids[0] #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.dns_name #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.kms_key_id #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.resource_arn #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.tags #=> Array<Tag>
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration #=> Types::WindowsFileSystemConfiguration
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.active_directory_id #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration #=> Types::SelfManagedActiveDirectoryAttributes
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array<String>
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.deployment_type #=> String, one of ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.remote_administration_endpoint #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.preferred_subnet_id #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.preferred_file_server_ip #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.throughput_capacity #=> Integer
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress #=> Array<String>
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of ["PATCHING", "BACKING_UP"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.aliases #=> Array<Alias>
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.aliases[0] #=> Types::Alias
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].name #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].lifecycle #=> String, one of ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration #=> Types::WindowsAuditLogConfiguration
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration #=> Types::LustreFileSystemConfiguration
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration #=> Types::DataRepositoryConfiguration
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.lifecycle #=> String, one of ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.failure_details #=> Types::DataRepositoryFailureDetails
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.deployment_type #=> String, one of ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.mount_name #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.drive_cache_type #=> String, one of ["NONE", "READ"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_compression_type #=> String, one of ["NONE", "LZ4"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration #=> Types::LustreLogConfiguration
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.level #=> String, one of ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.destination #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration #=> Types::LustreRootSquashConfiguration
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids #=> Array<String>
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration #=> Types::OntapFileSystemConfiguration
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.deployment_type #=> String, one of ["MULTI_AZ_1", "SINGLE_AZ_1"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints #=> Types::FileSystemEndpoints
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster #=> Types::FileSystemEndpoint
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses #=> Array<String>
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management #=> Types::FileSystemEndpoint
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration #=> Types::DiskIopsConfiguration
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.mode #=> String, one of ["AUTOMATIC", "USER_PROVISIONED"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.preferred_subnet_id #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids #=> Array<String>
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids[0] #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.throughput_capacity #=> Integer
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.file_system_type_version #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration #=> Types::OpenZFSFileSystemConfiguration
    #   resp.data.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.data.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.deployment_type #=> String, one of ["SINGLE_AZ_1"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.data.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.disk_iops_configuration #=> Types::DiskIopsConfiguration
    #   resp.data.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.root_volume_id #=> String
    #   resp.data.volume.administrative_actions[0].failure_details #=> Types::AdministrativeActionFailureDetails
    #   resp.data.volume.administrative_actions[0].failure_details.message #=> String
    #   resp.data.volume.administrative_actions[0].target_volume_values #=> Types::Volume
    #   resp.data.volume.administrative_actions[0].target_snapshot_values #=> Types::Snapshot
    #   resp.data.volume.administrative_actions[0].target_snapshot_values.resource_arn #=> String
    #   resp.data.volume.administrative_actions[0].target_snapshot_values.snapshot_id #=> String
    #   resp.data.volume.administrative_actions[0].target_snapshot_values.name #=> String
    #   resp.data.volume.administrative_actions[0].target_snapshot_values.volume_id #=> String
    #   resp.data.volume.administrative_actions[0].target_snapshot_values.creation_time #=> Time
    #   resp.data.volume.administrative_actions[0].target_snapshot_values.lifecycle #=> String, one of ["PENDING", "CREATING", "DELETING", "AVAILABLE"]
    #   resp.data.volume.administrative_actions[0].target_snapshot_values.lifecycle_transition_reason #=> Types::LifecycleTransitionReason
    #   resp.data.volume.administrative_actions[0].target_snapshot_values.tags #=> Array<Tag>
    #   resp.data.volume.administrative_actions[0].target_snapshot_values.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.volume.open_zfs_configuration #=> Types::OpenZFSVolumeConfiguration
    #   resp.data.volume.open_zfs_configuration.parent_volume_id #=> String
    #   resp.data.volume.open_zfs_configuration.volume_path #=> String
    #   resp.data.volume.open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.data.volume.open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.data.volume.open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.data.volume.open_zfs_configuration.data_compression_type #=> String, one of ["NONE", "ZSTD", "LZ4"]
    #   resp.data.volume.open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.data.volume.open_zfs_configuration.origin_snapshot #=> Types::OpenZFSOriginSnapshotConfiguration
    #   resp.data.volume.open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.data.volume.open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of ["CLONE", "FULL_COPY"]
    #   resp.data.volume.open_zfs_configuration.read_only #=> Boolean
    #   resp.data.volume.open_zfs_configuration.nfs_exports #=> Array<OpenZFSNfsExport>
    #   resp.data.volume.open_zfs_configuration.nfs_exports[0] #=> Types::OpenZFSNfsExport
    #   resp.data.volume.open_zfs_configuration.nfs_exports[0].client_configurations #=> Array<OpenZFSClientConfiguration>
    #   resp.data.volume.open_zfs_configuration.nfs_exports[0].client_configurations[0] #=> Types::OpenZFSClientConfiguration
    #   resp.data.volume.open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.data.volume.open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array<String>
    #   resp.data.volume.open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.data.volume.open_zfs_configuration.user_and_group_quotas #=> Array<OpenZFSUserOrGroupQuota>
    #   resp.data.volume.open_zfs_configuration.user_and_group_quotas[0] #=> Types::OpenZFSUserOrGroupQuota
    #   resp.data.volume.open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of ["USER", "GROUP"]
    #   resp.data.volume.open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.data.volume.open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #
    def create_volume(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateVolumeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateVolumeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateVolume
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::IncompatibleParameterError, Errors::StorageVirtualMachineNotFound, Errors::BadRequest, Errors::FileSystemNotFound, Errors::UnsupportedOperation, Errors::MissingVolumeConfiguration, Errors::ServiceLimitExceeded]),
        data_parser: Parsers::CreateVolume
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateVolume,
        stubs: @stubs,
        params_class: Params::CreateVolumeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_volume
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new Amazon FSx for NetApp ONTAP volume from an
    #             existing Amazon FSx volume backup.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateVolumeFromBackupInput}.
    #
    # @option params [String] :backup_id
    #   <p>The ID of the source backup. Specifies the backup that you are copying.</p>
    #
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 64
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #
    # @option params [String] :name
    #   <p>The name of the new volume you're creating.</p>
    #
    # @option params [CreateOntapVolumeConfiguration] :ontap_configuration
    #   <p>Specifies the configuration of the ONTAP volume that you are creating.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of <code>Tag</code> values, with a maximum of 50 elements.</p>
    #
    # @return [Types::CreateVolumeFromBackupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_volume_from_backup(
    #     backup_id: 'BackupId', # required
    #     client_request_token: 'ClientRequestToken',
    #     name: 'Name', # required
    #     ontap_configuration: {
    #       junction_path: 'JunctionPath', # required
    #       security_style: 'UNIX', # accepts ["UNIX", "NTFS", "MIXED"]
    #       size_in_megabytes: 1, # required
    #       storage_efficiency_enabled: false, # required
    #       storage_virtual_machine_id: 'StorageVirtualMachineId', # required
    #       tiering_policy: {
    #         cooling_period: 1,
    #         name: 'SNAPSHOT_ONLY' # accepts ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #       }
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
    #   resp.data #=> Types::CreateVolumeFromBackupOutput
    #   resp.data.volume #=> Types::Volume
    #   resp.data.volume.creation_time #=> Time
    #   resp.data.volume.file_system_id #=> String
    #   resp.data.volume.lifecycle #=> String, one of ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"]
    #   resp.data.volume.name #=> String
    #   resp.data.volume.ontap_configuration #=> Types::OntapVolumeConfiguration
    #   resp.data.volume.ontap_configuration.flex_cache_endpoint_type #=> String, one of ["NONE", "ORIGIN", "CACHE"]
    #   resp.data.volume.ontap_configuration.junction_path #=> String
    #   resp.data.volume.ontap_configuration.security_style #=> String, one of ["UNIX", "NTFS", "MIXED"]
    #   resp.data.volume.ontap_configuration.size_in_megabytes #=> Integer
    #   resp.data.volume.ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.data.volume.ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.data.volume.ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.data.volume.ontap_configuration.tiering_policy #=> Types::TieringPolicy
    #   resp.data.volume.ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.data.volume.ontap_configuration.tiering_policy.name #=> String, one of ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #   resp.data.volume.ontap_configuration.uuid #=> String
    #   resp.data.volume.ontap_configuration.ontap_volume_type #=> String, one of ["RW", "DP", "LS"]
    #   resp.data.volume.resource_arn #=> String
    #   resp.data.volume.tags #=> Array<Tag>
    #   resp.data.volume.tags[0] #=> Types::Tag
    #   resp.data.volume.tags[0].key #=> String
    #   resp.data.volume.tags[0].value #=> String
    #   resp.data.volume.volume_id #=> String
    #   resp.data.volume.volume_type #=> String, one of ["ONTAP", "OPENZFS"]
    #   resp.data.volume.lifecycle_transition_reason #=> Types::LifecycleTransitionReason
    #   resp.data.volume.lifecycle_transition_reason.message #=> String
    #   resp.data.volume.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.volume.administrative_actions[0] #=> Types::AdministrativeAction
    #   resp.data.volume.administrative_actions[0].administrative_action_type #=> String, one of ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS"]
    #   resp.data.volume.administrative_actions[0].progress_percent #=> Integer
    #   resp.data.volume.administrative_actions[0].request_time #=> Time
    #   resp.data.volume.administrative_actions[0].status #=> String, one of ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values #=> Types::FileSystem
    #   resp.data.volume.administrative_actions[0].target_file_system_values.owner_id #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.creation_time #=> Time
    #   resp.data.volume.administrative_actions[0].target_file_system_values.file_system_id #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.file_system_type #=> String, one of ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lifecycle #=> String, one of ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.failure_details #=> Types::FileSystemFailureDetails
    #   resp.data.volume.administrative_actions[0].target_file_system_values.failure_details.message #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.storage_capacity #=> Integer
    #   resp.data.volume.administrative_actions[0].target_file_system_values.storage_type #=> String, one of ["SSD", "HDD"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.vpc_id #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.subnet_ids #=> Array<String>
    #   resp.data.volume.administrative_actions[0].target_file_system_values.subnet_ids[0] #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.network_interface_ids #=> Array<String>
    #   resp.data.volume.administrative_actions[0].target_file_system_values.network_interface_ids[0] #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.dns_name #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.kms_key_id #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.resource_arn #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.tags #=> Array<Tag>
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration #=> Types::WindowsFileSystemConfiguration
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.active_directory_id #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration #=> Types::SelfManagedActiveDirectoryAttributes
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array<String>
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.deployment_type #=> String, one of ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.remote_administration_endpoint #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.preferred_subnet_id #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.preferred_file_server_ip #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.throughput_capacity #=> Integer
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress #=> Array<String>
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of ["PATCHING", "BACKING_UP"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.aliases #=> Array<Alias>
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.aliases[0] #=> Types::Alias
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].name #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].lifecycle #=> String, one of ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration #=> Types::WindowsAuditLogConfiguration
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration #=> Types::LustreFileSystemConfiguration
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration #=> Types::DataRepositoryConfiguration
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.lifecycle #=> String, one of ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.failure_details #=> Types::DataRepositoryFailureDetails
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.deployment_type #=> String, one of ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.mount_name #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.drive_cache_type #=> String, one of ["NONE", "READ"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_compression_type #=> String, one of ["NONE", "LZ4"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration #=> Types::LustreLogConfiguration
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.level #=> String, one of ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.destination #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration #=> Types::LustreRootSquashConfiguration
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids #=> Array<String>
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration #=> Types::OntapFileSystemConfiguration
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.deployment_type #=> String, one of ["MULTI_AZ_1", "SINGLE_AZ_1"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints #=> Types::FileSystemEndpoints
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster #=> Types::FileSystemEndpoint
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses #=> Array<String>
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management #=> Types::FileSystemEndpoint
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration #=> Types::DiskIopsConfiguration
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.mode #=> String, one of ["AUTOMATIC", "USER_PROVISIONED"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.preferred_subnet_id #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids #=> Array<String>
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids[0] #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.throughput_capacity #=> Integer
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.file_system_type_version #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration #=> Types::OpenZFSFileSystemConfiguration
    #   resp.data.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.data.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.deployment_type #=> String, one of ["SINGLE_AZ_1"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.data.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.disk_iops_configuration #=> Types::DiskIopsConfiguration
    #   resp.data.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.root_volume_id #=> String
    #   resp.data.volume.administrative_actions[0].failure_details #=> Types::AdministrativeActionFailureDetails
    #   resp.data.volume.administrative_actions[0].failure_details.message #=> String
    #   resp.data.volume.administrative_actions[0].target_volume_values #=> Types::Volume
    #   resp.data.volume.administrative_actions[0].target_snapshot_values #=> Types::Snapshot
    #   resp.data.volume.administrative_actions[0].target_snapshot_values.resource_arn #=> String
    #   resp.data.volume.administrative_actions[0].target_snapshot_values.snapshot_id #=> String
    #   resp.data.volume.administrative_actions[0].target_snapshot_values.name #=> String
    #   resp.data.volume.administrative_actions[0].target_snapshot_values.volume_id #=> String
    #   resp.data.volume.administrative_actions[0].target_snapshot_values.creation_time #=> Time
    #   resp.data.volume.administrative_actions[0].target_snapshot_values.lifecycle #=> String, one of ["PENDING", "CREATING", "DELETING", "AVAILABLE"]
    #   resp.data.volume.administrative_actions[0].target_snapshot_values.lifecycle_transition_reason #=> Types::LifecycleTransitionReason
    #   resp.data.volume.administrative_actions[0].target_snapshot_values.tags #=> Array<Tag>
    #   resp.data.volume.administrative_actions[0].target_snapshot_values.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.volume.open_zfs_configuration #=> Types::OpenZFSVolumeConfiguration
    #   resp.data.volume.open_zfs_configuration.parent_volume_id #=> String
    #   resp.data.volume.open_zfs_configuration.volume_path #=> String
    #   resp.data.volume.open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.data.volume.open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.data.volume.open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.data.volume.open_zfs_configuration.data_compression_type #=> String, one of ["NONE", "ZSTD", "LZ4"]
    #   resp.data.volume.open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.data.volume.open_zfs_configuration.origin_snapshot #=> Types::OpenZFSOriginSnapshotConfiguration
    #   resp.data.volume.open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.data.volume.open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of ["CLONE", "FULL_COPY"]
    #   resp.data.volume.open_zfs_configuration.read_only #=> Boolean
    #   resp.data.volume.open_zfs_configuration.nfs_exports #=> Array<OpenZFSNfsExport>
    #   resp.data.volume.open_zfs_configuration.nfs_exports[0] #=> Types::OpenZFSNfsExport
    #   resp.data.volume.open_zfs_configuration.nfs_exports[0].client_configurations #=> Array<OpenZFSClientConfiguration>
    #   resp.data.volume.open_zfs_configuration.nfs_exports[0].client_configurations[0] #=> Types::OpenZFSClientConfiguration
    #   resp.data.volume.open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.data.volume.open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array<String>
    #   resp.data.volume.open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.data.volume.open_zfs_configuration.user_and_group_quotas #=> Array<OpenZFSUserOrGroupQuota>
    #   resp.data.volume.open_zfs_configuration.user_and_group_quotas[0] #=> Types::OpenZFSUserOrGroupQuota
    #   resp.data.volume.open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of ["USER", "GROUP"]
    #   resp.data.volume.open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.data.volume.open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #
    def create_volume_from_backup(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateVolumeFromBackupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateVolumeFromBackupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateVolumeFromBackup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::IncompatibleParameterError, Errors::StorageVirtualMachineNotFound, Errors::BadRequest, Errors::FileSystemNotFound, Errors::BackupNotFound, Errors::MissingVolumeConfiguration, Errors::ServiceLimitExceeded]),
        data_parser: Parsers::CreateVolumeFromBackup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateVolumeFromBackup,
        stubs: @stubs,
        params_class: Params::CreateVolumeFromBackupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_volume_from_backup
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Amazon FSx backup. After deletion, the backup no longer exists, and
    #             its data is gone.</p>
    #
    #         <p>The <code>DeleteBackup</code> call returns instantly. The backup won't show up in
    #             later <code>DescribeBackups</code> calls.</p>
    #
    #         <important>
    #             <p>The data in a deleted backup is also deleted and can't be recovered by any
    #                 means.</p>
    #         </important>
    #
    # @param [Hash] params
    #   See {Types::DeleteBackupInput}.
    #
    # @option params [String] :backup_id
    #   <p>The ID of the backup that you want to delete.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A string of up to 64 ASCII characters that Amazon FSx uses to ensure
    #               idempotent deletion. This parameter is automatically filled on your behalf when using
    #               the CLI or SDK.</p>
    #
    # @return [Types::DeleteBackupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backup(
    #     backup_id: 'BackupId', # required
    #     client_request_token: 'ClientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBackupOutput
    #   resp.data.backup_id #=> String
    #   resp.data.lifecycle #=> String, one of ["AVAILABLE", "CREATING", "TRANSFERRING", "DELETED", "FAILED", "PENDING", "COPYING"]
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BackupInProgress, Errors::BackupRestoring, Errors::InternalServerError, Errors::IncompatibleParameterError, Errors::BackupBeingCopied, Errors::BadRequest, Errors::BackupNotFound]),
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

    # <p>Deletes a data repository association on an Amazon FSx for Lustre
    #             file system. Deleting the data repository association unlinks the
    #             file system from the Amazon S3 bucket. When deleting a data repository
    #             association, you have the option of deleting the data in the file system
    #             that corresponds to the data repository association. Data repository
    #             associations are supported only for file systems with the
    #             <code>Persistent_2</code> deployment type.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDataRepositoryAssociationInput}.
    #
    # @option params [String] :association_id
    #   <p>The ID of the data repository association that you want to delete.</p>
    #
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 64
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #
    # @option params [Boolean] :delete_data_in_file_system
    #   <p>Set to <code>true</code> to delete the data in the file system that corresponds
    #               to the data repository association.</p>
    #
    # @return [Types::DeleteDataRepositoryAssociationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_repository_association(
    #     association_id: 'AssociationId', # required
    #     client_request_token: 'ClientRequestToken',
    #     delete_data_in_file_system: false # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDataRepositoryAssociationOutput
    #   resp.data.association_id #=> String
    #   resp.data.lifecycle #=> String, one of ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"]
    #   resp.data.delete_data_in_file_system #=> Boolean
    #
    def delete_data_repository_association(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDataRepositoryAssociationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDataRepositoryAssociationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDataRepositoryAssociation
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::IncompatibleParameterError, Errors::BadRequest, Errors::DataRepositoryAssociationNotFound, Errors::ServiceLimitExceeded]),
        data_parser: Parsers::DeleteDataRepositoryAssociation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDataRepositoryAssociation,
        stubs: @stubs,
        params_class: Params::DeleteDataRepositoryAssociationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_data_repository_association
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a file system. After deletion, the file system no longer exists, and its data
    #             is gone. Any existing automatic backups and snapshots are also deleted.</p>
    #         <p>To delete an Amazon FSx for NetApp ONTAP file system, first delete all the
    #             volumes and storage virtual machines (SVMs) on the file system. Then provide a
    #                 <code>FileSystemId</code> value to the <code>DeleFileSystem</code> operation.</p>
    #
    #         <p>By default, when you delete an Amazon FSx for Windows File Server file system,
    #             a final backup is created upon deletion. This final backup isn't subject to the file
    #             system's retention policy, and must be manually deleted.</p>
    #
    #         <p>The <code>DeleteFileSystem</code> operation returns while the file system has the
    #                 <code>DELETING</code> status. You can check the file system deletion status by
    #             calling the <a href="https://docs.aws.amazon.com/fsx/latest/APIReference/API_DescribeFileSystems.html">DescribeFileSystems</a> operation, which returns a list of file systems in your
    #             account. If you pass the file system ID for a deleted file system, the
    #                 <code>DescribeFileSystems</code> operation returns a <code>FileSystemNotFound</code>
    #             error.</p>
    #         <note>
    #             <p>If a data repository task is in a <code>PENDING</code> or <code>EXECUTING</code> state,
    #                 deleting an Amazon FSx for Lustre file system will fail with an HTTP status
    #                 code 400 (Bad Request).</p>
    #          </note>
    #         <important>
    #             <p>The data in a deleted file system is also deleted and can't be recovered by
    #                 any means.</p>
    #         </important>
    #
    # @param [Hash] params
    #   See {Types::DeleteFileSystemInput}.
    #
    # @option params [String] :file_system_id
    #   <p>The ID of the file system that you want to delete.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A string of up to 64 ASCII characters that Amazon FSx uses to ensure
    #               idempotent deletion. This token is automatically filled on your behalf when using the
    #                   Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #
    # @option params [DeleteFileSystemWindowsConfiguration] :windows_configuration
    #   <p>The configuration object for the Microsoft Windows file system used in the
    #                   <code>DeleteFileSystem</code> operation.</p>
    #
    # @option params [DeleteFileSystemLustreConfiguration] :lustre_configuration
    #   <p>The configuration object for the Amazon FSx for Lustre file system being deleted in the
    #                   <code>DeleteFileSystem</code> operation.</p>
    #
    # @option params [DeleteFileSystemOpenZFSConfiguration] :open_zfs_configuration
    #   <p>The configuration object for the OpenZFS file system used in the
    #                   <code>DeleteFileSystem</code> operation.</p>
    #
    # @return [Types::DeleteFileSystemOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_file_system(
    #     file_system_id: 'FileSystemId', # required
    #     client_request_token: 'ClientRequestToken',
    #     windows_configuration: {
    #       skip_final_backup: false,
    #       final_backup_tags: [
    #         {
    #           key: 'Key', # required
    #           value: 'Value' # required
    #         }
    #       ]
    #     },
    #     lustre_configuration: {
    #       skip_final_backup: false,
    #     },
    #     open_zfs_configuration: {
    #       skip_final_backup: false,
    #       options: [
    #         'DELETE_CHILD_VOLUMES_AND_SNAPSHOTS' # accepts ["DELETE_CHILD_VOLUMES_AND_SNAPSHOTS"]
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFileSystemOutput
    #   resp.data.file_system_id #=> String
    #   resp.data.lifecycle #=> String, one of ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"]
    #   resp.data.windows_response #=> Types::DeleteFileSystemWindowsResponse
    #   resp.data.windows_response.final_backup_id #=> String
    #   resp.data.windows_response.final_backup_tags #=> Array<Tag>
    #   resp.data.windows_response.final_backup_tags[0] #=> Types::Tag
    #   resp.data.windows_response.final_backup_tags[0].key #=> String
    #   resp.data.windows_response.final_backup_tags[0].value #=> String
    #   resp.data.lustre_response #=> Types::DeleteFileSystemLustreResponse
    #   resp.data.lustre_response.final_backup_id #=> String
    #   resp.data.lustre_response.final_backup_tags #=> Array<Tag>
    #   resp.data.open_zfs_response #=> Types::DeleteFileSystemOpenZFSResponse
    #   resp.data.open_zfs_response.final_backup_id #=> String
    #   resp.data.open_zfs_response.final_backup_tags #=> Array<Tag>
    #
    def delete_file_system(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFileSystemInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFileSystemInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFileSystem
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::IncompatibleParameterError, Errors::BadRequest, Errors::FileSystemNotFound, Errors::ServiceLimitExceeded]),
        data_parser: Parsers::DeleteFileSystem
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFileSystem,
        stubs: @stubs,
        params_class: Params::DeleteFileSystemOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_file_system
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Amazon FSx for OpenZFS snapshot. After deletion, the snapshot no longer
    #             exists, and its data is gone. Deleting a snapshot doesn't affect snapshots stored in a
    #             file system backup. </p>
    #         <p>The <code>DeleteSnapshot</code> operation returns instantly. The snapshot appears with
    #             the lifecycle status of <code>DELETING</code> until the deletion is complete.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSnapshotInput}.
    #
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 64
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #
    # @option params [String] :snapshot_id
    #   <p>The ID of the snapshot that you want to delete.</p>
    #
    # @return [Types::DeleteSnapshotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_snapshot(
    #     client_request_token: 'ClientRequestToken',
    #     snapshot_id: 'SnapshotId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSnapshotOutput
    #   resp.data.snapshot_id #=> String
    #   resp.data.lifecycle #=> String, one of ["PENDING", "CREATING", "DELETING", "AVAILABLE"]
    #
    def delete_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSnapshotInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::BadRequest, Errors::SnapshotNotFound]),
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

    # <p>Deletes an existing Amazon FSx for ONTAP storage virtual machine (SVM). Prior
    #         to deleting an SVM, you must delete all non-root volumes in the SVM, otherwise the operation will fail.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteStorageVirtualMachineInput}.
    #
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 64
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #
    # @option params [String] :storage_virtual_machine_id
    #   <p>The ID of the SVM that you want to delete.</p>
    #
    # @return [Types::DeleteStorageVirtualMachineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_storage_virtual_machine(
    #     client_request_token: 'ClientRequestToken',
    #     storage_virtual_machine_id: 'StorageVirtualMachineId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteStorageVirtualMachineOutput
    #   resp.data.storage_virtual_machine_id #=> String
    #   resp.data.lifecycle #=> String, one of ["CREATED", "CREATING", "DELETING", "FAILED", "MISCONFIGURED", "PENDING"]
    #
    def delete_storage_virtual_machine(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteStorageVirtualMachineInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteStorageVirtualMachineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteStorageVirtualMachine
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::IncompatibleParameterError, Errors::StorageVirtualMachineNotFound, Errors::BadRequest]),
        data_parser: Parsers::DeleteStorageVirtualMachine
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteStorageVirtualMachine,
        stubs: @stubs,
        params_class: Params::DeleteStorageVirtualMachineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_storage_virtual_machine
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Amazon FSx for NetApp ONTAP or Amazon FSx for OpenZFS
    #             volume.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteVolumeInput}.
    #
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 64
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #
    # @option params [String] :volume_id
    #   <p>The ID of the volume that you are deleting.</p>
    #
    # @option params [DeleteVolumeOntapConfiguration] :ontap_configuration
    #   <p>For Amazon FSx for ONTAP volumes, specify whether to take a final backup of
    #               the volume and apply tags to the backup. To apply tags to the backup, you must have the
    #                   <code>fsx:TagResource</code> permission.</p>
    #
    # @option params [DeleteVolumeOpenZFSConfiguration] :open_zfs_configuration
    #   <p>For Amazon FSx for OpenZFS volumes, specify whether to delete all child
    #               volumes and snapshots.</p>
    #
    # @return [Types::DeleteVolumeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_volume(
    #     client_request_token: 'ClientRequestToken',
    #     volume_id: 'VolumeId', # required
    #     ontap_configuration: {
    #       skip_final_backup: false,
    #       final_backup_tags: [
    #         {
    #           key: 'Key', # required
    #           value: 'Value' # required
    #         }
    #       ]
    #     },
    #     open_zfs_configuration: {
    #       options: [
    #         'DELETE_CHILD_VOLUMES_AND_SNAPSHOTS' # accepts ["DELETE_CHILD_VOLUMES_AND_SNAPSHOTS"]
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVolumeOutput
    #   resp.data.volume_id #=> String
    #   resp.data.lifecycle #=> String, one of ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"]
    #   resp.data.ontap_response #=> Types::DeleteVolumeOntapResponse
    #   resp.data.ontap_response.final_backup_id #=> String
    #   resp.data.ontap_response.final_backup_tags #=> Array<Tag>
    #   resp.data.ontap_response.final_backup_tags[0] #=> Types::Tag
    #   resp.data.ontap_response.final_backup_tags[0].key #=> String
    #   resp.data.ontap_response.final_backup_tags[0].value #=> String
    #
    def delete_volume(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVolumeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVolumeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVolume
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::IncompatibleParameterError, Errors::VolumeNotFound, Errors::BadRequest]),
        data_parser: Parsers::DeleteVolume
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVolume,
        stubs: @stubs,
        params_class: Params::DeleteVolumeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_volume
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the description of a specific Amazon FSx backup, if a
    #                 <code>BackupIds</code> value is provided for that backup. Otherwise, it returns all
    #             backups owned by your Amazon Web Services account in the Amazon Web Services Region of the
    #             endpoint that you're calling.</p>
    #
    #         <p>When retrieving all backups, you can optionally specify the <code>MaxResults</code>
    #             parameter to limit the number of backups in a response. If more backups remain, Amazon FSx returns a <code>NextToken</code> value in the response. In this case,
    #             send a later request with the <code>NextToken</code> request parameter set to the value
    #             of the <code>NextToken</code> value from the last response.</p>
    #
    #         <p>This operation is used in an iterative process to retrieve a list of your backups.
    #                 <code>DescribeBackups</code> is called first without a <code>NextToken</code> value.
    #             Then the operation continues to be called with the <code>NextToken</code> parameter set
    #             to the value of the last <code>NextToken</code> value until a response has no
    #                 <code>NextToken</code> value.</p>
    #
    #         <p>When using this operation, keep the following in mind:</p>
    #         <ul>
    #             <li>
    #                 <p>The operation might return fewer than the <code>MaxResults</code> value of
    #                     backup descriptions while still including a <code>NextToken</code>
    #                     value.</p>
    #             </li>
    #             <li>
    #                 <p>The order of the backups returned in the response of one
    #                         <code>DescribeBackups</code> call and the order of the backups returned
    #                     across the responses of a multi-call iteration is unspecified.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DescribeBackupsInput}.
    #
    # @option params [Array<String>] :backup_ids
    #   <p>The IDs of the backups that you want to retrieve. This parameter value overrides any
    #               filters. If any IDs aren't found, a <code>BackupNotFound</code> error occurs.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>The filters structure. The supported names are <code>file-system-id</code>,
    #                   <code>backup-type</code>, <code>file-system-type</code>, and
    #               <code>volume-id</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of backups to return in the response. This parameter value must be
    #               greater than 0. The number of items that Amazon FSx returns is the minimum of
    #               the <code>MaxResults</code> parameter specified in the request and the service's
    #               internal maximum number of items per page.</p>
    #
    # @option params [String] :next_token
    #   <p>An opaque pagination token returned from a previous <code>DescribeBackups</code>
    #               operation. If a token is present, the operation continues the list from where the
    #               returning call left off.</p>
    #
    # @return [Types::DescribeBackupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_backups(
    #     backup_ids: [
    #       'member'
    #     ],
    #     filters: [
    #       {
    #         name: 'file-system-id', # accepts ["file-system-id", "backup-type", "file-system-type", "volume-id", "data-repository-type"]
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeBackupsOutput
    #   resp.data.backups #=> Array<Backup>
    #   resp.data.backups[0] #=> Types::Backup
    #   resp.data.backups[0].backup_id #=> String
    #   resp.data.backups[0].lifecycle #=> String, one of ["AVAILABLE", "CREATING", "TRANSFERRING", "DELETED", "FAILED", "PENDING", "COPYING"]
    #   resp.data.backups[0].failure_details #=> Types::BackupFailureDetails
    #   resp.data.backups[0].failure_details.message #=> String
    #   resp.data.backups[0].type #=> String, one of ["AUTOMATIC", "USER_INITIATED", "AWS_BACKUP"]
    #   resp.data.backups[0].progress_percent #=> Integer
    #   resp.data.backups[0].creation_time #=> Time
    #   resp.data.backups[0].kms_key_id #=> String
    #   resp.data.backups[0].resource_arn #=> String
    #   resp.data.backups[0].tags #=> Array<Tag>
    #   resp.data.backups[0].tags[0] #=> Types::Tag
    #   resp.data.backups[0].tags[0].key #=> String
    #   resp.data.backups[0].tags[0].value #=> String
    #   resp.data.backups[0].file_system #=> Types::FileSystem
    #   resp.data.backups[0].file_system.owner_id #=> String
    #   resp.data.backups[0].file_system.creation_time #=> Time
    #   resp.data.backups[0].file_system.file_system_id #=> String
    #   resp.data.backups[0].file_system.file_system_type #=> String, one of ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"]
    #   resp.data.backups[0].file_system.lifecycle #=> String, one of ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"]
    #   resp.data.backups[0].file_system.failure_details #=> Types::FileSystemFailureDetails
    #   resp.data.backups[0].file_system.failure_details.message #=> String
    #   resp.data.backups[0].file_system.storage_capacity #=> Integer
    #   resp.data.backups[0].file_system.storage_type #=> String, one of ["SSD", "HDD"]
    #   resp.data.backups[0].file_system.vpc_id #=> String
    #   resp.data.backups[0].file_system.subnet_ids #=> Array<String>
    #   resp.data.backups[0].file_system.subnet_ids[0] #=> String
    #   resp.data.backups[0].file_system.network_interface_ids #=> Array<String>
    #   resp.data.backups[0].file_system.network_interface_ids[0] #=> String
    #   resp.data.backups[0].file_system.dns_name #=> String
    #   resp.data.backups[0].file_system.kms_key_id #=> String
    #   resp.data.backups[0].file_system.resource_arn #=> String
    #   resp.data.backups[0].file_system.tags #=> Array<Tag>
    #   resp.data.backups[0].file_system.windows_configuration #=> Types::WindowsFileSystemConfiguration
    #   resp.data.backups[0].file_system.windows_configuration.active_directory_id #=> String
    #   resp.data.backups[0].file_system.windows_configuration.self_managed_active_directory_configuration #=> Types::SelfManagedActiveDirectoryAttributes
    #   resp.data.backups[0].file_system.windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.data.backups[0].file_system.windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.data.backups[0].file_system.windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.data.backups[0].file_system.windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.data.backups[0].file_system.windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array<String>
    #   resp.data.backups[0].file_system.windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.data.backups[0].file_system.windows_configuration.deployment_type #=> String, one of ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"]
    #   resp.data.backups[0].file_system.windows_configuration.remote_administration_endpoint #=> String
    #   resp.data.backups[0].file_system.windows_configuration.preferred_subnet_id #=> String
    #   resp.data.backups[0].file_system.windows_configuration.preferred_file_server_ip #=> String
    #   resp.data.backups[0].file_system.windows_configuration.throughput_capacity #=> Integer
    #   resp.data.backups[0].file_system.windows_configuration.maintenance_operations_in_progress #=> Array<String>
    #   resp.data.backups[0].file_system.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of ["PATCHING", "BACKING_UP"]
    #   resp.data.backups[0].file_system.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.backups[0].file_system.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.backups[0].file_system.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.backups[0].file_system.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.backups[0].file_system.windows_configuration.aliases #=> Array<Alias>
    #   resp.data.backups[0].file_system.windows_configuration.aliases[0] #=> Types::Alias
    #   resp.data.backups[0].file_system.windows_configuration.aliases[0].name #=> String
    #   resp.data.backups[0].file_system.windows_configuration.aliases[0].lifecycle #=> String, one of ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #   resp.data.backups[0].file_system.windows_configuration.audit_log_configuration #=> Types::WindowsAuditLogConfiguration
    #   resp.data.backups[0].file_system.windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #   resp.data.backups[0].file_system.windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #   resp.data.backups[0].file_system.windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.data.backups[0].file_system.lustre_configuration #=> Types::LustreFileSystemConfiguration
    #   resp.data.backups[0].file_system.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.backups[0].file_system.lustre_configuration.data_repository_configuration #=> Types::DataRepositoryConfiguration
    #   resp.data.backups[0].file_system.lustre_configuration.data_repository_configuration.lifecycle #=> String, one of ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"]
    #   resp.data.backups[0].file_system.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.data.backups[0].file_system.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.data.backups[0].file_system.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.data.backups[0].file_system.lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"]
    #   resp.data.backups[0].file_system.lustre_configuration.data_repository_configuration.failure_details #=> Types::DataRepositoryFailureDetails
    #   resp.data.backups[0].file_system.lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.data.backups[0].file_system.lustre_configuration.deployment_type #=> String, one of ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"]
    #   resp.data.backups[0].file_system.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.data.backups[0].file_system.lustre_configuration.mount_name #=> String
    #   resp.data.backups[0].file_system.lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.backups[0].file_system.lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.backups[0].file_system.lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.backups[0].file_system.lustre_configuration.drive_cache_type #=> String, one of ["NONE", "READ"]
    #   resp.data.backups[0].file_system.lustre_configuration.data_compression_type #=> String, one of ["NONE", "LZ4"]
    #   resp.data.backups[0].file_system.lustre_configuration.log_configuration #=> Types::LustreLogConfiguration
    #   resp.data.backups[0].file_system.lustre_configuration.log_configuration.level #=> String, one of ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"]
    #   resp.data.backups[0].file_system.lustre_configuration.log_configuration.destination #=> String
    #   resp.data.backups[0].file_system.lustre_configuration.root_squash_configuration #=> Types::LustreRootSquashConfiguration
    #   resp.data.backups[0].file_system.lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.data.backups[0].file_system.lustre_configuration.root_squash_configuration.no_squash_nids #=> Array<String>
    #   resp.data.backups[0].file_system.lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.data.backups[0].file_system.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.backups[0].file_system.administrative_actions[0] #=> Types::AdministrativeAction
    #   resp.data.backups[0].file_system.administrative_actions[0].administrative_action_type #=> String, one of ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS"]
    #   resp.data.backups[0].file_system.administrative_actions[0].progress_percent #=> Integer
    #   resp.data.backups[0].file_system.administrative_actions[0].request_time #=> Time
    #   resp.data.backups[0].file_system.administrative_actions[0].status #=> String, one of ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"]
    #   resp.data.backups[0].file_system.administrative_actions[0].target_file_system_values #=> Types::FileSystem
    #   resp.data.backups[0].file_system.administrative_actions[0].failure_details #=> Types::AdministrativeActionFailureDetails
    #   resp.data.backups[0].file_system.administrative_actions[0].failure_details.message #=> String
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values #=> Types::Volume
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.creation_time #=> Time
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.file_system_id #=> String
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.lifecycle #=> String, one of ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"]
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.name #=> String
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration #=> Types::OntapVolumeConfiguration
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.flex_cache_endpoint_type #=> String, one of ["NONE", "ORIGIN", "CACHE"]
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.junction_path #=> String
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.security_style #=> String, one of ["UNIX", "NTFS", "MIXED"]
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.size_in_megabytes #=> Integer
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy #=> Types::TieringPolicy
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.name #=> String, one of ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.uuid #=> String
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.ontap_configuration.ontap_volume_type #=> String, one of ["RW", "DP", "LS"]
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.resource_arn #=> String
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.tags #=> Array<Tag>
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.volume_id #=> String
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.volume_type #=> String, one of ["ONTAP", "OPENZFS"]
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.lifecycle_transition_reason #=> Types::LifecycleTransitionReason
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.lifecycle_transition_reason.message #=> String
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration #=> Types::OpenZFSVolumeConfiguration
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.parent_volume_id #=> String
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.volume_path #=> String
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.data_compression_type #=> String, one of ["NONE", "ZSTD", "LZ4"]
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot #=> Types::OpenZFSOriginSnapshotConfiguration
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of ["CLONE", "FULL_COPY"]
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.read_only #=> Boolean
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports #=> Array<OpenZFSNfsExport>
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0] #=> Types::OpenZFSNfsExport
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations #=> Array<OpenZFSClientConfiguration>
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0] #=> Types::OpenZFSClientConfiguration
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array<String>
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas #=> Array<OpenZFSUserOrGroupQuota>
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0] #=> Types::OpenZFSUserOrGroupQuota
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of ["USER", "GROUP"]
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.data.backups[0].file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #   resp.data.backups[0].file_system.administrative_actions[0].target_snapshot_values #=> Types::Snapshot
    #   resp.data.backups[0].file_system.administrative_actions[0].target_snapshot_values.resource_arn #=> String
    #   resp.data.backups[0].file_system.administrative_actions[0].target_snapshot_values.snapshot_id #=> String
    #   resp.data.backups[0].file_system.administrative_actions[0].target_snapshot_values.name #=> String
    #   resp.data.backups[0].file_system.administrative_actions[0].target_snapshot_values.volume_id #=> String
    #   resp.data.backups[0].file_system.administrative_actions[0].target_snapshot_values.creation_time #=> Time
    #   resp.data.backups[0].file_system.administrative_actions[0].target_snapshot_values.lifecycle #=> String, one of ["PENDING", "CREATING", "DELETING", "AVAILABLE"]
    #   resp.data.backups[0].file_system.administrative_actions[0].target_snapshot_values.lifecycle_transition_reason #=> Types::LifecycleTransitionReason
    #   resp.data.backups[0].file_system.administrative_actions[0].target_snapshot_values.tags #=> Array<Tag>
    #   resp.data.backups[0].file_system.administrative_actions[0].target_snapshot_values.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.backups[0].file_system.ontap_configuration #=> Types::OntapFileSystemConfiguration
    #   resp.data.backups[0].file_system.ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.backups[0].file_system.ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.backups[0].file_system.ontap_configuration.deployment_type #=> String, one of ["MULTI_AZ_1", "SINGLE_AZ_1"]
    #   resp.data.backups[0].file_system.ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.data.backups[0].file_system.ontap_configuration.endpoints #=> Types::FileSystemEndpoints
    #   resp.data.backups[0].file_system.ontap_configuration.endpoints.intercluster #=> Types::FileSystemEndpoint
    #   resp.data.backups[0].file_system.ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.data.backups[0].file_system.ontap_configuration.endpoints.intercluster.ip_addresses #=> Array<String>
    #   resp.data.backups[0].file_system.ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.data.backups[0].file_system.ontap_configuration.endpoints.management #=> Types::FileSystemEndpoint
    #   resp.data.backups[0].file_system.ontap_configuration.disk_iops_configuration #=> Types::DiskIopsConfiguration
    #   resp.data.backups[0].file_system.ontap_configuration.disk_iops_configuration.mode #=> String, one of ["AUTOMATIC", "USER_PROVISIONED"]
    #   resp.data.backups[0].file_system.ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.data.backups[0].file_system.ontap_configuration.preferred_subnet_id #=> String
    #   resp.data.backups[0].file_system.ontap_configuration.route_table_ids #=> Array<String>
    #   resp.data.backups[0].file_system.ontap_configuration.route_table_ids[0] #=> String
    #   resp.data.backups[0].file_system.ontap_configuration.throughput_capacity #=> Integer
    #   resp.data.backups[0].file_system.ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.backups[0].file_system.file_system_type_version #=> String
    #   resp.data.backups[0].file_system.open_zfs_configuration #=> Types::OpenZFSFileSystemConfiguration
    #   resp.data.backups[0].file_system.open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.backups[0].file_system.open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.backups[0].file_system.open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.data.backups[0].file_system.open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.backups[0].file_system.open_zfs_configuration.deployment_type #=> String, one of ["SINGLE_AZ_1"]
    #   resp.data.backups[0].file_system.open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.data.backups[0].file_system.open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.backups[0].file_system.open_zfs_configuration.disk_iops_configuration #=> Types::DiskIopsConfiguration
    #   resp.data.backups[0].file_system.open_zfs_configuration.root_volume_id #=> String
    #   resp.data.backups[0].directory_information #=> Types::ActiveDirectoryBackupAttributes
    #   resp.data.backups[0].directory_information.domain_name #=> String
    #   resp.data.backups[0].directory_information.active_directory_id #=> String
    #   resp.data.backups[0].directory_information.resource_arn #=> String
    #   resp.data.backups[0].owner_id #=> String
    #   resp.data.backups[0].source_backup_id #=> String
    #   resp.data.backups[0].source_backup_region #=> String
    #   resp.data.backups[0].resource_type #=> String, one of ["FILE_SYSTEM", "VOLUME"]
    #   resp.data.backups[0].volume #=> Types::Volume
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::VolumeNotFound, Errors::BadRequest, Errors::FileSystemNotFound, Errors::BackupNotFound]),
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

    # <p>Returns the description of specific Amazon FSx for Lustre data repository associations, if
    #             one or more <code>AssociationIds</code> values are provided in the request, or if filters are
    #             used in the request. Data repository associations are supported only
    #             for file systems with the <code>Persistent_2</code> deployment type.</p>
    #
    #         <p>You can use filters to narrow the response to include just data repository
    #             associations for specific file systems (use the <code>file-system-id</code> filter with
    #             the ID of the file system) or data repository associations for a specific repository type
    #             (use the <code>data-repository-type</code> filter with a value of <code>S3</code>).
    #             If you don't use filters, the response returns all data repository associations
    #             owned by your Amazon Web Services account in the Amazon Web Services Region of the endpoint
    #             that you're calling.</p>
    #
    #         <p>When retrieving all data repository associations, you can paginate the response by using
    #             the optional <code>MaxResults</code> parameter to limit the number of data repository associations
    #             returned in a response. If more data repository associations remain, Amazon FSx returns a
    #             <code>NextToken</code> value in the response. In this case, send a later
    #             request with the <code>NextToken</code> request parameter set to the value of
    #             <code>NextToken</code> from the last response.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDataRepositoryAssociationsInput}.
    #
    # @option params [Array<String>] :association_ids
    #   <p>IDs of the data repository associations whose descriptions you want to retrieve
    #               (String).</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>A list of <code>Filter</code> elements.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of resources to return in the response. This value must be
    #               an integer greater than zero.</p>
    #
    # @option params [String] :next_token
    #   <p>(Optional) Opaque pagination token returned from a previous operation (String). If
    #               present, this token indicates from what point you can continue processing the request, where
    #               the previous <code>NextToken</code> value left off.</p>
    #
    # @return [Types::DescribeDataRepositoryAssociationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_data_repository_associations(
    #     association_ids: [
    #       'member'
    #     ],
    #     filters: [
    #       {
    #         name: 'file-system-id', # accepts ["file-system-id", "backup-type", "file-system-type", "volume-id", "data-repository-type"]
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDataRepositoryAssociationsOutput
    #   resp.data.associations #=> Array<DataRepositoryAssociation>
    #   resp.data.associations[0] #=> Types::DataRepositoryAssociation
    #   resp.data.associations[0].association_id #=> String
    #   resp.data.associations[0].resource_arn #=> String
    #   resp.data.associations[0].file_system_id #=> String
    #   resp.data.associations[0].lifecycle #=> String, one of ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"]
    #   resp.data.associations[0].failure_details #=> Types::DataRepositoryFailureDetails
    #   resp.data.associations[0].failure_details.message #=> String
    #   resp.data.associations[0].file_system_path #=> String
    #   resp.data.associations[0].data_repository_path #=> String
    #   resp.data.associations[0].batch_import_meta_data_on_create #=> Boolean
    #   resp.data.associations[0].imported_file_chunk_size #=> Integer
    #   resp.data.associations[0].s3 #=> Types::S3DataRepositoryConfiguration
    #   resp.data.associations[0].s3.auto_import_policy #=> Types::AutoImportPolicy
    #   resp.data.associations[0].s3.auto_import_policy.events #=> Array<String>
    #   resp.data.associations[0].s3.auto_import_policy.events[0] #=> String, one of ["NEW", "CHANGED", "DELETED"]
    #   resp.data.associations[0].s3.auto_export_policy #=> Types::AutoExportPolicy
    #   resp.data.associations[0].s3.auto_export_policy.events #=> Array<String>
    #   resp.data.associations[0].tags #=> Array<Tag>
    #   resp.data.associations[0].tags[0] #=> Types::Tag
    #   resp.data.associations[0].tags[0].key #=> String
    #   resp.data.associations[0].tags[0].value #=> String
    #   resp.data.associations[0].creation_time #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_data_repository_associations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDataRepositoryAssociationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDataRepositoryAssociationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDataRepositoryAssociations
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::BadRequest, Errors::FileSystemNotFound, Errors::DataRepositoryAssociationNotFound, Errors::InvalidDataRepositoryType]),
        data_parser: Parsers::DescribeDataRepositoryAssociations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDataRepositoryAssociations,
        stubs: @stubs,
        params_class: Params::DescribeDataRepositoryAssociationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_data_repository_associations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the description of specific Amazon FSx for Lustre data repository tasks, if
    #             one or more <code>TaskIds</code> values are provided in the request, or if filters are used in the request.
    #             You can use filters to narrow the response to include just tasks for specific file systems,
    #             or tasks in a specific lifecycle state. Otherwise, it returns all data repository tasks owned
    #             by your Amazon Web Services account in the Amazon Web Services Region of the endpoint that you're calling.</p>
    #
    #         <p>When retrieving all tasks, you can paginate the response by using  the optional <code>MaxResults</code>
    #             parameter to limit the number of tasks returned in a response. If more tasks remain, Amazon
    #             FSx returns a <code>NextToken</code> value in the response. In this case, send a later
    #             request with the <code>NextToken</code> request parameter set to the value of
    #             <code>NextToken</code> from the last response.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDataRepositoryTasksInput}.
    #
    # @option params [Array<String>] :task_ids
    #   <p>(Optional) IDs of the tasks whose descriptions you want to retrieve
    #               (String).</p>
    #
    # @option params [Array<DataRepositoryTaskFilter>] :filters
    #   <p>(Optional) You can use filters to narrow the <code>DescribeDataRepositoryTasks</code> response to
    #               include just tasks for specific file systems, or tasks in a specific lifecycle state.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of resources to return in the response. This value must be an
    #               integer greater than zero.</p>
    #
    # @option params [String] :next_token
    #   <p>(Optional) Opaque pagination token returned from a previous operation (String). If
    #               present, this token indicates from what point you can continue processing the request, where
    #               the previous <code>NextToken</code> value left off.</p>
    #
    # @return [Types::DescribeDataRepositoryTasksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_data_repository_tasks(
    #     task_ids: [
    #       'member'
    #     ],
    #     filters: [
    #       {
    #         name: 'file-system-id', # accepts ["file-system-id", "task-lifecycle", "data-repository-association-id"]
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDataRepositoryTasksOutput
    #   resp.data.data_repository_tasks #=> Array<DataRepositoryTask>
    #   resp.data.data_repository_tasks[0] #=> Types::DataRepositoryTask
    #   resp.data.data_repository_tasks[0].task_id #=> String
    #   resp.data.data_repository_tasks[0].lifecycle #=> String, one of ["PENDING", "EXECUTING", "FAILED", "SUCCEEDED", "CANCELED", "CANCELING"]
    #   resp.data.data_repository_tasks[0].type #=> String, one of ["EXPORT_TO_REPOSITORY", "IMPORT_METADATA_FROM_REPOSITORY"]
    #   resp.data.data_repository_tasks[0].creation_time #=> Time
    #   resp.data.data_repository_tasks[0].start_time #=> Time
    #   resp.data.data_repository_tasks[0].end_time #=> Time
    #   resp.data.data_repository_tasks[0].resource_arn #=> String
    #   resp.data.data_repository_tasks[0].tags #=> Array<Tag>
    #   resp.data.data_repository_tasks[0].tags[0] #=> Types::Tag
    #   resp.data.data_repository_tasks[0].tags[0].key #=> String
    #   resp.data.data_repository_tasks[0].tags[0].value #=> String
    #   resp.data.data_repository_tasks[0].file_system_id #=> String
    #   resp.data.data_repository_tasks[0].paths #=> Array<String>
    #   resp.data.data_repository_tasks[0].paths[0] #=> String
    #   resp.data.data_repository_tasks[0].failure_details #=> Types::DataRepositoryTaskFailureDetails
    #   resp.data.data_repository_tasks[0].failure_details.message #=> String
    #   resp.data.data_repository_tasks[0].status #=> Types::DataRepositoryTaskStatus
    #   resp.data.data_repository_tasks[0].status.total_count #=> Integer
    #   resp.data.data_repository_tasks[0].status.succeeded_count #=> Integer
    #   resp.data.data_repository_tasks[0].status.failed_count #=> Integer
    #   resp.data.data_repository_tasks[0].status.last_updated_time #=> Time
    #   resp.data.data_repository_tasks[0].report #=> Types::CompletionReport
    #   resp.data.data_repository_tasks[0].report.enabled #=> Boolean
    #   resp.data.data_repository_tasks[0].report.path #=> String
    #   resp.data.data_repository_tasks[0].report.format #=> String, one of ["REPORT_CSV_20191124"]
    #   resp.data.data_repository_tasks[0].report.scope #=> String, one of ["FAILED_FILES_ONLY"]
    #   resp.data.next_token #=> String
    #
    def describe_data_repository_tasks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDataRepositoryTasksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDataRepositoryTasksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDataRepositoryTasks
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::DataRepositoryTaskNotFound, Errors::BadRequest, Errors::FileSystemNotFound]),
        data_parser: Parsers::DescribeDataRepositoryTasks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDataRepositoryTasks,
        stubs: @stubs,
        params_class: Params::DescribeDataRepositoryTasksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_data_repository_tasks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the DNS aliases that are associated with the specified Amazon FSx for Windows File Server file system. A history of
    #             all DNS aliases that have been associated with and disassociated from the file system is available in the list of <a>AdministrativeAction</a>
    #         provided in the <a>DescribeFileSystems</a> operation response.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFileSystemAliasesInput}.
    #
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 64
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #
    # @option params [String] :file_system_id
    #   <p>The ID of the file system to return the associated DNS aliases for
    #               (String).</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of DNS aliases to return in the response (integer). This
    #               parameter value must be greater than 0. The number of items that Amazon FSx returns is
    #               the minimum of the <code>MaxResults</code> parameter specified in the request and the
    #               service's internal maximum number of items per page.</p>
    #
    # @option params [String] :next_token
    #   <p>Opaque pagination token returned from a previous
    #                   <code>DescribeFileSystemAliases</code> operation (String). If a token is included in the request, the action
    #               continues the list from where the previous returning call left off.</p>
    #
    # @return [Types::DescribeFileSystemAliasesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_file_system_aliases(
    #     client_request_token: 'ClientRequestToken',
    #     file_system_id: 'FileSystemId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFileSystemAliasesOutput
    #   resp.data.aliases #=> Array<Alias>
    #   resp.data.aliases[0] #=> Types::Alias
    #   resp.data.aliases[0].name #=> String
    #   resp.data.aliases[0].lifecycle #=> String, one of ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #   resp.data.next_token #=> String
    #
    def describe_file_system_aliases(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFileSystemAliasesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFileSystemAliasesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFileSystemAliases
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::BadRequest, Errors::FileSystemNotFound]),
        data_parser: Parsers::DescribeFileSystemAliases
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFileSystemAliases,
        stubs: @stubs,
        params_class: Params::DescribeFileSystemAliasesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_file_system_aliases
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the description of specific Amazon FSx file systems, if a
    #                 <code>FileSystemIds</code> value is provided for that file system. Otherwise, it
    #             returns descriptions of all file systems owned by your Amazon Web Services account in the
    #                 Amazon Web Services Region of the endpoint that you're calling.</p>
    #
    #         <p>When retrieving all file system descriptions, you can optionally specify the
    #                 <code>MaxResults</code> parameter to limit the number of descriptions in a response.
    #             If more file system descriptions remain, Amazon FSx returns a
    #                 <code>NextToken</code> value in the response. In this case, send a later request
    #             with the <code>NextToken</code> request parameter set to the value of
    #                 <code>NextToken</code> from the last response.</p>
    #
    #         <p>This operation is used in an iterative process to retrieve a list of your file system
    #             descriptions. <code>DescribeFileSystems</code> is called first without a
    #                 <code>NextToken</code>value. Then the operation continues to be called with the
    #                 <code>NextToken</code> parameter set to the value of the last <code>NextToken</code>
    #             value until a response has no <code>NextToken</code>.</p>
    #
    #         <p>When using this operation, keep the following in mind:</p>
    #         <ul>
    #             <li>
    #                 <p>The implementation might return fewer than <code>MaxResults</code> file
    #                     system descriptions while still including a <code>NextToken</code>
    #                     value.</p>
    #
    #             </li>
    #             <li>
    #                 <p>The order of file systems returned in the response of one
    #                         <code>DescribeFileSystems</code> call and the order of file systems returned
    #                     across the responses of a multicall iteration is unspecified.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DescribeFileSystemsInput}.
    #
    # @option params [Array<String>] :file_system_ids
    #   <p>IDs of the file systems whose descriptions you want to retrieve
    #               (String).</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of file systems to return in the response (integer). This
    #               parameter value must be greater than 0. The number of items that Amazon FSx returns is
    #               the minimum of the <code>MaxResults</code> parameter specified in the request and the
    #               service's internal maximum number of items per page.</p>
    #
    # @option params [String] :next_token
    #   <p>Opaque pagination token returned from a previous <code>DescribeFileSystems</code>
    #               operation (String). If a token present, the operation continues the list from where the
    #               returning call left off.</p>
    #
    # @return [Types::DescribeFileSystemsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_file_systems(
    #     file_system_ids: [
    #       'member'
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFileSystemsOutput
    #   resp.data.file_systems #=> Array<FileSystem>
    #   resp.data.file_systems[0] #=> Types::FileSystem
    #   resp.data.file_systems[0].owner_id #=> String
    #   resp.data.file_systems[0].creation_time #=> Time
    #   resp.data.file_systems[0].file_system_id #=> String
    #   resp.data.file_systems[0].file_system_type #=> String, one of ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"]
    #   resp.data.file_systems[0].lifecycle #=> String, one of ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"]
    #   resp.data.file_systems[0].failure_details #=> Types::FileSystemFailureDetails
    #   resp.data.file_systems[0].failure_details.message #=> String
    #   resp.data.file_systems[0].storage_capacity #=> Integer
    #   resp.data.file_systems[0].storage_type #=> String, one of ["SSD", "HDD"]
    #   resp.data.file_systems[0].vpc_id #=> String
    #   resp.data.file_systems[0].subnet_ids #=> Array<String>
    #   resp.data.file_systems[0].subnet_ids[0] #=> String
    #   resp.data.file_systems[0].network_interface_ids #=> Array<String>
    #   resp.data.file_systems[0].network_interface_ids[0] #=> String
    #   resp.data.file_systems[0].dns_name #=> String
    #   resp.data.file_systems[0].kms_key_id #=> String
    #   resp.data.file_systems[0].resource_arn #=> String
    #   resp.data.file_systems[0].tags #=> Array<Tag>
    #   resp.data.file_systems[0].tags[0] #=> Types::Tag
    #   resp.data.file_systems[0].tags[0].key #=> String
    #   resp.data.file_systems[0].tags[0].value #=> String
    #   resp.data.file_systems[0].windows_configuration #=> Types::WindowsFileSystemConfiguration
    #   resp.data.file_systems[0].windows_configuration.active_directory_id #=> String
    #   resp.data.file_systems[0].windows_configuration.self_managed_active_directory_configuration #=> Types::SelfManagedActiveDirectoryAttributes
    #   resp.data.file_systems[0].windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.data.file_systems[0].windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.data.file_systems[0].windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.data.file_systems[0].windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.data.file_systems[0].windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array<String>
    #   resp.data.file_systems[0].windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.data.file_systems[0].windows_configuration.deployment_type #=> String, one of ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"]
    #   resp.data.file_systems[0].windows_configuration.remote_administration_endpoint #=> String
    #   resp.data.file_systems[0].windows_configuration.preferred_subnet_id #=> String
    #   resp.data.file_systems[0].windows_configuration.preferred_file_server_ip #=> String
    #   resp.data.file_systems[0].windows_configuration.throughput_capacity #=> Integer
    #   resp.data.file_systems[0].windows_configuration.maintenance_operations_in_progress #=> Array<String>
    #   resp.data.file_systems[0].windows_configuration.maintenance_operations_in_progress[0] #=> String, one of ["PATCHING", "BACKING_UP"]
    #   resp.data.file_systems[0].windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.file_systems[0].windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.file_systems[0].windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.file_systems[0].windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.file_systems[0].windows_configuration.aliases #=> Array<Alias>
    #   resp.data.file_systems[0].windows_configuration.aliases[0] #=> Types::Alias
    #   resp.data.file_systems[0].windows_configuration.aliases[0].name #=> String
    #   resp.data.file_systems[0].windows_configuration.aliases[0].lifecycle #=> String, one of ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #   resp.data.file_systems[0].windows_configuration.audit_log_configuration #=> Types::WindowsAuditLogConfiguration
    #   resp.data.file_systems[0].windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #   resp.data.file_systems[0].windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #   resp.data.file_systems[0].windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.data.file_systems[0].lustre_configuration #=> Types::LustreFileSystemConfiguration
    #   resp.data.file_systems[0].lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.file_systems[0].lustre_configuration.data_repository_configuration #=> Types::DataRepositoryConfiguration
    #   resp.data.file_systems[0].lustre_configuration.data_repository_configuration.lifecycle #=> String, one of ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"]
    #   resp.data.file_systems[0].lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.data.file_systems[0].lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.data.file_systems[0].lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.data.file_systems[0].lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"]
    #   resp.data.file_systems[0].lustre_configuration.data_repository_configuration.failure_details #=> Types::DataRepositoryFailureDetails
    #   resp.data.file_systems[0].lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.data.file_systems[0].lustre_configuration.deployment_type #=> String, one of ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"]
    #   resp.data.file_systems[0].lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.data.file_systems[0].lustre_configuration.mount_name #=> String
    #   resp.data.file_systems[0].lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.file_systems[0].lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.file_systems[0].lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.file_systems[0].lustre_configuration.drive_cache_type #=> String, one of ["NONE", "READ"]
    #   resp.data.file_systems[0].lustre_configuration.data_compression_type #=> String, one of ["NONE", "LZ4"]
    #   resp.data.file_systems[0].lustre_configuration.log_configuration #=> Types::LustreLogConfiguration
    #   resp.data.file_systems[0].lustre_configuration.log_configuration.level #=> String, one of ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"]
    #   resp.data.file_systems[0].lustre_configuration.log_configuration.destination #=> String
    #   resp.data.file_systems[0].lustre_configuration.root_squash_configuration #=> Types::LustreRootSquashConfiguration
    #   resp.data.file_systems[0].lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.data.file_systems[0].lustre_configuration.root_squash_configuration.no_squash_nids #=> Array<String>
    #   resp.data.file_systems[0].lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.data.file_systems[0].administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.file_systems[0].administrative_actions[0] #=> Types::AdministrativeAction
    #   resp.data.file_systems[0].administrative_actions[0].administrative_action_type #=> String, one of ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS"]
    #   resp.data.file_systems[0].administrative_actions[0].progress_percent #=> Integer
    #   resp.data.file_systems[0].administrative_actions[0].request_time #=> Time
    #   resp.data.file_systems[0].administrative_actions[0].status #=> String, one of ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"]
    #   resp.data.file_systems[0].administrative_actions[0].target_file_system_values #=> Types::FileSystem
    #   resp.data.file_systems[0].administrative_actions[0].failure_details #=> Types::AdministrativeActionFailureDetails
    #   resp.data.file_systems[0].administrative_actions[0].failure_details.message #=> String
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values #=> Types::Volume
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.creation_time #=> Time
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.file_system_id #=> String
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.lifecycle #=> String, one of ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"]
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.name #=> String
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration #=> Types::OntapVolumeConfiguration
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.flex_cache_endpoint_type #=> String, one of ["NONE", "ORIGIN", "CACHE"]
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.junction_path #=> String
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.security_style #=> String, one of ["UNIX", "NTFS", "MIXED"]
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.size_in_megabytes #=> Integer
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy #=> Types::TieringPolicy
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.name #=> String, one of ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.uuid #=> String
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.ontap_configuration.ontap_volume_type #=> String, one of ["RW", "DP", "LS"]
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.resource_arn #=> String
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.tags #=> Array<Tag>
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.volume_id #=> String
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.volume_type #=> String, one of ["ONTAP", "OPENZFS"]
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.lifecycle_transition_reason #=> Types::LifecycleTransitionReason
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.lifecycle_transition_reason.message #=> String
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration #=> Types::OpenZFSVolumeConfiguration
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.parent_volume_id #=> String
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.volume_path #=> String
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.data_compression_type #=> String, one of ["NONE", "ZSTD", "LZ4"]
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot #=> Types::OpenZFSOriginSnapshotConfiguration
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of ["CLONE", "FULL_COPY"]
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.read_only #=> Boolean
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports #=> Array<OpenZFSNfsExport>
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0] #=> Types::OpenZFSNfsExport
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations #=> Array<OpenZFSClientConfiguration>
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0] #=> Types::OpenZFSClientConfiguration
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array<String>
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas #=> Array<OpenZFSUserOrGroupQuota>
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0] #=> Types::OpenZFSUserOrGroupQuota
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of ["USER", "GROUP"]
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.data.file_systems[0].administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #   resp.data.file_systems[0].administrative_actions[0].target_snapshot_values #=> Types::Snapshot
    #   resp.data.file_systems[0].administrative_actions[0].target_snapshot_values.resource_arn #=> String
    #   resp.data.file_systems[0].administrative_actions[0].target_snapshot_values.snapshot_id #=> String
    #   resp.data.file_systems[0].administrative_actions[0].target_snapshot_values.name #=> String
    #   resp.data.file_systems[0].administrative_actions[0].target_snapshot_values.volume_id #=> String
    #   resp.data.file_systems[0].administrative_actions[0].target_snapshot_values.creation_time #=> Time
    #   resp.data.file_systems[0].administrative_actions[0].target_snapshot_values.lifecycle #=> String, one of ["PENDING", "CREATING", "DELETING", "AVAILABLE"]
    #   resp.data.file_systems[0].administrative_actions[0].target_snapshot_values.lifecycle_transition_reason #=> Types::LifecycleTransitionReason
    #   resp.data.file_systems[0].administrative_actions[0].target_snapshot_values.tags #=> Array<Tag>
    #   resp.data.file_systems[0].administrative_actions[0].target_snapshot_values.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.file_systems[0].ontap_configuration #=> Types::OntapFileSystemConfiguration
    #   resp.data.file_systems[0].ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.file_systems[0].ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.file_systems[0].ontap_configuration.deployment_type #=> String, one of ["MULTI_AZ_1", "SINGLE_AZ_1"]
    #   resp.data.file_systems[0].ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.data.file_systems[0].ontap_configuration.endpoints #=> Types::FileSystemEndpoints
    #   resp.data.file_systems[0].ontap_configuration.endpoints.intercluster #=> Types::FileSystemEndpoint
    #   resp.data.file_systems[0].ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.data.file_systems[0].ontap_configuration.endpoints.intercluster.ip_addresses #=> Array<String>
    #   resp.data.file_systems[0].ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.data.file_systems[0].ontap_configuration.endpoints.management #=> Types::FileSystemEndpoint
    #   resp.data.file_systems[0].ontap_configuration.disk_iops_configuration #=> Types::DiskIopsConfiguration
    #   resp.data.file_systems[0].ontap_configuration.disk_iops_configuration.mode #=> String, one of ["AUTOMATIC", "USER_PROVISIONED"]
    #   resp.data.file_systems[0].ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.data.file_systems[0].ontap_configuration.preferred_subnet_id #=> String
    #   resp.data.file_systems[0].ontap_configuration.route_table_ids #=> Array<String>
    #   resp.data.file_systems[0].ontap_configuration.route_table_ids[0] #=> String
    #   resp.data.file_systems[0].ontap_configuration.throughput_capacity #=> Integer
    #   resp.data.file_systems[0].ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.file_systems[0].file_system_type_version #=> String
    #   resp.data.file_systems[0].open_zfs_configuration #=> Types::OpenZFSFileSystemConfiguration
    #   resp.data.file_systems[0].open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.file_systems[0].open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.file_systems[0].open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.data.file_systems[0].open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.file_systems[0].open_zfs_configuration.deployment_type #=> String, one of ["SINGLE_AZ_1"]
    #   resp.data.file_systems[0].open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.data.file_systems[0].open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.file_systems[0].open_zfs_configuration.disk_iops_configuration #=> Types::DiskIopsConfiguration
    #   resp.data.file_systems[0].open_zfs_configuration.root_volume_id #=> String
    #   resp.data.next_token #=> String
    #
    def describe_file_systems(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFileSystemsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFileSystemsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFileSystems
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::BadRequest, Errors::FileSystemNotFound]),
        data_parser: Parsers::DescribeFileSystems
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFileSystems,
        stubs: @stubs,
        params_class: Params::DescribeFileSystemsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_file_systems
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the description of specific Amazon FSx for OpenZFS snapshots, if a
    #                 <code>SnapshotIds</code> value is provided. Otherwise, this operation returns all
    #             snapshots owned by your Amazon Web Services account in the Amazon Web Services Region of
    #             the endpoint that you're calling.</p>
    #         <p>When retrieving all snapshots, you can optionally specify the <code>MaxResults</code>
    #             parameter to limit the number of snapshots in a response. If more backups remain,
    #                 Amazon FSx returns a <code>NextToken</code> value in the response. In this
    #             case, send a later request with the <code>NextToken</code> request parameter set to the
    #             value of <code>NextToken</code> from the last response. </p>
    #         <p>Use this operation in an iterative process to retrieve a list of your snapshots.
    #                 <code>DescribeSnapshots</code> is called first without a <code>NextToken</code>
    #             value. Then the operation continues to be called with the <code>NextToken</code>
    #             parameter set to the value of the last <code>NextToken</code> value until a response has
    #             no <code>NextToken</code> value.</p>
    #         <p>When using this operation, keep the following in mind:</p>
    #         <ul>
    #             <li>
    #                 <p>The operation might return fewer than the <code>MaxResults</code> value of
    #                     snapshot descriptions while still including a <code>NextToken</code>
    #                     value.</p>
    #             </li>
    #             <li>
    #                 <p>The order of snapshots returned in the response of one
    #                         <code>DescribeSnapshots</code> call and the order of backups returned across
    #                     the responses of a multi-call iteration is unspecified. </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DescribeSnapshotsInput}.
    #
    # @option params [Array<String>] :snapshot_ids
    #   <p>The IDs of the snapshots that you want to retrieve. This parameter value overrides any
    #               filters. If any IDs aren't found, a <code>SnapshotNotFound</code> error occurs.</p>
    #
    # @option params [Array<SnapshotFilter>] :filters
    #   <p>The filters structure. The supported names are <code>file-system-id</code> or
    #                   <code>volume-id</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of resources to return in the response. This value must be an
    #               integer greater than zero.</p>
    #
    # @option params [String] :next_token
    #   <p>(Optional) Opaque pagination token returned from a previous operation (String). If
    #               present, this token indicates from what point you can continue processing the request, where
    #               the previous <code>NextToken</code> value left off.</p>
    #
    # @return [Types::DescribeSnapshotsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_snapshots(
    #     snapshot_ids: [
    #       'member'
    #     ],
    #     filters: [
    #       {
    #         name: 'file-system-id', # accepts ["file-system-id", "volume-id"]
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeSnapshotsOutput
    #   resp.data.snapshots #=> Array<Snapshot>
    #   resp.data.snapshots[0] #=> Types::Snapshot
    #   resp.data.snapshots[0].resource_arn #=> String
    #   resp.data.snapshots[0].snapshot_id #=> String
    #   resp.data.snapshots[0].name #=> String
    #   resp.data.snapshots[0].volume_id #=> String
    #   resp.data.snapshots[0].creation_time #=> Time
    #   resp.data.snapshots[0].lifecycle #=> String, one of ["PENDING", "CREATING", "DELETING", "AVAILABLE"]
    #   resp.data.snapshots[0].lifecycle_transition_reason #=> Types::LifecycleTransitionReason
    #   resp.data.snapshots[0].lifecycle_transition_reason.message #=> String
    #   resp.data.snapshots[0].tags #=> Array<Tag>
    #   resp.data.snapshots[0].tags[0] #=> Types::Tag
    #   resp.data.snapshots[0].tags[0].key #=> String
    #   resp.data.snapshots[0].tags[0].value #=> String
    #   resp.data.snapshots[0].administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.snapshots[0].administrative_actions[0] #=> Types::AdministrativeAction
    #   resp.data.snapshots[0].administrative_actions[0].administrative_action_type #=> String, one of ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS"]
    #   resp.data.snapshots[0].administrative_actions[0].progress_percent #=> Integer
    #   resp.data.snapshots[0].administrative_actions[0].request_time #=> Time
    #   resp.data.snapshots[0].administrative_actions[0].status #=> String, one of ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"]
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values #=> Types::FileSystem
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.owner_id #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.creation_time #=> Time
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.file_system_id #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.file_system_type #=> String, one of ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"]
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.lifecycle #=> String, one of ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"]
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.failure_details #=> Types::FileSystemFailureDetails
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.failure_details.message #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.storage_capacity #=> Integer
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.storage_type #=> String, one of ["SSD", "HDD"]
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.vpc_id #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.subnet_ids #=> Array<String>
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.subnet_ids[0] #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.network_interface_ids #=> Array<String>
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.network_interface_ids[0] #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.dns_name #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.kms_key_id #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.resource_arn #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.tags #=> Array<Tag>
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration #=> Types::WindowsFileSystemConfiguration
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.active_directory_id #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration #=> Types::SelfManagedActiveDirectoryAttributes
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array<String>
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.deployment_type #=> String, one of ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"]
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.remote_administration_endpoint #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.preferred_subnet_id #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.preferred_file_server_ip #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.throughput_capacity #=> Integer
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress #=> Array<String>
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of ["PATCHING", "BACKING_UP"]
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.aliases #=> Array<Alias>
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.aliases[0] #=> Types::Alias
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].name #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].lifecycle #=> String, one of ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration #=> Types::WindowsAuditLogConfiguration
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration #=> Types::LustreFileSystemConfiguration
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration #=> Types::DataRepositoryConfiguration
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.lifecycle #=> String, one of ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"]
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"]
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.failure_details #=> Types::DataRepositoryFailureDetails
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.deployment_type #=> String, one of ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"]
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.mount_name #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.drive_cache_type #=> String, one of ["NONE", "READ"]
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.data_compression_type #=> String, one of ["NONE", "LZ4"]
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration #=> Types::LustreLogConfiguration
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.level #=> String, one of ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"]
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.destination #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration #=> Types::LustreRootSquashConfiguration
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids #=> Array<String>
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration #=> Types::OntapFileSystemConfiguration
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.deployment_type #=> String, one of ["MULTI_AZ_1", "SINGLE_AZ_1"]
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.endpoints #=> Types::FileSystemEndpoints
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster #=> Types::FileSystemEndpoint
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses #=> Array<String>
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management #=> Types::FileSystemEndpoint
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration #=> Types::DiskIopsConfiguration
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.mode #=> String, one of ["AUTOMATIC", "USER_PROVISIONED"]
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.preferred_subnet_id #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids #=> Array<String>
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids[0] #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.throughput_capacity #=> Integer
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.file_system_type_version #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.open_zfs_configuration #=> Types::OpenZFSFileSystemConfiguration
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.deployment_type #=> String, one of ["SINGLE_AZ_1"]
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.disk_iops_configuration #=> Types::DiskIopsConfiguration
    #   resp.data.snapshots[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.root_volume_id #=> String
    #   resp.data.snapshots[0].administrative_actions[0].failure_details #=> Types::AdministrativeActionFailureDetails
    #   resp.data.snapshots[0].administrative_actions[0].failure_details.message #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values #=> Types::Volume
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.creation_time #=> Time
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.file_system_id #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.lifecycle #=> String, one of ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"]
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.name #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration #=> Types::OntapVolumeConfiguration
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.flex_cache_endpoint_type #=> String, one of ["NONE", "ORIGIN", "CACHE"]
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.junction_path #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.security_style #=> String, one of ["UNIX", "NTFS", "MIXED"]
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.size_in_megabytes #=> Integer
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy #=> Types::TieringPolicy
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.name #=> String, one of ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.uuid #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.ontap_configuration.ontap_volume_type #=> String, one of ["RW", "DP", "LS"]
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.resource_arn #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.tags #=> Array<Tag>
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.volume_id #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.volume_type #=> String, one of ["ONTAP", "OPENZFS"]
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.lifecycle_transition_reason #=> Types::LifecycleTransitionReason
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration #=> Types::OpenZFSVolumeConfiguration
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.parent_volume_id #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.volume_path #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.data_compression_type #=> String, one of ["NONE", "ZSTD", "LZ4"]
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot #=> Types::OpenZFSOriginSnapshotConfiguration
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of ["CLONE", "FULL_COPY"]
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.read_only #=> Boolean
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports #=> Array<OpenZFSNfsExport>
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0] #=> Types::OpenZFSNfsExport
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations #=> Array<OpenZFSClientConfiguration>
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0] #=> Types::OpenZFSClientConfiguration
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array<String>
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas #=> Array<OpenZFSUserOrGroupQuota>
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0] #=> Types::OpenZFSUserOrGroupQuota
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of ["USER", "GROUP"]
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.data.snapshots[0].administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #   resp.data.snapshots[0].administrative_actions[0].target_snapshot_values #=> Types::Snapshot
    #   resp.data.next_token #=> String
    #
    def describe_snapshots(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeSnapshotsInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::BadRequest, Errors::SnapshotNotFound]),
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

    # <p>Describes one or more Amazon FSx for NetApp ONTAP storage virtual machines (SVMs).</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeStorageVirtualMachinesInput}.
    #
    # @option params [Array<String>] :storage_virtual_machine_ids
    #   <p>Enter the ID of one or more SVMs that you want to view.</p>
    #
    # @option params [Array<StorageVirtualMachineFilter>] :filters
    #   <p>Enter a filter name:value pair to view a select set of SVMs.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of resources to return in the response. This value must be an
    #               integer greater than zero.</p>
    #
    # @option params [String] :next_token
    #   <p>(Optional) Opaque pagination token returned from a previous operation (String). If
    #               present, this token indicates from what point you can continue processing the request, where
    #               the previous <code>NextToken</code> value left off.</p>
    #
    # @return [Types::DescribeStorageVirtualMachinesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_storage_virtual_machines(
    #     storage_virtual_machine_ids: [
    #       'member'
    #     ],
    #     filters: [
    #       {
    #         name: 'file-system-id', # accepts ["file-system-id"]
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeStorageVirtualMachinesOutput
    #   resp.data.storage_virtual_machines #=> Array<StorageVirtualMachine>
    #   resp.data.storage_virtual_machines[0] #=> Types::StorageVirtualMachine
    #   resp.data.storage_virtual_machines[0].active_directory_configuration #=> Types::SvmActiveDirectoryConfiguration
    #   resp.data.storage_virtual_machines[0].active_directory_configuration.net_bios_name #=> String
    #   resp.data.storage_virtual_machines[0].active_directory_configuration.self_managed_active_directory_configuration #=> Types::SelfManagedActiveDirectoryAttributes
    #   resp.data.storage_virtual_machines[0].active_directory_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.data.storage_virtual_machines[0].active_directory_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.data.storage_virtual_machines[0].active_directory_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.data.storage_virtual_machines[0].active_directory_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.data.storage_virtual_machines[0].active_directory_configuration.self_managed_active_directory_configuration.dns_ips #=> Array<String>
    #   resp.data.storage_virtual_machines[0].active_directory_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.data.storage_virtual_machines[0].creation_time #=> Time
    #   resp.data.storage_virtual_machines[0].endpoints #=> Types::SvmEndpoints
    #   resp.data.storage_virtual_machines[0].endpoints.iscsi #=> Types::SvmEndpoint
    #   resp.data.storage_virtual_machines[0].endpoints.iscsi.dns_name #=> String
    #   resp.data.storage_virtual_machines[0].endpoints.iscsi.ip_addresses #=> Array<String>
    #   resp.data.storage_virtual_machines[0].endpoints.iscsi.ip_addresses[0] #=> String
    #   resp.data.storage_virtual_machines[0].endpoints.management #=> Types::SvmEndpoint
    #   resp.data.storage_virtual_machines[0].endpoints.nfs #=> Types::SvmEndpoint
    #   resp.data.storage_virtual_machines[0].endpoints.smb #=> Types::SvmEndpoint
    #   resp.data.storage_virtual_machines[0].file_system_id #=> String
    #   resp.data.storage_virtual_machines[0].lifecycle #=> String, one of ["CREATED", "CREATING", "DELETING", "FAILED", "MISCONFIGURED", "PENDING"]
    #   resp.data.storage_virtual_machines[0].name #=> String
    #   resp.data.storage_virtual_machines[0].resource_arn #=> String
    #   resp.data.storage_virtual_machines[0].storage_virtual_machine_id #=> String
    #   resp.data.storage_virtual_machines[0].subtype #=> String, one of ["DEFAULT", "DP_DESTINATION", "SYNC_DESTINATION", "SYNC_SOURCE"]
    #   resp.data.storage_virtual_machines[0].uuid #=> String
    #   resp.data.storage_virtual_machines[0].tags #=> Array<Tag>
    #   resp.data.storage_virtual_machines[0].tags[0] #=> Types::Tag
    #   resp.data.storage_virtual_machines[0].tags[0].key #=> String
    #   resp.data.storage_virtual_machines[0].tags[0].value #=> String
    #   resp.data.storage_virtual_machines[0].lifecycle_transition_reason #=> Types::LifecycleTransitionReason
    #   resp.data.storage_virtual_machines[0].lifecycle_transition_reason.message #=> String
    #   resp.data.storage_virtual_machines[0].root_volume_security_style #=> String, one of ["UNIX", "NTFS", "MIXED"]
    #   resp.data.next_token #=> String
    #
    def describe_storage_virtual_machines(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeStorageVirtualMachinesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeStorageVirtualMachinesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeStorageVirtualMachines
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::StorageVirtualMachineNotFound, Errors::BadRequest]),
        data_parser: Parsers::DescribeStorageVirtualMachines
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeStorageVirtualMachines,
        stubs: @stubs,
        params_class: Params::DescribeStorageVirtualMachinesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_storage_virtual_machines
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes one or more Amazon FSx for NetApp ONTAP or Amazon FSx for
    #             OpenZFS volumes.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeVolumesInput}.
    #
    # @option params [Array<String>] :volume_ids
    #   <p>The IDs of the volumes whose descriptions you want to retrieve.</p>
    #
    # @option params [Array<VolumeFilter>] :filters
    #   <p>Enter a filter <code>Name</code> and <code>Values</code> pair to view a select set of
    #               volumes.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of resources to return in the response. This value must be an
    #               integer greater than zero.</p>
    #
    # @option params [String] :next_token
    #   <p>(Optional) Opaque pagination token returned from a previous operation (String). If
    #               present, this token indicates from what point you can continue processing the request, where
    #               the previous <code>NextToken</code> value left off.</p>
    #
    # @return [Types::DescribeVolumesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_volumes(
    #     volume_ids: [
    #       'member'
    #     ],
    #     filters: [
    #       {
    #         name: 'file-system-id', # accepts ["file-system-id", "storage-virtual-machine-id"]
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeVolumesOutput
    #   resp.data.volumes #=> Array<Volume>
    #   resp.data.volumes[0] #=> Types::Volume
    #   resp.data.volumes[0].creation_time #=> Time
    #   resp.data.volumes[0].file_system_id #=> String
    #   resp.data.volumes[0].lifecycle #=> String, one of ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"]
    #   resp.data.volumes[0].name #=> String
    #   resp.data.volumes[0].ontap_configuration #=> Types::OntapVolumeConfiguration
    #   resp.data.volumes[0].ontap_configuration.flex_cache_endpoint_type #=> String, one of ["NONE", "ORIGIN", "CACHE"]
    #   resp.data.volumes[0].ontap_configuration.junction_path #=> String
    #   resp.data.volumes[0].ontap_configuration.security_style #=> String, one of ["UNIX", "NTFS", "MIXED"]
    #   resp.data.volumes[0].ontap_configuration.size_in_megabytes #=> Integer
    #   resp.data.volumes[0].ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.data.volumes[0].ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.data.volumes[0].ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.data.volumes[0].ontap_configuration.tiering_policy #=> Types::TieringPolicy
    #   resp.data.volumes[0].ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.data.volumes[0].ontap_configuration.tiering_policy.name #=> String, one of ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #   resp.data.volumes[0].ontap_configuration.uuid #=> String
    #   resp.data.volumes[0].ontap_configuration.ontap_volume_type #=> String, one of ["RW", "DP", "LS"]
    #   resp.data.volumes[0].resource_arn #=> String
    #   resp.data.volumes[0].tags #=> Array<Tag>
    #   resp.data.volumes[0].tags[0] #=> Types::Tag
    #   resp.data.volumes[0].tags[0].key #=> String
    #   resp.data.volumes[0].tags[0].value #=> String
    #   resp.data.volumes[0].volume_id #=> String
    #   resp.data.volumes[0].volume_type #=> String, one of ["ONTAP", "OPENZFS"]
    #   resp.data.volumes[0].lifecycle_transition_reason #=> Types::LifecycleTransitionReason
    #   resp.data.volumes[0].lifecycle_transition_reason.message #=> String
    #   resp.data.volumes[0].administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.volumes[0].administrative_actions[0] #=> Types::AdministrativeAction
    #   resp.data.volumes[0].administrative_actions[0].administrative_action_type #=> String, one of ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS"]
    #   resp.data.volumes[0].administrative_actions[0].progress_percent #=> Integer
    #   resp.data.volumes[0].administrative_actions[0].request_time #=> Time
    #   resp.data.volumes[0].administrative_actions[0].status #=> String, one of ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"]
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values #=> Types::FileSystem
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.owner_id #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.creation_time #=> Time
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.file_system_id #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.file_system_type #=> String, one of ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"]
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.lifecycle #=> String, one of ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"]
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.failure_details #=> Types::FileSystemFailureDetails
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.failure_details.message #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.storage_capacity #=> Integer
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.storage_type #=> String, one of ["SSD", "HDD"]
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.vpc_id #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.subnet_ids #=> Array<String>
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.subnet_ids[0] #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.network_interface_ids #=> Array<String>
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.network_interface_ids[0] #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.dns_name #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.kms_key_id #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.resource_arn #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.tags #=> Array<Tag>
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration #=> Types::WindowsFileSystemConfiguration
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.active_directory_id #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration #=> Types::SelfManagedActiveDirectoryAttributes
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array<String>
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.deployment_type #=> String, one of ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"]
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.remote_administration_endpoint #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.preferred_subnet_id #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.preferred_file_server_ip #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.throughput_capacity #=> Integer
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress #=> Array<String>
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of ["PATCHING", "BACKING_UP"]
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.aliases #=> Array<Alias>
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.aliases[0] #=> Types::Alias
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].name #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].lifecycle #=> String, one of ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration #=> Types::WindowsAuditLogConfiguration
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration #=> Types::LustreFileSystemConfiguration
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration #=> Types::DataRepositoryConfiguration
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.lifecycle #=> String, one of ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"]
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"]
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.failure_details #=> Types::DataRepositoryFailureDetails
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.deployment_type #=> String, one of ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"]
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.mount_name #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.drive_cache_type #=> String, one of ["NONE", "READ"]
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.data_compression_type #=> String, one of ["NONE", "LZ4"]
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration #=> Types::LustreLogConfiguration
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.level #=> String, one of ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"]
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.destination #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration #=> Types::LustreRootSquashConfiguration
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids #=> Array<String>
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration #=> Types::OntapFileSystemConfiguration
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.deployment_type #=> String, one of ["MULTI_AZ_1", "SINGLE_AZ_1"]
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.endpoints #=> Types::FileSystemEndpoints
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster #=> Types::FileSystemEndpoint
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses #=> Array<String>
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management #=> Types::FileSystemEndpoint
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration #=> Types::DiskIopsConfiguration
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.mode #=> String, one of ["AUTOMATIC", "USER_PROVISIONED"]
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.preferred_subnet_id #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids #=> Array<String>
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids[0] #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.throughput_capacity #=> Integer
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.file_system_type_version #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.open_zfs_configuration #=> Types::OpenZFSFileSystemConfiguration
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.deployment_type #=> String, one of ["SINGLE_AZ_1"]
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.disk_iops_configuration #=> Types::DiskIopsConfiguration
    #   resp.data.volumes[0].administrative_actions[0].target_file_system_values.open_zfs_configuration.root_volume_id #=> String
    #   resp.data.volumes[0].administrative_actions[0].failure_details #=> Types::AdministrativeActionFailureDetails
    #   resp.data.volumes[0].administrative_actions[0].failure_details.message #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_volume_values #=> Types::Volume
    #   resp.data.volumes[0].administrative_actions[0].target_snapshot_values #=> Types::Snapshot
    #   resp.data.volumes[0].administrative_actions[0].target_snapshot_values.resource_arn #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_snapshot_values.snapshot_id #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_snapshot_values.name #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_snapshot_values.volume_id #=> String
    #   resp.data.volumes[0].administrative_actions[0].target_snapshot_values.creation_time #=> Time
    #   resp.data.volumes[0].administrative_actions[0].target_snapshot_values.lifecycle #=> String, one of ["PENDING", "CREATING", "DELETING", "AVAILABLE"]
    #   resp.data.volumes[0].administrative_actions[0].target_snapshot_values.lifecycle_transition_reason #=> Types::LifecycleTransitionReason
    #   resp.data.volumes[0].administrative_actions[0].target_snapshot_values.tags #=> Array<Tag>
    #   resp.data.volumes[0].administrative_actions[0].target_snapshot_values.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.volumes[0].open_zfs_configuration #=> Types::OpenZFSVolumeConfiguration
    #   resp.data.volumes[0].open_zfs_configuration.parent_volume_id #=> String
    #   resp.data.volumes[0].open_zfs_configuration.volume_path #=> String
    #   resp.data.volumes[0].open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.data.volumes[0].open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.data.volumes[0].open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.data.volumes[0].open_zfs_configuration.data_compression_type #=> String, one of ["NONE", "ZSTD", "LZ4"]
    #   resp.data.volumes[0].open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.data.volumes[0].open_zfs_configuration.origin_snapshot #=> Types::OpenZFSOriginSnapshotConfiguration
    #   resp.data.volumes[0].open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.data.volumes[0].open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of ["CLONE", "FULL_COPY"]
    #   resp.data.volumes[0].open_zfs_configuration.read_only #=> Boolean
    #   resp.data.volumes[0].open_zfs_configuration.nfs_exports #=> Array<OpenZFSNfsExport>
    #   resp.data.volumes[0].open_zfs_configuration.nfs_exports[0] #=> Types::OpenZFSNfsExport
    #   resp.data.volumes[0].open_zfs_configuration.nfs_exports[0].client_configurations #=> Array<OpenZFSClientConfiguration>
    #   resp.data.volumes[0].open_zfs_configuration.nfs_exports[0].client_configurations[0] #=> Types::OpenZFSClientConfiguration
    #   resp.data.volumes[0].open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.data.volumes[0].open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array<String>
    #   resp.data.volumes[0].open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.data.volumes[0].open_zfs_configuration.user_and_group_quotas #=> Array<OpenZFSUserOrGroupQuota>
    #   resp.data.volumes[0].open_zfs_configuration.user_and_group_quotas[0] #=> Types::OpenZFSUserOrGroupQuota
    #   resp.data.volumes[0].open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of ["USER", "GROUP"]
    #   resp.data.volumes[0].open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.data.volumes[0].open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #   resp.data.next_token #=> String
    #
    def describe_volumes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeVolumesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeVolumesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeVolumes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::VolumeNotFound, Errors::BadRequest]),
        data_parser: Parsers::DescribeVolumes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeVolumes,
        stubs: @stubs,
        params_class: Params::DescribeVolumesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_volumes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Use this action to disassociate, or remove, one or more Domain Name Service (DNS) aliases
    #             from an Amazon FSx for Windows File Server file system. If you attempt to disassociate a DNS alias that is not
    #             associated with the file system, Amazon FSx responds with a 400 Bad Request. For more information, see
    #             <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html">Working with DNS Aliases</a>.</p>
    #         <p>The system generated response showing the DNS aliases that
    #             Amazon FSx is attempting to disassociate from the file system.
    #             Use the  API
    #             operation to monitor the status of the aliases Amazon FSx is
    #             disassociating with the file system.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateFileSystemAliasesInput}.
    #
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 64
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #
    # @option params [String] :file_system_id
    #   <p>Specifies the file system from which to disassociate the DNS aliases.</p>
    #
    # @option params [Array<String>] :aliases
    #   <p>An array of one or more DNS alias names to disassociate, or remove, from the file system.</p>
    #
    # @return [Types::DisassociateFileSystemAliasesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_file_system_aliases(
    #     client_request_token: 'ClientRequestToken',
    #     file_system_id: 'FileSystemId', # required
    #     aliases: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateFileSystemAliasesOutput
    #   resp.data.aliases #=> Array<Alias>
    #   resp.data.aliases[0] #=> Types::Alias
    #   resp.data.aliases[0].name #=> String
    #   resp.data.aliases[0].lifecycle #=> String, one of ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #
    def disassociate_file_system_aliases(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateFileSystemAliasesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateFileSystemAliasesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateFileSystemAliases
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::BadRequest, Errors::FileSystemNotFound]),
        data_parser: Parsers::DisassociateFileSystemAliases
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateFileSystemAliases,
        stubs: @stubs,
        params_class: Params::DisassociateFileSystemAliasesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_file_system_aliases
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists tags for an Amazon FSx file systems and backups in the case of Amazon FSx for
    #             Windows File Server.</p>
    #
    #         <p>When retrieving all tags, you can optionally specify the <code>MaxResults</code>
    #             parameter to limit the number of tags in a response. If more tags remain, Amazon FSx
    #             returns a <code>NextToken</code> value in the response. In this case, send a later
    #             request with the <code>NextToken</code> request parameter set to the value of
    #                 <code>NextToken</code> from the last response.</p>
    #
    #         <p>This action is used in an iterative process to retrieve a list of your tags.
    #                 <code>ListTagsForResource</code> is called first without a
    #             <code>NextToken</code>value. Then the action continues to be called with the
    #                 <code>NextToken</code> parameter set to the value of the last <code>NextToken</code>
    #             value until a response has no <code>NextToken</code>.</p>
    #
    #         <p>When using this action, keep the following in mind:</p>
    #         <ul>
    #             <li>
    #                 <p>The implementation might return fewer than <code>MaxResults</code> file
    #                     system descriptions while still including a <code>NextToken</code>
    #                     value.</p>
    #
    #             </li>
    #             <li>
    #                 <p>The order of tags returned in the response of one
    #                         <code>ListTagsForResource</code> call and the order of tags returned across
    #                     the responses of a multi-call iteration is unspecified.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the Amazon FSx resource that will have its tags listed.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of tags to return in the response (integer). This
    #               parameter value must be greater than 0. The number of items that Amazon FSx returns is
    #               the minimum of the <code>MaxResults</code> parameter specified in the request and the
    #               service's internal maximum number of items per page.</p>
    #
    # @option params [String] :next_token
    #   <p>Opaque pagination token returned from a previous
    #                   <code>ListTagsForResource</code> operation (String). If a token present, the action
    #               continues the list from where the returning call left off.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceARN', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::NotServiceResourceError, Errors::ResourceDoesNotSupportTagging, Errors::ResourceNotFound, Errors::BadRequest]),
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

    # <p>Releases the file system lock from an Amazon FSx for OpenZFS file
    #             system.</p>
    #
    # @param [Hash] params
    #   See {Types::ReleaseFileSystemNfsV3LocksInput}.
    #
    # @option params [String] :file_system_id
    #   <p>The globally unique ID of the file system, assigned by Amazon FSx.</p>
    #
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 64
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #
    # @return [Types::ReleaseFileSystemNfsV3LocksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.release_file_system_nfs_v3_locks(
    #     file_system_id: 'FileSystemId', # required
    #     client_request_token: 'ClientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ReleaseFileSystemNfsV3LocksOutput
    #   resp.data.file_system #=> Types::FileSystem
    #   resp.data.file_system.owner_id #=> String
    #   resp.data.file_system.creation_time #=> Time
    #   resp.data.file_system.file_system_id #=> String
    #   resp.data.file_system.file_system_type #=> String, one of ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"]
    #   resp.data.file_system.lifecycle #=> String, one of ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"]
    #   resp.data.file_system.failure_details #=> Types::FileSystemFailureDetails
    #   resp.data.file_system.failure_details.message #=> String
    #   resp.data.file_system.storage_capacity #=> Integer
    #   resp.data.file_system.storage_type #=> String, one of ["SSD", "HDD"]
    #   resp.data.file_system.vpc_id #=> String
    #   resp.data.file_system.subnet_ids #=> Array<String>
    #   resp.data.file_system.subnet_ids[0] #=> String
    #   resp.data.file_system.network_interface_ids #=> Array<String>
    #   resp.data.file_system.network_interface_ids[0] #=> String
    #   resp.data.file_system.dns_name #=> String
    #   resp.data.file_system.kms_key_id #=> String
    #   resp.data.file_system.resource_arn #=> String
    #   resp.data.file_system.tags #=> Array<Tag>
    #   resp.data.file_system.tags[0] #=> Types::Tag
    #   resp.data.file_system.tags[0].key #=> String
    #   resp.data.file_system.tags[0].value #=> String
    #   resp.data.file_system.windows_configuration #=> Types::WindowsFileSystemConfiguration
    #   resp.data.file_system.windows_configuration.active_directory_id #=> String
    #   resp.data.file_system.windows_configuration.self_managed_active_directory_configuration #=> Types::SelfManagedActiveDirectoryAttributes
    #   resp.data.file_system.windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.data.file_system.windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.data.file_system.windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.data.file_system.windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.data.file_system.windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array<String>
    #   resp.data.file_system.windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.data.file_system.windows_configuration.deployment_type #=> String, one of ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"]
    #   resp.data.file_system.windows_configuration.remote_administration_endpoint #=> String
    #   resp.data.file_system.windows_configuration.preferred_subnet_id #=> String
    #   resp.data.file_system.windows_configuration.preferred_file_server_ip #=> String
    #   resp.data.file_system.windows_configuration.throughput_capacity #=> Integer
    #   resp.data.file_system.windows_configuration.maintenance_operations_in_progress #=> Array<String>
    #   resp.data.file_system.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of ["PATCHING", "BACKING_UP"]
    #   resp.data.file_system.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.file_system.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.file_system.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.file_system.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.file_system.windows_configuration.aliases #=> Array<Alias>
    #   resp.data.file_system.windows_configuration.aliases[0] #=> Types::Alias
    #   resp.data.file_system.windows_configuration.aliases[0].name #=> String
    #   resp.data.file_system.windows_configuration.aliases[0].lifecycle #=> String, one of ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #   resp.data.file_system.windows_configuration.audit_log_configuration #=> Types::WindowsAuditLogConfiguration
    #   resp.data.file_system.windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #   resp.data.file_system.windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #   resp.data.file_system.windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.data.file_system.lustre_configuration #=> Types::LustreFileSystemConfiguration
    #   resp.data.file_system.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.file_system.lustre_configuration.data_repository_configuration #=> Types::DataRepositoryConfiguration
    #   resp.data.file_system.lustre_configuration.data_repository_configuration.lifecycle #=> String, one of ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"]
    #   resp.data.file_system.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.data.file_system.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.data.file_system.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.data.file_system.lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"]
    #   resp.data.file_system.lustre_configuration.data_repository_configuration.failure_details #=> Types::DataRepositoryFailureDetails
    #   resp.data.file_system.lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.data.file_system.lustre_configuration.deployment_type #=> String, one of ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"]
    #   resp.data.file_system.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.data.file_system.lustre_configuration.mount_name #=> String
    #   resp.data.file_system.lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.file_system.lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.file_system.lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.file_system.lustre_configuration.drive_cache_type #=> String, one of ["NONE", "READ"]
    #   resp.data.file_system.lustre_configuration.data_compression_type #=> String, one of ["NONE", "LZ4"]
    #   resp.data.file_system.lustre_configuration.log_configuration #=> Types::LustreLogConfiguration
    #   resp.data.file_system.lustre_configuration.log_configuration.level #=> String, one of ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"]
    #   resp.data.file_system.lustre_configuration.log_configuration.destination #=> String
    #   resp.data.file_system.lustre_configuration.root_squash_configuration #=> Types::LustreRootSquashConfiguration
    #   resp.data.file_system.lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.data.file_system.lustre_configuration.root_squash_configuration.no_squash_nids #=> Array<String>
    #   resp.data.file_system.lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.data.file_system.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.file_system.administrative_actions[0] #=> Types::AdministrativeAction
    #   resp.data.file_system.administrative_actions[0].administrative_action_type #=> String, one of ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS"]
    #   resp.data.file_system.administrative_actions[0].progress_percent #=> Integer
    #   resp.data.file_system.administrative_actions[0].request_time #=> Time
    #   resp.data.file_system.administrative_actions[0].status #=> String, one of ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"]
    #   resp.data.file_system.administrative_actions[0].target_file_system_values #=> Types::FileSystem
    #   resp.data.file_system.administrative_actions[0].failure_details #=> Types::AdministrativeActionFailureDetails
    #   resp.data.file_system.administrative_actions[0].failure_details.message #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values #=> Types::Volume
    #   resp.data.file_system.administrative_actions[0].target_volume_values.creation_time #=> Time
    #   resp.data.file_system.administrative_actions[0].target_volume_values.file_system_id #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.lifecycle #=> String, one of ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.name #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration #=> Types::OntapVolumeConfiguration
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.flex_cache_endpoint_type #=> String, one of ["NONE", "ORIGIN", "CACHE"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.junction_path #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.security_style #=> String, one of ["UNIX", "NTFS", "MIXED"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.size_in_megabytes #=> Integer
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy #=> Types::TieringPolicy
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.name #=> String, one of ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.uuid #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.ontap_volume_type #=> String, one of ["RW", "DP", "LS"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.resource_arn #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.tags #=> Array<Tag>
    #   resp.data.file_system.administrative_actions[0].target_volume_values.volume_id #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.volume_type #=> String, one of ["ONTAP", "OPENZFS"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.lifecycle_transition_reason #=> Types::LifecycleTransitionReason
    #   resp.data.file_system.administrative_actions[0].target_volume_values.lifecycle_transition_reason.message #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration #=> Types::OpenZFSVolumeConfiguration
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.parent_volume_id #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.volume_path #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.data_compression_type #=> String, one of ["NONE", "ZSTD", "LZ4"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot #=> Types::OpenZFSOriginSnapshotConfiguration
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of ["CLONE", "FULL_COPY"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.read_only #=> Boolean
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports #=> Array<OpenZFSNfsExport>
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0] #=> Types::OpenZFSNfsExport
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations #=> Array<OpenZFSClientConfiguration>
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0] #=> Types::OpenZFSClientConfiguration
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array<String>
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas #=> Array<OpenZFSUserOrGroupQuota>
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0] #=> Types::OpenZFSUserOrGroupQuota
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of ["USER", "GROUP"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values #=> Types::Snapshot
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.resource_arn #=> String
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.snapshot_id #=> String
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.name #=> String
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.volume_id #=> String
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.creation_time #=> Time
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.lifecycle #=> String, one of ["PENDING", "CREATING", "DELETING", "AVAILABLE"]
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.lifecycle_transition_reason #=> Types::LifecycleTransitionReason
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.tags #=> Array<Tag>
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.file_system.ontap_configuration #=> Types::OntapFileSystemConfiguration
    #   resp.data.file_system.ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.file_system.ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.file_system.ontap_configuration.deployment_type #=> String, one of ["MULTI_AZ_1", "SINGLE_AZ_1"]
    #   resp.data.file_system.ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.data.file_system.ontap_configuration.endpoints #=> Types::FileSystemEndpoints
    #   resp.data.file_system.ontap_configuration.endpoints.intercluster #=> Types::FileSystemEndpoint
    #   resp.data.file_system.ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.data.file_system.ontap_configuration.endpoints.intercluster.ip_addresses #=> Array<String>
    #   resp.data.file_system.ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.data.file_system.ontap_configuration.endpoints.management #=> Types::FileSystemEndpoint
    #   resp.data.file_system.ontap_configuration.disk_iops_configuration #=> Types::DiskIopsConfiguration
    #   resp.data.file_system.ontap_configuration.disk_iops_configuration.mode #=> String, one of ["AUTOMATIC", "USER_PROVISIONED"]
    #   resp.data.file_system.ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.data.file_system.ontap_configuration.preferred_subnet_id #=> String
    #   resp.data.file_system.ontap_configuration.route_table_ids #=> Array<String>
    #   resp.data.file_system.ontap_configuration.route_table_ids[0] #=> String
    #   resp.data.file_system.ontap_configuration.throughput_capacity #=> Integer
    #   resp.data.file_system.ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.file_system.file_system_type_version #=> String
    #   resp.data.file_system.open_zfs_configuration #=> Types::OpenZFSFileSystemConfiguration
    #   resp.data.file_system.open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.file_system.open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.file_system.open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.data.file_system.open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.file_system.open_zfs_configuration.deployment_type #=> String, one of ["SINGLE_AZ_1"]
    #   resp.data.file_system.open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.data.file_system.open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.file_system.open_zfs_configuration.disk_iops_configuration #=> Types::DiskIopsConfiguration
    #   resp.data.file_system.open_zfs_configuration.root_volume_id #=> String
    #
    def release_file_system_nfs_v3_locks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ReleaseFileSystemNfsV3LocksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ReleaseFileSystemNfsV3LocksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ReleaseFileSystemNfsV3Locks
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::IncompatibleParameterError, Errors::BadRequest, Errors::FileSystemNotFound, Errors::ServiceLimitExceeded]),
        data_parser: Parsers::ReleaseFileSystemNfsV3Locks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ReleaseFileSystemNfsV3Locks,
        stubs: @stubs,
        params_class: Params::ReleaseFileSystemNfsV3LocksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :release_file_system_nfs_v3_locks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an Amazon FSx for OpenZFS volume to the state saved by the specified
    #             snapshot. </p>
    #
    # @param [Hash] params
    #   See {Types::RestoreVolumeFromSnapshotInput}.
    #
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 64
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #
    # @option params [String] :volume_id
    #   <p>The ID of the volume that you are restoring.</p>
    #
    # @option params [String] :snapshot_id
    #   <p>The ID of the source snapshot. Specifies the snapshot that you are restoring
    #               from.</p>
    #
    # @option params [Array<String>] :options
    #   <p>The settings used when restoring the specified volume from snapshot. </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>DELETE_INTERMEDIATE_SNAPSHOTS</code> - Deletes snapshots between the
    #                       current state and the specified snapshot. If there are intermediate snapshots
    #                       and this option isn't used, <code>RestoreVolumeFromSnapshot</code> fails.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DELETE_CLONED_VOLUMES</code> - Deletes any dependent clone volumes
    #                       created from intermediate snapshots. If there are any dependent clone volumes and this
    #                       option isn't used, <code>RestoreVolumeFromSnapshot</code> fails.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::RestoreVolumeFromSnapshotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_volume_from_snapshot(
    #     client_request_token: 'ClientRequestToken',
    #     volume_id: 'VolumeId', # required
    #     snapshot_id: 'SnapshotId', # required
    #     options: [
    #       'DELETE_INTERMEDIATE_SNAPSHOTS' # accepts ["DELETE_INTERMEDIATE_SNAPSHOTS", "DELETE_CLONED_VOLUMES"]
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RestoreVolumeFromSnapshotOutput
    #   resp.data.volume_id #=> String
    #   resp.data.lifecycle #=> String, one of ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"]
    #
    def restore_volume_from_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RestoreVolumeFromSnapshotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RestoreVolumeFromSnapshotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RestoreVolumeFromSnapshot
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::VolumeNotFound, Errors::BadRequest]),
        data_parser: Parsers::RestoreVolumeFromSnapshot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RestoreVolumeFromSnapshot,
        stubs: @stubs,
        params_class: Params::RestoreVolumeFromSnapshotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :restore_volume_from_snapshot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Tags an Amazon FSx resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon FSx resource that you want to
    #               tag.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags for the resource. If a tag with a given key already exists, the
    #               value is replaced by the one specified in this parameter.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::NotServiceResourceError, Errors::ResourceDoesNotSupportTagging, Errors::ResourceNotFound, Errors::BadRequest]),
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

    # <p>This action removes a tag from an Amazon FSx resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the Amazon FSx resource to untag.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of keys of tags on the resource to untag. In case the tag key doesn't exist,
    #               the call will still succeed to be idempotent.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::NotServiceResourceError, Errors::ResourceDoesNotSupportTagging, Errors::ResourceNotFound, Errors::BadRequest]),
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

    # <p>Updates the configuration of an existing data repository association
    #             on an Amazon FSx for Lustre file system. Data repository associations are
    #             supported only for file systems with the <code>Persistent_2</code> deployment type.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDataRepositoryAssociationInput}.
    #
    # @option params [String] :association_id
    #   <p>The ID of the data repository association that you are updating.</p>
    #
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 64
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #
    # @option params [Integer] :imported_file_chunk_size
    #   <p>For files imported from a data repository, this value determines the stripe count and
    #               maximum amount of data per file (in MiB) stored on a single physical disk. The maximum
    #               number of disks that a single file can be striped across is limited by the total number
    #               of disks that make up the file system.</p>
    #
    #           <p>The default chunk size is 1,024 MiB (1 GiB) and can go as high as 512,000 MiB (500
    #               GiB). Amazon S3 objects have a maximum size of 5 TB.</p>
    #
    # @option params [S3DataRepositoryConfiguration] :s3
    #   <p>The configuration for an Amazon S3 data repository linked to an
    #               Amazon FSx Lustre file system with a data repository association.
    #               The configuration defines which file events (new, changed, or
    #               deleted files or directories) are automatically imported from
    #               the linked data repository to the file system or automatically
    #               exported from the file system to the data repository.</p>
    #
    # @return [Types::UpdateDataRepositoryAssociationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_repository_association(
    #     association_id: 'AssociationId', # required
    #     client_request_token: 'ClientRequestToken',
    #     imported_file_chunk_size: 1,
    #     s3: {
    #       auto_import_policy: {
    #         events: [
    #           'NEW' # accepts ["NEW", "CHANGED", "DELETED"]
    #         ]
    #       },
    #       auto_export_policy: {
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDataRepositoryAssociationOutput
    #   resp.data.association #=> Types::DataRepositoryAssociation
    #   resp.data.association.association_id #=> String
    #   resp.data.association.resource_arn #=> String
    #   resp.data.association.file_system_id #=> String
    #   resp.data.association.lifecycle #=> String, one of ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"]
    #   resp.data.association.failure_details #=> Types::DataRepositoryFailureDetails
    #   resp.data.association.failure_details.message #=> String
    #   resp.data.association.file_system_path #=> String
    #   resp.data.association.data_repository_path #=> String
    #   resp.data.association.batch_import_meta_data_on_create #=> Boolean
    #   resp.data.association.imported_file_chunk_size #=> Integer
    #   resp.data.association.s3 #=> Types::S3DataRepositoryConfiguration
    #   resp.data.association.s3.auto_import_policy #=> Types::AutoImportPolicy
    #   resp.data.association.s3.auto_import_policy.events #=> Array<String>
    #   resp.data.association.s3.auto_import_policy.events[0] #=> String, one of ["NEW", "CHANGED", "DELETED"]
    #   resp.data.association.s3.auto_export_policy #=> Types::AutoExportPolicy
    #   resp.data.association.s3.auto_export_policy.events #=> Array<String>
    #   resp.data.association.tags #=> Array<Tag>
    #   resp.data.association.tags[0] #=> Types::Tag
    #   resp.data.association.tags[0].key #=> String
    #   resp.data.association.tags[0].value #=> String
    #   resp.data.association.creation_time #=> Time
    #
    def update_data_repository_association(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDataRepositoryAssociationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDataRepositoryAssociationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDataRepositoryAssociation
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::IncompatibleParameterError, Errors::BadRequest, Errors::DataRepositoryAssociationNotFound, Errors::ServiceLimitExceeded]),
        data_parser: Parsers::UpdateDataRepositoryAssociation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDataRepositoryAssociation,
        stubs: @stubs,
        params_class: Params::UpdateDataRepositoryAssociationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_data_repository_association
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Use this operation to update the configuration of an existing Amazon FSx file
    #       system. You can update multiple properties in a single request.</p>
    #          <p>For Amazon FSx for Windows File Server file systems, you can update the following
    #       properties:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>AuditLogConfiguration</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>AutomaticBackupRetentionDays</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DailyAutomaticBackupStartTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>SelfManagedActiveDirectoryConfiguration</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>StorageCapacity</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ThroughputCapacity</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>WeeklyMaintenanceStartTime</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>For Amazon FSx for Lustre file systems, you can update the following
    #       properties:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>AutoImportPolicy</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>AutomaticBackupRetentionDays</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DailyAutomaticBackupStartTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DataCompressionType</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>LustreRootSquashConfiguration</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>StorageCapacity</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>WeeklyMaintenanceStartTime</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>For Amazon FSx for NetApp ONTAP file systems, you can update the following
    #       properties:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>AutomaticBackupRetentionDays</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DailyAutomaticBackupStartTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DiskIopsConfiguration</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>FsxAdminPassword</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>StorageCapacity</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ThroughputCapacity</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>WeeklyMaintenanceStartTime</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>For the Amazon FSx for OpenZFS file systems, you can update the following
    #       properties:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>AutomaticBackupRetentionDays</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>CopyTagsToBackups</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>CopyTagsToVolumes</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DailyAutomaticBackupStartTime</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ThroughputCapacity</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>WeeklyMaintenanceStartTime</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::UpdateFileSystemInput}.
    #
    # @option params [String] :file_system_id
    #   <p>The ID of the file system that you are updating.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A string of up to 64 ASCII characters that Amazon FSx uses to ensure
    #         idempotent updates. This string is automatically filled on your behalf when you use the
    #           Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #
    # @option params [Integer] :storage_capacity
    #   <p>Use this parameter to increase the storage capacity of an Amazon FSx for Windows
    #         File Server, Amazon FSx for Lustre, or Amazon FSx for NetApp ONTAP file system.
    #         Specifies the storage capacity target value, in GiB, to increase the storage capacity for
    #         the file system that you're updating. </p>
    #            <note>
    #               <p>You can't make a storage capacity increase request if there is an existing storage
    #           capacity increase request in progress.</p>
    #            </note>
    #            <p>For Windows file systems, the storage capacity target value must be at least 10 percent
    #         greater than the current storage capacity value. To increase storage capacity, the file system
    #         must have at least 16 MBps of throughput capacity. For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-storage-capacity.html">Managing storage
    #           capacity</a> in the <i>Amazon FSx for Windows File Server User
    #             Guide</i>.</p>
    #            <p>For Lustre file systems, the storage capacity target value can be the following:</p>
    #            <ul>
    #               <li>
    #                  <p>For <code>SCRATCH_2</code>, <code>PERSISTENT_1</code>, and <code>PERSISTENT_2 SSD</code> deployment types, valid values
    #             are in multiples of 2400 GiB. The value must be greater than the current storage capacity.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>PERSISTENT HDD</code> file systems, valid values are multiples of 6000 GiB for
    #             12-MBps throughput per TiB file systems and multiples of 1800 GiB for 40-MBps throughput
    #             per TiB file systems. The values must be greater than the current storage capacity.</p>
    #               </li>
    #               <li>
    #                  <p>For <code>SCRATCH_1</code> file systems, you can't increase the storage capacity.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/fsx/latest/LustreGuide/managing-storage-capacity.html">Managing storage and throughput
    #             capacity</a> in the <i>Amazon FSx for Lustre User Guide</i>.</p>
    #            <p>For ONTAP file systems, the storage capacity target value must be at least 10 percent
    #         greater than the current storage capacity value.  For more information, see
    #         <a href="https://docs.aws.amazon.com/fsx/latest/ONTAPGuide/managing-storage-capacity.html">Managing storage capacity and provisioned IOPS</a> in the <i>Amazon FSx for NetApp ONTAP User
    #             Guide</i>.</p>
    #
    # @option params [UpdateFileSystemWindowsConfiguration] :windows_configuration
    #   <p>The configuration updates for an Amazon FSx for Windows File Server file
    #         system.</p>
    #
    # @option params [UpdateFileSystemLustreConfiguration] :lustre_configuration
    #   <p>The configuration object for Amazon FSx for Lustre file systems used in the
    #                   <code>UpdateFileSystem</code> operation.</p>
    #
    # @option params [UpdateFileSystemOntapConfiguration] :ontap_configuration
    #   <p>The configuration updates for an Amazon FSx for NetApp ONTAP file system.</p>
    #
    # @option params [UpdateFileSystemOpenZFSConfiguration] :open_zfs_configuration
    #   <p>The configuration updates for an Amazon FSx for OpenZFS file system.</p>
    #
    # @return [Types::UpdateFileSystemOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_file_system(
    #     file_system_id: 'FileSystemId', # required
    #     client_request_token: 'ClientRequestToken',
    #     storage_capacity: 1,
    #     windows_configuration: {
    #       weekly_maintenance_start_time: 'WeeklyMaintenanceStartTime',
    #       daily_automatic_backup_start_time: 'DailyAutomaticBackupStartTime',
    #       automatic_backup_retention_days: 1,
    #       throughput_capacity: 1,
    #       self_managed_active_directory_configuration: {
    #         user_name: 'UserName',
    #         password: 'Password',
    #         dns_ips: [
    #           'member'
    #         ]
    #       },
    #       audit_log_configuration: {
    #         file_access_audit_log_level: 'DISABLED', # required - accepts ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #         file_share_access_audit_log_level: 'DISABLED', # required - accepts ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #         audit_log_destination: 'AuditLogDestination'
    #       }
    #     },
    #     lustre_configuration: {
    #       weekly_maintenance_start_time: 'WeeklyMaintenanceStartTime',
    #       daily_automatic_backup_start_time: 'DailyAutomaticBackupStartTime',
    #       automatic_backup_retention_days: 1,
    #       auto_import_policy: 'NONE', # accepts ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"]
    #       data_compression_type: 'NONE', # accepts ["NONE", "LZ4"]
    #       log_configuration: {
    #         level: 'DISABLED', # required - accepts ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"]
    #         destination: 'Destination'
    #       },
    #       root_squash_configuration: {
    #         root_squash: 'RootSquash',
    #         no_squash_nids: [
    #           'member'
    #         ]
    #       }
    #     },
    #     ontap_configuration: {
    #       automatic_backup_retention_days: 1,
    #       daily_automatic_backup_start_time: 'DailyAutomaticBackupStartTime',
    #       fsx_admin_password: 'FsxAdminPassword',
    #       weekly_maintenance_start_time: 'WeeklyMaintenanceStartTime',
    #       disk_iops_configuration: {
    #         mode: 'AUTOMATIC', # accepts ["AUTOMATIC", "USER_PROVISIONED"]
    #         iops: 1
    #       },
    #       throughput_capacity: 1
    #     },
    #     open_zfs_configuration: {
    #       automatic_backup_retention_days: 1,
    #       copy_tags_to_backups: false,
    #       copy_tags_to_volumes: false,
    #       daily_automatic_backup_start_time: 'DailyAutomaticBackupStartTime',
    #       throughput_capacity: 1,
    #       weekly_maintenance_start_time: 'WeeklyMaintenanceStartTime',
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFileSystemOutput
    #   resp.data.file_system #=> Types::FileSystem
    #   resp.data.file_system.owner_id #=> String
    #   resp.data.file_system.creation_time #=> Time
    #   resp.data.file_system.file_system_id #=> String
    #   resp.data.file_system.file_system_type #=> String, one of ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"]
    #   resp.data.file_system.lifecycle #=> String, one of ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"]
    #   resp.data.file_system.failure_details #=> Types::FileSystemFailureDetails
    #   resp.data.file_system.failure_details.message #=> String
    #   resp.data.file_system.storage_capacity #=> Integer
    #   resp.data.file_system.storage_type #=> String, one of ["SSD", "HDD"]
    #   resp.data.file_system.vpc_id #=> String
    #   resp.data.file_system.subnet_ids #=> Array<String>
    #   resp.data.file_system.subnet_ids[0] #=> String
    #   resp.data.file_system.network_interface_ids #=> Array<String>
    #   resp.data.file_system.network_interface_ids[0] #=> String
    #   resp.data.file_system.dns_name #=> String
    #   resp.data.file_system.kms_key_id #=> String
    #   resp.data.file_system.resource_arn #=> String
    #   resp.data.file_system.tags #=> Array<Tag>
    #   resp.data.file_system.tags[0] #=> Types::Tag
    #   resp.data.file_system.tags[0].key #=> String
    #   resp.data.file_system.tags[0].value #=> String
    #   resp.data.file_system.windows_configuration #=> Types::WindowsFileSystemConfiguration
    #   resp.data.file_system.windows_configuration.active_directory_id #=> String
    #   resp.data.file_system.windows_configuration.self_managed_active_directory_configuration #=> Types::SelfManagedActiveDirectoryAttributes
    #   resp.data.file_system.windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.data.file_system.windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.data.file_system.windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.data.file_system.windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.data.file_system.windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array<String>
    #   resp.data.file_system.windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.data.file_system.windows_configuration.deployment_type #=> String, one of ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"]
    #   resp.data.file_system.windows_configuration.remote_administration_endpoint #=> String
    #   resp.data.file_system.windows_configuration.preferred_subnet_id #=> String
    #   resp.data.file_system.windows_configuration.preferred_file_server_ip #=> String
    #   resp.data.file_system.windows_configuration.throughput_capacity #=> Integer
    #   resp.data.file_system.windows_configuration.maintenance_operations_in_progress #=> Array<String>
    #   resp.data.file_system.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of ["PATCHING", "BACKING_UP"]
    #   resp.data.file_system.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.file_system.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.file_system.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.file_system.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.file_system.windows_configuration.aliases #=> Array<Alias>
    #   resp.data.file_system.windows_configuration.aliases[0] #=> Types::Alias
    #   resp.data.file_system.windows_configuration.aliases[0].name #=> String
    #   resp.data.file_system.windows_configuration.aliases[0].lifecycle #=> String, one of ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #   resp.data.file_system.windows_configuration.audit_log_configuration #=> Types::WindowsAuditLogConfiguration
    #   resp.data.file_system.windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #   resp.data.file_system.windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #   resp.data.file_system.windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.data.file_system.lustre_configuration #=> Types::LustreFileSystemConfiguration
    #   resp.data.file_system.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.file_system.lustre_configuration.data_repository_configuration #=> Types::DataRepositoryConfiguration
    #   resp.data.file_system.lustre_configuration.data_repository_configuration.lifecycle #=> String, one of ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"]
    #   resp.data.file_system.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.data.file_system.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.data.file_system.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.data.file_system.lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"]
    #   resp.data.file_system.lustre_configuration.data_repository_configuration.failure_details #=> Types::DataRepositoryFailureDetails
    #   resp.data.file_system.lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.data.file_system.lustre_configuration.deployment_type #=> String, one of ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"]
    #   resp.data.file_system.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.data.file_system.lustre_configuration.mount_name #=> String
    #   resp.data.file_system.lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.file_system.lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.file_system.lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.file_system.lustre_configuration.drive_cache_type #=> String, one of ["NONE", "READ"]
    #   resp.data.file_system.lustre_configuration.data_compression_type #=> String, one of ["NONE", "LZ4"]
    #   resp.data.file_system.lustre_configuration.log_configuration #=> Types::LustreLogConfiguration
    #   resp.data.file_system.lustre_configuration.log_configuration.level #=> String, one of ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"]
    #   resp.data.file_system.lustre_configuration.log_configuration.destination #=> String
    #   resp.data.file_system.lustre_configuration.root_squash_configuration #=> Types::LustreRootSquashConfiguration
    #   resp.data.file_system.lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.data.file_system.lustre_configuration.root_squash_configuration.no_squash_nids #=> Array<String>
    #   resp.data.file_system.lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.data.file_system.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.file_system.administrative_actions[0] #=> Types::AdministrativeAction
    #   resp.data.file_system.administrative_actions[0].administrative_action_type #=> String, one of ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS"]
    #   resp.data.file_system.administrative_actions[0].progress_percent #=> Integer
    #   resp.data.file_system.administrative_actions[0].request_time #=> Time
    #   resp.data.file_system.administrative_actions[0].status #=> String, one of ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"]
    #   resp.data.file_system.administrative_actions[0].target_file_system_values #=> Types::FileSystem
    #   resp.data.file_system.administrative_actions[0].failure_details #=> Types::AdministrativeActionFailureDetails
    #   resp.data.file_system.administrative_actions[0].failure_details.message #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values #=> Types::Volume
    #   resp.data.file_system.administrative_actions[0].target_volume_values.creation_time #=> Time
    #   resp.data.file_system.administrative_actions[0].target_volume_values.file_system_id #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.lifecycle #=> String, one of ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.name #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration #=> Types::OntapVolumeConfiguration
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.flex_cache_endpoint_type #=> String, one of ["NONE", "ORIGIN", "CACHE"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.junction_path #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.security_style #=> String, one of ["UNIX", "NTFS", "MIXED"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.size_in_megabytes #=> Integer
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy #=> Types::TieringPolicy
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.name #=> String, one of ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.uuid #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.ontap_configuration.ontap_volume_type #=> String, one of ["RW", "DP", "LS"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.resource_arn #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.tags #=> Array<Tag>
    #   resp.data.file_system.administrative_actions[0].target_volume_values.volume_id #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.volume_type #=> String, one of ["ONTAP", "OPENZFS"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.lifecycle_transition_reason #=> Types::LifecycleTransitionReason
    #   resp.data.file_system.administrative_actions[0].target_volume_values.lifecycle_transition_reason.message #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration #=> Types::OpenZFSVolumeConfiguration
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.parent_volume_id #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.volume_path #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.data_compression_type #=> String, one of ["NONE", "ZSTD", "LZ4"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot #=> Types::OpenZFSOriginSnapshotConfiguration
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of ["CLONE", "FULL_COPY"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.read_only #=> Boolean
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports #=> Array<OpenZFSNfsExport>
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0] #=> Types::OpenZFSNfsExport
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations #=> Array<OpenZFSClientConfiguration>
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0] #=> Types::OpenZFSClientConfiguration
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array<String>
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas #=> Array<OpenZFSUserOrGroupQuota>
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0] #=> Types::OpenZFSUserOrGroupQuota
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of ["USER", "GROUP"]
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.data.file_system.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values #=> Types::Snapshot
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.resource_arn #=> String
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.snapshot_id #=> String
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.name #=> String
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.volume_id #=> String
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.creation_time #=> Time
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.lifecycle #=> String, one of ["PENDING", "CREATING", "DELETING", "AVAILABLE"]
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.lifecycle_transition_reason #=> Types::LifecycleTransitionReason
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.tags #=> Array<Tag>
    #   resp.data.file_system.administrative_actions[0].target_snapshot_values.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.file_system.ontap_configuration #=> Types::OntapFileSystemConfiguration
    #   resp.data.file_system.ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.file_system.ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.file_system.ontap_configuration.deployment_type #=> String, one of ["MULTI_AZ_1", "SINGLE_AZ_1"]
    #   resp.data.file_system.ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.data.file_system.ontap_configuration.endpoints #=> Types::FileSystemEndpoints
    #   resp.data.file_system.ontap_configuration.endpoints.intercluster #=> Types::FileSystemEndpoint
    #   resp.data.file_system.ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.data.file_system.ontap_configuration.endpoints.intercluster.ip_addresses #=> Array<String>
    #   resp.data.file_system.ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.data.file_system.ontap_configuration.endpoints.management #=> Types::FileSystemEndpoint
    #   resp.data.file_system.ontap_configuration.disk_iops_configuration #=> Types::DiskIopsConfiguration
    #   resp.data.file_system.ontap_configuration.disk_iops_configuration.mode #=> String, one of ["AUTOMATIC", "USER_PROVISIONED"]
    #   resp.data.file_system.ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.data.file_system.ontap_configuration.preferred_subnet_id #=> String
    #   resp.data.file_system.ontap_configuration.route_table_ids #=> Array<String>
    #   resp.data.file_system.ontap_configuration.route_table_ids[0] #=> String
    #   resp.data.file_system.ontap_configuration.throughput_capacity #=> Integer
    #   resp.data.file_system.ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.file_system.file_system_type_version #=> String
    #   resp.data.file_system.open_zfs_configuration #=> Types::OpenZFSFileSystemConfiguration
    #   resp.data.file_system.open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.file_system.open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.file_system.open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.data.file_system.open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.file_system.open_zfs_configuration.deployment_type #=> String, one of ["SINGLE_AZ_1"]
    #   resp.data.file_system.open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.data.file_system.open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.file_system.open_zfs_configuration.disk_iops_configuration #=> Types::DiskIopsConfiguration
    #   resp.data.file_system.open_zfs_configuration.root_volume_id #=> String
    #
    def update_file_system(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFileSystemInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFileSystemInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFileSystem
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::IncompatibleParameterError, Errors::MissingFileSystemConfiguration, Errors::BadRequest, Errors::FileSystemNotFound, Errors::UnsupportedOperation, Errors::ServiceLimitExceeded]),
        data_parser: Parsers::UpdateFileSystem
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFileSystem,
        stubs: @stubs,
        params_class: Params::UpdateFileSystemOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_file_system
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the name of an Amazon FSx for OpenZFS snapshot.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSnapshotInput}.
    #
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 64
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #
    # @option params [String] :name
    #   <p>The name of the snapshot to update.</p>
    #
    # @option params [String] :snapshot_id
    #   <p>The ID of the snapshot that you want to update, in the format
    #                   <code>fsvolsnap-0123456789abcdef0</code>.</p>
    #
    # @return [Types::UpdateSnapshotOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_snapshot(
    #     client_request_token: 'ClientRequestToken',
    #     name: 'Name', # required
    #     snapshot_id: 'SnapshotId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSnapshotOutput
    #   resp.data.snapshot #=> Types::Snapshot
    #   resp.data.snapshot.resource_arn #=> String
    #   resp.data.snapshot.snapshot_id #=> String
    #   resp.data.snapshot.name #=> String
    #   resp.data.snapshot.volume_id #=> String
    #   resp.data.snapshot.creation_time #=> Time
    #   resp.data.snapshot.lifecycle #=> String, one of ["PENDING", "CREATING", "DELETING", "AVAILABLE"]
    #   resp.data.snapshot.lifecycle_transition_reason #=> Types::LifecycleTransitionReason
    #   resp.data.snapshot.lifecycle_transition_reason.message #=> String
    #   resp.data.snapshot.tags #=> Array<Tag>
    #   resp.data.snapshot.tags[0] #=> Types::Tag
    #   resp.data.snapshot.tags[0].key #=> String
    #   resp.data.snapshot.tags[0].value #=> String
    #   resp.data.snapshot.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.snapshot.administrative_actions[0] #=> Types::AdministrativeAction
    #   resp.data.snapshot.administrative_actions[0].administrative_action_type #=> String, one of ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS"]
    #   resp.data.snapshot.administrative_actions[0].progress_percent #=> Integer
    #   resp.data.snapshot.administrative_actions[0].request_time #=> Time
    #   resp.data.snapshot.administrative_actions[0].status #=> String, one of ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values #=> Types::FileSystem
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.owner_id #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.creation_time #=> Time
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.file_system_id #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.file_system_type #=> String, one of ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lifecycle #=> String, one of ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.failure_details #=> Types::FileSystemFailureDetails
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.failure_details.message #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.storage_capacity #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.storage_type #=> String, one of ["SSD", "HDD"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.vpc_id #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.subnet_ids #=> Array<String>
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.subnet_ids[0] #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.network_interface_ids #=> Array<String>
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.network_interface_ids[0] #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.dns_name #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.kms_key_id #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.resource_arn #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.tags #=> Array<Tag>
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration #=> Types::WindowsFileSystemConfiguration
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.active_directory_id #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration #=> Types::SelfManagedActiveDirectoryAttributes
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array<String>
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.deployment_type #=> String, one of ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.remote_administration_endpoint #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.preferred_subnet_id #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.preferred_file_server_ip #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.throughput_capacity #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress #=> Array<String>
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of ["PATCHING", "BACKING_UP"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.aliases #=> Array<Alias>
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.aliases[0] #=> Types::Alias
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].name #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].lifecycle #=> String, one of ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration #=> Types::WindowsAuditLogConfiguration
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration #=> Types::LustreFileSystemConfiguration
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration #=> Types::DataRepositoryConfiguration
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.lifecycle #=> String, one of ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.failure_details #=> Types::DataRepositoryFailureDetails
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.deployment_type #=> String, one of ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.mount_name #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.drive_cache_type #=> String, one of ["NONE", "READ"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.data_compression_type #=> String, one of ["NONE", "LZ4"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration #=> Types::LustreLogConfiguration
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.level #=> String, one of ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.destination #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration #=> Types::LustreRootSquashConfiguration
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids #=> Array<String>
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration #=> Types::OntapFileSystemConfiguration
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.deployment_type #=> String, one of ["MULTI_AZ_1", "SINGLE_AZ_1"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints #=> Types::FileSystemEndpoints
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster #=> Types::FileSystemEndpoint
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses #=> Array<String>
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management #=> Types::FileSystemEndpoint
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration #=> Types::DiskIopsConfiguration
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.mode #=> String, one of ["AUTOMATIC", "USER_PROVISIONED"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.preferred_subnet_id #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids #=> Array<String>
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids[0] #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.throughput_capacity #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.file_system_type_version #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration #=> Types::OpenZFSFileSystemConfiguration
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.deployment_type #=> String, one of ["SINGLE_AZ_1"]
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.disk_iops_configuration #=> Types::DiskIopsConfiguration
    #   resp.data.snapshot.administrative_actions[0].target_file_system_values.open_zfs_configuration.root_volume_id #=> String
    #   resp.data.snapshot.administrative_actions[0].failure_details #=> Types::AdministrativeActionFailureDetails
    #   resp.data.snapshot.administrative_actions[0].failure_details.message #=> String
    #   resp.data.snapshot.administrative_actions[0].target_volume_values #=> Types::Volume
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.creation_time #=> Time
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.file_system_id #=> String
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.lifecycle #=> String, one of ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"]
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.name #=> String
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.ontap_configuration #=> Types::OntapVolumeConfiguration
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.flex_cache_endpoint_type #=> String, one of ["NONE", "ORIGIN", "CACHE"]
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.junction_path #=> String
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.security_style #=> String, one of ["UNIX", "NTFS", "MIXED"]
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.size_in_megabytes #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy #=> Types::TieringPolicy
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.tiering_policy.name #=> String, one of ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.uuid #=> String
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.ontap_configuration.ontap_volume_type #=> String, one of ["RW", "DP", "LS"]
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.resource_arn #=> String
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.tags #=> Array<Tag>
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.volume_id #=> String
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.volume_type #=> String, one of ["ONTAP", "OPENZFS"]
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.lifecycle_transition_reason #=> Types::LifecycleTransitionReason
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration #=> Types::OpenZFSVolumeConfiguration
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.parent_volume_id #=> String
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.volume_path #=> String
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.data_compression_type #=> String, one of ["NONE", "ZSTD", "LZ4"]
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot #=> Types::OpenZFSOriginSnapshotConfiguration
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of ["CLONE", "FULL_COPY"]
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.read_only #=> Boolean
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports #=> Array<OpenZFSNfsExport>
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0] #=> Types::OpenZFSNfsExport
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations #=> Array<OpenZFSClientConfiguration>
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0] #=> Types::OpenZFSClientConfiguration
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array<String>
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas #=> Array<OpenZFSUserOrGroupQuota>
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0] #=> Types::OpenZFSUserOrGroupQuota
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of ["USER", "GROUP"]
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_volume_values.open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #   resp.data.snapshot.administrative_actions[0].target_snapshot_values #=> Types::Snapshot
    #
    def update_snapshot(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSnapshotInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSnapshotInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSnapshot
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::BadRequest, Errors::SnapshotNotFound]),
        data_parser: Parsers::UpdateSnapshot
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSnapshot,
        stubs: @stubs,
        params_class: Params::UpdateSnapshotOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_snapshot
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an Amazon FSx for ONTAP storage virtual machine (SVM).</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateStorageVirtualMachineInput}.
    #
    # @option params [UpdateSvmActiveDirectoryConfiguration] :active_directory_configuration
    #   <p>Updates the Microsoft Active Directory (AD) configuration for an SVM that is joined to an AD.</p>
    #
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 64
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #
    # @option params [String] :storage_virtual_machine_id
    #   <p>The ID of the SVM that you want to update, in the format <code>svm-0123456789abcdef0</code>.</p>
    #
    # @option params [String] :svm_admin_password
    #   <p>Enter a new SvmAdminPassword if you are updating it.</p>
    #
    # @return [Types::UpdateStorageVirtualMachineOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_storage_virtual_machine(
    #     active_directory_configuration: {
    #       self_managed_active_directory_configuration: {
    #         user_name: 'UserName',
    #         password: 'Password',
    #         dns_ips: [
    #           'member'
    #         ]
    #       }
    #     },
    #     client_request_token: 'ClientRequestToken',
    #     storage_virtual_machine_id: 'StorageVirtualMachineId', # required
    #     svm_admin_password: 'SvmAdminPassword'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateStorageVirtualMachineOutput
    #   resp.data.storage_virtual_machine #=> Types::StorageVirtualMachine
    #   resp.data.storage_virtual_machine.active_directory_configuration #=> Types::SvmActiveDirectoryConfiguration
    #   resp.data.storage_virtual_machine.active_directory_configuration.net_bios_name #=> String
    #   resp.data.storage_virtual_machine.active_directory_configuration.self_managed_active_directory_configuration #=> Types::SelfManagedActiveDirectoryAttributes
    #   resp.data.storage_virtual_machine.active_directory_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.data.storage_virtual_machine.active_directory_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.data.storage_virtual_machine.active_directory_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.data.storage_virtual_machine.active_directory_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.data.storage_virtual_machine.active_directory_configuration.self_managed_active_directory_configuration.dns_ips #=> Array<String>
    #   resp.data.storage_virtual_machine.active_directory_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.data.storage_virtual_machine.creation_time #=> Time
    #   resp.data.storage_virtual_machine.endpoints #=> Types::SvmEndpoints
    #   resp.data.storage_virtual_machine.endpoints.iscsi #=> Types::SvmEndpoint
    #   resp.data.storage_virtual_machine.endpoints.iscsi.dns_name #=> String
    #   resp.data.storage_virtual_machine.endpoints.iscsi.ip_addresses #=> Array<String>
    #   resp.data.storage_virtual_machine.endpoints.iscsi.ip_addresses[0] #=> String
    #   resp.data.storage_virtual_machine.endpoints.management #=> Types::SvmEndpoint
    #   resp.data.storage_virtual_machine.endpoints.nfs #=> Types::SvmEndpoint
    #   resp.data.storage_virtual_machine.endpoints.smb #=> Types::SvmEndpoint
    #   resp.data.storage_virtual_machine.file_system_id #=> String
    #   resp.data.storage_virtual_machine.lifecycle #=> String, one of ["CREATED", "CREATING", "DELETING", "FAILED", "MISCONFIGURED", "PENDING"]
    #   resp.data.storage_virtual_machine.name #=> String
    #   resp.data.storage_virtual_machine.resource_arn #=> String
    #   resp.data.storage_virtual_machine.storage_virtual_machine_id #=> String
    #   resp.data.storage_virtual_machine.subtype #=> String, one of ["DEFAULT", "DP_DESTINATION", "SYNC_DESTINATION", "SYNC_SOURCE"]
    #   resp.data.storage_virtual_machine.uuid #=> String
    #   resp.data.storage_virtual_machine.tags #=> Array<Tag>
    #   resp.data.storage_virtual_machine.tags[0] #=> Types::Tag
    #   resp.data.storage_virtual_machine.tags[0].key #=> String
    #   resp.data.storage_virtual_machine.tags[0].value #=> String
    #   resp.data.storage_virtual_machine.lifecycle_transition_reason #=> Types::LifecycleTransitionReason
    #   resp.data.storage_virtual_machine.lifecycle_transition_reason.message #=> String
    #   resp.data.storage_virtual_machine.root_volume_security_style #=> String, one of ["UNIX", "NTFS", "MIXED"]
    #
    def update_storage_virtual_machine(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateStorageVirtualMachineInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateStorageVirtualMachineInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateStorageVirtualMachine
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::IncompatibleParameterError, Errors::StorageVirtualMachineNotFound, Errors::BadRequest, Errors::UnsupportedOperation]),
        data_parser: Parsers::UpdateStorageVirtualMachine
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateStorageVirtualMachine,
        stubs: @stubs,
        params_class: Params::UpdateStorageVirtualMachineOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_storage_virtual_machine
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the configuration of an Amazon FSx for NetApp ONTAP or Amazon FSx for OpenZFS volume.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateVolumeInput}.
    #
    # @option params [String] :client_request_token
    #   <p>(Optional) An idempotency token for resource creation, in a string of up to 64
    #               ASCII characters. This token is automatically filled on your behalf when you use the
    #               Command Line Interface (CLI) or an Amazon Web Services SDK.</p>
    #
    # @option params [String] :volume_id
    #   <p>The ID of the volume that you want to update, in the format
    #                   <code>fsvol-0123456789abcdef0</code>.</p>
    #
    # @option params [UpdateOntapVolumeConfiguration] :ontap_configuration
    #   <p>The configuration of the ONTAP volume that you are updating.</p>
    #
    # @option params [String] :name
    #   <p>The name of the OpenZFS volume. OpenZFS root volumes are automatically named
    #                   <code>FSX</code>. Child volume names must be unique among their parent volume's
    #               children. The name of the volume is part of the mount string for the OpenZFS volume. </p>
    #
    # @option params [UpdateOpenZFSVolumeConfiguration] :open_zfs_configuration
    #   <p>The configuration of the OpenZFS volume that you are updating.</p>
    #
    # @return [Types::UpdateVolumeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_volume(
    #     client_request_token: 'ClientRequestToken',
    #     volume_id: 'VolumeId', # required
    #     ontap_configuration: {
    #       junction_path: 'JunctionPath',
    #       security_style: 'UNIX', # accepts ["UNIX", "NTFS", "MIXED"]
    #       size_in_megabytes: 1,
    #       storage_efficiency_enabled: false,
    #       tiering_policy: {
    #         cooling_period: 1,
    #         name: 'SNAPSHOT_ONLY' # accepts ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #       }
    #     },
    #     name: 'Name',
    #     open_zfs_configuration: {
    #       storage_capacity_reservation_gi_b: 1,
    #       storage_capacity_quota_gi_b: 1,
    #       record_size_ki_b: 1,
    #       data_compression_type: 'NONE', # accepts ["NONE", "ZSTD", "LZ4"]
    #       nfs_exports: [
    #         {
    #           client_configurations: [
    #             {
    #               clients: 'Clients', # required
    #               options: [
    #                 'member'
    #               ] # required
    #             }
    #           ] # required
    #         }
    #       ],
    #       user_and_group_quotas: [
    #         {
    #           type: 'USER', # required - accepts ["USER", "GROUP"]
    #           id: 1, # required
    #           storage_capacity_quota_gi_b: 1 # required
    #         }
    #       ],
    #       read_only: false
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateVolumeOutput
    #   resp.data.volume #=> Types::Volume
    #   resp.data.volume.creation_time #=> Time
    #   resp.data.volume.file_system_id #=> String
    #   resp.data.volume.lifecycle #=> String, one of ["CREATING", "CREATED", "DELETING", "FAILED", "MISCONFIGURED", "PENDING", "AVAILABLE"]
    #   resp.data.volume.name #=> String
    #   resp.data.volume.ontap_configuration #=> Types::OntapVolumeConfiguration
    #   resp.data.volume.ontap_configuration.flex_cache_endpoint_type #=> String, one of ["NONE", "ORIGIN", "CACHE"]
    #   resp.data.volume.ontap_configuration.junction_path #=> String
    #   resp.data.volume.ontap_configuration.security_style #=> String, one of ["UNIX", "NTFS", "MIXED"]
    #   resp.data.volume.ontap_configuration.size_in_megabytes #=> Integer
    #   resp.data.volume.ontap_configuration.storage_efficiency_enabled #=> Boolean
    #   resp.data.volume.ontap_configuration.storage_virtual_machine_id #=> String
    #   resp.data.volume.ontap_configuration.storage_virtual_machine_root #=> Boolean
    #   resp.data.volume.ontap_configuration.tiering_policy #=> Types::TieringPolicy
    #   resp.data.volume.ontap_configuration.tiering_policy.cooling_period #=> Integer
    #   resp.data.volume.ontap_configuration.tiering_policy.name #=> String, one of ["SNAPSHOT_ONLY", "AUTO", "ALL", "NONE"]
    #   resp.data.volume.ontap_configuration.uuid #=> String
    #   resp.data.volume.ontap_configuration.ontap_volume_type #=> String, one of ["RW", "DP", "LS"]
    #   resp.data.volume.resource_arn #=> String
    #   resp.data.volume.tags #=> Array<Tag>
    #   resp.data.volume.tags[0] #=> Types::Tag
    #   resp.data.volume.tags[0].key #=> String
    #   resp.data.volume.tags[0].value #=> String
    #   resp.data.volume.volume_id #=> String
    #   resp.data.volume.volume_type #=> String, one of ["ONTAP", "OPENZFS"]
    #   resp.data.volume.lifecycle_transition_reason #=> Types::LifecycleTransitionReason
    #   resp.data.volume.lifecycle_transition_reason.message #=> String
    #   resp.data.volume.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.volume.administrative_actions[0] #=> Types::AdministrativeAction
    #   resp.data.volume.administrative_actions[0].administrative_action_type #=> String, one of ["FILE_SYSTEM_UPDATE", "STORAGE_OPTIMIZATION", "FILE_SYSTEM_ALIAS_ASSOCIATION", "FILE_SYSTEM_ALIAS_DISASSOCIATION", "VOLUME_UPDATE", "SNAPSHOT_UPDATE", "RELEASE_NFS_V3_LOCKS"]
    #   resp.data.volume.administrative_actions[0].progress_percent #=> Integer
    #   resp.data.volume.administrative_actions[0].request_time #=> Time
    #   resp.data.volume.administrative_actions[0].status #=> String, one of ["FAILED", "IN_PROGRESS", "PENDING", "COMPLETED", "UPDATED_OPTIMIZING"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values #=> Types::FileSystem
    #   resp.data.volume.administrative_actions[0].target_file_system_values.owner_id #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.creation_time #=> Time
    #   resp.data.volume.administrative_actions[0].target_file_system_values.file_system_id #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.file_system_type #=> String, one of ["WINDOWS", "LUSTRE", "ONTAP", "OPENZFS"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lifecycle #=> String, one of ["AVAILABLE", "CREATING", "FAILED", "DELETING", "MISCONFIGURED", "UPDATING", "MISCONFIGURED_UNAVAILABLE"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.failure_details #=> Types::FileSystemFailureDetails
    #   resp.data.volume.administrative_actions[0].target_file_system_values.failure_details.message #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.storage_capacity #=> Integer
    #   resp.data.volume.administrative_actions[0].target_file_system_values.storage_type #=> String, one of ["SSD", "HDD"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.vpc_id #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.subnet_ids #=> Array<String>
    #   resp.data.volume.administrative_actions[0].target_file_system_values.subnet_ids[0] #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.network_interface_ids #=> Array<String>
    #   resp.data.volume.administrative_actions[0].target_file_system_values.network_interface_ids[0] #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.dns_name #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.kms_key_id #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.resource_arn #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.tags #=> Array<Tag>
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration #=> Types::WindowsFileSystemConfiguration
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.active_directory_id #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration #=> Types::SelfManagedActiveDirectoryAttributes
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.domain_name #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.organizational_unit_distinguished_name #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.file_system_administrators_group #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.user_name #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips #=> Array<String>
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.self_managed_active_directory_configuration.dns_ips[0] #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.deployment_type #=> String, one of ["MULTI_AZ_1", "SINGLE_AZ_1", "SINGLE_AZ_2"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.remote_administration_endpoint #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.preferred_subnet_id #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.preferred_file_server_ip #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.throughput_capacity #=> Integer
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress #=> Array<String>
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.maintenance_operations_in_progress[0] #=> String, one of ["PATCHING", "BACKING_UP"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.aliases #=> Array<Alias>
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.aliases[0] #=> Types::Alias
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].name #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.aliases[0].lifecycle #=> String, one of ["AVAILABLE", "CREATING", "DELETING", "CREATE_FAILED", "DELETE_FAILED"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration #=> Types::WindowsAuditLogConfiguration
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_access_audit_log_level #=> String, one of ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.file_share_access_audit_log_level #=> String, one of ["DISABLED", "SUCCESS_ONLY", "FAILURE_ONLY", "SUCCESS_AND_FAILURE"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.windows_configuration.audit_log_configuration.audit_log_destination #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration #=> Types::LustreFileSystemConfiguration
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration #=> Types::DataRepositoryConfiguration
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.lifecycle #=> String, one of ["CREATING", "AVAILABLE", "MISCONFIGURED", "UPDATING", "DELETING", "FAILED"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.import_path #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.export_path #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.imported_file_chunk_size #=> Integer
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.auto_import_policy #=> String, one of ["NONE", "NEW", "NEW_CHANGED", "NEW_CHANGED_DELETED"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.failure_details #=> Types::DataRepositoryFailureDetails
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_repository_configuration.failure_details.message #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.deployment_type #=> String, one of ["SCRATCH_1", "SCRATCH_2", "PERSISTENT_1", "PERSISTENT_2"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.per_unit_storage_throughput #=> Integer
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.mount_name #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.drive_cache_type #=> String, one of ["NONE", "READ"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.data_compression_type #=> String, one of ["NONE", "LZ4"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration #=> Types::LustreLogConfiguration
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.level #=> String, one of ["DISABLED", "WARN_ONLY", "ERROR_ONLY", "WARN_ERROR"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.log_configuration.destination #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration #=> Types::LustreRootSquashConfiguration
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.root_squash #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids #=> Array<String>
    #   resp.data.volume.administrative_actions[0].target_file_system_values.lustre_configuration.root_squash_configuration.no_squash_nids[0] #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration #=> Types::OntapFileSystemConfiguration
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.deployment_type #=> String, one of ["MULTI_AZ_1", "SINGLE_AZ_1"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoint_ip_address_range #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints #=> Types::FileSystemEndpoints
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster #=> Types::FileSystemEndpoint
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.dns_name #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses #=> Array<String>
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.intercluster.ip_addresses[0] #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.endpoints.management #=> Types::FileSystemEndpoint
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration #=> Types::DiskIopsConfiguration
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.mode #=> String, one of ["AUTOMATIC", "USER_PROVISIONED"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.disk_iops_configuration.iops #=> Integer
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.preferred_subnet_id #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids #=> Array<String>
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.route_table_ids[0] #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.throughput_capacity #=> Integer
    #   resp.data.volume.administrative_actions[0].target_file_system_values.ontap_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.file_system_type_version #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration #=> Types::OpenZFSFileSystemConfiguration
    #   resp.data.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.automatic_backup_retention_days #=> Integer
    #   resp.data.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_backups #=> Boolean
    #   resp.data.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.copy_tags_to_volumes #=> Boolean
    #   resp.data.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.daily_automatic_backup_start_time #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.deployment_type #=> String, one of ["SINGLE_AZ_1"]
    #   resp.data.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.throughput_capacity #=> Integer
    #   resp.data.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.weekly_maintenance_start_time #=> String
    #   resp.data.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.disk_iops_configuration #=> Types::DiskIopsConfiguration
    #   resp.data.volume.administrative_actions[0].target_file_system_values.open_zfs_configuration.root_volume_id #=> String
    #   resp.data.volume.administrative_actions[0].failure_details #=> Types::AdministrativeActionFailureDetails
    #   resp.data.volume.administrative_actions[0].failure_details.message #=> String
    #   resp.data.volume.administrative_actions[0].target_volume_values #=> Types::Volume
    #   resp.data.volume.administrative_actions[0].target_snapshot_values #=> Types::Snapshot
    #   resp.data.volume.administrative_actions[0].target_snapshot_values.resource_arn #=> String
    #   resp.data.volume.administrative_actions[0].target_snapshot_values.snapshot_id #=> String
    #   resp.data.volume.administrative_actions[0].target_snapshot_values.name #=> String
    #   resp.data.volume.administrative_actions[0].target_snapshot_values.volume_id #=> String
    #   resp.data.volume.administrative_actions[0].target_snapshot_values.creation_time #=> Time
    #   resp.data.volume.administrative_actions[0].target_snapshot_values.lifecycle #=> String, one of ["PENDING", "CREATING", "DELETING", "AVAILABLE"]
    #   resp.data.volume.administrative_actions[0].target_snapshot_values.lifecycle_transition_reason #=> Types::LifecycleTransitionReason
    #   resp.data.volume.administrative_actions[0].target_snapshot_values.tags #=> Array<Tag>
    #   resp.data.volume.administrative_actions[0].target_snapshot_values.administrative_actions #=> Array<AdministrativeAction>
    #   resp.data.volume.open_zfs_configuration #=> Types::OpenZFSVolumeConfiguration
    #   resp.data.volume.open_zfs_configuration.parent_volume_id #=> String
    #   resp.data.volume.open_zfs_configuration.volume_path #=> String
    #   resp.data.volume.open_zfs_configuration.storage_capacity_reservation_gi_b #=> Integer
    #   resp.data.volume.open_zfs_configuration.storage_capacity_quota_gi_b #=> Integer
    #   resp.data.volume.open_zfs_configuration.record_size_ki_b #=> Integer
    #   resp.data.volume.open_zfs_configuration.data_compression_type #=> String, one of ["NONE", "ZSTD", "LZ4"]
    #   resp.data.volume.open_zfs_configuration.copy_tags_to_snapshots #=> Boolean
    #   resp.data.volume.open_zfs_configuration.origin_snapshot #=> Types::OpenZFSOriginSnapshotConfiguration
    #   resp.data.volume.open_zfs_configuration.origin_snapshot.snapshot_arn #=> String
    #   resp.data.volume.open_zfs_configuration.origin_snapshot.copy_strategy #=> String, one of ["CLONE", "FULL_COPY"]
    #   resp.data.volume.open_zfs_configuration.read_only #=> Boolean
    #   resp.data.volume.open_zfs_configuration.nfs_exports #=> Array<OpenZFSNfsExport>
    #   resp.data.volume.open_zfs_configuration.nfs_exports[0] #=> Types::OpenZFSNfsExport
    #   resp.data.volume.open_zfs_configuration.nfs_exports[0].client_configurations #=> Array<OpenZFSClientConfiguration>
    #   resp.data.volume.open_zfs_configuration.nfs_exports[0].client_configurations[0] #=> Types::OpenZFSClientConfiguration
    #   resp.data.volume.open_zfs_configuration.nfs_exports[0].client_configurations[0].clients #=> String
    #   resp.data.volume.open_zfs_configuration.nfs_exports[0].client_configurations[0].options #=> Array<String>
    #   resp.data.volume.open_zfs_configuration.nfs_exports[0].client_configurations[0].options[0] #=> String
    #   resp.data.volume.open_zfs_configuration.user_and_group_quotas #=> Array<OpenZFSUserOrGroupQuota>
    #   resp.data.volume.open_zfs_configuration.user_and_group_quotas[0] #=> Types::OpenZFSUserOrGroupQuota
    #   resp.data.volume.open_zfs_configuration.user_and_group_quotas[0].type #=> String, one of ["USER", "GROUP"]
    #   resp.data.volume.open_zfs_configuration.user_and_group_quotas[0].id #=> Integer
    #   resp.data.volume.open_zfs_configuration.user_and_group_quotas[0].storage_capacity_quota_gi_b #=> Integer
    #
    def update_volume(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateVolumeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateVolumeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateVolume
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::IncompatibleParameterError, Errors::VolumeNotFound, Errors::BadRequest, Errors::MissingVolumeConfiguration]),
        data_parser: Parsers::UpdateVolume
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateVolume,
        stubs: @stubs,
        params_class: Params::UpdateVolumeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_volume
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
