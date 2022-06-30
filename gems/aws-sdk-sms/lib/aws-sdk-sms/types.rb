# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SMS
  module Types

    # Includes enum constants for AppLaunchConfigurationStatus
    #
    module AppLaunchConfigurationStatus
      # No documentation available.
      #
      NotConfigured = "NOT_CONFIGURED"

      # No documentation available.
      #
      Configured = "CONFIGURED"
    end

    # Includes enum constants for AppLaunchStatus
    #
    module AppLaunchStatus
      # No documentation available.
      #
      ReadyForConfiguration = "READY_FOR_CONFIGURATION"

      # No documentation available.
      #
      ConfigurationInProgress = "CONFIGURATION_IN_PROGRESS"

      # No documentation available.
      #
      ConfigurationInvalid = "CONFIGURATION_INVALID"

      # No documentation available.
      #
      ReadyForLaunch = "READY_FOR_LAUNCH"

      # No documentation available.
      #
      ValidationInProgress = "VALIDATION_IN_PROGRESS"

      # No documentation available.
      #
      LaunchPending = "LAUNCH_PENDING"

      # No documentation available.
      #
      LaunchInProgress = "LAUNCH_IN_PROGRESS"

      # No documentation available.
      #
      Launched = "LAUNCHED"

      # No documentation available.
      #
      PartiallyLaunched = "PARTIALLY_LAUNCHED"

      # No documentation available.
      #
      DeltaLaunchInProgress = "DELTA_LAUNCH_IN_PROGRESS"

      # No documentation available.
      #
      DeltaLaunchFailed = "DELTA_LAUNCH_FAILED"

      # No documentation available.
      #
      LaunchFailed = "LAUNCH_FAILED"

      # No documentation available.
      #
      TerminateInProgress = "TERMINATE_IN_PROGRESS"

      # No documentation available.
      #
      TerminateFailed = "TERMINATE_FAILED"

      # No documentation available.
      #
      Terminated = "TERMINATED"
    end

    # Includes enum constants for AppReplicationConfigurationStatus
    #
    module AppReplicationConfigurationStatus
      # No documentation available.
      #
      NotConfigured = "NOT_CONFIGURED"

      # No documentation available.
      #
      Configured = "CONFIGURED"
    end

    # Includes enum constants for AppReplicationStatus
    #
    module AppReplicationStatus
      # No documentation available.
      #
      ReadyForConfiguration = "READY_FOR_CONFIGURATION"

      # No documentation available.
      #
      ConfigurationInProgress = "CONFIGURATION_IN_PROGRESS"

      # No documentation available.
      #
      ConfigurationInvalid = "CONFIGURATION_INVALID"

      # No documentation available.
      #
      ReadyForReplication = "READY_FOR_REPLICATION"

      # No documentation available.
      #
      ValidationInProgress = "VALIDATION_IN_PROGRESS"

      # No documentation available.
      #
      ReplicationPending = "REPLICATION_PENDING"

      # No documentation available.
      #
      ReplicationInProgress = "REPLICATION_IN_PROGRESS"

      # No documentation available.
      #
      Replicated = "REPLICATED"

      # No documentation available.
      #
      PartiallyReplicated = "PARTIALLY_REPLICATED"

      # No documentation available.
      #
      DeltaReplicationInProgress = "DELTA_REPLICATION_IN_PROGRESS"

      # No documentation available.
      #
      DeltaReplicated = "DELTA_REPLICATED"

      # No documentation available.
      #
      DeltaReplicationFailed = "DELTA_REPLICATION_FAILED"

      # No documentation available.
      #
      ReplicationFailed = "REPLICATION_FAILED"

      # No documentation available.
      #
      ReplicationStopping = "REPLICATION_STOPPING"

      # No documentation available.
      #
      ReplicationStopFailed = "REPLICATION_STOP_FAILED"

      # No documentation available.
      #
      ReplicationStopped = "REPLICATION_STOPPED"
    end

    # Includes enum constants for AppStatus
    #
    module AppStatus
      # No documentation available.
      #
      Creating = "CREATING"

      # No documentation available.
      #
      Active = "ACTIVE"

      # No documentation available.
      #
      Updating = "UPDATING"

      # No documentation available.
      #
      Deleting = "DELETING"

      # No documentation available.
      #
      Deleted = "DELETED"

      # No documentation available.
      #
      DELETE_FAILED = "DELETE_FAILED"
    end

    # <p>Information about the application.</p>
    #
    # @!attribute app_id
    #   <p>The unique ID of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute imported_app_id
    #   <p>The ID of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Status of the application.</p>
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "DELETED", "DELETE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>A message related to the status of the application</p>
    #
    #   @return [String]
    #
    # @!attribute replication_configuration_status
    #   <p>Status of the replication configuration.</p>
    #
    #   Enum, one of: ["NOT_CONFIGURED", "CONFIGURED"]
    #
    #   @return [String]
    #
    # @!attribute replication_status
    #   <p>The replication status of the application.</p>
    #
    #   Enum, one of: ["READY_FOR_CONFIGURATION", "CONFIGURATION_IN_PROGRESS", "CONFIGURATION_INVALID", "READY_FOR_REPLICATION", "VALIDATION_IN_PROGRESS", "REPLICATION_PENDING", "REPLICATION_IN_PROGRESS", "REPLICATED", "PARTIALLY_REPLICATED", "DELTA_REPLICATION_IN_PROGRESS", "DELTA_REPLICATED", "DELTA_REPLICATION_FAILED", "REPLICATION_FAILED", "REPLICATION_STOPPING", "REPLICATION_STOP_FAILED", "REPLICATION_STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute replication_status_message
    #   <p>A message related to the replication status of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_replication_time
    #   <p>The timestamp of the application's most recent successful replication.</p>
    #
    #   @return [Time]
    #
    # @!attribute launch_configuration_status
    #   <p>Status of the launch configuration.</p>
    #
    #   Enum, one of: ["NOT_CONFIGURED", "CONFIGURED"]
    #
    #   @return [String]
    #
    # @!attribute launch_status
    #   <p>The launch status of the application.</p>
    #
    #   Enum, one of: ["READY_FOR_CONFIGURATION", "CONFIGURATION_IN_PROGRESS", "CONFIGURATION_INVALID", "READY_FOR_LAUNCH", "VALIDATION_IN_PROGRESS", "LAUNCH_PENDING", "LAUNCH_IN_PROGRESS", "LAUNCHED", "PARTIALLY_LAUNCHED", "DELTA_LAUNCH_IN_PROGRESS", "DELTA_LAUNCH_FAILED", "LAUNCH_FAILED", "TERMINATE_IN_PROGRESS", "TERMINATE_FAILED", "TERMINATED"]
    #
    #   @return [String]
    #
    # @!attribute launch_status_message
    #   <p>A message related to the launch status of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_details
    #   <p>Details about the latest launch of the application.</p>
    #
    #   @return [LaunchDetails]
    #
    # @!attribute creation_time
    #   <p>The creation time of the application.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified
    #   <p>The last modified time of the application.</p>
    #
    #   @return [Time]
    #
    # @!attribute role_name
    #   <p>The name of the service role in the customer's account used by Server Migration Service.</p>
    #
    #   @return [String]
    #
    # @!attribute total_server_groups
    #   <p>The number of server groups present in the application.</p>
    #
    #   @return [Integer]
    #
    # @!attribute total_servers
    #   <p>The number of servers present in the application.</p>
    #
    #   @return [Integer]
    #
    AppSummary = ::Struct.new(
      :app_id,
      :imported_app_id,
      :name,
      :description,
      :status,
      :status_message,
      :replication_configuration_status,
      :replication_status,
      :replication_status_message,
      :latest_replication_time,
      :launch_configuration_status,
      :launch_status,
      :launch_status_message,
      :launch_details,
      :creation_time,
      :last_modified,
      :role_name,
      :total_server_groups,
      :total_servers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration for validating an application.</p>
    #
    # @!attribute validation_id
    #   <p>The ID of the validation.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute app_validation_strategy
    #   <p>The validation strategy.</p>
    #
    #   Enum, one of: ["SSM"]
    #
    #   @return [String]
    #
    # @!attribute ssm_validation_parameters
    #   <p>The validation parameters.</p>
    #
    #   @return [SSMValidationParameters]
    #
    AppValidationConfiguration = ::Struct.new(
      :validation_id,
      :name,
      :app_validation_strategy,
      :ssm_validation_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Output from validating an application.</p>
    #
    # @!attribute ssm_output
    #   <p>Output from using SSM to validate the application.</p>
    #
    #   @return [SSMOutput]
    #
    AppValidationOutput = ::Struct.new(
      :ssm_output,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AppValidationStrategy
    #
    module AppValidationStrategy
      # No documentation available.
      #
      SSM = "SSM"
    end

    # <p>Represents a connector.</p>
    #
    # @!attribute connector_id
    #   <p>The ID of the connector.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The connector version.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the connector.</p>
    #
    #   Enum, one of: ["HEALTHY", "UNHEALTHY"]
    #
    #   @return [String]
    #
    # @!attribute capability_list
    #   <p>The capabilities of the connector.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute vm_manager_name
    #   <p>The name of the VM manager.</p>
    #
    #   @return [String]
    #
    # @!attribute vm_manager_type
    #   <p>The VM management product.</p>
    #
    #   Enum, one of: ["VSPHERE", "SCVMM", "HYPERV-MANAGER"]
    #
    #   @return [String]
    #
    # @!attribute vm_manager_id
    #   <p>The ID of the VM manager.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_address
    #   <p>The IP address of the connector.</p>
    #
    #   @return [String]
    #
    # @!attribute mac_address
    #   <p>The MAC address of the connector.</p>
    #
    #   @return [String]
    #
    # @!attribute associated_on
    #   <p>The time the connector was associated.</p>
    #
    #   @return [Time]
    #
    Connector = ::Struct.new(
      :connector_id,
      :version,
      :status,
      :capability_list,
      :vm_manager_name,
      :vm_manager_type,
      :vm_manager_id,
      :ip_address,
      :mac_address,
      :associated_on,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConnectorCapability
    #
    module ConnectorCapability
      # No documentation available.
      #
      vSphere = "VSPHERE"

      # No documentation available.
      #
      scvmm = "SCVMM"

      # No documentation available.
      #
      hyperVManager = "HYPERV-MANAGER"

      # No documentation available.
      #
      snapshotBatching = "SNAPSHOT_BATCHING"

      # No documentation available.
      #
      smsOptimized = "SMS_OPTIMIZED"
    end

    # Includes enum constants for ConnectorStatus
    #
    module ConnectorStatus
      # No documentation available.
      #
      Healthy = "HEALTHY"

      # No documentation available.
      #
      Unhealthy = "UNHEALTHY"
    end

    # @!attribute name
    #   <p>The name of the new application.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the new application</p>
    #
    #   @return [String]
    #
    # @!attribute role_name
    #   <p>The name of the service role in the customer's account to be used by Server Migration Service.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of
    #               application creation.</p>
    #
    #   @return [String]
    #
    # @!attribute server_groups
    #   <p>The server groups to include in the application.</p>
    #
    #   @return [Array<ServerGroup>]
    #
    # @!attribute tags
    #   <p>The tags to be associated with the application.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateAppInput = ::Struct.new(
      :name,
      :description,
      :role_name,
      :client_token,
      :server_groups,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_summary
    #   <p>A summary description of the application.</p>
    #
    #   @return [AppSummary]
    #
    # @!attribute server_groups
    #   <p>The server groups included in the application.</p>
    #
    #   @return [Array<ServerGroup>]
    #
    # @!attribute tags
    #   <p>The tags associated with the application.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateAppOutput = ::Struct.new(
      :app_summary,
      :server_groups,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute server_id
    #   <p>The ID of the server.</p>
    #
    #   @return [String]
    #
    # @!attribute seed_replication_time
    #   <p>The seed replication time.</p>
    #
    #   @return [Time]
    #
    # @!attribute frequency
    #   <p>The time between consecutive replication runs, in hours.</p>
    #
    #   @return [Integer]
    #
    # @!attribute run_once
    #   <p>Indicates whether to run the replication job one time.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute license_type
    #   <p>The license type to be used for the AMI created by a successful replication
    #               run.</p>
    #
    #   Enum, one of: ["AWS", "BYOL"]
    #
    #   @return [String]
    #
    # @!attribute role_name
    #   <p>The name of the IAM role to be used by the Server Migration Service.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the replication job.</p>
    #
    #   @return [String]
    #
    # @!attribute number_of_recent_amis_to_keep
    #   <p>The maximum number of SMS-created AMIs to retain. The oldest is deleted after the
    #               maximum number is reached and a new AMI is created.</p>
    #
    #   @return [Integer]
    #
    # @!attribute encrypted
    #   <p>Indicates whether the replication job produces encrypted AMIs.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute kms_key_id
    #   <p>The ID of the KMS key for replication jobs that produce encrypted AMIs.
    #               This value can be any of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>KMS key ID</p>
    #               </li>
    #               <li>
    #                   <p>KMS key alias</p>
    #               </li>
    #               <li>
    #                   <p>ARN referring to the KMS key ID</p>
    #               </li>
    #               <li>
    #                   <p>ARN referring to the KMS key alias</p>
    #               </li>
    #            </ul>
    #           <p> If encrypted is <i>true</i> but a KMS key ID is not specified, the
    #               customer's default KMS key for Amazon EBS is used. </p>
    #
    #   @return [String]
    #
    CreateReplicationJobInput = ::Struct.new(
      :server_id,
      :seed_replication_time,
      :frequency,
      :run_once,
      :license_type,
      :role_name,
      :description,
      :number_of_recent_amis_to_keep,
      :encrypted,
      :kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute replication_job_id
    #   <p>The unique identifier of the replication job.</p>
    #
    #   @return [String]
    #
    CreateReplicationJobOutput = ::Struct.new(
      :replication_job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute force_stop_app_replication
    #   <p>Indicates whether to stop all replication jobs corresponding to the servers
    #               in the application while deleting the application.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute force_terminate_app
    #   <p>Indicates whether to terminate the stack corresponding to the
    #               application while deleting the application.</p>
    #
    #   @return [Boolean]
    #
    DeleteAppInput = ::Struct.new(
      :app_id,
      :force_stop_app_replication,
      :force_terminate_app,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #
    #   @return [String]
    #
    DeleteAppLaunchConfigurationInput = ::Struct.new(
      :app_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAppLaunchConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAppOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #
    #   @return [String]
    #
    DeleteAppReplicationConfigurationInput = ::Struct.new(
      :app_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAppReplicationConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #
    #   @return [String]
    #
    DeleteAppValidationConfigurationInput = ::Struct.new(
      :app_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAppValidationConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute replication_job_id
    #   <p>The ID of the replication job.</p>
    #
    #   @return [String]
    #
    DeleteReplicationJobInput = ::Struct.new(
      :replication_job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteReplicationJobOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteServerCatalogInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteServerCatalogOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connector_id
    #   <p>The ID of the connector.</p>
    #
    #   @return [String]
    #
    DisassociateConnectorInput = ::Struct.new(
      :connector_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateConnectorOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The user has the required permissions, so the request would have succeeded,
    #             but a dry run was performed.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DryRunOperationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application associated with the change set.</p>
    #
    #   @return [String]
    #
    # @!attribute changeset_format
    #   <p>The format for the change set.</p>
    #
    #   Enum, one of: ["JSON", "YAML"]
    #
    #   @return [String]
    #
    GenerateChangeSetInput = ::Struct.new(
      :app_id,
      :changeset_format,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute s3_location
    #   <p>The location of the Amazon S3 object.</p>
    #
    #   @return [S3Location]
    #
    GenerateChangeSetOutput = ::Struct.new(
      :s3_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application associated with the CloudFormation template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_format
    #   <p>The format for generating the CloudFormation template.</p>
    #
    #   Enum, one of: ["JSON", "YAML"]
    #
    #   @return [String]
    #
    GenerateTemplateInput = ::Struct.new(
      :app_id,
      :template_format,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute s3_location
    #   <p>The location of the Amazon S3 object.</p>
    #
    #   @return [S3Location]
    #
    GenerateTemplateOutput = ::Struct.new(
      :s3_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #
    #   @return [String]
    #
    GetAppInput = ::Struct.new(
      :app_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #
    #   @return [String]
    #
    GetAppLaunchConfigurationInput = ::Struct.new(
      :app_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute role_name
    #   <p>The name of the service role in the customer's account that CloudFormation uses to launch the
    #               application.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_launch
    #   <p>Indicates whether the application is configured to launch automatically after replication is complete.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute server_group_launch_configurations
    #   <p>The launch configurations for server groups in this application.</p>
    #
    #   @return [Array<ServerGroupLaunchConfiguration>]
    #
    GetAppLaunchConfigurationOutput = ::Struct.new(
      :app_id,
      :role_name,
      :auto_launch,
      :server_group_launch_configurations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_summary
    #   <p>Information about the application.</p>
    #
    #   @return [AppSummary]
    #
    # @!attribute server_groups
    #   <p>The server groups that belong to the application.</p>
    #
    #   @return [Array<ServerGroup>]
    #
    # @!attribute tags
    #   <p>The tags associated with the application.</p>
    #
    #   @return [Array<Tag>]
    #
    GetAppOutput = ::Struct.new(
      :app_summary,
      :server_groups,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #
    #   @return [String]
    #
    GetAppReplicationConfigurationInput = ::Struct.new(
      :app_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute server_group_replication_configurations
    #   <p>The replication configurations associated with server groups in this application.</p>
    #
    #   @return [Array<ServerGroupReplicationConfiguration>]
    #
    GetAppReplicationConfigurationOutput = ::Struct.new(
      :server_group_replication_configurations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #
    #   @return [String]
    #
    GetAppValidationConfigurationInput = ::Struct.new(
      :app_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_validation_configurations
    #   <p>The configuration for application validation.</p>
    #
    #   @return [Array<AppValidationConfiguration>]
    #
    # @!attribute server_group_validation_configurations
    #   <p>The configuration for instance validation.</p>
    #
    #   @return [Array<ServerGroupValidationConfiguration>]
    #
    GetAppValidationConfigurationOutput = ::Struct.new(
      :app_validation_configurations,
      :server_group_validation_configurations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #
    #   @return [String]
    #
    GetAppValidationOutputInput = ::Struct.new(
      :app_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute validation_output_list
    #   <p>The validation output.</p>
    #
    #   @return [Array<ValidationOutput>]
    #
    GetAppValidationOutputOutput = ::Struct.new(
      :validation_output_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. The default value is 50.
    #               To retrieve the remaining results, make another call with the returned
    #                   <code>NextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    GetConnectorsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connector_list
    #   <p>Information about the registered connectors.</p>
    #
    #   @return [Array<Connector>]
    #
    # @!attribute next_token
    #   <p>The token required to retrieve the next set of results. This value is null when
    #               there are no more results to return.</p>
    #
    #   @return [String]
    #
    GetConnectorsOutput = ::Struct.new(
      :connector_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute replication_job_id
    #   <p>The ID of the replication job.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. The default value is 50.
    #               To retrieve the remaining results, make another call with the returned
    #                   <code>NextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    GetReplicationJobsInput = ::Struct.new(
      :replication_job_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute replication_job_list
    #   <p>Information about the replication jobs.</p>
    #
    #   @return [Array<ReplicationJob>]
    #
    # @!attribute next_token
    #   <p>The token required to retrieve the next set of results. This value is null when
    #               there are no more results to return.</p>
    #
    #   @return [String]
    #
    GetReplicationJobsOutput = ::Struct.new(
      :replication_job_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute replication_job_id
    #   <p>The ID of the replication job.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. The default value is 50.
    #               To retrieve the remaining results, make another call with the returned
    #                   <code>NextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    GetReplicationRunsInput = ::Struct.new(
      :replication_job_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute replication_job
    #   <p>Information about the replication job.</p>
    #
    #   @return [ReplicationJob]
    #
    # @!attribute replication_run_list
    #   <p>Information about the replication runs.</p>
    #
    #   @return [Array<ReplicationRun>]
    #
    # @!attribute next_token
    #   <p>The token required to retrieve the next set of results. This value is null when
    #               there are no more results to return.</p>
    #
    #   @return [String]
    #
    GetReplicationRunsOutput = ::Struct.new(
      :replication_job,
      :replication_run_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. The default value is 50.
    #               To retrieve the remaining results, make another call with the returned
    #                   <code>NextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute vm_server_address_list
    #   <p>The server addresses.</p>
    #
    #   @return [Array<VmServerAddress>]
    #
    GetServersInput = ::Struct.new(
      :next_token,
      :max_results,
      :vm_server_address_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute last_modified_on
    #   <p>The time when the server was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute server_catalog_status
    #   <p>The status of the server catalog.</p>
    #
    #   Enum, one of: ["NOT_IMPORTED", "IMPORTING", "AVAILABLE", "DELETED", "EXPIRED"]
    #
    #   @return [String]
    #
    # @!attribute server_list
    #   <p>Information about the servers.</p>
    #
    #   @return [Array<Server>]
    #
    # @!attribute next_token
    #   <p>The token required to retrieve the next set of results. This value is null when
    #               there are no more results to return.</p>
    #
    #   @return [String]
    #
    GetServersOutput = ::Struct.new(
      :last_modified_on,
      :server_catalog_status,
      :server_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute role_name
    #   <p>The name of the service role. If you omit this parameter, we create a service-linked role
    #               for Migration Hub in your account. Otherwise, the role that you provide must have the <a href="https://docs.aws.amazon.com/migrationhub/latest/ug/new-customer-setup.html sms-managed">policy
    #                   and trust policy</a> described in the <i>Migration Hub User Guide</i>.</p>
    #
    #   @return [String]
    #
    ImportAppCatalogInput = ::Struct.new(
      :role_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ImportAppCatalogOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ImportServerCatalogInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ImportServerCatalogOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An internal error occurred.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalError = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A specified parameter is not valid.</p>
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

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #
    #   @return [String]
    #
    LaunchAppInput = ::Struct.new(
      :app_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    LaunchAppOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about the latest launch of an application.</p>
    #
    # @!attribute latest_launch_time
    #   <p>The latest time that this application was launched successfully.</p>
    #
    #   @return [Time]
    #
    # @!attribute stack_name
    #   <p>The name of the latest stack launched for this application.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_id
    #   <p>The ID of the latest stack launched for this application.</p>
    #
    #   @return [String]
    #
    LaunchDetails = ::Struct.new(
      :latest_launch_time,
      :stack_name,
      :stack_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LicenseType
    #
    module LicenseType
      # No documentation available.
      #
      AWS = "AWS"

      # No documentation available.
      #
      BYOL = "BYOL"
    end

    # @!attribute app_ids
    #   <p>The unique application IDs.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. The default value is 100. To
    #               retrieve the remaining results, make another call with the returned
    #                   <code>NextToken</code> value. </p>
    #
    #   @return [Integer]
    #
    ListAppsInput = ::Struct.new(
      :app_ids,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute apps
    #   <p>The application summaries.</p>
    #
    #   @return [Array<AppSummary>]
    #
    # @!attribute next_token
    #   <p>The token required to retrieve the next set of results. This value is null when there
    #               are no more results to return.</p>
    #
    #   @return [String]
    #
    ListAppsOutput = ::Struct.new(
      :apps,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A required parameter is missing.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    MissingRequiredParameterException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There are no connectors available.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NoConnectorsAvailableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the status of validating an application.</p>
    #
    # @!attribute validation_id
    #   <p>The ID of the validation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the validation.</p>
    #
    #   Enum, one of: ["READY_FOR_VALIDATION", "PENDING", "IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>The status message.</p>
    #
    #   @return [String]
    #
    NotificationContext = ::Struct.new(
      :validation_id,
      :status,
      :status_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute notification_context
    #   <p>The notification information.</p>
    #
    #   @return [NotificationContext]
    #
    NotifyAppValidationOutputInput = ::Struct.new(
      :app_id,
      :notification_context,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    NotifyAppValidationOutputOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This operation is not allowed.</p>
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

    # Includes enum constants for OutputFormat
    #
    module OutputFormat
      # No documentation available.
      #
      JSON = "JSON"

      # No documentation available.
      #
      YAML = "YAML"
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute role_name
    #   <p>The name of service role in the customer's account that CloudFormation uses to launch the
    #               application.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_launch
    #   <p>Indicates whether the application is configured to launch automatically after replication is complete.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute server_group_launch_configurations
    #   <p>Information about the launch configurations for server groups in the application.</p>
    #
    #   @return [Array<ServerGroupLaunchConfiguration>]
    #
    PutAppLaunchConfigurationInput = ::Struct.new(
      :app_id,
      :role_name,
      :auto_launch,
      :server_group_launch_configurations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutAppLaunchConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute server_group_replication_configurations
    #   <p>Information about the replication configurations for server groups in the application.</p>
    #
    #   @return [Array<ServerGroupReplicationConfiguration>]
    #
    PutAppReplicationConfigurationInput = ::Struct.new(
      :app_id,
      :server_group_replication_configurations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutAppReplicationConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute app_validation_configurations
    #   <p>The configuration for application validation.</p>
    #
    #   @return [Array<AppValidationConfiguration>]
    #
    # @!attribute server_group_validation_configurations
    #   <p>The configuration for instance validation.</p>
    #
    #   @return [Array<ServerGroupValidationConfiguration>]
    #
    PutAppValidationConfigurationInput = ::Struct.new(
      :app_id,
      :app_validation_configurations,
      :server_group_validation_configurations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutAppValidationConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a replication job.</p>
    #
    # @!attribute replication_job_id
    #   <p>The ID of the replication job.</p>
    #
    #   @return [String]
    #
    # @!attribute server_id
    #   <p>The ID of the server.</p>
    #
    #   @return [String]
    #
    # @!attribute server_type
    #   <p>The type of server.</p>
    #
    #   Enum, one of: ["VIRTUAL_MACHINE"]
    #
    #   @return [String]
    #
    # @!attribute vm_server
    #   <p>Information about the VM server.</p>
    #
    #   @return [VmServer]
    #
    # @!attribute seed_replication_time
    #   <p>The seed replication time.</p>
    #
    #   @return [Time]
    #
    # @!attribute frequency
    #   <p>The time between consecutive replication runs, in hours.</p>
    #
    #   @return [Integer]
    #
    # @!attribute run_once
    #   <p>Indicates whether to run the replication job one time.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute next_replication_run_start_time
    #   <p>The start time of the next replication run.</p>
    #
    #   @return [Time]
    #
    # @!attribute license_type
    #   <p>The license type to be used for the AMI created by a successful replication
    #               run.</p>
    #
    #   Enum, one of: ["AWS", "BYOL"]
    #
    #   @return [String]
    #
    # @!attribute role_name
    #   <p>The name of the IAM role to be used by Server Migration Service.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_ami_id
    #   <p>The ID of the latest Amazon Machine Image (AMI).</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the replication job.</p>
    #
    #   Enum, one of: ["PENDING", "ACTIVE", "FAILED", "DELETING", "DELETED", "COMPLETED", "PAUSED_ON_FAILURE", "FAILING"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>The description of the current status of the replication job.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the replication job.</p>
    #
    #   @return [String]
    #
    # @!attribute number_of_recent_amis_to_keep
    #   <p>The number of recent AMIs to keep in the customer's account for a replication job. By
    #               default, the value is set to zero, meaning that all AMIs are kept.</p>
    #
    #   @return [Integer]
    #
    # @!attribute encrypted
    #   <p>Indicates whether the replication job should produce encrypted AMIs.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute kms_key_id
    #   <p>The ID of the KMS key for replication jobs that produce encrypted AMIs.
    #               This value can be any of the following: </p>
    #           <ul>
    #               <li>
    #                   <p>KMS key ID</p>
    #               </li>
    #               <li>
    #                   <p>KMS key alias</p>
    #               </li>
    #               <li>
    #                   <p>ARN referring to the KMS key ID</p>
    #               </li>
    #               <li>
    #                   <p>ARN referring to the KMS key alias</p>
    #               </li>
    #            </ul>
    #           <p>If encrypted is enabled but a KMS key ID is not specified, the
    #               customer's default KMS key for Amazon EBS is used.</p>
    #
    #   @return [String]
    #
    # @!attribute replication_run_list
    #   <p>Information about the replication runs.</p>
    #
    #   @return [Array<ReplicationRun>]
    #
    ReplicationJob = ::Struct.new(
      :replication_job_id,
      :server_id,
      :server_type,
      :vm_server,
      :seed_replication_time,
      :frequency,
      :run_once,
      :next_replication_run_start_time,
      :license_type,
      :role_name,
      :latest_ami_id,
      :state,
      :status_message,
      :description,
      :number_of_recent_amis_to_keep,
      :encrypted,
      :kms_key_id,
      :replication_run_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified replication job already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ReplicationJobAlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified replication job does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ReplicationJobNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ReplicationJobState
    #
    module ReplicationJobState
      # No documentation available.
      #
      Pending = "PENDING"

      # No documentation available.
      #
      Active = "ACTIVE"

      # No documentation available.
      #
      Failed = "FAILED"

      # No documentation available.
      #
      Deleting = "DELETING"

      # No documentation available.
      #
      Deleted = "DELETED"

      # No documentation available.
      #
      Completed = "COMPLETED"

      # No documentation available.
      #
      PausedOnFailure = "PAUSED_ON_FAILURE"

      # No documentation available.
      #
      Failing = "FAILING"
    end

    # <p>Represents a replication run.</p>
    #
    # @!attribute replication_run_id
    #   <p>The ID of the replication run.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the replication run.</p>
    #
    #   Enum, one of: ["PENDING", "MISSED", "ACTIVE", "FAILED", "COMPLETED", "DELETING", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of replication run.</p>
    #
    #   Enum, one of: ["ON_DEMAND", "AUTOMATIC"]
    #
    #   @return [String]
    #
    # @!attribute stage_details
    #   <p>Details about the current stage of the replication run.</p>
    #
    #   @return [ReplicationRunStageDetails]
    #
    # @!attribute status_message
    #   <p>The description of the current status of the replication job.</p>
    #
    #   @return [String]
    #
    # @!attribute ami_id
    #   <p>The ID of the Amazon Machine Image (AMI) from the replication
    #               run.</p>
    #
    #   @return [String]
    #
    # @!attribute scheduled_start_time
    #   <p>The start time of the next replication run.</p>
    #
    #   @return [Time]
    #
    # @!attribute completed_time
    #   <p>The completion time of the last replication run.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>The description of the replication run.</p>
    #
    #   @return [String]
    #
    # @!attribute encrypted
    #   <p>Indicates whether the replication run should produce an encrypted AMI.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute kms_key_id
    #   <p>The ID of the KMS key for replication jobs that produce encrypted AMIs.
    #               This value can be any of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>KMS key ID</p>
    #               </li>
    #               <li>
    #                   <p>KMS key alias</p>
    #               </li>
    #               <li>
    #                   <p>ARN referring to the KMS key ID</p>
    #               </li>
    #               <li>
    #                   <p>ARN referring to the KMS key alias</p>
    #               </li>
    #            </ul>
    #           <p> If encrypted is <i>true</i> but a KMS key ID is not specified, the
    #               customer's default KMS key for Amazon EBS is used. </p>
    #
    #   @return [String]
    #
    ReplicationRun = ::Struct.new(
      :replication_run_id,
      :state,
      :type,
      :stage_details,
      :status_message,
      :ami_id,
      :scheduled_start_time,
      :completed_time,
      :description,
      :encrypted,
      :kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have exceeded the number of on-demand replication runs you can request in a
    #             24-hour period.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ReplicationRunLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details of the current stage of a replication run.</p>
    #
    # @!attribute stage
    #   <p>The current stage of a replication run.</p>
    #
    #   @return [String]
    #
    # @!attribute stage_progress
    #   <p>The progress of the current stage of a replication run.</p>
    #
    #   @return [String]
    #
    ReplicationRunStageDetails = ::Struct.new(
      :stage,
      :stage_progress,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ReplicationRunState
    #
    module ReplicationRunState
      # No documentation available.
      #
      Pending = "PENDING"

      # No documentation available.
      #
      Missed = "MISSED"

      # No documentation available.
      #
      Active = "ACTIVE"

      # No documentation available.
      #
      Failed = "FAILED"

      # No documentation available.
      #
      Completed = "COMPLETED"

      # No documentation available.
      #
      Deleting = "DELETING"

      # No documentation available.
      #
      Deleted = "DELETED"
    end

    # Includes enum constants for ReplicationRunType
    #
    module ReplicationRunType
      # No documentation available.
      #
      OnDemand = "ON_DEMAND"

      # No documentation available.
      #
      Automatic = "AUTOMATIC"
    end

    # <p>Location of an Amazon S3 object.</p>
    #
    # @!attribute bucket
    #   <p>The Amazon S3 bucket name.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The Amazon S3 bucket key.</p>
    #
    #   @return [String]
    #
    S3Location = ::Struct.new(
      :bucket,
      :key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the location of validation output.</p>
    #
    # @!attribute s3_location
    #   <p>Location of an Amazon S3 object.</p>
    #
    #   @return [S3Location]
    #
    SSMOutput = ::Struct.new(
      :s3_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains validation parameters.</p>
    #
    # @!attribute source
    #   <p>The location of the validation script.</p>
    #
    #   @return [Source]
    #
    # @!attribute instance_id
    #   <p>The ID of the instance. The instance must have the following tag: UserForSMSApplicationValidation=true.</p>
    #
    #   @return [String]
    #
    # @!attribute script_type
    #   <p>The type of validation script.</p>
    #
    #   Enum, one of: ["SHELL_SCRIPT", "POWERSHELL_SCRIPT"]
    #
    #   @return [String]
    #
    # @!attribute command
    #   <p>The command to run the validation script.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_timeout_seconds
    #   <p>The timeout interval, in seconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute output_s3_bucket_name
    #   <p>The name of the S3 bucket for output.</p>
    #
    #   @return [String]
    #
    SSMValidationParameters = ::Struct.new(
      :source,
      :instance_id,
      :script_type,
      :command,
      :execution_timeout_seconds,
      :output_s3_bucket_name,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.execution_timeout_seconds ||= 0
      end

    end

    # Includes enum constants for ScriptType
    #
    module ScriptType
      # No documentation available.
      #
      SHELL_SCRIPT = "SHELL_SCRIPT"

      # No documentation available.
      #
      POWERSHELL_SCRIPT = "POWERSHELL_SCRIPT"
    end

    # <p>Represents a server.</p>
    #
    # @!attribute server_id
    #   <p>The ID of the server.</p>
    #
    #   @return [String]
    #
    # @!attribute server_type
    #   <p>The type of server.</p>
    #
    #   Enum, one of: ["VIRTUAL_MACHINE"]
    #
    #   @return [String]
    #
    # @!attribute vm_server
    #   <p>Information about the VM server.</p>
    #
    #   @return [VmServer]
    #
    # @!attribute replication_job_id
    #   <p>The ID of the replication job.</p>
    #
    #   @return [String]
    #
    # @!attribute replication_job_terminated
    #   <p>Indicates whether the replication job is deleted or failed.</p>
    #
    #   @return [Boolean]
    #
    Server = ::Struct.new(
      :server_id,
      :server_type,
      :vm_server,
      :replication_job_id,
      :replication_job_terminated,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified server cannot be replicated.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServerCannotBeReplicatedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ServerCatalogStatus
    #
    module ServerCatalogStatus
      # No documentation available.
      #
      NotImported = "NOT_IMPORTED"

      # No documentation available.
      #
      Importing = "IMPORTING"

      # No documentation available.
      #
      Available = "AVAILABLE"

      # No documentation available.
      #
      Deleted = "DELETED"

      # No documentation available.
      #
      Expired = "EXPIRED"
    end

    # <p>Logical grouping of servers.</p>
    #
    # @!attribute server_group_id
    #   <p>The ID of a server group.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of a server group.</p>
    #
    #   @return [String]
    #
    # @!attribute server_list
    #   <p>The servers that belong to a server group.</p>
    #
    #   @return [Array<Server>]
    #
    ServerGroup = ::Struct.new(
      :server_group_id,
      :name,
      :server_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Launch configuration for a server group.</p>
    #
    # @!attribute server_group_id
    #   <p>The ID of the server group with which the launch configuration is
    #               associated.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_order
    #   <p>The launch order of servers in the server group.</p>
    #
    #   @return [Integer]
    #
    # @!attribute server_launch_configurations
    #   <p>The launch configuration for servers in the server group.</p>
    #
    #   @return [Array<ServerLaunchConfiguration>]
    #
    ServerGroupLaunchConfiguration = ::Struct.new(
      :server_group_id,
      :launch_order,
      :server_launch_configurations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Replication configuration for a server group.</p>
    #
    # @!attribute server_group_id
    #   <p>The ID of the server group with which this replication configuration is
    #               associated.</p>
    #
    #   @return [String]
    #
    # @!attribute server_replication_configurations
    #   <p>The replication configuration for servers in the server group.</p>
    #
    #   @return [Array<ServerReplicationConfiguration>]
    #
    ServerGroupReplicationConfiguration = ::Struct.new(
      :server_group_id,
      :server_replication_configurations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration for validating an instance.</p>
    #
    # @!attribute server_group_id
    #   <p>The ID of the server group.</p>
    #
    #   @return [String]
    #
    # @!attribute server_validation_configurations
    #   <p>The validation configuration.</p>
    #
    #   @return [Array<ServerValidationConfiguration>]
    #
    ServerGroupValidationConfiguration = ::Struct.new(
      :server_group_id,
      :server_validation_configurations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Launch configuration for a server.</p>
    #
    # @!attribute server
    #   <p>The ID of the server with which the launch configuration is associated.</p>
    #
    #   @return [Server]
    #
    # @!attribute logical_id
    #   <p>The logical ID of the server in the CloudFormation template.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc
    #   <p>The ID of the VPC into which the server should be launched.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet
    #   <p>The ID of the subnet the server should be launched into.</p>
    #
    #   @return [String]
    #
    # @!attribute security_group
    #   <p>The ID of the security group that applies to the launched server.</p>
    #
    #   @return [String]
    #
    # @!attribute ec2_key_name
    #   <p>The name of the Amazon EC2 SSH key to be used for connecting to the launched server.</p>
    #
    #   @return [String]
    #
    # @!attribute user_data
    #   <p>Location of the user-data script to be executed when launching the server.</p>
    #
    #   @return [UserData]
    #
    # @!attribute instance_type
    #   <p>The instance type to use when launching the server.</p>
    #
    #   @return [String]
    #
    # @!attribute associate_public_ip_address
    #   <p>Indicates whether a publicly accessible IP address is created when launching the server.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute iam_instance_profile_name
    #   <p>The name of the IAM instance profile.</p>
    #
    #   @return [String]
    #
    # @!attribute configure_script
    #   <p>Location of an Amazon S3 object.</p>
    #
    #   @return [S3Location]
    #
    # @!attribute configure_script_type
    #   <p>The type of configuration script.</p>
    #
    #   Enum, one of: ["SHELL_SCRIPT", "POWERSHELL_SCRIPT"]
    #
    #   @return [String]
    #
    ServerLaunchConfiguration = ::Struct.new(
      :server,
      :logical_id,
      :vpc,
      :subnet,
      :security_group,
      :ec2_key_name,
      :user_data,
      :instance_type,
      :associate_public_ip_address,
      :iam_instance_profile_name,
      :configure_script,
      :configure_script_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Replication configuration of a server.</p>
    #
    # @!attribute server
    #   <p>The ID of the server with which this replication configuration is
    #               associated.</p>
    #
    #   @return [Server]
    #
    # @!attribute server_replication_parameters
    #   <p>The parameters for replicating the server.</p>
    #
    #   @return [ServerReplicationParameters]
    #
    ServerReplicationConfiguration = ::Struct.new(
      :server,
      :server_replication_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The replication parameters for replicating a server.</p>
    #
    # @!attribute seed_time
    #   <p>The seed time for creating a replication job for the server.</p>
    #
    #   @return [Time]
    #
    # @!attribute frequency
    #   <p>The frequency of creating replication jobs for the server.</p>
    #
    #   @return [Integer]
    #
    # @!attribute run_once
    #   <p>Indicates whether to run the replication job one time.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute license_type
    #   <p>The license type for creating a replication job for the server.</p>
    #
    #   Enum, one of: ["AWS", "BYOL"]
    #
    #   @return [String]
    #
    # @!attribute number_of_recent_amis_to_keep
    #   <p>The number of recent AMIs to keep when creating a replication job for this server.</p>
    #
    #   @return [Integer]
    #
    # @!attribute encrypted
    #   <p>Indicates whether the replication job produces encrypted AMIs.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute kms_key_id
    #   <p>The ID of the KMS key for replication jobs that produce encrypted AMIs.
    #               This value can be any of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>KMS key ID</p>
    #               </li>
    #               <li>
    #                   <p>KMS key alias</p>
    #               </li>
    #               <li>
    #                   <p>ARN referring to the KMS key ID</p>
    #               </li>
    #               <li>
    #                   <p>ARN referring to the KMS key alias</p>
    #               </li>
    #            </ul>
    #           <p>If encrypted is enabled but a KMS key ID is not specified, the
    #               customer's default KMS key for Amazon EBS is used.</p>
    #
    #   @return [String]
    #
    ServerReplicationParameters = ::Struct.new(
      :seed_time,
      :frequency,
      :run_once,
      :license_type,
      :number_of_recent_amis_to_keep,
      :encrypted,
      :kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ServerType
    #
    module ServerType
      # No documentation available.
      #
      VirtualMachine = "VIRTUAL_MACHINE"
    end

    # <p>Configuration for validating an instance.</p>
    #
    # @!attribute server
    #   <p>Represents a server.</p>
    #
    #   @return [Server]
    #
    # @!attribute validation_id
    #   <p>The ID of the validation.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute server_validation_strategy
    #   <p>The validation strategy.</p>
    #
    #   Enum, one of: ["USERDATA"]
    #
    #   @return [String]
    #
    # @!attribute user_data_validation_parameters
    #   <p>The validation parameters.</p>
    #
    #   @return [UserDataValidationParameters]
    #
    ServerValidationConfiguration = ::Struct.new(
      :server,
      :validation_id,
      :name,
      :server_validation_strategy,
      :user_data_validation_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains output from validating an instance.</p>
    #
    # @!attribute server
    #   <p>Represents a server.</p>
    #
    #   @return [Server]
    #
    ServerValidationOutput = ::Struct.new(
      :server,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ServerValidationStrategy
    #
    module ServerValidationStrategy
      # No documentation available.
      #
      USERDATA = "USERDATA"
    end

    # <p>Contains the location of a validation script.</p>
    #
    # @!attribute s3_location
    #   <p>Location of an Amazon S3 object.</p>
    #
    #   @return [S3Location]
    #
    Source = ::Struct.new(
      :s3_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #
    #   @return [String]
    #
    StartAppReplicationInput = ::Struct.new(
      :app_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StartAppReplicationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the replication run.</p>
    #
    #   @return [String]
    #
    StartOnDemandAppReplicationInput = ::Struct.new(
      :app_id,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StartOnDemandAppReplicationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute replication_job_id
    #   <p>The ID of the replication job.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the replication run.</p>
    #
    #   @return [String]
    #
    StartOnDemandReplicationRunInput = ::Struct.new(
      :replication_job_id,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute replication_run_id
    #   <p>The ID of the replication run.</p>
    #
    #   @return [String]
    #
    StartOnDemandReplicationRunOutput = ::Struct.new(
      :replication_run_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #
    #   @return [String]
    #
    StopAppReplicationInput = ::Struct.new(
      :app_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StopAppReplicationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Key/value pair that can be assigned to an application.</p>
    #
    # @!attribute key
    #   <p>The tag key.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The tag value.</p>
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

    # <p>The service is temporarily unavailable.</p>
    #
    TemporarilyUnavailableException = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #
    #   @return [String]
    #
    TerminateAppInput = ::Struct.new(
      :app_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TerminateAppOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You lack permissions needed to perform this operation. Check your IAM policies,
    #             and ensure that you are using the correct access keys.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnauthorizedOperationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_id
    #   <p>The ID of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The new name of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The new description of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute role_name
    #   <p>The name of the service role in the customer's account used by Server Migration Service.</p>
    #
    #   @return [String]
    #
    # @!attribute server_groups
    #   <p>The server groups in the application to update.</p>
    #
    #   @return [Array<ServerGroup>]
    #
    # @!attribute tags
    #   <p>The tags to associate with the application.</p>
    #
    #   @return [Array<Tag>]
    #
    UpdateAppInput = ::Struct.new(
      :app_id,
      :name,
      :description,
      :role_name,
      :server_groups,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app_summary
    #   <p>A summary description of the application.</p>
    #
    #   @return [AppSummary]
    #
    # @!attribute server_groups
    #   <p>The updated server groups in the application.</p>
    #
    #   @return [Array<ServerGroup>]
    #
    # @!attribute tags
    #   <p>The tags associated with the application.</p>
    #
    #   @return [Array<Tag>]
    #
    UpdateAppOutput = ::Struct.new(
      :app_summary,
      :server_groups,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute replication_job_id
    #   <p>The ID of the replication job.</p>
    #
    #   @return [String]
    #
    # @!attribute frequency
    #   <p>The time between consecutive replication runs, in hours.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_replication_run_start_time
    #   <p>The start time of the next replication run.</p>
    #
    #   @return [Time]
    #
    # @!attribute license_type
    #   <p>The license type to be used for the AMI created by a successful replication
    #               run.</p>
    #
    #   Enum, one of: ["AWS", "BYOL"]
    #
    #   @return [String]
    #
    # @!attribute role_name
    #   <p>The name of the IAM role to be used by Server Migration Service.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the replication job.</p>
    #
    #   @return [String]
    #
    # @!attribute number_of_recent_amis_to_keep
    #   <p>The maximum number of SMS-created AMIs to retain. The oldest is deleted after the
    #               maximum number is reached and a new AMI is created.</p>
    #
    #   @return [Integer]
    #
    # @!attribute encrypted
    #   <p>When true, the replication job produces encrypted AMIs. For more information,
    #                   <code>KmsKeyId</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute kms_key_id
    #   <p>The ID of the KMS key for replication jobs that produce encrypted AMIs.
    #               This value can be any of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>KMS key ID</p>
    #               </li>
    #               <li>
    #                   <p>KMS key alias</p>
    #               </li>
    #               <li>
    #                   <p>ARN referring to the KMS key ID</p>
    #               </li>
    #               <li>
    #                   <p>ARN referring to the KMS key alias</p>
    #               </li>
    #            </ul>
    #           <p>If encrypted is enabled but a KMS key ID is not specified, the
    #               customer's default KMS key for Amazon EBS is used.</p>
    #
    #   @return [String]
    #
    UpdateReplicationJobInput = ::Struct.new(
      :replication_job_id,
      :frequency,
      :next_replication_run_start_time,
      :license_type,
      :role_name,
      :description,
      :number_of_recent_amis_to_keep,
      :encrypted,
      :kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateReplicationJobOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A script that runs on first launch of an Amazon EC2 instance. Used for configuring the
    #             server during launch.</p>
    #
    # @!attribute s3_location
    #   <p>Amazon S3 location of the user-data script.</p>
    #
    #   @return [S3Location]
    #
    UserData = ::Struct.new(
      :s3_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains validation parameters.</p>
    #
    # @!attribute source
    #   <p>The location of the validation script.</p>
    #
    #   @return [Source]
    #
    # @!attribute script_type
    #   <p>The type of validation script.</p>
    #
    #   Enum, one of: ["SHELL_SCRIPT", "POWERSHELL_SCRIPT"]
    #
    #   @return [String]
    #
    UserDataValidationParameters = ::Struct.new(
      :source,
      :script_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains validation output.</p>
    #
    # @!attribute validation_id
    #   <p>The ID of the validation.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the validation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the validation.</p>
    #
    #   Enum, one of: ["READY_FOR_VALIDATION", "PENDING", "IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>The status message.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_validation_time
    #   <p>The latest time that the validation was performed.</p>
    #
    #   @return [Time]
    #
    # @!attribute app_validation_output
    #   <p>The output from validating an application.</p>
    #
    #   @return [AppValidationOutput]
    #
    # @!attribute server_validation_output
    #   <p>The output from validation an instance.</p>
    #
    #   @return [ServerValidationOutput]
    #
    ValidationOutput = ::Struct.new(
      :validation_id,
      :name,
      :status,
      :status_message,
      :latest_validation_time,
      :app_validation_output,
      :server_validation_output,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ValidationStatus
    #
    module ValidationStatus
      # No documentation available.
      #
      ReadyForValidation = "READY_FOR_VALIDATION"

      # No documentation available.
      #
      Pending = "PENDING"

      # No documentation available.
      #
      InProgress = "IN_PROGRESS"

      # No documentation available.
      #
      Succeeded = "SUCCEEDED"

      # No documentation available.
      #
      Failed = "FAILED"
    end

    # Includes enum constants for VmManagerType
    #
    module VmManagerType
      # No documentation available.
      #
      vSphere = "VSPHERE"

      # No documentation available.
      #
      scvmm = "SCVMM"

      # No documentation available.
      #
      hyperVManager = "HYPERV-MANAGER"
    end

    # <p>Represents a VM server.</p>
    #
    # @!attribute vm_server_address
    #   <p>The VM server location.</p>
    #
    #   @return [VmServerAddress]
    #
    # @!attribute vm_name
    #   <p>The name of the VM.</p>
    #
    #   @return [String]
    #
    # @!attribute vm_manager_name
    #   <p>The name of the VM manager.</p>
    #
    #   @return [String]
    #
    # @!attribute vm_manager_type
    #   <p>The type of VM management product.</p>
    #
    #   Enum, one of: ["VSPHERE", "SCVMM", "HYPERV-MANAGER"]
    #
    #   @return [String]
    #
    # @!attribute vm_path
    #   <p>The VM folder path in the vCenter Server virtual machine inventory tree.</p>
    #
    #   @return [String]
    #
    VmServer = ::Struct.new(
      :vm_server_address,
      :vm_name,
      :vm_manager_name,
      :vm_manager_type,
      :vm_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a VM server location.</p>
    #
    # @!attribute vm_manager_id
    #   <p>The ID of the VM manager.</p>
    #
    #   @return [String]
    #
    # @!attribute vm_id
    #   <p>The ID of the VM.</p>
    #
    #   @return [String]
    #
    VmServerAddress = ::Struct.new(
      :vm_manager_id,
      :vm_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
