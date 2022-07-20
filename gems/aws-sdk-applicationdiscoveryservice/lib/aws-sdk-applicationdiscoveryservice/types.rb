# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ApplicationDiscoveryService
  module Types

    # <p>Information about agents or connectors that were instructed to start collecting data.
    #       Information includes the agent/connector ID, a description of the operation, and whether the
    #       agent/connector configuration was updated.</p>
    #
    # @!attribute agent_id
    #   <p>The agent/connector ID.</p>
    #
    #   @return [String]
    #
    # @!attribute operation_succeeded
    #   <p>Information about the status of the <code>StartDataCollection</code> and
    #           <code>StopDataCollection</code> operations. The system has recorded the data collection
    #         operation. The agent/connector receives this command the next time it polls for a new command.
    #       </p>
    #
    #   @return [Boolean]
    #
    # @!attribute description
    #   <p>A description of the operation performed.</p>
    #
    #   @return [String]
    #
    AgentConfigurationStatus = ::Struct.new(
      :agent_id,
      :operation_succeeded,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.operation_succeeded ||= false
      end
    end

    # <p>Information about agents or connectors associated with the user’s Amazon Web Services account.
    #       Information includes agent or connector IDs, IP addresses, media access control (MAC)
    #       addresses, agent or connector health, hostname where the agent or connector resides, and agent
    #       version for each agent.</p>
    #
    # @!attribute agent_id
    #   <p>The agent or connector ID.</p>
    #
    #   @return [String]
    #
    # @!attribute host_name
    #   <p>The name of the host where the agent or connector resides. The host can be a server or
    #         virtual machine.</p>
    #
    #   @return [String]
    #
    # @!attribute agent_network_info_list
    #   <p>Network details about the host where the agent or connector resides.</p>
    #
    #   @return [Array<AgentNetworkInfo>]
    #
    # @!attribute connector_id
    #   <p>The ID of the connector.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The agent or connector version.</p>
    #
    #   @return [String]
    #
    # @!attribute health
    #   <p>The health of the agent or connector.</p>
    #
    #   Enum, one of: ["HEALTHY", "UNHEALTHY", "RUNNING", "UNKNOWN", "BLACKLISTED", "SHUTDOWN"]
    #
    #   @return [String]
    #
    # @!attribute last_health_ping_time
    #   <p>Time since agent or connector health was reported.</p>
    #
    #   @return [String]
    #
    # @!attribute collection_status
    #   <p>Status of the collection process for an agent or connector.</p>
    #
    #   @return [String]
    #
    # @!attribute agent_type
    #   <p>Type of agent.</p>
    #
    #   @return [String]
    #
    # @!attribute registered_time
    #   <p>Agent's first registration timestamp in UTC.</p>
    #
    #   @return [String]
    #
    AgentInfo = ::Struct.new(
      :agent_id,
      :host_name,
      :agent_network_info_list,
      :connector_id,
      :version,
      :health,
      :last_health_ping_time,
      :collection_status,
      :agent_type,
      :registered_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Network details about the host where the agent/connector resides.</p>
    #
    # @!attribute ip_address
    #   <p>The IP address for the host where the agent/connector resides.</p>
    #
    #   @return [String]
    #
    # @!attribute mac_address
    #   <p>The MAC address for the host where the agent/connector resides.</p>
    #
    #   @return [String]
    #
    AgentNetworkInfo = ::Struct.new(
      :ip_address,
      :mac_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AgentStatus
    #
    module AgentStatus
      # No documentation available.
      #
      HEALTHY = "HEALTHY"

      # No documentation available.
      #
      UNHEALTHY = "UNHEALTHY"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      UNKNOWN = "UNKNOWN"

      # No documentation available.
      #
      BLACKLISTED = "BLACKLISTED"

      # No documentation available.
      #
      SHUTDOWN = "SHUTDOWN"
    end

    # @!attribute application_configuration_id
    #   <p>The configuration ID of an application with which items are to be associated.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_ids
    #   <p>The ID of each configuration item to be associated with an application.</p>
    #
    #   @return [Array<String>]
    #
    AssociateConfigurationItemsToApplicationInput = ::Struct.new(
      :application_configuration_id,
      :configuration_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateConfigurationItemsToApplicationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon Web Services user account does not have permission to perform the action. Check the IAM
    #       policy associated with this account.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AuthorizationErrorException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Error messages returned for each import task that you deleted as a response for this
    #       command.</p>
    #
    # @!attribute import_task_id
    #   <p>The unique import ID associated with the error that occurred.</p>
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>The type of error that occurred for a specific import task.</p>
    #
    #   Enum, one of: ["NOT_FOUND", "INTERNAL_SERVER_ERROR", "OVER_LIMIT"]
    #
    #   @return [String]
    #
    # @!attribute error_description
    #   <p>The description of the error that occurred for a specific import task.</p>
    #
    #   @return [String]
    #
    BatchDeleteImportDataError = ::Struct.new(
      :import_task_id,
      :error_code,
      :error_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BatchDeleteImportDataErrorCode
    #
    module BatchDeleteImportDataErrorCode
      # No documentation available.
      #
      NOT_FOUND = "NOT_FOUND"

      # No documentation available.
      #
      INTERNAL_SERVER_ERROR = "INTERNAL_SERVER_ERROR"

      # No documentation available.
      #
      OVER_LIMIT = "OVER_LIMIT"
    end

    # @!attribute import_task_ids
    #   <p>The IDs for the import tasks that you want to delete.</p>
    #
    #   @return [Array<String>]
    #
    BatchDeleteImportDataInput = ::Struct.new(
      :import_task_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute errors
    #   <p>Error messages returned for each import task that you deleted as a response for this
    #         command.</p>
    #
    #   @return [Array<BatchDeleteImportDataError>]
    #
    BatchDeleteImportDataOutput = ::Struct.new(
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConfigurationItemType
    #
    module ConfigurationItemType
      # No documentation available.
      #
      SERVER = "SERVER"

      # No documentation available.
      #
      PROCESS = "PROCESS"

      # No documentation available.
      #
      CONNECTIONS = "CONNECTION"

      # No documentation available.
      #
      APPLICATION = "APPLICATION"
    end

    # <p>Tags for a configuration item. Tags are metadata that help you categorize IT
    #       assets.</p>
    #
    # @!attribute configuration_type
    #   <p>A type of IT asset to tag.</p>
    #
    #   Enum, one of: ["SERVER", "PROCESS", "CONNECTION", "APPLICATION"]
    #
    #   @return [String]
    #
    # @!attribute configuration_id
    #   <p>The configuration ID for the item to tag. You can specify a list of keys and
    #         values.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>A type of tag on which to filter. For example,
    #         <i>serverType</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>A value on which to filter. For example <i>key = serverType</i> and
    #           <i>value = web server</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute time_of_creation
    #   <p>The time the configuration tag was created in Coordinated Universal Time
    #         (UTC).</p>
    #
    #   @return [Time]
    #
    ConfigurationTag = ::Struct.new(
      :configuration_type,
      :configuration_id,
      :key,
      :value,
      :time_of_creation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConflictErrorException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of continuous export descriptions.</p>
    #
    # @!attribute export_id
    #   <p>The unique ID assigned to this export.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Describes the status of the export. Can be one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>START_IN_PROGRESS - setting up resources to start continuous export.</p>
    #               </li>
    #               <li>
    #                  <p>START_FAILED - an error occurred setting up continuous export. To recover, call
    #             start-continuous-export again.</p>
    #               </li>
    #               <li>
    #                  <p>ACTIVE - data is being exported to the customer bucket.</p>
    #               </li>
    #               <li>
    #                  <p>ERROR - an error occurred during export. To fix the issue, call
    #             stop-continuous-export and start-continuous-export.</p>
    #               </li>
    #               <li>
    #                  <p>STOP_IN_PROGRESS - stopping the export.</p>
    #               </li>
    #               <li>
    #                  <p>STOP_FAILED - an error occurred stopping the export. To recover, call
    #             stop-continuous-export again.</p>
    #               </li>
    #               <li>
    #                  <p>INACTIVE - the continuous export has been stopped. Data is no longer being exported
    #             to the customer bucket.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["START_IN_PROGRESS", "START_FAILED", "ACTIVE", "ERROR", "STOP_IN_PROGRESS", "STOP_FAILED", "INACTIVE"]
    #
    #   @return [String]
    #
    # @!attribute status_detail
    #   <p>Contains information about any errors that have occurred. This data type can have the
    #         following values:</p>
    #
    #            <ul>
    #               <li>
    #                  <p>ACCESS_DENIED - You don’t have permission to start Data Exploration in Amazon
    #             Athena. Contact your Amazon Web Services administrator for help. For more information, see <a href="http://docs.aws.amazon.com/application-discovery/latest/userguide/setting-up.html">Setting Up Amazon Web Services Application Discovery Service</a> in the Application Discovery
    #             Service User Guide.</p>
    #               </li>
    #               <li>
    #                  <p>DELIVERY_STREAM_LIMIT_FAILURE - You reached the limit for Amazon Kinesis Data
    #             Firehose delivery streams. Reduce the number of streams or request a limit increase and
    #             try again. For more information, see <a href="http://docs.aws.amazon.com/streams/latest/dev/service-sizes-and-limits.html">Kinesis Data Streams Limits</a> in the Amazon Kinesis Data Streams Developer
    #             Guide.</p>
    #               </li>
    #               <li>
    #                  <p>FIREHOSE_ROLE_MISSING - The Data Exploration feature is in an error state because
    #             your IAM User is missing the AWSApplicationDiscoveryServiceFirehose role. Turn on Data
    #             Exploration in Amazon Athena and try again. For more information, see <a href="http://docs.aws.amazon.com/application-discovery/latest/userguide/setting-up.html setting-up-user-policy">Step 3: Provide Application Discovery Service Access to Non-Administrator Users by
    #               Attaching Policies</a> in the Application Discovery Service User Guide.</p>
    #               </li>
    #               <li>
    #                  <p>FIREHOSE_STREAM_DOES_NOT_EXIST - The Data Exploration feature is in an error state
    #             because your IAM User is missing one or more of the Kinesis data delivery
    #             streams.</p>
    #               </li>
    #               <li>
    #                  <p>INTERNAL_FAILURE - The Data Exploration feature is in an error state because of an
    #             internal failure. Try again later. If this problem persists, contact Amazon Web Services
    #             Support.</p>
    #               </li>
    #               <li>
    #                  <p>LAKE_FORMATION_ACCESS_DENIED - You don't have sufficient lake formation permissions
    #             to start continuous export. For more information, see <a href="http://docs.aws.amazon.com/lake-formation/latest/dg/upgrade-glue-lake-formation.html">
    #               Upgrading Amazon Web Services Glue Data Permissions to the Amazon Web Services Lake Formation Model </a> in the
    #             Amazon Web Services <i>Lake Formation Developer Guide</i>. </p>
    #                  <p>You can use one of the following two ways to resolve this issue.</p>
    #                  <ol>
    #                     <li>
    #                        <p>If you don’t want to use the Lake Formation permission model, you can change
    #                 the default Data Catalog settings to use only Amazon Web Services Identity and Access Management
    #                 (IAM) access control for new databases. For more information, see <a href="https://docs.aws.amazon.com/lake-formation/latest/dg/getting-started-setup.html setup-change-cat-settings">Change Data Catalog Settings</a> in the <i>Lake Formation
    #                     Developer Guide</i>.</p>
    #                     </li>
    #                     <li>
    #                        <p>You can give the service-linked IAM roles
    #                 AWSServiceRoleForApplicationDiscoveryServiceContinuousExport and
    #                 AWSApplicationDiscoveryServiceFirehose the required Lake Formation permissions. For
    #                 more information, see <a href="https://docs.aws.amazon.com/lake-formation/latest/dg/granting-database-permissions.html">
    #                   Granting Database Permissions</a> in the <i>Lake Formation
    #                     Developer Guide</i>. </p>
    #                        <ol>
    #                           <li>
    #                              <p>AWSServiceRoleForApplicationDiscoveryServiceContinuousExport - Grant
    #                     database creator permissions, which gives the role database creation ability and
    #                     implicit permissions for any created tables. For more information, see <a href="https://docs.aws.amazon.com/lake-formation/latest/dg/implicit-permissions.html">
    #                       Implicit Lake Formation Permissions </a> in the <i>Lake
    #                         Formation Developer Guide</i>.</p>
    #                           </li>
    #                           <li>
    #                              <p>AWSApplicationDiscoveryServiceFirehose - Grant describe permissions for all
    #                     tables in the database.</p>
    #                           </li>
    #                        </ol>
    #                     </li>
    #                  </ol>
    #               </li>
    #               <li>
    #                  <p>S3_BUCKET_LIMIT_FAILURE - You reached the limit for Amazon S3 buckets. Reduce the
    #             number of S3 buckets or request a limit increase and try again. For more
    #             information, see <a href="http://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html">Bucket
    #               Restrictions and Limitations</a> in the Amazon Simple Storage Service Developer
    #             Guide.</p>
    #               </li>
    #               <li>
    #                  <p>S3_NOT_SIGNED_UP - Your account is not signed up for the Amazon S3 service. You
    #             must sign up before you can use Amazon S3. You can sign up at the following URL: <a href="https://aws.amazon.com/s3">https://aws.amazon.com/s3</a>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket
    #   <p>The name of the s3 bucket where the export data parquet files are stored.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The timestamp representing when the continuous export was started.</p>
    #
    #   @return [Time]
    #
    # @!attribute stop_time
    #   <p>The timestamp that represents when this continuous export was stopped.</p>
    #
    #   @return [Time]
    #
    # @!attribute data_source
    #   <p>The type of data collector used to gather this data (currently only offered for
    #         AGENT).</p>
    #
    #   Enum, one of: ["AGENT"]
    #
    #   @return [String]
    #
    # @!attribute schema_storage_config
    #   <p>An object which describes how the data is stored.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>databaseName</code> - the name of the Glue database used to store the
    #             schema.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    ContinuousExportDescription = ::Struct.new(
      :export_id,
      :status,
      :status_detail,
      :s3_bucket,
      :start_time,
      :stop_time,
      :data_source,
      :schema_storage_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ContinuousExportStatus
    #
    module ContinuousExportStatus
      # No documentation available.
      #
      START_IN_PROGRESS = "START_IN_PROGRESS"

      # No documentation available.
      #
      START_FAILED = "START_FAILED"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      ERROR = "ERROR"

      # No documentation available.
      #
      STOP_IN_PROGRESS = "STOP_IN_PROGRESS"

      # No documentation available.
      #
      STOP_FAILED = "STOP_FAILED"

      # No documentation available.
      #
      INACTIVE = "INACTIVE"
    end

    # @!attribute name
    #   <p>Name of the application to be created.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Description of the application to be created.</p>
    #
    #   @return [String]
    #
    CreateApplicationInput = ::Struct.new(
      :name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_id
    #   <p>Configuration ID of an application to be created.</p>
    #
    #   @return [String]
    #
    CreateApplicationOutput = ::Struct.new(
      :configuration_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_ids
    #   <p>A list of configuration items that you want to tag.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>Tags that you want to associate with one or more configuration items. Specify the tags
    #         that you want to create in a <i>key</i>-<i>value</i> format. For
    #         example:</p>
    #            <p>
    #               <code>{"key": "serverType", "value": "webServer"}</code>
    #            </p>
    #
    #   @return [Array<Tag>]
    #
    CreateTagsInput = ::Struct.new(
      :configuration_ids,
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

    # <p>Inventory data for installed discovery agents.</p>
    #
    # @!attribute active_agents
    #   <p>Number of active discovery agents.</p>
    #
    #   @return [Integer]
    #
    # @!attribute healthy_agents
    #   <p>Number of healthy discovery agents</p>
    #
    #   @return [Integer]
    #
    # @!attribute black_listed_agents
    #   <p>Number of blacklisted discovery agents.</p>
    #
    #   @return [Integer]
    #
    # @!attribute shutdown_agents
    #   <p>Number of discovery agents with status SHUTDOWN.</p>
    #
    #   @return [Integer]
    #
    # @!attribute unhealthy_agents
    #   <p>Number of unhealthy discovery agents.</p>
    #
    #   @return [Integer]
    #
    # @!attribute total_agents
    #   <p>Total number of discovery agents.</p>
    #
    #   @return [Integer]
    #
    # @!attribute unknown_agents
    #   <p>Number of unknown discovery agents.</p>
    #
    #   @return [Integer]
    #
    CustomerAgentInfo = ::Struct.new(
      :active_agents,
      :healthy_agents,
      :black_listed_agents,
      :shutdown_agents,
      :unhealthy_agents,
      :total_agents,
      :unknown_agents,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.active_agents ||= 0
        self.healthy_agents ||= 0
        self.black_listed_agents ||= 0
        self.shutdown_agents ||= 0
        self.unhealthy_agents ||= 0
        self.total_agents ||= 0
        self.unknown_agents ||= 0
      end
    end

    # <p>Inventory data for installed discovery connectors.</p>
    #
    # @!attribute active_connectors
    #   <p>Number of active discovery connectors.</p>
    #
    #   @return [Integer]
    #
    # @!attribute healthy_connectors
    #   <p>Number of healthy discovery connectors.</p>
    #
    #   @return [Integer]
    #
    # @!attribute black_listed_connectors
    #   <p>Number of blacklisted discovery connectors.</p>
    #
    #   @return [Integer]
    #
    # @!attribute shutdown_connectors
    #   <p>Number of discovery connectors with status SHUTDOWN,</p>
    #
    #   @return [Integer]
    #
    # @!attribute unhealthy_connectors
    #   <p>Number of unhealthy discovery connectors.</p>
    #
    #   @return [Integer]
    #
    # @!attribute total_connectors
    #   <p>Total number of discovery connectors.</p>
    #
    #   @return [Integer]
    #
    # @!attribute unknown_connectors
    #   <p>Number of unknown discovery connectors.</p>
    #
    #   @return [Integer]
    #
    CustomerConnectorInfo = ::Struct.new(
      :active_connectors,
      :healthy_connectors,
      :black_listed_connectors,
      :shutdown_connectors,
      :unhealthy_connectors,
      :total_connectors,
      :unknown_connectors,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.active_connectors ||= 0
        self.healthy_connectors ||= 0
        self.black_listed_connectors ||= 0
        self.shutdown_connectors ||= 0
        self.unhealthy_connectors ||= 0
        self.total_connectors ||= 0
        self.unknown_connectors ||= 0
      end
    end

    # <p>
    #       The inventory data for installed Migration Evaluator collectors.
    #     </p>
    #
    # @!attribute active_me_collectors
    #   <p>
    #         The number of active Migration Evaluator collectors.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute healthy_me_collectors
    #   <p>
    #         The number of healthy Migration Evaluator collectors.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute deny_listed_me_collectors
    #   <p>
    #         The number of deny-listed Migration Evaluator collectors.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute shutdown_me_collectors
    #   <p>
    #         The number of Migration Evaluator collectors with <code>SHUTDOWN</code> status.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute unhealthy_me_collectors
    #   <p>
    #         The number of unhealthy Migration Evaluator collectors.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute total_me_collectors
    #   <p>
    #         The total number of Migration Evaluator collectors.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute unknown_me_collectors
    #   <p>
    #         The number of unknown Migration Evaluator collectors.
    #       </p>
    #
    #   @return [Integer]
    #
    CustomerMeCollectorInfo = ::Struct.new(
      :active_me_collectors,
      :healthy_me_collectors,
      :deny_listed_me_collectors,
      :shutdown_me_collectors,
      :unhealthy_me_collectors,
      :total_me_collectors,
      :unknown_me_collectors,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.active_me_collectors ||= 0
        self.healthy_me_collectors ||= 0
        self.deny_listed_me_collectors ||= 0
        self.shutdown_me_collectors ||= 0
        self.unhealthy_me_collectors ||= 0
        self.total_me_collectors ||= 0
        self.unknown_me_collectors ||= 0
      end
    end

    # Includes enum constants for DataSource
    #
    module DataSource
      # No documentation available.
      #
      AGENT = "AGENT"
    end

    # @!attribute configuration_ids
    #   <p>Configuration ID of an application to be deleted.</p>
    #
    #   @return [Array<String>]
    #
    DeleteApplicationsInput = ::Struct.new(
      :configuration_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteApplicationsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_ids
    #   <p>A list of configuration items with tags that you want to delete.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>Tags that you want to delete from one or more configuration items. Specify the tags
    #         that you want to delete in a <i>key</i>-<i>value</i> format. For
    #         example:</p>
    #            <p>
    #               <code>{"key": "serverType", "value": "webServer"}</code>
    #            </p>
    #
    #   @return [Array<Tag>]
    #
    DeleteTagsInput = ::Struct.new(
      :configuration_ids,
      :tags,
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

    # @!attribute agent_ids
    #   <p>The agent or the Connector IDs for which you want information. If you specify no IDs,
    #         the system returns information about all agents/Connectors associated with your Amazon Web Services user
    #         account.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute filters
    #   <p>You can filter the request using various logical operators and a
    #           <i>key</i>-<i>value</i> format. For example: </p>
    #            <p>
    #               <code>{"key": "collectionStatus", "value": "STARTED"}</code>
    #            </p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_results
    #   <p>The total number of agents/Connectors to return in a single page of output. The maximum
    #         value is 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Token to retrieve the next set of results. For example, if you previously specified 100
    #         IDs for <code>DescribeAgentsRequest$agentIds</code> but set
    #           <code>DescribeAgentsRequest$maxResults</code> to 10, you received a set of 10 results along
    #         with a token. Use that token in this query to get the next set of 10.</p>
    #
    #   @return [String]
    #
    DescribeAgentsInput = ::Struct.new(
      :agent_ids,
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

    # @!attribute agents_info
    #   <p>Lists agents or the Connector by ID or lists all agents/Connectors associated with your
    #         user account if you did not specify an agent/Connector ID. The output includes agent/Connector
    #         IDs, IP addresses, media access control (MAC) addresses, agent/Connector health, host name
    #         where the agent/Connector resides, and the version number of each agent/Connector.</p>
    #
    #   @return [Array<AgentInfo>]
    #
    # @!attribute next_token
    #   <p>Token to retrieve the next set of results. For example, if you specified 100 IDs for
    #           <code>DescribeAgentsRequest$agentIds</code> but set
    #           <code>DescribeAgentsRequest$maxResults</code> to 10, you received a set of 10 results along
    #         with this token. Use this token in the next query to retrieve the next set of 10.</p>
    #
    #   @return [String]
    #
    DescribeAgentsOutput = ::Struct.new(
      :agents_info,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_ids
    #   <p>One or more configuration IDs.</p>
    #
    #   @return [Array<String>]
    #
    DescribeConfigurationsInput = ::Struct.new(
      :configuration_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configurations
    #   <p>A key in the response map. The value is an array of data.</p>
    #
    #   @return [Array<Hash<String, String>>]
    #
    DescribeConfigurationsOutput = ::Struct.new(
      :configurations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute export_ids
    #   <p>The unique IDs assigned to the exports.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_results
    #   <p>A number between 1 and 100 specifying the maximum number of continuous export
    #         descriptions returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token from the previous call to <code>DescribeExportTasks</code>.</p>
    #
    #   @return [String]
    #
    DescribeContinuousExportsInput = ::Struct.new(
      :export_ids,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute descriptions
    #   <p>A list of continuous export descriptions.</p>
    #
    #   @return [Array<ContinuousExportDescription>]
    #
    # @!attribute next_token
    #   <p>The token from the previous call to <code>DescribeExportTasks</code>.</p>
    #
    #   @return [String]
    #
    DescribeContinuousExportsOutput = ::Struct.new(
      :descriptions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute export_ids
    #   <p>A list of continuous export IDs to search for.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_results
    #   <p>A number between 1 and 100 specifying the maximum number of continuous export
    #         descriptions returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token from the previous call to describe-export-tasks.</p>
    #
    #   @return [String]
    #
    DescribeExportConfigurationsInput = ::Struct.new(
      :export_ids,
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

    # @!attribute exports_info
    #   <p></p>
    #
    #   @return [Array<ExportInfo>]
    #
    # @!attribute next_token
    #   <p>The token from the previous call to describe-export-tasks.</p>
    #
    #   @return [String]
    #
    DescribeExportConfigurationsOutput = ::Struct.new(
      :exports_info,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute export_ids
    #   <p>One or more unique identifiers used to query the status of an export request.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute filters
    #   <p>One or more filters.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AgentId</code> - ID of the agent whose collected data will be
    #             exported</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<ExportFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of volume results returned by <code>DescribeExportTasks</code> in
    #         paginated output. When this parameter is used, <code>DescribeExportTasks</code> only returns
    #           <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #         response element.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #           <code>DescribeExportTasks</code> request where <code>maxResults</code> was used and the
    #         results exceeded the value of that parameter. Pagination continues from the end of the
    #         previous results that returned the <code>nextToken</code> value. This value is null when there
    #         are no more results to return.</p>
    #
    #   @return [String]
    #
    DescribeExportTasksInput = ::Struct.new(
      :export_ids,
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

    # @!attribute exports_info
    #   <p>Contains one or more sets of export request details. When the status of a request is
    #           <code>SUCCEEDED</code>, the response includes a URL for an Amazon S3 bucket where you can
    #         view the data in a CSV file.</p>
    #
    #   @return [Array<ExportInfo>]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value to include in a future
    #           <code>DescribeExportTasks</code> request. When the results of a
    #           <code>DescribeExportTasks</code> request exceed <code>maxResults</code>, this value can be
    #         used to retrieve the next page of results. This value is null when there are no more results
    #         to return.</p>
    #
    #   @return [String]
    #
    DescribeExportTasksOutput = ::Struct.new(
      :exports_info,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p>An array of name-value pairs that you provide to filter the results for the
    #           <code>DescribeImportTask</code> request to a specific subset of results. Currently, wildcard
    #         values aren't supported for filters.</p>
    #
    #   @return [Array<ImportTaskFilter>]
    #
    # @!attribute max_results
    #   <p>The maximum number of results that you want this request to return, up to 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to request a specific page of results.</p>
    #
    #   @return [String]
    #
    DescribeImportTasksInput = ::Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute tasks
    #   <p>A returned array of import tasks that match any applied filters, up to the specified
    #         number of maximum results.</p>
    #
    #   @return [Array<ImportTask>]
    #
    DescribeImportTasksOutput = ::Struct.new(
      :next_token,
      :tasks,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p>You can filter the list using a <i>key</i>-<i>value</i>
    #         format. You can separate these items by using logical operators. Allowed filters include
    #           <code>tagKey</code>, <code>tagValue</code>, and <code>configurationId</code>. </p>
    #
    #   @return [Array<TagFilter>]
    #
    # @!attribute max_results
    #   <p>The total number of items to return in a single page of output. The maximum value is
    #         100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    #
    #   @return [String]
    #
    DescribeTagsInput = ::Struct.new(
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

    # @!attribute tags
    #   <p>Depending on the input, this is a list of configuration items tagged with a specific
    #         tag, or a list of tags for a specific configuration item.</p>
    #
    #   @return [Array<ConfigurationTag>]
    #
    # @!attribute next_token
    #   <p>The call returns a token. Use this token to get the next set of results.</p>
    #
    #   @return [String]
    #
    DescribeTagsOutput = ::Struct.new(
      :tags,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_configuration_id
    #   <p>Configuration ID of an application from which each item is disassociated.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_ids
    #   <p>Configuration ID of each item to be disassociated from an application.</p>
    #
    #   @return [Array<String>]
    #
    DisassociateConfigurationItemsFromApplicationInput = ::Struct.new(
      :application_configuration_id,
      :configuration_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateConfigurationItemsFromApplicationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ExportConfigurationsInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute export_id
    #   <p>A unique identifier that you can use to query the export status.</p>
    #
    #   @return [String]
    #
    ExportConfigurationsOutput = ::Struct.new(
      :export_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ExportDataFormat
    #
    module ExportDataFormat
      # No documentation available.
      #
      CSV = "CSV"

      # No documentation available.
      #
      GRAPHML = "GRAPHML"
    end

    # <p>Used to select which agent's data is to be exported. A single agent ID may be selected
    #       for export using the <a href="http://docs.aws.amazon.com/application-discovery/latest/APIReference/API_StartExportTask.html">StartExportTask</a> action.</p>
    #
    # @!attribute name
    #   <p>A single <code>ExportFilter</code> name. Supported filters:
    #         <code>agentIds</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>A single agent ID for a Discovery Agent. An agent ID can be found using the <a href="http://docs.aws.amazon.com/application-discovery/latest/APIReference/API_DescribeAgents.html">DescribeAgents</a> action. Typically an ADS agent ID is in the form
    #           <code>o-0123456789abcdef0</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute condition
    #   <p>Supported condition: <code>EQUALS</code>
    #            </p>
    #
    #   @return [String]
    #
    ExportFilter = ::Struct.new(
      :name,
      :values,
      :condition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information regarding the export status of discovered data. The value is an array of
    #       objects.</p>
    #
    # @!attribute export_id
    #   <p>A unique identifier used to query an export.</p>
    #
    #   @return [String]
    #
    # @!attribute export_status
    #   <p>The status of the data export job.</p>
    #
    #   Enum, one of: ["FAILED", "SUCCEEDED", "IN_PROGRESS"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>A status message provided for API callers.</p>
    #
    #   @return [String]
    #
    # @!attribute configurations_download_url
    #   <p>A URL for an Amazon S3 bucket where you can review the exported data. The URL is
    #         displayed only if the export succeeded.</p>
    #
    #   @return [String]
    #
    # @!attribute export_request_time
    #   <p>The time that the data export was initiated.</p>
    #
    #   @return [Time]
    #
    # @!attribute is_truncated
    #   <p>If true, the export of agent information exceeded the size limit for a single export
    #         and the exported data is incomplete for the requested time range. To address this, select a
    #         smaller time range for the export by using <code>startDate</code> and
    #         <code>endDate</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute requested_start_time
    #   <p>The value of <code>startTime</code> parameter in the <code>StartExportTask</code>
    #         request. If no <code>startTime</code> was requested, this result does not appear in
    #           <code>ExportInfo</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute requested_end_time
    #   <p>The <code>endTime</code> used in the <code>StartExportTask</code> request. If no
    #           <code>endTime</code> was requested, this result does not appear in
    #         <code>ExportInfo</code>.</p>
    #
    #   @return [Time]
    #
    ExportInfo = ::Struct.new(
      :export_id,
      :export_status,
      :status_message,
      :configurations_download_url,
      :export_request_time,
      :is_truncated,
      :requested_start_time,
      :requested_end_time,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_truncated ||= false
      end
    end

    # Includes enum constants for ExportStatus
    #
    module ExportStatus
      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"
    end

    # <p>A filter that can use conditional operators.</p>
    #          <p>For more information about filters, see <a href="https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-api-queries.html">Querying Discovered
    #         Configuration Items</a> in the <i>Amazon Web Services Application Discovery Service User
    #         Guide</i>. </p>
    #
    # @!attribute name
    #   <p>The name of the filter.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>A string value on which to filter. For example, if you choose the
    #           <code>destinationServer.osVersion</code> filter name, you could specify <code>Ubuntu</code>
    #         for the value.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute condition
    #   <p>A conditional operator. The following operators are valid: EQUALS, NOT_EQUALS,
    #         CONTAINS, NOT_CONTAINS. If you specify multiple filters, the system utilizes all filters as
    #         though concatenated by <i>AND</i>. If you specify multiple values for a
    #         particular filter, the system differentiates the values using <i>OR</i>. Calling
    #         either <i>DescribeConfigurations</i> or <i>ListConfigurations</i>
    #         returns attributes of matching configuration items.</p>
    #
    #   @return [String]
    #
    Filter = ::Struct.new(
      :name,
      :values,
      :condition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetDiscoverySummaryInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute servers
    #   <p>The number of servers discovered.</p>
    #
    #   @return [Integer]
    #
    # @!attribute applications
    #   <p>The number of applications discovered.</p>
    #
    #   @return [Integer]
    #
    # @!attribute servers_mapped_to_applications
    #   <p>The number of servers mapped to applications.</p>
    #
    #   @return [Integer]
    #
    # @!attribute servers_mappedto_tags
    #   <p>The number of servers mapped to tags.</p>
    #
    #   @return [Integer]
    #
    # @!attribute agent_summary
    #   <p>Details about discovered agents, including agent status and health.</p>
    #
    #   @return [CustomerAgentInfo]
    #
    # @!attribute connector_summary
    #   <p>Details about discovered connectors, including connector status and health.</p>
    #
    #   @return [CustomerConnectorInfo]
    #
    # @!attribute me_collector_summary
    #   <p>
    #         Details about Migration Evaluator collectors, including collector status and health.
    #       </p>
    #
    #   @return [CustomerMeCollectorInfo]
    #
    GetDiscoverySummaryOutput = ::Struct.new(
      :servers,
      :applications,
      :servers_mapped_to_applications,
      :servers_mappedto_tags,
      :agent_summary,
      :connector_summary,
      :me_collector_summary,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.servers ||= 0
        self.applications ||= 0
        self.servers_mapped_to_applications ||= 0
        self.servers_mappedto_tags ||= 0
      end
    end

    # <p>The home region is not set. Set the home region to continue.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    HomeRegionNotSetException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ImportStatus
    #
    module ImportStatus
      # No documentation available.
      #
      IMPORT_IN_PROGRESS = "IMPORT_IN_PROGRESS"

      # No documentation available.
      #
      IMPORT_COMPLETE = "IMPORT_COMPLETE"

      # No documentation available.
      #
      IMPORT_COMPLETE_WITH_ERRORS = "IMPORT_COMPLETE_WITH_ERRORS"

      # No documentation available.
      #
      IMPORT_FAILED = "IMPORT_FAILED"

      # No documentation available.
      #
      IMPORT_FAILED_SERVER_LIMIT_EXCEEDED = "IMPORT_FAILED_SERVER_LIMIT_EXCEEDED"

      # No documentation available.
      #
      IMPORT_FAILED_RECORD_LIMIT_EXCEEDED = "IMPORT_FAILED_RECORD_LIMIT_EXCEEDED"

      # No documentation available.
      #
      DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS"

      # No documentation available.
      #
      DELETE_COMPLETE = "DELETE_COMPLETE"

      # No documentation available.
      #
      DELETE_FAILED = "DELETE_FAILED"

      # No documentation available.
      #
      DELETE_FAILED_LIMIT_EXCEEDED = "DELETE_FAILED_LIMIT_EXCEEDED"

      # No documentation available.
      #
      INTERNAL_ERROR = "INTERNAL_ERROR"
    end

    # <p>An array of information related to the import task request that includes status
    #       information, times, IDs, the Amazon S3 Object URL for the import file, and more.</p>
    #
    # @!attribute import_task_id
    #   <p>The unique ID for a specific import task. These IDs aren't globally unique, but they are
    #         unique within an Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique token used to prevent the same import request from occurring more than once. If
    #         you didn't provide a token, a token was automatically generated when the import task request
    #         was sent.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A descriptive name for an import task. You can use this name to filter future requests
    #         related to this import task, such as identifying applications and servers that were included
    #         in this import task. We recommend that you use a meaningful name for each import task.</p>
    #
    #   @return [String]
    #
    # @!attribute import_url
    #   <p>The URL for your import file that you've uploaded to Amazon S3.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the import task. An import can have the status of
    #           <code>IMPORT_COMPLETE</code> and still have some records fail to import from the overall
    #         request. More information can be found in the downloadable archive defined in the
    #           <code>errorsAndFailedEntriesZip</code> field, or in the Migration Hub management
    #         console.</p>
    #
    #   Enum, one of: ["IMPORT_IN_PROGRESS", "IMPORT_COMPLETE", "IMPORT_COMPLETE_WITH_ERRORS", "IMPORT_FAILED", "IMPORT_FAILED_SERVER_LIMIT_EXCEEDED", "IMPORT_FAILED_RECORD_LIMIT_EXCEEDED", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED", "DELETE_FAILED_LIMIT_EXCEEDED", "INTERNAL_ERROR"]
    #
    #   @return [String]
    #
    # @!attribute import_request_time
    #   <p>The time that the import task request was made, presented in the Unix time stamp
    #         format.</p>
    #
    #   @return [Time]
    #
    # @!attribute import_completion_time
    #   <p>The time that the import task request finished, presented in the Unix time stamp
    #         format.</p>
    #
    #   @return [Time]
    #
    # @!attribute import_deleted_time
    #   <p>The time that the import task request was deleted, presented in the Unix time stamp
    #         format.</p>
    #
    #   @return [Time]
    #
    # @!attribute server_import_success
    #   <p>The total number of server records in the import file that were successfully
    #         imported.</p>
    #
    #   @return [Integer]
    #
    # @!attribute server_import_failure
    #   <p>The total number of server records in the import file that failed to be imported.</p>
    #
    #   @return [Integer]
    #
    # @!attribute application_import_success
    #   <p>The total number of application records in the import file that were successfully
    #         imported.</p>
    #
    #   @return [Integer]
    #
    # @!attribute application_import_failure
    #   <p>The total number of application records in the import file that failed to be
    #         imported.</p>
    #
    #   @return [Integer]
    #
    # @!attribute errors_and_failed_entries_zip
    #   <p>A link to a compressed archive folder (in the ZIP format) that contains an error log and a
    #         file of failed records. You can use these two files to quickly identify records that failed,
    #         why they failed, and correct those records. Afterward, you can upload the corrected file to
    #         your Amazon S3 bucket and create another import task request.</p>
    #
    #            <p>This field also includes authorization information so you can confirm the authenticity of
    #         the compressed archive before you download it.</p>
    #
    #            <p>If some records failed to be imported we recommend that you correct the records in the
    #         failed entries file and then imports that failed entries file. This prevents you from having
    #         to correct and update the larger original file and attempt importing it again.</p>
    #
    #   @return [String]
    #
    ImportTask = ::Struct.new(
      :import_task_id,
      :client_request_token,
      :name,
      :import_url,
      :status,
      :import_request_time,
      :import_completion_time,
      :import_deleted_time,
      :server_import_success,
      :server_import_failure,
      :application_import_success,
      :application_import_failure,
      :errors_and_failed_entries_zip,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.server_import_success ||= 0
        self.server_import_failure ||= 0
        self.application_import_success ||= 0
        self.application_import_failure ||= 0
      end
    end

    # <p>A name-values pair of elements you can use to filter the results when querying your import
    #       tasks. Currently, wildcards are not supported for filters.</p>
    #
    #          <note>
    #             <p>When filtering by import status, all other filter values are ignored.</p>
    #          </note>
    #
    # @!attribute name
    #   <p>The name, status, or import task ID for a specific import task.</p>
    #
    #   Enum, one of: ["IMPORT_TASK_ID", "STATUS", "NAME"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>An array of strings that you can provide to match against a specific name, status, or
    #         import task ID to filter the results for your import task queries.</p>
    #
    #   @return [Array<String>]
    #
    ImportTaskFilter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ImportTaskFilterName
    #
    module ImportTaskFilterName
      # No documentation available.
      #
      IMPORT_TASK_ID = "IMPORT_TASK_ID"

      # No documentation available.
      #
      STATUS = "STATUS"

      # No documentation available.
      #
      NAME = "NAME"
    end

    # <p>One or more parameters are not valid. Verify the parameters and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidParameterException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The value of one or more parameters are either invalid or out of range. Verify the
    #       parameter values and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidParameterValueException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_type
    #   <p>A valid configuration identified by Application Discovery Service. </p>
    #
    #   Enum, one of: ["SERVER", "PROCESS", "CONNECTION", "APPLICATION"]
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>You can filter the request using various logical operators and a
    #           <i>key</i>-<i>value</i> format. For example: </p>
    #            <p>
    #               <code>{"key": "serverType", "value": "webServer"}</code>
    #            </p>
    #            <p>For a complete list of filter options and guidance about using them with this action,
    #         see <a href="https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-api-queries.html ListConfigurations">Using the ListConfigurations Action</a> in the <i>Amazon Web Services Application Discovery
    #           Service User Guide</i>.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute max_results
    #   <p>The total number of items to return. The maximum value is 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Token to retrieve the next set of results. For example, if a previous call to
    #         ListConfigurations returned 100 items, but you set
    #           <code>ListConfigurationsRequest$maxResults</code> to 10, you received a set of 10 results
    #         along with a token. Use that token in this query to get the next set of 10.</p>
    #
    #   @return [String]
    #
    # @!attribute order_by
    #   <p>Certain filter criteria return output that can be sorted in ascending or descending
    #         order. For a list of output characteristics for each filter, see <a href="https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-api-queries.html ListConfigurations">Using the ListConfigurations Action</a> in the <i>Amazon Web Services Application Discovery
    #           Service User Guide</i>.</p>
    #
    #   @return [Array<OrderByElement>]
    #
    ListConfigurationsInput = ::Struct.new(
      :configuration_type,
      :filters,
      :max_results,
      :next_token,
      :order_by,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute configurations
    #   <p>Returns configuration details, including the configuration ID, attribute names, and
    #         attribute values.</p>
    #
    #   @return [Array<Hash<String, String>>]
    #
    # @!attribute next_token
    #   <p>Token to retrieve the next set of results. For example, if your call to
    #         ListConfigurations returned 100 items, but you set
    #           <code>ListConfigurationsRequest$maxResults</code> to 10, you received a set of 10 results
    #         along with this token. Use this token in the next query to retrieve the next set of
    #         10.</p>
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

    # @!attribute configuration_id
    #   <p>Configuration ID of the server for which neighbors are being listed.</p>
    #
    #   @return [String]
    #
    # @!attribute port_information_needed
    #   <p>Flag to indicate if port and protocol information is needed as part of the
    #         response.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute neighbor_configuration_ids
    #   <p>List of configuration IDs to test for one-hop-away.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute max_results
    #   <p>Maximum number of results to return in a single page of output.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Token to retrieve the next set of results. For example, if you previously specified 100
    #         IDs for <code>ListServerNeighborsRequest$neighborConfigurationIds</code> but set
    #           <code>ListServerNeighborsRequest$maxResults</code> to 10, you received a set of 10 results
    #         along with a token. Use that token in this query to get the next set of 10.</p>
    #
    #   @return [String]
    #
    ListServerNeighborsInput = ::Struct.new(
      :configuration_id,
      :port_information_needed,
      :neighbor_configuration_ids,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.port_information_needed ||= false
        self.max_results ||= 0
      end
    end

    # @!attribute neighbors
    #   <p>List of distinct servers that are one hop away from the given server.</p>
    #
    #   @return [Array<NeighborConnectionDetail>]
    #
    # @!attribute next_token
    #   <p>Token to retrieve the next set of results. For example, if you specified 100 IDs for
    #           <code>ListServerNeighborsRequest$neighborConfigurationIds</code> but set
    #           <code>ListServerNeighborsRequest$maxResults</code> to 10, you received a set of 10 results
    #         along with this token. Use this token in the next query to retrieve the next set of
    #         10.</p>
    #
    #   @return [String]
    #
    # @!attribute known_dependency_count
    #   <p>Count of distinct servers that are one hop away from the given server.</p>
    #
    #   @return [Integer]
    #
    ListServerNeighborsOutput = ::Struct.new(
      :neighbors,
      :next_token,
      :known_dependency_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.known_dependency_count ||= 0
      end
    end

    # <p>Details about neighboring servers.</p>
    #
    # @!attribute source_server_id
    #   <p>The ID of the server that opened the network connection.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_server_id
    #   <p>The ID of the server that accepted the network connection.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_port
    #   <p>The destination network port for the connection.</p>
    #
    #   @return [Integer]
    #
    # @!attribute transport_protocol
    #   <p>The network protocol used for the connection.</p>
    #
    #   @return [String]
    #
    # @!attribute connections_count
    #   <p>The number of open network connections with the neighboring server.</p>
    #
    #   @return [Integer]
    #
    NeighborConnectionDetail = ::Struct.new(
      :source_server_id,
      :destination_server_id,
      :destination_port,
      :transport_protocol,
      :connections_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.connections_count ||= 0
      end
    end

    # <p>This operation is not permitted.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OperationNotPermittedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A field and direction for ordered output.</p>
    #
    # @!attribute field_name
    #   <p>The field on which to order.</p>
    #
    #   @return [String]
    #
    # @!attribute sort_order
    #   <p>Ordering direction.</p>
    #
    #   Enum, one of: ["ASC", "DESC"]
    #
    #   @return [String]
    #
    OrderByElement = ::Struct.new(
      :field_name,
      :sort_order,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This issue occurs when the same <code>clientRequestToken</code> is used with the
    #         <code>StartImportTask</code> action, but with different parameters. For example, you use the
    #       same request token but have two different import URLs, you can encounter this issue. If the
    #       import tasks are meant to be different, use a different <code>clientRequestToken</code>, and
    #       try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified configuration ID was not located. Verify the configuration ID and try
    #       again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The server experienced an internal error. Try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServerInternalErrorException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StartContinuousExportInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute export_id
    #   <p>The unique ID assigned to this export.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket
    #   <p>The name of the s3 bucket where the export data parquet files are stored.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The timestamp representing when the continuous export was started.</p>
    #
    #   @return [Time]
    #
    # @!attribute data_source
    #   <p>The type of data collector used to gather this data (currently only offered for
    #         AGENT).</p>
    #
    #   Enum, one of: ["AGENT"]
    #
    #   @return [String]
    #
    # @!attribute schema_storage_config
    #   <p>A dictionary which describes how the data is stored.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>databaseName</code> - the name of the Glue database used to store the
    #             schema.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    StartContinuousExportOutput = ::Struct.new(
      :export_id,
      :s3_bucket,
      :start_time,
      :data_source,
      :schema_storage_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute agent_ids
    #   <p>The IDs of the agents or connectors from which to start collecting data. If you send a
    #         request to an agent/connector ID that you do not have permission to contact, according to your
    #         Amazon Web Services account, the service does not throw an exception. Instead, it returns the error in the
    #           <i>Description</i> field. If you send a request to multiple agents/connectors
    #         and you do not have permission to contact some of those agents/connectors, the system does not
    #         throw an exception. Instead, the system shows <code>Failed</code> in the
    #           <i>Description</i> field.</p>
    #
    #   @return [Array<String>]
    #
    StartDataCollectionByAgentIdsInput = ::Struct.new(
      :agent_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute agents_configuration_status
    #   <p>Information about agents or the connector that were instructed to start collecting
    #         data. Information includes the agent/connector ID, a description of the operation performed,
    #         and whether the agent/connector configuration was updated.</p>
    #
    #   @return [Array<AgentConfigurationStatus>]
    #
    StartDataCollectionByAgentIdsOutput = ::Struct.new(
      :agents_configuration_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute export_data_format
    #   <p>The file format for the returned export data. Default value is <code>CSV</code>.
    #           <b>Note:</b>
    #               <i>The</i>
    #               <code>GRAPHML</code>
    #               <i>option has been deprecated.</i>
    #            </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute filters
    #   <p>If a filter is present, it selects the single <code>agentId</code> of the Application
    #         Discovery Agent for which data is exported. The <code>agentId</code> can be found in the
    #         results of the <code>DescribeAgents</code> API or CLI. If no filter is present,
    #           <code>startTime</code> and <code>endTime</code> are ignored and exported data includes both
    #         Agentless Discovery Connector data and summary data from Application Discovery agents.
    #       </p>
    #
    #   @return [Array<ExportFilter>]
    #
    # @!attribute start_time
    #   <p>The start timestamp for exported data from the single Application Discovery Agent
    #         selected in the filters. If no value is specified, data is exported starting from the first
    #         data collected by the agent.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The end timestamp for exported data from the single Application Discovery Agent
    #         selected in the filters. If no value is specified, exported data includes the most recent data
    #         collected by the agent.</p>
    #
    #   @return [Time]
    #
    StartExportTaskInput = ::Struct.new(
      :export_data_format,
      :filters,
      :start_time,
      :end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute export_id
    #   <p>A unique identifier used to query the status of an export request.</p>
    #
    #   @return [String]
    #
    StartExportTaskOutput = ::Struct.new(
      :export_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_request_token
    #   <p>Optional. A unique token that you can provide to prevent the same import request from
    #         occurring more than once. If you don't provide a token, a token is automatically
    #         generated.</p>
    #
    #            <p>Sending more than one <code>StartImportTask</code> request with the same client request
    #         token will return information about the original import task with that client request
    #         token.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A descriptive name for this request. You can use this name to filter future requests
    #         related to this import task, such as identifying applications and servers that were included
    #         in this import task. We recommend that you use a meaningful name for each import task.</p>
    #
    #   @return [String]
    #
    # @!attribute import_url
    #   <p>The URL for your import file that you've uploaded to Amazon S3.</p>
    #
    #            <note>
    #               <p>If you're using the Amazon Web Services CLI, this URL is structured as follows:
    #             <code>s3://BucketName/ImportFileName.CSV</code>
    #               </p>
    #            </note>
    #
    #   @return [String]
    #
    StartImportTaskInput = ::Struct.new(
      :client_request_token,
      :name,
      :import_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task
    #   <p>An array of information related to the import task request including status information,
    #         times, IDs, the Amazon S3 Object URL for the import file, and more. </p>
    #
    #   @return [ImportTask]
    #
    StartImportTaskOutput = ::Struct.new(
      :task,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute export_id
    #   <p>The unique ID assigned to this export.</p>
    #
    #   @return [String]
    #
    StopContinuousExportInput = ::Struct.new(
      :export_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute start_time
    #   <p>Timestamp that represents when this continuous export started collecting
    #         data.</p>
    #
    #   @return [Time]
    #
    # @!attribute stop_time
    #   <p>Timestamp that represents when this continuous export was stopped.</p>
    #
    #   @return [Time]
    #
    StopContinuousExportOutput = ::Struct.new(
      :start_time,
      :stop_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute agent_ids
    #   <p>The IDs of the agents or connectors from which to stop collecting data.</p>
    #
    #   @return [Array<String>]
    #
    StopDataCollectionByAgentIdsInput = ::Struct.new(
      :agent_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute agents_configuration_status
    #   <p>Information about the agents or connector that were instructed to stop collecting data.
    #         Information includes the agent/connector ID, a description of the operation performed, and
    #         whether the agent/connector configuration was updated.</p>
    #
    #   @return [Array<AgentConfigurationStatus>]
    #
    StopDataCollectionByAgentIdsOutput = ::Struct.new(
      :agents_configuration_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Metadata that help you categorize IT assets.</p>
    #          <important>
    #             <p>Do not store sensitive information (like personal data) in tags.</p>
    #          </important>
    #
    # @!attribute key
    #   <p>The type of tag on which to filter.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>A value for a tag key on which to filter.</p>
    #
    #   @return [String]
    #
    Tag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The tag filter. Valid names are: <code>tagKey</code>, <code>tagValue</code>,
    #         <code>configurationId</code>.</p>
    #
    # @!attribute name
    #   <p>A name of the tag filter.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>Values for the tag filter.</p>
    #
    #   @return [Array<String>]
    #
    TagFilter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_id
    #   <p>Configuration ID of the application to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>New name of the application to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>New description of the application to be updated.</p>
    #
    #   @return [String]
    #
    UpdateApplicationInput = ::Struct.new(
      :configuration_id,
      :name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateApplicationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OrderString
    #
    module OrderString
      # No documentation available.
      #
      ASC = "ASC"

      # No documentation available.
      #
      DESC = "DESC"
    end

  end
end
