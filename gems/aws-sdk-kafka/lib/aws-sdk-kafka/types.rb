# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Kafka
  module Types

    # <p>Returns information about an error.</p>
    #
    # @!attribute invalid_parameter
    #   <p>The parameter that caused the error.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The description of the error.</p>
    #
    #   @return [String]
    #
    BadRequestException = ::Struct.new(
      :invalid_parameter,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Associates sasl scram secrets to cluster.</p>
    #
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_arn_list
    #   <p>List of AWS Secrets Manager secret ARNs.</p>
    #
    #   @return [Array<String>]
    #
    BatchAssociateScramSecretInput = ::Struct.new(
      :cluster_arn,
      :secret_arn_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute unprocessed_scram_secrets
    #   <p>List of errors when associating secrets to cluster.</p>
    #
    #   @return [Array<UnprocessedScramSecret>]
    #
    BatchAssociateScramSecretOutput = ::Struct.new(
      :cluster_arn,
      :unprocessed_scram_secrets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Disassociates sasl scram secrets to cluster.</p>
    #
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_arn_list
    #   <p>List of AWS Secrets Manager secret ARNs.</p>
    #
    #   @return [Array<String>]
    #
    BatchDisassociateScramSecretInput = ::Struct.new(
      :cluster_arn,
      :secret_arn_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute unprocessed_scram_secrets
    #   <p>List of errors when disassociating secrets to cluster.</p>
    #
    #   @return [Array<UnprocessedScramSecret>]
    #
    BatchDisassociateScramSecretOutput = ::Struct.new(
      :cluster_arn,
      :unprocessed_scram_secrets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BrokerAZDistribution
    #
    module BrokerAZDistribution
      # No documentation available.
      #
      DEFAULT = "DEFAULT"
    end

    # <p>Specifies the EBS volume upgrade information. The broker identifier must be set to the keyword ALL. This means the changes apply to all the brokers in the cluster.</p>
    #
    # @!attribute kafka_broker_node_id
    #   <p>The ID of the broker to update.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioned_throughput
    #   EBS volume provisioned throughput information.
    #
    #   @return [ProvisionedThroughput]
    #
    # @!attribute volume_size_gb
    #   <p>Size of the EBS volume to update.</p>
    #
    #   @return [Integer]
    #
    BrokerEBSVolumeInfo = ::Struct.new(
      :kafka_broker_node_id,
      :provisioned_throughput,
      :volume_size_gb,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.volume_size_gb ||= 0
      end
    end

    # @!attribute cloud_watch_logs
    #
    #   @return [CloudWatchLogs]
    #
    # @!attribute firehose
    #
    #   @return [Firehose]
    #
    # @!attribute s3
    #
    #   @return [S3]
    #
    BrokerLogs = ::Struct.new(
      :cloud_watch_logs,
      :firehose,
      :s3,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the setup to be used for Apache Kafka broker nodes in the cluster.</p>
    #
    # @!attribute broker_az_distribution
    #   <p>The distribution of broker nodes across Availability Zones. This is an optional parameter. If you don't specify it, Amazon MSK gives it the value DEFAULT. You can also explicitly set this parameter to the value DEFAULT. No other values are currently allowed.</p>
    #            <p>Amazon MSK distributes the broker nodes evenly across the Availability Zones that correspond to the subnets you provide when you create the cluster.</p>
    #
    #   Enum, one of: ["DEFAULT"]
    #
    #   @return [String]
    #
    # @!attribute client_subnets
    #   <p>The list of subnets to connect to in the client virtual private cloud (VPC). AWS creates elastic network interfaces inside these subnets. Client applications use elastic network interfaces to produce and consume data. Client subnets can't be in Availability Zone us-east-1e.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute instance_type
    #   <p>The type of Amazon EC2 instances to use for Apache Kafka brokers. The following instance types are allowed: kafka.m5.large, kafka.m5.xlarge, kafka.m5.2xlarge,
    #   kafka.m5.4xlarge, kafka.m5.12xlarge, and kafka.m5.24xlarge.</p>
    #
    #   @return [String]
    #
    # @!attribute security_groups
    #   <p>The AWS security groups to associate with the elastic network interfaces in order to specify who can connect to and communicate with the Amazon MSK cluster. If you don't specify a security group, Amazon MSK uses the default security group associated with the VPC.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute storage_info
    #   <p>Contains information about storage volumes attached to MSK broker nodes.</p>
    #
    #   @return [StorageInfo]
    #
    # @!attribute connectivity_info
    #   <p>Information about the broker access configuration.</p>
    #
    #   @return [ConnectivityInfo]
    #
    BrokerNodeGroupInfo = ::Struct.new(
      :broker_az_distribution,
      :client_subnets,
      :instance_type,
      :security_groups,
      :storage_info,
      :connectivity_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>BrokerNodeInfo</p>
    #
    # @!attribute attached_eni_id
    #   <p>The attached elastic network interface of the broker.</p>
    #
    #   @return [String]
    #
    # @!attribute broker_id
    #   <p>The ID of the broker.</p>
    #
    #   @return [Float]
    #
    # @!attribute client_subnet
    #   <p>The client subnet to which this broker node belongs.</p>
    #
    #   @return [String]
    #
    # @!attribute client_vpc_ip_address
    #   <p>The virtual private cloud (VPC) of the client.</p>
    #
    #   @return [String]
    #
    # @!attribute current_broker_software_info
    #   <p>Information about the version of software currently deployed on the Apache Kafka brokers in the cluster.</p>
    #
    #   @return [BrokerSoftwareInfo]
    #
    # @!attribute endpoints
    #   <p>Endpoints for accessing the broker.</p>
    #
    #   @return [Array<String>]
    #
    BrokerNodeInfo = ::Struct.new(
      :attached_eni_id,
      :broker_id,
      :client_subnet,
      :client_vpc_ip_address,
      :current_broker_software_info,
      :endpoints,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.broker_id ||= 0
      end
    end

    # <p>Information about the current software installed on the cluster.</p>
    #
    # @!attribute configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the configuration used for the cluster. This field isn't visible in this preview release.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_revision
    #   <p>The revision of the configuration to use. This field isn't visible in this preview release.</p>
    #
    #   @return [Integer]
    #
    # @!attribute kafka_version
    #   <p>The version of Apache Kafka.</p>
    #
    #   @return [String]
    #
    BrokerSoftwareInfo = ::Struct.new(
      :configuration_arn,
      :configuration_revision,
      :kafka_version,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.configuration_revision ||= 0
      end
    end

    # <p>Includes all client authentication information.</p>
    #
    # @!attribute sasl
    #   <p>Details for ClientAuthentication using SASL.</p>
    #
    #   @return [Sasl]
    #
    # @!attribute tls
    #   <p>Details for ClientAuthentication using TLS.</p>
    #
    #   @return [Tls]
    #
    # @!attribute unauthenticated
    #   <p>Contains information about unauthenticated traffic to the cluster.</p>
    #
    #   @return [Unauthenticated]
    #
    ClientAuthentication = ::Struct.new(
      :sasl,
      :tls,
      :unauthenticated,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ClientBroker
    #
    module ClientBroker
      # No documentation available.
      #
      TLS = "TLS"

      # No documentation available.
      #
      TLS_PLAINTEXT = "TLS_PLAINTEXT"

      # No documentation available.
      #
      PLAINTEXT = "PLAINTEXT"
    end

    # @!attribute enabled
    #
    #   @return [Boolean]
    #
    # @!attribute log_group
    #
    #   @return [String]
    #
    CloudWatchLogs = ::Struct.new(
      :enabled,
      :log_group,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled ||= false
      end
    end

    # <p>Returns information about a cluster.</p>
    #
    # @!attribute active_operation_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies a cluster operation.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_type
    #   <p>Cluster Type.</p>
    #
    #   Enum, one of: ["PROVISIONED", "SERVERLESS"]
    #
    #   @return [String]
    #
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_name
    #   <p>The name of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time when the cluster was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute current_version
    #   <p>The current version of the MSK cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the cluster. The possible states are ACTIVE, CREATING, DELETING, FAILED, HEALING, MAINTENANCE, REBOOTING_BROKER, and UPDATING.</p>
    #
    #   Enum, one of: ["ACTIVE", "CREATING", "DELETING", "FAILED", "HEALING", "MAINTENANCE", "REBOOTING_BROKER", "UPDATING"]
    #
    #   @return [String]
    #
    # @!attribute state_info
    #   <p>State Info for the Amazon MSK cluster.</p>
    #
    #   @return [StateInfo]
    #
    # @!attribute tags
    #   <p>Tags attached to the cluster.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute provisioned
    #   <p>Information about the provisioned cluster.</p>
    #
    #   @return [Provisioned]
    #
    # @!attribute serverless
    #   <p>Information about the serverless cluster.</p>
    #
    #   @return [Serverless]
    #
    Cluster = ::Struct.new(
      :active_operation_arn,
      :cluster_type,
      :cluster_arn,
      :cluster_name,
      :creation_time,
      :current_version,
      :state,
      :state_info,
      :tags,
      :provisioned,
      :serverless,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about a cluster.</p>
    #
    # @!attribute active_operation_arn
    #   <p>Arn of active cluster operation.</p>
    #
    #   @return [String]
    #
    # @!attribute broker_node_group_info
    #   <p>Information about the broker nodes.</p>
    #
    #   @return [BrokerNodeGroupInfo]
    #
    # @!attribute client_authentication
    #   <p>Includes all client authentication information.</p>
    #
    #   @return [ClientAuthentication]
    #
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_name
    #   <p>The name of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time when the cluster was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute current_broker_software_info
    #   <p>Information about the version of software currently deployed on the Apache Kafka brokers in the cluster.</p>
    #
    #   @return [BrokerSoftwareInfo]
    #
    # @!attribute current_version
    #   <p>The current version of the MSK cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_info
    #   <p>Includes all encryption-related information.</p>
    #
    #   @return [EncryptionInfo]
    #
    # @!attribute enhanced_monitoring
    #   <p>Specifies which metrics are gathered for the MSK cluster. This property has the following possible values: DEFAULT, PER_BROKER, PER_TOPIC_PER_BROKER, and PER_TOPIC_PER_PARTITION. For a list of the metrics associated with each of these levels of monitoring, see <a href="https://docs.aws.amazon.com/msk/latest/developerguide/monitoring.html">Monitoring</a>.</p>
    #
    #   Enum, one of: ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"]
    #
    #   @return [String]
    #
    # @!attribute open_monitoring
    #   <p>Settings for open monitoring using Prometheus.</p>
    #
    #   @return [OpenMonitoring]
    #
    # @!attribute logging_info
    #
    #   @return [LoggingInfo]
    #
    # @!attribute number_of_broker_nodes
    #   <p>The number of broker nodes in the cluster.</p>
    #
    #   @return [Integer]
    #
    # @!attribute state
    #   <p>The state of the cluster. The possible states are ACTIVE, CREATING, DELETING, FAILED, HEALING, MAINTENANCE, REBOOTING_BROKER, and UPDATING.</p>
    #
    #   Enum, one of: ["ACTIVE", "CREATING", "DELETING", "FAILED", "HEALING", "MAINTENANCE", "REBOOTING_BROKER", "UPDATING"]
    #
    #   @return [String]
    #
    # @!attribute state_info
    #
    #   @return [StateInfo]
    #
    # @!attribute tags
    #   <p>Tags attached to the cluster.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute zookeeper_connect_string
    #   <p>The connection string to use to connect to the Apache ZooKeeper cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute zookeeper_connect_string_tls
    #   <p>The connection string to use to connect to zookeeper cluster on Tls port.</p>
    #
    #   @return [String]
    #
    ClusterInfo = ::Struct.new(
      :active_operation_arn,
      :broker_node_group_info,
      :client_authentication,
      :cluster_arn,
      :cluster_name,
      :creation_time,
      :current_broker_software_info,
      :current_version,
      :encryption_info,
      :enhanced_monitoring,
      :open_monitoring,
      :logging_info,
      :number_of_broker_nodes,
      :state,
      :state_info,
      :tags,
      :zookeeper_connect_string,
      :zookeeper_connect_string_tls,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.number_of_broker_nodes ||= 0
      end
    end

    # <p>Returns information about a cluster operation.</p>
    #
    # @!attribute client_request_id
    #   <p>The ID of the API request that triggered this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_arn
    #   <p>ARN of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time that the operation was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The time at which the operation finished.</p>
    #
    #   @return [Time]
    #
    # @!attribute error_info
    #   <p>Describes the error if the operation fails.</p>
    #
    #   @return [ErrorInfo]
    #
    # @!attribute operation_arn
    #   <p>ARN of the cluster operation.</p>
    #
    #   @return [String]
    #
    # @!attribute operation_state
    #   <p>State of the cluster operation.</p>
    #
    #   @return [String]
    #
    # @!attribute operation_steps
    #   <p>Steps completed during the operation.</p>
    #
    #   @return [Array<ClusterOperationStep>]
    #
    # @!attribute operation_type
    #   <p>Type of the cluster operation.</p>
    #
    #   @return [String]
    #
    # @!attribute source_cluster_info
    #   <p>Information about cluster attributes before a cluster is updated.</p>
    #
    #   @return [MutableClusterInfo]
    #
    # @!attribute target_cluster_info
    #   <p>Information about cluster attributes after a cluster is updated.</p>
    #
    #   @return [MutableClusterInfo]
    #
    ClusterOperationInfo = ::Struct.new(
      :client_request_id,
      :cluster_arn,
      :creation_time,
      :end_time,
      :error_info,
      :operation_arn,
      :operation_state,
      :operation_steps,
      :operation_type,
      :source_cluster_info,
      :target_cluster_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Step taken during a cluster operation.</p>
    #
    # @!attribute step_info
    #   <p>Information about the step and its status.</p>
    #
    #   @return [ClusterOperationStepInfo]
    #
    # @!attribute step_name
    #   <p>The name of the step.</p>
    #
    #   @return [String]
    #
    ClusterOperationStep = ::Struct.new(
      :step_info,
      :step_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>State information about the operation step.</p>
    #
    # @!attribute step_status
    #   <p>The steps current status.</p>
    #
    #   @return [String]
    #
    ClusterOperationStepInfo = ::Struct.new(
      :step_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ClusterState
    #
    module ClusterState
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      HEALING = "HEALING"

      # No documentation available.
      #
      MAINTENANCE = "MAINTENANCE"

      # No documentation available.
      #
      REBOOTING_BROKER = "REBOOTING_BROKER"

      # No documentation available.
      #
      UPDATING = "UPDATING"
    end

    # Includes enum constants for ClusterType
    #
    module ClusterType
      # No documentation available.
      #
      PROVISIONED = "PROVISIONED"

      # No documentation available.
      #
      SERVERLESS = "SERVERLESS"
    end

    # <p>Contains source Apache Kafka versions and compatible target Apache Kafka versions.</p>
    #
    # @!attribute source_version
    #   <p>An Apache Kafka version.</p>
    #
    #   @return [String]
    #
    # @!attribute target_versions
    #   <p>A list of Apache Kafka versions.</p>
    #
    #   @return [Array<String>]
    #
    CompatibleKafkaVersion = ::Struct.new(
      :source_version,
      :target_versions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents an MSK Configuration.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time when the configuration was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>The description of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute kafka_versions
    #   <p>An array of the versions of Apache Kafka with which you can use this MSK configuration. You can use this configuration for an MSK cluster only if the Apache Kafka version specified for the cluster appears in this array.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute latest_revision
    #   <p>Latest revision of the configuration.</p>
    #
    #   @return [ConfigurationRevision]
    #
    # @!attribute name
    #   <p>The name of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the configuration. The possible states are ACTIVE, DELETING, and DELETE_FAILED. </p>
    #
    #   Enum, one of: ["ACTIVE", "DELETING", "DELETE_FAILED"]
    #
    #   @return [String]
    #
    Configuration = ::Struct.new(
      :arn,
      :creation_time,
      :description,
      :kafka_versions,
      :latest_revision,
      :name,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the configuration to use for the brokers.</p>
    #
    # @!attribute arn
    #   <p>ARN of the configuration to use.</p>
    #
    #   @return [String]
    #
    # @!attribute revision
    #   <p>The revision of the configuration to use.</p>
    #
    #   @return [Integer]
    #
    ConfigurationInfo = ::Struct.new(
      :arn,
      :revision,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.revision ||= 0
      end
    end

    # <p>Describes a configuration revision.</p>
    #
    # @!attribute creation_time
    #   <p>The time when the configuration revision was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>The description of the configuration revision.</p>
    #
    #   @return [String]
    #
    # @!attribute revision
    #   <p>The revision number.</p>
    #
    #   @return [Integer]
    #
    ConfigurationRevision = ::Struct.new(
      :creation_time,
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

    # Includes enum constants for ConfigurationState
    #
    module ConfigurationState
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      DELETE_FAILED = "DELETE_FAILED"
    end

    # <p>Returns information about an error.</p>
    #
    # @!attribute invalid_parameter
    #   <p>The parameter that caused the error.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The description of the error.</p>
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :invalid_parameter,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the broker access configuration.</p>
    #
    # @!attribute public_access
    #   <p>Public access control for brokers.</p>
    #
    #   @return [PublicAccess]
    #
    ConnectivityInfo = ::Struct.new(
      :public_access,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute broker_node_group_info
    #   <p>Information about the broker nodes in the cluster.</p>
    #
    #   @return [BrokerNodeGroupInfo]
    #
    # @!attribute client_authentication
    #   <p>Includes all client authentication related information.</p>
    #
    #   @return [ClientAuthentication]
    #
    # @!attribute cluster_name
    #   <p>The name of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_info
    #   <p>Represents the configuration that you want MSK to use for the brokers in a cluster.</p>
    #
    #   @return [ConfigurationInfo]
    #
    # @!attribute encryption_info
    #   <p>Includes all encryption-related information.</p>
    #
    #   @return [EncryptionInfo]
    #
    # @!attribute enhanced_monitoring
    #   <p>Specifies the level of monitoring for the MSK cluster. The possible values are DEFAULT, PER_BROKER, PER_TOPIC_PER_BROKER, and PER_TOPIC_PER_PARTITION.</p>
    #
    #   Enum, one of: ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"]
    #
    #   @return [String]
    #
    # @!attribute open_monitoring
    #   <p>The settings for open monitoring.</p>
    #
    #   @return [OpenMonitoringInfo]
    #
    # @!attribute kafka_version
    #   <p>The version of Apache Kafka.</p>
    #
    #   @return [String]
    #
    # @!attribute logging_info
    #
    #   @return [LoggingInfo]
    #
    # @!attribute number_of_broker_nodes
    #   <p>The number of broker nodes in the cluster.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tags
    #   <p>Create tags when creating the cluster.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateClusterInput = ::Struct.new(
      :broker_node_group_info,
      :client_authentication,
      :cluster_name,
      :configuration_info,
      :encryption_info,
      :enhanced_monitoring,
      :open_monitoring,
      :kafka_version,
      :logging_info,
      :number_of_broker_nodes,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.number_of_broker_nodes ||= 0
      end
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_name
    #   <p>The name of the MSK cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the cluster. The possible states are ACTIVE, CREATING, DELETING, FAILED, HEALING, MAINTENANCE, REBOOTING_BROKER, and UPDATING.</p>
    #
    #   Enum, one of: ["ACTIVE", "CREATING", "DELETING", "FAILED", "HEALING", "MAINTENANCE", "REBOOTING_BROKER", "UPDATING"]
    #
    #   @return [String]
    #
    CreateClusterOutput = ::Struct.new(
      :cluster_arn,
      :cluster_name,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_name
    #   <p>The name of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A map of tags that you want the cluster to have.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute provisioned
    #   <p>Information about the provisioned cluster.</p>
    #
    #   @return [ProvisionedRequest]
    #
    # @!attribute serverless
    #   <p>Information about the serverless cluster.</p>
    #
    #   @return [ServerlessRequest]
    #
    CreateClusterV2Input = ::Struct.new(
      :cluster_name,
      :tags,
      :provisioned,
      :serverless,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_name
    #   <p>The name of the MSK cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the cluster. The possible states are ACTIVE, CREATING, DELETING, FAILED, HEALING, MAINTENANCE, REBOOTING_BROKER, and UPDATING.</p>
    #
    #   Enum, one of: ["ACTIVE", "CREATING", "DELETING", "FAILED", "HEALING", "MAINTENANCE", "REBOOTING_BROKER", "UPDATING"]
    #
    #   @return [String]
    #
    # @!attribute cluster_type
    #   <p>The type of the cluster. The possible states are PROVISIONED or SERVERLESS.</p>
    #
    #   Enum, one of: ["PROVISIONED", "SERVERLESS"]
    #
    #   @return [String]
    #
    CreateClusterV2Output = ::Struct.new(
      :cluster_arn,
      :cluster_name,
      :state,
      :cluster_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute description
    #   <p>The description of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute kafka_versions
    #   <p>The versions of Apache Kafka with which you can use this MSK configuration.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute name
    #   <p>The name of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute server_properties
    #   <p>Contents of the <filename>server.properties</filename> file. When using the API, you must ensure that the contents of the file are base64 encoded.
    #                  When using the AWS Management Console, the SDK, or the AWS CLI, the contents of <filename>server.properties</filename> can be in plaintext.</p>
    #
    #   @return [String]
    #
    CreateConfigurationInput = ::Struct.new(
      :description,
      :kafka_versions,
      :name,
      :server_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time when the configuration was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute latest_revision
    #   <p>Latest revision of the configuration.</p>
    #
    #   @return [ConfigurationRevision]
    #
    # @!attribute name
    #   <p>The name of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the configuration. The possible states are ACTIVE, DELETING, and DELETE_FAILED. </p>
    #
    #   Enum, one of: ["ACTIVE", "DELETING", "DELETE_FAILED"]
    #
    #   @return [String]
    #
    CreateConfigurationOutput = ::Struct.new(
      :arn,
      :creation_time,
      :latest_revision,
      :name,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute current_version
    #   <p>The current version of the MSK cluster.</p>
    #
    #   @return [String]
    #
    DeleteClusterInput = ::Struct.new(
      :cluster_arn,
      :current_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the cluster. The possible states are ACTIVE, CREATING, DELETING, FAILED, HEALING, MAINTENANCE, REBOOTING_BROKER, and UPDATING.</p>
    #
    #   Enum, one of: ["ACTIVE", "CREATING", "DELETING", "FAILED", "HEALING", "MAINTENANCE", "REBOOTING_BROKER", "UPDATING"]
    #
    #   @return [String]
    #
    DeleteClusterOutput = ::Struct.new(
      :cluster_arn,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies an MSK configuration.</p>
    #
    #   @return [String]
    #
    DeleteConfigurationInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies an MSK configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the configuration. The possible states are ACTIVE, DELETING, and DELETE_FAILED. </p>
    #
    #   Enum, one of: ["ACTIVE", "DELETING", "DELETE_FAILED"]
    #
    #   @return [String]
    #
    DeleteConfigurationOutput = ::Struct.new(
      :arn,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #
    #   @return [String]
    #
    DescribeClusterInput = ::Struct.new(
      :cluster_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_operation_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the MSK cluster operation.</p>
    #
    #   @return [String]
    #
    DescribeClusterOperationInput = ::Struct.new(
      :cluster_operation_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_operation_info
    #   <p>Cluster operation information</p>
    #
    #   @return [ClusterOperationInfo]
    #
    DescribeClusterOperationOutput = ::Struct.new(
      :cluster_operation_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_info
    #   <p>The cluster information.</p>
    #
    #   @return [ClusterInfo]
    #
    DescribeClusterOutput = ::Struct.new(
      :cluster_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #
    #   @return [String]
    #
    DescribeClusterV2Input = ::Struct.new(
      :cluster_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_info
    #   <p>The cluster information.</p>
    #
    #   @return [Cluster]
    #
    DescribeClusterV2Output = ::Struct.new(
      :cluster_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies an MSK configuration and all of its revisions.</p>
    #
    #   @return [String]
    #
    DescribeConfigurationInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time when the configuration was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>The description of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute kafka_versions
    #   <p>The versions of Apache Kafka with which you can use this MSK configuration.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute latest_revision
    #   <p>Latest revision of the configuration.</p>
    #
    #   @return [ConfigurationRevision]
    #
    # @!attribute name
    #   <p>The name of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the configuration. The possible states are ACTIVE, DELETING, and DELETE_FAILED. </p>
    #
    #   Enum, one of: ["ACTIVE", "DELETING", "DELETE_FAILED"]
    #
    #   @return [String]
    #
    DescribeConfigurationOutput = ::Struct.new(
      :arn,
      :creation_time,
      :description,
      :kafka_versions,
      :latest_revision,
      :name,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies an MSK configuration and all of its revisions.</p>
    #
    #   @return [String]
    #
    # @!attribute revision
    #   <p>A string that uniquely identifies a revision of an MSK configuration.</p>
    #
    #   @return [Integer]
    #
    DescribeConfigurationRevisionInput = ::Struct.new(
      :arn,
      :revision,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.revision ||= 0
      end
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time when the configuration was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>The description of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute revision
    #   <p>The revision number.</p>
    #
    #   @return [Integer]
    #
    # @!attribute server_properties
    #   <p>Contents of the <filename>server.properties</filename> file. When using the API, you must ensure that the contents of the file are base64 encoded.
    #                  When using the AWS Management Console, the SDK, or the AWS CLI, the contents of <filename>server.properties</filename> can be in plaintext.</p>
    #
    #   @return [String]
    #
    DescribeConfigurationRevisionOutput = ::Struct.new(
      :arn,
      :creation_time,
      :description,
      :revision,
      :server_properties,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.revision ||= 0
      end
    end

    # <p>Contains information about the EBS storage volumes attached to Apache Kafka broker nodes.</p>
    #
    # @!attribute provisioned_throughput
    #   EBS volume provisioned throughput information.
    #
    #   @return [ProvisionedThroughput]
    #
    # @!attribute volume_size
    #   <p>The size in GiB of the EBS volume for the data drive on each broker node.</p>
    #
    #   @return [Integer]
    #
    EBSStorageInfo = ::Struct.new(
      :provisioned_throughput,
      :volume_size,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.volume_size ||= 0
      end
    end

    # <p>The data-volume encryption details.</p>
    #
    # @!attribute data_volume_kms_key_id
    #   <p>The ARN of the AWS KMS key for encrypting data at rest. If you don't specify a KMS key, MSK creates one for you and uses it.</p>
    #
    #   @return [String]
    #
    EncryptionAtRest = ::Struct.new(
      :data_volume_kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The settings for encrypting data in transit.</p>
    #
    # @!attribute client_broker
    #   <p>Indicates the encryption setting for data in transit between clients and brokers. The following are the possible values.</p>
    #               <p>
    #                  TLS means that client-broker communication is enabled with TLS only.</p>
    #               <p>
    #                  TLS_PLAINTEXT means that client-broker communication is enabled for both TLS-encrypted, as well as plaintext data.</p>
    #               <p>
    #                  PLAINTEXT means that client-broker communication is enabled in plaintext only.</p>
    #               <p>The default value is TLS_PLAINTEXT.</p>
    #
    #   Enum, one of: ["TLS", "TLS_PLAINTEXT", "PLAINTEXT"]
    #
    #   @return [String]
    #
    # @!attribute in_cluster
    #   <p>When set to true, it indicates that data communication among the broker nodes of the cluster is encrypted. When set to false, the communication happens in plaintext.</p>
    #               <p>The default value is true.</p>
    #
    #   @return [Boolean]
    #
    EncryptionInTransit = ::Struct.new(
      :client_broker,
      :in_cluster,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.in_cluster ||= false
      end
    end

    # <p>Includes encryption-related information, such as the AWS KMS key used for encrypting data at rest and whether you want MSK to encrypt your data in transit.</p>
    #
    # @!attribute encryption_at_rest
    #   <p>The data-volume encryption details.</p>
    #
    #   @return [EncryptionAtRest]
    #
    # @!attribute encryption_in_transit
    #   <p>The details for encryption in transit.</p>
    #
    #   @return [EncryptionInTransit]
    #
    EncryptionInfo = ::Struct.new(
      :encryption_at_rest,
      :encryption_in_transit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EnhancedMonitoring
    #
    module EnhancedMonitoring
      # No documentation available.
      #
      DEFAULT = "DEFAULT"

      # No documentation available.
      #
      PER_BROKER = "PER_BROKER"

      # No documentation available.
      #
      PER_TOPIC_PER_BROKER = "PER_TOPIC_PER_BROKER"

      # No documentation available.
      #
      PER_TOPIC_PER_PARTITION = "PER_TOPIC_PER_PARTITION"
    end

    # <p>Returns information about an error state of the cluster.</p>
    #
    # @!attribute error_code
    #   <p>A number describing the error programmatically.</p>
    #
    #   @return [String]
    #
    # @!attribute error_string
    #   <p>An optional field to provide more details about the error.</p>
    #
    #   @return [String]
    #
    ErrorInfo = ::Struct.new(
      :error_code,
      :error_string,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute delivery_stream
    #
    #   @return [String]
    #
    # @!attribute enabled
    #
    #   @return [Boolean]
    #
    Firehose = ::Struct.new(
      :delivery_stream,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled ||= false
      end
    end

    # <p>Returns information about an error.</p>
    #
    # @!attribute invalid_parameter
    #   <p>The parameter that caused the error.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The description of the error.</p>
    #
    #   @return [String]
    #
    ForbiddenException = ::Struct.new(
      :invalid_parameter,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #
    #   @return [String]
    #
    GetBootstrapBrokersInput = ::Struct.new(
      :cluster_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bootstrap_broker_string
    #   <p>A string containing one or more hostname:port pairs.</p>
    #
    #   @return [String]
    #
    # @!attribute bootstrap_broker_string_tls
    #   <p>A string containing one or more DNS names (or IP) and TLS port pairs.</p>
    #
    #   @return [String]
    #
    # @!attribute bootstrap_broker_string_sasl_scram
    #   <p>A string containing one or more DNS names (or IP) and Sasl Scram port pairs.</p>
    #
    #   @return [String]
    #
    # @!attribute bootstrap_broker_string_sasl_iam
    #   <p>A string that contains one or more DNS names (or IP addresses) and SASL IAM port pairs.</p>
    #
    #   @return [String]
    #
    # @!attribute bootstrap_broker_string_public_tls
    #   <p>A string containing one or more DNS names (or IP) and TLS port pairs.</p>
    #
    #   @return [String]
    #
    # @!attribute bootstrap_broker_string_public_sasl_scram
    #   <p>A string containing one or more DNS names (or IP) and Sasl Scram port pairs.</p>
    #
    #   @return [String]
    #
    # @!attribute bootstrap_broker_string_public_sasl_iam
    #   <p>A string that contains one or more DNS names (or IP addresses) and SASL IAM port pairs.</p>
    #
    #   @return [String]
    #
    GetBootstrapBrokersOutput = ::Struct.new(
      :bootstrap_broker_string,
      :bootstrap_broker_string_tls,
      :bootstrap_broker_string_sasl_scram,
      :bootstrap_broker_string_sasl_iam,
      :bootstrap_broker_string_public_tls,
      :bootstrap_broker_string_public_sasl_scram,
      :bootstrap_broker_string_public_sasl_iam,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster check.</p>
    #
    #   @return [String]
    #
    GetCompatibleKafkaVersionsInput = ::Struct.new(
      :cluster_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute compatible_kafka_versions
    #   <p>A list of CompatibleKafkaVersion objects.</p>
    #
    #   @return [Array<CompatibleKafkaVersion>]
    #
    GetCompatibleKafkaVersionsOutput = ::Struct.new(
      :compatible_kafka_versions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details for IAM access control.</p>
    #
    # @!attribute enabled
    #   <p>Indicates whether IAM access control is enabled.</p>
    #
    #   @return [Boolean]
    #
    Iam = ::Struct.new(
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled ||= false
      end
    end

    # <p>Returns information about an error.</p>
    #
    # @!attribute invalid_parameter
    #   <p>The parameter that caused the error.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The description of the error.</p>
    #
    #   @return [String]
    #
    InternalServerErrorException = ::Struct.new(
      :invalid_parameter,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates whether you want to turn on or turn off the JMX Exporter.</p>
    #
    # @!attribute enabled_in_broker
    #   <p>Indicates whether you want to turn on or turn off the JMX Exporter.</p>
    #
    #   @return [Boolean]
    #
    JmxExporter = ::Struct.new(
      :enabled_in_broker,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled_in_broker ||= false
      end
    end

    # <p>Indicates whether you want to turn on or turn off the JMX Exporter.</p>
    #
    # @!attribute enabled_in_broker
    #   <p>Indicates whether you want to turn on or turn off the JMX Exporter.</p>
    #
    #   @return [Boolean]
    #
    JmxExporterInfo = ::Struct.new(
      :enabled_in_broker,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled_in_broker ||= false
      end
    end

    # @!attribute version
    #
    #   @return [String]
    #
    # @!attribute status
    #   Enum, one of: ["ACTIVE", "DEPRECATED"]
    #
    #   @return [String]
    #
    KafkaVersion = ::Struct.new(
      :version,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for KafkaVersionStatus
    #
    module KafkaVersionStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DEPRECATED = "DEPRECATED"
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response.
    #               To get the next batch, provide this token in your next request.</p>
    #
    #   @return [String]
    #
    ListClusterOperationsInput = ::Struct.new(
      :cluster_arn,
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

    # @!attribute cluster_operation_info_list
    #   <p>An array of cluster operation information objects.</p>
    #
    #   @return [Array<ClusterOperationInfo>]
    #
    # @!attribute next_token
    #   <p>If the response of ListClusterOperations is truncated, it returns a NextToken in the response. This Nexttoken should be sent in the subsequent request to ListClusterOperations.</p>
    #
    #   @return [String]
    #
    ListClusterOperationsOutput = ::Struct.new(
      :cluster_operation_info_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_name_filter
    #   <p>Specify a prefix of the name of the clusters that you want to list. The service lists all the clusters whose names start with this prefix.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response.
    #               To get the next batch, provide this token in your next request.</p>
    #
    #   @return [String]
    #
    ListClustersInput = ::Struct.new(
      :cluster_name_filter,
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

    # @!attribute cluster_info_list
    #   <p>Information on each of the MSK clusters in the response.</p>
    #
    #   @return [Array<ClusterInfo>]
    #
    # @!attribute next_token
    #   <p>The paginated results marker. When the result of a ListClusters operation is truncated, the call returns NextToken in the response.
    #                  To get another batch of clusters, provide this token in your next request.</p>
    #
    #   @return [String]
    #
    ListClustersOutput = ::Struct.new(
      :cluster_info_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_name_filter
    #   <p>Specify a prefix of the names of the clusters that you want to list. The service lists all the clusters whose names start with this prefix.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_type_filter
    #   <p>Specify either PROVISIONED or SERVERLESS.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response.
    #               To get the next batch, provide this token in your next request.</p>
    #
    #   @return [String]
    #
    ListClustersV2Input = ::Struct.new(
      :cluster_name_filter,
      :cluster_type_filter,
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

    # @!attribute cluster_info_list
    #   <p>Information on each of the MSK clusters in the response.</p>
    #
    #   @return [Array<Cluster>]
    #
    # @!attribute next_token
    #   <p>The paginated results marker. When the result of a ListClusters operation is truncated, the call returns NextToken in the response.
    #                  To get another batch of clusters, provide this token in your next request.</p>
    #
    #   @return [String]
    #
    ListClustersV2Output = ::Struct.new(
      :cluster_info_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies an MSK configuration and all of its revisions.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response.
    #               To get the next batch, provide this token in your next request.</p>
    #
    #   @return [String]
    #
    ListConfigurationRevisionsInput = ::Struct.new(
      :arn,
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
    #   <p>Paginated results marker.</p>
    #
    #   @return [String]
    #
    # @!attribute revisions
    #   <p>List of ConfigurationRevision objects.</p>
    #
    #   @return [Array<ConfigurationRevision>]
    #
    ListConfigurationRevisionsOutput = ::Struct.new(
      :next_token,
      :revisions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response.
    #               To get the next batch, provide this token in your next request.</p>
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
    #   <p>An array of MSK configurations.</p>
    #
    #   @return [Array<Configuration>]
    #
    # @!attribute next_token
    #   <p>The paginated results marker. When the result of a ListConfigurations operation is truncated, the call returns NextToken in the response.
    #                  To get another batch of configurations, provide this token in your next request.</p>
    #
    #   @return [String]
    #
    ListConfigurationsOutput = ::Struct.new(
      :configurations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response. To get the next batch, provide this token in your next request.</p>
    #
    #   @return [String]
    #
    ListKafkaVersionsInput = ::Struct.new(
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

    # @!attribute kafka_versions
    #
    #   @return [Array<KafkaVersion>]
    #
    # @!attribute next_token
    #
    #   @return [String]
    #
    ListKafkaVersionsOutput = ::Struct.new(
      :kafka_versions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response. If there are more results, the response includes a NextToken parameter.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The paginated results marker. When the result of the operation is truncated, the call returns NextToken in the response.
    #               To get the next batch, provide this token in your next request.</p>
    #
    #   @return [String]
    #
    ListNodesInput = ::Struct.new(
      :cluster_arn,
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
    #   <p>The paginated results marker. When the result of a ListNodes operation is truncated, the call returns NextToken in the response.
    #                  To get another batch of nodes, provide this token in your next request.</p>
    #
    #   @return [String]
    #
    # @!attribute node_info_list
    #   <p>List containing a NodeInfo object.</p>
    #
    #   @return [Array<NodeInfo>]
    #
    ListNodesOutput = ::Struct.new(
      :next_token,
      :node_info_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_arn
    #   <p>The arn of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maxResults of the query.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The nextToken of the query.</p>
    #
    #   @return [String]
    #
    ListScramSecretsInput = ::Struct.new(
      :cluster_arn,
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
    #   <p>Paginated results marker.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_arn_list
    #   <p>The list of scram secrets associated with the cluster.</p>
    #
    #   @return [Array<String>]
    #
    ListScramSecretsOutput = ::Struct.new(
      :next_token,
      :secret_arn_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the resource that's associated with the tags.</p>
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
    #   <p>The key-value pair for the resource tag.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute broker_logs
    #
    #   @return [BrokerLogs]
    #
    LoggingInfo = ::Struct.new(
      :broker_logs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about cluster attributes that can be updated via update APIs.</p>
    #
    # @!attribute broker_ebs_volume_info
    #   <p>Specifies the size of the EBS volume and the ID of the associated broker.</p>
    #
    #   @return [Array<BrokerEBSVolumeInfo>]
    #
    # @!attribute configuration_info
    #   <p>Information about the changes in the configuration of the brokers.</p>
    #
    #   @return [ConfigurationInfo]
    #
    # @!attribute number_of_broker_nodes
    #   <p>The number of broker nodes in the cluster.</p>
    #
    #   @return [Integer]
    #
    # @!attribute enhanced_monitoring
    #   <p>Specifies which Apache Kafka metrics Amazon MSK gathers and sends to Amazon CloudWatch for this cluster.</p>
    #
    #   Enum, one of: ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"]
    #
    #   @return [String]
    #
    # @!attribute open_monitoring
    #   <p>The settings for open monitoring.</p>
    #
    #   @return [OpenMonitoring]
    #
    # @!attribute kafka_version
    #   <p>The Apache Kafka version.</p>
    #
    #   @return [String]
    #
    # @!attribute logging_info
    #   <p>You can configure your MSK cluster to send broker logs to different destination types. This is a container for the configuration details related to broker logs.</p>
    #
    #   @return [LoggingInfo]
    #
    # @!attribute instance_type
    #   <p>Information about the Amazon MSK broker type.</p>
    #
    #   @return [String]
    #
    # @!attribute client_authentication
    #   <p>Includes all client authentication information.</p>
    #
    #   @return [ClientAuthentication]
    #
    # @!attribute encryption_info
    #   <p>Includes all encryption-related information.</p>
    #
    #   @return [EncryptionInfo]
    #
    # @!attribute connectivity_info
    #   <p>Information about the broker access configuration.</p>
    #
    #   @return [ConnectivityInfo]
    #
    MutableClusterInfo = ::Struct.new(
      :broker_ebs_volume_info,
      :configuration_info,
      :number_of_broker_nodes,
      :enhanced_monitoring,
      :open_monitoring,
      :kafka_version,
      :logging_info,
      :instance_type,
      :client_authentication,
      :encryption_info,
      :connectivity_info,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.number_of_broker_nodes ||= 0
      end
    end

    # <p>Indicates whether you want to turn on or turn off the Node Exporter.</p>
    #
    # @!attribute enabled_in_broker
    #   <p>Indicates whether you want to turn on or turn off the Node Exporter.</p>
    #
    #   @return [Boolean]
    #
    NodeExporter = ::Struct.new(
      :enabled_in_broker,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled_in_broker ||= false
      end
    end

    # <p>Indicates whether you want to turn on or turn off the Node Exporter.</p>
    #
    # @!attribute enabled_in_broker
    #   <p>Indicates whether you want to turn on or turn off the Node Exporter.</p>
    #
    #   @return [Boolean]
    #
    NodeExporterInfo = ::Struct.new(
      :enabled_in_broker,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled_in_broker ||= false
      end
    end

    # <p>The node information object.</p>
    #
    # @!attribute added_to_cluster_time
    #   <p>The start time.</p>
    #
    #   @return [String]
    #
    # @!attribute broker_node_info
    #   <p>The broker node info.</p>
    #
    #   @return [BrokerNodeInfo]
    #
    # @!attribute instance_type
    #   <p>The instance type.</p>
    #
    #   @return [String]
    #
    # @!attribute node_arn
    #   <p>The Amazon Resource Name (ARN) of the node.</p>
    #
    #   @return [String]
    #
    # @!attribute node_type
    #   <p>The node type.</p>
    #
    #   Enum, one of: ["BROKER"]
    #
    #   @return [String]
    #
    # @!attribute zookeeper_node_info
    #   <p>The ZookeeperNodeInfo.</p>
    #
    #   @return [ZookeeperNodeInfo]
    #
    NodeInfo = ::Struct.new(
      :added_to_cluster_time,
      :broker_node_info,
      :instance_type,
      :node_arn,
      :node_type,
      :zookeeper_node_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for NodeType
    #
    module NodeType
      # No documentation available.
      #
      BROKER = "BROKER"
    end

    # <p>Returns information about an error.</p>
    #
    # @!attribute invalid_parameter
    #   <p>The parameter that caused the error.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The description of the error.</p>
    #
    #   @return [String]
    #
    NotFoundException = ::Struct.new(
      :invalid_parameter,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>JMX and Node monitoring for the MSK cluster.</p>
    #
    # @!attribute prometheus
    #   <p>Prometheus settings.</p>
    #
    #   @return [Prometheus]
    #
    OpenMonitoring = ::Struct.new(
      :prometheus,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>JMX and Node monitoring for the MSK cluster.</p>
    #
    # @!attribute prometheus
    #   <p>Prometheus settings.</p>
    #
    #   @return [PrometheusInfo]
    #
    OpenMonitoringInfo = ::Struct.new(
      :prometheus,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Prometheus settings.</p>
    #
    # @!attribute jmx_exporter
    #   <p>Indicates whether you want to turn on or turn off the JMX Exporter.</p>
    #
    #   @return [JmxExporter]
    #
    # @!attribute node_exporter
    #   <p>Indicates whether you want to turn on or turn off the Node Exporter.</p>
    #
    #   @return [NodeExporter]
    #
    Prometheus = ::Struct.new(
      :jmx_exporter,
      :node_exporter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Prometheus settings.</p>
    #
    # @!attribute jmx_exporter
    #   <p>Indicates whether you want to turn on or turn off the JMX Exporter.</p>
    #
    #   @return [JmxExporterInfo]
    #
    # @!attribute node_exporter
    #   <p>Indicates whether you want to turn on or turn off the Node Exporter.</p>
    #
    #   @return [NodeExporterInfo]
    #
    PrometheusInfo = ::Struct.new(
      :jmx_exporter,
      :node_exporter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provisioned cluster.</p>
    #
    # @!attribute broker_node_group_info
    #   <p>Information about the brokers.</p>
    #
    #   @return [BrokerNodeGroupInfo]
    #
    # @!attribute current_broker_software_info
    #   <p>Information about the Apache Kafka version deployed on the brokers.</p>
    #
    #   @return [BrokerSoftwareInfo]
    #
    # @!attribute client_authentication
    #   <p>Includes all client authentication information.</p>
    #
    #   @return [ClientAuthentication]
    #
    # @!attribute encryption_info
    #   <p>Includes all encryption-related information.</p>
    #
    #   @return [EncryptionInfo]
    #
    # @!attribute enhanced_monitoring
    #   <p>Specifies the level of monitoring for the MSK cluster. The possible values are DEFAULT, PER_BROKER, PER_TOPIC_PER_BROKER, and PER_TOPIC_PER_PARTITION.</p>
    #
    #   Enum, one of: ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"]
    #
    #   @return [String]
    #
    # @!attribute open_monitoring
    #   <p>The settings for open monitoring.</p>
    #
    #   @return [OpenMonitoringInfo]
    #
    # @!attribute logging_info
    #   <p>Log delivery information for the cluster.</p>
    #
    #   @return [LoggingInfo]
    #
    # @!attribute number_of_broker_nodes
    #   <p>The number of broker nodes in the cluster.</p>
    #
    #   @return [Integer]
    #
    # @!attribute zookeeper_connect_string
    #   <p>The connection string to use to connect to the Apache ZooKeeper cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute zookeeper_connect_string_tls
    #   <p>The connection string to use to connect to the Apache ZooKeeper cluster on a TLS port.</p>
    #
    #   @return [String]
    #
    Provisioned = ::Struct.new(
      :broker_node_group_info,
      :current_broker_software_info,
      :client_authentication,
      :encryption_info,
      :enhanced_monitoring,
      :open_monitoring,
      :logging_info,
      :number_of_broker_nodes,
      :zookeeper_connect_string,
      :zookeeper_connect_string_tls,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.number_of_broker_nodes ||= 0
      end
    end

    # <p>Provisioned cluster request.</p>
    #
    # @!attribute broker_node_group_info
    #   <p>Information about the brokers.</p>
    #
    #   @return [BrokerNodeGroupInfo]
    #
    # @!attribute client_authentication
    #   <p>Includes all client authentication information.</p>
    #
    #   @return [ClientAuthentication]
    #
    # @!attribute configuration_info
    #   <p>Represents the configuration that you want Amazon MSK to use for the brokers in a cluster.</p>
    #
    #   @return [ConfigurationInfo]
    #
    # @!attribute encryption_info
    #   <p>Includes all encryption-related information.</p>
    #
    #   @return [EncryptionInfo]
    #
    # @!attribute enhanced_monitoring
    #   <p>Specifies the level of monitoring for the MSK cluster. The possible values are DEFAULT, PER_BROKER, PER_TOPIC_PER_BROKER, and PER_TOPIC_PER_PARTITION.</p>
    #
    #   Enum, one of: ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"]
    #
    #   @return [String]
    #
    # @!attribute open_monitoring
    #   <p>The settings for open monitoring.</p>
    #
    #   @return [OpenMonitoringInfo]
    #
    # @!attribute kafka_version
    #   <p>The Apache Kafka version that you want for the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute logging_info
    #   <p>Log delivery information for the cluster.</p>
    #
    #   @return [LoggingInfo]
    #
    # @!attribute number_of_broker_nodes
    #   <p>The number of broker nodes in the cluster.</p>
    #
    #   @return [Integer]
    #
    ProvisionedRequest = ::Struct.new(
      :broker_node_group_info,
      :client_authentication,
      :configuration_info,
      :encryption_info,
      :enhanced_monitoring,
      :open_monitoring,
      :kafka_version,
      :logging_info,
      :number_of_broker_nodes,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.number_of_broker_nodes ||= 0
      end
    end

    # Contains information about provisioned throughput for EBS storage volumes attached to kafka broker nodes.
    #
    # @!attribute enabled
    #   Provisioned throughput is enabled or not.
    #
    #   @return [Boolean]
    #
    # @!attribute volume_throughput
    #   Throughput value of the EBS volumes for the data drive on each kafka broker node in MiB per second.
    #
    #   @return [Integer]
    #
    ProvisionedThroughput = ::Struct.new(
      :enabled,
      :volume_throughput,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled ||= false
        self.volume_throughput ||= 0
      end
    end

    # Public access control for brokers.
    #
    # @!attribute type
    #   <p>The value DISABLED indicates that public access is turned off. SERVICE_PROVIDED_EIPS indicates that public access is turned on.</p>
    #
    #   @return [String]
    #
    PublicAccess = ::Struct.new(
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Reboots a node.
    #
    # @!attribute broker_ids
    #   <p>The list of broker IDs to be rebooted. The reboot-broker operation supports rebooting one broker at a time.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster to be updated.</p>
    #
    #   @return [String]
    #
    RebootBrokerInput = ::Struct.new(
      :broker_ids,
      :cluster_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_operation_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster operation.</p>
    #
    #   @return [String]
    #
    RebootBrokerOutput = ::Struct.new(
      :cluster_arn,
      :cluster_operation_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bucket
    #
    #   @return [String]
    #
    # @!attribute enabled
    #
    #   @return [Boolean]
    #
    # @!attribute prefix
    #
    #   @return [String]
    #
    S3 = ::Struct.new(
      :bucket,
      :enabled,
      :prefix,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled ||= false
      end
    end

    # <p>Details for client authentication using SASL.</p>
    #
    # @!attribute scram
    #   <p>Details for SASL/SCRAM client authentication.</p>
    #
    #   @return [Scram]
    #
    # @!attribute iam
    #   <p>Indicates whether IAM access control is enabled.</p>
    #
    #   @return [Iam]
    #
    Sasl = ::Struct.new(
      :scram,
      :iam,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details for SASL/SCRAM client authentication.</p>
    #
    # @!attribute enabled
    #   <p>SASL/SCRAM authentication is enabled or not.</p>
    #
    #   @return [Boolean]
    #
    Scram = ::Struct.new(
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled ||= false
      end
    end

    # <p>Serverless cluster.</p>
    #
    # @!attribute vpc_configs
    #   <p>The configuration of the Amazon VPCs for the cluster.</p>
    #
    #   @return [Array<VpcConfig>]
    #
    # @!attribute client_authentication
    #   <p>Includes all client authentication information.</p>
    #
    #   @return [ServerlessClientAuthentication]
    #
    Serverless = ::Struct.new(
      :vpc_configs,
      :client_authentication,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Includes all client authentication information.</p>
    #
    # @!attribute sasl
    #   <p>Details for ClientAuthentication using SASL.</p>
    #
    #   @return [ServerlessSasl]
    #
    ServerlessClientAuthentication = ::Struct.new(
      :sasl,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Serverless cluster request.</p>
    #
    # @!attribute vpc_configs
    #   <p>The configuration of the Amazon VPCs for the cluster.</p>
    #
    #   @return [Array<VpcConfig>]
    #
    # @!attribute client_authentication
    #   <p>Includes all client authentication information.</p>
    #
    #   @return [ServerlessClientAuthentication]
    #
    ServerlessRequest = ::Struct.new(
      :vpc_configs,
      :client_authentication,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details for client authentication using SASL.</p>
    #
    # @!attribute iam
    #   <p>Indicates whether IAM access control is enabled.</p>
    #
    #   @return [Iam]
    #
    ServerlessSasl = ::Struct.new(
      :iam,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about an error.</p>
    #
    # @!attribute invalid_parameter
    #   <p>The parameter that caused the error.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The description of the error.</p>
    #
    #   @return [String]
    #
    ServiceUnavailableException = ::Struct.new(
      :invalid_parameter,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    StateInfo = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about storage volumes attached to MSK broker nodes.</p>
    #
    # @!attribute ebs_storage_info
    #   <p>EBS volume information.</p>
    #
    #   @return [EBSStorageInfo]
    #
    StorageInfo = ::Struct.new(
      :ebs_storage_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the resource that's associated with the tags.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The key-value pair for the resource tag.</p>
    #
    #   @return [Hash<String, String>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details for client authentication using TLS.</p>
    #
    # @!attribute certificate_authority_arn_list
    #   <p>List of ACM Certificate Authority ARNs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute enabled
    #   <p>Specifies whether you want to turn on or turn off TLS authentication.</p>
    #
    #   @return [Boolean]
    #
    Tls = ::Struct.new(
      :certificate_authority_arn_list,
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled ||= false
      end
    end

    # <p>Returns information about an error.</p>
    #
    # @!attribute invalid_parameter
    #   <p>The parameter that caused the error.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The description of the error.</p>
    #
    #   @return [String]
    #
    TooManyRequestsException = ::Struct.new(
      :invalid_parameter,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute enabled
    #   <p>Specifies whether you want to turn on or turn off unauthenticated traffic to your cluster.</p>
    #
    #   @return [Boolean]
    #
    Unauthenticated = ::Struct.new(
      :enabled,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled ||= false
      end
    end

    # <p>Returns information about an error.</p>
    #
    # @!attribute invalid_parameter
    #   <p>The parameter that caused the error.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The description of the error.</p>
    #
    #   @return [String]
    #
    UnauthorizedException = ::Struct.new(
      :invalid_parameter,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Error info for scram secret associate/disassociate failure.</p>
    #
    # @!attribute error_code
    #   <p>Error code for associate/disassociate failure.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>Error message for associate/disassociate failure.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_arn
    #   <p>AWS Secrets Manager secret ARN.</p>
    #
    #   @return [String]
    #
    UnprocessedScramSecret = ::Struct.new(
      :error_code,
      :error_message,
      :secret_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the resource that's associated with the tags.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>Tag keys must be unique for a given cluster. In addition, the following restrictions apply:</p>
    #               <ul>
    #                  <li>
    #                     <p>Each tag key must be unique. If you add a tag with a key that's already in
    #                     use, your new tag overwrites the existing key-value pair. </p>
    #                  </li>
    #                  <li>
    #                     <p>You can't start a tag key with aws: because this prefix is reserved for use
    #                     by  AWS.  AWS creates tags that begin with this prefix on your behalf, but
    #                     you can't edit or delete them.</p>
    #                  </li>
    #                  <li>
    #                     <p>Tag keys must be between 1 and 128 Unicode characters in length.</p>
    #                  </li>
    #                  <li>
    #                     <p>Tag keys must consist of the following characters: Unicode letters, digits,
    #                     white space, and the following special characters: _ . / = + -
    #                        @.</p>
    #                  </li>
    #               </ul>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute current_version
    #   <p>The version of cluster to update from. A successful operation will then generate a new version.</p>
    #
    #   @return [String]
    #
    # @!attribute target_number_of_broker_nodes
    #   <p>The number of broker nodes that you want the cluster to have after this operation completes successfully.</p>
    #
    #   @return [Integer]
    #
    UpdateBrokerCountInput = ::Struct.new(
      :cluster_arn,
      :current_version,
      :target_number_of_broker_nodes,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.target_number_of_broker_nodes ||= 0
      end
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_operation_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster operation.</p>
    #
    #   @return [String]
    #
    UpdateBrokerCountOutput = ::Struct.new(
      :cluster_arn,
      :cluster_operation_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute current_version
    #   <p>The version of cluster to update from. A successful operation will then generate a new version.</p>
    #
    #   @return [String]
    #
    # @!attribute target_broker_ebs_volume_info
    #   <p>Describes the target volume size and the ID of the broker to apply the update to.</p>
    #
    #   @return [Array<BrokerEBSVolumeInfo>]
    #
    UpdateBrokerStorageInput = ::Struct.new(
      :cluster_arn,
      :current_version,
      :target_broker_ebs_volume_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_operation_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster operation.</p>
    #
    #   @return [String]
    #
    UpdateBrokerStorageOutput = ::Struct.new(
      :cluster_arn,
      :cluster_operation_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute current_version
    #   <p>The cluster version that you want to change. After this operation completes successfully, the cluster will have a new version.</p>
    #
    #   @return [String]
    #
    # @!attribute target_instance_type
    #   <p>The Amazon MSK broker type that you want all of the brokers in this cluster to be.</p>
    #
    #   @return [String]
    #
    UpdateBrokerTypeInput = ::Struct.new(
      :cluster_arn,
      :current_version,
      :target_instance_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_operation_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster operation.</p>
    #
    #   @return [String]
    #
    UpdateBrokerTypeOutput = ::Struct.new(
      :cluster_arn,
      :cluster_operation_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_info
    #   <p>Represents the configuration that you want MSK to use for the brokers in a cluster.</p>
    #
    #   @return [ConfigurationInfo]
    #
    # @!attribute current_version
    #   <p>The version of the cluster that needs to be updated.</p>
    #
    #   @return [String]
    #
    UpdateClusterConfigurationInput = ::Struct.new(
      :cluster_arn,
      :configuration_info,
      :current_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_operation_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster operation.</p>
    #
    #   @return [String]
    #
    UpdateClusterConfigurationOutput = ::Struct.new(
      :cluster_arn,
      :cluster_operation_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_info
    #   <p>The custom configuration that should be applied on the new version of cluster.</p>
    #
    #   @return [ConfigurationInfo]
    #
    # @!attribute current_version
    #   <p>Current cluster version.</p>
    #
    #   @return [String]
    #
    # @!attribute target_kafka_version
    #   <p>Target Kafka version.</p>
    #
    #   @return [String]
    #
    UpdateClusterKafkaVersionInput = ::Struct.new(
      :cluster_arn,
      :configuration_info,
      :current_version,
      :target_kafka_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_operation_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster operation.</p>
    #
    #   @return [String]
    #
    UpdateClusterKafkaVersionOutput = ::Struct.new(
      :cluster_arn,
      :cluster_operation_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the configuration revision.</p>
    #
    #   @return [String]
    #
    # @!attribute server_properties
    #   <p>Contents of the <filename>server.properties</filename> file. When using the API, you must ensure that the contents of the file are base64 encoded.
    #                  When using the AWS Management Console, the SDK, or the AWS CLI, the contents of <filename>server.properties</filename> can be in plaintext.</p>
    #
    #   @return [String]
    #
    UpdateConfigurationInput = ::Struct.new(
      :arn,
      :description,
      :server_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_revision
    #   <p>Latest revision of the configuration.</p>
    #
    #   @return [ConfigurationRevision]
    #
    UpdateConfigurationOutput = ::Struct.new(
      :arn,
      :latest_revision,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Request body for UpdateConnectivity.
    #
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute connectivity_info
    #   <p>Information about the broker access configuration.</p>
    #
    #   @return [ConnectivityInfo]
    #
    # @!attribute current_version
    #   <p>The version of the MSK cluster to update. Cluster versions aren't simple numbers. You can describe an MSK cluster to find its version. When this update operation is successful, it generates a new cluster version.</p>
    #
    #   @return [String]
    #
    UpdateConnectivityInput = ::Struct.new(
      :cluster_arn,
      :connectivity_info,
      :current_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_operation_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster operation.</p>
    #
    #   @return [String]
    #
    UpdateConnectivityOutput = ::Struct.new(
      :cluster_arn,
      :cluster_operation_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Request body for UpdateMonitoring.
    #
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute current_version
    #   <p>The version of the MSK cluster to update. Cluster versions aren't simple numbers. You can describe an MSK cluster to find its version. When this update operation is successful, it generates a new cluster version.</p>
    #
    #   @return [String]
    #
    # @!attribute enhanced_monitoring
    #   <p>Specifies which Apache Kafka metrics Amazon MSK gathers and sends to Amazon CloudWatch for this cluster.</p>
    #
    #   Enum, one of: ["DEFAULT", "PER_BROKER", "PER_TOPIC_PER_BROKER", "PER_TOPIC_PER_PARTITION"]
    #
    #   @return [String]
    #
    # @!attribute open_monitoring
    #   <p>The settings for open monitoring.</p>
    #
    #   @return [OpenMonitoringInfo]
    #
    # @!attribute logging_info
    #
    #   @return [LoggingInfo]
    #
    UpdateMonitoringInput = ::Struct.new(
      :cluster_arn,
      :current_version,
      :enhanced_monitoring,
      :open_monitoring,
      :logging_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_operation_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster operation.</p>
    #
    #   @return [String]
    #
    UpdateMonitoringOutput = ::Struct.new(
      :cluster_arn,
      :cluster_operation_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_authentication
    #   <p>Includes all client authentication related information.</p>
    #
    #   @return [ClientAuthentication]
    #
    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute current_version
    #   <p>The version of the MSK cluster to update. Cluster versions aren't simple numbers. You can describe an MSK cluster to find its version. When this update operation is successful, it generates a new cluster version.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_info
    #   <p>Includes all encryption-related information.</p>
    #
    #   @return [EncryptionInfo]
    #
    UpdateSecurityInput = ::Struct.new(
      :client_authentication,
      :cluster_arn,
      :current_version,
      :encryption_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute cluster_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute cluster_operation_arn
    #   <p>The Amazon Resource Name (ARN) of the cluster operation.</p>
    #
    #   @return [String]
    #
    UpdateSecurityOutput = ::Struct.new(
      :cluster_arn,
      :cluster_operation_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration of the Amazon VPCs for the cluster.</p>
    #
    # @!attribute subnet_ids
    #   <p>The IDs of the subnets associated with the cluster.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_ids
    #   <p>The IDs of the security groups associated with the cluster.</p>
    #
    #   @return [Array<String>]
    #
    VpcConfig = ::Struct.new(
      :subnet_ids,
      :security_group_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Zookeeper node information.</p>
    #
    # @!attribute attached_eni_id
    #   <p>The attached elastic network interface of the broker.</p>
    #
    #   @return [String]
    #
    # @!attribute client_vpc_ip_address
    #   <p>The virtual private cloud (VPC) IP address of the client.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoints
    #   <p>Endpoints for accessing the ZooKeeper.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute zookeeper_id
    #   <p>The role-specific ID for Zookeeper.</p>
    #
    #   @return [Float]
    #
    # @!attribute zookeeper_version
    #   <p>The version of Zookeeper.</p>
    #
    #   @return [String]
    #
    ZookeeperNodeInfo = ::Struct.new(
      :attached_eni_id,
      :client_vpc_ip_address,
      :endpoints,
      :zookeeper_id,
      :zookeeper_version,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.zookeeper_id ||= 0
      end
    end

  end
end
