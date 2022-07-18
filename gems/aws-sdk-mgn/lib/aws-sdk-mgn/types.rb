# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Mgn
  module Types

    # <p>Operating denied due to a file permission or access check error.</p>
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

    # Includes enum constants for BootMode
    #
    module BootMode
      # No documentation available.
      #
      LEGACY_BIOS = "LEGACY_BIOS"

      # No documentation available.
      #
      UEFI = "UEFI"
    end

    # <p>Source server CPU information.</p>
    #
    # @!attribute cores
    #   <p>The number of CPU cores on the source server.</p>
    #
    #   @return [Integer]
    #
    # @!attribute model_name
    #   <p>The source server's CPU model name.</p>
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

    # @!attribute source_server_id
    #   <p>The request to change the source server migration lifecycle state by source server ID.</p>
    #
    #   @return [String]
    #
    # @!attribute life_cycle
    #   <p>The request to change the source server migration lifecycle state.</p>
    #
    #   @return [ChangeServerLifeCycleStateSourceServerLifecycle]
    #
    ChangeServerLifeCycleStateInput = ::Struct.new(
      :source_server_id,
      :life_cycle,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_server_id
    #   <p>Source server ID.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>Source server ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute is_archived
    #   <p>Source server archived status.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>Source server Tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute launched_instance
    #   <p>Source server launched instance.</p>
    #
    #   @return [LaunchedInstance]
    #
    # @!attribute data_replication_info
    #   <p>Source server data replication info.</p>
    #
    #   @return [DataReplicationInfo]
    #
    # @!attribute life_cycle
    #   <p>Source server lifecycle state.</p>
    #
    #   @return [LifeCycle]
    #
    # @!attribute source_properties
    #   <p>Source server properties.</p>
    #
    #   @return [SourceProperties]
    #
    # @!attribute replication_type
    #   <p>Source server replication type.</p>
    #
    #   Enum, one of: ["AGENT_BASED", "SNAPSHOT_SHIPPING"]
    #
    #   @return [String]
    #
    # @!attribute vcenter_client_id
    #   <p>Source server vCenter client id.</p>
    #
    #   @return [String]
    #
    ChangeServerLifeCycleStateOutput = ::Struct.new(
      :source_server_id,
      :arn,
      :is_archived,
      :tags,
      :launched_instance,
      :data_replication_info,
      :life_cycle,
      :source_properties,
      :replication_type,
      :vcenter_client_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Mgn::Types::ChangeServerLifeCycleStateOutput "\
          "source_server_id=#{source_server_id || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "is_archived=#{is_archived || 'nil'}, "\
          "tags=\"[SENSITIVE]\", "\
          "launched_instance=#{launched_instance || 'nil'}, "\
          "data_replication_info=#{data_replication_info || 'nil'}, "\
          "life_cycle=#{life_cycle || 'nil'}, "\
          "source_properties=#{source_properties || 'nil'}, "\
          "replication_type=#{replication_type || 'nil'}, "\
          "vcenter_client_id=#{vcenter_client_id || 'nil'}>"
      end
    end

    # <p>The request to change the source server migration lifecycle state.</p>
    #
    # @!attribute state
    #   <p>The request to change the source server migration lifecycle state.</p>
    #
    #   Enum, one of: ["READY_FOR_TEST", "READY_FOR_CUTOVER", "CUTOVER"]
    #
    #   @return [String]
    #
    ChangeServerLifeCycleStateSourceServerLifecycle = ::Struct.new(
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ChangeServerLifeCycleStateSourceServerLifecycleState
    #
    module ChangeServerLifeCycleStateSourceServerLifecycleState
      # No documentation available.
      #
      READY_FOR_TEST = "READY_FOR_TEST"

      # No documentation available.
      #
      READY_FOR_CUTOVER = "READY_FOR_CUTOVER"

      # No documentation available.
      #
      CUTOVER = "CUTOVER"
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
    #   <p>A conflict occurred when prompting for the Resource ID.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>A conflict occurred when prompting for resource type.</p>
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

    # @!attribute staging_area_subnet_id
    #   <p>Request to configure the Staging Area subnet ID during Replication Settings template creation.</p>
    #
    #   @return [String]
    #
    # @!attribute associate_default_security_group
    #   <p>Request to associate the default Application Migration Service Security group with the Replication Settings template.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute replication_servers_security_groups_i_ds
    #   <p>Request to configure the Replication Server Security group ID during Replication Settings template creation.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute replication_server_instance_type
    #   <p>Request to configure the Replication Server instance type during Replication Settings template creation.</p>
    #
    #   @return [String]
    #
    # @!attribute use_dedicated_replication_server
    #   <p>Request to use Dedicated Replication Servers during Replication Settings template creation.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute default_large_staging_disk_type
    #   <p>Request to configure the default large staging disk EBS volume type during Replication Settings template creation.</p>
    #
    #   Enum, one of: ["GP2", "ST1", "GP3"]
    #
    #   @return [String]
    #
    # @!attribute ebs_encryption
    #   <p>Request to configure EBS encryption during Replication Settings template creation.</p>
    #
    #   Enum, one of: ["DEFAULT", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute ebs_encryption_key_arn
    #   <p>Request to configure an EBS encryption key during Replication Settings template creation.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth_throttling
    #   <p>Request to configure bandwidth throttling during Replication Settings template creation.</p>
    #
    #   @return [Integer]
    #
    # @!attribute data_plane_routing
    #   <p>Request to configure  data plane routing during Replication Settings template creation.</p>
    #
    #   Enum, one of: ["PRIVATE_IP", "PUBLIC_IP"]
    #
    #   @return [String]
    #
    # @!attribute create_public_ip
    #   <p>Request to create Public IP during Replication Settings template creation.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute staging_area_tags
    #   <p>Request to configure Staging Area tags during Replication Settings template creation.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute tags
    #   <p>Request to configure tags during Replication Settings template creation.</p>
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
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bandwidth_throttling ||= 0
      end

      def to_s
        "#<struct AWS::SDK::Mgn::Types::CreateReplicationConfigurationTemplateInput "\
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
          "tags=\"[SENSITIVE]\">"
      end
    end

    # @!attribute replication_configuration_template_id
    #   <p>Replication Configuration template ID.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>Replication Configuration template ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute staging_area_subnet_id
    #   <p>Replication Configuration template Staging Area subnet ID.</p>
    #
    #   @return [String]
    #
    # @!attribute associate_default_security_group
    #   <p>Replication Configuration template associate default Application Migration Service Security group.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute replication_servers_security_groups_i_ds
    #   <p>Replication Configuration template server Security Groups IDs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute replication_server_instance_type
    #   <p>Replication Configuration template server instance type.</p>
    #
    #   @return [String]
    #
    # @!attribute use_dedicated_replication_server
    #   <p>Replication Configuration template use Dedicated Replication Server.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute default_large_staging_disk_type
    #   <p>Replication Configuration template use default large Staging Disk type.</p>
    #
    #   Enum, one of: ["GP2", "ST1", "GP3"]
    #
    #   @return [String]
    #
    # @!attribute ebs_encryption
    #   <p>Replication Configuration template EBS encryption.</p>
    #
    #   Enum, one of: ["DEFAULT", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute ebs_encryption_key_arn
    #   <p>Replication Configuration template EBS encryption key ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth_throttling
    #   <p>Replication Configuration template bandwidth throttling.</p>
    #
    #   @return [Integer]
    #
    # @!attribute data_plane_routing
    #   <p>Replication Configuration template data plane routing.</p>
    #
    #   Enum, one of: ["PRIVATE_IP", "PUBLIC_IP"]
    #
    #   @return [String]
    #
    # @!attribute create_public_ip
    #   <p>Replication Configuration template create Public IP.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute staging_area_tags
    #   <p>Replication Configuration template Staging Area Tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute tags
    #   <p>Replication Configuration template Tags.</p>
    #
    #   @return [Hash<String, String>]
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
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bandwidth_throttling ||= 0
      end

      def to_s
        "#<struct AWS::SDK::Mgn::Types::CreateReplicationConfigurationTemplateOutput "\
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
          "tags=\"[SENSITIVE]\">"
      end
    end

    # <p>Error in data replication.</p>
    #
    # @!attribute error
    #   <p>Error in data replication.</p>
    #
    #   Enum, one of: ["AGENT_NOT_SEEN", "SNAPSHOTS_FAILURE", "NOT_CONVERGING", "UNSTABLE_NETWORK", "FAILED_TO_CREATE_SECURITY_GROUP", "FAILED_TO_LAUNCH_REPLICATION_SERVER", "FAILED_TO_BOOT_REPLICATION_SERVER", "FAILED_TO_AUTHENTICATE_WITH_SERVICE", "FAILED_TO_DOWNLOAD_REPLICATION_SOFTWARE", "FAILED_TO_CREATE_STAGING_DISKS", "FAILED_TO_ATTACH_STAGING_DISKS", "FAILED_TO_PAIR_REPLICATION_SERVER_WITH_AGENT", "FAILED_TO_CONNECT_AGENT_TO_REPLICATION_SERVER", "FAILED_TO_START_DATA_TRANSFER", "UNSUPPORTED_VM_CONFIGURATION", "LAST_SNAPSHOT_JOB_FAILED"]
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

      # No documentation available.
      #
      UNSUPPORTED_VM_CONFIGURATION = "UNSUPPORTED_VM_CONFIGURATION"

      # No documentation available.
      #
      LAST_SNAPSHOT_JOB_FAILED = "LAST_SNAPSHOT_JOB_FAILED"
    end

    # <p>Request data replication info.</p>
    #
    # @!attribute lag_duration
    #   <p>Request to query data replication lag duration.</p>
    #
    #   @return [String]
    #
    # @!attribute eta_date_time
    #   <p>Request to query the time when data replication will be complete.</p>
    #
    #   @return [String]
    #
    # @!attribute replicated_disks
    #   <p>Request to query disks replicated.</p>
    #
    #   @return [Array<DataReplicationInfoReplicatedDisk>]
    #
    # @!attribute data_replication_state
    #   <p>Request to query the data replication state.</p>
    #
    #   Enum, one of: ["STOPPED", "INITIATING", "INITIAL_SYNC", "BACKLOG", "CREATING_SNAPSHOT", "CONTINUOUS", "PAUSED", "RESCAN", "STALLED", "DISCONNECTED", "PENDING_SNAPSHOT_SHIPPING", "SHIPPING_SNAPSHOT"]
    #
    #   @return [String]
    #
    # @!attribute data_replication_initiation
    #   <p>Request to query whether data replication has been initiated.</p>
    #
    #   @return [DataReplicationInitiation]
    #
    # @!attribute data_replication_error
    #   <p>Error in obtaining data replication info.</p>
    #
    #   @return [DataReplicationError]
    #
    # @!attribute last_snapshot_date_time
    #   <p>Request to query data replication last snapshot time.</p>
    #
    #   @return [String]
    #
    DataReplicationInfo = ::Struct.new(
      :lag_duration,
      :eta_date_time,
      :replicated_disks,
      :data_replication_state,
      :data_replication_initiation,
      :data_replication_error,
      :last_snapshot_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Request to query disks replicated.</p>
    #
    # @!attribute device_name
    #   <p>Request to query device name.</p>
    #
    #   @return [String]
    #
    # @!attribute total_storage_bytes
    #   <p>Request to query total amount of data replicated in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute replicated_storage_bytes
    #   <p>Request to query amount of data replicated in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute rescanned_storage_bytes
    #   <p>Request to query amount of data rescanned in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute backlogged_storage_bytes
    #   <p>Request to query data replication backlog size in bytes.</p>
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
    #   <p>Request to query data initiation start date and time.</p>
    #
    #   @return [String]
    #
    # @!attribute next_attempt_date_time
    #   <p>Request to query next data initiation date and time.</p>
    #
    #   @return [String]
    #
    # @!attribute steps
    #   <p>Request to query data initiation steps.</p>
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
    #   <p>Request to query data initiation step name.</p>
    #
    #   Enum, one of: ["WAIT", "CREATE_SECURITY_GROUP", "LAUNCH_REPLICATION_SERVER", "BOOT_REPLICATION_SERVER", "AUTHENTICATE_WITH_SERVICE", "DOWNLOAD_REPLICATION_SOFTWARE", "CREATE_STAGING_DISKS", "ATTACH_STAGING_DISKS", "PAIR_REPLICATION_SERVER_WITH_AGENT", "CONNECT_AGENT_TO_REPLICATION_SERVER", "START_DATA_TRANSFER"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Request to query data initiation status.</p>
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

      # No documentation available.
      #
      PENDING_SNAPSHOT_SHIPPING = "PENDING_SNAPSHOT_SHIPPING"

      # No documentation available.
      #
      SHIPPING_SNAPSHOT = "SHIPPING_SNAPSHOT"
    end

    # @!attribute job_id
    #   <p>Request to delete Job from service by Job ID.</p>
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

    # @!attribute replication_configuration_template_id
    #   <p>Request to delete Replication Configuration Template from service by Replication Configuration Template ID.</p>
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
    #   <p>Request to delete Source Server from service by Server ID.</p>
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

    # @!attribute vcenter_client_id
    #   <p>ID of resource to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteVcenterClientInput = ::Struct.new(
      :vcenter_client_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteVcenterClientOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>Request to describe Job log job ID.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Request to describe Job log item maximum results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Request to describe Job log next token.</p>
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
    #   <p>Request to describe Job log response items.</p>
    #
    #   @return [Array<JobLog>]
    #
    # @!attribute next_token
    #   <p>Request to describe Job log response next token.</p>
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
    #   <p>Request to describe Job log filters.</p>
    #
    #   @return [DescribeJobsRequestFilters]
    #
    # @!attribute max_results
    #   <p>Request to describe job log items by max results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Request to describe job log items by next token.</p>
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
    #   <p>Request to describe Job log items.</p>
    #
    #   @return [Array<Job>]
    #
    # @!attribute next_token
    #   <p>Request to describe Job response by next token.</p>
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

    # <p>Request to describe Job log filters.</p>
    #
    # @!attribute job_i_ds
    #   <p>Request to describe Job log filters by job ID.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute from_date
    #   <p>Request to describe Job log filters by date.</p>
    #
    #   @return [String]
    #
    # @!attribute to_date
    #   <p>Request to describe job log items by last date.</p>
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

    # @!attribute replication_configuration_template_i_ds
    #   <p>Request to describe Replication Configuration template by template IDs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_results
    #   <p>Request to describe Replication Configuration template by max results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Request to describe Replication Configuration template by next token.</p>
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
    #   <p>Request to describe Replication Configuration template by items.</p>
    #
    #   @return [Array<ReplicationConfigurationTemplate>]
    #
    # @!attribute next_token
    #   <p>Request to describe Replication Configuration template by next token.</p>
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
    #   <p>Request to filter Source Servers list.</p>
    #
    #   @return [DescribeSourceServersRequestFilters]
    #
    # @!attribute max_results
    #   <p>Request to filter Source Servers list by maximum results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Request to filter Source Servers list by next token.</p>
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
    #   <p>Request to filter Source Servers list by item.</p>
    #
    #   @return [Array<SourceServer>]
    #
    # @!attribute next_token
    #   <p>Request to filter Source Servers next token.</p>
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

    # <p>Request to filter Source Servers list.</p>
    #
    # @!attribute source_server_i_ds
    #   <p>Request to filter Source Servers list by Source Server ID.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute is_archived
    #   <p>Request to filter Source Servers list by archived.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute replication_types
    #   <p>Request to filter Source Servers list by replication type.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute life_cycle_states
    #   <p>Request to filter Source Servers list by life cycle states.</p>
    #
    #   @return [Array<String>]
    #
    DescribeSourceServersRequestFilters = ::Struct.new(
      :source_server_i_ds,
      :is_archived,
      :replication_types,
      :life_cycle_states,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>Maximum results to be returned in DescribeVcenterClients.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Next pagination token to be provided for DescribeVcenterClients.</p>
    #
    #   @return [String]
    #
    DescribeVcenterClientsInput = ::Struct.new(
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
    #   <p>List of items returned by DescribeVcenterClients.</p>
    #
    #   @return [Array<VcenterClient>]
    #
    # @!attribute next_token
    #   <p>Next pagination token returned from DescribeVcenterClients.</p>
    #
    #   @return [String]
    #
    DescribeVcenterClientsOutput = ::Struct.new(
      :items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_server_id
    #   <p>Request to disconnect Source Server from service by Server ID.</p>
    #
    #   @return [String]
    #
    DisconnectFromServiceInput = ::Struct.new(
      :source_server_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_server_id
    #   <p>Source server ID.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>Source server ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute is_archived
    #   <p>Source server archived status.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>Source server Tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute launched_instance
    #   <p>Source server launched instance.</p>
    #
    #   @return [LaunchedInstance]
    #
    # @!attribute data_replication_info
    #   <p>Source server data replication info.</p>
    #
    #   @return [DataReplicationInfo]
    #
    # @!attribute life_cycle
    #   <p>Source server lifecycle state.</p>
    #
    #   @return [LifeCycle]
    #
    # @!attribute source_properties
    #   <p>Source server properties.</p>
    #
    #   @return [SourceProperties]
    #
    # @!attribute replication_type
    #   <p>Source server replication type.</p>
    #
    #   Enum, one of: ["AGENT_BASED", "SNAPSHOT_SHIPPING"]
    #
    #   @return [String]
    #
    # @!attribute vcenter_client_id
    #   <p>Source server vCenter client id.</p>
    #
    #   @return [String]
    #
    DisconnectFromServiceOutput = ::Struct.new(
      :source_server_id,
      :arn,
      :is_archived,
      :tags,
      :launched_instance,
      :data_replication_info,
      :life_cycle,
      :source_properties,
      :replication_type,
      :vcenter_client_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Mgn::Types::DisconnectFromServiceOutput "\
          "source_server_id=#{source_server_id || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "is_archived=#{is_archived || 'nil'}, "\
          "tags=\"[SENSITIVE]\", "\
          "launched_instance=#{launched_instance || 'nil'}, "\
          "data_replication_info=#{data_replication_info || 'nil'}, "\
          "life_cycle=#{life_cycle || 'nil'}, "\
          "source_properties=#{source_properties || 'nil'}, "\
          "replication_type=#{replication_type || 'nil'}, "\
          "vcenter_client_id=#{vcenter_client_id || 'nil'}>"
      end
    end

    # <p>The disk identifier.</p>
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

    # @!attribute source_server_id
    #   <p>Request to finalize Cutover by Source Server ID.</p>
    #
    #   @return [String]
    #
    FinalizeCutoverInput = ::Struct.new(
      :source_server_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_server_id
    #   <p>Source server ID.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>Source server ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute is_archived
    #   <p>Source server archived status.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>Source server Tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute launched_instance
    #   <p>Source server launched instance.</p>
    #
    #   @return [LaunchedInstance]
    #
    # @!attribute data_replication_info
    #   <p>Source server data replication info.</p>
    #
    #   @return [DataReplicationInfo]
    #
    # @!attribute life_cycle
    #   <p>Source server lifecycle state.</p>
    #
    #   @return [LifeCycle]
    #
    # @!attribute source_properties
    #   <p>Source server properties.</p>
    #
    #   @return [SourceProperties]
    #
    # @!attribute replication_type
    #   <p>Source server replication type.</p>
    #
    #   Enum, one of: ["AGENT_BASED", "SNAPSHOT_SHIPPING"]
    #
    #   @return [String]
    #
    # @!attribute vcenter_client_id
    #   <p>Source server vCenter client id.</p>
    #
    #   @return [String]
    #
    FinalizeCutoverOutput = ::Struct.new(
      :source_server_id,
      :arn,
      :is_archived,
      :tags,
      :launched_instance,
      :data_replication_info,
      :life_cycle,
      :source_properties,
      :replication_type,
      :vcenter_client_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Mgn::Types::FinalizeCutoverOutput "\
          "source_server_id=#{source_server_id || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "is_archived=#{is_archived || 'nil'}, "\
          "tags=\"[SENSITIVE]\", "\
          "launched_instance=#{launched_instance || 'nil'}, "\
          "data_replication_info=#{data_replication_info || 'nil'}, "\
          "life_cycle=#{life_cycle || 'nil'}, "\
          "source_properties=#{source_properties || 'nil'}, "\
          "replication_type=#{replication_type || 'nil'}, "\
          "vcenter_client_id=#{vcenter_client_id || 'nil'}>"
      end
    end

    # Includes enum constants for FirstBoot
    #
    module FirstBoot
      # No documentation available.
      #
      WAITING = "WAITING"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      UNKNOWN = "UNKNOWN"

      # No documentation available.
      #
      STOPPED = "STOPPED"
    end

    # @!attribute source_server_id
    #   <p>Request to get Launch Configuration information by Source Server ID.</p>
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
    #   <p>Launch configuration Source Server ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Launch configuration name.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_launch_template_id
    #   <p>Launch configuration EC2 Launch template ID.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_disposition
    #   <p>Launch disposition for launch configuration.</p>
    #
    #   Enum, one of: ["STOPPED", "STARTED"]
    #
    #   @return [String]
    #
    # @!attribute target_instance_type_right_sizing_method
    #   <p>Launch configuration Target instance type right sizing method.</p>
    #
    #   Enum, one of: ["NONE", "BASIC"]
    #
    #   @return [String]
    #
    # @!attribute copy_private_ip
    #   <p>Copy Private IP during Launch Configuration.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute copy_tags
    #   <p>Copy Tags during Launch Configuration.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute licensing
    #   <p>Launch configuration OS licensing.</p>
    #
    #   @return [Licensing]
    #
    # @!attribute boot_mode
    #   <p>Launch configuration boot mode.</p>
    #
    #   Enum, one of: ["LEGACY_BIOS", "UEFI"]
    #
    #   @return [String]
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
      :boot_mode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_server_id
    #   <p>Request to get Replication Configuration by Source Server ID.</p>
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
    #   <p>Replication Configuration Source Server ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Replication Configuration name.</p>
    #
    #   @return [String]
    #
    # @!attribute staging_area_subnet_id
    #   <p>Replication Configuration Staging Area subnet ID.</p>
    #
    #   @return [String]
    #
    # @!attribute associate_default_security_group
    #   <p>Replication Configuration associate default Application Migration Service Security Group.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute replication_servers_security_groups_i_ds
    #   <p>Replication Configuration Replication Server Security Group IDs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute replication_server_instance_type
    #   <p>Replication Configuration Replication Server instance type.</p>
    #
    #   @return [String]
    #
    # @!attribute use_dedicated_replication_server
    #   <p>Replication Configuration use Dedicated Replication Server.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute default_large_staging_disk_type
    #   <p>Replication Configuration use default large Staging Disks.</p>
    #
    #   Enum, one of: ["GP2", "ST1", "GP3"]
    #
    #   @return [String]
    #
    # @!attribute replicated_disks
    #   <p>Replication Configuration replicated disks.</p>
    #
    #   @return [Array<ReplicationConfigurationReplicatedDisk>]
    #
    # @!attribute ebs_encryption
    #   <p>Replication Configuration EBS encryption.</p>
    #
    #   Enum, one of: ["DEFAULT", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute ebs_encryption_key_arn
    #   <p>Replication Configuration EBS encryption key ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth_throttling
    #   <p>Replication Configuration set bandwidth throttling.</p>
    #
    #   @return [Integer]
    #
    # @!attribute data_plane_routing
    #   <p>Replication Configuration data plane routing.</p>
    #
    #   Enum, one of: ["PRIVATE_IP", "PUBLIC_IP"]
    #
    #   @return [String]
    #
    # @!attribute create_public_ip
    #   <p>Replication Configuration create Public IP.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute staging_area_tags
    #   <p>Replication Configuration Staging Area tags.</p>
    #
    #   @return [Hash<String, String>]
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
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bandwidth_throttling ||= 0
      end

      def to_s
        "#<struct AWS::SDK::Mgn::Types::GetReplicationConfigurationOutput "\
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
          "staging_area_tags=\"[SENSITIVE]\">"
      end
    end

    # <p>Identification hints.</p>
    #
    # @!attribute fqdn
    #   <p>FQDN address identification hint.</p>
    #
    #   @return [String]
    #
    # @!attribute hostname
    #   <p>Hostname identification hint.</p>
    #
    #   @return [String]
    #
    # @!attribute vm_ware_uuid
    #   <p>vmWare UUID identification hint.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_instance_id
    #   <p>AWS Instance ID identification hint.</p>
    #
    #   @return [String]
    #
    # @!attribute vm_path
    #   <p>vCenter VM path identification hint.</p>
    #
    #   @return [String]
    #
    IdentificationHints = ::Struct.new(
      :fqdn,
      :hostname,
      :vm_ware_uuid,
      :aws_instance_id,
      :vm_path,
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
      START_TEST = "START_TEST"

      # No documentation available.
      #
      START_CUTOVER = "START_CUTOVER"

      # No documentation available.
      #
      DIAGNOSTIC = "DIAGNOSTIC"

      # No documentation available.
      #
      TERMINATE = "TERMINATE"
    end

    # <p>The server encountered an unexpected condition that prevented it from fulfilling the request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   <p>The server encountered an unexpected condition that prevented it from fulfilling the request. The request will be retried again after x seconds.</p>
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

    # <p>Job.</p>
    #
    # @!attribute job_id
    #   <p>Job ID.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>the ARN of the specific Job.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Job type.</p>
    #
    #   Enum, one of: ["LAUNCH", "TERMINATE"]
    #
    #   @return [String]
    #
    # @!attribute initiated_by
    #   <p>Job initiated by field.</p>
    #
    #   Enum, one of: ["START_TEST", "START_CUTOVER", "DIAGNOSTIC", "TERMINATE"]
    #
    #   @return [String]
    #
    # @!attribute creation_date_time
    #   <p>Job creation time.</p>
    #
    #   @return [String]
    #
    # @!attribute end_date_time
    #   <p>Job end time.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Job status.</p>
    #
    #   Enum, one of: ["PENDING", "STARTED", "COMPLETED"]
    #
    #   @return [String]
    #
    # @!attribute participating_servers
    #   <p>Servers participating in a specific Job.</p>
    #
    #   @return [Array<ParticipatingServer>]
    #
    # @!attribute tags
    #   <p>Tags associated with specific Job.</p>
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
        "#<struct AWS::SDK::Mgn::Types::Job "\
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

    # <p>Job log.</p>
    #
    # @!attribute log_date_time
    #   <p>Job log event date and time.</p>
    #
    #   @return [String]
    #
    # @!attribute event
    #   <p>Job log event.</p>
    #
    #   Enum, one of: ["JOB_START", "SERVER_SKIPPED", "CLEANUP_START", "CLEANUP_END", "CLEANUP_FAIL", "SNAPSHOT_START", "SNAPSHOT_END", "SNAPSHOT_FAIL", "USING_PREVIOUS_SNAPSHOT", "CONVERSION_START", "CONVERSION_END", "CONVERSION_FAIL", "LAUNCH_START", "LAUNCH_FAILED", "JOB_CANCEL", "JOB_END"]
    #
    #   @return [String]
    #
    # @!attribute event_data
    #   <p>Job event data</p>
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

    # <p>Job log data</p>
    #
    # @!attribute source_server_id
    #   <p>Job Event Source Server ID.</p>
    #
    #   @return [String]
    #
    # @!attribute conversion_server_id
    #   <p>Job Event conversion Server ID.</p>
    #
    #   @return [String]
    #
    # @!attribute target_instance_id
    #   <p>Job Event Target instance ID.</p>
    #
    #   @return [String]
    #
    # @!attribute raw_error
    #   <p>Job error.</p>
    #
    #   @return [String]
    #
    JobLogEventData = ::Struct.new(
      :source_server_id,
      :conversion_server_id,
      :target_instance_id,
      :raw_error,
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

    # <p>Launched instance.</p>
    #
    # @!attribute ec2_instance_id
    #   <p>Launched instance EC2 ID.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>Launched instance Job ID.</p>
    #
    #   @return [String]
    #
    # @!attribute first_boot
    #   <p>Launched instance first boot.</p>
    #
    #   Enum, one of: ["WAITING", "SUCCEEDED", "UNKNOWN", "STOPPED"]
    #
    #   @return [String]
    #
    LaunchedInstance = ::Struct.new(
      :ec2_instance_id,
      :job_id,
      :first_boot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configure Licensing.</p>
    #
    # @!attribute os_byol
    #   <p>Configure BYOL OS licensing.</p>
    #
    #   @return [Boolean]
    #
    Licensing = ::Struct.new(
      :os_byol,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Lifecycle.</p>
    #
    # @!attribute added_to_service_date_time
    #   <p>Lifecycle added to service data and time.</p>
    #
    #   @return [String]
    #
    # @!attribute first_byte_date_time
    #   <p>Lifecycle replication initiation date and time.</p>
    #
    #   @return [String]
    #
    # @!attribute elapsed_replication_duration
    #   <p>Lifecycle elapsed time and duration.</p>
    #
    #   @return [String]
    #
    # @!attribute last_seen_by_service_date_time
    #   <p>Lifecycle last seen date and time.</p>
    #
    #   @return [String]
    #
    # @!attribute last_test
    #   <p>Lifecycle last Test.</p>
    #
    #   @return [LifeCycleLastTest]
    #
    # @!attribute last_cutover
    #   <p>Lifecycle last Cutover.</p>
    #
    #   @return [LifeCycleLastCutover]
    #
    # @!attribute state
    #   <p>Lifecycle state.</p>
    #
    #   Enum, one of: ["STOPPED", "NOT_READY", "READY_FOR_TEST", "TESTING", "READY_FOR_CUTOVER", "CUTTING_OVER", "CUTOVER", "DISCONNECTED", "DISCOVERED"]
    #
    #   @return [String]
    #
    LifeCycle = ::Struct.new(
      :added_to_service_date_time,
      :first_byte_date_time,
      :elapsed_replication_duration,
      :last_seen_by_service_date_time,
      :last_test,
      :last_cutover,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Lifecycle last Cutover .</p>
    #
    # @!attribute initiated
    #   <p>Lifecycle last Cutover initiated.</p>
    #
    #   @return [LifeCycleLastCutoverInitiated]
    #
    # @!attribute reverted
    #   <p>Lifecycle last Cutover reverted.</p>
    #
    #   @return [LifeCycleLastCutoverReverted]
    #
    # @!attribute finalized
    #   <p>Lifecycle Cutover finalized date and time.</p>
    #
    #   @return [LifeCycleLastCutoverFinalized]
    #
    LifeCycleLastCutover = ::Struct.new(
      :initiated,
      :reverted,
      :finalized,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Lifecycle Cutover finalized</p>
    #
    # @!attribute api_call_date_time
    #   <p>Lifecycle Cutover finalized date and time.</p>
    #
    #   @return [String]
    #
    LifeCycleLastCutoverFinalized = ::Struct.new(
      :api_call_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Lifecycle last Cutover initiated.</p>
    #
    # @!attribute api_call_date_time
    #   <p/>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>Lifecycle last Cutover initiated by Job ID.</p>
    #
    #   @return [String]
    #
    LifeCycleLastCutoverInitiated = ::Struct.new(
      :api_call_date_time,
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Lifecycle last Cutover reverted.</p>
    #
    # @!attribute api_call_date_time
    #   <p>Lifecycle last Cutover reverted API call date time.</p>
    #
    #   @return [String]
    #
    LifeCycleLastCutoverReverted = ::Struct.new(
      :api_call_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Lifecycle last Test.</p>
    #
    # @!attribute initiated
    #   <p>Lifecycle last Test initiated.</p>
    #
    #   @return [LifeCycleLastTestInitiated]
    #
    # @!attribute reverted
    #   <p>Lifecycle last Test reverted.</p>
    #
    #   @return [LifeCycleLastTestReverted]
    #
    # @!attribute finalized
    #   <p>Lifecycle last Test finalized.</p>
    #
    #   @return [LifeCycleLastTestFinalized]
    #
    LifeCycleLastTest = ::Struct.new(
      :initiated,
      :reverted,
      :finalized,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Lifecycle last Test finalized.</p>
    #
    # @!attribute api_call_date_time
    #   <p>Lifecycle Test failed API call date and time.</p>
    #
    #   @return [String]
    #
    LifeCycleLastTestFinalized = ::Struct.new(
      :api_call_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Lifecycle last Test initiated.</p>
    #
    # @!attribute api_call_date_time
    #   <p>Lifecycle last Test initiated API call date and time.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>Lifecycle last Test initiated Job ID.</p>
    #
    #   @return [String]
    #
    LifeCycleLastTestInitiated = ::Struct.new(
      :api_call_date_time,
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Lifecycle last Test reverted.</p>
    #
    # @!attribute api_call_date_time
    #   <p>Lifecycle last Test reverted API call date and time.</p>
    #
    #   @return [String]
    #
    LifeCycleLastTestReverted = ::Struct.new(
      :api_call_date_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LifeCycleState
    #
    module LifeCycleState
      # No documentation available.
      #
      STOPPED = "STOPPED"

      # No documentation available.
      #
      NOT_READY = "NOT_READY"

      # No documentation available.
      #
      READY_FOR_TEST = "READY_FOR_TEST"

      # No documentation available.
      #
      TESTING = "TESTING"

      # No documentation available.
      #
      READY_FOR_CUTOVER = "READY_FOR_CUTOVER"

      # No documentation available.
      #
      CUTTING_OVER = "CUTTING_OVER"

      # No documentation available.
      #
      CUTOVER = "CUTOVER"

      # No documentation available.
      #
      DISCONNECTED = "DISCONNECTED"

      # No documentation available.
      #
      DISCOVERED = "DISCOVERED"
    end

    # @!attribute resource_arn
    #   <p>List tags for resource request by ARN.</p>
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
    #   <p>List tags for resource response.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Mgn::Types::ListTagsForResourceOutput "\
          "tags=\"[SENSITIVE]\">"
      end
    end

    # @!attribute source_server_id
    #   <p>Mark as archived by Source Server ID.</p>
    #
    #   @return [String]
    #
    MarkAsArchivedInput = ::Struct.new(
      :source_server_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_server_id
    #   <p>Source server ID.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>Source server ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute is_archived
    #   <p>Source server archived status.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>Source server Tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute launched_instance
    #   <p>Source server launched instance.</p>
    #
    #   @return [LaunchedInstance]
    #
    # @!attribute data_replication_info
    #   <p>Source server data replication info.</p>
    #
    #   @return [DataReplicationInfo]
    #
    # @!attribute life_cycle
    #   <p>Source server lifecycle state.</p>
    #
    #   @return [LifeCycle]
    #
    # @!attribute source_properties
    #   <p>Source server properties.</p>
    #
    #   @return [SourceProperties]
    #
    # @!attribute replication_type
    #   <p>Source server replication type.</p>
    #
    #   Enum, one of: ["AGENT_BASED", "SNAPSHOT_SHIPPING"]
    #
    #   @return [String]
    #
    # @!attribute vcenter_client_id
    #   <p>Source server vCenter client id.</p>
    #
    #   @return [String]
    #
    MarkAsArchivedOutput = ::Struct.new(
      :source_server_id,
      :arn,
      :is_archived,
      :tags,
      :launched_instance,
      :data_replication_info,
      :life_cycle,
      :source_properties,
      :replication_type,
      :vcenter_client_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Mgn::Types::MarkAsArchivedOutput "\
          "source_server_id=#{source_server_id || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "is_archived=#{is_archived || 'nil'}, "\
          "tags=\"[SENSITIVE]\", "\
          "launched_instance=#{launched_instance || 'nil'}, "\
          "data_replication_info=#{data_replication_info || 'nil'}, "\
          "life_cycle=#{life_cycle || 'nil'}, "\
          "source_properties=#{source_properties || 'nil'}, "\
          "replication_type=#{replication_type || 'nil'}, "\
          "vcenter_client_id=#{vcenter_client_id || 'nil'}>"
      end
    end

    # <p>Network interface.</p>
    #
    # @!attribute mac_address
    #   <p>Network interface Mac address.</p>
    #
    #   @return [String]
    #
    # @!attribute ips
    #   <p>Network interface IPs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute is_primary
    #   <p>Network interface primary IP.</p>
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
    #   <p>OS full string.</p>
    #
    #   @return [String]
    #
    OS = ::Struct.new(
      :full_string,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Server participating in Job.</p>
    #
    # @!attribute source_server_id
    #   <p>Participating server Source Server ID.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_status
    #   <p>Participating server launch status.</p>
    #
    #   Enum, one of: ["PENDING", "IN_PROGRESS", "LAUNCHED", "FAILED", "TERMINATED"]
    #
    #   @return [String]
    #
    ParticipatingServer = ::Struct.new(
      :source_server_id,
      :launch_status,
      keyword_init: true
    ) do
      include Hearth::Structure
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
      ST1 = "ST1"

      # No documentation available.
      #
      GP3 = "GP3"
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

    # <p>Replication Configuration replicated disk.</p>
    #
    # @!attribute device_name
    #   <p>Replication Configuration replicated disk device name.</p>
    #
    #   @return [String]
    #
    # @!attribute is_boot_disk
    #   <p>Replication Configuration replicated disk boot disk.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute staging_disk_type
    #   <p>Replication Configuration replicated disk staging disk type.</p>
    #
    #   Enum, one of: ["AUTO", "GP2", "IO1", "SC1", "ST1", "STANDARD", "GP3", "IO2"]
    #
    #   @return [String]
    #
    # @!attribute iops
    #   <p>Replication Configuration replicated disk IOPs.</p>
    #
    #   @return [Integer]
    #
    # @!attribute throughput
    #   <p>Replication Configuration replicated disk throughput.</p>
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

      # No documentation available.
      #
      GP3 = "GP3"

      # No documentation available.
      #
      IO2 = "IO2"
    end

    # @!attribute replication_configuration_template_id
    #   <p>Replication Configuration template ID.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>Replication Configuration template ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute staging_area_subnet_id
    #   <p>Replication Configuration template Staging Area subnet ID.</p>
    #
    #   @return [String]
    #
    # @!attribute associate_default_security_group
    #   <p>Replication Configuration template associate default Application Migration Service Security group.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute replication_servers_security_groups_i_ds
    #   <p>Replication Configuration template server Security Groups IDs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute replication_server_instance_type
    #   <p>Replication Configuration template server instance type.</p>
    #
    #   @return [String]
    #
    # @!attribute use_dedicated_replication_server
    #   <p>Replication Configuration template use Dedicated Replication Server.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute default_large_staging_disk_type
    #   <p>Replication Configuration template use default large Staging Disk type.</p>
    #
    #   Enum, one of: ["GP2", "ST1", "GP3"]
    #
    #   @return [String]
    #
    # @!attribute ebs_encryption
    #   <p>Replication Configuration template EBS encryption.</p>
    #
    #   Enum, one of: ["DEFAULT", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute ebs_encryption_key_arn
    #   <p>Replication Configuration template EBS encryption key ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth_throttling
    #   <p>Replication Configuration template bandwidth throttling.</p>
    #
    #   @return [Integer]
    #
    # @!attribute data_plane_routing
    #   <p>Replication Configuration template data plane routing.</p>
    #
    #   Enum, one of: ["PRIVATE_IP", "PUBLIC_IP"]
    #
    #   @return [String]
    #
    # @!attribute create_public_ip
    #   <p>Replication Configuration template create Public IP.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute staging_area_tags
    #   <p>Replication Configuration template Staging Area Tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute tags
    #   <p>Replication Configuration template Tags.</p>
    #
    #   @return [Hash<String, String>]
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
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bandwidth_throttling ||= 0
      end

      def to_s
        "#<struct AWS::SDK::Mgn::Types::ReplicationConfigurationTemplate "\
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
          "tags=\"[SENSITIVE]\">"
      end
    end

    # Includes enum constants for ReplicationType
    #
    module ReplicationType
      # No documentation available.
      #
      AGENT_BASED = "AGENT_BASED"

      # No documentation available.
      #
      SNAPSHOT_SHIPPING = "SNAPSHOT_SHIPPING"
    end

    # <p>Resource not found exception.</p>
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
    #   <p>Resource ID not found error.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>Resource type not found error.</p>
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
    #   <p>Retry data replication for Source Server ID.</p>
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
    #   <p>Source server ID.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>Source server ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute is_archived
    #   <p>Source server archived status.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>Source server Tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute launched_instance
    #   <p>Source server launched instance.</p>
    #
    #   @return [LaunchedInstance]
    #
    # @!attribute data_replication_info
    #   <p>Source server data replication info.</p>
    #
    #   @return [DataReplicationInfo]
    #
    # @!attribute life_cycle
    #   <p>Source server lifecycle state.</p>
    #
    #   @return [LifeCycle]
    #
    # @!attribute source_properties
    #   <p>Source server properties.</p>
    #
    #   @return [SourceProperties]
    #
    # @!attribute replication_type
    #   <p>Source server replication type.</p>
    #
    #   Enum, one of: ["AGENT_BASED", "SNAPSHOT_SHIPPING"]
    #
    #   @return [String]
    #
    # @!attribute vcenter_client_id
    #   <p>Source server vCenter client id.</p>
    #
    #   @return [String]
    #
    RetryDataReplicationOutput = ::Struct.new(
      :source_server_id,
      :arn,
      :is_archived,
      :tags,
      :launched_instance,
      :data_replication_info,
      :life_cycle,
      :source_properties,
      :replication_type,
      :vcenter_client_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Mgn::Types::RetryDataReplicationOutput "\
          "source_server_id=#{source_server_id || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "is_archived=#{is_archived || 'nil'}, "\
          "tags=\"[SENSITIVE]\", "\
          "launched_instance=#{launched_instance || 'nil'}, "\
          "data_replication_info=#{data_replication_info || 'nil'}, "\
          "life_cycle=#{life_cycle || 'nil'}, "\
          "source_properties=#{source_properties || 'nil'}, "\
          "replication_type=#{replication_type || 'nil'}, "\
          "vcenter_client_id=#{vcenter_client_id || 'nil'}>"
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
    #   <p>Exceeded the service quota resource ID.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>Exceeded the service quota resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   <p>Exceeded the service quota service code.</p>
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   <p>Exceeded the service quota code.</p>
    #
    #   @return [String]
    #
    # @!attribute quota_value
    #   <p>Exceeded the service quota value.</p>
    #
    #   @return [Integer]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      :code,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      :quota_value,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.quota_value ||= 0
      end
    end

    # <p>Source server properties.</p>
    #
    # @!attribute last_updated_date_time
    #   <p>Source server last update date and time.</p>
    #
    #   @return [String]
    #
    # @!attribute recommended_instance_type
    #   <p>Source server recommended instance type.</p>
    #
    #   @return [String]
    #
    # @!attribute identification_hints
    #   <p>Source server identification hints.</p>
    #
    #   @return [IdentificationHints]
    #
    # @!attribute network_interfaces
    #   <p>Source server network interfaces.</p>
    #
    #   @return [Array<NetworkInterface>]
    #
    # @!attribute disks
    #   <p>Source Server disks.</p>
    #
    #   @return [Array<Disk>]
    #
    # @!attribute cpus
    #   <p>Source Server CPUs.</p>
    #
    #   @return [Array<CPU>]
    #
    # @!attribute ram_bytes
    #   <p>Source server RAM in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute os
    #   <p>Source server OS.</p>
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
    #   <p>Source server ID.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>Source server ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute is_archived
    #   <p>Source server archived status.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>Source server Tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute launched_instance
    #   <p>Source server launched instance.</p>
    #
    #   @return [LaunchedInstance]
    #
    # @!attribute data_replication_info
    #   <p>Source server data replication info.</p>
    #
    #   @return [DataReplicationInfo]
    #
    # @!attribute life_cycle
    #   <p>Source server lifecycle state.</p>
    #
    #   @return [LifeCycle]
    #
    # @!attribute source_properties
    #   <p>Source server properties.</p>
    #
    #   @return [SourceProperties]
    #
    # @!attribute replication_type
    #   <p>Source server replication type.</p>
    #
    #   Enum, one of: ["AGENT_BASED", "SNAPSHOT_SHIPPING"]
    #
    #   @return [String]
    #
    # @!attribute vcenter_client_id
    #   <p>Source server vCenter client id.</p>
    #
    #   @return [String]
    #
    SourceServer = ::Struct.new(
      :source_server_id,
      :arn,
      :is_archived,
      :tags,
      :launched_instance,
      :data_replication_info,
      :life_cycle,
      :source_properties,
      :replication_type,
      :vcenter_client_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Mgn::Types::SourceServer "\
          "source_server_id=#{source_server_id || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "is_archived=#{is_archived || 'nil'}, "\
          "tags=\"[SENSITIVE]\", "\
          "launched_instance=#{launched_instance || 'nil'}, "\
          "data_replication_info=#{data_replication_info || 'nil'}, "\
          "life_cycle=#{life_cycle || 'nil'}, "\
          "source_properties=#{source_properties || 'nil'}, "\
          "replication_type=#{replication_type || 'nil'}, "\
          "vcenter_client_id=#{vcenter_client_id || 'nil'}>"
      end
    end

    # @!attribute source_server_i_ds
    #   <p>Start Cutover by Source Server IDs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>Start Cutover by Tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    StartCutoverInput = ::Struct.new(
      :source_server_i_ds,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Mgn::Types::StartCutoverInput "\
          "source_server_i_ds=#{source_server_i_ds || 'nil'}, "\
          "tags=\"[SENSITIVE]\">"
      end
    end

    # @!attribute job
    #   <p>Start Cutover Job response.</p>
    #
    #   @return [Job]
    #
    StartCutoverOutput = ::Struct.new(
      :job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_server_id
    #   <p>ID of source server on which to start replication.</p>
    #
    #   @return [String]
    #
    StartReplicationInput = ::Struct.new(
      :source_server_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_server_id
    #   <p>Source server ID.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>Source server ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute is_archived
    #   <p>Source server archived status.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>Source server Tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute launched_instance
    #   <p>Source server launched instance.</p>
    #
    #   @return [LaunchedInstance]
    #
    # @!attribute data_replication_info
    #   <p>Source server data replication info.</p>
    #
    #   @return [DataReplicationInfo]
    #
    # @!attribute life_cycle
    #   <p>Source server lifecycle state.</p>
    #
    #   @return [LifeCycle]
    #
    # @!attribute source_properties
    #   <p>Source server properties.</p>
    #
    #   @return [SourceProperties]
    #
    # @!attribute replication_type
    #   <p>Source server replication type.</p>
    #
    #   Enum, one of: ["AGENT_BASED", "SNAPSHOT_SHIPPING"]
    #
    #   @return [String]
    #
    # @!attribute vcenter_client_id
    #   <p>Source server vCenter client id.</p>
    #
    #   @return [String]
    #
    StartReplicationOutput = ::Struct.new(
      :source_server_id,
      :arn,
      :is_archived,
      :tags,
      :launched_instance,
      :data_replication_info,
      :life_cycle,
      :source_properties,
      :replication_type,
      :vcenter_client_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Mgn::Types::StartReplicationOutput "\
          "source_server_id=#{source_server_id || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "is_archived=#{is_archived || 'nil'}, "\
          "tags=\"[SENSITIVE]\", "\
          "launched_instance=#{launched_instance || 'nil'}, "\
          "data_replication_info=#{data_replication_info || 'nil'}, "\
          "life_cycle=#{life_cycle || 'nil'}, "\
          "source_properties=#{source_properties || 'nil'}, "\
          "replication_type=#{replication_type || 'nil'}, "\
          "vcenter_client_id=#{vcenter_client_id || 'nil'}>"
      end
    end

    # @!attribute source_server_i_ds
    #   <p>Start Test for Source Server IDs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>Start Test by Tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    StartTestInput = ::Struct.new(
      :source_server_i_ds,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Mgn::Types::StartTestInput "\
          "source_server_i_ds=#{source_server_i_ds || 'nil'}, "\
          "tags=\"[SENSITIVE]\">"
      end
    end

    # @!attribute job
    #   <p>Start Test Job response.</p>
    #
    #   @return [Job]
    #
    StartTestOutput = ::Struct.new(
      :job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>Tag resource by ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tag resource by Tags.</p>
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
        "#<struct AWS::SDK::Mgn::Types::TagResourceInput "\
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

    # @!attribute source_server_i_ds
    #   <p>Terminate Target instance by Source Server IDs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>Terminate Target instance by Tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    TerminateTargetInstancesInput = ::Struct.new(
      :source_server_i_ds,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Mgn::Types::TerminateTargetInstancesInput "\
          "source_server_i_ds=#{source_server_i_ds || 'nil'}, "\
          "tags=\"[SENSITIVE]\">"
      end
    end

    # @!attribute job
    #   <p>Terminate Target instance Job response.</p>
    #
    #   @return [Job]
    #
    TerminateTargetInstancesOutput = ::Struct.new(
      :job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Reached throttling quota exception.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   <p>Reached throttling quota exception service code.</p>
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   <p>Reached throttling quota exception.</p>
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   <p>Reached throttling quota exception will retry after x seconds.</p>
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

    # <p>Uninitialized account exception.</p>
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
    #   <p>Untag resource by ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>Untag resource by Keys.</p>
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
        "#<struct AWS::SDK::Mgn::Types::UntagResourceInput "\
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

    # @!attribute source_server_id
    #   <p>Update Launch configuration by Source Server ID request.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Update Launch configuration name request.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_disposition
    #   <p>Update Launch configuration launch disposition request.</p>
    #
    #   Enum, one of: ["STOPPED", "STARTED"]
    #
    #   @return [String]
    #
    # @!attribute target_instance_type_right_sizing_method
    #   <p>Update Launch configuration Target instance right sizing request.</p>
    #
    #   Enum, one of: ["NONE", "BASIC"]
    #
    #   @return [String]
    #
    # @!attribute copy_private_ip
    #   <p>Update Launch configuration copy Private IP request.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute copy_tags
    #   <p>Update Launch configuration copy Tags request.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute licensing
    #   <p>Update Launch configuration licensing request.</p>
    #
    #   @return [Licensing]
    #
    # @!attribute boot_mode
    #   <p>Update Launch configuration boot mode request.</p>
    #
    #   Enum, one of: ["LEGACY_BIOS", "UEFI"]
    #
    #   @return [String]
    #
    UpdateLaunchConfigurationInput = ::Struct.new(
      :source_server_id,
      :name,
      :launch_disposition,
      :target_instance_type_right_sizing_method,
      :copy_private_ip,
      :copy_tags,
      :licensing,
      :boot_mode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_server_id
    #   <p>Launch configuration Source Server ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Launch configuration name.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_launch_template_id
    #   <p>Launch configuration EC2 Launch template ID.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_disposition
    #   <p>Launch disposition for launch configuration.</p>
    #
    #   Enum, one of: ["STOPPED", "STARTED"]
    #
    #   @return [String]
    #
    # @!attribute target_instance_type_right_sizing_method
    #   <p>Launch configuration Target instance type right sizing method.</p>
    #
    #   Enum, one of: ["NONE", "BASIC"]
    #
    #   @return [String]
    #
    # @!attribute copy_private_ip
    #   <p>Copy Private IP during Launch Configuration.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute copy_tags
    #   <p>Copy Tags during Launch Configuration.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute licensing
    #   <p>Launch configuration OS licensing.</p>
    #
    #   @return [Licensing]
    #
    # @!attribute boot_mode
    #   <p>Launch configuration boot mode.</p>
    #
    #   Enum, one of: ["LEGACY_BIOS", "UEFI"]
    #
    #   @return [String]
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
      :boot_mode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_server_id
    #   <p>Update replication configuration Source Server ID request.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Update replication configuration name request.</p>
    #
    #   @return [String]
    #
    # @!attribute staging_area_subnet_id
    #   <p>Update replication configuration Staging Area subnet request.</p>
    #
    #   @return [String]
    #
    # @!attribute associate_default_security_group
    #   <p>Update replication configuration associate default Application Migration Service Security group request.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute replication_servers_security_groups_i_ds
    #   <p>Update replication configuration Replication Server Security Groups IDs request.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute replication_server_instance_type
    #   <p>Update replication configuration Replication Server instance type request.</p>
    #
    #   @return [String]
    #
    # @!attribute use_dedicated_replication_server
    #   <p>Update replication configuration use dedicated Replication Server request.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute default_large_staging_disk_type
    #   <p>Update replication configuration use default large Staging Disk type request.</p>
    #
    #   Enum, one of: ["GP2", "ST1", "GP3"]
    #
    #   @return [String]
    #
    # @!attribute replicated_disks
    #   <p>Update replication configuration replicated disks request.</p>
    #
    #   @return [Array<ReplicationConfigurationReplicatedDisk>]
    #
    # @!attribute ebs_encryption
    #   <p>Update replication configuration EBS encryption request.</p>
    #
    #   Enum, one of: ["DEFAULT", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute ebs_encryption_key_arn
    #   <p>Update replication configuration EBS encryption key ARN request.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth_throttling
    #   <p>Update replication configuration bandwidth throttling request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute data_plane_routing
    #   <p>Update replication configuration data plane routing request.</p>
    #
    #   Enum, one of: ["PRIVATE_IP", "PUBLIC_IP"]
    #
    #   @return [String]
    #
    # @!attribute create_public_ip
    #   <p>Update replication configuration create Public IP request.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute staging_area_tags
    #   <p>Update replication configuration Staging Area Tags request.</p>
    #
    #   @return [Hash<String, String>]
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
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bandwidth_throttling ||= 0
      end

      def to_s
        "#<struct AWS::SDK::Mgn::Types::UpdateReplicationConfigurationInput "\
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
          "staging_area_tags=\"[SENSITIVE]\">"
      end
    end

    # @!attribute source_server_id
    #   <p>Replication Configuration Source Server ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Replication Configuration name.</p>
    #
    #   @return [String]
    #
    # @!attribute staging_area_subnet_id
    #   <p>Replication Configuration Staging Area subnet ID.</p>
    #
    #   @return [String]
    #
    # @!attribute associate_default_security_group
    #   <p>Replication Configuration associate default Application Migration Service Security Group.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute replication_servers_security_groups_i_ds
    #   <p>Replication Configuration Replication Server Security Group IDs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute replication_server_instance_type
    #   <p>Replication Configuration Replication Server instance type.</p>
    #
    #   @return [String]
    #
    # @!attribute use_dedicated_replication_server
    #   <p>Replication Configuration use Dedicated Replication Server.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute default_large_staging_disk_type
    #   <p>Replication Configuration use default large Staging Disks.</p>
    #
    #   Enum, one of: ["GP2", "ST1", "GP3"]
    #
    #   @return [String]
    #
    # @!attribute replicated_disks
    #   <p>Replication Configuration replicated disks.</p>
    #
    #   @return [Array<ReplicationConfigurationReplicatedDisk>]
    #
    # @!attribute ebs_encryption
    #   <p>Replication Configuration EBS encryption.</p>
    #
    #   Enum, one of: ["DEFAULT", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute ebs_encryption_key_arn
    #   <p>Replication Configuration EBS encryption key ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth_throttling
    #   <p>Replication Configuration set bandwidth throttling.</p>
    #
    #   @return [Integer]
    #
    # @!attribute data_plane_routing
    #   <p>Replication Configuration data plane routing.</p>
    #
    #   Enum, one of: ["PRIVATE_IP", "PUBLIC_IP"]
    #
    #   @return [String]
    #
    # @!attribute create_public_ip
    #   <p>Replication Configuration create Public IP.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute staging_area_tags
    #   <p>Replication Configuration Staging Area tags.</p>
    #
    #   @return [Hash<String, String>]
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
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bandwidth_throttling ||= 0
      end

      def to_s
        "#<struct AWS::SDK::Mgn::Types::UpdateReplicationConfigurationOutput "\
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
          "staging_area_tags=\"[SENSITIVE]\">"
      end
    end

    # @!attribute replication_configuration_template_id
    #   <p>Update replication configuration template template ID request.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>Update replication configuration template ARN request.</p>
    #
    #   @return [String]
    #
    # @!attribute staging_area_subnet_id
    #   <p>Update replication configuration template Staging Area subnet ID request.</p>
    #
    #   @return [String]
    #
    # @!attribute associate_default_security_group
    #   <p>Update replication configuration template associate default Application Migration Service Security group request.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute replication_servers_security_groups_i_ds
    #   <p>Update replication configuration template Replication Server Security groups IDs request.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute replication_server_instance_type
    #   <p>Update replication configuration template Replication Server instance type request.</p>
    #
    #   @return [String]
    #
    # @!attribute use_dedicated_replication_server
    #   <p>Update replication configuration template use dedicated Replication Server request.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute default_large_staging_disk_type
    #   <p>Update replication configuration template use default large Staging Disk type request.</p>
    #
    #   Enum, one of: ["GP2", "ST1", "GP3"]
    #
    #   @return [String]
    #
    # @!attribute ebs_encryption
    #   <p>Update replication configuration template EBS encryption request.</p>
    #
    #   Enum, one of: ["DEFAULT", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute ebs_encryption_key_arn
    #   <p>Update replication configuration template EBS encryption key ARN request.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth_throttling
    #   <p>Update replication configuration template bandwidth throttling request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute data_plane_routing
    #   <p>Update replication configuration template data plane routing request.</p>
    #
    #   Enum, one of: ["PRIVATE_IP", "PUBLIC_IP"]
    #
    #   @return [String]
    #
    # @!attribute create_public_ip
    #   <p>Update replication configuration template create Public IP request.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute staging_area_tags
    #   <p>Update replication configuration template Staging Area Tags request.</p>
    #
    #   @return [Hash<String, String>]
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
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bandwidth_throttling ||= 0
      end

      def to_s
        "#<struct AWS::SDK::Mgn::Types::UpdateReplicationConfigurationTemplateInput "\
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
          "staging_area_tags=\"[SENSITIVE]\">"
      end
    end

    # @!attribute replication_configuration_template_id
    #   <p>Replication Configuration template ID.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>Replication Configuration template ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute staging_area_subnet_id
    #   <p>Replication Configuration template Staging Area subnet ID.</p>
    #
    #   @return [String]
    #
    # @!attribute associate_default_security_group
    #   <p>Replication Configuration template associate default Application Migration Service Security group.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute replication_servers_security_groups_i_ds
    #   <p>Replication Configuration template server Security Groups IDs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute replication_server_instance_type
    #   <p>Replication Configuration template server instance type.</p>
    #
    #   @return [String]
    #
    # @!attribute use_dedicated_replication_server
    #   <p>Replication Configuration template use Dedicated Replication Server.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute default_large_staging_disk_type
    #   <p>Replication Configuration template use default large Staging Disk type.</p>
    #
    #   Enum, one of: ["GP2", "ST1", "GP3"]
    #
    #   @return [String]
    #
    # @!attribute ebs_encryption
    #   <p>Replication Configuration template EBS encryption.</p>
    #
    #   Enum, one of: ["DEFAULT", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute ebs_encryption_key_arn
    #   <p>Replication Configuration template EBS encryption key ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute bandwidth_throttling
    #   <p>Replication Configuration template bandwidth throttling.</p>
    #
    #   @return [Integer]
    #
    # @!attribute data_plane_routing
    #   <p>Replication Configuration template data plane routing.</p>
    #
    #   Enum, one of: ["PRIVATE_IP", "PUBLIC_IP"]
    #
    #   @return [String]
    #
    # @!attribute create_public_ip
    #   <p>Replication Configuration template create Public IP.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute staging_area_tags
    #   <p>Replication Configuration template Staging Area Tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute tags
    #   <p>Replication Configuration template Tags.</p>
    #
    #   @return [Hash<String, String>]
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
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.bandwidth_throttling ||= 0
      end

      def to_s
        "#<struct AWS::SDK::Mgn::Types::UpdateReplicationConfigurationTemplateOutput "\
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
          "tags=\"[SENSITIVE]\">"
      end
    end

    # @!attribute source_server_id
    #   <p>ID of source server on which to update replication type.</p>
    #
    #   @return [String]
    #
    # @!attribute replication_type
    #   <p>Replication type to which to update source server.</p>
    #
    #   Enum, one of: ["AGENT_BASED", "SNAPSHOT_SHIPPING"]
    #
    #   @return [String]
    #
    UpdateSourceServerReplicationTypeInput = ::Struct.new(
      :source_server_id,
      :replication_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_server_id
    #   <p>Source server ID.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>Source server ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute is_archived
    #   <p>Source server archived status.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>Source server Tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute launched_instance
    #   <p>Source server launched instance.</p>
    #
    #   @return [LaunchedInstance]
    #
    # @!attribute data_replication_info
    #   <p>Source server data replication info.</p>
    #
    #   @return [DataReplicationInfo]
    #
    # @!attribute life_cycle
    #   <p>Source server lifecycle state.</p>
    #
    #   @return [LifeCycle]
    #
    # @!attribute source_properties
    #   <p>Source server properties.</p>
    #
    #   @return [SourceProperties]
    #
    # @!attribute replication_type
    #   <p>Source server replication type.</p>
    #
    #   Enum, one of: ["AGENT_BASED", "SNAPSHOT_SHIPPING"]
    #
    #   @return [String]
    #
    # @!attribute vcenter_client_id
    #   <p>Source server vCenter client id.</p>
    #
    #   @return [String]
    #
    UpdateSourceServerReplicationTypeOutput = ::Struct.new(
      :source_server_id,
      :arn,
      :is_archived,
      :tags,
      :launched_instance,
      :data_replication_info,
      :life_cycle,
      :source_properties,
      :replication_type,
      :vcenter_client_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Mgn::Types::UpdateSourceServerReplicationTypeOutput "\
          "source_server_id=#{source_server_id || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "is_archived=#{is_archived || 'nil'}, "\
          "tags=\"[SENSITIVE]\", "\
          "launched_instance=#{launched_instance || 'nil'}, "\
          "data_replication_info=#{data_replication_info || 'nil'}, "\
          "life_cycle=#{life_cycle || 'nil'}, "\
          "source_properties=#{source_properties || 'nil'}, "\
          "replication_type=#{replication_type || 'nil'}, "\
          "vcenter_client_id=#{vcenter_client_id || 'nil'}>"
      end
    end

    # <p>Validate exception.</p>
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
    #   <p>Validate exception reason.</p>
    #
    #   Enum, one of: ["unknownOperation", "cannotParse", "fieldValidationFailed", "other"]
    #
    #   @return [String]
    #
    # @!attribute field_list
    #   <p>Validate exception field list.</p>
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

    # <p>vCenter client.</p>
    #
    # @!attribute vcenter_client_id
    #   <p>ID of vCenter client.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>Arn of vCenter client.</p>
    #
    #   @return [String]
    #
    # @!attribute hostname
    #   <p>Hostname of vCenter client .</p>
    #
    #   @return [String]
    #
    # @!attribute vcenter_uuid
    #   <p>Vcenter UUID of vCenter client.</p>
    #
    #   @return [String]
    #
    # @!attribute datacenter_name
    #   <p>Datacenter name of vCenter client.</p>
    #
    #   @return [String]
    #
    # @!attribute last_seen_datetime
    #   <p>Last seen time of vCenter client.</p>
    #
    #   @return [String]
    #
    # @!attribute source_server_tags
    #   <p>Tags for Source Server of vCenter client.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute tags
    #   <p>Tags for vCenter client.</p>
    #
    #   @return [Hash<String, String>]
    #
    VcenterClient = ::Struct.new(
      :vcenter_client_id,
      :arn,
      :hostname,
      :vcenter_uuid,
      :datacenter_name,
      :last_seen_datetime,
      :source_server_tags,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Mgn::Types::VcenterClient "\
          "vcenter_client_id=#{vcenter_client_id || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "hostname=#{hostname || 'nil'}, "\
          "vcenter_uuid=#{vcenter_uuid || 'nil'}, "\
          "datacenter_name=#{datacenter_name || 'nil'}, "\
          "last_seen_datetime=#{last_seen_datetime || 'nil'}, "\
          "source_server_tags=\"[SENSITIVE]\", "\
          "tags=\"[SENSITIVE]\">"
      end
    end

  end
end
