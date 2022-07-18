# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Mq
  module Types

    # <p>The action required to resolve a broker issue when the broker is in a CRITICAL_ACTION_REQUIRED state.</p>
    #
    # @!attribute action_required_code
    #   <p>The code you can use to resolve your broker issue when the broker is in a CRITICAL_ACTION_REQUIRED state. You can find instructions by choosing the link for your code from the list of action required codes in <a href="https://docs.aws.amazon.com//latest/developer-guide/troubleshooting-action-required-codes.html">Amazon MQ action required codes</a>. Each code references a topic with detailed information, instructions, and recommendations for how to resolve the issue and prevent future occurrences.</p>
    #
    #   @return [String]
    #
    # @!attribute action_required_info
    #   <p>Information about the action required to resolve your broker issue when the broker is in a CRITICAL_ACTION_REQUIRED state.</p>
    #
    #   @return [String]
    #
    ActionRequired = ::Struct.new(
      :action_required_code,
      :action_required_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AuthenticationStrategy
    #
    module AuthenticationStrategy
      # No documentation available.
      #
      SIMPLE = "SIMPLE"

      # No documentation available.
      #
      LDAP = "LDAP"
    end

    # <p>Name of the availability zone.</p>
    #
    # @!attribute name
    #   <p>Id for the availability zone.</p>
    #
    #   @return [String]
    #
    AvailabilityZone = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about an error.</p>
    #
    # @!attribute error_attribute
    #   <p>The attribute which caused the error.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The explanation of the error.</p>
    #
    #   @return [String]
    #
    BadRequestException = ::Struct.new(
      :error_attribute,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Types of broker engines.</p>
    #
    # @!attribute engine_type
    #   <p>The broker's engine type.</p>
    #
    #   Enum, one of: ["ACTIVEMQ", "RABBITMQ"]
    #
    #   @return [String]
    #
    # @!attribute engine_versions
    #   <p>The list of engine versions.</p>
    #
    #   @return [Array<EngineVersion>]
    #
    BrokerEngineType = ::Struct.new(
      :engine_type,
      :engine_versions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about all brokers.</p>
    #
    # @!attribute console_url
    #   <p>The brokers web console URL.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoints
    #   <p>The broker's wire-level protocol endpoints.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute ip_address
    #   <p>The IP address of the Elastic Network Interface (ENI) attached to the broker. Does not apply to RabbitMQ brokers.</p>
    #
    #   @return [String]
    #
    BrokerInstance = ::Struct.new(
      :console_url,
      :endpoints,
      :ip_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Option for host instance type.</p>
    #
    # @!attribute availability_zones
    #   <p>The list of available az.</p>
    #
    #   @return [Array<AvailabilityZone>]
    #
    # @!attribute engine_type
    #   <p>The broker's engine type.</p>
    #
    #   Enum, one of: ["ACTIVEMQ", "RABBITMQ"]
    #
    #   @return [String]
    #
    # @!attribute host_instance_type
    #   <p>The broker's instance type.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_type
    #   <p>The broker's storage type.</p>
    #
    #   Enum, one of: ["EBS", "EFS"]
    #
    #   @return [String]
    #
    # @!attribute supported_deployment_modes
    #   <p>The list of supported deployment modes.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute supported_engine_versions
    #   <p>The list of supported engine versions.</p>
    #
    #   @return [Array<String>]
    #
    BrokerInstanceOption = ::Struct.new(
      :availability_zones,
      :engine_type,
      :host_instance_type,
      :storage_type,
      :supported_deployment_modes,
      :supported_engine_versions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BrokerState
    #
    module BrokerState
      # No documentation available.
      #
      CREATION_IN_PROGRESS = "CREATION_IN_PROGRESS"

      # No documentation available.
      #
      CREATION_FAILED = "CREATION_FAILED"

      # No documentation available.
      #
      DELETION_IN_PROGRESS = "DELETION_IN_PROGRESS"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      REBOOT_IN_PROGRESS = "REBOOT_IN_PROGRESS"

      # No documentation available.
      #
      CRITICAL_ACTION_REQUIRED = "CRITICAL_ACTION_REQUIRED"
    end

    # Includes enum constants for BrokerStorageType
    #
    module BrokerStorageType
      # No documentation available.
      #
      EBS = "EBS"

      # No documentation available.
      #
      EFS = "EFS"
    end

    # <p>Returns information about all brokers.</p>
    #
    # @!attribute broker_arn
    #   <p>The broker's Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #
    #   @return [String]
    #
    # @!attribute broker_name
    #   <p>The broker's name. This value is unique in your AWS account, 1-50 characters long, and containing only letters, numbers, dashes, and underscores, and must not contain white spaces, brackets, wildcard characters, or special characters.</p>
    #
    #   @return [String]
    #
    # @!attribute broker_state
    #   <p>The broker's status.</p>
    #
    #   Enum, one of: ["CREATION_IN_PROGRESS", "CREATION_FAILED", "DELETION_IN_PROGRESS", "RUNNING", "REBOOT_IN_PROGRESS", "CRITICAL_ACTION_REQUIRED"]
    #
    #   @return [String]
    #
    # @!attribute created
    #   <p>The time when the broker was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute deployment_mode
    #   <p>The broker's deployment mode.</p>
    #
    #   Enum, one of: ["SINGLE_INSTANCE", "ACTIVE_STANDBY_MULTI_AZ", "CLUSTER_MULTI_AZ"]
    #
    #   @return [String]
    #
    # @!attribute engine_type
    #   <p>The type of broker engine.</p>
    #
    #   Enum, one of: ["ACTIVEMQ", "RABBITMQ"]
    #
    #   @return [String]
    #
    # @!attribute host_instance_type
    #   <p>The broker's instance type.</p>
    #
    #   @return [String]
    #
    BrokerSummary = ::Struct.new(
      :broker_arn,
      :broker_id,
      :broker_name,
      :broker_state,
      :created,
      :deployment_mode,
      :engine_type,
      :host_instance_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ChangeType
    #
    module ChangeType
      # No documentation available.
      #
      CREATE = "CREATE"

      # No documentation available.
      #
      UPDATE = "UPDATE"

      # No documentation available.
      #
      DELETE = "DELETE"
    end

    # <p>Returns information about all configurations.</p>
    #
    # @!attribute arn
    #   <p>Required. The ARN of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute authentication_strategy
    #   <p>Optional. The authentication strategy associated with the configuration. The default is SIMPLE.</p>
    #
    #   Enum, one of: ["SIMPLE", "LDAP"]
    #
    #   @return [String]
    #
    # @!attribute created
    #   <p>Required. The date and time of the configuration revision.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>Required. The description of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_type
    #   <p>Required. The type of broker engine. Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.</p>
    #
    #   Enum, one of: ["ACTIVEMQ", "RABBITMQ"]
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>Required. The broker engine's version. For a list of supported engine versions, see, <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker-engine.html">Supported engines</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>Required. The unique ID that Amazon MQ generates for the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_revision
    #   <p>Required. The latest revision of the configuration.</p>
    #
    #   @return [ConfigurationRevision]
    #
    # @!attribute name
    #   <p>Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The list of all tags associated with this configuration.</p>
    #
    #   @return [Hash<String, String>]
    #
    Configuration = ::Struct.new(
      :arn,
      :authentication_strategy,
      :created,
      :description,
      :engine_type,
      :engine_version,
      :id,
      :latest_revision,
      :name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of information about the configuration.</p> <important><p>Does not apply to RabbitMQ brokers.</p></important>
    #
    # @!attribute id
    #   <p>Required. The unique ID that Amazon MQ generates for the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute revision
    #   <p>The revision number of the configuration.</p>
    #
    #   @return [Integer]
    #
    ConfigurationId = ::Struct.new(
      :id,
      :revision,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.revision ||= 0
      end
    end

    # <p>Returns information about the specified configuration revision.</p>
    #
    # @!attribute created
    #   <p>Required. The date and time of the configuration revision.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>The description of the configuration revision.</p>
    #
    #   @return [String]
    #
    # @!attribute revision
    #   <p>Required. The revision number of the configuration.</p>
    #
    #   @return [Integer]
    #
    ConfigurationRevision = ::Struct.new(
      :created,
      :description,
      :revision,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.revision ||= 0
      end
    end

    # <p>Broker configuration information</p>
    #
    # @!attribute current
    #   <p>The broker's current configuration.</p>
    #
    #   @return [ConfigurationId]
    #
    # @!attribute history
    #   <p>The history of configurations applied to the broker.</p>
    #
    #   @return [Array<ConfigurationId>]
    #
    # @!attribute pending
    #   <p>The broker's pending configuration.</p>
    #
    #   @return [ConfigurationId]
    #
    Configurations = ::Struct.new(
      :current,
      :history,
      :pending,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about an error.</p>
    #
    # @!attribute error_attribute
    #   <p>The attribute which caused the error.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The explanation of the error.</p>
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :error_attribute,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Creates a broker using the specified properties.</p>
    #
    # @!attribute authentication_strategy
    #   <p>Optional. The authentication strategy used to secure the broker. The default is SIMPLE.</p>
    #
    #   Enum, one of: ["SIMPLE", "LDAP"]
    #
    #   @return [String]
    #
    # @!attribute auto_minor_version_upgrade
    #   <p>Enables automatic upgrades to new minor versions for brokers, as new versions are released and supported by Amazon MQ. Automatic upgrades occur during the scheduled maintenance window of the broker or after a manual broker reboot. Set to true by default, if no value is specified.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute broker_name
    #   <p>Required. The broker's name. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain white spaces, brackets, wildcard characters, or special characters.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration
    #   <p>A list of information about the configuration.</p>
    #
    #   @return [ConfigurationId]
    #
    # @!attribute creator_request_id
    #   <p>The unique ID that the requester receives for the created broker. Amazon MQ passes your ID with the API action. Note: We recommend using a Universally Unique Identifier (UUID) for the creatorRequestId. You may omit the creatorRequestId if your application doesn't require idempotency.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_mode
    #   <p>Required. The broker's deployment mode.</p>
    #
    #   Enum, one of: ["SINGLE_INSTANCE", "ACTIVE_STANDBY_MULTI_AZ", "CLUSTER_MULTI_AZ"]
    #
    #   @return [String]
    #
    # @!attribute encryption_options
    #   <p>Encryption options for the broker. Does not apply to RabbitMQ brokers.</p>
    #
    #   @return [EncryptionOptions]
    #
    # @!attribute engine_type
    #   <p>Required. The type of broker engine. Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.</p>
    #
    #   Enum, one of: ["ACTIVEMQ", "RABBITMQ"]
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>Required. The broker engine's version. For a list of supported engine versions, see <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker-engine.html">Supported engines</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute host_instance_type
    #   <p>Required. The broker's instance type.</p>
    #
    #   @return [String]
    #
    # @!attribute ldap_server_metadata
    #   <p>Optional. The metadata of the LDAP server used to authenticate and authorize connections to the broker. Does not apply to RabbitMQ brokers.</p>
    #
    #   @return [LdapServerMetadataInput]
    #
    # @!attribute logs
    #   <p>Enables Amazon CloudWatch logging for brokers.</p>
    #
    #   @return [Logs]
    #
    # @!attribute maintenance_window_start_time
    #   <p>The parameters that determine the WeeklyStartTime.</p>
    #
    #   @return [WeeklyStartTime]
    #
    # @!attribute publicly_accessible
    #   <p>Enables connections from applications outside of the VPC that hosts the broker's subnets. Set to false by default, if no value is provided.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute security_groups
    #   <p>The list of rules (1 minimum, 125 maximum) that authorize connections to brokers.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute storage_type
    #   <p>The broker's storage type.</p>
    #
    #   Enum, one of: ["EBS", "EFS"]
    #
    #   @return [String]
    #
    # @!attribute subnet_ids
    #   <p>The list of groups that define which subnets and IP ranges the broker can use from different Availability Zones. If you specify more than one subnet, the subnets must be in different Availability Zones. Amazon MQ will not be able to create VPC endpoints for your broker with multiple subnets in the same Availability Zone. A SINGLE_INSTANCE deployment requires one subnet (for example, the default subnet). An ACTIVE_STANDBY_MULTI_AZ Amazon MQ for ActiveMQ deployment requires two subnets. A CLUSTER_MULTI_AZ Amazon MQ for RabbitMQ deployment has no subnet requirements when deployed with public accessibility. Deployment without public accessibility requires at least one subnet.</p> <important><p>If you specify subnets in a <a href="https://docs.aws.amazon.com/vpc/latest/userguide/vpc-sharing.html">shared VPC</a> for a RabbitMQ broker, the associated VPC to which the specified subnets belong must be owned by your AWS account. Amazon MQ will not be able to create VPC endpoints in VPCs that are not owned by your AWS account.</p></important>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>Create tags when creating the broker.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute users
    #   <p>Required. The list of broker users (persons or applications) who can access queues and topics. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p> <important><title>Amazon MQ for RabbitMQ</title> <p>When you create an Amazon MQ for RabbitMQ broker, one and only one administrative user is accepted and created when a broker is first provisioned. All subsequent broker users are created by making RabbitMQ API calls directly to brokers or via the RabbitMQ web console.</p></important>
    #
    #   @return [Array<User>]
    #
    CreateBrokerInput = ::Struct.new(
      :authentication_strategy,
      :auto_minor_version_upgrade,
      :broker_name,
      :configuration,
      :creator_request_id,
      :deployment_mode,
      :encryption_options,
      :engine_type,
      :engine_version,
      :host_instance_type,
      :ldap_server_metadata,
      :logs,
      :maintenance_window_start_time,
      :publicly_accessible,
      :security_groups,
      :storage_type,
      :subnet_ids,
      :tags,
      :users,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.auto_minor_version_upgrade ||= false
        self.publicly_accessible ||= false
      end
    end

    # @!attribute broker_arn
    #   <p>The broker's Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #
    #   @return [String]
    #
    CreateBrokerOutput = ::Struct.new(
      :broker_arn,
      :broker_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Creates a new configuration for the specified configuration name. Amazon MQ uses the default configuration (the engine type and version).</p>
    #
    # @!attribute authentication_strategy
    #   <p>Optional. The authentication strategy associated with the configuration. The default is SIMPLE.</p>
    #
    #   Enum, one of: ["SIMPLE", "LDAP"]
    #
    #   @return [String]
    #
    # @!attribute engine_type
    #   <p>Required. The type of broker engine. Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.</p>
    #
    #   Enum, one of: ["ACTIVEMQ", "RABBITMQ"]
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>Required. The broker engine's version. For a list of supported engine versions, see <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker-engine.html">Supported engines</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Create tags when creating the configuration.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateConfigurationInput = ::Struct.new(
      :authentication_strategy,
      :engine_type,
      :engine_version,
      :name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>Required. The Amazon Resource Name (ARN) of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute authentication_strategy
    #   <p>Optional. The authentication strategy associated with the configuration. The default is SIMPLE.</p>
    #
    #   Enum, one of: ["SIMPLE", "LDAP"]
    #
    #   @return [String]
    #
    # @!attribute created
    #   <p>Required. The date and time of the configuration.</p>
    #
    #   @return [Time]
    #
    # @!attribute id
    #   <p>Required. The unique ID that Amazon MQ generates for the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_revision
    #   <p>The latest revision of the configuration.</p>
    #
    #   @return [ConfigurationRevision]
    #
    # @!attribute name
    #   <p>Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.</p>
    #
    #   @return [String]
    #
    CreateConfigurationOutput = ::Struct.new(
      :arn,
      :authentication_strategy,
      :created,
      :id,
      :latest_revision,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A map of the key-value pairs for the resource tag.</p>
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource tag.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The key-value pair for the resource tag.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateTagsInput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateTagsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Creates a new ActiveMQ user.</p>
    #
    # @!attribute broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #
    #   @return [String]
    #
    # @!attribute console_access
    #   <p>Enables access to the ActiveMQ Web Console for the ActiveMQ user.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute groups
    #   <p>The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute password
    #   <p>Required. The password of the user. This value must be at least 12 characters long, must contain at least 4 unique characters, and must not contain commas, colons, or equal signs (,:=).</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>
    #
    #   @return [String]
    #
    CreateUserInput = ::Struct.new(
      :broker_id,
      :console_access,
      :groups,
      :password,
      :username,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.console_access ||= false
      end
    end

    CreateUserOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DayOfWeek
    #
    module DayOfWeek
      # No documentation available.
      #
      MONDAY = "MONDAY"

      # No documentation available.
      #
      TUESDAY = "TUESDAY"

      # No documentation available.
      #
      WEDNESDAY = "WEDNESDAY"

      # No documentation available.
      #
      THURSDAY = "THURSDAY"

      # No documentation available.
      #
      FRIDAY = "FRIDAY"

      # No documentation available.
      #
      SATURDAY = "SATURDAY"

      # No documentation available.
      #
      SUNDAY = "SUNDAY"
    end

    # @!attribute broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #
    #   @return [String]
    #
    DeleteBrokerInput = ::Struct.new(
      :broker_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #
    #   @return [String]
    #
    DeleteBrokerOutput = ::Struct.new(
      :broker_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource tag.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>An array of tag keys to delete</p>
    #
    #   @return [Array<String>]
    #
    DeleteTagsInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteTagsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>
    #
    #   @return [String]
    #
    DeleteUserInput = ::Struct.new(
      :broker_id,
      :username,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteUserOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeploymentMode
    #
    module DeploymentMode
      # No documentation available.
      #
      SINGLE_INSTANCE = "SINGLE_INSTANCE"

      # No documentation available.
      #
      ACTIVE_STANDBY_MULTI_AZ = "ACTIVE_STANDBY_MULTI_AZ"

      # No documentation available.
      #
      CLUSTER_MULTI_AZ = "CLUSTER_MULTI_AZ"
    end

    # @!attribute engine_type
    #   <p>Filter response by engine type.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    #
    #   @return [String]
    #
    DescribeBrokerEngineTypesInput = ::Struct.new(
      :engine_type,
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

    # @!attribute broker_engine_types
    #   <p>List of available engine types and versions.</p>
    #
    #   @return [Array<BrokerEngineType>]
    #
    # @!attribute max_results
    #   <p>Required. The maximum number of engine types that can be returned per page (20 by default). This value must be an integer from 5 to 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    #
    #   @return [String]
    #
    DescribeBrokerEngineTypesOutput = ::Struct.new(
      :broker_engine_types,
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

    # @!attribute broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #
    #   @return [String]
    #
    DescribeBrokerInput = ::Struct.new(
      :broker_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute engine_type
    #   <p>Filter response by engine type.</p>
    #
    #   @return [String]
    #
    # @!attribute host_instance_type
    #   <p>Filter response by host instance type.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    #
    #   @return [String]
    #
    # @!attribute storage_type
    #   <p>Filter response by storage type.</p>
    #
    #   @return [String]
    #
    DescribeBrokerInstanceOptionsInput = ::Struct.new(
      :engine_type,
      :host_instance_type,
      :max_results,
      :next_token,
      :storage_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute broker_instance_options
    #   <p>List of available broker instance options.</p>
    #
    #   @return [Array<BrokerInstanceOption>]
    #
    # @!attribute max_results
    #   <p>Required. The maximum number of instance options that can be returned per page (20 by default). This value must be an integer from 5 to 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    #
    #   @return [String]
    #
    DescribeBrokerInstanceOptionsOutput = ::Struct.new(
      :broker_instance_options,
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

    # @!attribute actions_required
    #   <p>A list of actions required for a broker.</p>
    #
    #   @return [Array<ActionRequired>]
    #
    # @!attribute authentication_strategy
    #   <p>The authentication strategy used to secure the broker. The default is SIMPLE.</p>
    #
    #   Enum, one of: ["SIMPLE", "LDAP"]
    #
    #   @return [String]
    #
    # @!attribute auto_minor_version_upgrade
    #   <p>Enables automatic upgrades to new minor versions for brokers, as new versions are released and supported by Amazon MQ. Automatic upgrades occur during the scheduled maintenance window of the broker or after a manual broker reboot.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute broker_arn
    #   <p>The broker's Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #
    #   @return [String]
    #
    # @!attribute broker_instances
    #   <p>A list of information about allocated brokers.</p>
    #
    #   @return [Array<BrokerInstance>]
    #
    # @!attribute broker_name
    #   <p>The broker's name. This value must be unique in your AWS account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain white spaces, brackets, wildcard characters, or special characters.</p>
    #
    #   @return [String]
    #
    # @!attribute broker_state
    #   <p>The broker's status.</p>
    #
    #   Enum, one of: ["CREATION_IN_PROGRESS", "CREATION_FAILED", "DELETION_IN_PROGRESS", "RUNNING", "REBOOT_IN_PROGRESS", "CRITICAL_ACTION_REQUIRED"]
    #
    #   @return [String]
    #
    # @!attribute configurations
    #   <p>The list of all revisions for the specified configuration.</p>
    #
    #   @return [Configurations]
    #
    # @!attribute created
    #   <p>The time when the broker was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute deployment_mode
    #   <p>The broker's deployment mode.</p>
    #
    #   Enum, one of: ["SINGLE_INSTANCE", "ACTIVE_STANDBY_MULTI_AZ", "CLUSTER_MULTI_AZ"]
    #
    #   @return [String]
    #
    # @!attribute encryption_options
    #   <p>Encryption options for the broker. Does not apply to RabbitMQ brokers.</p>
    #
    #   @return [EncryptionOptions]
    #
    # @!attribute engine_type
    #   <p>The type of broker engine. Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.</p>
    #
    #   Enum, one of: ["ACTIVEMQ", "RABBITMQ"]
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>The broker engine's version. For a list of supported engine versions, see <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker-engine.html">Supported engines</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute host_instance_type
    #   <p>The broker's instance type.</p>
    #
    #   @return [String]
    #
    # @!attribute ldap_server_metadata
    #   <p>The metadata of the LDAP server used to authenticate and authorize connections to the broker.</p>
    #
    #   @return [LdapServerMetadataOutput]
    #
    # @!attribute logs
    #   <p>The list of information about logs currently enabled and pending to be deployed for the specified broker.</p>
    #
    #   @return [LogsSummary]
    #
    # @!attribute maintenance_window_start_time
    #   <p>The parameters that determine the WeeklyStartTime.</p>
    #
    #   @return [WeeklyStartTime]
    #
    # @!attribute pending_authentication_strategy
    #   <p>The authentication strategy that will be applied when the broker is rebooted. The default is SIMPLE.</p>
    #
    #   Enum, one of: ["SIMPLE", "LDAP"]
    #
    #   @return [String]
    #
    # @!attribute pending_engine_version
    #   <p>The broker engine version to upgrade to. For a list of supported engine versions, see <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker-engine.html">Supported engines</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute pending_host_instance_type
    #   <p>The broker's host instance type to upgrade to. For a list of supported instance types, see <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker.html broker-instance-types">Broker instance types</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute pending_ldap_server_metadata
    #   <p>The metadata of the LDAP server that will be used to authenticate and authorize connections to the broker after it is rebooted.</p>
    #
    #   @return [LdapServerMetadataOutput]
    #
    # @!attribute pending_security_groups
    #   <p>The list of pending security groups to authorize connections to brokers.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute publicly_accessible
    #   <p>Enables connections from applications outside of the VPC that hosts the broker's subnets.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute security_groups
    #   <p>The list of rules (1 minimum, 125 maximum) that authorize connections to brokers.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute storage_type
    #   <p>The broker's storage type.</p>
    #
    #   Enum, one of: ["EBS", "EFS"]
    #
    #   @return [String]
    #
    # @!attribute subnet_ids
    #   <p>The list of groups that define which subnets and IP ranges the broker can use from different Availability Zones.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>The list of all tags associated with this broker.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute users
    #   <p>The list of all broker usernames for the specified broker.</p>
    #
    #   @return [Array<UserSummary>]
    #
    DescribeBrokerOutput = ::Struct.new(
      :actions_required,
      :authentication_strategy,
      :auto_minor_version_upgrade,
      :broker_arn,
      :broker_id,
      :broker_instances,
      :broker_name,
      :broker_state,
      :configurations,
      :created,
      :deployment_mode,
      :encryption_options,
      :engine_type,
      :engine_version,
      :host_instance_type,
      :ldap_server_metadata,
      :logs,
      :maintenance_window_start_time,
      :pending_authentication_strategy,
      :pending_engine_version,
      :pending_host_instance_type,
      :pending_ldap_server_metadata,
      :pending_security_groups,
      :publicly_accessible,
      :security_groups,
      :storage_type,
      :subnet_ids,
      :tags,
      :users,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.auto_minor_version_upgrade ||= false
        self.publicly_accessible ||= false
      end
    end

    # @!attribute configuration_id
    #   <p>The unique ID that Amazon MQ generates for the configuration.</p>
    #
    #   @return [String]
    #
    DescribeConfigurationInput = ::Struct.new(
      :configuration_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>Required. The ARN of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute authentication_strategy
    #   <p>Optional. The authentication strategy associated with the configuration. The default is SIMPLE.</p>
    #
    #   Enum, one of: ["SIMPLE", "LDAP"]
    #
    #   @return [String]
    #
    # @!attribute created
    #   <p>Required. The date and time of the configuration revision.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>Required. The description of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute engine_type
    #   <p>Required. The type of broker engine. Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.</p>
    #
    #   Enum, one of: ["ACTIVEMQ", "RABBITMQ"]
    #
    #   @return [String]
    #
    # @!attribute engine_version
    #   <p>Required. The broker engine's version. For a list of supported engine versions, see, <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker-engine.html">Supported engines</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>Required. The unique ID that Amazon MQ generates for the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_revision
    #   <p>Required. The latest revision of the configuration.</p>
    #
    #   @return [ConfigurationRevision]
    #
    # @!attribute name
    #   <p>Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The list of all tags associated with this configuration.</p>
    #
    #   @return [Hash<String, String>]
    #
    DescribeConfigurationOutput = ::Struct.new(
      :arn,
      :authentication_strategy,
      :created,
      :description,
      :engine_type,
      :engine_version,
      :id,
      :latest_revision,
      :name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_id
    #   <p>The unique ID that Amazon MQ generates for the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_revision
    #   <p>The revision of the configuration.</p>
    #
    #   @return [String]
    #
    DescribeConfigurationRevisionInput = ::Struct.new(
      :configuration_id,
      :configuration_revision,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_id
    #   <p>Required. The unique ID that Amazon MQ generates for the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute created
    #   <p>Required. The date and time of the configuration.</p>
    #
    #   @return [Time]
    #
    # @!attribute data
    #   <p>Required. The base64-encoded XML configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the configuration.</p>
    #
    #   @return [String]
    #
    DescribeConfigurationRevisionOutput = ::Struct.new(
      :configuration_id,
      :created,
      :data,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>
    #
    #   @return [String]
    #
    DescribeUserInput = ::Struct.new(
      :broker_id,
      :username,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute broker_id
    #   <p>Required. The unique ID that Amazon MQ generates for the broker.</p>
    #
    #   @return [String]
    #
    # @!attribute console_access
    #   <p>Enables access to the the ActiveMQ Web Console for the ActiveMQ user.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute groups
    #   <p>The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute pending
    #   <p>The status of the changes pending for the ActiveMQ user.</p>
    #
    #   @return [UserPendingChanges]
    #
    # @!attribute username
    #   <p>Required. The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>
    #
    #   @return [String]
    #
    DescribeUserOutput = ::Struct.new(
      :broker_id,
      :console_access,
      :groups,
      :pending,
      :username,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.console_access ||= false
      end
    end

    # <important><p>Does not apply to RabbitMQ brokers.</p></important> <p>Encryption options for the broker.</p>
    #
    # @!attribute kms_key_id
    #   <p>The customer master key (CMK) to use for the AWS Key Management Service (KMS). This key is used to encrypt your data at rest. If not provided, Amazon MQ will use a default CMK to encrypt your data.</p>
    #
    #   @return [String]
    #
    # @!attribute use_aws_owned_key
    #   <p>Enables the use of an AWS owned CMK using AWS Key Management Service (KMS). Set to true by default, if no value is provided, for example, for RabbitMQ brokers.</p>
    #
    #   @return [Boolean]
    #
    EncryptionOptions = ::Struct.new(
      :kms_key_id,
      :use_aws_owned_key,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.use_aws_owned_key ||= false
      end
    end

    # Includes enum constants for EngineType
    #
    module EngineType
      # No documentation available.
      #
      ACTIVEMQ = "ACTIVEMQ"

      # No documentation available.
      #
      RABBITMQ = "RABBITMQ"
    end

    # <p>Id of the engine version.</p>
    #
    # @!attribute name
    #   <p>Id for the version.</p>
    #
    #   @return [String]
    #
    EngineVersion = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about an error.</p>
    #
    # @!attribute error_attribute
    #   <p>The attribute which caused the error.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The explanation of the error.</p>
    #
    #   @return [String]
    #
    ForbiddenException = ::Struct.new(
      :error_attribute,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about an error.</p>
    #
    # @!attribute error_attribute
    #   <p>The attribute which caused the error.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The explanation of the error.</p>
    #
    #   @return [String]
    #
    InternalServerErrorException = ::Struct.new(
      :error_attribute,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Optional. The metadata of the LDAP server used to authenticate and authorize connections to the broker.</p> <important><p>Does not apply to RabbitMQ brokers.</p></important>
    #
    # @!attribute hosts
    #   <p>Specifies the location of the LDAP server such as AWS Directory Service for Microsoft Active Directory . Optional failover server.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute role_base
    #   <p>The distinguished name of the node in the directory information tree (DIT) to search for roles or groups. For example, ou=group, ou=corp, dc=corp,
    #                     dc=example, dc=com.</p>
    #
    #   @return [String]
    #
    # @!attribute role_name
    #   <p>Specifies the LDAP attribute that identifies the group name attribute in the object returned from the group membership query.</p>
    #
    #   @return [String]
    #
    # @!attribute role_search_matching
    #   <p>The LDAP search filter used to find roles within the roleBase. The distinguished name of the user matched by userSearchMatching is substituted into the {0} placeholder in the search filter. The client's username is substituted into the {1} placeholder. For example, if you set this option to (member=uid={1})for the user janedoe, the search filter becomes (member=uid=janedoe) after string substitution. It matches all role entries that have a member attribute equal to uid=janedoe under the subtree selected by the roleBase.</p>
    #
    #   @return [String]
    #
    # @!attribute role_search_subtree
    #   <p>The directory search scope for the role. If set to true, scope is to search the entire subtree.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute service_account_password
    #   <p>Service account password. A service account is an account in your LDAP server that has access to initiate a connection. For example, cn=admin,dc=corp, dc=example,
    #                     dc=com.</p>
    #
    #   @return [String]
    #
    # @!attribute service_account_username
    #   <p>Service account username. A service account is an account in your LDAP server that has access to initiate a connection. For example, cn=admin,dc=corp, dc=example,
    #                     dc=com.</p>
    #
    #   @return [String]
    #
    # @!attribute user_base
    #   <p>Select a particular subtree of the directory information tree (DIT) to search for user entries. The subtree is specified by a DN, which specifies the base node of the subtree. For example, by setting this option to ou=Users,ou=corp, dc=corp,
    #                     dc=example, dc=com, the search for user entries is restricted to the subtree beneath ou=Users, ou=corp, dc=corp, dc=example, dc=com.</p>
    #
    #   @return [String]
    #
    # @!attribute user_role_name
    #   <p>Specifies the name of the LDAP attribute for the user group membership.</p>
    #
    #   @return [String]
    #
    # @!attribute user_search_matching
    #   <p>The LDAP search filter used to find users within the userBase. The client's username is substituted into the {0} placeholder in the search filter. For example, if this option is set to (uid={0}) and the received username is janedoe, the search filter becomes (uid=janedoe) after string substitution. It will result in matching an entry like uid=janedoe, ou=Users,ou=corp, dc=corp, dc=example,
    #                     dc=com.</p>
    #
    #   @return [String]
    #
    # @!attribute user_search_subtree
    #   <p>The directory search scope for the user. If set to true, scope is to search the entire subtree.</p>
    #
    #   @return [Boolean]
    #
    LdapServerMetadataInput = ::Struct.new(
      :hosts,
      :role_base,
      :role_name,
      :role_search_matching,
      :role_search_subtree,
      :service_account_password,
      :service_account_username,
      :user_base,
      :user_role_name,
      :user_search_matching,
      :user_search_subtree,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.role_search_subtree ||= false
        self.user_search_subtree ||= false
      end
    end

    # <p>Optional. The metadata of the LDAP server used to authenticate and authorize connections to the broker.</p>
    #
    # @!attribute hosts
    #   <p>Specifies the location of the LDAP server such as AWS Directory Service for Microsoft Active Directory . Optional failover server.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute role_base
    #   <p>The distinguished name of the node in the directory information tree (DIT) to search for roles or groups. For example, ou=group, ou=corp, dc=corp,
    #                     dc=example, dc=com.</p>
    #
    #   @return [String]
    #
    # @!attribute role_name
    #   <p>Specifies the LDAP attribute that identifies the group name attribute in the object returned from the group membership query.</p>
    #
    #   @return [String]
    #
    # @!attribute role_search_matching
    #   <p>The LDAP search filter used to find roles within the roleBase. The distinguished name of the user matched by userSearchMatching is substituted into the {0} placeholder in the search filter. The client's username is substituted into the {1} placeholder. For example, if you set this option to (member=uid={1})for the user janedoe, the search filter becomes (member=uid=janedoe) after string substitution. It matches all role entries that have a member attribute equal to uid=janedoe under the subtree selected by the roleBase.</p>
    #
    #   @return [String]
    #
    # @!attribute role_search_subtree
    #   <p>The directory search scope for the role. If set to true, scope is to search the entire subtree.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute service_account_username
    #   <p>Service account username. A service account is an account in your LDAP server that has access to initiate a connection. For example, cn=admin,dc=corp, dc=example,
    #                     dc=com.</p>
    #
    #   @return [String]
    #
    # @!attribute user_base
    #   <p>Select a particular subtree of the directory information tree (DIT) to search for user entries. The subtree is specified by a DN, which specifies the base node of the subtree. For example, by setting this option to ou=Users,ou=corp, dc=corp,
    #                     dc=example, dc=com, the search for user entries is restricted to the subtree beneath ou=Users, ou=corp, dc=corp, dc=example, dc=com.</p>
    #
    #   @return [String]
    #
    # @!attribute user_role_name
    #   <p>Specifies the name of the LDAP attribute for the user group membership.</p>
    #
    #   @return [String]
    #
    # @!attribute user_search_matching
    #   <p>The LDAP search filter used to find users within the userBase. The client's username is substituted into the {0} placeholder in the search filter. For example, if this option is set to (uid={0}) and the received username is janedoe, the search filter becomes (uid=janedoe) after string substitution. It will result in matching an entry like uid=janedoe, ou=Users,ou=corp, dc=corp, dc=example,
    #                  dc=com.</p>
    #
    #   @return [String]
    #
    # @!attribute user_search_subtree
    #   <p>The directory search scope for the user. If set to true, scope is to search the entire subtree.</p>
    #
    #   @return [Boolean]
    #
    LdapServerMetadataOutput = ::Struct.new(
      :hosts,
      :role_base,
      :role_name,
      :role_search_matching,
      :role_search_subtree,
      :service_account_username,
      :user_base,
      :user_role_name,
      :user_search_matching,
      :user_search_subtree,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.role_search_subtree ||= false
        self.user_search_subtree ||= false
      end
    end

    # @!attribute max_results
    #   <p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    #
    #   @return [String]
    #
    ListBrokersInput = ::Struct.new(
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

    # @!attribute broker_summaries
    #   <p>A list of information about all brokers.</p>
    #
    #   @return [Array<BrokerSummary>]
    #
    # @!attribute next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    #
    #   @return [String]
    #
    ListBrokersOutput = ::Struct.new(
      :broker_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_id
    #   <p>The unique ID that Amazon MQ generates for the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    #
    #   @return [String]
    #
    ListConfigurationRevisionsInput = ::Struct.new(
      :configuration_id,
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

    # @!attribute configuration_id
    #   <p>The unique ID that Amazon MQ generates for the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of configuration revisions that can be returned per page (20 by default). This value must be an integer from 5 to 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    #
    #   @return [String]
    #
    # @!attribute revisions
    #   <p>The list of all revisions for the specified configuration.</p>
    #
    #   @return [Array<ConfigurationRevision>]
    #
    ListConfigurationRevisionsOutput = ::Struct.new(
      :configuration_id,
      :max_results,
      :next_token,
      :revisions,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute max_results
    #   <p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    #
    #   @return [String]
    #
    ListConfigurationsInput = ::Struct.new(
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

    # @!attribute configurations
    #   <p>The list of all revisions for the specified configuration.</p>
    #
    #   @return [Array<Configuration>]
    #
    # @!attribute max_results
    #   <p>The maximum number of configurations that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    #
    #   @return [String]
    #
    ListConfigurationsOutput = ::Struct.new(
      :configurations,
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

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource tag.</p>
    #
    #   @return [String]
    #
    ListTagsInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>The key-value pair for the resource tag.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    #
    #   @return [String]
    #
    ListUsersInput = ::Struct.new(
      :broker_id,
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

    # @!attribute broker_id
    #   <p>Required. The unique ID that Amazon MQ generates for the broker.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Required. The maximum number of ActiveMQ users that can be returned per page (20 by default). This value must be an integer from 5 to 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    #
    #   @return [String]
    #
    # @!attribute users
    #   <p>Required. The list of all ActiveMQ usernames for the specified broker. Does not apply to RabbitMQ brokers.</p>
    #
    #   @return [Array<UserSummary>]
    #
    ListUsersOutput = ::Struct.new(
      :broker_id,
      :max_results,
      :next_token,
      :users,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # <p>The list of information about logs to be enabled for the specified broker.</p>
    #
    # @!attribute audit
    #   <p>Enables audit logging. Every user management action made using JMX or the ActiveMQ Web Console is logged. Does not apply to RabbitMQ brokers.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute general
    #   <p>Enables general logging.</p>
    #
    #   @return [Boolean]
    #
    Logs = ::Struct.new(
      :audit,
      :general,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.audit ||= false
        self.general ||= false
      end
    end

    # <p>The list of information about logs currently enabled and pending to be deployed for the specified broker.</p>
    #
    # @!attribute audit
    #   <p>Enables audit logging. Every user management action made using JMX or the ActiveMQ Web Console is logged.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute audit_log_group
    #   <p>The location of the CloudWatch Logs log group where audit logs are sent.</p>
    #
    #   @return [String]
    #
    # @!attribute general
    #   <p>Enables general logging.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute general_log_group
    #   <p>The location of the CloudWatch Logs log group where general logs are sent.</p>
    #
    #   @return [String]
    #
    # @!attribute pending
    #   <p>The list of information about logs pending to be deployed for the specified broker.</p>
    #
    #   @return [PendingLogs]
    #
    LogsSummary = ::Struct.new(
      :audit,
      :audit_log_group,
      :general,
      :general_log_group,
      :pending,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.audit ||= false
        self.general ||= false
      end
    end

    # <p>Returns information about an error.</p>
    #
    # @!attribute error_attribute
    #   <p>The attribute which caused the error.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The explanation of the error.</p>
    #
    #   @return [String]
    #
    NotFoundException = ::Struct.new(
      :error_attribute,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The list of information about logs to be enabled for the specified broker.</p>
    #
    # @!attribute audit
    #   <p>Enables audit logging. Every user management action made using JMX or the ActiveMQ Web Console is logged.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute general
    #   <p>Enables general logging.</p>
    #
    #   @return [Boolean]
    #
    PendingLogs = ::Struct.new(
      :audit,
      :general,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.audit ||= false
        self.general ||= false
      end
    end

    # @!attribute broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #
    #   @return [String]
    #
    RebootBrokerInput = ::Struct.new(
      :broker_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RebootBrokerOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about the XML element or attribute that was sanitized in the configuration.</p>
    #
    # @!attribute attribute_name
    #   <p>The name of the XML attribute that has been sanitized.</p>
    #
    #   @return [String]
    #
    # @!attribute element_name
    #   <p>The name of the XML element that has been sanitized.</p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>Required. The reason for which the XML elements or attributes were sanitized.</p>
    #
    #   Enum, one of: ["DISALLOWED_ELEMENT_REMOVED", "DISALLOWED_ATTRIBUTE_REMOVED", "INVALID_ATTRIBUTE_VALUE_REMOVED"]
    #
    #   @return [String]
    #
    SanitizationWarning = ::Struct.new(
      :attribute_name,
      :element_name,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SanitizationWarningReason
    #
    module SanitizationWarningReason
      # No documentation available.
      #
      DISALLOWED_ELEMENT_REMOVED = "DISALLOWED_ELEMENT_REMOVED"

      # No documentation available.
      #
      DISALLOWED_ATTRIBUTE_REMOVED = "DISALLOWED_ATTRIBUTE_REMOVED"

      # No documentation available.
      #
      INVALID_ATTRIBUTE_VALUE_REMOVED = "INVALID_ATTRIBUTE_VALUE_REMOVED"
    end

    # <p>Returns information about an error.</p>
    #
    # @!attribute error_attribute
    #   <p>The attribute which caused the error.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The explanation of the error.</p>
    #
    #   @return [String]
    #
    UnauthorizedException = ::Struct.new(
      :error_attribute,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Updates the broker using the specified properties.</p>
    #
    # @!attribute authentication_strategy
    #   <p>Optional. The authentication strategy used to secure the broker. The default is SIMPLE.</p>
    #
    #   Enum, one of: ["SIMPLE", "LDAP"]
    #
    #   @return [String]
    #
    # @!attribute auto_minor_version_upgrade
    #   <p>Enables automatic upgrades to new minor versions for brokers, as new versions are released and supported by Amazon MQ. Automatic upgrades occur during the scheduled maintenance window of the broker or after a manual broker reboot.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration
    #   <p>A list of information about the configuration.</p>
    #
    #   @return [ConfigurationId]
    #
    # @!attribute engine_version
    #   <p>The broker engine version. For a list of supported engine versions, see <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker-engine.html">Supported engines</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute host_instance_type
    #   <p>The broker's host instance type to upgrade to. For a list of supported instance types, see <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker.html broker-instance-types">Broker instance types</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute ldap_server_metadata
    #   <p>Optional. The metadata of the LDAP server used to authenticate and authorize connections to the broker. Does not apply to RabbitMQ brokers.</p>
    #
    #   @return [LdapServerMetadataInput]
    #
    # @!attribute logs
    #   <p>Enables Amazon CloudWatch logging for brokers.</p>
    #
    #   @return [Logs]
    #
    # @!attribute maintenance_window_start_time
    #   <p>The parameters that determine the WeeklyStartTime.</p>
    #
    #   @return [WeeklyStartTime]
    #
    # @!attribute security_groups
    #   <p>The list of security groups (1 minimum, 5 maximum) that authorizes connections to brokers.</p>
    #
    #   @return [Array<String>]
    #
    UpdateBrokerInput = ::Struct.new(
      :authentication_strategy,
      :auto_minor_version_upgrade,
      :broker_id,
      :configuration,
      :engine_version,
      :host_instance_type,
      :ldap_server_metadata,
      :logs,
      :maintenance_window_start_time,
      :security_groups,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.auto_minor_version_upgrade ||= false
      end
    end

    # @!attribute authentication_strategy
    #   <p>Optional. The authentication strategy used to secure the broker. The default is SIMPLE.</p>
    #
    #   Enum, one of: ["SIMPLE", "LDAP"]
    #
    #   @return [String]
    #
    # @!attribute auto_minor_version_upgrade
    #   <p>The new boolean value that specifies whether broker engines automatically upgrade to new minor versions as new versions are released and supported by Amazon MQ.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute broker_id
    #   <p>Required. The unique ID that Amazon MQ generates for the broker.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration
    #   <p>The ID of the updated configuration.</p>
    #
    #   @return [ConfigurationId]
    #
    # @!attribute engine_version
    #   <p>The broker engine version to upgrade to. For a list of supported engine versions, see <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker-engine.html">Supported engines</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute host_instance_type
    #   <p>The broker's host instance type to upgrade to. For a list of supported instance types, see <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker.html broker-instance-types">Broker instance types</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute ldap_server_metadata
    #   <p>Optional. The metadata of the LDAP server used to authenticate and authorize connections to the broker. Does not apply to RabbitMQ brokers.</p>
    #
    #   @return [LdapServerMetadataOutput]
    #
    # @!attribute logs
    #   <p>The list of information about logs to be enabled for the specified broker.</p>
    #
    #   @return [Logs]
    #
    # @!attribute maintenance_window_start_time
    #   <p>The parameters that determine the WeeklyStartTime.</p>
    #
    #   @return [WeeklyStartTime]
    #
    # @!attribute security_groups
    #   <p>The list of security groups (1 minimum, 5 maximum) that authorizes connections to brokers.</p>
    #
    #   @return [Array<String>]
    #
    UpdateBrokerOutput = ::Struct.new(
      :authentication_strategy,
      :auto_minor_version_upgrade,
      :broker_id,
      :configuration,
      :engine_version,
      :host_instance_type,
      :ldap_server_metadata,
      :logs,
      :maintenance_window_start_time,
      :security_groups,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.auto_minor_version_upgrade ||= false
      end
    end

    # <p>Updates the specified configuration.</p>
    #
    # @!attribute configuration_id
    #   <p>The unique ID that Amazon MQ generates for the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute data
    #   <p>Required. The base64-encoded XML configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the configuration.</p>
    #
    #   @return [String]
    #
    UpdateConfigurationInput = ::Struct.new(
      :configuration_id,
      :data,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>Required. The Amazon Resource Name (ARN) of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute created
    #   <p>Required. The date and time of the configuration.</p>
    #
    #   @return [Time]
    #
    # @!attribute id
    #   <p>Required. The unique ID that Amazon MQ generates for the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_revision
    #   <p>The latest revision of the configuration.</p>
    #
    #   @return [ConfigurationRevision]
    #
    # @!attribute name
    #   <p>Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.</p>
    #
    #   @return [String]
    #
    # @!attribute warnings
    #   <p>The list of the first 20 warnings about the configuration XML elements or attributes that were sanitized.</p>
    #
    #   @return [Array<SanitizationWarning>]
    #
    UpdateConfigurationOutput = ::Struct.new(
      :arn,
      :created,
      :id,
      :latest_revision,
      :name,
      :warnings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Updates the information for an ActiveMQ user.</p>
    #
    # @!attribute broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #
    #   @return [String]
    #
    # @!attribute console_access
    #   <p>Enables access to the the ActiveMQ Web Console for the ActiveMQ user.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute groups
    #   <p>The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute password
    #   <p>The password of the user. This value must be at least 12 characters long, must contain at least 4 unique characters, and must not contain commas, colons, or equal signs (,:=).</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>
    #
    #   @return [String]
    #
    UpdateUserInput = ::Struct.new(
      :broker_id,
      :console_access,
      :groups,
      :password,
      :username,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.console_access ||= false
      end
    end

    UpdateUserOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A user associated with the broker. For RabbitMQ brokers, one and only one administrative user is accepted and created when a broker is first provisioned. All subsequent broker users are created by making RabbitMQ API calls directly to brokers or via the RabbitMQ web console.</p>
    #
    # @!attribute console_access
    #   <p>Enables access to the ActiveMQ Web Console for the ActiveMQ user. Does not apply to RabbitMQ brokers.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute groups
    #   <p>The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long. Does not apply to RabbitMQ brokers.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute password
    #   <p>Required. The password of the user. This value must be at least 12 characters long, must contain at least 4 unique characters, and must not contain commas, colons, or equal signs (,:=).</p>
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>important><title>Amazon MQ for ActiveMQ</title> <para>For ActiveMQ brokers, this value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>/important> <important><title>Amazon MQ for RabbitMQ</title> <p>For RabbitMQ brokers, this value can contain only alphanumeric characters, dashes, periods, underscores (- . _). This value must not contain a tilde (~) character. Amazon MQ prohibts using guest as a valid usename. This value must be 2-100 characters long.</p></important></para>
    #
    #   @return [String]
    #
    User = ::Struct.new(
      :console_access,
      :groups,
      :password,
      :username,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.console_access ||= false
      end
    end

    # <p>Returns information about the status of the changes pending for the ActiveMQ user.</p>
    #
    # @!attribute console_access
    #   <p>Enables access to the the ActiveMQ Web Console for the ActiveMQ user.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute groups
    #   <p>The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute pending_change
    #   <p>Required. The type of change pending for the ActiveMQ user.</p>
    #
    #   Enum, one of: ["CREATE", "UPDATE", "DELETE"]
    #
    #   @return [String]
    #
    UserPendingChanges = ::Struct.new(
      :console_access,
      :groups,
      :pending_change,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.console_access ||= false
      end
    end

    # <p>Returns a list of all broker users. Does not apply to RabbitMQ brokers.</p>
    #
    # @!attribute pending_change
    #   <p>The type of change pending for the broker user.</p>
    #
    #   Enum, one of: ["CREATE", "UPDATE", "DELETE"]
    #
    #   @return [String]
    #
    # @!attribute username
    #   <p>Required. The username of the broker user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>
    #
    #   @return [String]
    #
    UserSummary = ::Struct.new(
      :pending_change,
      :username,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The scheduled time period relative to UTC during which Amazon MQ begins to apply pending updates or patches to the broker.</p>
    #
    # @!attribute day_of_week
    #   <p>Required. The day of the week.</p>
    #
    #   Enum, one of: ["MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
    #
    #   @return [String]
    #
    # @!attribute time_of_day
    #   <p>Required. The time, in 24-hour format.</p>
    #
    #   @return [String]
    #
    # @!attribute time_zone
    #   <p>The time zone, UTC by default, in either the Country/City format, or the UTC offset format.</p>
    #
    #   @return [String]
    #
    WeeklyStartTime = ::Struct.new(
      :day_of_week,
      :time_of_day,
      :time_zone,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
