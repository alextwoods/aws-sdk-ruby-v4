# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::EFS
  # An API client for MagnolioAPIService_v20150201
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon Elastic File System</fullname>
  #          <p>Amazon Elastic File System (Amazon EFS) provides simple, scalable file storage for
  #       use with Amazon EC2 Linux and Mac instances in the Amazon Web Services Cloud. With Amazon EFS, storage capacity is elastic, growing and shrinking automatically as you add and
  #       remove files, so that your applications have the storage they need, when they need it. For
  #       more information, see the <a href="https://docs.aws.amazon.com/efs/latest/ug/api-reference.html">Amazon Elastic File System API Reference</a> and the <a href="https://docs.aws.amazon.com/efs/latest/ug/whatisefs.html">Amazon Elastic File System User Guide</a>.</p>
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
    def initialize(config = AWS::SDK::EFS::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates an EFS access point. An access point is an application-specific view into an EFS
    #       file system that applies an operating system user and group, and a file system path, to any
    #       file system request made through the access point. The operating system user and group
    #       override any identity information provided by the NFS client. The file system path is exposed
    #       as the access point's root directory. Applications using the access point can only access data in
    #       the application's own directory and any subdirectories. To learn more, see <a href="https://docs.aws.amazon.com/efs/latest/ug/efs-access-points.html">Mounting a file system using EFS access
    #         points</a>.</p>
    #          <p>This operation requires permissions for the <code>elasticfilesystem:CreateAccessPoint</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAccessPointInput}.
    #
    # @option params [String] :client_token
    #   <p>A string of up to 64 ASCII characters that Amazon EFS uses to ensure idempotent
    #         creation.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Creates tags associated with the access point. Each tag is a key-value pair, each key must be unique. For more
    #         information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>
    #         in the <i>Amazon Web Services General Reference Guide</i>.</p>
    #
    # @option params [String] :file_system_id
    #   <p>The ID of the EFS file system that the access point provides access to.</p>
    #
    # @option params [PosixUser] :posix_user
    #   <p>The operating system user and
    #         group applied to all file system requests made using the access point.</p>
    #
    # @option params [RootDirectory] :root_directory
    #   <p>Specifies the directory on the Amazon EFS file system that the access point
    #         exposes as the root directory of your file system to NFS clients using the access point. The
    #         clients using the access point can only access the root directory and below. If the
    #           <code>RootDirectory</code> > <code>Path</code> specified does not exist, EFS creates it
    #         and applies the <code>CreationInfo</code> settings when a client connects to an access point.
    #         When specifying a <code>RootDirectory</code>, you must provide the <code>Path</code>, and the
    #           <code>CreationInfo</code>.</p>
    #            <p>Amazon EFS creates a root directory only if you have provided the  CreationInfo: OwnUid, OwnGID, and permissions for the directory.
    #         If  you do not provide this information, Amazon EFS does not create the root directory. If the root directory does not exist, attempts to mount
    #         using the access point will fail.</p>
    #
    # @return [Types::CreateAccessPointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_access_point(
    #     client_token: 'ClientToken', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     file_system_id: 'FileSystemId', # required
    #     posix_user: {
    #       uid: 1, # required
    #       gid: 1, # required
    #       secondary_gids: [
    #         1
    #       ]
    #     },
    #     root_directory: {
    #       path: 'Path',
    #       creation_info: {
    #         owner_uid: 1, # required
    #         owner_gid: 1, # required
    #         permissions: 'Permissions' # required
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAccessPointOutput
    #   resp.data.client_token #=> String
    #   resp.data.name #=> String
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.access_point_id #=> String
    #   resp.data.access_point_arn #=> String
    #   resp.data.file_system_id #=> String
    #   resp.data.posix_user #=> Types::PosixUser
    #   resp.data.posix_user.uid #=> Integer
    #   resp.data.posix_user.gid #=> Integer
    #   resp.data.posix_user.secondary_gids #=> Array<Integer>
    #   resp.data.posix_user.secondary_gids[0] #=> Integer
    #   resp.data.root_directory #=> Types::RootDirectory
    #   resp.data.root_directory.path #=> String
    #   resp.data.root_directory.creation_info #=> Types::CreationInfo
    #   resp.data.root_directory.creation_info.owner_uid #=> Integer
    #   resp.data.root_directory.creation_info.owner_gid #=> Integer
    #   resp.data.root_directory.creation_info.permissions #=> String
    #   resp.data.owner_id #=> String
    #   resp.data.life_cycle_state #=> String, one of ["creating", "available", "updating", "deleting", "deleted", "error"]
    #
    def create_access_point(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAccessPointInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAccessPointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAccessPoint
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FileSystemNotFound, Errors::BadRequest, Errors::AccessPointAlreadyExists, Errors::IncorrectFileSystemLifeCycleState, Errors::InternalServerError, Errors::ThrottlingException, Errors::AccessPointLimitExceeded]),
        data_parser: Parsers::CreateAccessPoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAccessPoint,
        stubs: @stubs,
        params_class: Params::CreateAccessPointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_access_point
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new, empty file system. The operation requires a creation token in the
    #       request that Amazon EFS uses to ensure idempotent creation (calling the operation with same
    #       creation token has no effect). If a file system does not currently exist that is owned by the
    #       caller's Amazon Web Services account with the specified creation token, this operation does the
    #       following:</p>
    #          <ul>
    #             <li>
    #                <p>Creates a new, empty file system. The file system will have an Amazon EFS assigned
    #           ID, and an initial lifecycle state <code>creating</code>.</p>
    #             </li>
    #             <li>
    #                <p>Returns with the description of the created file system.</p>
    #             </li>
    #          </ul>
    #          <p>Otherwise, this operation returns a <code>FileSystemAlreadyExists</code> error with the
    #       ID of the existing file system.</p>
    #          <note>
    #             <p>For basic use cases, you can use a randomly generated UUID for the creation
    #         token.</p>
    #          </note>
    #          <p> The idempotent operation allows you to retry a <code>CreateFileSystem</code> call without
    #       risk of creating an extra file system. This can happen when an initial call fails in a way
    #       that leaves it uncertain whether or not a file system was actually created. An example might
    #       be that a transport level timeout occurred or your connection was reset. As long as you use
    #       the same creation token, if the initial call had succeeded in creating a file system, the
    #       client can learn of its existence from the <code>FileSystemAlreadyExists</code> error.</p>
    #          <p>For more information, see
    #       <a href="https://docs.aws.amazon.com/efs/latest/ug/creating-using-create-fs.html#creating-using-create-fs-part1">Creating a file system</a>
    #      in the <i>Amazon EFS User Guide</i>.</p>
    #
    #          <note>
    #             <p>The <code>CreateFileSystem</code> call returns while the file system's lifecycle
    #         state is still <code>creating</code>. You can check the file system creation status by
    #         calling the <a>DescribeFileSystems</a> operation, which among other things returns the file
    #         system state.</p>
    #          </note>
    #
    #          <p>This operation accepts an optional <code>PerformanceMode</code> parameter that you
    #       choose for your file system. We recommend <code>generalPurpose</code> performance mode for
    #       most file systems. File systems using the <code>maxIO</code> performance mode can scale to
    #       higher levels of aggregate throughput and operations per second with a tradeoff of slightly
    #       higher latencies for most file operations. The performance mode can't be changed after
    #       the file system has been created. For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/performance.html#performancemodes.html">Amazon EFS performance
    #         modes</a>.</p>
    #
    #          <p>You can set the throughput mode for the file system using the <code>ThroughputMode</code> parameter.</p>
    #
    #          <p>After the file system is fully created, Amazon EFS sets its lifecycle state to
    #         <code>available</code>, at which point you can create one or more mount targets for the file
    #       system in your VPC. For more information, see <a>CreateMountTarget</a>. You mount your Amazon EFS file system on an EC2 instances in
    #       your VPC by using the mount target. For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/how-it-works.html">Amazon EFS: How it Works</a>. </p>
    #
    #          <p> This operation requires permissions for the
    #         <code>elasticfilesystem:CreateFileSystem</code> action. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateFileSystemInput}.
    #
    # @option params [String] :creation_token
    #   <p>A string of up to 64 ASCII characters. Amazon EFS uses this to ensure idempotent
    #         creation.</p>
    #
    # @option params [String] :performance_mode
    #   <p>The performance mode of the file system. We recommend <code>generalPurpose</code>
    #         performance mode for most file systems. File systems using the <code>maxIO</code> performance
    #         mode can scale to higher levels of aggregate throughput and operations per second with a
    #         tradeoff of slightly higher latencies for most file operations. The performance mode
    #         can't be changed after the file system has been created.</p>
    #            <note>
    #               <p>The <code>maxIO</code> mode is not supported on file systems using One Zone storage classes.</p>
    #            </note>
    #
    # @option params [Boolean] :encrypted
    #   <p>A Boolean value that, if true, creates an encrypted file system. When creating an
    #         encrypted file system, you have the option of specifying an existing Key Management Service key (KMS key).
    #         If you don't specify a KMS key, then the default KMS key for
    #         Amazon EFS, <code>/aws/elasticfilesystem</code>, is used to protect the encrypted file system.
    #       </p>
    #
    # @option params [String] :kms_key_id
    #   <p>The ID of the KMS key that you want to use to protect the encrypted file
    #         system. This parameter is required only if you want to use a non-default KMS key. If this parameter is not specified, the default KMS key for Amazon EFS is used. You can specify a KMS key ID using the following
    #         formats:</p>
    #            <ul>
    #               <li>
    #                  <p>Key ID - A unique identifier of the key, for example
    #               <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                  <p>ARN - An Amazon Resource Name (ARN) for the key, for example
    #               <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Key alias - A previously created display name for a key, for example
    #               <code>alias/projectKey1</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Key alias ARN - An ARN for a key alias, for example
    #               <code>arn:aws:kms:us-west-2:444455556666:alias/projectKey1</code>.</p>
    #               </li>
    #            </ul>
    #            <p>If you use <code>KmsKeyId</code>, you must set the <a>CreateFileSystemRequest$Encrypted</a>
    #         parameter to true.</p>
    #            <important>
    #               <p>EFS accepts only symmetric KMS keys. You cannot use asymmetric
    #         KMS keys with Amazon EFS file systems.</p>
    #            </important>
    #
    # @option params [String] :throughput_mode
    #   <p>Specifies the throughput mode for the file system, either <code>bursting</code> or
    #           <code>provisioned</code>. If you set <code>ThroughputMode</code> to
    #         <code>provisioned</code>, you must also set a value for
    #           <code>ProvisionedThroughputInMibps</code>. After you create the file system, you can
    #         decrease your file system's throughput in Provisioned Throughput mode or change between
    #         the throughput modes, as long as it’s been more than 24 hours since the last decrease or
    #         throughput mode change. For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/performance.html#provisioned-throughput">Specifying throughput with
    #           provisioned mode</a> in the <i>Amazon EFS User Guide</i>. </p>
    #            <p>Default is <code>bursting</code>.</p>
    #
    # @option params [Float] :provisioned_throughput_in_mibps
    #   <p>The throughput, measured in MiB/s, that you want to provision for a file system that
    #         you're creating. Valid values are 1-1024. Required if <code>ThroughputMode</code> is set
    #         to <code>provisioned</code>. The upper limit for throughput is 1024 MiB/s. To increase this
    #         limit, contact Amazon Web Services Support. For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/limits.html#soft-limits">Amazon EFS quotas that you can increase</a>
    #         in the <i>Amazon EFS User Guide</i>.</p>
    #
    # @option params [String] :availability_zone_name
    #   <p>Used to create a file system that uses One Zone storage classes. It specifies the Amazon Web Services
    #         Availability Zone in which to create the file system. Use the format <code>us-east-1a</code>
    #         to specify the Availability Zone. For
    #         more information about One Zone storage classes, see <a href="https://docs.aws.amazon.com/efs/latest/ug/storage-classes.html">Using EFS storage classes</a> in the <i>Amazon EFS User Guide</i>.</p>
    #            <note>
    #               <p>One Zone storage classes are not available in all Availability Zones in Amazon Web Services Regions where
    #           Amazon EFS is available.</p>
    #            </note>
    #
    # @option params [Boolean] :backup
    #   <p>Specifies whether automatic backups are enabled on the file system that you are creating.
    #         Set the value to <code>true</code> to enable automatic backups. If you are creating a file
    #         system that uses One Zone storage classes, automatic backups are enabled by default. For more
    #         information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/awsbackup.html#automatic-backups">Automatic backups</a> in the
    #           <i>Amazon EFS User Guide</i>.</p>
    #            <p>Default is <code>false</code>. However, if you specify an <code>AvailabilityZoneName</code>,
    #         the default is <code>true</code>.</p>
    #            <note>
    #               <p>Backup is not available in all Amazon Web Services Regions where Amazon EFS is available.</p>
    #            </note>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Use to create one or more tags associated with the file system. Each
    #           tag is a user-defined key-value pair. Name your file system on creation by including a
    #           <code>"Key":"Name","Value":"{value}"</code> key-value pair. Each key must be unique. For more
    #           information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>
    #           in the <i>Amazon Web Services General Reference Guide</i>.</p>
    #
    # @return [Types::CreateFileSystemOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_file_system(
    #     creation_token: 'CreationToken', # required
    #     performance_mode: 'generalPurpose', # accepts ["generalPurpose", "maxIO"]
    #     encrypted: false,
    #     kms_key_id: 'KmsKeyId',
    #     throughput_mode: 'bursting', # accepts ["bursting", "provisioned"]
    #     provisioned_throughput_in_mibps: 1.0,
    #     availability_zone_name: 'AvailabilityZoneName',
    #     backup: false,
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
    #   resp.data #=> Types::CreateFileSystemOutput
    #   resp.data.owner_id #=> String
    #   resp.data.creation_token #=> String
    #   resp.data.file_system_id #=> String
    #   resp.data.file_system_arn #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.life_cycle_state #=> String, one of ["creating", "available", "updating", "deleting", "deleted", "error"]
    #   resp.data.name #=> String
    #   resp.data.number_of_mount_targets #=> Integer
    #   resp.data.size_in_bytes #=> Types::FileSystemSize
    #   resp.data.size_in_bytes.value #=> Integer
    #   resp.data.size_in_bytes.timestamp #=> Time
    #   resp.data.size_in_bytes.value_in_ia #=> Integer
    #   resp.data.size_in_bytes.value_in_standard #=> Integer
    #   resp.data.performance_mode #=> String, one of ["generalPurpose", "maxIO"]
    #   resp.data.encrypted #=> Boolean
    #   resp.data.kms_key_id #=> String
    #   resp.data.throughput_mode #=> String, one of ["bursting", "provisioned"]
    #   resp.data.provisioned_throughput_in_mibps #=> Float
    #   resp.data.availability_zone_name #=> String
    #   resp.data.availability_zone_id #=> String
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def create_file_system(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFileSystemInput.build(params)
      response_body = StringIO.new
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::InsufficientThroughputCapacity, Errors::BadRequest, Errors::FileSystemAlreadyExists, Errors::FileSystemLimitExceeded, Errors::InternalServerError, Errors::ThroughputLimitExceeded, Errors::UnsupportedAvailabilityZone]),
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

    # <p>Creates a mount target for a file system. You can then mount the file system on EC2
    #       instances by using the mount target.</p>
    #          <p>You can create one mount target in each Availability Zone in your VPC. All EC2
    #       instances in a VPC within a given Availability Zone share a single mount target for a given
    #       file system. If you have multiple subnets in an Availability Zone, you create a mount target
    #       in one of the subnets. EC2 instances do not need to be in the same subnet as the mount target
    #       in order to access their file system.</p>
    #          <p>You can create only one mount target for an EFS file system using One Zone storage
    #       classes. You must create that mount target in the same Availability Zone in which the file
    #       system is located. Use the <code>AvailabilityZoneName</code> and
    #         <code>AvailabiltyZoneId</code> properties in the <a>DescribeFileSystems</a>
    #       response object to get this information. Use the <code>subnetId</code> associated with the
    #       file system's Availability Zone when creating the mount target.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/how-it-works.html">Amazon EFS: How it Works</a>. </p>
    #          <p>To create a mount target for a file system, the file system's lifecycle state must be
    #         <code>available</code>. For more information, see <a>DescribeFileSystems</a>.</p>
    #          <p>In the request, provide the following:</p>
    #          <ul>
    #             <li>
    #                <p>The file system ID for which you are creating the mount
    #         target.</p>
    #             </li>
    #             <li>
    #                <p>A subnet ID, which determines the following:</p>
    #                <ul>
    #                   <li>
    #                      <p>The VPC in which Amazon EFS creates the mount target</p>
    #                   </li>
    #                   <li>
    #                      <p>The Availability Zone in which Amazon EFS creates the mount target</p>
    #                   </li>
    #                   <li>
    #                      <p>The IP address range from which Amazon EFS selects the IP address of the mount target
    #               (if you don't specify an IP address in the request)</p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #
    #          <p>After creating the mount target, Amazon EFS returns a response that includes, a
    #         <code>MountTargetId</code> and an <code>IpAddress</code>. You use this IP address when
    #       mounting the file system in an EC2 instance. You can also use the mount target's DNS name
    #       when mounting the file system. The EC2 instance on which you mount the file system by using
    #       the mount target can resolve the mount target's DNS name to its IP address. For more
    #       information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/how-it-works.html#how-it-works-implementation">How it Works:
    #         Implementation Overview</a>. </p>
    #          <p>Note that you can create mount targets for a file system in only one VPC, and there can
    #       be only one mount target per Availability Zone. That is, if the file system already has one or
    #       more mount targets created for it, the subnet specified in the request to add another mount
    #       target must meet the following requirements:</p>
    #          <ul>
    #             <li>
    #                <p>Must belong to the same VPC as the subnets of the existing mount targets</p>
    #             </li>
    #             <li>
    #                <p>Must not be in the same Availability Zone as any of the subnets of the existing
    #           mount targets</p>
    #             </li>
    #          </ul>
    #
    #          <p>If the request satisfies the requirements, Amazon EFS does the following:</p>
    #          <ul>
    #             <li>
    #                <p>Creates a new mount target in the specified subnet.</p>
    #             </li>
    #             <li>
    #                <p>Also creates a new network interface in the subnet as follows:</p>
    #                <ul>
    #                   <li>
    #                      <p>If the request provides an <code>IpAddress</code>, Amazon EFS assigns that IP
    #               address to the network interface. Otherwise, Amazon EFS assigns a free address in the
    #               subnet (in the same way that the Amazon EC2 <code>CreateNetworkInterface</code> call
    #               does when a request does not specify a primary private IP address).</p>
    #                   </li>
    #                   <li>
    #                      <p>If the request provides <code>SecurityGroups</code>, this network interface is
    #               associated with those security groups. Otherwise, it belongs to the default security
    #               group for the subnet's VPC.</p>
    #                   </li>
    #                   <li>
    #                      <p>Assigns the description <code>Mount target <i>fsmt-id</i> for
    #                 file system <i>fs-id</i>
    #                         </code> where <code>
    #                            <i>fsmt-id</i>
    #                         </code> is the mount target ID, and <code>
    #                            <i>fs-id</i>
    #                         </code> is the <code>FileSystemId</code>.</p>
    #                   </li>
    #                   <li>
    #                      <p>Sets the <code>requesterManaged</code> property of the network interface to
    #                 <code>true</code>, and the <code>requesterId</code> value to
    #               <code>EFS</code>.</p>
    #                   </li>
    #                </ul>
    #                <p>Each Amazon EFS mount target has one corresponding requester-managed EC2 network
    #           interface. After the network interface is created, Amazon EFS sets the
    #             <code>NetworkInterfaceId</code> field in the mount target's description to the
    #           network interface ID, and the <code>IpAddress</code> field to its address. If network
    #           interface creation fails, the entire <code>CreateMountTarget</code> operation
    #           fails.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>The <code>CreateMountTarget</code> call returns only after creating the network
    #         interface, but while the mount target state is still <code>creating</code>, you can check
    #         the mount target creation status by calling the <a>DescribeMountTargets</a> operation, which among other things returns the mount
    #         target state.</p>
    #          </note>
    #          <p>We recommend that you create a mount target in each of the Availability Zones. There
    #       are cost considerations for using a file system in an Availability Zone through a mount target
    #       created in another Availability Zone. For more information, see <a href="http://aws.amazon.com/efs/">Amazon EFS</a>. In addition, by always using a mount target local to the
    #       instance's Availability Zone, you eliminate a partial failure scenario. If the
    #       Availability Zone in which your mount target is created goes down, then you can't access
    #       your file system through that mount target. </p>
    #          <p>This operation requires permissions for the following action on the file
    #       system:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>elasticfilesystem:CreateMountTarget</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>This operation also requires permissions for the following Amazon EC2
    #       actions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>ec2:DescribeSubnets</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ec2:DescribeNetworkInterfaces</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ec2:CreateNetworkInterface</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateMountTargetInput}.
    #
    # @option params [String] :file_system_id
    #   <p>The ID of the file system for which to create the mount target.</p>
    #
    # @option params [String] :subnet_id
    #   <p>The ID of the subnet to add the mount target in. For file systems that use One Zone storage classes, use the subnet
    #       that is associated with the file system's Availability Zone.</p>
    #
    # @option params [String] :ip_address
    #   <p>Valid IPv4 address within the address range of the specified subnet.</p>
    #
    # @option params [Array<String>] :security_groups
    #   <p>Up to five VPC security group IDs, of the form <code>sg-xxxxxxxx</code>. These must be
    #         for the same VPC as subnet specified.</p>
    #
    # @return [Types::CreateMountTargetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_mount_target(
    #     file_system_id: 'FileSystemId', # required
    #     subnet_id: 'SubnetId', # required
    #     ip_address: 'IpAddress',
    #     security_groups: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateMountTargetOutput
    #   resp.data.owner_id #=> String
    #   resp.data.mount_target_id #=> String
    #   resp.data.file_system_id #=> String
    #   resp.data.subnet_id #=> String
    #   resp.data.life_cycle_state #=> String, one of ["creating", "available", "updating", "deleting", "deleted", "error"]
    #   resp.data.ip_address #=> String
    #   resp.data.network_interface_id #=> String
    #   resp.data.availability_zone_id #=> String
    #   resp.data.availability_zone_name #=> String
    #   resp.data.vpc_id #=> String
    #
    def create_mount_target(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateMountTargetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateMountTargetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateMountTarget
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequest, Errors::AvailabilityZonesMismatch, Errors::NoFreeAddressesInSubnet, Errors::FileSystemNotFound, Errors::IpAddressInUse, Errors::IncorrectFileSystemLifeCycleState, Errors::InternalServerError, Errors::SecurityGroupLimitExceeded, Errors::MountTargetConflict, Errors::NetworkInterfaceLimitExceeded, Errors::SecurityGroupNotFound, Errors::SubnetNotFound, Errors::UnsupportedAvailabilityZone]),
        data_parser: Parsers::CreateMountTarget
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateMountTarget,
        stubs: @stubs,
        params_class: Params::CreateMountTargetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_mount_target
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a replication configuration that replicates an existing EFS file system to a new,
    #       read-only file system. For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/efs-replication.html">Amazon EFS replication</a> in the
    #           <i>Amazon EFS User Guide</i>. The replication configuration
    #       specifies the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Source file system</b> - An existing EFS file system that you
    #           want replicated. The source file system cannot be a destination file system in an existing
    #           replication configuration.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Destination file system configuration</b> - The configuration of
    #           the destination file system to which the source file system will be replicated. There can
    #           only be one destination file system in a replication configuration. The destination file
    #           system configuration consists of the following properties:</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <b>Amazon Web Services Region</b> - The Amazon Web Services Region in
    #               which the destination file system is created. Amazon EFS replication is
    #               available in all Amazon Web Services Regions that Amazon EFS is available in,
    #               except Africa (Cape Town), Asia Pacific (Hong Kong), Asia Pacific (Jakarta), Europe
    #               (Milan), and Middle East (Bahrain).</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>Availability Zone</b> - If you want the destination file system
    #               to use EFS One Zone availability and durability, you must specify the Availability
    #               Zone to create the file system in. For more information about EFS storage classes, see
    #                 <a href="https://docs.aws.amazon.com/efs/latest/ug/storage-classes.html">
    #                 Amazon EFS storage classes</a> in the <i>Amazon EFS User
    #                 Guide</i>.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <b>Encryption</b> - All destination file systems are created with
    #               encryption at rest enabled. You can specify the Key Management Service (KMS) key that is used to encrypt the destination file system. If you don't
    #               specify a KMS key, your service-managed KMS key for
    #                 Amazon EFS is used.  </p>
    #                      <note>
    #                         <p>After the file system is created, you cannot change the KMS key.</p>
    #                      </note>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #
    #          <p>The following properties are set by default:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Performance mode</b> - The destination file system's performance
    #           mode matches that of the source file system, unless the destination file system uses EFS
    #           One Zone storage. In that case, the General Purpose performance mode is used. The
    #           performance mode cannot be changed.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Throughput mode</b> - The destination file system uses the
    #           Bursting Throughput mode by default. After the file system is created, you can modify the
    #           throughput mode.</p>
    #             </li>
    #          </ul>
    #
    #          <p>The following properties are turned off by default:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Lifecycle management</b> - EFS lifecycle management and EFS
    #           Intelligent-Tiering are not enabled on the destination file system. After the destination
    #           file system is created, you can enable EFS lifecycle management and EFS
    #           Intelligent-Tiering.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Automatic backups</b> - Automatic daily backups not enabled on
    #           the destination file system. After the file system is created, you can change this
    #           setting.</p>
    #             </li>
    #          </ul>
    #
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/efs-replication.html">Amazon EFS replication</a> in the
    #           <i>Amazon EFS User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateReplicationConfigurationInput}.
    #
    # @option params [String] :source_file_system_id
    #   <p>Specifies the Amazon EFS file system that you want to replicate. This file system cannot already be
    #       a source or destination file system in another replication configuration.</p>
    #
    # @option params [Array<DestinationToCreate>] :destinations
    #   <p>An array of destination configuration objects. Only one destination configuration object is supported.</p>
    #
    # @return [Types::CreateReplicationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_replication_configuration(
    #     source_file_system_id: 'SourceFileSystemId', # required
    #     destinations: [
    #       {
    #         region: 'Region',
    #         availability_zone_name: 'AvailabilityZoneName',
    #         kms_key_id: 'KmsKeyId'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateReplicationConfigurationOutput
    #   resp.data.source_file_system_id #=> String
    #   resp.data.source_file_system_region #=> String
    #   resp.data.source_file_system_arn #=> String
    #   resp.data.original_source_file_system_arn #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.destinations #=> Array<Destination>
    #   resp.data.destinations[0] #=> Types::Destination
    #   resp.data.destinations[0].status #=> String, one of ["ENABLED", "ENABLING", "DELETING", "ERROR"]
    #   resp.data.destinations[0].file_system_id #=> String
    #   resp.data.destinations[0].region #=> String
    #   resp.data.destinations[0].last_replicated_timestamp #=> Time
    #
    def create_replication_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateReplicationConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateReplicationConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateReplicationConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FileSystemNotFound, Errors::InsufficientThroughputCapacity, Errors::BadRequest, Errors::IncorrectFileSystemLifeCycleState, Errors::FileSystemLimitExceeded, Errors::InternalServerError, Errors::ValidationException, Errors::ThroughputLimitExceeded, Errors::ReplicationNotFound, Errors::UnsupportedAvailabilityZone]),
        data_parser: Parsers::CreateReplicationConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateReplicationConfiguration,
        stubs: @stubs,
        params_class: Params::CreateReplicationConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_replication_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>DEPRECATED - <code>CreateTags</code> is deprecated and not maintained. To create tags for EFS
    #         resources, use the  API action.</p>
    #          </note>
    #          <p>Creates or overwrites tags associated with a file system. Each tag is a key-value pair. If
    #       a tag key specified in the request already exists on the file system, this operation
    #       overwrites its value with the value provided in the request. If you add the <code>Name</code>
    #       tag to your file system, Amazon EFS returns it in the response to the <a>DescribeFileSystems</a> operation. </p>
    #          <p>This operation requires permission for the <code>elasticfilesystem:CreateTags</code>
    #       action.</p>
    #
    # @deprecated
    #   Use TagResource.
    #
    # @param [Hash] params
    #   See {Types::CreateTagsInput}.
    #
    # @option params [String] :file_system_id
    #   <p>The ID of the file system whose tags you want to modify (String). This operation modifies
    #         the tags only, not the file system.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An array of <code>Tag</code> objects to add. Each <code>Tag</code> object is a key-value
    #         pair. </p>
    #
    # @return [Types::CreateTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_tags(
    #     file_system_id: 'FileSystemId', # required
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
    #   resp.data #=> Types::CreateTagsOutput
    #
    def create_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTagsInput.build(params)
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::FileSystemNotFound, Errors::BadRequest, Errors::InternalServerError]),
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

    # <p>Deletes the specified access point. After deletion is complete, new clients can no
    #       longer connect to the access points. Clients connected to the access point at the time of
    #       deletion will continue to function until they terminate their connection.</p>
    #          <p>This operation requires permissions for the <code>elasticfilesystem:DeleteAccessPoint</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAccessPointInput}.
    #
    # @option params [String] :access_point_id
    #   <p>The ID of the access point that you want to delete.</p>
    #
    # @return [Types::DeleteAccessPointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_access_point(
    #     access_point_id: 'AccessPointId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAccessPointOutput
    #
    def delete_access_point(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAccessPointInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAccessPointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAccessPoint
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::BadRequest, Errors::InternalServerError, Errors::AccessPointNotFound]),
        data_parser: Parsers::DeleteAccessPoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAccessPoint,
        stubs: @stubs,
        params_class: Params::DeleteAccessPointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_access_point
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a file system, permanently severing access to its contents. Upon return, the
    #       file system no longer exists and you can't access any contents of the deleted file
    #       system.</p>
    #          <p>You need to manually delete mount targets attached to a file system before you can delete
    #     an EFS file system. This step is performed for you when you use the Amazon Web Services console
    #     to delete a file system.</p>
    #          <note>
    #             <p>You cannot delete a file system that is part of an EFS Replication configuration.
    #       You need to delete the replication configuration first.</p>
    #          </note>
    #          <p> You can't delete a file system that is in use. That is, if the file system has
    #       any mount targets, you must first delete them. For more information, see <a>DescribeMountTargets</a> and <a>DeleteMountTarget</a>. </p>
    #
    #          <note>
    #             <p>The <code>DeleteFileSystem</code> call returns while the file system state is still
    #           <code>deleting</code>. You can check the file system deletion status by calling the <a>DescribeFileSystems</a> operation, which returns a list of file systems in your
    #         account. If you pass file system ID or creation token for the deleted file system, the <a>DescribeFileSystems</a> returns a <code>404 FileSystemNotFound</code>
    #         error.</p>
    #          </note>
    #
    #          <p>This operation requires permissions for the
    #         <code>elasticfilesystem:DeleteFileSystem</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFileSystemInput}.
    #
    # @option params [String] :file_system_id
    #   <p>The ID of the file system you want to delete.</p>
    #
    # @return [Types::DeleteFileSystemOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_file_system(
    #     file_system_id: 'FileSystemId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFileSystemOutput
    #
    def delete_file_system(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFileSystemInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFileSystemInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFileSystem
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::FileSystemNotFound, Errors::BadRequest, Errors::FileSystemInUse, Errors::InternalServerError]),
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

    # <p>Deletes the <code>FileSystemPolicy</code> for the specified file system.
    #       The default <code>FileSystemPolicy</code> goes into effect once the existing policy is deleted.
    #       For more information about the default file system policy, see <a href="https://docs.aws.amazon.com/efs/latest/ug/res-based-policies-efs.html">Using Resource-based Policies with EFS</a>.</p>
    #          <p>This operation requires permissions for the <code>elasticfilesystem:DeleteFileSystemPolicy</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFileSystemPolicyInput}.
    #
    # @option params [String] :file_system_id
    #   <p>Specifies the EFS file system for which to delete the <code>FileSystemPolicy</code>.</p>
    #
    # @return [Types::DeleteFileSystemPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_file_system_policy(
    #     file_system_id: 'FileSystemId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFileSystemPolicyOutput
    #
    def delete_file_system_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFileSystemPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFileSystemPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFileSystemPolicy
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FileSystemNotFound, Errors::BadRequest, Errors::IncorrectFileSystemLifeCycleState, Errors::InternalServerError]),
        data_parser: Parsers::DeleteFileSystemPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFileSystemPolicy,
        stubs: @stubs,
        params_class: Params::DeleteFileSystemPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_file_system_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified mount target.</p>
    #
    #          <p>This operation forcibly breaks any mounts of the file system by using the mount target
    #       that is being deleted, which might disrupt instances or applications using those mounts. To
    #       avoid applications getting cut off abruptly, you might consider unmounting any mounts of the
    #       mount target, if feasible. The operation also deletes the associated network interface.
    #       Uncommitted writes might be lost, but breaking a mount target using this operation does not
    #       corrupt the file system itself. The file system you created remains. You can mount an EC2
    #       instance in your VPC by using another mount target.</p>
    #          <p>This operation requires permissions for the following action on the file
    #       system:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>elasticfilesystem:DeleteMountTarget</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    #          <note>
    #             <p>The <code>DeleteMountTarget</code> call returns while the mount target state is still
    #           <code>deleting</code>. You can check the mount target deletion by calling the <a>DescribeMountTargets</a> operation, which returns a list of mount target
    #         descriptions for the given file system. </p>
    #          </note>
    #
    #          <p>The operation also requires permissions for the following Amazon EC2 action on the
    #       mount target's network interface:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>ec2:DeleteNetworkInterface</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteMountTargetInput}.
    #
    # @option params [String] :mount_target_id
    #   <p>The ID of the mount target to delete (String).</p>
    #
    # @return [Types::DeleteMountTargetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_mount_target(
    #     mount_target_id: 'MountTargetId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteMountTargetOutput
    #
    def delete_mount_target(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteMountTargetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteMountTargetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteMountTarget
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::MountTargetNotFound, Errors::BadRequest, Errors::InternalServerError, Errors::DependencyTimeout]),
        data_parser: Parsers::DeleteMountTarget
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteMountTarget,
        stubs: @stubs,
        params_class: Params::DeleteMountTargetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_mount_target
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing replication configuration. To delete a replication configuration, you
    #       must make the request from the Amazon Web Services Region in which the destination file system
    #       is located. Deleting a replication configuration ends the replication process. After a
    #       replication configuration is deleted, the destination file system is no longer read-only. You
    #       can write to the destination file system after its status becomes
    #       <code>Writeable</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteReplicationConfigurationInput}.
    #
    # @option params [String] :source_file_system_id
    #   <p>The ID of the source file system in the replication configuration.</p>
    #
    # @return [Types::DeleteReplicationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_replication_configuration(
    #     source_file_system_id: 'SourceFileSystemId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteReplicationConfigurationOutput
    #
    def delete_replication_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteReplicationConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteReplicationConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteReplicationConfiguration
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::FileSystemNotFound, Errors::BadRequest, Errors::InternalServerError, Errors::ReplicationNotFound]),
        data_parser: Parsers::DeleteReplicationConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteReplicationConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteReplicationConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_replication_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>DEPRECATED - <code>DeleteTags</code> is deprecated and not maintained. To remove tags from EFS
    #         resources, use the  API action.</p>
    #          </note>
    #          <p>Deletes the specified tags from a file system. If the <code>DeleteTags</code> request
    #       includes a tag key that doesn't exist, Amazon EFS ignores it and doesn't cause an
    #       error. For more information about tags and related restrictions, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html">Tag restrictions</a> in the
    #         <i>Billing and Cost Management User Guide</i>.</p>
    #
    #          <p>This operation requires permissions for the <code>elasticfilesystem:DeleteTags</code>
    #       action.</p>
    #
    # @deprecated
    #   Use UntagResource.
    #
    # @param [Hash] params
    #   See {Types::DeleteTagsInput}.
    #
    # @option params [String] :file_system_id
    #   <p>The ID of the file system whose tags you want to delete (String).</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys to delete.</p>
    #
    # @return [Types::DeleteTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tags(
    #     file_system_id: 'FileSystemId', # required
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
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::FileSystemNotFound, Errors::BadRequest, Errors::InternalServerError]),
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

    # <p>Returns the description of a specific Amazon EFS access point if the <code>AccessPointId</code> is provided.
    #       If you provide an EFS <code>FileSystemId</code>, it returns descriptions of all access points for that file system.
    #       You can provide either an <code>AccessPointId</code> or a <code>FileSystemId</code> in the request, but not both. </p>
    #          <p>This operation requires permissions for the <code>elasticfilesystem:DescribeAccessPoints</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAccessPointsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>(Optional) When retrieving all access points for a file system,
    #         you can optionally specify the <code>MaxItems</code> parameter to limit the number of objects returned in a response.
    #         The default value is 100. </p>
    #
    # @option params [String] :next_token
    #   <p>
    #               <code>NextToken</code> is present if the response is paginated. You can use
    #         <code>NextMarker</code> in the subsequent request to fetch the next page of access point descriptions.</p>
    #
    # @option params [String] :access_point_id
    #   <p>(Optional) Specifies an EFS access point to describe in the response; mutually exclusive with <code>FileSystemId</code>.</p>
    #
    # @option params [String] :file_system_id
    #   <p>(Optional) If you provide a <code>FileSystemId</code>, EFS returns all access points for that file system; mutually exclusive with <code>AccessPointId</code>.</p>
    #
    # @return [Types::DescribeAccessPointsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_access_points(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     access_point_id: 'AccessPointId',
    #     file_system_id: 'FileSystemId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAccessPointsOutput
    #   resp.data.access_points #=> Array<AccessPointDescription>
    #   resp.data.access_points[0] #=> Types::AccessPointDescription
    #   resp.data.access_points[0].client_token #=> String
    #   resp.data.access_points[0].name #=> String
    #   resp.data.access_points[0].tags #=> Array<Tag>
    #   resp.data.access_points[0].tags[0] #=> Types::Tag
    #   resp.data.access_points[0].tags[0].key #=> String
    #   resp.data.access_points[0].tags[0].value #=> String
    #   resp.data.access_points[0].access_point_id #=> String
    #   resp.data.access_points[0].access_point_arn #=> String
    #   resp.data.access_points[0].file_system_id #=> String
    #   resp.data.access_points[0].posix_user #=> Types::PosixUser
    #   resp.data.access_points[0].posix_user.uid #=> Integer
    #   resp.data.access_points[0].posix_user.gid #=> Integer
    #   resp.data.access_points[0].posix_user.secondary_gids #=> Array<Integer>
    #   resp.data.access_points[0].posix_user.secondary_gids[0] #=> Integer
    #   resp.data.access_points[0].root_directory #=> Types::RootDirectory
    #   resp.data.access_points[0].root_directory.path #=> String
    #   resp.data.access_points[0].root_directory.creation_info #=> Types::CreationInfo
    #   resp.data.access_points[0].root_directory.creation_info.owner_uid #=> Integer
    #   resp.data.access_points[0].root_directory.creation_info.owner_gid #=> Integer
    #   resp.data.access_points[0].root_directory.creation_info.permissions #=> String
    #   resp.data.access_points[0].owner_id #=> String
    #   resp.data.access_points[0].life_cycle_state #=> String, one of ["creating", "available", "updating", "deleting", "deleted", "error"]
    #   resp.data.next_token #=> String
    #
    def describe_access_points(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAccessPointsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAccessPointsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAccessPoints
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FileSystemNotFound, Errors::BadRequest, Errors::InternalServerError, Errors::AccessPointNotFound]),
        data_parser: Parsers::DescribeAccessPoints
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAccessPoints,
        stubs: @stubs,
        params_class: Params::DescribeAccessPointsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_access_points
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the account preferences settings for the Amazon Web Services account associated with the user making the request, in the current Amazon Web Services Region.
    #       For more information, see <a href="efs/latest/ug/manage-efs-resource-ids.html">Managing Amazon EFS resource IDs</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAccountPreferencesInput}.
    #
    # @option params [String] :next_token
    #   <p>(Optional) You can use <code>NextToken</code> in a subsequent request to fetch the next page of
    #         Amazon Web Services account preferences if the response payload was paginated.</p>
    #
    # @option params [Integer] :max_results
    #   <p>(Optional) When retrieving account preferences,
    #         you can optionally specify the <code>MaxItems</code> parameter to limit the number of objects returned in a response.
    #         The default value is 100. </p>
    #
    # @return [Types::DescribeAccountPreferencesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_preferences(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAccountPreferencesOutput
    #   resp.data.resource_id_preference #=> Types::ResourceIdPreference
    #   resp.data.resource_id_preference.resource_id_type #=> String, one of ["LONG_ID", "SHORT_ID"]
    #   resp.data.resource_id_preference.resources #=> Array<String>
    #   resp.data.resource_id_preference.resources[0] #=> String, one of ["FILE_SYSTEM", "MOUNT_TARGET"]
    #   resp.data.next_token #=> String
    #
    def describe_account_preferences(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAccountPreferencesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAccountPreferencesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAccountPreferences
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError]),
        data_parser: Parsers::DescribeAccountPreferences
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAccountPreferences,
        stubs: @stubs,
        params_class: Params::DescribeAccountPreferencesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_account_preferences
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the backup policy for the specified EFS file system.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeBackupPolicyInput}.
    #
    # @option params [String] :file_system_id
    #   <p>Specifies which EFS file system to retrieve the <code>BackupPolicy</code> for.</p>
    #
    # @return [Types::DescribeBackupPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_backup_policy(
    #     file_system_id: 'FileSystemId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeBackupPolicyOutput
    #   resp.data.backup_policy #=> Types::BackupPolicy
    #   resp.data.backup_policy.status #=> String, one of ["ENABLED", "ENABLING", "DISABLED", "DISABLING"]
    #
    def describe_backup_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeBackupPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeBackupPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeBackupPolicy
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FileSystemNotFound, Errors::BadRequest, Errors::InternalServerError, Errors::ValidationException, Errors::PolicyNotFound]),
        data_parser: Parsers::DescribeBackupPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeBackupPolicy,
        stubs: @stubs,
        params_class: Params::DescribeBackupPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_backup_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the <code>FileSystemPolicy</code> for the specified EFS file system.</p>
    #          <p>This operation requires permissions for the <code>elasticfilesystem:DescribeFileSystemPolicy</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFileSystemPolicyInput}.
    #
    # @option params [String] :file_system_id
    #   <p>Specifies which EFS file system to retrieve the <code>FileSystemPolicy</code> for.</p>
    #
    # @return [Types::DescribeFileSystemPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_file_system_policy(
    #     file_system_id: 'FileSystemId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFileSystemPolicyOutput
    #   resp.data.file_system_id #=> String
    #   resp.data.policy #=> String
    #
    def describe_file_system_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFileSystemPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFileSystemPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFileSystemPolicy
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FileSystemNotFound, Errors::BadRequest, Errors::InternalServerError, Errors::PolicyNotFound]),
        data_parser: Parsers::DescribeFileSystemPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFileSystemPolicy,
        stubs: @stubs,
        params_class: Params::DescribeFileSystemPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_file_system_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the description of a specific Amazon EFS file system if either the file system
    #         <code>CreationToken</code> or the <code>FileSystemId</code> is provided. Otherwise, it
    #       returns descriptions of all file systems owned by the caller's Amazon Web Services account in the
    #       Amazon Web Services Region of the endpoint that you're calling.</p>
    #
    #          <p>When retrieving all file system descriptions, you can optionally specify the
    #         <code>MaxItems</code> parameter to limit the number of descriptions in a response.
    #       Currently, this number is automatically set to 10. If more file system descriptions remain,
    #       Amazon EFS returns a <code>NextMarker</code>, an opaque token, in the response. In this case,
    #       you should send a subsequent request with the <code>Marker</code> request parameter set to the
    #       value of <code>NextMarker</code>. </p>
    #
    #          <p>To retrieve a list of your file system descriptions, this operation is used in an
    #       iterative process, where <code>DescribeFileSystems</code> is called first without the
    #         <code>Marker</code> and then the operation continues to call it with the <code>Marker</code>
    #       parameter set to the value of the <code>NextMarker</code> from the previous response until the
    #       response has no <code>NextMarker</code>. </p>
    #
    #          <p> The order of file systems returned in the response of one
    #         <code>DescribeFileSystems</code> call and the order of file systems returned across the
    #       responses of a multi-call iteration is unspecified. </p>
    #          <p> This operation requires permissions for the
    #         <code>elasticfilesystem:DescribeFileSystems</code> action. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFileSystemsInput}.
    #
    # @option params [Integer] :max_items
    #   <p>(Optional) Specifies the maximum number of file systems to return in the response
    #         (integer). This number is automatically set to 100. The response is paginated at 100 per page if you have more than 100 file systems.
    #         </p>
    #
    # @option params [String] :marker
    #   <p>(Optional) Opaque pagination token returned from a previous
    #           <code>DescribeFileSystems</code> operation (String). If present, specifies to continue the
    #         list from where the returning call had left off. </p>
    #
    # @option params [String] :creation_token
    #   <p>(Optional) Restricts the list to the file system with this creation token (String). You
    #         specify a creation token when you create an Amazon EFS file system.</p>
    #
    # @option params [String] :file_system_id
    #   <p>(Optional) ID of the file system whose description you want to retrieve
    #         (String).</p>
    #
    # @return [Types::DescribeFileSystemsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_file_systems(
    #     max_items: 1,
    #     marker: 'Marker',
    #     creation_token: 'CreationToken',
    #     file_system_id: 'FileSystemId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFileSystemsOutput
    #   resp.data.marker #=> String
    #   resp.data.file_systems #=> Array<FileSystemDescription>
    #   resp.data.file_systems[0] #=> Types::FileSystemDescription
    #   resp.data.file_systems[0].owner_id #=> String
    #   resp.data.file_systems[0].creation_token #=> String
    #   resp.data.file_systems[0].file_system_id #=> String
    #   resp.data.file_systems[0].file_system_arn #=> String
    #   resp.data.file_systems[0].creation_time #=> Time
    #   resp.data.file_systems[0].life_cycle_state #=> String, one of ["creating", "available", "updating", "deleting", "deleted", "error"]
    #   resp.data.file_systems[0].name #=> String
    #   resp.data.file_systems[0].number_of_mount_targets #=> Integer
    #   resp.data.file_systems[0].size_in_bytes #=> Types::FileSystemSize
    #   resp.data.file_systems[0].size_in_bytes.value #=> Integer
    #   resp.data.file_systems[0].size_in_bytes.timestamp #=> Time
    #   resp.data.file_systems[0].size_in_bytes.value_in_ia #=> Integer
    #   resp.data.file_systems[0].size_in_bytes.value_in_standard #=> Integer
    #   resp.data.file_systems[0].performance_mode #=> String, one of ["generalPurpose", "maxIO"]
    #   resp.data.file_systems[0].encrypted #=> Boolean
    #   resp.data.file_systems[0].kms_key_id #=> String
    #   resp.data.file_systems[0].throughput_mode #=> String, one of ["bursting", "provisioned"]
    #   resp.data.file_systems[0].provisioned_throughput_in_mibps #=> Float
    #   resp.data.file_systems[0].availability_zone_name #=> String
    #   resp.data.file_systems[0].availability_zone_id #=> String
    #   resp.data.file_systems[0].tags #=> Array<Tag>
    #   resp.data.file_systems[0].tags[0] #=> Types::Tag
    #   resp.data.file_systems[0].tags[0].key #=> String
    #   resp.data.file_systems[0].tags[0].value #=> String
    #   resp.data.next_marker #=> String
    #
    def describe_file_systems(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFileSystemsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFileSystemsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFileSystems
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FileSystemNotFound, Errors::BadRequest, Errors::InternalServerError]),
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

    # <p>Returns the current <code>LifecycleConfiguration</code> object for the specified Amazon
    #       EFS file system. EFS lifecycle management uses the <code>LifecycleConfiguration</code> object
    #       to identify which files to move to the EFS Infrequent Access (IA) storage class. For a file system
    #       without a <code>LifecycleConfiguration</code> object, the call returns an empty array in the
    #       response.</p>
    #          <p>When EFS Intelligent-Tiering is enabled, <code>TransitionToPrimaryStorageClass</code> has
    #       a value of <code>AFTER_1_ACCESS</code>.</p>
    #          <p>This operation requires permissions for the
    #         <code>elasticfilesystem:DescribeLifecycleConfiguration</code> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLifecycleConfigurationInput}.
    #
    # @option params [String] :file_system_id
    #   <p>The ID of the file system whose <code>LifecycleConfiguration</code> object you want to
    #         retrieve (String).</p>
    #
    # @return [Types::DescribeLifecycleConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_lifecycle_configuration(
    #     file_system_id: 'FileSystemId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLifecycleConfigurationOutput
    #   resp.data.lifecycle_policies #=> Array<LifecyclePolicy>
    #   resp.data.lifecycle_policies[0] #=> Types::LifecyclePolicy
    #   resp.data.lifecycle_policies[0].transition_to_ia #=> String, one of ["AFTER_7_DAYS", "AFTER_14_DAYS", "AFTER_30_DAYS", "AFTER_60_DAYS", "AFTER_90_DAYS"]
    #   resp.data.lifecycle_policies[0].transition_to_primary_storage_class #=> String, one of ["AFTER_1_ACCESS"]
    #
    def describe_lifecycle_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLifecycleConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLifecycleConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLifecycleConfiguration
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FileSystemNotFound, Errors::BadRequest, Errors::InternalServerError]),
        data_parser: Parsers::DescribeLifecycleConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLifecycleConfiguration,
        stubs: @stubs,
        params_class: Params::DescribeLifecycleConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_lifecycle_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the security groups currently in effect for a mount target. This operation
    #       requires that the network interface of the mount target has been created and the lifecycle
    #       state of the mount target is not <code>deleted</code>.</p>
    #          <p>This operation requires permissions for the following actions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>elasticfilesystem:DescribeMountTargetSecurityGroups</code> action on the mount
    #           target's file system. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ec2:DescribeNetworkInterfaceAttribute</code> action on the mount target's
    #           network interface. </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DescribeMountTargetSecurityGroupsInput}.
    #
    # @option params [String] :mount_target_id
    #   <p>The ID of the mount target whose security groups you want to retrieve.</p>
    #
    # @return [Types::DescribeMountTargetSecurityGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_mount_target_security_groups(
    #     mount_target_id: 'MountTargetId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeMountTargetSecurityGroupsOutput
    #   resp.data.security_groups #=> Array<String>
    #   resp.data.security_groups[0] #=> String
    #
    def describe_mount_target_security_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeMountTargetSecurityGroupsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeMountTargetSecurityGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeMountTargetSecurityGroups
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::IncorrectMountTargetState, Errors::MountTargetNotFound, Errors::BadRequest, Errors::InternalServerError]),
        data_parser: Parsers::DescribeMountTargetSecurityGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeMountTargetSecurityGroups,
        stubs: @stubs,
        params_class: Params::DescribeMountTargetSecurityGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_mount_target_security_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the descriptions of all the current mount targets, or a specific mount target,
    #       for a file system. When requesting all of the current mount targets, the order of mount
    #       targets returned in the response is unspecified.</p>
    #
    #          <p>This operation requires permissions for the
    #         <code>elasticfilesystem:DescribeMountTargets</code> action, on either the file system ID
    #       that you specify in <code>FileSystemId</code>, or on the file system of the mount target that
    #       you specify in <code>MountTargetId</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeMountTargetsInput}.
    #
    # @option params [Integer] :max_items
    #   <p>(Optional) Maximum number of mount targets to return in the response. Currently, this
    #         number is automatically set to
    #         10, and other values are ignored. The response is paginated at 100 per page if you have more than 100 mount targets.</p>
    #
    # @option params [String] :marker
    #   <p>(Optional) Opaque pagination token returned from a previous
    #           <code>DescribeMountTargets</code> operation (String). If present, it specifies to continue
    #         the list from where the previous returning call left off.</p>
    #
    # @option params [String] :file_system_id
    #   <p>(Optional) ID of the file system whose mount targets you want to list (String). It must
    #         be included in your request if an <code>AccessPointId</code> or <code>MountTargetId</code> is not included. Accepts either a file system ID or ARN as input.</p>
    #
    # @option params [String] :mount_target_id
    #   <p>(Optional) ID of the mount target that you want to have described (String). It must be
    #         included in your request if <code>FileSystemId</code> is not included. Accepts either a mount target ID or ARN as input.</p>
    #
    # @option params [String] :access_point_id
    #   <p>(Optional) The ID of the access point whose mount targets that you want to list. It must be included in your request if a
    #         <code>FileSystemId</code> or <code>MountTargetId</code> is not included in your request. Accepts either an access point ID or ARN as input.</p>
    #
    # @return [Types::DescribeMountTargetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_mount_targets(
    #     max_items: 1,
    #     marker: 'Marker',
    #     file_system_id: 'FileSystemId',
    #     mount_target_id: 'MountTargetId',
    #     access_point_id: 'AccessPointId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeMountTargetsOutput
    #   resp.data.marker #=> String
    #   resp.data.mount_targets #=> Array<MountTargetDescription>
    #   resp.data.mount_targets[0] #=> Types::MountTargetDescription
    #   resp.data.mount_targets[0].owner_id #=> String
    #   resp.data.mount_targets[0].mount_target_id #=> String
    #   resp.data.mount_targets[0].file_system_id #=> String
    #   resp.data.mount_targets[0].subnet_id #=> String
    #   resp.data.mount_targets[0].life_cycle_state #=> String, one of ["creating", "available", "updating", "deleting", "deleted", "error"]
    #   resp.data.mount_targets[0].ip_address #=> String
    #   resp.data.mount_targets[0].network_interface_id #=> String
    #   resp.data.mount_targets[0].availability_zone_id #=> String
    #   resp.data.mount_targets[0].availability_zone_name #=> String
    #   resp.data.mount_targets[0].vpc_id #=> String
    #   resp.data.next_marker #=> String
    #
    def describe_mount_targets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeMountTargetsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeMountTargetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeMountTargets
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FileSystemNotFound, Errors::MountTargetNotFound, Errors::BadRequest, Errors::InternalServerError, Errors::AccessPointNotFound]),
        data_parser: Parsers::DescribeMountTargets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeMountTargets,
        stubs: @stubs,
        params_class: Params::DescribeMountTargetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_mount_targets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the replication configuration for a specific file system. If a file system is
    #       not specified, all of the replication configurations for the Amazon Web Services account in an
    #         Amazon Web Services Region are retrieved.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeReplicationConfigurationsInput}.
    #
    # @option params [String] :file_system_id
    #   <p>You can retrieve the replication configuration for a specific file system by providing its
    #         file system ID.</p>
    #
    # @option params [String] :next_token
    #   <p>
    #               <code>NextToken</code> is present if the response is paginated. You can use
    #           <code>NextToken</code> in a subsequent request to fetch the next page of
    #         output.</p>
    #
    # @option params [Integer] :max_results
    #   <p>(Optional) To limit the number of objects returned in a response, you can specify the
    #           <code>MaxItems</code> parameter. The default value is 100. </p>
    #
    # @return [Types::DescribeReplicationConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_replication_configurations(
    #     file_system_id: 'FileSystemId',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeReplicationConfigurationsOutput
    #   resp.data.replications #=> Array<ReplicationConfigurationDescription>
    #   resp.data.replications[0] #=> Types::ReplicationConfigurationDescription
    #   resp.data.replications[0].source_file_system_id #=> String
    #   resp.data.replications[0].source_file_system_region #=> String
    #   resp.data.replications[0].source_file_system_arn #=> String
    #   resp.data.replications[0].original_source_file_system_arn #=> String
    #   resp.data.replications[0].creation_time #=> Time
    #   resp.data.replications[0].destinations #=> Array<Destination>
    #   resp.data.replications[0].destinations[0] #=> Types::Destination
    #   resp.data.replications[0].destinations[0].status #=> String, one of ["ENABLED", "ENABLING", "DELETING", "ERROR"]
    #   resp.data.replications[0].destinations[0].file_system_id #=> String
    #   resp.data.replications[0].destinations[0].region #=> String
    #   resp.data.replications[0].destinations[0].last_replicated_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_replication_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeReplicationConfigurationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeReplicationConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeReplicationConfigurations
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FileSystemNotFound, Errors::BadRequest, Errors::InternalServerError, Errors::ValidationException, Errors::ReplicationNotFound]),
        data_parser: Parsers::DescribeReplicationConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeReplicationConfigurations,
        stubs: @stubs,
        params_class: Params::DescribeReplicationConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_replication_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <note>
    #             <p>DEPRECATED - The <code>DescribeTags</code> action is deprecated and not maintained. To view
    #         tags associated with EFS resources, use the <code>ListTagsForResource</code> API
    #         action.</p>
    #          </note>
    #          <p>Returns the tags associated with a file system. The order of tags returned in the
    #       response of one <code>DescribeTags</code> call and the order of tags returned across the
    #       responses of a multiple-call iteration (when using pagination) is unspecified. </p>
    #          <p> This operation requires permissions for the
    #         <code>elasticfilesystem:DescribeTags</code> action. </p>
    #
    # @deprecated
    #   Use ListTagsForResource.
    #
    # @param [Hash] params
    #   See {Types::DescribeTagsInput}.
    #
    # @option params [Integer] :max_items
    #   <p>(Optional) The maximum number of file system tags to return in the response. Currently,
    #         this number is automatically set to
    #         100, and other values are ignored. The response is paginated at 100 per page if you have more than 100 tags.</p>
    #
    # @option params [String] :marker
    #   <p>(Optional) An opaque pagination token returned from a previous
    #           <code>DescribeTags</code> operation (String). If present, it specifies to continue the list
    #         from where the previous call left off.</p>
    #
    # @option params [String] :file_system_id
    #   <p>The ID of the file system whose tag set you want to retrieve.</p>
    #
    # @return [Types::DescribeTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tags(
    #     max_items: 1,
    #     marker: 'Marker',
    #     file_system_id: 'FileSystemId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTagsOutput
    #   resp.data.marker #=> String
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.next_marker #=> String
    #
    def describe_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTagsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTags
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FileSystemNotFound, Errors::BadRequest, Errors::InternalServerError]),
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

    # <p>Lists all tags for a top-level EFS resource. You must provide the ID of the resource that you want to retrieve the tags for.</p>
    #          <p>This operation requires permissions for the <code>elasticfilesystem:DescribeAccessPoints</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_id
    #   <p>Specifies the EFS resource you want to retrieve tags for. You can retrieve tags for EFS file systems and access points using this API endpoint.</p>
    #
    # @option params [Integer] :max_results
    #   <p>(Optional) Specifies the maximum number of tag objects to return in the response. The default value is 100.</p>
    #
    # @option params [String] :next_token
    #   <p>(Optional) You can use <code>NextToken</code> in a subsequent request to fetch the next page of access point descriptions if the response payload was paginated.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_id: 'ResourceId', # required
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
      response_body = StringIO.new
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FileSystemNotFound, Errors::BadRequest, Errors::InternalServerError, Errors::AccessPointNotFound]),
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

    # <p>Modifies the set of security groups in effect for a mount target.</p>
    #          <p>When you create a mount target, Amazon EFS also creates a new network interface. For
    #       more information, see <a>CreateMountTarget</a>. This operation replaces the security groups in effect for the
    #       network interface associated with a mount target, with the <code>SecurityGroups</code>
    #       provided in the request. This operation requires that the network interface of the mount
    #       target has been created and the lifecycle state of the mount target is not
    #         <code>deleted</code>. </p>
    #          <p>The operation requires permissions for the following actions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>elasticfilesystem:ModifyMountTargetSecurityGroups</code> action on the mount
    #           target's file system. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ec2:ModifyNetworkInterfaceAttribute</code> action on the mount target's network
    #           interface. </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ModifyMountTargetSecurityGroupsInput}.
    #
    # @option params [String] :mount_target_id
    #   <p>The ID of the mount target whose security groups you want to modify.</p>
    #
    # @option params [Array<String>] :security_groups
    #   <p>An array of up to five VPC security group IDs.</p>
    #
    # @return [Types::ModifyMountTargetSecurityGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_mount_target_security_groups(
    #     mount_target_id: 'MountTargetId', # required
    #     security_groups: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ModifyMountTargetSecurityGroupsOutput
    #
    def modify_mount_target_security_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ModifyMountTargetSecurityGroupsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ModifyMountTargetSecurityGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ModifyMountTargetSecurityGroups
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::IncorrectMountTargetState, Errors::MountTargetNotFound, Errors::BadRequest, Errors::InternalServerError, Errors::SecurityGroupLimitExceeded, Errors::SecurityGroupNotFound]),
        data_parser: Parsers::ModifyMountTargetSecurityGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ModifyMountTargetSecurityGroups,
        stubs: @stubs,
        params_class: Params::ModifyMountTargetSecurityGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :modify_mount_target_security_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Use this operation to set the account preference in the current Amazon Web Services Region
    #       to use long 17 character (63 bit) or short 8 character (32 bit) resource IDs for
    #       new EFS file system and mount target resources. All existing resource IDs are not affected
    #       by any changes you make. You can set the ID preference during the
    #       opt-in period as EFS transitions to long resource IDs. For more information,
    #       see <a href="https://docs.aws.amazon.com/efs/latest/ug/manage-efs-resource-ids.html">Managing Amazon EFS resource IDs</a>.</p>
    #          <note>
    #             <p>Starting in October, 2021, you will receive an error if you try to set the account preference
    #         to use the short 8 character format resource ID. Contact Amazon Web Services support if you
    #         receive an error and must use short IDs for file system and mount target resources.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::PutAccountPreferencesInput}.
    #
    # @option params [String] :resource_id_type
    #   <p>Specifies the EFS resource ID preference to set for the user's Amazon Web Services account,
    #         in the current Amazon Web Services Region, either <code>LONG_ID</code> (17 characters), or
    #         <code>SHORT_ID</code> (8 characters).</p>
    #            <note>
    #               <p>Starting in October, 2021, you will receive an error when setting the account preference to
    #             <code>SHORT_ID</code>. Contact Amazon Web Services support if you receive an error and must
    #           use short IDs for file system and mount target resources.</p>
    #            </note>
    #
    # @return [Types::PutAccountPreferencesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_account_preferences(
    #     resource_id_type: 'LONG_ID' # required - accepts ["LONG_ID", "SHORT_ID"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutAccountPreferencesOutput
    #   resp.data.resource_id_preference #=> Types::ResourceIdPreference
    #   resp.data.resource_id_preference.resource_id_type #=> String, one of ["LONG_ID", "SHORT_ID"]
    #   resp.data.resource_id_preference.resources #=> Array<String>
    #   resp.data.resource_id_preference.resources[0] #=> String, one of ["FILE_SYSTEM", "MOUNT_TARGET"]
    #
    def put_account_preferences(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutAccountPreferencesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutAccountPreferencesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutAccountPreferences
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequest, Errors::InternalServerError]),
        data_parser: Parsers::PutAccountPreferences
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutAccountPreferences,
        stubs: @stubs,
        params_class: Params::PutAccountPreferencesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_account_preferences
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the file system's backup policy. Use this action to start or stop automatic backups of the file system. </p>
    #
    # @param [Hash] params
    #   See {Types::PutBackupPolicyInput}.
    #
    # @option params [String] :file_system_id
    #   <p>Specifies which EFS file system to update the backup policy for.</p>
    #
    # @option params [BackupPolicy] :backup_policy
    #   <p>The backup policy included in the <code>PutBackupPolicy</code> request.</p>
    #
    # @return [Types::PutBackupPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_backup_policy(
    #     file_system_id: 'FileSystemId', # required
    #     backup_policy: {
    #       status: 'ENABLED' # required - accepts ["ENABLED", "ENABLING", "DISABLED", "DISABLING"]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutBackupPolicyOutput
    #   resp.data.backup_policy #=> Types::BackupPolicy
    #   resp.data.backup_policy.status #=> String, one of ["ENABLED", "ENABLING", "DISABLED", "DISABLING"]
    #
    def put_backup_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutBackupPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutBackupPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutBackupPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FileSystemNotFound, Errors::BadRequest, Errors::IncorrectFileSystemLifeCycleState, Errors::InternalServerError, Errors::ValidationException]),
        data_parser: Parsers::PutBackupPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutBackupPolicy,
        stubs: @stubs,
        params_class: Params::PutBackupPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_backup_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Applies an Amazon EFS <code>FileSystemPolicy</code> to an Amazon EFS file system.
    #       A file system policy is an IAM resource-based policy and can contain multiple policy statements.
    #       A file system always has exactly one file system policy, which can be the default policy or
    #       an explicit policy set or updated using this API operation.
    #       EFS file system policies have a 20,000 character limit.
    #       When an explicit policy is set, it overrides the default policy. For more information about the default file system policy, see
    #       <a href="https://docs.aws.amazon.com/efs/latest/ug/iam-access-control-nfs-efs.html#default-filesystempolicy">Default EFS File System Policy</a>.
    #     </p>
    #          <note>
    #             <p>EFS file system policies have a 20,000 character limit.</p>
    #          </note>
    #          <p>This operation requires permissions for the <code>elasticfilesystem:PutFileSystemPolicy</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::PutFileSystemPolicyInput}.
    #
    # @option params [String] :file_system_id
    #   <p>The ID of the EFS file system that you want to create or update the <code>FileSystemPolicy</code> for.</p>
    #
    # @option params [String] :policy
    #   <p>The <code>FileSystemPolicy</code> that you're creating. Accepts a JSON formatted policy definition.
    #        EFS file system policies have a 20,000 character limit.
    #         To find out more about the elements that make up a file system policy, see
    #         <a href="https://docs.aws.amazon.com/efs/latest/ug/access-control-overview.html#access-control-manage-access-intro-resource-policies">EFS Resource-based Policies</a>.
    #       </p>
    #
    # @option params [Boolean] :bypass_policy_lockout_safety_check
    #   <p>(Optional) A boolean that specifies whether or not to bypass the <code>FileSystemPolicy</code> lockout safety check. The lockout safety check
    #         determines whether the policy in the request will lock out, or prevent, the IAM principal that is making the request from making future <code>PutFileSystemPolicy</code> requests on this file system.
    #         Set <code>BypassPolicyLockoutSafetyCheck</code> to <code>True</code> only when you intend to prevent
    #         the IAM principal that is making the request from making subsequent <code>PutFileSystemPolicy</code> requests on this file system.
    #         The default value is <code>False</code>.
    #       </p>
    #
    # @return [Types::PutFileSystemPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_file_system_policy(
    #     file_system_id: 'FileSystemId', # required
    #     policy: 'Policy', # required
    #     bypass_policy_lockout_safety_check: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutFileSystemPolicyOutput
    #   resp.data.file_system_id #=> String
    #   resp.data.policy #=> String
    #
    def put_file_system_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutFileSystemPolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutFileSystemPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutFileSystemPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FileSystemNotFound, Errors::BadRequest, Errors::IncorrectFileSystemLifeCycleState, Errors::InternalServerError, Errors::InvalidPolicyException]),
        data_parser: Parsers::PutFileSystemPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutFileSystemPolicy,
        stubs: @stubs,
        params_class: Params::PutFileSystemPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_file_system_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Use this action to manage EFS lifecycle management and intelligent tiering. A
    #       <code>LifecycleConfiguration</code> consists of one or more <code>LifecyclePolicy</code> objects that
    #       define the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>EFS Lifecycle management</b> - When Amazon EFS
    #         automatically transitions files in a file system into the lower-cost Infrequent Access (IA) storage class.</p>
    #                <p>To enable EFS Lifecycle management, set the value of <code>TransitionToIA</code> to one of the available options.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>EFS Intelligent tiering</b> - When Amazon EFS
    #         automatically transitions files from IA back into the file system's primary storage class (Standard or One Zone Standard.</p>
    #                <p>To enable EFS Intelligent Tiering, set the value of <code>TransitionToPrimaryStorageClass</code> to <code>AFTER_1_ACCESS</code>.</p>
    #             </li>
    #          </ul>
    #
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/lifecycle-management-efs.html">EFS Lifecycle Management</a>.</p>
    #          <p>Each Amazon EFS file system supports one lifecycle configuration, which applies to all files in the file system. If a
    #         <code>LifecycleConfiguration</code> object already exists for the specified file system, a
    #         <code>PutLifecycleConfiguration</code> call modifies the existing configuration. A
    #         <code>PutLifecycleConfiguration</code> call with an empty <code>LifecyclePolicies</code>
    #       array in the request body deletes any existing <code>LifecycleConfiguration</code> and
    #       turns off lifecycle management and intelligent tiering for the file system.</p>
    #          <p>In the request, specify the following: </p>
    #          <ul>
    #             <li>
    #                <p>The ID for the file system for which you are enabling, disabling, or modifying lifecycle management
    #           and intelligent tiering.</p>
    #             </li>
    #             <li>
    #                <p>A <code>LifecyclePolicies</code> array of <code>LifecyclePolicy</code> objects that
    #           define when files are moved into IA storage, and when they are moved back to Standard storage.</p>
    #                <note>
    #                   <p>Amazon EFS requires that each <code>LifecyclePolicy</code>
    #           object have only have a single transition, so the <code>LifecyclePolicies</code> array needs to be structured with separate
    #           <code>LifecyclePolicy</code> objects. See the example requests in the following section for more information.</p>
    #                </note>
    #             </li>
    #          </ul>
    #
    #          <p>This operation requires permissions for the <code>elasticfilesystem:PutLifecycleConfiguration</code> operation.</p>
    #          <p>To apply a <code>LifecycleConfiguration</code> object to an encrypted file system, you
    #       need the same Key Management Service permissions as when you created the encrypted file system.</p>
    #
    # @param [Hash] params
    #   See {Types::PutLifecycleConfigurationInput}.
    #
    # @option params [String] :file_system_id
    #   <p>The ID of the file system for which you are creating the
    #           <code>LifecycleConfiguration</code> object (String).</p>
    #
    # @option params [Array<LifecyclePolicy>] :lifecycle_policies
    #   <p>An array of <code>LifecyclePolicy</code> objects that define the file system's
    #           <code>LifecycleConfiguration</code> object. A <code>LifecycleConfiguration</code> object
    #         informs EFS lifecycle management and EFS Intelligent-Tiering of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>When to move files in the file system from primary storage to the IA storage class.</p>
    #               </li>
    #               <li>
    #                  <p>When to move files that are in IA storage to primary storage.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>When using the <code>put-lifecycle-configuration</code> CLI command or the
    #             <code>PutLifecycleConfiguration</code> API action, Amazon EFS requires that each
    #             <code>LifecyclePolicy</code> object have only a single transition. This means that in a
    #           request body, <code>LifecyclePolicies</code> must be structured as an array of
    #             <code>LifecyclePolicy</code> objects, one object for each transition,
    #             <code>TransitionToIA</code>, <code>TransitionToPrimaryStorageClass</code>. See the example
    #           requests in the following section for more information.</p>
    #            </note>
    #
    # @return [Types::PutLifecycleConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_lifecycle_configuration(
    #     file_system_id: 'FileSystemId', # required
    #     lifecycle_policies: [
    #       {
    #         transition_to_ia: 'AFTER_7_DAYS', # accepts ["AFTER_7_DAYS", "AFTER_14_DAYS", "AFTER_30_DAYS", "AFTER_60_DAYS", "AFTER_90_DAYS"]
    #         transition_to_primary_storage_class: 'AFTER_1_ACCESS' # accepts ["AFTER_1_ACCESS"]
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutLifecycleConfigurationOutput
    #   resp.data.lifecycle_policies #=> Array<LifecyclePolicy>
    #   resp.data.lifecycle_policies[0] #=> Types::LifecyclePolicy
    #   resp.data.lifecycle_policies[0].transition_to_ia #=> String, one of ["AFTER_7_DAYS", "AFTER_14_DAYS", "AFTER_30_DAYS", "AFTER_60_DAYS", "AFTER_90_DAYS"]
    #   resp.data.lifecycle_policies[0].transition_to_primary_storage_class #=> String, one of ["AFTER_1_ACCESS"]
    #
    def put_lifecycle_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutLifecycleConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutLifecycleConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutLifecycleConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FileSystemNotFound, Errors::BadRequest, Errors::IncorrectFileSystemLifeCycleState, Errors::InternalServerError]),
        data_parser: Parsers::PutLifecycleConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutLifecycleConfiguration,
        stubs: @stubs,
        params_class: Params::PutLifecycleConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_lifecycle_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a tag for an EFS resource. You can create tags for EFS file systems and access points using this API operation.</p>
    #          <p>This operation requires permissions for the <code>elasticfilesystem:TagResource</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_id
    #   <p>The ID specifying the EFS resource that you want to create a tag for.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An array of <code>Tag</code> objects to add. Each <code>Tag</code> object is a key-value
    #         pair.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
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
    #   resp.data #=> Types::TagResourceOutput
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FileSystemNotFound, Errors::BadRequest, Errors::InternalServerError, Errors::AccessPointNotFound]),
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

    # <p>Removes tags from an EFS resource. You can remove tags from EFS file systems and access points using this API operation.</p>
    #          <p>This operation requires permissions for the <code>elasticfilesystem:UntagResource</code> action.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_id
    #   <p>Specifies the EFS resource that you want to remove tags from.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the key-value tag pairs that you want to remove from the specified EFS
    #         resource.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_id: 'ResourceId', # required
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
      response_body = StringIO.new
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FileSystemNotFound, Errors::BadRequest, Errors::InternalServerError, Errors::AccessPointNotFound]),
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

    # <p>Updates the throughput mode or the amount of provisioned throughput of an existing file
    #       system.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFileSystemInput}.
    #
    # @option params [String] :file_system_id
    #   <p>The ID of the file system that you want to update.</p>
    #
    # @option params [String] :throughput_mode
    #   <p>(Optional) Updates the file system's throughput mode. If you're not
    #         updating your throughput mode, you don't need to provide this value in your
    #         request. If you are changing the <code>ThroughputMode</code> to <code>provisioned</code>,
    #         you must also set a value for <code>ProvisionedThroughputInMibps</code>.</p>
    #
    # @option params [Float] :provisioned_throughput_in_mibps
    #   <p>(Optional) Sets the amount of provisioned throughput, in MiB/s, for the file
    #         system. Valid values are 1-1024. If you are changing the throughput mode to provisioned, you must also
    #         provide the amount of provisioned throughput. Required if <code>ThroughputMode</code> is changed
    #         to <code>provisioned</code> on update.</p>
    #
    # @return [Types::UpdateFileSystemOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_file_system(
    #     file_system_id: 'FileSystemId', # required
    #     throughput_mode: 'bursting', # accepts ["bursting", "provisioned"]
    #     provisioned_throughput_in_mibps: 1.0
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFileSystemOutput
    #   resp.data.owner_id #=> String
    #   resp.data.creation_token #=> String
    #   resp.data.file_system_id #=> String
    #   resp.data.file_system_arn #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.life_cycle_state #=> String, one of ["creating", "available", "updating", "deleting", "deleted", "error"]
    #   resp.data.name #=> String
    #   resp.data.number_of_mount_targets #=> Integer
    #   resp.data.size_in_bytes #=> Types::FileSystemSize
    #   resp.data.size_in_bytes.value #=> Integer
    #   resp.data.size_in_bytes.timestamp #=> Time
    #   resp.data.size_in_bytes.value_in_ia #=> Integer
    #   resp.data.size_in_bytes.value_in_standard #=> Integer
    #   resp.data.performance_mode #=> String, one of ["generalPurpose", "maxIO"]
    #   resp.data.encrypted #=> Boolean
    #   resp.data.kms_key_id #=> String
    #   resp.data.throughput_mode #=> String, one of ["bursting", "provisioned"]
    #   resp.data.provisioned_throughput_in_mibps #=> Float
    #   resp.data.availability_zone_name #=> String
    #   resp.data.availability_zone_id #=> String
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def update_file_system(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFileSystemInput.build(params)
      response_body = StringIO.new
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::FileSystemNotFound, Errors::InsufficientThroughputCapacity, Errors::BadRequest, Errors::IncorrectFileSystemLifeCycleState, Errors::InternalServerError, Errors::TooManyRequests, Errors::ThroughputLimitExceeded]),
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

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
