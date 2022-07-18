# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Drs
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>AWS account.</p>
    #
    # @!attribute account_id
    #   <p>Account ID of AWS account.</p>
    #
    #   @return [String]
    #
    Account = ::Struct.new(
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a server's CPU.</p>
    #
    # @!attribute cores
    #   <p>The number of CPU cores.</p>
    #
    #   @return [Integer]
    #
    # @!attribute model_name
    #   <p>The model name of the CPU.</p>
    #
    #   @return [String]
    #
    CPU = ::Struct.new(
      :cores,
      :model_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.cores ||= 0
      end
    end

    # <p>The request could not be completed due to a conflict with the current state of the target resource.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of the resource.</p>
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      :code,
      :resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Properties of a conversion job</p>
    #
    # @!attribute volume_to_conversion_map
    #   <p>A mapping between the volumes being converted and the converted snapshot ids</p>
    #
    #   @return [Hash<String, Hash<String, String>>]
    #
    # @!attribute root_volume_name
    #   <p>The root volume name of a conversion job</p>
    #
    #   @return [String]
    #
    # @!attribute force_uefi
    #   <p>Whether the volume being converted uses UEFI or not</p>
    #
    #   @return [Boolean]
    #
    # @!attribute data_timestamp
    #   <p>The timestamp of when the snapshot being converted was taken</p>
    #
    #   @return [String]
    #
    # @!attribute volume_to_volume_size
    #   <p>A mapping between the volumes and their sizes</p>
    #
    #   @return [Hash<String, Integer>]
    #
    ConversionProperties = ::Struct.new(
      :volume_to_conversion_map,
      :root_volume_name,
      :force_uefi,
      :data_timestamp,
      :volume_to_volume_size,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_server_arn
    #   <p>This defines the ARN of the source server in staging Account based on which you want to create an extended source server.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags associated with the extended source server.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateExtendedSourceServerInput = ::Struct.new(
      :source_server_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Drs::Types::CreateExtendedSourceServerInput "\
          "source_server_arn=#{source_server_arn || 'nil'}, "\
          "tags=\"[SENSITIVE]\">"
      end
    end

    # @!attribute source_server
    #   <p>Created extended source server.</p>
    #
    #   @return [SourceServer]
    #
    CreateExtendedSourceServerOutput = ::Struct.new(
      :source_server,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute staging_area_subnet_id
    #   <p>The subnet to be used by the replication staging area.</p>
    #
    #   @return [String]
    #
    # @!attribute associate_default_security_group
    #   <p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration Template.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute replication_servers_security_groups_i_ds
    #   <p>The security group IDs that will be used by the replication server.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute replication_server_instance_type
    #   <p>The instance type to be used for the replication server.</p>
    #
    #   @return [String]
    #
    # @!attribute use_dedicated_replication_server
    #   <p>Whether to use a dedicated Replication Server in the replication staging area.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute default_large_staging_disk_type
    #   <p>The Staging Disk EBS volume type to be used during replication.</p>
    #
    #   Enum, one of: ["GP2", "GP3", "ST1"]
    #
    #   @return [String]
    #
    # @!attribute ebs_encryption
    #   <p>The type of EBS encryption to be used during replication.</p>
    #
    #   Enum, one of: ["DEFAULT", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute ebs_encryption_key_arn
    #   <p>The ARN of the EBS encryption key to be used during replication.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth_throttling
    #   <p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>
    #
    #   @return [Integer]
    #
    # @!attribute data_plane_routing
    #   <p>The data plane routing mechanism that will be used for replication.</p>
    #
    #   Enum, one of: ["PRIVATE_IP", "PUBLIC_IP"]
    #
    #   @return [String]
    #
    # @!attribute create_public_ip
    #   <p>Whether to create a Public IP for the Recovery Instance by default.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute staging_area_tags
    #   <p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute pit_policy
    #   <p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>
    #
    #   @return [Array<PITPolicyRule>]
    #
    # @!attribute tags
    #   <p>A set of tags to be associated with the Replication Configuration Template resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateReplicationConfigurationTemplateInput = ::Struct.new(
      :staging_area_subnet_id,
      :associate_default_security_group,
      :replication_servers_security_groups_i_ds,
      :replication_server_instance_type,
      :use_dedicated_replication_server,
      :default_large_staging_disk_type,
      :ebs_encryption,
      :ebs_encryption_key_arn,
      :bandwidth_throttling,
      :data_plane_routing,
      :create_public_ip,
      :staging_area_tags,
      :pit_policy,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bandwidth_throttling ||= 0
      end

      def to_s
        "#<struct AWS::SDK::Drs::Types::CreateReplicationConfigurationTemplateInput "\
          "staging_area_subnet_id=#{staging_area_subnet_id || 'nil'}, "\
          "associate_default_security_group=#{associate_default_security_group || 'nil'}, "\
          "replication_servers_security_groups_i_ds=#{replication_servers_security_groups_i_ds || 'nil'}, "\
          "replication_server_instance_type=#{replication_server_instance_type || 'nil'}, "\
          "use_dedicated_replication_server=#{use_dedicated_replication_server || 'nil'}, "\
          "default_large_staging_disk_type=#{default_large_staging_disk_type || 'nil'}, "\
          "ebs_encryption=#{ebs_encryption || 'nil'}, "\
          "ebs_encryption_key_arn=#{ebs_encryption_key_arn || 'nil'}, "\
          "bandwidth_throttling=#{bandwidth_throttling || 'nil'}, "\
          "data_plane_routing=#{data_plane_routing || 'nil'}, "\
          "create_public_ip=#{create_public_ip || 'nil'}, "\
          "staging_area_tags=\"[SENSITIVE]\", "\
          "pit_policy=#{pit_policy || 'nil'}, "\
          "tags=\"[SENSITIVE]\">"
      end
    end

    # @!attribute replication_configuration_template_id
    #   <p>The Replication Configuration Template ID.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Replication Configuration Template ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute staging_area_subnet_id
    #   <p>The subnet to be used by the replication staging area.</p>
    #
    #   @return [String]
    #
    # @!attribute associate_default_security_group
    #   <p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration Template.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute replication_servers_security_groups_i_ds
    #   <p>The security group IDs that will be used by the replication server.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute replication_server_instance_type
    #   <p>The instance type to be used for the replication server.</p>
    #
    #   @return [String]
    #
    # @!attribute use_dedicated_replication_server
    #   <p>Whether to use a dedicated Replication Server in the replication staging area.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute default_large_staging_disk_type
    #   <p>The Staging Disk EBS volume type to be used during replication.</p>
    #
    #   Enum, one of: ["GP2", "GP3", "ST1"]
    #
    #   @return [String]
    #
    # @!attribute ebs_encryption
    #   <p>The type of EBS encryption to be used during replication.</p>
    #
    #   Enum, one of: ["DEFAULT", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute ebs_encryption_key_arn
    #   <p>The ARN of the EBS encryption key to be used during replication.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth_throttling
    #   <p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>
    #
    #   @return [Integer]
    #
    # @!attribute data_plane_routing
    #   <p>The data plane routing mechanism that will be used for replication.</p>
    #
    #   Enum, one of: ["PRIVATE_IP", "PUBLIC_IP"]
    #
    #   @return [String]
    #
    # @!attribute create_public_ip
    #   <p>Whether to create a Public IP for the Recovery Instance by default.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute staging_area_tags
    #   <p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute tags
    #   <p>A set of tags to be associated with the Replication Configuration Template resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute pit_policy
    #   <p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>
    #
    #   @return [Array<PITPolicyRule>]
    #
    CreateReplicationConfigurationTemplateOutput = ::Struct.new(
      :replication_configuration_template_id,
      :arn,
      :staging_area_subnet_id,
      :associate_default_security_group,
      :replication_servers_security_groups_i_ds,
      :replication_server_instance_type,
      :use_dedicated_replication_server,
      :default_large_staging_disk_type,
      :ebs_encryption,
      :ebs_encryption_key_arn,
      :bandwidth_throttling,
      :data_plane_routing,
      :create_public_ip,
      :staging_area_tags,
      :tags,
      :pit_policy,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bandwidth_throttling ||= 0
      end

      def to_s
        "#<struct AWS::SDK::Drs::Types::CreateReplicationConfigurationTemplateOutput "\
          "replication_configuration_template_id=#{replication_configuration_template_id || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "staging_area_subnet_id=#{staging_area_subnet_id || 'nil'}, "\
          "associate_default_security_group=#{associate_default_security_group || 'nil'}, "\
          "replication_servers_security_groups_i_ds=#{replication_servers_security_groups_i_ds || 'nil'}, "\
          "replication_server_instance_type=#{replication_server_instance_type || 'nil'}, "\
          "use_dedicated_replication_server=#{use_dedicated_replication_server || 'nil'}, "\
          "default_large_staging_disk_type=#{default_large_staging_disk_type || 'nil'}, "\
          "ebs_encryption=#{ebs_encryption || 'nil'}, "\
          "ebs_encryption_key_arn=#{ebs_encryption_key_arn || 'nil'}, "\
          "bandwidth_throttling=#{bandwidth_throttling || 'nil'}, "\
          "data_plane_routing=#{data_plane_routing || 'nil'}, "\
          "create_public_ip=#{create_public_ip || 'nil'}, "\
          "staging_area_tags=\"[SENSITIVE]\", "\
          "tags=\"[SENSITIVE]\", "\
          "pit_policy=#{pit_policy || 'nil'}>"
      end
    end

    # <p>Error in data replication.</p>
    #
    # @!attribute error
    #   <p>Error in data replication.</p>
    #
    #   Enum, one of: ["AGENT_NOT_SEEN", "SNAPSHOTS_FAILURE", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_CREATE_SECURITY_GROUP", "FAILED_TO_LAUNCH_REPLICATION_SERVER", "FAILED_TO_BOOT_REPLICATION_SERVER", "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "FAILED_TO_CREATE_STAGING_DISKS", "FAILED_TO_ATTACH_STAGING_DISKS", "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "FAILED_TO_START_DATA_TRANSFER"]
    #
    #   @return [String]
    #
    # @!attribute raw_error
    #   <p>Error in data replication.</p>
    #
    #   @return [String]
    #
    DataReplicationError = ::Struct.new(
      :error,
      :raw_error,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DataReplicationErrorString
    #
    module DataReplicationErrorString
      # No documentation available.
      #
      AGENT_NOT_SEEN = "AGENT_NOT_SEEN"

      # No documentation available.
      #
      SNAPSHOTS_FAILURE = "SNAPSHOTS_FAILURE"

      # No documentation available.
      #
      NOT_CONVERGING = "NOT_CONVERGING"

      # No documentation available.
      #
      UNSTABLE_NETWORK = "UNSTABLE_NETWORK"

      # No documentation available.
      #
      FAILED_TO_CREATE_SECURITY_GROUP = "FAILED_TO_CREATE_SECURITY_GROUP"

      # No documentation available.
      #
      FAILED_TO_LAUNCH_REPLICATION_SERVER = "FAILED_TO_LAUNCH_REPLICATION_SERVER"

      # No documentation available.
      #
      FAILED_TO_BOOT_REPLICATION_SERVER = "FAILED_TO_BOOT_REPLICATION_SERVER"

      # No documentation available.
      #
      FAILED_TO_AUTHENTICATE_WITH_SERVICE = "FAILED_TO_AUTHENTICATE_WITH_SERVICE"

      # No documentation available.
      #
      FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE = "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE"

      # No documentation available.
      #
      FAILED_TO_CREATE_STAGING_DISKS = "FAILED_TO_CREATE_STAGING_DISKS"

      # No documentation available.
      #
      FAILED_TO_ATTACH_STAGING_DISKS = "FAILED_TO_ATTACH_STAGING_DISKS"

      # No documentation available.
      #
      FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT = "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT"

      # No documentation available.
      #
      FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER = "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER"

      # No documentation available.
      #
      FAILED_TO_START_DATA_TRANSFER = "FAILED_TO_START_DATA_TRANSFER"
    end

    # <p>Information about Data Replication</p>
    #
    # @!attribute lag_duration
    #   <p>Data replication lag duration.</p>
    #
    #   @return [String]
    #
    # @!attribute eta_date_time
    #   <p>An estimate of when the data replication will be completed.</p>
    #
    #   @return [String]
    #
    # @!attribute replicated_disks
    #   <p>The disks that should be replicated.</p>
    #
    #   @return [Array<DataReplicationInfoReplicatedDisk>]
    #
    # @!attribute data_replication_state
    #   <p>The state of the data replication.</p>
    #
    #   Enum, one of: ["STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED"]
    #
    #   @return [String]
    #
    # @!attribute data_replication_initiation
    #   <p>Information about whether the data replication has been initiated.</p>
    #
    #   @return [DataReplicationInitiation]
    #
    # @!attribute data_replication_error
    #   <p>Error in data replication.</p>
    #
    #   @return [DataReplicationError]
    #
    DataReplicationInfo = ::Struct.new(
      :lag_duration,
      :eta_date_time,
      :replicated_disks,
      :data_replication_state,
      :data_replication_initiation,
      :data_replication_error,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A disk that should be replicated.</p>
    #
    # @!attribute device_name
    #   <p>The name of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute total_storage_bytes
    #   <p>The total amount of data to be replicated in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute replicated_storage_bytes
    #   <p>The amount of data replicated so far in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute rescanned_storage_bytes
    #   <p>The amount of data to be rescanned in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute backlogged_storage_bytes
    #   <p>The size of the replication backlog in bytes.</p>
    #
    #   @return [Integer]
    #
    DataReplicationInfoReplicatedDisk = ::Struct.new(
      :device_name,
      :total_storage_bytes,
      :replicated_storage_bytes,
      :rescanned_storage_bytes,
      :backlogged_storage_bytes,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.total_storage_bytes ||= 0
        self.replicated_storage_bytes ||= 0
        self.rescanned_storage_bytes ||= 0
        self.backlogged_storage_bytes ||= 0
      end
    end

    # <p>Data replication initiation.</p>
    #
    # @!attribute start_date_time
    #   <p>The date and time of the current attempt to initiate data replication.</p>
    #
    #   @return [String]
    #
    # @!attribute next_attempt_date_time
    #   <p>The date and time of the next attempt to initiate data replication.</p>
    #
    #   @return [String]
    #
    # @!attribute steps
    #   <p>The steps of the current attempt to initiate data replication.</p>
    #
    #   @return [Array<DataReplicationInitiationStep>]
    #
    DataReplicationInitiation = ::Struct.new(
      :start_date_time,
      :next_attempt_date_time,
      :steps,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Data replication initiation step.</p>
    #
    # @!attribute name
    #   <p>The name of the step.</p>
    #
    #   Enum, one of: ["WAIT", "CREATE_SECURITY_GROUP", "LAUNCH_REPLICATION_SERVER", "BOOT_REPLICATION_SERVER", "AUTHENTICATE_WITH_SERVICE", "DOWNLOAD_REPLICATION_SOFTWARE", "CREATE_STAGING_DISKS", "ATTACH_STAGING_DISKS", "PAIR_REPLICATION_SERVER_WITH_AGENT", "CONNECT_AGENT_TO_REPLICATION_SERVER", "START_DATA_TRANSFER"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the step.</p>
    #
    #   Enum, one of: ["NOT_STARTED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "SKIPPED"]
    #
    #   @return [String]
    #
    DataReplicationInitiationStep = ::Struct.new(
      :name,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DataReplicationInitiationStepName
    #
    module DataReplicationInitiationStepName
      # No documentation available.
      #
      WAIT = "WAIT"

      # No documentation available.
      #
      CREATE_SECURITY_GROUP = "CREATE_SECURITY_GROUP"

      # No documentation available.
      #
      LAUNCH_REPLICATION_SERVER = "LAUNCH_REPLICATION_SERVER"

      # No documentation available.
      #
      BOOT_REPLICATION_SERVER = "BOOT_REPLICATION_SERVER"

      # No documentation available.
      #
      AUTHENTICATE_WITH_SERVICE = "AUTHENTICATE_WITH_SERVICE"

      # No documentation available.
      #
      DOWNLOAD_REPLICATION_SOFTWARE = "DOWNLOAD_REPLICATION_SOFTWARE"

      # No documentation available.
      #
      CREATE_STAGING_DISKS = "CREATE_STAGING_DISKS"

      # No documentation available.
      #
      ATTACH_STAGING_DISKS = "ATTACH_STAGING_DISKS"

      # No documentation available.
      #
      PAIR_REPLICATION_SERVER_WITH_AGENT = "PAIR_REPLICATION_SERVER_WITH_AGENT"

      # No documentation available.
      #
      CONNECT_AGENT_TO_REPLICATION_SERVER = "CONNECT_AGENT_TO_REPLICATION_SERVER"

      # No documentation available.
      #
      START_DATA_TRANSFER = "START_DATA_TRANSFER"
    end

    # Includes enum constants for DataReplicationInitiationStepStatus
    #
    module DataReplicationInitiationStepStatus
      # No documentation available.
      #
      NOT_STARTED = "NOT_STARTED"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      SKIPPED = "SKIPPED"
    end

    # Includes enum constants for DataReplicationState
    #
    module DataReplicationState
      # No documentation available.
      #
      STOPPED = "STOPPED"

      # No documentation available.
      #
      INITIATING = "INITIATING"

      # No documentation available.
      #
      INITIAL_SYNC = "INITIAL_SYNC"

      # No documentation available.
      #
      BACKLOG = "BACKLOG"

      # No documentation available.
      #
      CREATING_SNAPSHOT = "CREATING_SNAPSHOT"

      # No documentation available.
      #
      CONTINUOUS = "CONTINUOUS"

      # No documentation available.
      #
      PAUSED = "PAUSED"

      # No documentation available.
      #
      RESCAN = "RESCAN"

      # No documentation available.
      #
      STALLED = "STALLED"

      # No documentation available.
      #
      DISCONNECTED = "DISCONNECTED"
    end

    # @!attribute job_id
    #   <p>The ID of the Job to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteJobInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteJobOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute recovery_instance_id
    #   <p>RThe ID of the Recovery Instance to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteRecoveryInstanceInput = ::Struct.new(
      :recovery_instance_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteRecoveryInstanceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute replication_configuration_template_id
    #   <p>The ID of the Replication Configuration Template to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteReplicationConfigurationTemplateInput = ::Struct.new(
      :replication_configuration_template_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteReplicationConfigurationTemplateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_server_id
    #   <p>The ID of the Source Server to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteSourceServerInput = ::Struct.new(
      :source_server_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteSourceServerOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The ID of the Job for which Job log items will be retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of Job log items to retrieve.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token of the next Job log items to retrieve.</p>
    #
    #   @return [String]
    #
    DescribeJobLogItemsInput = ::Struct.new(
      :job_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute items
    #   <p>An array of Job log items.</p>
    #
    #   @return [Array<JobLog>]
    #
    # @!attribute next_token
    #   <p>The token of the next Job log items to retrieve.</p>
    #
    #   @return [String]
    #
    DescribeJobLogItemsOutput = ::Struct.new(
      :items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p>A set of filters by which to return Jobs.</p>
    #
    #   @return [DescribeJobsRequestFilters]
    #
    # @!attribute max_results
    #   <p>Maximum number of Jobs to retrieve.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token of the next Job to retrieve.</p>
    #
    #   @return [String]
    #
    DescribeJobsInput = ::Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute items
    #   <p>An array of Jobs.</p>
    #
    #   @return [Array<Job>]
    #
    # @!attribute next_token
    #   <p>The token of the next Job to retrieve.</p>
    #
    #   @return [String]
    #
    DescribeJobsOutput = ::Struct.new(
      :items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A set of filters by which to return Jobs.</p>
    #
    # @!attribute job_i_ds
    #   <p>An array of Job IDs that should be returned. An empty array means all jobs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute from_date
    #   <p>The start date in a date range query.</p>
    #
    #   @return [String]
    #
    # @!attribute to_date
    #   <p>The end date in a date range query.</p>
    #
    #   @return [String]
    #
    DescribeJobsRequestFilters = ::Struct.new(
      :job_i_ds,
      :from_date,
      :to_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p>A set of filters by which to return Recovery Instances.</p>
    #
    #   @return [DescribeRecoveryInstancesRequestFilters]
    #
    # @!attribute max_results
    #   <p>Maximum number of Recovery Instances to retrieve.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token of the next Recovery Instance to retrieve.</p>
    #
    #   @return [String]
    #
    DescribeRecoveryInstancesInput = ::Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute next_token
    #   <p>The token of the next Recovery Instance to retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute items
    #   <p>An array of Recovery Instances.</p>
    #
    #   @return [Array<RecoveryInstance>]
    #
    DescribeRecoveryInstancesOutput = ::Struct.new(
      :next_token,
      :items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A set of filters by which to return Recovery Instances.</p>
    #
    # @!attribute recovery_instance_i_ds
    #   <p>An array of Recovery Instance IDs that should be returned. An empty array means all Recovery Instances.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute source_server_i_ds
    #   <p>An array of Source Server IDs for which associated Recovery Instances should be returned.</p>
    #
    #   @return [Array<String>]
    #
    DescribeRecoveryInstancesRequestFilters = ::Struct.new(
      :recovery_instance_i_ds,
      :source_server_i_ds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_server_id
    #   <p>Filter Recovery Snapshots by Source Server ID.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>A set of filters by which to return Recovery Snapshots.</p>
    #
    #   @return [DescribeRecoverySnapshotsRequestFilters]
    #
    # @!attribute order
    #   <p>The sorted ordering by which to return Recovery Snapshots.</p>
    #
    #   Enum, one of: ["ASC", "DESC"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Maximum number of Recovery Snapshots to retrieve.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token of the next Recovery Snapshot to retrieve.</p>
    #
    #   @return [String]
    #
    DescribeRecoverySnapshotsInput = ::Struct.new(
      :source_server_id,
      :filters,
      :order,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute items
    #   <p>An array of Recovery Snapshots.</p>
    #
    #   @return [Array<RecoverySnapshot>]
    #
    # @!attribute next_token
    #   <p>The token of the next Recovery Snapshot to retrieve.</p>
    #
    #   @return [String]
    #
    DescribeRecoverySnapshotsOutput = ::Struct.new(
      :items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A set of filters by which to return Recovery Snapshots.</p>
    #
    # @!attribute from_date_time
    #   <p>The start date in a date range query.</p>
    #
    #   @return [String]
    #
    # @!attribute to_date_time
    #   <p>The end date in a date range query.</p>
    #
    #   @return [String]
    #
    DescribeRecoverySnapshotsRequestFilters = ::Struct.new(
      :from_date_time,
      :to_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute replication_configuration_template_i_ds
    #   <p>The IDs of the Replication Configuration Templates to retrieve. An empty list means all Replication Configuration Templates.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_results
    #   <p>Maximum number of Replication Configuration Templates to retrieve.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token of the next Replication Configuration Template to retrieve.</p>
    #
    #   @return [String]
    #
    DescribeReplicationConfigurationTemplatesInput = ::Struct.new(
      :replication_configuration_template_i_ds,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute items
    #   <p>An array of Replication Configuration Templates.</p>
    #
    #   @return [Array<ReplicationConfigurationTemplate>]
    #
    # @!attribute next_token
    #   <p>The token of the next Replication Configuration Template to retrieve.</p>
    #
    #   @return [String]
    #
    DescribeReplicationConfigurationTemplatesOutput = ::Struct.new(
      :items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p>A set of filters by which to return Source Servers.</p>
    #
    #   @return [DescribeSourceServersRequestFilters]
    #
    # @!attribute max_results
    #   <p>Maximum number of Source Servers to retrieve.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token of the next Source Server to retrieve.</p>
    #
    #   @return [String]
    #
    DescribeSourceServersInput = ::Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute items
    #   <p>An array of Source Servers.</p>
    #
    #   @return [Array<SourceServer>]
    #
    # @!attribute next_token
    #   <p>The token of the next Source Server to retrieve.</p>
    #
    #   @return [String]
    #
    DescribeSourceServersOutput = ::Struct.new(
      :items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A set of filters by which to return Source Servers.</p>
    #
    # @!attribute source_server_i_ds
    #   <p>An array of Source Servers IDs that should be returned. An empty array means all Source Servers.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute hardware_id
    #   <p>An ID that describes the hardware of the Source Server. This is either an EC2 instance id, a VMware uuid or a mac address.</p>
    #
    #   @return [String]
    #
    # @!attribute staging_account_i_ds
    #   <p>An array of staging account IDs that extended source servers belong to. An empty array means all source servers will be shown.</p>
    #
    #   @return [Array<String>]
    #
    DescribeSourceServersRequestFilters = ::Struct.new(
      :source_server_i_ds,
      :hardware_id,
      :staging_account_i_ds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute recovery_instance_id
    #   <p>The ID of the Recovery Instance to disconnect.</p>
    #
    #   @return [String]
    #
    DisconnectRecoveryInstanceInput = ::Struct.new(
      :recovery_instance_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisconnectRecoveryInstanceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_server_id
    #   <p>The ID of the Source Server to disconnect.</p>
    #
    #   @return [String]
    #
    DisconnectSourceServerInput = ::Struct.new(
      :source_server_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_server_id
    #   <p>The ID of the Source Server.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the Source Server.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the Source Server.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute recovery_instance_id
    #   <p>The ID of the Recovery Instance associated with this Source Server.</p>
    #
    #   @return [String]
    #
    # @!attribute last_launch_result
    #   <p>The status of the last recovery launch of this Source Server.</p>
    #
    #   Enum, one of: ["NOT_STARTED", "PENDING", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute data_replication_info
    #   <p>The Data Replication Info of the Source Server.</p>
    #
    #   @return [DataReplicationInfo]
    #
    # @!attribute life_cycle
    #   <p>The lifecycle information of this Source Server.</p>
    #
    #   @return [LifeCycle]
    #
    # @!attribute source_properties
    #   <p>The source properties of the Source Server.</p>
    #
    #   @return [SourceProperties]
    #
    # @!attribute staging_area
    #   <p>The staging area of the source server.</p>
    #
    #   @return [StagingArea]
    #
    DisconnectSourceServerOutput = ::Struct.new(
      :source_server_id,
      :arn,
      :tags,
      :recovery_instance_id,
      :last_launch_result,
      :data_replication_info,
      :life_cycle,
      :source_properties,
      :staging_area,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Drs::Types::DisconnectSourceServerOutput "\
          "source_server_id=#{source_server_id || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "tags=\"[SENSITIVE]\", "\
          "recovery_instance_id=#{recovery_instance_id || 'nil'}, "\
          "last_launch_result=#{last_launch_result || 'nil'}, "\
          "data_replication_info=#{data_replication_info || 'nil'}, "\
          "life_cycle=#{life_cycle || 'nil'}, "\
          "source_properties=#{source_properties || 'nil'}, "\
          "staging_area=#{staging_area || 'nil'}>"
      end
    end

    # <p>An object representing a data storage device on a server.</p>
    #
    # @!attribute device_name
    #   <p>The disk or device name.</p>
    #
    #   @return [String]
    #
    # @!attribute bytes
    #   <p>The amount of storage on the disk in bytes.</p>
    #
    #   @return [Integer]
    #
    Disk = ::Struct.new(
      :device_name,
      :bytes,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bytes ||= 0
      end
    end

    # Includes enum constants for EC2InstanceState
    #
    module EC2InstanceState
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      STOPPING = "STOPPING"

      # No documentation available.
      #
      STOPPED = "STOPPED"

      # No documentation available.
      #
      SHUTTING_DOWN = "SHUTTING-DOWN"

      # No documentation available.
      #
      TERMINATED = "TERMINATED"

      # No documentation available.
      #
      NOT_FOUND = "NOT_FOUND"
    end

    # Includes enum constants for ExtensionStatus
    #
    module ExtensionStatus
      # No documentation available.
      #
      EXTENDED = "EXTENDED"

      # No documentation available.
      #
      EXTENSION_ERROR = "EXTENSION_ERROR"

      # No documentation available.
      #
      NOT_EXTENDED = "NOT_EXTENDED"
    end

    # Includes enum constants for FailbackReplicationError
    #
    module FailbackReplicationError
      # No documentation available.
      #
      AGENT_NOT_SEEN = "AGENT_NOT_SEEN"

      # No documentation available.
      #
      FAILBACK_CLIENT_NOT_SEEN = "FAILBACK_CLIENT_NOT_SEEN"

      # No documentation available.
      #
      NOT_CONVERGING = "NOT_CONVERGING"

      # No documentation available.
      #
      UNSTABLE_NETWORK = "UNSTABLE_NETWORK"

      # No documentation available.
      #
      FAILED_TO_ESTABLISH_RECOVERY_INSTANCE_COMMUNICATION = "FAILED_TO_ESTABLISH_RECOVERY_INSTANCE_COMMUNICATION"

      # No documentation available.
      #
      FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE_TO_FAILBACK_CLIENT = "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE_TO_FAILBACK_CLIENT"

      # No documentation available.
      #
      FAILED_TO_CONFIGURE_REPLICATION_SOFTWARE = "FAILED_TO_CONFIGURE_REPLICATION_SOFTWARE"

      # No documentation available.
      #
      FAILED_TO_PAIR_AGENT_WITH_REPLICATION_SOFTWARE = "FAILED_TO_PAIR_AGENT_WITH_REPLICATION_SOFTWARE"

      # No documentation available.
      #
      FAILED_TO_ESTABLISH_AGENT_REPLICATOR_SOFTWARE_COMMUNICATION = "FAILED_TO_ESTABLISH_AGENT_REPLICATOR_SOFTWARE_COMMUNICATION"
    end

    # Includes enum constants for FailbackState
    #
    module FailbackState
      # No documentation available.
      #
      FAILBACK_NOT_STARTED = "FAILBACK_NOT_STARTED"

      # No documentation available.
      #
      FAILBACK_IN_PROGRESS = "FAILBACK_IN_PROGRESS"

      # No documentation available.
      #
      FAILBACK_READY_FOR_LAUNCH = "FAILBACK_READY_FOR_LAUNCH"

      # No documentation available.
      #
      FAILBACK_COMPLETED = "FAILBACK_COMPLETED"

      # No documentation available.
      #
      FAILBACK_ERROR = "FAILBACK_ERROR"
    end

    # @!attribute recovery_instance_id
    #   <p>The ID of the Recovery Instance whose failback replication configuration should be returned.</p>
    #
    #   @return [String]
    #
    GetFailbackReplicationConfigurationInput = ::Struct.new(
      :recovery_instance_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute recovery_instance_id
    #   <p>The ID of the Recovery Instance.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the Failback Replication Configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth_throttling
    #   <p>Configure bandwidth throttling for the outbound data transfer rate of the Recovery Instance in Mbps.</p>
    #
    #   @return [Integer]
    #
    # @!attribute use_private_ip
    #   <p>Whether to use Private IP for the failback replication of the Recovery Instance.</p>
    #
    #   @return [Boolean]
    #
    GetFailbackReplicationConfigurationOutput = ::Struct.new(
      :recovery_instance_id,
      :name,
      :bandwidth_throttling,
      :use_private_ip,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bandwidth_throttling ||= 0
      end
    end

    # @!attribute source_server_id
    #   <p>The ID of the Source Server that we want to retrieve a Launch Configuration for.</p>
    #
    #   @return [String]
    #
    GetLaunchConfigurationInput = ::Struct.new(
      :source_server_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_server_id
    #   <p>The ID of the Source Server for this launch configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the launch configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_launch_template_id
    #   <p>The EC2 launch template ID of this launch configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_disposition
    #   <p>The state of the Recovery Instance in EC2 after the recovery operation.</p>
    #
    #   Enum, one of: ["STOPPED", "STARTED"]
    #
    #   @return [String]
    #
    # @!attribute target_instance_type_right_sizing_method
    #   <p>Whether Elastic Disaster Recovery should try to automatically choose the instance type that best matches the OS, CPU, and RAM of your Source Server.</p>
    #
    #   Enum, one of: ["NONE", "BASIC"]
    #
    #   @return [String]
    #
    # @!attribute copy_private_ip
    #   <p>Whether we should copy the Private IP of the Source Server to the Recovery Instance.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute copy_tags
    #   <p>Whether we want to copy the tags of the Source Server to the EC2 machine of the Recovery Instance.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute licensing
    #   <p>The licensing configuration to be used for this launch configuration.</p>
    #
    #   @return [Licensing]
    #
    GetLaunchConfigurationOutput = ::Struct.new(
      :source_server_id,
      :name,
      :ec2_launch_template_id,
      :launch_disposition,
      :target_instance_type_right_sizing_method,
      :copy_private_ip,
      :copy_tags,
      :licensing,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_server_id
    #   <p>The ID of the Source Serve for this Replication Configuration.r</p>
    #
    #   @return [String]
    #
    GetReplicationConfigurationInput = ::Struct.new(
      :source_server_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_server_id
    #   <p>The ID of the Source Server for this Replication Configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the Replication Configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute staging_area_subnet_id
    #   <p>The subnet to be used by the replication staging area.</p>
    #
    #   @return [String]
    #
    # @!attribute associate_default_security_group
    #   <p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute replication_servers_security_groups_i_ds
    #   <p>The security group IDs that will be used by the replication server.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute replication_server_instance_type
    #   <p>The instance type to be used for the replication server.</p>
    #
    #   @return [String]
    #
    # @!attribute use_dedicated_replication_server
    #   <p>Whether to use a dedicated Replication Server in the replication staging area.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute default_large_staging_disk_type
    #   <p>The Staging Disk EBS volume type to be used during replication.</p>
    #
    #   Enum, one of: ["GP2", "GP3", "ST1"]
    #
    #   @return [String]
    #
    # @!attribute replicated_disks
    #   <p>The configuration of the disks of the Source Server to be replicated.</p>
    #
    #   @return [Array<ReplicationConfigurationReplicatedDisk>]
    #
    # @!attribute ebs_encryption
    #   <p>The type of EBS encryption to be used during replication.</p>
    #
    #   Enum, one of: ["DEFAULT", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute ebs_encryption_key_arn
    #   <p>The ARN of the EBS encryption key to be used during replication.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth_throttling
    #   <p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>
    #
    #   @return [Integer]
    #
    # @!attribute data_plane_routing
    #   <p>The data plane routing mechanism that will be used for replication.</p>
    #
    #   Enum, one of: ["PRIVATE_IP", "PUBLIC_IP"]
    #
    #   @return [String]
    #
    # @!attribute create_public_ip
    #   <p>Whether to create a Public IP for the Recovery Instance by default.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute staging_area_tags
    #   <p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute pit_policy
    #   <p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>
    #
    #   @return [Array<PITPolicyRule>]
    #
    GetReplicationConfigurationOutput = ::Struct.new(
      :source_server_id,
      :name,
      :staging_area_subnet_id,
      :associate_default_security_group,
      :replication_servers_security_groups_i_ds,
      :replication_server_instance_type,
      :use_dedicated_replication_server,
      :default_large_staging_disk_type,
      :replicated_disks,
      :ebs_encryption,
      :ebs_encryption_key_arn,
      :bandwidth_throttling,
      :data_plane_routing,
      :create_public_ip,
      :staging_area_tags,
      :pit_policy,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bandwidth_throttling ||= 0
      end

      def to_s
        "#<struct AWS::SDK::Drs::Types::GetReplicationConfigurationOutput "\
          "source_server_id=#{source_server_id || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "staging_area_subnet_id=#{staging_area_subnet_id || 'nil'}, "\
          "associate_default_security_group=#{associate_default_security_group || 'nil'}, "\
          "replication_servers_security_groups_i_ds=#{replication_servers_security_groups_i_ds || 'nil'}, "\
          "replication_server_instance_type=#{replication_server_instance_type || 'nil'}, "\
          "use_dedicated_replication_server=#{use_dedicated_replication_server || 'nil'}, "\
          "default_large_staging_disk_type=#{default_large_staging_disk_type || 'nil'}, "\
          "replicated_disks=#{replicated_disks || 'nil'}, "\
          "ebs_encryption=#{ebs_encryption || 'nil'}, "\
          "ebs_encryption_key_arn=#{ebs_encryption_key_arn || 'nil'}, "\
          "bandwidth_throttling=#{bandwidth_throttling || 'nil'}, "\
          "data_plane_routing=#{data_plane_routing || 'nil'}, "\
          "create_public_ip=#{create_public_ip || 'nil'}, "\
          "staging_area_tags=\"[SENSITIVE]\", "\
          "pit_policy=#{pit_policy || 'nil'}>"
      end
    end

    # <p>Hints used to uniquely identify a machine.</p>
    #
    # @!attribute fqdn
    #   <p>Fully Qualified Domain Name identification hint.</p>
    #
    #   @return [String]
    #
    # @!attribute hostname
    #   <p>Hostname identification hint.</p>
    #
    #   @return [String]
    #
    # @!attribute vm_ware_uuid
    #   <p>vCenter VM path identification hint.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_instance_id
    #   <p>AWS Instance ID identification hint.</p>
    #
    #   @return [String]
    #
    IdentificationHints = ::Struct.new(
      :fqdn,
      :hostname,
      :vm_ware_uuid,
      :aws_instance_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    InitializeServiceInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    InitializeServiceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InitiatedBy
    #
    module InitiatedBy
      # No documentation available.
      #
      START_RECOVERY = "START_RECOVERY"

      # No documentation available.
      #
      START_DRILL = "START_DRILL"

      # No documentation available.
      #
      FAILBACK = "FAILBACK"

      # No documentation available.
      #
      DIAGNOSTIC = "DIAGNOSTIC"

      # No documentation available.
      #
      TERMINATE_RECOVERY_INSTANCES = "TERMINATE_RECOVERY_INSTANCES"

      # No documentation available.
      #
      TARGET_ACCOUNT = "TARGET_ACCOUNT"
    end

    # <p>The request processing has failed because of an unknown error, exception or failure.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   <p>The number of seconds after which the request should be safe to retry.</p>
    #
    #   @return [Integer]
    #
    InternalServerException = ::Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.retry_after_seconds ||= 0
      end
    end

    # <p>A job is an asynchronous workflow.</p>
    #
    # @!attribute job_id
    #   <p>The ID of the Job.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of a Job.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the Job.</p>
    #
    #   Enum, one of: ["LAUNCH", "TERMINATE", "CREATE_CONVERTED_SNAPSHOT"]
    #
    #   @return [String]
    #
    # @!attribute initiated_by
    #   <p>A string representing who initiated the Job.</p>
    #
    #   Enum, one of: ["START_RECOVERY", "START_DRILL", "FAILBACK", "DIAGNOSTIC", "TERMINATE_RECOVERY_INSTANCES", "TARGET_ACCOUNT"]
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>The date and time of when the Job was created.</p>
    #
    #   @return [String]
    #
    # @!attribute end_date_time
    #   <p>The date and time of when the Job ended.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the Job.</p>
    #
    #   Enum, one of: ["PENDING", "STARTED", "COMPLETED"]
    #
    #   @return [String]
    #
    # @!attribute participating_servers
    #   <p>A list of servers that the Job is acting upon.</p>
    #
    #   @return [Array<ParticipatingServer>]
    #
    # @!attribute tags
    #   <p>A list of tags associated with the Job.</p>
    #
    #   @return [Hash<String, String>]
    #
    Job = ::Struct.new(
      :job_id,
      :arn,
      :type,
      :initiated_by,
      :creation_date_time,
      :end_date_time,
      :status,
      :participating_servers,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Drs::Types::Job "\
          "job_id=#{job_id || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "type=#{type || 'nil'}, "\
          "initiated_by=#{initiated_by || 'nil'}, "\
          "creation_date_time=#{creation_date_time || 'nil'}, "\
          "end_date_time=#{end_date_time || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "participating_servers=#{participating_servers || 'nil'}, "\
          "tags=\"[SENSITIVE]\">"
      end
    end

    # <p>A log outputted by a Job.</p>
    #
    # @!attribute log_date_time
    #   <p>The date and time the log was taken.</p>
    #
    #   @return [String]
    #
    # @!attribute event
    #   <p>The event represents the type of a log.</p>
    #
    #   Enum, one of: ["JOB_START", "SERVER_SKIPPED", "CLEANUP_START", "CLEANUP_END", "CLEANUP_FAIL", "SNAPSHOT_START", "SNAPSHOT_END", "SNAPSHOT_FAIL", "USING_PREVIOUS_SNAPSHOT", "USING_PREVIOUS_SNAPSHOT_FAILED", "CONVERSION_START", "CONVERSION_END", "CONVERSION_FAIL", "LAUNCH_START", "LAUNCH_FAILED", "JOB_CANCEL", "JOB_END"]
    #
    #   @return [String]
    #
    # @!attribute event_data
    #   <p>Metadata associated with a Job log.</p>
    #
    #   @return [JobLogEventData]
    #
    JobLog = ::Struct.new(
      :log_date_time,
      :event,
      :event_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for JobLogEvent
    #
    module JobLogEvent
      # No documentation available.
      #
      JOB_START = "JOB_START"

      # No documentation available.
      #
      SERVER_SKIPPED = "SERVER_SKIPPED"

      # No documentation available.
      #
      CLEANUP_START = "CLEANUP_START"

      # No documentation available.
      #
      CLEANUP_END = "CLEANUP_END"

      # No documentation available.
      #
      CLEANUP_FAIL = "CLEANUP_FAIL"

      # No documentation available.
      #
      SNAPSHOT_START = "SNAPSHOT_START"

      # No documentation available.
      #
      SNAPSHOT_END = "SNAPSHOT_END"

      # No documentation available.
      #
      SNAPSHOT_FAIL = "SNAPSHOT_FAIL"

      # No documentation available.
      #
      USING_PREVIOUS_SNAPSHOT = "USING_PREVIOUS_SNAPSHOT"

      # No documentation available.
      #
      USING_PREVIOUS_SNAPSHOT_FAILED = "USING_PREVIOUS_SNAPSHOT_FAILED"

      # No documentation available.
      #
      CONVERSION_START = "CONVERSION_START"

      # No documentation available.
      #
      CONVERSION_END = "CONVERSION_END"

      # No documentation available.
      #
      CONVERSION_FAIL = "CONVERSION_FAIL"

      # No documentation available.
      #
      LAUNCH_START = "LAUNCH_START"

      # No documentation available.
      #
      LAUNCH_FAILED = "LAUNCH_FAILED"

      # No documentation available.
      #
      JOB_CANCEL = "JOB_CANCEL"

      # No documentation available.
      #
      JOB_END = "JOB_END"
    end

    # <p>Metadata associated with a Job log.</p>
    #
    # @!attribute source_server_id
    #   <p>The ID of a Source Server.</p>
    #
    #   @return [String]
    #
    # @!attribute conversion_server_id
    #   <p>The ID of a conversion server.</p>
    #
    #   @return [String]
    #
    # @!attribute target_instance_id
    #   <p>The ID of a Recovery Instance.</p>
    #
    #   @return [String]
    #
    # @!attribute raw_error
    #   <p>A string representing a job error.</p>
    #
    #   @return [String]
    #
    # @!attribute conversion_properties
    #   <p>Properties of a conversion job</p>
    #
    #   @return [ConversionProperties]
    #
    JobLogEventData = ::Struct.new(
      :source_server_id,
      :conversion_server_id,
      :target_instance_id,
      :raw_error,
      :conversion_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for JobStatus
    #
    module JobStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      STARTED = "STARTED"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"
    end

    # Includes enum constants for JobType
    #
    module JobType
      # No documentation available.
      #
      LAUNCH = "LAUNCH"

      # No documentation available.
      #
      TERMINATE = "TERMINATE"

      # No documentation available.
      #
      CREATE_CONVERTED_SNAPSHOT = "CREATE_CONVERTED_SNAPSHOT"
    end

    # Includes enum constants for LastLaunchResult
    #
    module LastLaunchResult
      # No documentation available.
      #
      NOT_STARTED = "NOT_STARTED"

      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # Includes enum constants for LastLaunchType
    #
    module LastLaunchType
      # No documentation available.
      #
      RECOVERY = "RECOVERY"

      # No documentation available.
      #
      DRILL = "DRILL"
    end

    # Includes enum constants for LaunchDisposition
    #
    module LaunchDisposition
      # No documentation available.
      #
      STOPPED = "STOPPED"

      # No documentation available.
      #
      STARTED = "STARTED"
    end

    # Includes enum constants for LaunchStatus
    #
    module LaunchStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      LAUNCHED = "LAUNCHED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      TERMINATED = "TERMINATED"
    end

    # <p>Configuration of a machine's license.</p>
    #
    # @!attribute os_byol
    #   <p>Whether to enable "Bring your own license" or not.</p>
    #
    #   @return [Boolean]
    #
    Licensing = ::Struct.new(
      :os_byol,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing the Source Server Lifecycle.</p>
    #
    # @!attribute added_to_service_date_time
    #   <p>The date and time of when the Source Server was added to the service.</p>
    #
    #   @return [String]
    #
    # @!attribute first_byte_date_time
    #   <p>The date and time of the first byte that was replicated from the Source Server.</p>
    #
    #   @return [String]
    #
    # @!attribute elapsed_replication_duration
    #   <p>The amount of time that the Source Server has been replicating for.</p>
    #
    #   @return [String]
    #
    # @!attribute last_seen_by_service_date_time
    #   <p>The date and time this Source Server was last seen by the service.</p>
    #
    #   @return [String]
    #
    # @!attribute last_launch
    #   <p>An object containing information regarding the last launch of the Source Server.</p>
    #
    #   @return [LifeCycleLastLaunch]
    #
    LifeCycle = ::Struct.new(
      :added_to_service_date_time,
      :first_byte_date_time,
      :elapsed_replication_duration,
      :last_seen_by_service_date_time,
      :last_launch,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object containing information regarding the last launch of a Source Server.</p>
    #
    # @!attribute initiated
    #   <p>An object containing information regarding the initiation of the last launch of a Source Server.</p>
    #
    #   @return [LifeCycleLastLaunchInitiated]
    #
    LifeCycleLastLaunch = ::Struct.new(
      :initiated,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object containing information regarding the initiation of the last launch of a Source Server.</p>
    #
    # @!attribute api_call_date_time
    #   <p>The date and time the last Source Server launch was initiated.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID of the Job that was used to last launch the Source Server.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The Job type that was used to last launch the Source Server.</p>
    #
    #   Enum, one of: ["RECOVERY", "DRILL"]
    #
    #   @return [String]
    #
    LifeCycleLastLaunchInitiated = ::Struct.new(
      :api_call_date_time,
      :job_id,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute staging_account_id
    #   <p>The Id of the staging Account to retrieve extensible source servers from.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of extensible source servers to retrieve.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token of the next extensible source server to retrieve.</p>
    #
    #   @return [String]
    #
    ListExtensibleSourceServersInput = ::Struct.new(
      :staging_account_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute items
    #   <p>A list of source servers on a staging Account that are extensible.</p>
    #
    #   @return [Array<StagingSourceServer>]
    #
    # @!attribute next_token
    #   <p>The token of the next extensible source server to retrieve.</p>
    #
    #   @return [String]
    #
    ListExtensibleSourceServersOutput = ::Struct.new(
      :items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of staging Accounts to retrieve.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token of the next staging Account to retrieve.</p>
    #
    #   @return [String]
    #
    ListStagingAccountsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accounts
    #   <p>An array of staging AWS Accounts.</p>
    #
    #   @return [Array<Account>]
    #
    # @!attribute next_token
    #   <p>The token of the next staging Account to retrieve.</p>
    #
    #   @return [String]
    #
    ListStagingAccountsOutput = ::Struct.new(
      :accounts,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource whose tags should be returned.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>The tags of the requested resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Drs::Types::ListTagsForResourceOutput "\
          "tags=\"[SENSITIVE]\">"
      end
    end

    # <p>Network interface.</p>
    #
    # @!attribute mac_address
    #   <p>The MAC address of the network interface.</p>
    #
    #   @return [String]
    #
    # @!attribute ips
    #   <p>Network interface IPs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute is_primary
    #   <p>Whether this is the primary network interface.</p>
    #
    #   @return [Boolean]
    #
    NetworkInterface = ::Struct.new(
      :mac_address,
      :ips,
      :is_primary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Operating System.</p>
    #
    # @!attribute full_string
    #   <p>The long name of the Operating System.</p>
    #
    #   @return [String]
    #
    OS = ::Struct.new(
      :full_string,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A rule in the Point in Time (PIT) policy representing when to take snapshots and how long to retain them for.</p>
    #
    # @!attribute rule_id
    #   <p>The ID of the rule.</p>
    #
    #   @return [Integer]
    #
    # @!attribute units
    #   <p>The units used to measure the interval and retentionDuration.</p>
    #
    #   Enum, one of: ["MINUTE", "HOUR", "DAY"]
    #
    #   @return [String]
    #
    # @!attribute interval
    #   <p>How often, in the chosen units, a snapshot should be taken.</p>
    #
    #   @return [Integer]
    #
    # @!attribute retention_duration
    #   <p>The duration to retain a snapshot for, in the chosen units.</p>
    #
    #   @return [Integer]
    #
    # @!attribute enabled
    #   <p>Whether this rule is enabled or not.</p>
    #
    #   @return [Boolean]
    #
    PITPolicyRule = ::Struct.new(
      :rule_id,
      :units,
      :interval,
      :retention_duration,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.rule_id ||= 0
        self.interval ||= 0
        self.retention_duration ||= 0
      end
    end

    # Includes enum constants for PITPolicyRuleUnits
    #
    module PITPolicyRuleUnits
      # No documentation available.
      #
      MINUTE = "MINUTE"

      # No documentation available.
      #
      HOUR = "HOUR"

      # No documentation available.
      #
      DAY = "DAY"
    end

    # <p>Represents a server participating in an asynchronous Job.</p>
    #
    # @!attribute source_server_id
    #   <p>The Source Server ID of a participating server.</p>
    #
    #   @return [String]
    #
    # @!attribute recovery_instance_id
    #   <p>The Recovery Instance ID of a participating server.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_status
    #   <p>The launch status of a participating server.</p>
    #
    #   Enum, one of: ["PENDING", "IN_PROGRESS", "LAUNCHED", "FAILED", "TERMINATED"]
    #
    #   @return [String]
    #
    ParticipatingServer = ::Struct.new(
      :source_server_id,
      :recovery_instance_id,
      :launch_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A Recovery Instance is a replica of a Source Server running on EC2.</p>
    #
    # @!attribute ec2_instance_id
    #   <p>The EC2 instance ID of the Recovery Instance.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_instance_state
    #   <p>The state of the EC2 instance for this Recovery Instance.</p>
    #
    #   Enum, one of: ["PENDING", "RUNNING", "STOPPING", "STOPPED", "SHUTTING-DOWN", "TERMINATED", "NOT_FOUND"]
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The ID of the Job that created the Recovery Instance.</p>
    #
    #   @return [String]
    #
    # @!attribute recovery_instance_id
    #   <p>The ID of the Recovery Instance.</p>
    #
    #   @return [String]
    #
    # @!attribute source_server_id
    #   <p>The Source Server ID that this Recovery Instance is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the Recovery Instance.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>An array of tags that are associated with the Recovery Instance.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute failback
    #   <p>An object representing failback related information of the Recovery Instance.</p>
    #
    #   @return [RecoveryInstanceFailback]
    #
    # @!attribute data_replication_info
    #   <p>The Data Replication Info of the Recovery Instance.</p>
    #
    #   @return [RecoveryInstanceDataReplicationInfo]
    #
    # @!attribute recovery_instance_properties
    #   <p>Properties of the Recovery Instance machine.</p>
    #
    #   @return [RecoveryInstanceProperties]
    #
    # @!attribute point_in_time_snapshot_date_time
    #   <p>The date and time of the Point in Time (PIT) snapshot that this Recovery Instance was launched from.</p>
    #
    #   @return [String]
    #
    # @!attribute is_drill
    #   <p>Whether this Recovery Instance was created for a drill or for an actual Recovery event.</p>
    #
    #   @return [Boolean]
    #
    RecoveryInstance = ::Struct.new(
      :ec2_instance_id,
      :ec2_instance_state,
      :job_id,
      :recovery_instance_id,
      :source_server_id,
      :arn,
      :tags,
      :failback,
      :data_replication_info,
      :recovery_instance_properties,
      :point_in_time_snapshot_date_time,
      :is_drill,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Drs::Types::RecoveryInstance "\
          "ec2_instance_id=#{ec2_instance_id || 'nil'}, "\
          "ec2_instance_state=#{ec2_instance_state || 'nil'}, "\
          "job_id=#{job_id || 'nil'}, "\
          "recovery_instance_id=#{recovery_instance_id || 'nil'}, "\
          "source_server_id=#{source_server_id || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "tags=\"[SENSITIVE]\", "\
          "failback=#{failback || 'nil'}, "\
          "data_replication_info=#{data_replication_info || 'nil'}, "\
          "recovery_instance_properties=#{recovery_instance_properties || 'nil'}, "\
          "point_in_time_snapshot_date_time=#{point_in_time_snapshot_date_time || 'nil'}, "\
          "is_drill=#{is_drill || 'nil'}>"
      end
    end

    # <p>Error in data replication.</p>
    #
    # @!attribute error
    #   <p>Error in data replication.</p>
    #
    #   Enum, one of: ["AGENT_NOT_SEEN", "FAILBACK_CLIENT_NOT_SEEN", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_ESTABLISH_RECOVERY_INSTANCE_COMMUNICATION", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE_TO_FAILBACK_CLIENT", "FAILED_TO_CONFIGURE_REPLICATION_SOFTWARE", "FAILED_TO_PAIR_AGENT_WITH_REPLICATION_SOFTWARE", "FAILED_TO_ESTABLISH_AGENT_REPLICATOR_SOFTWARE_COMMUNICATION"]
    #
    #   @return [String]
    #
    # @!attribute raw_error
    #   <p>Error in data replication.</p>
    #
    #   @return [String]
    #
    RecoveryInstanceDataReplicationError = ::Struct.new(
      :error,
      :raw_error,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about Data Replication</p>
    #
    # @!attribute lag_duration
    #   <p>Data replication lag duration.</p>
    #
    #   @return [String]
    #
    # @!attribute eta_date_time
    #   <p>An estimate of when the data replication will be completed.</p>
    #
    #   @return [String]
    #
    # @!attribute replicated_disks
    #   <p>The disks that should be replicated.</p>
    #
    #   @return [Array<RecoveryInstanceDataReplicationInfoReplicatedDisk>]
    #
    # @!attribute data_replication_state
    #   <p>The state of the data replication.</p>
    #
    #   Enum, one of: ["STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED"]
    #
    #   @return [String]
    #
    # @!attribute data_replication_initiation
    #   <p>Information about whether the data replication has been initiated.</p>
    #
    #   @return [RecoveryInstanceDataReplicationInitiation]
    #
    # @!attribute data_replication_error
    #   <p>Information about Data Replication</p>
    #
    #   @return [RecoveryInstanceDataReplicationError]
    #
    RecoveryInstanceDataReplicationInfo = ::Struct.new(
      :lag_duration,
      :eta_date_time,
      :replicated_disks,
      :data_replication_state,
      :data_replication_initiation,
      :data_replication_error,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A disk that should be replicated.</p>
    #
    # @!attribute device_name
    #   <p>The name of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute total_storage_bytes
    #   <p>The total amount of data to be replicated in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute replicated_storage_bytes
    #   <p>The amount of data replicated so far in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute rescanned_storage_bytes
    #   <p>The amount of data to be rescanned in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute backlogged_storage_bytes
    #   <p>The size of the replication backlog in bytes.</p>
    #
    #   @return [Integer]
    #
    RecoveryInstanceDataReplicationInfoReplicatedDisk = ::Struct.new(
      :device_name,
      :total_storage_bytes,
      :replicated_storage_bytes,
      :rescanned_storage_bytes,
      :backlogged_storage_bytes,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.total_storage_bytes ||= 0
        self.replicated_storage_bytes ||= 0
        self.rescanned_storage_bytes ||= 0
        self.backlogged_storage_bytes ||= 0
      end
    end

    # <p>Data replication initiation.</p>
    #
    # @!attribute start_date_time
    #   <p>The date and time of the current attempt to initiate data replication.</p>
    #
    #   @return [String]
    #
    # @!attribute steps
    #   <p>The steps of the current attempt to initiate data replication.</p>
    #
    #   @return [Array<RecoveryInstanceDataReplicationInitiationStep>]
    #
    RecoveryInstanceDataReplicationInitiation = ::Struct.new(
      :start_date_time,
      :steps,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Data replication initiation step.</p>
    #
    # @!attribute name
    #   <p>The name of the step.</p>
    #
    #   Enum, one of: ["LINK_FAILBACK_CLIENT_WITH_RECOVERY_INSTANCE", "COMPLETE_VOLUME_MAPPING", "ESTABLISH_RECOVERY_INSTANCE_COMMUNICATION", "DOWNLOAD_REPLICATION_SOFTWARE_TO_FAILBACK_CLIENT", "CONFIGURE_REPLICATION_SOFTWARE", "PAIR_AGENT_WITH_REPLICATION_SOFTWARE", "ESTABLISH_AGENT_REPLICATOR_SOFTWARE_COMMUNICATION"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the step.</p>
    #
    #   Enum, one of: ["NOT_STARTED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "SKIPPED"]
    #
    #   @return [String]
    #
    RecoveryInstanceDataReplicationInitiationStep = ::Struct.new(
      :name,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RecoveryInstanceDataReplicationInitiationStepName
    #
    module RecoveryInstanceDataReplicationInitiationStepName
      # No documentation available.
      #
      LINK_FAILBACK_CLIENT_WITH_RECOVERY_INSTANCE = "LINK_FAILBACK_CLIENT_WITH_RECOVERY_INSTANCE"

      # No documentation available.
      #
      COMPLETE_VOLUME_MAPPING = "COMPLETE_VOLUME_MAPPING"

      # No documentation available.
      #
      ESTABLISH_RECOVERY_INSTANCE_COMMUNICATION = "ESTABLISH_RECOVERY_INSTANCE_COMMUNICATION"

      # No documentation available.
      #
      DOWNLOAD_REPLICATION_SOFTWARE_TO_FAILBACK_CLIENT = "DOWNLOAD_REPLICATION_SOFTWARE_TO_FAILBACK_CLIENT"

      # No documentation available.
      #
      CONFIGURE_REPLICATION_SOFTWARE = "CONFIGURE_REPLICATION_SOFTWARE"

      # No documentation available.
      #
      PAIR_AGENT_WITH_REPLICATION_SOFTWARE = "PAIR_AGENT_WITH_REPLICATION_SOFTWARE"

      # No documentation available.
      #
      ESTABLISH_AGENT_REPLICATOR_SOFTWARE_COMMUNICATION = "ESTABLISH_AGENT_REPLICATOR_SOFTWARE_COMMUNICATION"
    end

    # Includes enum constants for RecoveryInstanceDataReplicationInitiationStepStatus
    #
    module RecoveryInstanceDataReplicationInitiationStepStatus
      # No documentation available.
      #
      NOT_STARTED = "NOT_STARTED"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      SKIPPED = "SKIPPED"
    end

    # Includes enum constants for RecoveryInstanceDataReplicationState
    #
    module RecoveryInstanceDataReplicationState
      # No documentation available.
      #
      STOPPED = "STOPPED"

      # No documentation available.
      #
      INITIATING = "INITIATING"

      # No documentation available.
      #
      INITIAL_SYNC = "INITIAL_SYNC"

      # No documentation available.
      #
      BACKLOG = "BACKLOG"

      # No documentation available.
      #
      CREATING_SNAPSHOT = "CREATING_SNAPSHOT"

      # No documentation available.
      #
      CONTINUOUS = "CONTINUOUS"

      # No documentation available.
      #
      PAUSED = "PAUSED"

      # No documentation available.
      #
      RESCAN = "RESCAN"

      # No documentation available.
      #
      STALLED = "STALLED"

      # No documentation available.
      #
      DISCONNECTED = "DISCONNECTED"
    end

    # <p>An object representing a block storage device on the Recovery Instance.</p>
    #
    # @!attribute internal_device_name
    #   <p>The internal device name of this disk. This is the name that is visible on the machine itself and not from the EC2 console.</p>
    #
    #   @return [String]
    #
    # @!attribute bytes
    #   <p>The amount of storage on the disk in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute ebs_volume_id
    #   <p>The EBS Volume ID of this disk.</p>
    #
    #   @return [String]
    #
    RecoveryInstanceDisk = ::Struct.new(
      :internal_device_name,
      :bytes,
      :ebs_volume_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bytes ||= 0
      end
    end

    # <p>An object representing failback related information of the Recovery Instance.</p>
    #
    # @!attribute failback_client_id
    #   <p>The ID of the failback client that this Recovery Instance is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute failback_job_id
    #   <p>The Job ID of the last failback log for this Recovery Instance.</p>
    #
    #   @return [String]
    #
    # @!attribute failback_initiation_time
    #   <p>The date and time that the failback initiation started.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the failback process that this Recovery Instance is in.</p>
    #
    #   Enum, one of: ["FAILBACK_NOT_STARTED", "FAILBACK_IN_PROGRESS", "FAILBACK_READY_FOR_LAUNCH", "FAILBACK_COMPLETED", "FAILBACK_ERROR"]
    #
    #   @return [String]
    #
    # @!attribute agent_last_seen_by_service_date_time
    #   <p>The date and time the agent on the Recovery Instance was last seen by the service.</p>
    #
    #   @return [String]
    #
    # @!attribute failback_client_last_seen_by_service_date_time
    #   <p>The date and time that the failback client was last seen by the service.</p>
    #
    #   @return [String]
    #
    # @!attribute failback_to_original_server
    #   <p>Whether we are failing back to the original Source Server for this Recovery Instance.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute first_byte_date_time
    #   <p>The date and time of the first byte that was replicated from the Recovery Instance.</p>
    #
    #   @return [String]
    #
    # @!attribute elapsed_replication_duration
    #   <p>The amount of time that the Recovery Instance has been replicating for.</p>
    #
    #   @return [String]
    #
    RecoveryInstanceFailback = ::Struct.new(
      :failback_client_id,
      :failback_job_id,
      :failback_initiation_time,
      :state,
      :agent_last_seen_by_service_date_time,
      :failback_client_last_seen_by_service_date_time,
      :failback_to_original_server,
      :first_byte_date_time,
      :elapsed_replication_duration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Properties of the Recovery Instance machine.</p>
    #
    # @!attribute last_updated_date_time
    #   <p>The date and time the Recovery Instance properties were last updated on.</p>
    #
    #   @return [String]
    #
    # @!attribute identification_hints
    #   <p>Hints used to uniquely identify a machine.</p>
    #
    #   @return [IdentificationHints]
    #
    # @!attribute network_interfaces
    #   <p>An array of network interfaces.</p>
    #
    #   @return [Array<NetworkInterface>]
    #
    # @!attribute disks
    #   <p>An array of disks.</p>
    #
    #   @return [Array<RecoveryInstanceDisk>]
    #
    # @!attribute cpus
    #   <p>An array of CPUs.</p>
    #
    #   @return [Array<CPU>]
    #
    # @!attribute ram_bytes
    #   <p>The amount of RAM in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute os
    #   <p>Operating system.</p>
    #
    #   @return [OS]
    #
    RecoveryInstanceProperties = ::Struct.new(
      :last_updated_date_time,
      :identification_hints,
      :network_interfaces,
      :disks,
      :cpus,
      :ram_bytes,
      :os,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.ram_bytes ||= 0
      end
    end

    # <p>A snapshot of a Source Server used during recovery.</p>
    #
    # @!attribute snapshot_id
    #   <p>The ID of the Recovery Snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute source_server_id
    #   <p>The ID of the Source Server that the snapshot was taken for.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_timestamp
    #   <p>The timestamp of when we expect the snapshot to be taken.</p>
    #
    #   @return [String]
    #
    # @!attribute timestamp
    #   <p>The actual timestamp that the snapshot was taken.</p>
    #
    #   @return [String]
    #
    # @!attribute ebs_snapshots
    #   <p>A list of EBS snapshots.</p>
    #
    #   @return [Array<String>]
    #
    RecoverySnapshot = ::Struct.new(
      :snapshot_id,
      :source_server_id,
      :expected_timestamp,
      :timestamp,
      :ebs_snapshots,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RecoverySnapshotsOrder
    #
    module RecoverySnapshotsOrder
      # No documentation available.
      #
      ASC = "ASC"

      # No documentation available.
      #
      DESC = "DESC"
    end

    # Includes enum constants for ReplicationConfigurationDataPlaneRouting
    #
    module ReplicationConfigurationDataPlaneRouting
      # No documentation available.
      #
      PRIVATE_IP = "PRIVATE_IP"

      # No documentation available.
      #
      PUBLIC_IP = "PUBLIC_IP"
    end

    # Includes enum constants for ReplicationConfigurationDefaultLargeStagingDiskType
    #
    module ReplicationConfigurationDefaultLargeStagingDiskType
      # No documentation available.
      #
      GP2 = "GP2"

      # No documentation available.
      #
      GP3 = "GP3"

      # No documentation available.
      #
      ST1 = "ST1"
    end

    # Includes enum constants for ReplicationConfigurationEbsEncryption
    #
    module ReplicationConfigurationEbsEncryption
      # No documentation available.
      #
      DEFAULT = "DEFAULT"

      # No documentation available.
      #
      CUSTOM = "CUSTOM"
    end

    # <p>The configuration of a disk of the Source Server to be replicated.</p>
    #
    # @!attribute device_name
    #   <p>The name of the device.</p>
    #
    #   @return [String]
    #
    # @!attribute is_boot_disk
    #   <p>Whether to boot from this disk or not.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute staging_disk_type
    #   <p>The Staging Disk EBS volume type to be used during replication.</p>
    #
    #   Enum, one of: ["AUTO", "GP2", "GP3", "IO1", "SC1", "ST1", "STANDARD"]
    #
    #   @return [String]
    #
    # @!attribute iops
    #   <p>The requested number of I/O operations per second (IOPS).</p>
    #
    #   @return [Integer]
    #
    # @!attribute throughput
    #   <p>The throughput to use for the EBS volume in MiB/s. This parameter is valid only for gp3 volumes.</p>
    #
    #   @return [Integer]
    #
    ReplicationConfigurationReplicatedDisk = ::Struct.new(
      :device_name,
      :is_boot_disk,
      :staging_disk_type,
      :iops,
      :throughput,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.iops ||= 0
        self.throughput ||= 0
      end
    end

    # Includes enum constants for ReplicationConfigurationReplicatedDiskStagingDiskType
    #
    module ReplicationConfigurationReplicatedDiskStagingDiskType
      # No documentation available.
      #
      AUTO = "AUTO"

      # No documentation available.
      #
      GP2 = "GP2"

      # No documentation available.
      #
      GP3 = "GP3"

      # No documentation available.
      #
      IO1 = "IO1"

      # No documentation available.
      #
      SC1 = "SC1"

      # No documentation available.
      #
      ST1 = "ST1"

      # No documentation available.
      #
      STANDARD = "STANDARD"
    end

    # @!attribute replication_configuration_template_id
    #   <p>The Replication Configuration Template ID.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Replication Configuration Template ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute staging_area_subnet_id
    #   <p>The subnet to be used by the replication staging area.</p>
    #
    #   @return [String]
    #
    # @!attribute associate_default_security_group
    #   <p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration Template.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute replication_servers_security_groups_i_ds
    #   <p>The security group IDs that will be used by the replication server.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute replication_server_instance_type
    #   <p>The instance type to be used for the replication server.</p>
    #
    #   @return [String]
    #
    # @!attribute use_dedicated_replication_server
    #   <p>Whether to use a dedicated Replication Server in the replication staging area.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute default_large_staging_disk_type
    #   <p>The Staging Disk EBS volume type to be used during replication.</p>
    #
    #   Enum, one of: ["GP2", "GP3", "ST1"]
    #
    #   @return [String]
    #
    # @!attribute ebs_encryption
    #   <p>The type of EBS encryption to be used during replication.</p>
    #
    #   Enum, one of: ["DEFAULT", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute ebs_encryption_key_arn
    #   <p>The ARN of the EBS encryption key to be used during replication.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth_throttling
    #   <p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>
    #
    #   @return [Integer]
    #
    # @!attribute data_plane_routing
    #   <p>The data plane routing mechanism that will be used for replication.</p>
    #
    #   Enum, one of: ["PRIVATE_IP", "PUBLIC_IP"]
    #
    #   @return [String]
    #
    # @!attribute create_public_ip
    #   <p>Whether to create a Public IP for the Recovery Instance by default.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute staging_area_tags
    #   <p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute tags
    #   <p>A set of tags to be associated with the Replication Configuration Template resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute pit_policy
    #   <p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>
    #
    #   @return [Array<PITPolicyRule>]
    #
    ReplicationConfigurationTemplate = ::Struct.new(
      :replication_configuration_template_id,
      :arn,
      :staging_area_subnet_id,
      :associate_default_security_group,
      :replication_servers_security_groups_i_ds,
      :replication_server_instance_type,
      :use_dedicated_replication_server,
      :default_large_staging_disk_type,
      :ebs_encryption,
      :ebs_encryption_key_arn,
      :bandwidth_throttling,
      :data_plane_routing,
      :create_public_ip,
      :staging_area_tags,
      :tags,
      :pit_policy,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bandwidth_throttling ||= 0
      end

      def to_s
        "#<struct AWS::SDK::Drs::Types::ReplicationConfigurationTemplate "\
          "replication_configuration_template_id=#{replication_configuration_template_id || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "staging_area_subnet_id=#{staging_area_subnet_id || 'nil'}, "\
          "associate_default_security_group=#{associate_default_security_group || 'nil'}, "\
          "replication_servers_security_groups_i_ds=#{replication_servers_security_groups_i_ds || 'nil'}, "\
          "replication_server_instance_type=#{replication_server_instance_type || 'nil'}, "\
          "use_dedicated_replication_server=#{use_dedicated_replication_server || 'nil'}, "\
          "default_large_staging_disk_type=#{default_large_staging_disk_type || 'nil'}, "\
          "ebs_encryption=#{ebs_encryption || 'nil'}, "\
          "ebs_encryption_key_arn=#{ebs_encryption_key_arn || 'nil'}, "\
          "bandwidth_throttling=#{bandwidth_throttling || 'nil'}, "\
          "data_plane_routing=#{data_plane_routing || 'nil'}, "\
          "create_public_ip=#{create_public_ip || 'nil'}, "\
          "staging_area_tags=\"[SENSITIVE]\", "\
          "tags=\"[SENSITIVE]\", "\
          "pit_policy=#{pit_policy || 'nil'}>"
      end
    end

    # <p>The resource for this operation was not found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of the resource.</p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :code,
      :resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_server_id
    #   <p>The ID of the Source Server whose data replication should be retried.</p>
    #
    #   @return [String]
    #
    RetryDataReplicationInput = ::Struct.new(
      :source_server_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_server_id
    #   <p>The ID of the Source Server.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the Source Server.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the Source Server.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute recovery_instance_id
    #   <p>The ID of the Recovery Instance associated with this Source Server.</p>
    #
    #   @return [String]
    #
    # @!attribute last_launch_result
    #   <p>The status of the last recovery launch of this Source Server.</p>
    #
    #   Enum, one of: ["NOT_STARTED", "PENDING", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute data_replication_info
    #   <p>The Data Replication Info of the Source Server.</p>
    #
    #   @return [DataReplicationInfo]
    #
    # @!attribute life_cycle
    #   <p>The lifecycle information of this Source Server.</p>
    #
    #   @return [LifeCycle]
    #
    # @!attribute source_properties
    #   <p>The source properties of the Source Server.</p>
    #
    #   @return [SourceProperties]
    #
    # @!attribute staging_area
    #   <p>The staging area of the source server.</p>
    #
    #   @return [StagingArea]
    #
    RetryDataReplicationOutput = ::Struct.new(
      :source_server_id,
      :arn,
      :tags,
      :recovery_instance_id,
      :last_launch_result,
      :data_replication_info,
      :life_cycle,
      :source_properties,
      :staging_area,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Drs::Types::RetryDataReplicationOutput "\
          "source_server_id=#{source_server_id || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "tags=\"[SENSITIVE]\", "\
          "recovery_instance_id=#{recovery_instance_id || 'nil'}, "\
          "last_launch_result=#{last_launch_result || 'nil'}, "\
          "data_replication_info=#{data_replication_info || 'nil'}, "\
          "life_cycle=#{life_cycle || 'nil'}, "\
          "source_properties=#{source_properties || 'nil'}, "\
          "staging_area=#{staging_area || 'nil'}>"
      end
    end

    # <p>The request could not be completed because its exceeded the service quota.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   <p>Service code.</p>
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   <p>Quota code.</p>
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      :code,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Properties of the Source Server machine.</p>
    #
    # @!attribute last_updated_date_time
    #   <p>The date and time the Source Properties were last updated on.</p>
    #
    #   @return [String]
    #
    # @!attribute recommended_instance_type
    #   <p>The recommended EC2 instance type that will be used when recovering the Source Server.</p>
    #
    #   @return [String]
    #
    # @!attribute identification_hints
    #   <p>Hints used to uniquely identify a machine.</p>
    #
    #   @return [IdentificationHints]
    #
    # @!attribute network_interfaces
    #   <p>An array of network interfaces.</p>
    #
    #   @return [Array<NetworkInterface>]
    #
    # @!attribute disks
    #   <p>An array of disks.</p>
    #
    #   @return [Array<Disk>]
    #
    # @!attribute cpus
    #   <p>An array of CPUs.</p>
    #
    #   @return [Array<CPU>]
    #
    # @!attribute ram_bytes
    #   <p>The amount of RAM in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute os
    #   <p>Operating system.</p>
    #
    #   @return [OS]
    #
    SourceProperties = ::Struct.new(
      :last_updated_date_time,
      :recommended_instance_type,
      :identification_hints,
      :network_interfaces,
      :disks,
      :cpus,
      :ram_bytes,
      :os,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.ram_bytes ||= 0
      end
    end

    # @!attribute source_server_id
    #   <p>The ID of the Source Server.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the Source Server.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the Source Server.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute recovery_instance_id
    #   <p>The ID of the Recovery Instance associated with this Source Server.</p>
    #
    #   @return [String]
    #
    # @!attribute last_launch_result
    #   <p>The status of the last recovery launch of this Source Server.</p>
    #
    #   Enum, one of: ["NOT_STARTED", "PENDING", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute data_replication_info
    #   <p>The Data Replication Info of the Source Server.</p>
    #
    #   @return [DataReplicationInfo]
    #
    # @!attribute life_cycle
    #   <p>The lifecycle information of this Source Server.</p>
    #
    #   @return [LifeCycle]
    #
    # @!attribute source_properties
    #   <p>The source properties of the Source Server.</p>
    #
    #   @return [SourceProperties]
    #
    # @!attribute staging_area
    #   <p>The staging area of the source server.</p>
    #
    #   @return [StagingArea]
    #
    SourceServer = ::Struct.new(
      :source_server_id,
      :arn,
      :tags,
      :recovery_instance_id,
      :last_launch_result,
      :data_replication_info,
      :life_cycle,
      :source_properties,
      :staging_area,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Drs::Types::SourceServer "\
          "source_server_id=#{source_server_id || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "tags=\"[SENSITIVE]\", "\
          "recovery_instance_id=#{recovery_instance_id || 'nil'}, "\
          "last_launch_result=#{last_launch_result || 'nil'}, "\
          "data_replication_info=#{data_replication_info || 'nil'}, "\
          "life_cycle=#{life_cycle || 'nil'}, "\
          "source_properties=#{source_properties || 'nil'}, "\
          "staging_area=#{staging_area || 'nil'}>"
      end
    end

    # <p>Staging information related to source server.</p>
    #
    # @!attribute status
    #   <p>Status of Source server extension. Possible values:
    #               (a) NOT_EXTENDED - This is a source server that is replicating in the current account.
    #               (b) EXTENDED - Source server is extended from a staging source server. In this case, the value of stagingSourceServerArn is pointing to the Arn of the source server in the staging account.
    #               (c) EXTENSION_ERROR - Some issue occurred when accessing staging source server. In this case, errorMessage field will contain an error message that explains what happened.</p>
    #
    #   Enum, one of: ["EXTENDED", "EXTENSION_ERROR", "NOT_EXTENDED"]
    #
    #   @return [String]
    #
    # @!attribute staging_account_id
    #   <p>Account ID of the account to which source server belongs. If this source server is extended - shows Account ID of staging source server.</p>
    #
    #   @return [String]
    #
    # @!attribute staging_source_server_arn
    #   <p>Arn of the staging source server if this source server is extended</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>Shows an error message that occurred when DRS tried to access the staging source server. In this case StagingArea$status will have value EXTENSION_ERROR</p>
    #
    #   @return [String]
    #
    StagingArea = ::Struct.new(
      :status,
      :staging_account_id,
      :staging_source_server_arn,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Source server in staging account that extended source server connected to.</p>
    #
    # @!attribute hostname
    #   <p>Hostname of staging source server.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the source server.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags associated with the staging source server.</p>
    #
    #   @return [Hash<String, String>]
    #
    StagingSourceServer = ::Struct.new(
      :hostname,
      :arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Drs::Types::StagingSourceServer "\
          "hostname=#{hostname || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "tags=\"[SENSITIVE]\">"
      end
    end

    # @!attribute recovery_instance_i_ds
    #   <p>The IDs of the Recovery Instance whose failback launch we want to request.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>The tags to be associated with the failback launch Job.</p>
    #
    #   @return [Hash<String, String>]
    #
    StartFailbackLaunchInput = ::Struct.new(
      :recovery_instance_i_ds,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Drs::Types::StartFailbackLaunchInput "\
          "recovery_instance_i_ds=#{recovery_instance_i_ds || 'nil'}, "\
          "tags=\"[SENSITIVE]\">"
      end
    end

    # @!attribute job
    #   <p>The failback launch Job.</p>
    #
    #   @return [Job]
    #
    StartFailbackLaunchOutput = ::Struct.new(
      :job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_servers
    #   <p>The Source Servers that we want to start a Recovery Job for.</p>
    #
    #   @return [Array<StartRecoveryRequestSourceServer>]
    #
    # @!attribute is_drill
    #   <p>Whether this Source Server Recovery operation is a drill or not.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>The tags to be associated with the Recovery Job.</p>
    #
    #   @return [Hash<String, String>]
    #
    StartRecoveryInput = ::Struct.new(
      :source_servers,
      :is_drill,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Drs::Types::StartRecoveryInput "\
          "source_servers=#{source_servers || 'nil'}, "\
          "is_drill=#{is_drill || 'nil'}, "\
          "tags=\"[SENSITIVE]\">"
      end
    end

    # @!attribute job
    #   <p>The Recovery Job.</p>
    #
    #   @return [Job]
    #
    StartRecoveryOutput = ::Struct.new(
      :job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing the Source Server to recover.</p>
    #
    # @!attribute source_server_id
    #   <p>The ID of the Source Server you want to recover.</p>
    #
    #   @return [String]
    #
    # @!attribute recovery_snapshot_id
    #   <p>The ID of a Recovery Snapshot we want to recover from. Omit this field to launch from the latest data by taking an on-demand snapshot.</p>
    #
    #   @return [String]
    #
    StartRecoveryRequestSourceServer = ::Struct.new(
      :source_server_id,
      :recovery_snapshot_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute recovery_instance_id
    #   <p>The ID of the Recovery Instance we want to stop failback for.</p>
    #
    #   @return [String]
    #
    StopFailbackInput = ::Struct.new(
      :recovery_instance_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StopFailbackOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>ARN of the resource for which tags are to be added or updated.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Array of tags to be added or updated.</p>
    #
    #   @return [Hash<String, String>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Drs::Types::TagResourceInput "\
          "resource_arn=#{resource_arn || 'nil'}, "\
          "tags=\"[SENSITIVE]\">"
      end
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TargetInstanceTypeRightSizingMethod
    #
    module TargetInstanceTypeRightSizingMethod
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      BASIC = "BASIC"
    end

    # @!attribute recovery_instance_i_ds
    #   <p>The IDs of the Recovery Instances that should be terminated.</p>
    #
    #   @return [Array<String>]
    #
    TerminateRecoveryInstancesInput = ::Struct.new(
      :recovery_instance_i_ds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job
    #   <p>The Job for terminating the Recovery Instances.</p>
    #
    #   @return [Job]
    #
    TerminateRecoveryInstancesOutput = ::Struct.new(
      :job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   <p>Service code.</p>
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   <p>Quota code.</p>
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   <p>The number of seconds after which the request should be safe to retry.</p>
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The account performing the request has not been initialized.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    UninitializedAccountException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>ARN of the resource for which tags are to be removed.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>Array of tags to be removed.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Drs::Types::UntagResourceInput "\
          "resource_arn=#{resource_arn || 'nil'}, "\
          "tag_keys=\"[SENSITIVE]\">"
      end
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute recovery_instance_id
    #   <p>The ID of the Recovery Instance.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the Failback Replication Configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth_throttling
    #   <p>Configure bandwidth throttling for the outbound data transfer rate of the Recovery Instance in Mbps.</p>
    #
    #   @return [Integer]
    #
    # @!attribute use_private_ip
    #   <p>Whether to use Private IP for the failback replication of the Recovery Instance.</p>
    #
    #   @return [Boolean]
    #
    UpdateFailbackReplicationConfigurationInput = ::Struct.new(
      :recovery_instance_id,
      :name,
      :bandwidth_throttling,
      :use_private_ip,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bandwidth_throttling ||= 0
      end
    end

    UpdateFailbackReplicationConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_server_id
    #   <p>The ID of the Source Server that we want to retrieve a Launch Configuration for.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the launch configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_disposition
    #   <p>The state of the Recovery Instance in EC2 after the recovery operation.</p>
    #
    #   Enum, one of: ["STOPPED", "STARTED"]
    #
    #   @return [String]
    #
    # @!attribute target_instance_type_right_sizing_method
    #   <p>Whether Elastic Disaster Recovery should try to automatically choose the instance type that best matches the OS, CPU, and RAM of your Source Server.</p>
    #
    #   Enum, one of: ["NONE", "BASIC"]
    #
    #   @return [String]
    #
    # @!attribute copy_private_ip
    #   <p>Whether we should copy the Private IP of the Source Server to the Recovery Instance.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute copy_tags
    #   <p>Whether we want to copy the tags of the Source Server to the EC2 machine of the Recovery Instance.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute licensing
    #   <p>The licensing configuration to be used for this launch configuration.</p>
    #
    #   @return [Licensing]
    #
    UpdateLaunchConfigurationInput = ::Struct.new(
      :source_server_id,
      :name,
      :launch_disposition,
      :target_instance_type_right_sizing_method,
      :copy_private_ip,
      :copy_tags,
      :licensing,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_server_id
    #   <p>The ID of the Source Server for this launch configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the launch configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_launch_template_id
    #   <p>The EC2 launch template ID of this launch configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_disposition
    #   <p>The state of the Recovery Instance in EC2 after the recovery operation.</p>
    #
    #   Enum, one of: ["STOPPED", "STARTED"]
    #
    #   @return [String]
    #
    # @!attribute target_instance_type_right_sizing_method
    #   <p>Whether Elastic Disaster Recovery should try to automatically choose the instance type that best matches the OS, CPU, and RAM of your Source Server.</p>
    #
    #   Enum, one of: ["NONE", "BASIC"]
    #
    #   @return [String]
    #
    # @!attribute copy_private_ip
    #   <p>Whether we should copy the Private IP of the Source Server to the Recovery Instance.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute copy_tags
    #   <p>Whether we want to copy the tags of the Source Server to the EC2 machine of the Recovery Instance.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute licensing
    #   <p>The licensing configuration to be used for this launch configuration.</p>
    #
    #   @return [Licensing]
    #
    UpdateLaunchConfigurationOutput = ::Struct.new(
      :source_server_id,
      :name,
      :ec2_launch_template_id,
      :launch_disposition,
      :target_instance_type_right_sizing_method,
      :copy_private_ip,
      :copy_tags,
      :licensing,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_server_id
    #   <p>The ID of the Source Server for this Replication Configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the Replication Configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute staging_area_subnet_id
    #   <p>The subnet to be used by the replication staging area.</p>
    #
    #   @return [String]
    #
    # @!attribute associate_default_security_group
    #   <p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute replication_servers_security_groups_i_ds
    #   <p>The security group IDs that will be used by the replication server.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute replication_server_instance_type
    #   <p>The instance type to be used for the replication server.</p>
    #
    #   @return [String]
    #
    # @!attribute use_dedicated_replication_server
    #   <p>Whether to use a dedicated Replication Server in the replication staging area.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute default_large_staging_disk_type
    #   <p>The Staging Disk EBS volume type to be used during replication.</p>
    #
    #   Enum, one of: ["GP2", "GP3", "ST1"]
    #
    #   @return [String]
    #
    # @!attribute replicated_disks
    #   <p>The configuration of the disks of the Source Server to be replicated.</p>
    #
    #   @return [Array<ReplicationConfigurationReplicatedDisk>]
    #
    # @!attribute ebs_encryption
    #   <p>The type of EBS encryption to be used during replication.</p>
    #
    #   Enum, one of: ["DEFAULT", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute ebs_encryption_key_arn
    #   <p>The ARN of the EBS encryption key to be used during replication.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth_throttling
    #   <p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>
    #
    #   @return [Integer]
    #
    # @!attribute data_plane_routing
    #   <p>The data plane routing mechanism that will be used for replication.</p>
    #
    #   Enum, one of: ["PRIVATE_IP", "PUBLIC_IP"]
    #
    #   @return [String]
    #
    # @!attribute create_public_ip
    #   <p>Whether to create a Public IP for the Recovery Instance by default.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute staging_area_tags
    #   <p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute pit_policy
    #   <p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>
    #
    #   @return [Array<PITPolicyRule>]
    #
    UpdateReplicationConfigurationInput = ::Struct.new(
      :source_server_id,
      :name,
      :staging_area_subnet_id,
      :associate_default_security_group,
      :replication_servers_security_groups_i_ds,
      :replication_server_instance_type,
      :use_dedicated_replication_server,
      :default_large_staging_disk_type,
      :replicated_disks,
      :ebs_encryption,
      :ebs_encryption_key_arn,
      :bandwidth_throttling,
      :data_plane_routing,
      :create_public_ip,
      :staging_area_tags,
      :pit_policy,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bandwidth_throttling ||= 0
      end

      def to_s
        "#<struct AWS::SDK::Drs::Types::UpdateReplicationConfigurationInput "\
          "source_server_id=#{source_server_id || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "staging_area_subnet_id=#{staging_area_subnet_id || 'nil'}, "\
          "associate_default_security_group=#{associate_default_security_group || 'nil'}, "\
          "replication_servers_security_groups_i_ds=#{replication_servers_security_groups_i_ds || 'nil'}, "\
          "replication_server_instance_type=#{replication_server_instance_type || 'nil'}, "\
          "use_dedicated_replication_server=#{use_dedicated_replication_server || 'nil'}, "\
          "default_large_staging_disk_type=#{default_large_staging_disk_type || 'nil'}, "\
          "replicated_disks=#{replicated_disks || 'nil'}, "\
          "ebs_encryption=#{ebs_encryption || 'nil'}, "\
          "ebs_encryption_key_arn=#{ebs_encryption_key_arn || 'nil'}, "\
          "bandwidth_throttling=#{bandwidth_throttling || 'nil'}, "\
          "data_plane_routing=#{data_plane_routing || 'nil'}, "\
          "create_public_ip=#{create_public_ip || 'nil'}, "\
          "staging_area_tags=\"[SENSITIVE]\", "\
          "pit_policy=#{pit_policy || 'nil'}>"
      end
    end

    # @!attribute source_server_id
    #   <p>The ID of the Source Server for this Replication Configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the Replication Configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute staging_area_subnet_id
    #   <p>The subnet to be used by the replication staging area.</p>
    #
    #   @return [String]
    #
    # @!attribute associate_default_security_group
    #   <p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute replication_servers_security_groups_i_ds
    #   <p>The security group IDs that will be used by the replication server.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute replication_server_instance_type
    #   <p>The instance type to be used for the replication server.</p>
    #
    #   @return [String]
    #
    # @!attribute use_dedicated_replication_server
    #   <p>Whether to use a dedicated Replication Server in the replication staging area.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute default_large_staging_disk_type
    #   <p>The Staging Disk EBS volume type to be used during replication.</p>
    #
    #   Enum, one of: ["GP2", "GP3", "ST1"]
    #
    #   @return [String]
    #
    # @!attribute replicated_disks
    #   <p>The configuration of the disks of the Source Server to be replicated.</p>
    #
    #   @return [Array<ReplicationConfigurationReplicatedDisk>]
    #
    # @!attribute ebs_encryption
    #   <p>The type of EBS encryption to be used during replication.</p>
    #
    #   Enum, one of: ["DEFAULT", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute ebs_encryption_key_arn
    #   <p>The ARN of the EBS encryption key to be used during replication.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth_throttling
    #   <p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>
    #
    #   @return [Integer]
    #
    # @!attribute data_plane_routing
    #   <p>The data plane routing mechanism that will be used for replication.</p>
    #
    #   Enum, one of: ["PRIVATE_IP", "PUBLIC_IP"]
    #
    #   @return [String]
    #
    # @!attribute create_public_ip
    #   <p>Whether to create a Public IP for the Recovery Instance by default.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute staging_area_tags
    #   <p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute pit_policy
    #   <p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>
    #
    #   @return [Array<PITPolicyRule>]
    #
    UpdateReplicationConfigurationOutput = ::Struct.new(
      :source_server_id,
      :name,
      :staging_area_subnet_id,
      :associate_default_security_group,
      :replication_servers_security_groups_i_ds,
      :replication_server_instance_type,
      :use_dedicated_replication_server,
      :default_large_staging_disk_type,
      :replicated_disks,
      :ebs_encryption,
      :ebs_encryption_key_arn,
      :bandwidth_throttling,
      :data_plane_routing,
      :create_public_ip,
      :staging_area_tags,
      :pit_policy,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bandwidth_throttling ||= 0
      end

      def to_s
        "#<struct AWS::SDK::Drs::Types::UpdateReplicationConfigurationOutput "\
          "source_server_id=#{source_server_id || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "staging_area_subnet_id=#{staging_area_subnet_id || 'nil'}, "\
          "associate_default_security_group=#{associate_default_security_group || 'nil'}, "\
          "replication_servers_security_groups_i_ds=#{replication_servers_security_groups_i_ds || 'nil'}, "\
          "replication_server_instance_type=#{replication_server_instance_type || 'nil'}, "\
          "use_dedicated_replication_server=#{use_dedicated_replication_server || 'nil'}, "\
          "default_large_staging_disk_type=#{default_large_staging_disk_type || 'nil'}, "\
          "replicated_disks=#{replicated_disks || 'nil'}, "\
          "ebs_encryption=#{ebs_encryption || 'nil'}, "\
          "ebs_encryption_key_arn=#{ebs_encryption_key_arn || 'nil'}, "\
          "bandwidth_throttling=#{bandwidth_throttling || 'nil'}, "\
          "data_plane_routing=#{data_plane_routing || 'nil'}, "\
          "create_public_ip=#{create_public_ip || 'nil'}, "\
          "staging_area_tags=\"[SENSITIVE]\", "\
          "pit_policy=#{pit_policy || 'nil'}>"
      end
    end

    # @!attribute replication_configuration_template_id
    #   <p>The Replication Configuration Template ID.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Replication Configuration Template ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute staging_area_subnet_id
    #   <p>The subnet to be used by the replication staging area.</p>
    #
    #   @return [String]
    #
    # @!attribute associate_default_security_group
    #   <p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration Template.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute replication_servers_security_groups_i_ds
    #   <p>The security group IDs that will be used by the replication server.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute replication_server_instance_type
    #   <p>The instance type to be used for the replication server.</p>
    #
    #   @return [String]
    #
    # @!attribute use_dedicated_replication_server
    #   <p>Whether to use a dedicated Replication Server in the replication staging area.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute default_large_staging_disk_type
    #   <p>The Staging Disk EBS volume type to be used during replication.</p>
    #
    #   Enum, one of: ["GP2", "GP3", "ST1"]
    #
    #   @return [String]
    #
    # @!attribute ebs_encryption
    #   <p>The type of EBS encryption to be used during replication.</p>
    #
    #   Enum, one of: ["DEFAULT", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute ebs_encryption_key_arn
    #   <p>The ARN of the EBS encryption key to be used during replication.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth_throttling
    #   <p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>
    #
    #   @return [Integer]
    #
    # @!attribute data_plane_routing
    #   <p>The data plane routing mechanism that will be used for replication.</p>
    #
    #   Enum, one of: ["PRIVATE_IP", "PUBLIC_IP"]
    #
    #   @return [String]
    #
    # @!attribute create_public_ip
    #   <p>Whether to create a Public IP for the Recovery Instance by default.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute staging_area_tags
    #   <p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute pit_policy
    #   <p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>
    #
    #   @return [Array<PITPolicyRule>]
    #
    UpdateReplicationConfigurationTemplateInput = ::Struct.new(
      :replication_configuration_template_id,
      :arn,
      :staging_area_subnet_id,
      :associate_default_security_group,
      :replication_servers_security_groups_i_ds,
      :replication_server_instance_type,
      :use_dedicated_replication_server,
      :default_large_staging_disk_type,
      :ebs_encryption,
      :ebs_encryption_key_arn,
      :bandwidth_throttling,
      :data_plane_routing,
      :create_public_ip,
      :staging_area_tags,
      :pit_policy,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bandwidth_throttling ||= 0
      end

      def to_s
        "#<struct AWS::SDK::Drs::Types::UpdateReplicationConfigurationTemplateInput "\
          "replication_configuration_template_id=#{replication_configuration_template_id || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "staging_area_subnet_id=#{staging_area_subnet_id || 'nil'}, "\
          "associate_default_security_group=#{associate_default_security_group || 'nil'}, "\
          "replication_servers_security_groups_i_ds=#{replication_servers_security_groups_i_ds || 'nil'}, "\
          "replication_server_instance_type=#{replication_server_instance_type || 'nil'}, "\
          "use_dedicated_replication_server=#{use_dedicated_replication_server || 'nil'}, "\
          "default_large_staging_disk_type=#{default_large_staging_disk_type || 'nil'}, "\
          "ebs_encryption=#{ebs_encryption || 'nil'}, "\
          "ebs_encryption_key_arn=#{ebs_encryption_key_arn || 'nil'}, "\
          "bandwidth_throttling=#{bandwidth_throttling || 'nil'}, "\
          "data_plane_routing=#{data_plane_routing || 'nil'}, "\
          "create_public_ip=#{create_public_ip || 'nil'}, "\
          "staging_area_tags=\"[SENSITIVE]\", "\
          "pit_policy=#{pit_policy || 'nil'}>"
      end
    end

    # @!attribute replication_configuration_template_id
    #   <p>The Replication Configuration Template ID.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Replication Configuration Template ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute staging_area_subnet_id
    #   <p>The subnet to be used by the replication staging area.</p>
    #
    #   @return [String]
    #
    # @!attribute associate_default_security_group
    #   <p>Whether to associate the default Elastic Disaster Recovery Security group with the Replication Configuration Template.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute replication_servers_security_groups_i_ds
    #   <p>The security group IDs that will be used by the replication server.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute replication_server_instance_type
    #   <p>The instance type to be used for the replication server.</p>
    #
    #   @return [String]
    #
    # @!attribute use_dedicated_replication_server
    #   <p>Whether to use a dedicated Replication Server in the replication staging area.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute default_large_staging_disk_type
    #   <p>The Staging Disk EBS volume type to be used during replication.</p>
    #
    #   Enum, one of: ["GP2", "GP3", "ST1"]
    #
    #   @return [String]
    #
    # @!attribute ebs_encryption
    #   <p>The type of EBS encryption to be used during replication.</p>
    #
    #   Enum, one of: ["DEFAULT", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute ebs_encryption_key_arn
    #   <p>The ARN of the EBS encryption key to be used during replication.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth_throttling
    #   <p>Configure bandwidth throttling for the outbound data transfer rate of the Source Server in Mbps.</p>
    #
    #   @return [Integer]
    #
    # @!attribute data_plane_routing
    #   <p>The data plane routing mechanism that will be used for replication.</p>
    #
    #   Enum, one of: ["PRIVATE_IP", "PUBLIC_IP"]
    #
    #   @return [String]
    #
    # @!attribute create_public_ip
    #   <p>Whether to create a Public IP for the Recovery Instance by default.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute staging_area_tags
    #   <p>A set of tags to be associated with all resources created in the replication staging area: EC2 replication server, EBS volumes, EBS snapshots, etc.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute tags
    #   <p>A set of tags to be associated with the Replication Configuration Template resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute pit_policy
    #   <p>The Point in time (PIT) policy to manage snapshots taken during replication.</p>
    #
    #   @return [Array<PITPolicyRule>]
    #
    UpdateReplicationConfigurationTemplateOutput = ::Struct.new(
      :replication_configuration_template_id,
      :arn,
      :staging_area_subnet_id,
      :associate_default_security_group,
      :replication_servers_security_groups_i_ds,
      :replication_server_instance_type,
      :use_dedicated_replication_server,
      :default_large_staging_disk_type,
      :ebs_encryption,
      :ebs_encryption_key_arn,
      :bandwidth_throttling,
      :data_plane_routing,
      :create_public_ip,
      :staging_area_tags,
      :tags,
      :pit_policy,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bandwidth_throttling ||= 0
      end

      def to_s
        "#<struct AWS::SDK::Drs::Types::UpdateReplicationConfigurationTemplateOutput "\
          "replication_configuration_template_id=#{replication_configuration_template_id || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "staging_area_subnet_id=#{staging_area_subnet_id || 'nil'}, "\
          "associate_default_security_group=#{associate_default_security_group || 'nil'}, "\
          "replication_servers_security_groups_i_ds=#{replication_servers_security_groups_i_ds || 'nil'}, "\
          "replication_server_instance_type=#{replication_server_instance_type || 'nil'}, "\
          "use_dedicated_replication_server=#{use_dedicated_replication_server || 'nil'}, "\
          "default_large_staging_disk_type=#{default_large_staging_disk_type || 'nil'}, "\
          "ebs_encryption=#{ebs_encryption || 'nil'}, "\
          "ebs_encryption_key_arn=#{ebs_encryption_key_arn || 'nil'}, "\
          "bandwidth_throttling=#{bandwidth_throttling || 'nil'}, "\
          "data_plane_routing=#{data_plane_routing || 'nil'}, "\
          "create_public_ip=#{create_public_ip || 'nil'}, "\
          "staging_area_tags=\"[SENSITIVE]\", "\
          "tags=\"[SENSITIVE]\", "\
          "pit_policy=#{pit_policy || 'nil'}>"
      end
    end

    # <p>The input fails to satisfy the constraints specified by the AWS service.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>Validation exception reason.</p>
    #
    #   Enum, one of: ["unknownOperation", "cannotParse", "fieldValidationFailed", "other"]
    #
    #   @return [String]
    #
    # @!attribute field_list
    #   <p>A list of fields that failed validation.</p>
    #
    #   @return [Array<ValidationExceptionField>]
    #
    ValidationException = ::Struct.new(
      :message,
      :code,
      :reason,
      :field_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Validate exception field.</p>
    #
    # @!attribute name
    #   <p>Validate exception field name.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>Validate exception field message.</p>
    #
    #   @return [String]
    #
    ValidationExceptionField = ::Struct.new(
      :name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ValidationExceptionReason
    #
    module ValidationExceptionReason
      # No documentation available.
      #
      UNKNOWN_OPERATION = "unknownOperation"

      # No documentation available.
      #
      CANNOT_PARSE = "cannotParse"

      # No documentation available.
      #
      FIELD_VALIDATION_FAILED = "fieldValidationFailed"

      # No documentation available.
      #
      OTHER = "other"
    end

  end
end
