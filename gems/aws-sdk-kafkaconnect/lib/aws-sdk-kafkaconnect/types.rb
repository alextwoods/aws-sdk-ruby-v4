# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KafkaConnect
  module Types

    # <p>The details of the Apache Kafka cluster to which the connector is connected.</p>
    #
    # @!attribute bootstrap_servers
    #   <p>The bootstrap servers of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc
    #   <p>Details of an Amazon VPC which has network connectivity to the Apache Kafka
    #            cluster.</p>
    #
    #   @return [Vpc]
    #
    ApacheKafkaCluster = ::Struct.new(
      :bootstrap_servers,
      :vpc,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The description of the Apache Kafka cluster to which the connector is connected.</p>
    #
    # @!attribute bootstrap_servers
    #   <p>The bootstrap servers of the cluster.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc
    #   <p>Details of an Amazon VPC which has network connectivity to the Apache Kafka
    #            cluster.</p>
    #
    #   @return [VpcDescription]
    #
    ApacheKafkaClusterDescription = ::Struct.new(
      :bootstrap_servers,
      :vpc,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies how the connector scales.</p>
    #
    # @!attribute max_worker_count
    #   <p>The maximum number of workers allocated to the connector.</p>
    #
    #   @return [Integer]
    #
    # @!attribute mcu_count
    #   <p>The number of microcontroller units (MCUs) allocated to each connector worker. The valid
    #            values are 1,2,4,8.</p>
    #
    #   @return [Integer]
    #
    # @!attribute min_worker_count
    #   <p>The minimum number of workers allocated to the connector.</p>
    #
    #   @return [Integer]
    #
    # @!attribute scale_in_policy
    #   <p>The sacle-in policy for the connector.</p>
    #
    #   @return [ScaleInPolicy]
    #
    # @!attribute scale_out_policy
    #   <p>The sacle-out policy for the connector.</p>
    #
    #   @return [ScaleOutPolicy]
    #
    AutoScaling = ::Struct.new(
      :max_worker_count,
      :mcu_count,
      :min_worker_count,
      :scale_in_policy,
      :scale_out_policy,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_worker_count ||= 0
        self.mcu_count ||= 0
        self.min_worker_count ||= 0
      end
    end

    # <p>Information about the auto scaling parameters for the connector.</p>
    #
    # @!attribute max_worker_count
    #   <p>The maximum number of workers allocated to the connector.</p>
    #
    #   @return [Integer]
    #
    # @!attribute mcu_count
    #   <p>The number of microcontroller units (MCUs) allocated to each connector worker. The valid
    #            values are 1,2,4,8.</p>
    #
    #   @return [Integer]
    #
    # @!attribute min_worker_count
    #   <p>The minimum number of workers allocated to the connector.</p>
    #
    #   @return [Integer]
    #
    # @!attribute scale_in_policy
    #   <p>The sacle-in policy for the connector.</p>
    #
    #   @return [ScaleInPolicyDescription]
    #
    # @!attribute scale_out_policy
    #   <p>The sacle-out policy for the connector.&gt;</p>
    #
    #   @return [ScaleOutPolicyDescription]
    #
    AutoScalingDescription = ::Struct.new(
      :max_worker_count,
      :mcu_count,
      :min_worker_count,
      :scale_in_policy,
      :scale_out_policy,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_worker_count ||= 0
        self.mcu_count ||= 0
        self.min_worker_count ||= 0
      end
    end

    # <p>The updates to the auto scaling parameters for the connector.</p>
    #
    # @!attribute max_worker_count
    #   <p>The target maximum number of workers allocated to the connector.</p>
    #
    #   @return [Integer]
    #
    # @!attribute mcu_count
    #   <p>The target number of microcontroller units (MCUs) allocated to each connector worker.
    #            The valid values are 1,2,4,8.</p>
    #
    #   @return [Integer]
    #
    # @!attribute min_worker_count
    #   <p>The target minimum number of workers allocated to the connector.</p>
    #
    #   @return [Integer]
    #
    # @!attribute scale_in_policy
    #   <p>The target sacle-in policy for the connector.</p>
    #
    #   @return [ScaleInPolicyUpdate]
    #
    # @!attribute scale_out_policy
    #   <p>The target sacle-out policy for the connector.</p>
    #
    #   @return [ScaleOutPolicyUpdate]
    #
    AutoScalingUpdate = ::Struct.new(
      :max_worker_count,
      :mcu_count,
      :min_worker_count,
      :scale_in_policy,
      :scale_out_policy,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_worker_count ||= 0
        self.mcu_count ||= 0
        self.min_worker_count ||= 0
      end
    end

    # <p>HTTP Status Code 400: Bad request due to incorrect input. Correct your request and then
    #          retry it.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    BadRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the capacity of the connector, whether it is auto scaled or
    #          provisioned.</p>
    #
    # @!attribute auto_scaling
    #   <p>Information about the auto scaling parameters for the connector.</p>
    #
    #   @return [AutoScaling]
    #
    # @!attribute provisioned_capacity
    #   <p>Details about a fixed capacity allocated to a connector.</p>
    #
    #   @return [ProvisionedCapacity]
    #
    Capacity = ::Struct.new(
      :auto_scaling,
      :provisioned_capacity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A description of the connector's capacity.</p>
    #
    # @!attribute auto_scaling
    #   <p>Describes the connector's auto scaling capacity.</p>
    #
    #   @return [AutoScalingDescription]
    #
    # @!attribute provisioned_capacity
    #   <p>Describes a connector's provisioned capacity.</p>
    #
    #   @return [ProvisionedCapacityDescription]
    #
    CapacityDescription = ::Struct.new(
      :auto_scaling,
      :provisioned_capacity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The target capacity for the connector. The capacity can be auto scaled or
    #          provisioned.</p>
    #
    # @!attribute auto_scaling
    #   <p>The target auto scaling setting.</p>
    #
    #   @return [AutoScalingUpdate]
    #
    # @!attribute provisioned_capacity
    #   <p>The target settings for provisioned capacity.</p>
    #
    #   @return [ProvisionedCapacityUpdate]
    #
    CapacityUpdate = ::Struct.new(
      :auto_scaling,
      :provisioned_capacity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The settings for delivering connector logs to Amazon CloudWatch Logs.</p>
    #
    # @!attribute enabled
    #   <p>Whether log delivery to Amazon CloudWatch Logs is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute log_group
    #   <p>The name of the CloudWatch log group that is the destination for log delivery.</p>
    #
    #   @return [String]
    #
    CloudWatchLogsLogDelivery = ::Struct.new(
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

    # <p>A description of the log delivery settings.</p>
    #
    # @!attribute enabled
    #   <p>Whether log delivery to Amazon CloudWatch Logs is enabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute log_group
    #   <p>The name of the CloudWatch log group that is the destination for log delivery.</p>
    #
    #   @return [String]
    #
    CloudWatchLogsLogDeliveryDescription = ::Struct.new(
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

    # <p>HTTP Status Code 409: Conflict. A resource with this name already exists. Retry your
    #          request with another name.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConnectorState
    #
    module ConnectorState
      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>Summary of a connector.</p>
    #
    # @!attribute capacity
    #   <p>The connector's compute capacity settings.</p>
    #
    #   @return [CapacityDescription]
    #
    # @!attribute connector_arn
    #   <p>The Amazon Resource Name (ARN) of the connector.</p>
    #
    #   @return [String]
    #
    # @!attribute connector_description
    #   <p>The description of the connector.</p>
    #
    #   @return [String]
    #
    # @!attribute connector_name
    #   <p>The name of the connector.</p>
    #
    #   @return [String]
    #
    # @!attribute connector_state
    #   <p>The state of the connector.</p>
    #
    #   Enum, one of: ["RUNNING", "CREATING", "UPDATING", "DELETING", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time that the connector was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute current_version
    #   <p>The current version of the connector.</p>
    #
    #   @return [String]
    #
    # @!attribute kafka_cluster
    #   <p>The details of the Apache Kafka cluster to which the connector is connected.</p>
    #
    #   @return [KafkaClusterDescription]
    #
    # @!attribute kafka_cluster_client_authentication
    #   <p>The type of client authentication used to connect to the Apache Kafka cluster. The value
    #            is NONE when no client authentication is used.</p>
    #
    #   @return [KafkaClusterClientAuthenticationDescription]
    #
    # @!attribute kafka_cluster_encryption_in_transit
    #   <p>Details of encryption in transit to the Apache Kafka cluster.</p>
    #
    #   @return [KafkaClusterEncryptionInTransitDescription]
    #
    # @!attribute kafka_connect_version
    #   <p>The version of Kafka Connect. It has to be compatible with both the Apache Kafka
    #            cluster's version and the plugins.</p>
    #
    #   @return [String]
    #
    # @!attribute log_delivery
    #   <p>The settings for delivering connector logs to Amazon CloudWatch Logs.</p>
    #
    #   @return [LogDeliveryDescription]
    #
    # @!attribute plugins
    #   <p>Specifies which plugins were used for this connector.</p>
    #
    #   @return [Array<PluginDescription>]
    #
    # @!attribute service_execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used by the connector to access Amazon
    #            Web Services resources.</p>
    #
    #   @return [String]
    #
    # @!attribute worker_configuration
    #   <p>The worker configurations that are in use with the connector.</p>
    #
    #   @return [WorkerConfigurationDescription]
    #
    ConnectorSummary = ::Struct.new(
      :capacity,
      :connector_arn,
      :connector_description,
      :connector_name,
      :connector_state,
      :creation_time,
      :current_version,
      :kafka_cluster,
      :kafka_cluster_client_authentication,
      :kafka_cluster_encryption_in_transit,
      :kafka_connect_version,
      :log_delivery,
      :plugins,
      :service_execution_role_arn,
      :worker_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute capacity
    #   <p>Information about the capacity allocated to the connector. Exactly one of the two
    #            properties must be specified.</p>
    #
    #   @return [Capacity]
    #
    # @!attribute connector_configuration
    #   <p>A map of keys to values that represent the configuration for the connector.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute connector_description
    #   <p>A summary description of the connector.</p>
    #
    #   @return [String]
    #
    # @!attribute connector_name
    #   <p>The name of the connector.</p>
    #
    #   @return [String]
    #
    # @!attribute kafka_cluster
    #   <p>Specifies which Apache Kafka cluster to connect to.</p>
    #
    #   @return [KafkaCluster]
    #
    # @!attribute kafka_cluster_client_authentication
    #   <p>Details of the client authentication used by the Apache Kafka cluster.</p>
    #
    #   @return [KafkaClusterClientAuthentication]
    #
    # @!attribute kafka_cluster_encryption_in_transit
    #   <p>Details of encryption in transit to the Apache Kafka cluster.</p>
    #
    #   @return [KafkaClusterEncryptionInTransit]
    #
    # @!attribute kafka_connect_version
    #   <p>The version of Kafka Connect. It has to be compatible with both the Apache Kafka
    #            cluster's version and the plugins.</p>
    #
    #   @return [String]
    #
    # @!attribute log_delivery
    #   <p>Details about log delivery.</p>
    #
    #   @return [LogDelivery]
    #
    # @!attribute plugins
    #   <p>Specifies which plugins to use for the connector.</p>
    #
    #   @return [Array<Plugin>]
    #
    # @!attribute service_execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used by the connector to access the
    #            Amazon Web Services resources that it needs. The types of resources depends on the logic of
    #            the connector. For example, a connector that has Amazon S3 as a destination must have
    #            permissions that allow it to write to the S3 destination bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute worker_configuration
    #   <p>Specifies which worker configuration to use with the connector.</p>
    #
    #   @return [WorkerConfiguration]
    #
    CreateConnectorInput = ::Struct.new(
      :capacity,
      :connector_configuration,
      :connector_description,
      :connector_name,
      :kafka_cluster,
      :kafka_cluster_client_authentication,
      :kafka_cluster_encryption_in_transit,
      :kafka_connect_version,
      :log_delivery,
      :plugins,
      :service_execution_role_arn,
      :worker_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::KafkaConnect::Types::CreateConnectorInput "\
          "capacity=#{capacity || 'nil'}, "\
          "connector_configuration=\"[SENSITIVE]\", "\
          "connector_description=#{connector_description || 'nil'}, "\
          "connector_name=#{connector_name || 'nil'}, "\
          "kafka_cluster=#{kafka_cluster || 'nil'}, "\
          "kafka_cluster_client_authentication=#{kafka_cluster_client_authentication || 'nil'}, "\
          "kafka_cluster_encryption_in_transit=#{kafka_cluster_encryption_in_transit || 'nil'}, "\
          "kafka_connect_version=#{kafka_connect_version || 'nil'}, "\
          "log_delivery=#{log_delivery || 'nil'}, "\
          "plugins=#{plugins || 'nil'}, "\
          "service_execution_role_arn=#{service_execution_role_arn || 'nil'}, "\
          "worker_configuration=#{worker_configuration || 'nil'}>"
      end
    end

    # @!attribute connector_arn
    #   <p>The Amazon Resource Name (ARN) that Amazon assigned to the connector.</p>
    #
    #   @return [String]
    #
    # @!attribute connector_name
    #   <p>The name of the connector.</p>
    #
    #   @return [String]
    #
    # @!attribute connector_state
    #   <p>The state of the connector.</p>
    #
    #   Enum, one of: ["RUNNING", "CREATING", "UPDATING", "DELETING", "FAILED"]
    #
    #   @return [String]
    #
    CreateConnectorOutput = ::Struct.new(
      :connector_arn,
      :connector_name,
      :connector_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute content_type
    #   <p>The type of the plugin file.</p>
    #
    #   Enum, one of: ["JAR", "ZIP"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A summary description of the custom plugin.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>Information about the location of a custom plugin.</p>
    #
    #   @return [CustomPluginLocation]
    #
    # @!attribute name
    #   <p>The name of the custom plugin.</p>
    #
    #   @return [String]
    #
    CreateCustomPluginInput = ::Struct.new(
      :content_type,
      :description,
      :location,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute custom_plugin_arn
    #   <p>The Amazon Resource Name (ARN) that Amazon assigned to the custom plugin.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_plugin_state
    #   <p>The state of the custom plugin.</p>
    #
    #   Enum, one of: ["CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATE_FAILED", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the custom plugin.</p>
    #
    #   @return [String]
    #
    # @!attribute revision
    #   <p>The revision of the custom plugin.</p>
    #
    #   @return [Integer]
    #
    CreateCustomPluginOutput = ::Struct.new(
      :custom_plugin_arn,
      :custom_plugin_state,
      :name,
      :revision,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.revision ||= 0
      end
    end

    # @!attribute description
    #   <p>A summary description of the worker configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the worker configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute properties_file_content
    #   <p>Base64 encoded contents of connect-distributed.properties file.</p>
    #
    #   @return [String]
    #
    CreateWorkerConfigurationInput = ::Struct.new(
      :description,
      :name,
      :properties_file_content,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::KafkaConnect::Types::CreateWorkerConfigurationInput "\
          "description=#{description || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "properties_file_content=\"[SENSITIVE]\">"
      end
    end

    # @!attribute creation_time
    #   <p>The time that the worker configuration was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute latest_revision
    #   <p>The latest revision of the worker configuration.</p>
    #
    #   @return [WorkerConfigurationRevisionSummary]
    #
    # @!attribute name
    #   <p>The name of the worker configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute worker_configuration_arn
    #   <p>The Amazon Resource Name (ARN) that Amazon assigned to the worker configuration.</p>
    #
    #   @return [String]
    #
    CreateWorkerConfigurationOutput = ::Struct.new(
      :creation_time,
      :latest_revision,
      :name,
      :worker_configuration_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A plugin is an AWS resource that contains the code that defines a connector's
    #          logic.</p>
    #
    # @!attribute custom_plugin_arn
    #   <p>The Amazon Resource Name (ARN) of the custom plugin.</p>
    #
    #   @return [String]
    #
    # @!attribute revision
    #   <p>The revision of the custom plugin.</p>
    #
    #   @return [Integer]
    #
    CustomPlugin = ::Struct.new(
      :custom_plugin_arn,
      :revision,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.revision ||= 0
      end
    end

    # Includes enum constants for CustomPluginContentType
    #
    module CustomPluginContentType
      # No documentation available.
      #
      JAR = "JAR"

      # No documentation available.
      #
      ZIP = "ZIP"
    end

    # <p>Details about a custom plugin.</p>
    #
    # @!attribute custom_plugin_arn
    #   <p>The Amazon Resource Name (ARN) of the custom plugin.</p>
    #
    #   @return [String]
    #
    # @!attribute revision
    #   <p>The revision of the custom plugin.</p>
    #
    #   @return [Integer]
    #
    CustomPluginDescription = ::Struct.new(
      :custom_plugin_arn,
      :revision,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.revision ||= 0
      end
    end

    # <p>Details about a custom plugin file.</p>
    #
    # @!attribute file_md5
    #   <p>The hex-encoded MD5 checksum of the custom plugin file. You can use it to validate the
    #            file.</p>
    #
    #   @return [String]
    #
    # @!attribute file_size
    #   <p>The size in bytes of the custom plugin file. You can use it to validate the file.</p>
    #
    #   @return [Integer]
    #
    CustomPluginFileDescription = ::Struct.new(
      :file_md5,
      :file_size,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.file_size ||= 0
      end
    end

    # <p>Information about the location of a custom plugin.</p>
    #
    # @!attribute s3_location
    #   <p>The S3 bucket Amazon Resource Name (ARN), file key, and object version of the plugin
    #            file stored in Amazon S3.</p>
    #
    #   @return [S3Location]
    #
    CustomPluginLocation = ::Struct.new(
      :s3_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the location of a custom plugin.</p>
    #
    # @!attribute s3_location
    #   <p>The S3 bucket Amazon Resource Name (ARN), file key, and object version of the plugin
    #            file stored in Amazon S3.</p>
    #
    #   @return [S3LocationDescription]
    #
    CustomPluginLocationDescription = ::Struct.new(
      :s3_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about the revision of a custom plugin.</p>
    #
    # @!attribute content_type
    #   <p>The format of the plugin file.</p>
    #
    #   Enum, one of: ["JAR", "ZIP"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time that the custom plugin was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>The description of the custom plugin.</p>
    #
    #   @return [String]
    #
    # @!attribute file_description
    #   <p>Details about the custom plugin file.</p>
    #
    #   @return [CustomPluginFileDescription]
    #
    # @!attribute location
    #   <p>Information about the location of the custom plugin.</p>
    #
    #   @return [CustomPluginLocationDescription]
    #
    # @!attribute revision
    #   <p>The revision of the custom plugin.</p>
    #
    #   @return [Integer]
    #
    CustomPluginRevisionSummary = ::Struct.new(
      :content_type,
      :creation_time,
      :description,
      :file_description,
      :location,
      :revision,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.revision ||= 0
      end
    end

    # Includes enum constants for CustomPluginState
    #
    module CustomPluginState
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      CREATE_FAILED = "CREATE_FAILED"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      UPDATE_FAILED = "UPDATE_FAILED"

      # No documentation available.
      #
      DELETING = "DELETING"
    end

    # <p>A summary of the custom plugin.</p>
    #
    # @!attribute creation_time
    #   <p>The time that the custom plugin was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute custom_plugin_arn
    #   <p>The Amazon Resource Name (ARN) of the custom plugin.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_plugin_state
    #   <p>The state of the custom plugin.</p>
    #
    #   Enum, one of: ["CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATE_FAILED", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the custom plugin.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_revision
    #   <p>The latest revision of the custom plugin.</p>
    #
    #   @return [CustomPluginRevisionSummary]
    #
    # @!attribute name
    #   <p>The name of the custom plugin.</p>
    #
    #   @return [String]
    #
    CustomPluginSummary = ::Struct.new(
      :creation_time,
      :custom_plugin_arn,
      :custom_plugin_state,
      :description,
      :latest_revision,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connector_arn
    #   <p>The Amazon Resource Name (ARN) of the connector that you want to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute current_version
    #   <p>The current version of the connector that you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteConnectorInput = ::Struct.new(
      :connector_arn,
      :current_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connector_arn
    #   <p>The Amazon Resource Name (ARN) of the connector that you requested to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute connector_state
    #   <p>The state of the connector that you requested to delete.</p>
    #
    #   Enum, one of: ["RUNNING", "CREATING", "UPDATING", "DELETING", "FAILED"]
    #
    #   @return [String]
    #
    DeleteConnectorOutput = ::Struct.new(
      :connector_arn,
      :connector_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute custom_plugin_arn
    #   <p>The Amazon Resource Name (ARN) of the custom plugin that you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteCustomPluginInput = ::Struct.new(
      :custom_plugin_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute custom_plugin_arn
    #   <p>The Amazon Resource Name (ARN) of the custom plugin that you requested to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_plugin_state
    #   <p>The state of the custom plugin.</p>
    #
    #   Enum, one of: ["CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATE_FAILED", "DELETING"]
    #
    #   @return [String]
    #
    DeleteCustomPluginOutput = ::Struct.new(
      :custom_plugin_arn,
      :custom_plugin_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connector_arn
    #   <p>The Amazon Resource Name (ARN) of the connector that you want to describe.</p>
    #
    #   @return [String]
    #
    DescribeConnectorInput = ::Struct.new(
      :connector_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute capacity
    #   <p>Information about the capacity of the connector, whether it is auto scaled or
    #            provisioned.</p>
    #
    #   @return [CapacityDescription]
    #
    # @!attribute connector_arn
    #   <p>The Amazon Resource Name (ARN) of the connector.</p>
    #
    #   @return [String]
    #
    # @!attribute connector_configuration
    #   <p>A map of keys to values that represent the configuration for the connector.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute connector_description
    #   <p>A summary description of the connector.</p>
    #
    #   @return [String]
    #
    # @!attribute connector_name
    #   <p>The name of the connector.</p>
    #
    #   @return [String]
    #
    # @!attribute connector_state
    #   <p>The state of the connector.</p>
    #
    #   Enum, one of: ["RUNNING", "CREATING", "UPDATING", "DELETING", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time the connector was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute current_version
    #   <p>The current version of the connector.</p>
    #
    #   @return [String]
    #
    # @!attribute kafka_cluster
    #   <p>The Apache Kafka cluster that the connector is connected to.</p>
    #
    #   @return [KafkaClusterDescription]
    #
    # @!attribute kafka_cluster_client_authentication
    #   <p>The type of client authentication used to connect to the Apache Kafka cluster. The value
    #            is NONE when no client authentication is used.</p>
    #
    #   @return [KafkaClusterClientAuthenticationDescription]
    #
    # @!attribute kafka_cluster_encryption_in_transit
    #   <p>Details of encryption in transit to the Apache Kafka cluster.</p>
    #
    #   @return [KafkaClusterEncryptionInTransitDescription]
    #
    # @!attribute kafka_connect_version
    #   <p>The version of Kafka Connect. It has to be compatible with both the Apache Kafka
    #            cluster's version and the plugins.</p>
    #
    #   @return [String]
    #
    # @!attribute log_delivery
    #   <p>Details about delivering logs to Amazon CloudWatch Logs.</p>
    #
    #   @return [LogDeliveryDescription]
    #
    # @!attribute plugins
    #   <p>Specifies which plugins were used for this connector.</p>
    #
    #   @return [Array<PluginDescription>]
    #
    # @!attribute service_execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used by the connector to access Amazon
    #            Web Services resources.</p>
    #
    #   @return [String]
    #
    # @!attribute worker_configuration
    #   <p>Specifies which worker configuration was used for the connector.</p>
    #
    #   @return [WorkerConfigurationDescription]
    #
    # @!attribute state_description
    #   <p>Details about the state of a connector.</p>
    #
    #   @return [StateDescription]
    #
    DescribeConnectorOutput = ::Struct.new(
      :capacity,
      :connector_arn,
      :connector_configuration,
      :connector_description,
      :connector_name,
      :connector_state,
      :creation_time,
      :current_version,
      :kafka_cluster,
      :kafka_cluster_client_authentication,
      :kafka_cluster_encryption_in_transit,
      :kafka_connect_version,
      :log_delivery,
      :plugins,
      :service_execution_role_arn,
      :worker_configuration,
      :state_description,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::KafkaConnect::Types::DescribeConnectorOutput "\
          "capacity=#{capacity || 'nil'}, "\
          "connector_arn=#{connector_arn || 'nil'}, "\
          "connector_configuration=\"[SENSITIVE]\", "\
          "connector_description=#{connector_description || 'nil'}, "\
          "connector_name=#{connector_name || 'nil'}, "\
          "connector_state=#{connector_state || 'nil'}, "\
          "creation_time=#{creation_time || 'nil'}, "\
          "current_version=#{current_version || 'nil'}, "\
          "kafka_cluster=#{kafka_cluster || 'nil'}, "\
          "kafka_cluster_client_authentication=#{kafka_cluster_client_authentication || 'nil'}, "\
          "kafka_cluster_encryption_in_transit=#{kafka_cluster_encryption_in_transit || 'nil'}, "\
          "kafka_connect_version=#{kafka_connect_version || 'nil'}, "\
          "log_delivery=#{log_delivery || 'nil'}, "\
          "plugins=#{plugins || 'nil'}, "\
          "service_execution_role_arn=#{service_execution_role_arn || 'nil'}, "\
          "worker_configuration=#{worker_configuration || 'nil'}, "\
          "state_description=#{state_description || 'nil'}>"
      end
    end

    # @!attribute custom_plugin_arn
    #   <p>Returns information about a custom plugin.</p>
    #
    #   @return [String]
    #
    DescribeCustomPluginInput = ::Struct.new(
      :custom_plugin_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute creation_time
    #   <p>The time that the custom plugin was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute custom_plugin_arn
    #   <p>The Amazon Resource Name (ARN) of the custom plugin.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_plugin_state
    #   <p>The state of the custom plugin.</p>
    #
    #   Enum, one of: ["CREATING", "CREATE_FAILED", "ACTIVE", "UPDATING", "UPDATE_FAILED", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the custom plugin.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_revision
    #   <p>The latest successfully created revision of the custom plugin. If there are no
    #            successfully created revisions, this field will be absent.</p>
    #
    #   @return [CustomPluginRevisionSummary]
    #
    # @!attribute name
    #   <p>The name of the custom plugin.</p>
    #
    #   @return [String]
    #
    # @!attribute state_description
    #   <p>Details about the state of a custom plugin.</p>
    #
    #   @return [StateDescription]
    #
    DescribeCustomPluginOutput = ::Struct.new(
      :creation_time,
      :custom_plugin_arn,
      :custom_plugin_state,
      :description,
      :latest_revision,
      :name,
      :state_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute worker_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the worker configuration that you want to get
    #            information about.</p>
    #
    #   @return [String]
    #
    DescribeWorkerConfigurationInput = ::Struct.new(
      :worker_configuration_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute creation_time
    #   <p>The time that the worker configuration was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>The description of the worker configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_revision
    #   <p>The latest revision of the custom configuration.</p>
    #
    #   @return [WorkerConfigurationRevisionDescription]
    #
    # @!attribute name
    #   <p>The name of the worker configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute worker_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the custom configuration.</p>
    #
    #   @return [String]
    #
    DescribeWorkerConfigurationOutput = ::Struct.new(
      :creation_time,
      :description,
      :latest_revision,
      :name,
      :worker_configuration_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The settings for delivering logs to Amazon Kinesis Data Firehose.</p>
    #
    # @!attribute delivery_stream
    #   <p>The name of the Kinesis Data Firehose delivery stream that is the destination for log
    #            delivery.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Specifies whether connector logs get delivered to Amazon Kinesis Data Firehose.</p>
    #
    #   @return [Boolean]
    #
    FirehoseLogDelivery = ::Struct.new(
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

    # <p>A description of the settings for delivering logs to Amazon Kinesis Data
    #          Firehose.</p>
    #
    # @!attribute delivery_stream
    #   <p>The name of the Kinesis Data Firehose delivery stream that is the destination for log
    #            delivery.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Specifies whether connector logs get delivered to Amazon Kinesis Data Firehose.</p>
    #
    #   @return [Boolean]
    #
    FirehoseLogDeliveryDescription = ::Struct.new(
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

    # <p>HTTP Status Code 403: Access forbidden. Correct your credentials and then retry your
    #          request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ForbiddenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>HTTP Status Code 500: Unexpected internal server error. Retrying your request might
    #          resolve the issue.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServerErrorException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of the Apache Kafka cluster to which the connector is connected.</p>
    #
    # @!attribute apache_kafka_cluster
    #   <p>The Apache Kafka cluster to which the connector is connected.</p>
    #
    #   @return [ApacheKafkaCluster]
    #
    KafkaCluster = ::Struct.new(
      :apache_kafka_cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The client authentication information used in order to authenticate with the Apache
    #          Kafka cluster.</p>
    #
    # @!attribute authentication_type
    #   <p>The type of client authentication used to connect to the Apache Kafka cluster. Value
    #            NONE means that no client authentication is used.</p>
    #
    #   Enum, one of: ["NONE", "IAM"]
    #
    #   @return [String]
    #
    KafkaClusterClientAuthentication = ::Struct.new(
      :authentication_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The client authentication information used in order to authenticate with the Apache
    #          Kafka cluster.</p>
    #
    # @!attribute authentication_type
    #   <p>The type of client authentication used to connect to the Apache Kafka cluster. Value
    #            NONE means that no client authentication is used.</p>
    #
    #   Enum, one of: ["NONE", "IAM"]
    #
    #   @return [String]
    #
    KafkaClusterClientAuthenticationDescription = ::Struct.new(
      :authentication_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for KafkaClusterClientAuthenticationType
    #
    module KafkaClusterClientAuthenticationType
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      IAM = "IAM"
    end

    # <p>Details of how to connect to the Apache Kafka cluster.</p>
    #
    # @!attribute apache_kafka_cluster
    #   <p>The Apache Kafka cluster to which the connector is connected.</p>
    #
    #   @return [ApacheKafkaClusterDescription]
    #
    KafkaClusterDescription = ::Struct.new(
      :apache_kafka_cluster,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details of encryption in transit to the Apache Kafka cluster.</p>
    #
    # @!attribute encryption_type
    #   <p>The type of encryption in transit to the Apache Kafka cluster.</p>
    #
    #   Enum, one of: ["PLAINTEXT", "TLS"]
    #
    #   @return [String]
    #
    KafkaClusterEncryptionInTransit = ::Struct.new(
      :encryption_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The description of the encryption in transit to the Apache Kafka cluster.</p>
    #
    # @!attribute encryption_type
    #   <p>The type of encryption in transit to the Apache Kafka cluster.</p>
    #
    #   Enum, one of: ["PLAINTEXT", "TLS"]
    #
    #   @return [String]
    #
    KafkaClusterEncryptionInTransitDescription = ::Struct.new(
      :encryption_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for KafkaClusterEncryptionInTransitType
    #
    module KafkaClusterEncryptionInTransitType
      # No documentation available.
      #
      PLAINTEXT = "PLAINTEXT"

      # No documentation available.
      #
      TLS = "TLS"
    end

    # @!attribute connector_name_prefix
    #   <p>The name prefix that you want to use to search for and list connectors.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of connectors to list in one response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If the response of a ListConnectors operation is truncated, it will include a NextToken.
    #            Send this NextToken in a subsequent request to continue listing from where the previous
    #            operation left off.</p>
    #
    #   @return [String]
    #
    ListConnectorsInput = ::Struct.new(
      :connector_name_prefix,
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

    # @!attribute connectors
    #   <p>An array of connector descriptions.</p>
    #
    #   @return [Array<ConnectorSummary>]
    #
    # @!attribute next_token
    #   <p>If the response of a ListConnectors operation is truncated, it will include a NextToken.
    #            Send this NextToken in a subsequent request to continue listing from where it left
    #            off.</p>
    #
    #   @return [String]
    #
    ListConnectorsOutput = ::Struct.new(
      :connectors,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of custom plugins to list in one response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If the response of a ListCustomPlugins operation is truncated, it will include a
    #            NextToken. Send this NextToken in a subsequent request to continue listing from where the
    #            previous operation left off.</p>
    #
    #   @return [String]
    #
    ListCustomPluginsInput = ::Struct.new(
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

    # @!attribute custom_plugins
    #   <p>An array of custom plugin descriptions.</p>
    #
    #   @return [Array<CustomPluginSummary>]
    #
    # @!attribute next_token
    #   <p>If the response of a ListCustomPlugins operation is truncated, it will include a
    #            NextToken. Send this NextToken in a subsequent request to continue listing from where the
    #            previous operation left off.</p>
    #
    #   @return [String]
    #
    ListCustomPluginsOutput = ::Struct.new(
      :custom_plugins,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of worker configurations to list in one response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If the response of a ListWorkerConfigurations operation is truncated, it will include a
    #            NextToken. Send this NextToken in a subsequent request to continue listing from where the
    #            previous operation left off.</p>
    #
    #   @return [String]
    #
    ListWorkerConfigurationsInput = ::Struct.new(
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
    #   <p>If the response of a ListWorkerConfigurations operation is truncated, it will include a
    #            NextToken. Send this NextToken in a subsequent request to continue listing from where the
    #            previous operation left off.</p>
    #
    #   @return [String]
    #
    # @!attribute worker_configurations
    #   <p>An array of worker configuration descriptions.</p>
    #
    #   @return [Array<WorkerConfigurationSummary>]
    #
    ListWorkerConfigurationsOutput = ::Struct.new(
      :next_token,
      :worker_configurations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about log delivery.</p>
    #
    # @!attribute worker_log_delivery
    #   <p>The workers can send worker logs to different destination types. This configuration
    #            specifies the details of these destinations.</p>
    #
    #   @return [WorkerLogDelivery]
    #
    LogDelivery = ::Struct.new(
      :worker_log_delivery,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The description of the log delivery settings.</p>
    #
    # @!attribute worker_log_delivery
    #   <p>The workers can send worker logs to different destination types. This configuration
    #            specifies the details of these destinations.</p>
    #
    #   @return [WorkerLogDeliveryDescription]
    #
    LogDeliveryDescription = ::Struct.new(
      :worker_log_delivery,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>HTTP Status Code 404: Resource not found due to incorrect input. Correct your request
    #          and then retry it.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A plugin is an AWS resource that contains the code that defines your connector logic.
    #       </p>
    #
    # @!attribute custom_plugin
    #   <p>Details about a custom plugin.</p>
    #
    #   @return [CustomPlugin]
    #
    Plugin = ::Struct.new(
      :custom_plugin,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The description of the plugin.</p>
    #
    # @!attribute custom_plugin
    #   <p>Details about a custom plugin.</p>
    #
    #   @return [CustomPluginDescription]
    #
    PluginDescription = ::Struct.new(
      :custom_plugin,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about a connector's provisioned capacity.</p>
    #
    # @!attribute mcu_count
    #   <p>The number of microcontroller units (MCUs) allocated to each connector worker. The valid
    #            values are 1,2,4,8.</p>
    #
    #   @return [Integer]
    #
    # @!attribute worker_count
    #   <p>The number of workers that are allocated to the connector.</p>
    #
    #   @return [Integer]
    #
    ProvisionedCapacity = ::Struct.new(
      :mcu_count,
      :worker_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.mcu_count ||= 0
        self.worker_count ||= 0
      end
    end

    # <p>The description of a connector's provisioned capacity.</p>
    #
    # @!attribute mcu_count
    #   <p>The number of microcontroller units (MCUs) allocated to each connector worker. The valid
    #            values are 1,2,4,8.</p>
    #
    #   @return [Integer]
    #
    # @!attribute worker_count
    #   <p>The number of workers that are allocated to the connector.</p>
    #
    #   @return [Integer]
    #
    ProvisionedCapacityDescription = ::Struct.new(
      :mcu_count,
      :worker_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.mcu_count ||= 0
        self.worker_count ||= 0
      end
    end

    # <p>An update to a connector's fixed capacity.</p>
    #
    # @!attribute mcu_count
    #   <p>The number of microcontroller units (MCUs) allocated to each connector worker. The valid
    #            values are 1,2,4,8.</p>
    #
    #   @return [Integer]
    #
    # @!attribute worker_count
    #   <p>The number of workers that are allocated to the connector.</p>
    #
    #   @return [Integer]
    #
    ProvisionedCapacityUpdate = ::Struct.new(
      :mcu_count,
      :worker_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.mcu_count ||= 0
        self.worker_count ||= 0
      end
    end

    # <p>The location of an object in Amazon S3.</p>
    #
    # @!attribute bucket_arn
    #   <p>The Amazon Resource Name (ARN) of an S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute file_key
    #   <p>The file key for an object in an S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute object_version
    #   <p>The version of an object in an S3 bucket.</p>
    #
    #   @return [String]
    #
    S3Location = ::Struct.new(
      :bucket_arn,
      :file_key,
      :object_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The description of the location of an object in Amazon S3.</p>
    #
    # @!attribute bucket_arn
    #   <p>The Amazon Resource Name (ARN) of an S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute file_key
    #   <p>The file key for an object in an S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute object_version
    #   <p>The version of an object in an S3 bucket.</p>
    #
    #   @return [String]
    #
    S3LocationDescription = ::Struct.new(
      :bucket_arn,
      :file_key,
      :object_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about delivering logs to Amazon S3.</p>
    #
    # @!attribute bucket
    #   <p>The name of the S3 bucket that is the destination for log delivery.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Specifies whether connector logs get sent to the specified Amazon S3 destination.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute prefix
    #   <p>The S3 prefix that is the destination for log delivery.</p>
    #
    #   @return [String]
    #
    S3LogDelivery = ::Struct.new(
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

    # <p>The description of the details about delivering logs to Amazon S3.</p>
    #
    # @!attribute bucket
    #   <p>The name of the S3 bucket that is the destination for log delivery.</p>
    #
    #   @return [String]
    #
    # @!attribute enabled
    #   <p>Specifies whether connector logs get sent to the specified Amazon S3 destination.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute prefix
    #   <p>The S3 prefix that is the destination for log delivery.</p>
    #
    #   @return [String]
    #
    S3LogDeliveryDescription = ::Struct.new(
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

    # <p>The scale-in policy for the connector.</p>
    #
    # @!attribute cpu_utilization_percentage
    #   <p>Specifies the CPU utilization percentage threshold at which you want connector scale in
    #            to be triggered.</p>
    #
    #   @return [Integer]
    #
    ScaleInPolicy = ::Struct.new(
      :cpu_utilization_percentage,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.cpu_utilization_percentage ||= 0
      end
    end

    # <p>The description of the scale-in policy for the connector.</p>
    #
    # @!attribute cpu_utilization_percentage
    #   <p>Specifies the CPU utilization percentage threshold at which you want connector scale in
    #            to be triggered.</p>
    #
    #   @return [Integer]
    #
    ScaleInPolicyDescription = ::Struct.new(
      :cpu_utilization_percentage,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.cpu_utilization_percentage ||= 0
      end
    end

    # <p>An update to the connector's scale-in policy.</p>
    #
    # @!attribute cpu_utilization_percentage
    #   <p>The target CPU utilization percentage threshold at which you want connector scale in to
    #            be triggered.</p>
    #
    #   @return [Integer]
    #
    ScaleInPolicyUpdate = ::Struct.new(
      :cpu_utilization_percentage,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.cpu_utilization_percentage ||= 0
      end
    end

    # <p>The scale-out policy for the connector.</p>
    #
    # @!attribute cpu_utilization_percentage
    #   <p>The CPU utilization percentage threshold at which you want connector scale out to be
    #            triggered.</p>
    #
    #   @return [Integer]
    #
    ScaleOutPolicy = ::Struct.new(
      :cpu_utilization_percentage,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.cpu_utilization_percentage ||= 0
      end
    end

    # <p>The description of the scale-out policy for the connector.</p>
    #
    # @!attribute cpu_utilization_percentage
    #   <p>The CPU utilization percentage threshold at which you want connector scale out to be
    #            triggered.</p>
    #
    #   @return [Integer]
    #
    ScaleOutPolicyDescription = ::Struct.new(
      :cpu_utilization_percentage,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.cpu_utilization_percentage ||= 0
      end
    end

    # <p>An update to the connector's scale-out policy.</p>
    #
    # @!attribute cpu_utilization_percentage
    #   <p>The target CPU utilization percentage threshold at which you want connector scale out to
    #            be triggered.</p>
    #
    #   @return [Integer]
    #
    ScaleOutPolicyUpdate = ::Struct.new(
      :cpu_utilization_percentage,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.cpu_utilization_percentage ||= 0
      end
    end

    # <p>HTTP Status Code 503: Service Unavailable. Retrying your request in some time might
    #          resolve the issue.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceUnavailableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about the state of a resource.</p>
    #
    # @!attribute code
    #   <p>A code that describes the state of a resource.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A message that describes the state of a resource.</p>
    #
    #   @return [String]
    #
    StateDescription = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>HTTP Status Code 429: Limit exceeded. Resource limit reached.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyRequestsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>HTTP Status Code 401: Unauthorized request. The provided credentials couldn't be
    #          validated.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnauthorizedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute capacity
    #   <p>The target capacity.</p>
    #
    #   @return [CapacityUpdate]
    #
    # @!attribute connector_arn
    #   <p>The Amazon Resource Name (ARN) of the connector that you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute current_version
    #   <p>The current version of the connector that you want to update.</p>
    #
    #   @return [String]
    #
    UpdateConnectorInput = ::Struct.new(
      :capacity,
      :connector_arn,
      :current_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connector_arn
    #   <p>The Amazon Resource Name (ARN) of the connector.</p>
    #
    #   @return [String]
    #
    # @!attribute connector_state
    #   <p>The state of the connector.</p>
    #
    #   Enum, one of: ["RUNNING", "CREATING", "UPDATING", "DELETING", "FAILED"]
    #
    #   @return [String]
    #
    UpdateConnectorOutput = ::Struct.new(
      :connector_arn,
      :connector_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the VPC in which the connector resides.</p>
    #
    # @!attribute security_groups
    #   <p>The security groups for the connector.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute subnets
    #   <p>The subnets for the connector.</p>
    #
    #   @return [Array<String>]
    #
    Vpc = ::Struct.new(
      :security_groups,
      :subnets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The description of the VPC in which the connector resides.</p>
    #
    # @!attribute security_groups
    #   <p>The security groups for the connector.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute subnets
    #   <p>The subnets for the connector.</p>
    #
    #   @return [Array<String>]
    #
    VpcDescription = ::Struct.new(
      :security_groups,
      :subnets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration of the workers, which are the processes that run the connector
    #          logic.</p>
    #
    # @!attribute revision
    #   <p>The revision of the worker configuration.</p>
    #
    #   @return [Integer]
    #
    # @!attribute worker_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the worker configuration.</p>
    #
    #   @return [String]
    #
    WorkerConfiguration = ::Struct.new(
      :revision,
      :worker_configuration_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.revision ||= 0
      end
    end

    # <p>The description of the worker configuration.</p>
    #
    # @!attribute revision
    #   <p>The revision of the worker configuration.</p>
    #
    #   @return [Integer]
    #
    # @!attribute worker_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the worker configuration.</p>
    #
    #   @return [String]
    #
    WorkerConfigurationDescription = ::Struct.new(
      :revision,
      :worker_configuration_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.revision ||= 0
      end
    end

    # <p>The description of the worker configuration revision.</p>
    #
    # @!attribute creation_time
    #   <p>The time that the worker configuration was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>The description of the worker configuration revision.</p>
    #
    #   @return [String]
    #
    # @!attribute properties_file_content
    #   <p>Base64 encoded contents of the connect-distributed.properties file.</p>
    #
    #   @return [String]
    #
    # @!attribute revision
    #   <p>The description of a revision of the worker configuration.</p>
    #
    #   @return [Integer]
    #
    WorkerConfigurationRevisionDescription = ::Struct.new(
      :creation_time,
      :description,
      :properties_file_content,
      :revision,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.revision ||= 0
      end

      def to_s
        "#<struct AWS::SDK::KafkaConnect::Types::WorkerConfigurationRevisionDescription "\
          "creation_time=#{creation_time || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "properties_file_content=\"[SENSITIVE]\", "\
          "revision=#{revision || 'nil'}>"
      end
    end

    # <p>The summary of a worker configuration revision.</p>
    #
    # @!attribute creation_time
    #   <p>The time that a worker configuration revision was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>The description of a worker configuration revision.</p>
    #
    #   @return [String]
    #
    # @!attribute revision
    #   <p>The revision of a worker configuration.</p>
    #
    #   @return [Integer]
    #
    WorkerConfigurationRevisionSummary = ::Struct.new(
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

    # <p>The summary of a worker configuration.</p>
    #
    # @!attribute creation_time
    #   <p>The time that a worker configuration was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>The description of a worker configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_revision
    #   <p>The latest revision of a worker configuration.</p>
    #
    #   @return [WorkerConfigurationRevisionSummary]
    #
    # @!attribute name
    #   <p>The name of the worker configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute worker_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the worker configuration.</p>
    #
    #   @return [String]
    #
    WorkerConfigurationSummary = ::Struct.new(
      :creation_time,
      :description,
      :latest_revision,
      :name,
      :worker_configuration_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Workers can send worker logs to different destination types. This configuration
    #          specifies the details of these destinations.</p>
    #
    # @!attribute cloud_watch_logs
    #   <p>Details about delivering logs to Amazon CloudWatch Logs.</p>
    #
    #   @return [CloudWatchLogsLogDelivery]
    #
    # @!attribute firehose
    #   <p>Details about delivering logs to Amazon Kinesis Data Firehose.</p>
    #
    #   @return [FirehoseLogDelivery]
    #
    # @!attribute s3
    #   <p>Details about delivering logs to Amazon S3.</p>
    #
    #   @return [S3LogDelivery]
    #
    WorkerLogDelivery = ::Struct.new(
      :cloud_watch_logs,
      :firehose,
      :s3,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Workers can send worker logs to different destination types. This configuration
    #          specifies the details of these destinations.</p>
    #
    # @!attribute cloud_watch_logs
    #   <p>Details about delivering logs to Amazon CloudWatch Logs.</p>
    #
    #   @return [CloudWatchLogsLogDeliveryDescription]
    #
    # @!attribute firehose
    #   <p>Details about delivering logs to Amazon Kinesis Data Firehose.</p>
    #
    #   @return [FirehoseLogDeliveryDescription]
    #
    # @!attribute s3
    #   <p>Details about delivering logs to Amazon S3.</p>
    #
    #   @return [S3LogDeliveryDescription]
    #
    WorkerLogDeliveryDescription = ::Struct.new(
      :cloud_watch_logs,
      :firehose,
      :s3,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
