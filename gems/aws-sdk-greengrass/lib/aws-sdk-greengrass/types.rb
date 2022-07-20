# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Greengrass
  module Types

    # @!attribute group_id
    #   The ID of the Greengrass group.
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   The ARN of the role you wish to associate with this group. The existence of the role is not validated.
    #
    #   @return [String]
    #
    AssociateRoleToGroupInput = ::Struct.new(
      :group_id,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute associated_at
    #   The time, in milliseconds since the epoch, when the role ARN was associated with the group.
    #
    #   @return [String]
    #
    AssociateRoleToGroupOutput = ::Struct.new(
      :associated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute role_arn
    #   The ARN of the service role you wish to associate with your account.
    #
    #   @return [String]
    #
    AssociateServiceRoleToAccountInput = ::Struct.new(
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute associated_at
    #   The time when the service role was associated with the account.
    #
    #   @return [String]
    #
    AssociateServiceRoleToAccountOutput = ::Struct.new(
      :associated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # General error information.
    #
    # @!attribute error_details
    #   Details about the error.
    #
    #   @return [Array<ErrorDetail>]
    #
    # @!attribute message
    #   A message containing information about the error.
    #
    #   @return [String]
    #
    BadRequestException = ::Struct.new(
      :error_details,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Information about a bulk deployment. You cannot start a new bulk deployment while another one is still running or in a non-terminal state.
    #
    # @!attribute bulk_deployment_arn
    #   The ARN of the bulk deployment.
    #
    #   @return [String]
    #
    # @!attribute bulk_deployment_id
    #   The ID of the bulk deployment.
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   The time, in ISO format, when the deployment was created.
    #
    #   @return [String]
    #
    BulkDeployment = ::Struct.new(
      :bulk_deployment_arn,
      :bulk_deployment_id,
      :created_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Relevant metrics on input records processed during bulk deployment.
    #
    # @!attribute invalid_input_records
    #   The total number of records that returned a non-retryable error. For example, this can occur if a group record from the input file uses an invalid format or specifies a nonexistent group version, or if the execution role doesn't grant permission to deploy a group or group version.
    #
    #   @return [Integer]
    #
    # @!attribute records_processed
    #   The total number of group records from the input file that have been processed so far, or attempted.
    #
    #   @return [Integer]
    #
    # @!attribute retry_attempts
    #   The total number of deployment attempts that returned a retryable error. For example, a retry is triggered if the attempt to deploy a group returns a throttling error. ''StartBulkDeployment'' retries a group deployment up to five times.
    #
    #   @return [Integer]
    #
    BulkDeploymentMetrics = ::Struct.new(
      :invalid_input_records,
      :records_processed,
      :retry_attempts,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.invalid_input_records ||= 0
        self.records_processed ||= 0
        self.retry_attempts ||= 0
      end
    end

    # Information about an individual group deployment in a bulk deployment operation.
    #
    # @!attribute created_at
    #   The time, in ISO format, when the deployment was created.
    #
    #   @return [String]
    #
    # @!attribute deployment_arn
    #   The ARN of the group deployment.
    #
    #   @return [String]
    #
    # @!attribute deployment_id
    #   The ID of the group deployment.
    #
    #   @return [String]
    #
    # @!attribute deployment_status
    #   The current status of the group deployment: ''InProgress'', ''Building'', ''Success'', or ''Failure''.
    #
    #   @return [String]
    #
    # @!attribute deployment_type
    #   The type of the deployment.
    #
    #   Enum, one of: ["NewDeployment", "Redeployment", "ResetDeployment", "ForceResetDeployment"]
    #
    #   @return [String]
    #
    # @!attribute error_details
    #   Details about the error.
    #
    #   @return [Array<ErrorDetail>]
    #
    # @!attribute error_message
    #   The error message for a failed deployment
    #
    #   @return [String]
    #
    # @!attribute group_arn
    #   The ARN of the Greengrass group.
    #
    #   @return [String]
    #
    BulkDeploymentResult = ::Struct.new(
      :created_at,
      :deployment_arn,
      :deployment_id,
      :deployment_status,
      :deployment_type,
      :error_details,
      :error_message,
      :group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BulkDeploymentStatus
    #
    module BulkDeploymentStatus
      # No documentation available.
      #
      Initializing = "Initializing"

      # No documentation available.
      #
      Running = "Running"

      # No documentation available.
      #
      Completed = "Completed"

      # No documentation available.
      #
      Stopping = "Stopping"

      # No documentation available.
      #
      Stopped = "Stopped"

      # No documentation available.
      #
      Failed = "Failed"
    end

    # Includes enum constants for ConfigurationSyncStatus
    #
    module ConfigurationSyncStatus
      # No documentation available.
      #
      InSync = "InSync"

      # No documentation available.
      #
      OutOfSync = "OutOfSync"
    end

    # Information about a Greengrass core's connectivity.
    #
    # @!attribute host_address
    #   The endpoint for the Greengrass core. Can be an IP address or DNS.
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the connectivity information.
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   Metadata for this endpoint.
    #
    #   @return [String]
    #
    # @!attribute port_number
    #   The port of the Greengrass core. Usually 8883.
    #
    #   @return [Integer]
    #
    ConnectivityInfo = ::Struct.new(
      :host_address,
      :id,
      :metadata,
      :port_number,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.port_number ||= 0
      end
    end

    # Information about a connector. Connectors run on the Greengrass core and contain built-in integration with local infrastructure, device protocols, AWS, and other cloud services.
    #
    # @!attribute connector_arn
    #   The ARN of the connector.
    #
    #   @return [String]
    #
    # @!attribute id
    #   A descriptive or arbitrary ID for the connector. This value must be unique within the connector definition version. Max length is 128 characters with pattern [a-zA-Z0-9:_-]+.
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   The parameters or configuration that the connector uses.
    #
    #   @return [Hash<String, String>]
    #
    Connector = ::Struct.new(
      :connector_arn,
      :id,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Information about the connector definition version, which is a container for connectors.
    #
    # @!attribute connectors
    #   A list of references to connectors in this version, with their corresponding configuration settings.
    #
    #   @return [Array<Connector>]
    #
    ConnectorDefinitionVersion = ::Struct.new(
      :connectors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Information about a core.
    #
    # @!attribute certificate_arn
    #   The ARN of the certificate associated with the core.
    #
    #   @return [String]
    #
    # @!attribute id
    #   A descriptive or arbitrary ID for the core. This value must be unique within the core definition version. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''.
    #
    #   @return [String]
    #
    # @!attribute sync_shadow
    #   If true, the core's local shadow is automatically synced with the cloud.
    #
    #   @return [Boolean]
    #
    # @!attribute thing_arn
    #   The ARN of the thing which is the core.
    #
    #   @return [String]
    #
    Core = ::Struct.new(
      :certificate_arn,
      :id,
      :sync_shadow,
      :thing_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.sync_shadow ||= false
      end
    end

    # Information about a core definition version.
    #
    # @!attribute cores
    #   A list of cores in the core definition version.
    #
    #   @return [Array<Core>]
    #
    CoreDefinitionVersion = ::Struct.new(
      :cores,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    #   @return [String]
    #
    # @!attribute initial_version
    #   Information about the initial version of the connector definition.
    #
    #   @return [ConnectorDefinitionVersion]
    #
    # @!attribute name
    #   The name of the connector definition.
    #
    #   @return [String]
    #
    # @!attribute tags
    #   Tag(s) to add to the new resource.
    #
    #   @return [Hash<String, String>]
    #
    CreateConnectorDefinitionInput = ::Struct.new(
      :amzn_client_token,
      :initial_version,
      :name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The ARN of the definition.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the definition.
    #
    #   @return [String]
    #
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #
    #   @return [String]
    #
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The name of the definition.
    #
    #   @return [String]
    #
    CreateConnectorDefinitionOutput = ::Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    #   @return [String]
    #
    # @!attribute connector_definition_id
    #   The ID of the connector definition.
    #
    #   @return [String]
    #
    # @!attribute connectors
    #   A list of references to connectors in this version, with their corresponding configuration settings.
    #
    #   @return [Array<Connector>]
    #
    CreateConnectorDefinitionVersionInput = ::Struct.new(
      :amzn_client_token,
      :connector_definition_id,
      :connectors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The ARN of the version.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the version was created.
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the parent definition that the version is associated with.
    #
    #   @return [String]
    #
    # @!attribute version
    #   The ID of the version.
    #
    #   @return [String]
    #
    CreateConnectorDefinitionVersionOutput = ::Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Information needed to create a core definition.
    #
    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    #   @return [String]
    #
    # @!attribute initial_version
    #   Information about the initial version of the core definition.
    #
    #   @return [CoreDefinitionVersion]
    #
    # @!attribute name
    #   The name of the core definition.
    #
    #   @return [String]
    #
    # @!attribute tags
    #   Tag(s) to add to the new resource.
    #
    #   @return [Hash<String, String>]
    #
    CreateCoreDefinitionInput = ::Struct.new(
      :amzn_client_token,
      :initial_version,
      :name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The ARN of the definition.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the definition.
    #
    #   @return [String]
    #
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #
    #   @return [String]
    #
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The name of the definition.
    #
    #   @return [String]
    #
    CreateCoreDefinitionOutput = ::Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    #   @return [String]
    #
    # @!attribute core_definition_id
    #   The ID of the core definition.
    #
    #   @return [String]
    #
    # @!attribute cores
    #   A list of cores in the core definition version.
    #
    #   @return [Array<Core>]
    #
    CreateCoreDefinitionVersionInput = ::Struct.new(
      :amzn_client_token,
      :core_definition_id,
      :cores,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The ARN of the version.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the version was created.
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the parent definition that the version is associated with.
    #
    #   @return [String]
    #
    # @!attribute version
    #   The ID of the version.
    #
    #   @return [String]
    #
    CreateCoreDefinitionVersionOutput = ::Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    #   @return [String]
    #
    # @!attribute deployment_id
    #   The ID of the deployment if you wish to redeploy a previous deployment.
    #
    #   @return [String]
    #
    # @!attribute deployment_type
    #   The type of deployment. When used for ''CreateDeployment'', only ''NewDeployment'' and ''Redeployment'' are valid.
    #
    #   Enum, one of: ["NewDeployment", "Redeployment", "ResetDeployment", "ForceResetDeployment"]
    #
    #   @return [String]
    #
    # @!attribute group_id
    #   The ID of the Greengrass group.
    #
    #   @return [String]
    #
    # @!attribute group_version_id
    #   The ID of the group version to be deployed.
    #
    #   @return [String]
    #
    CreateDeploymentInput = ::Struct.new(
      :amzn_client_token,
      :deployment_id,
      :deployment_type,
      :group_id,
      :group_version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute deployment_arn
    #   The ARN of the deployment.
    #
    #   @return [String]
    #
    # @!attribute deployment_id
    #   The ID of the deployment.
    #
    #   @return [String]
    #
    CreateDeploymentOutput = ::Struct.new(
      :deployment_arn,
      :deployment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    #   @return [String]
    #
    # @!attribute initial_version
    #   Information about the initial version of the device definition.
    #
    #   @return [DeviceDefinitionVersion]
    #
    # @!attribute name
    #   The name of the device definition.
    #
    #   @return [String]
    #
    # @!attribute tags
    #   Tag(s) to add to the new resource.
    #
    #   @return [Hash<String, String>]
    #
    CreateDeviceDefinitionInput = ::Struct.new(
      :amzn_client_token,
      :initial_version,
      :name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The ARN of the definition.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the definition.
    #
    #   @return [String]
    #
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #
    #   @return [String]
    #
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The name of the definition.
    #
    #   @return [String]
    #
    CreateDeviceDefinitionOutput = ::Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    #   @return [String]
    #
    # @!attribute device_definition_id
    #   The ID of the device definition.
    #
    #   @return [String]
    #
    # @!attribute devices
    #   A list of devices in the definition version.
    #
    #   @return [Array<Device>]
    #
    CreateDeviceDefinitionVersionInput = ::Struct.new(
      :amzn_client_token,
      :device_definition_id,
      :devices,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The ARN of the version.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the version was created.
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the parent definition that the version is associated with.
    #
    #   @return [String]
    #
    # @!attribute version
    #   The ID of the version.
    #
    #   @return [String]
    #
    CreateDeviceDefinitionVersionOutput = ::Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    #   @return [String]
    #
    # @!attribute initial_version
    #   Information about the initial version of the function definition.
    #
    #   @return [FunctionDefinitionVersion]
    #
    # @!attribute name
    #   The name of the function definition.
    #
    #   @return [String]
    #
    # @!attribute tags
    #   Tag(s) to add to the new resource.
    #
    #   @return [Hash<String, String>]
    #
    CreateFunctionDefinitionInput = ::Struct.new(
      :amzn_client_token,
      :initial_version,
      :name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The ARN of the definition.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the definition.
    #
    #   @return [String]
    #
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #
    #   @return [String]
    #
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The name of the definition.
    #
    #   @return [String]
    #
    CreateFunctionDefinitionOutput = ::Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Information needed to create a function definition version.
    #
    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    #   @return [String]
    #
    # @!attribute default_config
    #   The default configuration that applies to all Lambda functions in this function definition version. Individual Lambda functions can override these settings.
    #
    #   @return [FunctionDefaultConfig]
    #
    # @!attribute function_definition_id
    #   The ID of the Lambda function definition.
    #
    #   @return [String]
    #
    # @!attribute functions
    #   A list of Lambda functions in this function definition version.
    #
    #   @return [Array<Function>]
    #
    CreateFunctionDefinitionVersionInput = ::Struct.new(
      :amzn_client_token,
      :default_config,
      :function_definition_id,
      :functions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The ARN of the version.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the version was created.
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the parent definition that the version is associated with.
    #
    #   @return [String]
    #
    # @!attribute version
    #   The ID of the version.
    #
    #   @return [String]
    #
    CreateFunctionDefinitionVersionOutput = ::Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    #   @return [String]
    #
    # @!attribute group_id
    #   The ID of the Greengrass group.
    #
    #   @return [String]
    #
    CreateGroupCertificateAuthorityInput = ::Struct.new(
      :amzn_client_token,
      :group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_certificate_authority_arn
    #   The ARN of the group certificate authority.
    #
    #   @return [String]
    #
    CreateGroupCertificateAuthorityOutput = ::Struct.new(
      :group_certificate_authority_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    #   @return [String]
    #
    # @!attribute initial_version
    #   Information about the initial version of the group.
    #
    #   @return [GroupVersion]
    #
    # @!attribute name
    #   The name of the group.
    #
    #   @return [String]
    #
    # @!attribute tags
    #   Tag(s) to add to the new resource.
    #
    #   @return [Hash<String, String>]
    #
    CreateGroupInput = ::Struct.new(
      :amzn_client_token,
      :initial_version,
      :name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The ARN of the definition.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the definition.
    #
    #   @return [String]
    #
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #
    #   @return [String]
    #
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The name of the definition.
    #
    #   @return [String]
    #
    CreateGroupOutput = ::Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    #   @return [String]
    #
    # @!attribute connector_definition_version_arn
    #   The ARN of the connector definition version for this group.
    #
    #   @return [String]
    #
    # @!attribute core_definition_version_arn
    #   The ARN of the core definition version for this group.
    #
    #   @return [String]
    #
    # @!attribute device_definition_version_arn
    #   The ARN of the device definition version for this group.
    #
    #   @return [String]
    #
    # @!attribute function_definition_version_arn
    #   The ARN of the function definition version for this group.
    #
    #   @return [String]
    #
    # @!attribute group_id
    #   The ID of the Greengrass group.
    #
    #   @return [String]
    #
    # @!attribute logger_definition_version_arn
    #   The ARN of the logger definition version for this group.
    #
    #   @return [String]
    #
    # @!attribute resource_definition_version_arn
    #   The ARN of the resource definition version for this group.
    #
    #   @return [String]
    #
    # @!attribute subscription_definition_version_arn
    #   The ARN of the subscription definition version for this group.
    #
    #   @return [String]
    #
    CreateGroupVersionInput = ::Struct.new(
      :amzn_client_token,
      :connector_definition_version_arn,
      :core_definition_version_arn,
      :device_definition_version_arn,
      :function_definition_version_arn,
      :group_id,
      :logger_definition_version_arn,
      :resource_definition_version_arn,
      :subscription_definition_version_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The ARN of the version.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the version was created.
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the parent definition that the version is associated with.
    #
    #   @return [String]
    #
    # @!attribute version
    #   The ID of the version.
    #
    #   @return [String]
    #
    CreateGroupVersionOutput = ::Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    #   @return [String]
    #
    # @!attribute initial_version
    #   Information about the initial version of the logger definition.
    #
    #   @return [LoggerDefinitionVersion]
    #
    # @!attribute name
    #   The name of the logger definition.
    #
    #   @return [String]
    #
    # @!attribute tags
    #   Tag(s) to add to the new resource.
    #
    #   @return [Hash<String, String>]
    #
    CreateLoggerDefinitionInput = ::Struct.new(
      :amzn_client_token,
      :initial_version,
      :name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The ARN of the definition.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the definition.
    #
    #   @return [String]
    #
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #
    #   @return [String]
    #
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The name of the definition.
    #
    #   @return [String]
    #
    CreateLoggerDefinitionOutput = ::Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    #   @return [String]
    #
    # @!attribute logger_definition_id
    #   The ID of the logger definition.
    #
    #   @return [String]
    #
    # @!attribute loggers
    #   A list of loggers.
    #
    #   @return [Array<Logger>]
    #
    CreateLoggerDefinitionVersionInput = ::Struct.new(
      :amzn_client_token,
      :logger_definition_id,
      :loggers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The ARN of the version.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the version was created.
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the parent definition that the version is associated with.
    #
    #   @return [String]
    #
    # @!attribute version
    #   The ID of the version.
    #
    #   @return [String]
    #
    CreateLoggerDefinitionVersionOutput = ::Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    #   @return [String]
    #
    # @!attribute initial_version
    #   Information about the initial version of the resource definition.
    #
    #   @return [ResourceDefinitionVersion]
    #
    # @!attribute name
    #   The name of the resource definition.
    #
    #   @return [String]
    #
    # @!attribute tags
    #   Tag(s) to add to the new resource.
    #
    #   @return [Hash<String, String>]
    #
    CreateResourceDefinitionInput = ::Struct.new(
      :amzn_client_token,
      :initial_version,
      :name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The ARN of the definition.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the definition.
    #
    #   @return [String]
    #
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #
    #   @return [String]
    #
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The name of the definition.
    #
    #   @return [String]
    #
    CreateResourceDefinitionOutput = ::Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    #   @return [String]
    #
    # @!attribute resource_definition_id
    #   The ID of the resource definition.
    #
    #   @return [String]
    #
    # @!attribute resources
    #   A list of resources.
    #
    #   @return [Array<Resource>]
    #
    CreateResourceDefinitionVersionInput = ::Struct.new(
      :amzn_client_token,
      :resource_definition_id,
      :resources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The ARN of the version.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the version was created.
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the parent definition that the version is associated with.
    #
    #   @return [String]
    #
    # @!attribute version
    #   The ID of the version.
    #
    #   @return [String]
    #
    CreateResourceDefinitionVersionOutput = ::Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    #   @return [String]
    #
    # @!attribute s3_url_signer_role
    #   The IAM Role that Greengrass will use to create pre-signed URLs pointing towards the update artifact.
    #
    #   @return [String]
    #
    # @!attribute software_to_update
    #   The piece of software on the Greengrass core that will be updated.
    #
    #   Enum, one of: ["core", "ota_agent"]
    #
    #   @return [String]
    #
    # @!attribute update_agent_log_level
    #   The minimum level of log statements that should be logged by the OTA Agent during an update.
    #
    #   Enum, one of: ["NONE", "TRACE", "DEBUG", "VERBOSE", "INFO", "WARN", "ERROR", "FATAL"]
    #
    #   @return [String]
    #
    # @!attribute update_targets
    #   The ARNs of the targets (IoT things or IoT thing groups) that this update will be applied to.
    #
    #   @return [Array<String>]
    #
    # @!attribute update_targets_architecture
    #   The architecture of the cores which are the targets of an update.
    #
    #   Enum, one of: ["armv6l", "armv7l", "x86_64", "aarch64"]
    #
    #   @return [String]
    #
    # @!attribute update_targets_operating_system
    #   The operating system of the cores which are the targets of an update.
    #
    #   Enum, one of: ["ubuntu", "raspbian", "amazon_linux", "openwrt"]
    #
    #   @return [String]
    #
    CreateSoftwareUpdateJobInput = ::Struct.new(
      :amzn_client_token,
      :s3_url_signer_role,
      :software_to_update,
      :update_agent_log_level,
      :update_targets,
      :update_targets_architecture,
      :update_targets_operating_system,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute iot_job_arn
    #   The IoT Job ARN corresponding to this update.
    #
    #   @return [String]
    #
    # @!attribute iot_job_id
    #   The IoT Job Id corresponding to this update.
    #
    #   @return [String]
    #
    # @!attribute platform_software_version
    #   The software version installed on the device or devices after the update.
    #
    #   @return [String]
    #
    CreateSoftwareUpdateJobOutput = ::Struct.new(
      :iot_job_arn,
      :iot_job_id,
      :platform_software_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    #   @return [String]
    #
    # @!attribute initial_version
    #   Information about the initial version of the subscription definition.
    #
    #   @return [SubscriptionDefinitionVersion]
    #
    # @!attribute name
    #   The name of the subscription definition.
    #
    #   @return [String]
    #
    # @!attribute tags
    #   Tag(s) to add to the new resource.
    #
    #   @return [Hash<String, String>]
    #
    CreateSubscriptionDefinitionInput = ::Struct.new(
      :amzn_client_token,
      :initial_version,
      :name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The ARN of the definition.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the definition.
    #
    #   @return [String]
    #
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #
    #   @return [String]
    #
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The name of the definition.
    #
    #   @return [String]
    #
    CreateSubscriptionDefinitionOutput = ::Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    #   @return [String]
    #
    # @!attribute subscription_definition_id
    #   The ID of the subscription definition.
    #
    #   @return [String]
    #
    # @!attribute subscriptions
    #   A list of subscriptions.
    #
    #   @return [Array<Subscription>]
    #
    CreateSubscriptionDefinitionVersionInput = ::Struct.new(
      :amzn_client_token,
      :subscription_definition_id,
      :subscriptions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The ARN of the version.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the version was created.
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the parent definition that the version is associated with.
    #
    #   @return [String]
    #
    # @!attribute version
    #   The ID of the version.
    #
    #   @return [String]
    #
    CreateSubscriptionDefinitionVersionOutput = ::Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Information about a definition.
    #
    # @!attribute arn
    #   The ARN of the definition.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the definition.
    #
    #   @return [String]
    #
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #
    #   @return [String]
    #
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The name of the definition.
    #
    #   @return [String]
    #
    # @!attribute tags
    #   Tag(s) attached to the resource arn.
    #
    #   @return [Hash<String, String>]
    #
    DefinitionInformation = ::Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connector_definition_id
    #   The ID of the connector definition.
    #
    #   @return [String]
    #
    DeleteConnectorDefinitionInput = ::Struct.new(
      :connector_definition_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteConnectorDefinitionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_definition_id
    #   The ID of the core definition.
    #
    #   @return [String]
    #
    DeleteCoreDefinitionInput = ::Struct.new(
      :core_definition_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteCoreDefinitionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_definition_id
    #   The ID of the device definition.
    #
    #   @return [String]
    #
    DeleteDeviceDefinitionInput = ::Struct.new(
      :device_definition_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDeviceDefinitionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute function_definition_id
    #   The ID of the Lambda function definition.
    #
    #   @return [String]
    #
    DeleteFunctionDefinitionInput = ::Struct.new(
      :function_definition_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteFunctionDefinitionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_id
    #   The ID of the Greengrass group.
    #
    #   @return [String]
    #
    DeleteGroupInput = ::Struct.new(
      :group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute logger_definition_id
    #   The ID of the logger definition.
    #
    #   @return [String]
    #
    DeleteLoggerDefinitionInput = ::Struct.new(
      :logger_definition_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteLoggerDefinitionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_definition_id
    #   The ID of the resource definition.
    #
    #   @return [String]
    #
    DeleteResourceDefinitionInput = ::Struct.new(
      :resource_definition_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteResourceDefinitionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute subscription_definition_id
    #   The ID of the subscription definition.
    #
    #   @return [String]
    #
    DeleteSubscriptionDefinitionInput = ::Struct.new(
      :subscription_definition_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteSubscriptionDefinitionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Information about a deployment.
    #
    # @!attribute created_at
    #   The time, in milliseconds since the epoch, when the deployment was created.
    #
    #   @return [String]
    #
    # @!attribute deployment_arn
    #   The ARN of the deployment.
    #
    #   @return [String]
    #
    # @!attribute deployment_id
    #   The ID of the deployment.
    #
    #   @return [String]
    #
    # @!attribute deployment_type
    #   The type of the deployment.
    #
    #   Enum, one of: ["NewDeployment", "Redeployment", "ResetDeployment", "ForceResetDeployment"]
    #
    #   @return [String]
    #
    # @!attribute group_arn
    #   The ARN of the group for this deployment.
    #
    #   @return [String]
    #
    Deployment = ::Struct.new(
      :created_at,
      :deployment_arn,
      :deployment_id,
      :deployment_type,
      :group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeploymentType
    #
    module DeploymentType
      # No documentation available.
      #
      NewDeployment = "NewDeployment"

      # No documentation available.
      #
      Redeployment = "Redeployment"

      # No documentation available.
      #
      ResetDeployment = "ResetDeployment"

      # No documentation available.
      #
      ForceResetDeployment = "ForceResetDeployment"
    end

    # Information about a device.
    #
    # @!attribute certificate_arn
    #   The ARN of the certificate associated with the device.
    #
    #   @return [String]
    #
    # @!attribute id
    #   A descriptive or arbitrary ID for the device. This value must be unique within the device definition version. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''.
    #
    #   @return [String]
    #
    # @!attribute sync_shadow
    #   If true, the device's local shadow will be automatically synced with the cloud.
    #
    #   @return [Boolean]
    #
    # @!attribute thing_arn
    #   The thing ARN of the device.
    #
    #   @return [String]
    #
    Device = ::Struct.new(
      :certificate_arn,
      :id,
      :sync_shadow,
      :thing_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.sync_shadow ||= false
      end
    end

    # Information about a device definition version.
    #
    # @!attribute devices
    #   A list of devices in the definition version.
    #
    #   @return [Array<Device>]
    #
    DeviceDefinitionVersion = ::Struct.new(
      :devices,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_id
    #   The ID of the Greengrass group.
    #
    #   @return [String]
    #
    DisassociateRoleFromGroupInput = ::Struct.new(
      :group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute disassociated_at
    #   The time, in milliseconds since the epoch, when the role was disassociated from the group.
    #
    #   @return [String]
    #
    DisassociateRoleFromGroupOutput = ::Struct.new(
      :disassociated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateServiceRoleFromAccountInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute disassociated_at
    #   The time when the service role was disassociated from the account.
    #
    #   @return [String]
    #
    DisassociateServiceRoleFromAccountOutput = ::Struct.new(
      :disassociated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EncodingType
    #
    module EncodingType
      # No documentation available.
      #
      binary = "binary"

      # No documentation available.
      #
      json = "json"
    end

    # Details about the error.
    #
    # @!attribute detailed_error_code
    #   A detailed error code.
    #
    #   @return [String]
    #
    # @!attribute detailed_error_message
    #   A detailed error message.
    #
    #   @return [String]
    #
    ErrorDetail = ::Struct.new(
      :detailed_error_code,
      :detailed_error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Information about a Lambda function.
    #
    # @!attribute function_arn
    #   The ARN of the Lambda function.
    #
    #   @return [String]
    #
    # @!attribute function_configuration
    #   The configuration of the Lambda function.
    #
    #   @return [FunctionConfiguration]
    #
    # @!attribute id
    #   A descriptive or arbitrary ID for the function. This value must be unique within the function definition version. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''.
    #
    #   @return [String]
    #
    Function = ::Struct.new(
      :function_arn,
      :function_configuration,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The configuration of the Lambda function.
    #
    # @!attribute encoding_type
    #   The expected encoding type of the input payload for the function. The default is ''json''.
    #
    #   Enum, one of: ["binary", "json"]
    #
    #   @return [String]
    #
    # @!attribute environment
    #   The environment configuration of the function.
    #
    #   @return [FunctionConfigurationEnvironment]
    #
    # @!attribute exec_args
    #   The execution arguments.
    #
    #   @return [String]
    #
    # @!attribute executable
    #   The name of the function executable.
    #
    #   @return [String]
    #
    # @!attribute memory_size
    #   The memory size, in KB, which the function requires. This setting is not applicable and should be cleared when you run the Lambda function without containerization.
    #
    #   @return [Integer]
    #
    # @!attribute pinned
    #   True if the function is pinned. Pinned means the function is long-lived and starts when the core starts.
    #
    #   @return [Boolean]
    #
    # @!attribute timeout
    #   The allowed function execution time, after which Lambda should terminate the function. This timeout still applies to pinned Lambda functions for each request.
    #
    #   @return [Integer]
    #
    FunctionConfiguration = ::Struct.new(
      :encoding_type,
      :environment,
      :exec_args,
      :executable,
      :memory_size,
      :pinned,
      :timeout,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.memory_size ||= 0
        self.pinned ||= false
        self.timeout ||= 0
      end
    end

    # The environment configuration of the function.
    #
    # @!attribute access_sysfs
    #   If true, the Lambda function is allowed to access the host's /sys folder. Use this when the Lambda function needs to read device information from /sys. This setting applies only when you run the Lambda function in a Greengrass container.
    #
    #   @return [Boolean]
    #
    # @!attribute execution
    #   Configuration related to executing the Lambda function
    #
    #   @return [FunctionExecutionConfig]
    #
    # @!attribute resource_access_policies
    #   A list of the resources, with their permissions, to which the Lambda function will be granted access. A Lambda function can have at most 10 resources. ResourceAccessPolicies apply only when you run the Lambda function in a Greengrass container.
    #
    #   @return [Array<ResourceAccessPolicy>]
    #
    # @!attribute variables
    #   Environment variables for the Lambda function's configuration.
    #
    #   @return [Hash<String, String>]
    #
    FunctionConfigurationEnvironment = ::Struct.new(
      :access_sysfs,
      :execution,
      :resource_access_policies,
      :variables,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.access_sysfs ||= false
      end
    end

    # The default configuration that applies to all Lambda functions in the group. Individual Lambda functions can override these settings.
    #
    # @!attribute execution
    #   Configuration information that specifies how a Lambda function runs.
    #
    #   @return [FunctionDefaultExecutionConfig]
    #
    FunctionDefaultConfig = ::Struct.new(
      :execution,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Configuration information that specifies how a Lambda function runs.
    #
    # @!attribute isolation_mode
    #   Specifies whether the Lambda function runs in a Greengrass container (default) or without containerization. Unless your scenario requires that you run without containerization, we recommend that you run in a Greengrass container. Omit this value to run the Lambda function with the default containerization for the group.
    #
    #   Enum, one of: ["GreengrassContainer", "NoContainer"]
    #
    #   @return [String]
    #
    # @!attribute run_as
    #   Specifies the user and group whose permissions are used when running the Lambda function. You can specify one or both values to override the default values. We recommend that you avoid running as root unless absolutely necessary to minimize the risk of unintended changes or malicious attacks. To run as root, you must set ''IsolationMode'' to ''NoContainer'' and update config.json in ''greengrass-root/config'' to set ''allowFunctionsToRunAsRoot'' to ''yes''.
    #
    #   @return [FunctionRunAsConfig]
    #
    FunctionDefaultExecutionConfig = ::Struct.new(
      :isolation_mode,
      :run_as,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Information about a function definition version.
    #
    # @!attribute default_config
    #   The default configuration that applies to all Lambda functions in this function definition version. Individual Lambda functions can override these settings.
    #
    #   @return [FunctionDefaultConfig]
    #
    # @!attribute functions
    #   A list of Lambda functions in this function definition version.
    #
    #   @return [Array<Function>]
    #
    FunctionDefinitionVersion = ::Struct.new(
      :default_config,
      :functions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Configuration information that specifies how a Lambda function runs.
    #
    # @!attribute isolation_mode
    #   Specifies whether the Lambda function runs in a Greengrass container (default) or without containerization. Unless your scenario requires that you run without containerization, we recommend that you run in a Greengrass container. Omit this value to run the Lambda function with the default containerization for the group.
    #
    #   Enum, one of: ["GreengrassContainer", "NoContainer"]
    #
    #   @return [String]
    #
    # @!attribute run_as
    #   Specifies the user and group whose permissions are used when running the Lambda function. You can specify one or both values to override the default values. We recommend that you avoid running as root unless absolutely necessary to minimize the risk of unintended changes or malicious attacks. To run as root, you must set ''IsolationMode'' to ''NoContainer'' and update config.json in ''greengrass-root/config'' to set ''allowFunctionsToRunAsRoot'' to ''yes''.
    #
    #   @return [FunctionRunAsConfig]
    #
    FunctionExecutionConfig = ::Struct.new(
      :isolation_mode,
      :run_as,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FunctionIsolationMode
    #
    module FunctionIsolationMode
      # No documentation available.
      #
      GreengrassContainer = "GreengrassContainer"

      # No documentation available.
      #
      NoContainer = "NoContainer"
    end

    # Specifies the user and group whose permissions are used when running the Lambda function. You can specify one or both values to override the default values. We recommend that you avoid running as root unless absolutely necessary to minimize the risk of unintended changes or malicious attacks. To run as root, you must set ''IsolationMode'' to ''NoContainer'' and update config.json in ''greengrass-root/config'' to set ''allowFunctionsToRunAsRoot'' to ''yes''.
    #
    # @!attribute gid
    #   The group ID whose permissions are used to run a Lambda function.
    #
    #   @return [Integer]
    #
    # @!attribute uid
    #   The user ID whose permissions are used to run a Lambda function.
    #
    #   @return [Integer]
    #
    FunctionRunAsConfig = ::Struct.new(
      :gid,
      :uid,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.gid ||= 0
        self.uid ||= 0
      end
    end

    # @!attribute group_id
    #   The ID of the Greengrass group.
    #
    #   @return [String]
    #
    GetAssociatedRoleInput = ::Struct.new(
      :group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute associated_at
    #   The time when the role was associated with the group.
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   The ARN of the role that is associated with the group.
    #
    #   @return [String]
    #
    GetAssociatedRoleOutput = ::Struct.new(
      :associated_at,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bulk_deployment_id
    #   The ID of the bulk deployment.
    #
    #   @return [String]
    #
    GetBulkDeploymentStatusInput = ::Struct.new(
      :bulk_deployment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bulk_deployment_metrics
    #   Relevant metrics on input records processed during bulk deployment.
    #
    #   @return [BulkDeploymentMetrics]
    #
    # @!attribute bulk_deployment_status
    #   The status of the bulk deployment.
    #
    #   Enum, one of: ["Initializing", "Running", "Completed", "Stopping", "Stopped", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   The time, in ISO format, when the deployment was created.
    #
    #   @return [String]
    #
    # @!attribute error_details
    #   Error details
    #
    #   @return [Array<ErrorDetail>]
    #
    # @!attribute error_message
    #   Error message
    #
    #   @return [String]
    #
    # @!attribute tags
    #   Tag(s) attached to the resource arn.
    #
    #   @return [Hash<String, String>]
    #
    GetBulkDeploymentStatusOutput = ::Struct.new(
      :bulk_deployment_metrics,
      :bulk_deployment_status,
      :created_at,
      :error_details,
      :error_message,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute thing_name
    #   The thing name.
    #
    #   @return [String]
    #
    GetConnectivityInfoInput = ::Struct.new(
      :thing_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connectivity_info
    #   Connectivity info list.
    #
    #   @return [Array<ConnectivityInfo>]
    #
    # @!attribute message
    #   A message about the connectivity info request.
    #
    #   @return [String]
    #
    GetConnectivityInfoOutput = ::Struct.new(
      :connectivity_info,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connector_definition_id
    #   The ID of the connector definition.
    #
    #   @return [String]
    #
    GetConnectorDefinitionInput = ::Struct.new(
      :connector_definition_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The ARN of the definition.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the definition.
    #
    #   @return [String]
    #
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #
    #   @return [String]
    #
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The name of the definition.
    #
    #   @return [String]
    #
    # @!attribute tags
    #   Tag(s) attached to the resource arn.
    #
    #   @return [Hash<String, String>]
    #
    GetConnectorDefinitionOutput = ::Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connector_definition_id
    #   The ID of the connector definition.
    #
    #   @return [String]
    #
    # @!attribute connector_definition_version_id
    #   The ID of the connector definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListConnectorDefinitionVersions'' requests. If the version is the last one that was associated with a connector definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    GetConnectorDefinitionVersionInput = ::Struct.new(
      :connector_definition_id,
      :connector_definition_version_id,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The ARN of the connector definition version.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the connector definition version was created.
    #
    #   @return [String]
    #
    # @!attribute definition
    #   Information about the connector definition version.
    #
    #   @return [ConnectorDefinitionVersion]
    #
    # @!attribute id
    #   The ID of the connector definition version.
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    # @!attribute version
    #   The version of the connector definition version.
    #
    #   @return [String]
    #
    GetConnectorDefinitionVersionOutput = ::Struct.new(
      :arn,
      :creation_timestamp,
      :definition,
      :id,
      :next_token,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_definition_id
    #   The ID of the core definition.
    #
    #   @return [String]
    #
    GetCoreDefinitionInput = ::Struct.new(
      :core_definition_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The ARN of the definition.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the definition.
    #
    #   @return [String]
    #
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #
    #   @return [String]
    #
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The name of the definition.
    #
    #   @return [String]
    #
    # @!attribute tags
    #   Tag(s) attached to the resource arn.
    #
    #   @return [Hash<String, String>]
    #
    GetCoreDefinitionOutput = ::Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_definition_id
    #   The ID of the core definition.
    #
    #   @return [String]
    #
    # @!attribute core_definition_version_id
    #   The ID of the core definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListCoreDefinitionVersions'' requests. If the version is the last one that was associated with a core definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
    #
    #   @return [String]
    #
    GetCoreDefinitionVersionInput = ::Struct.new(
      :core_definition_id,
      :core_definition_version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The ARN of the core definition version.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the core definition version was created.
    #
    #   @return [String]
    #
    # @!attribute definition
    #   Information about the core definition version.
    #
    #   @return [CoreDefinitionVersion]
    #
    # @!attribute id
    #   The ID of the core definition version.
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    # @!attribute version
    #   The version of the core definition version.
    #
    #   @return [String]
    #
    GetCoreDefinitionVersionOutput = ::Struct.new(
      :arn,
      :creation_timestamp,
      :definition,
      :id,
      :next_token,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute deployment_id
    #   The ID of the deployment.
    #
    #   @return [String]
    #
    # @!attribute group_id
    #   The ID of the Greengrass group.
    #
    #   @return [String]
    #
    GetDeploymentStatusInput = ::Struct.new(
      :deployment_id,
      :group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute deployment_status
    #   The status of the deployment: ''InProgress'', ''Building'', ''Success'', or ''Failure''.
    #
    #   @return [String]
    #
    # @!attribute deployment_type
    #   The type of the deployment.
    #
    #   Enum, one of: ["NewDeployment", "Redeployment", "ResetDeployment", "ForceResetDeployment"]
    #
    #   @return [String]
    #
    # @!attribute error_details
    #   Error details
    #
    #   @return [Array<ErrorDetail>]
    #
    # @!attribute error_message
    #   Error message
    #
    #   @return [String]
    #
    # @!attribute updated_at
    #   The time, in milliseconds since the epoch, when the deployment status was updated.
    #
    #   @return [String]
    #
    GetDeploymentStatusOutput = ::Struct.new(
      :deployment_status,
      :deployment_type,
      :error_details,
      :error_message,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_definition_id
    #   The ID of the device definition.
    #
    #   @return [String]
    #
    GetDeviceDefinitionInput = ::Struct.new(
      :device_definition_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The ARN of the definition.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the definition.
    #
    #   @return [String]
    #
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #
    #   @return [String]
    #
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The name of the definition.
    #
    #   @return [String]
    #
    # @!attribute tags
    #   Tag(s) attached to the resource arn.
    #
    #   @return [Hash<String, String>]
    #
    GetDeviceDefinitionOutput = ::Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_definition_id
    #   The ID of the device definition.
    #
    #   @return [String]
    #
    # @!attribute device_definition_version_id
    #   The ID of the device definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListDeviceDefinitionVersions'' requests. If the version is the last one that was associated with a device definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    GetDeviceDefinitionVersionInput = ::Struct.new(
      :device_definition_id,
      :device_definition_version_id,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The ARN of the device definition version.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the device definition version was created.
    #
    #   @return [String]
    #
    # @!attribute definition
    #   Information about the device definition version.
    #
    #   @return [DeviceDefinitionVersion]
    #
    # @!attribute id
    #   The ID of the device definition version.
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    # @!attribute version
    #   The version of the device definition version.
    #
    #   @return [String]
    #
    GetDeviceDefinitionVersionOutput = ::Struct.new(
      :arn,
      :creation_timestamp,
      :definition,
      :id,
      :next_token,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute function_definition_id
    #   The ID of the Lambda function definition.
    #
    #   @return [String]
    #
    GetFunctionDefinitionInput = ::Struct.new(
      :function_definition_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The ARN of the definition.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the definition.
    #
    #   @return [String]
    #
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #
    #   @return [String]
    #
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The name of the definition.
    #
    #   @return [String]
    #
    # @!attribute tags
    #   Tag(s) attached to the resource arn.
    #
    #   @return [Hash<String, String>]
    #
    GetFunctionDefinitionOutput = ::Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute function_definition_id
    #   The ID of the Lambda function definition.
    #
    #   @return [String]
    #
    # @!attribute function_definition_version_id
    #   The ID of the function definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListFunctionDefinitionVersions'' requests. If the version is the last one that was associated with a function definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    GetFunctionDefinitionVersionInput = ::Struct.new(
      :function_definition_id,
      :function_definition_version_id,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The ARN of the function definition version.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the function definition version was created.
    #
    #   @return [String]
    #
    # @!attribute definition
    #   Information on the definition.
    #
    #   @return [FunctionDefinitionVersion]
    #
    # @!attribute id
    #   The ID of the function definition version.
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    # @!attribute version
    #   The version of the function definition version.
    #
    #   @return [String]
    #
    GetFunctionDefinitionVersionOutput = ::Struct.new(
      :arn,
      :creation_timestamp,
      :definition,
      :id,
      :next_token,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_authority_id
    #   The ID of the certificate authority.
    #
    #   @return [String]
    #
    # @!attribute group_id
    #   The ID of the Greengrass group.
    #
    #   @return [String]
    #
    GetGroupCertificateAuthorityInput = ::Struct.new(
      :certificate_authority_id,
      :group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_certificate_authority_arn
    #   The ARN of the certificate authority for the group.
    #
    #   @return [String]
    #
    # @!attribute group_certificate_authority_id
    #   The ID of the certificate authority for the group.
    #
    #   @return [String]
    #
    # @!attribute pem_encoded_certificate
    #   The PEM encoded certificate for the group.
    #
    #   @return [String]
    #
    GetGroupCertificateAuthorityOutput = ::Struct.new(
      :group_certificate_authority_arn,
      :group_certificate_authority_id,
      :pem_encoded_certificate,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_id
    #   The ID of the Greengrass group.
    #
    #   @return [String]
    #
    GetGroupCertificateConfigurationInput = ::Struct.new(
      :group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_authority_expiry_in_milliseconds
    #   The amount of time remaining before the certificate authority expires, in milliseconds.
    #
    #   @return [String]
    #
    # @!attribute certificate_expiry_in_milliseconds
    #   The amount of time remaining before the certificate expires, in milliseconds.
    #
    #   @return [String]
    #
    # @!attribute group_id
    #   The ID of the group certificate configuration.
    #
    #   @return [String]
    #
    GetGroupCertificateConfigurationOutput = ::Struct.new(
      :certificate_authority_expiry_in_milliseconds,
      :certificate_expiry_in_milliseconds,
      :group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_id
    #   The ID of the Greengrass group.
    #
    #   @return [String]
    #
    GetGroupInput = ::Struct.new(
      :group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The ARN of the definition.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the definition.
    #
    #   @return [String]
    #
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #
    #   @return [String]
    #
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The name of the definition.
    #
    #   @return [String]
    #
    # @!attribute tags
    #   Tag(s) attached to the resource arn.
    #
    #   @return [Hash<String, String>]
    #
    GetGroupOutput = ::Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_id
    #   The ID of the Greengrass group.
    #
    #   @return [String]
    #
    # @!attribute group_version_id
    #   The ID of the group version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListGroupVersions'' requests. If the version is the last one that was associated with a group, the value also maps to the ''LatestVersion'' property of the corresponding ''GroupInformation'' object.
    #
    #   @return [String]
    #
    GetGroupVersionInput = ::Struct.new(
      :group_id,
      :group_version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The ARN of the group version.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the group version was created.
    #
    #   @return [String]
    #
    # @!attribute definition
    #   Information about the group version definition.
    #
    #   @return [GroupVersion]
    #
    # @!attribute id
    #   The ID of the group that the version is associated with.
    #
    #   @return [String]
    #
    # @!attribute version
    #   The ID of the group version.
    #
    #   @return [String]
    #
    GetGroupVersionOutput = ::Struct.new(
      :arn,
      :creation_timestamp,
      :definition,
      :id,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute logger_definition_id
    #   The ID of the logger definition.
    #
    #   @return [String]
    #
    GetLoggerDefinitionInput = ::Struct.new(
      :logger_definition_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The ARN of the definition.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the definition.
    #
    #   @return [String]
    #
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #
    #   @return [String]
    #
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The name of the definition.
    #
    #   @return [String]
    #
    # @!attribute tags
    #   Tag(s) attached to the resource arn.
    #
    #   @return [Hash<String, String>]
    #
    GetLoggerDefinitionOutput = ::Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute logger_definition_id
    #   The ID of the logger definition.
    #
    #   @return [String]
    #
    # @!attribute logger_definition_version_id
    #   The ID of the logger definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListLoggerDefinitionVersions'' requests. If the version is the last one that was associated with a logger definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    GetLoggerDefinitionVersionInput = ::Struct.new(
      :logger_definition_id,
      :logger_definition_version_id,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The ARN of the logger definition version.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the logger definition version was created.
    #
    #   @return [String]
    #
    # @!attribute definition
    #   Information about the logger definition version.
    #
    #   @return [LoggerDefinitionVersion]
    #
    # @!attribute id
    #   The ID of the logger definition version.
    #
    #   @return [String]
    #
    # @!attribute version
    #   The version of the logger definition version.
    #
    #   @return [String]
    #
    GetLoggerDefinitionVersionOutput = ::Struct.new(
      :arn,
      :creation_timestamp,
      :definition,
      :id,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_definition_id
    #   The ID of the resource definition.
    #
    #   @return [String]
    #
    GetResourceDefinitionInput = ::Struct.new(
      :resource_definition_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The ARN of the definition.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the definition.
    #
    #   @return [String]
    #
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #
    #   @return [String]
    #
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The name of the definition.
    #
    #   @return [String]
    #
    # @!attribute tags
    #   Tag(s) attached to the resource arn.
    #
    #   @return [Hash<String, String>]
    #
    GetResourceDefinitionOutput = ::Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_definition_id
    #   The ID of the resource definition.
    #
    #   @return [String]
    #
    # @!attribute resource_definition_version_id
    #   The ID of the resource definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListResourceDefinitionVersions'' requests. If the version is the last one that was associated with a resource definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
    #
    #   @return [String]
    #
    GetResourceDefinitionVersionInput = ::Struct.new(
      :resource_definition_id,
      :resource_definition_version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   Arn of the resource definition version.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the resource definition version was created.
    #
    #   @return [String]
    #
    # @!attribute definition
    #   Information about the definition.
    #
    #   @return [ResourceDefinitionVersion]
    #
    # @!attribute id
    #   The ID of the resource definition version.
    #
    #   @return [String]
    #
    # @!attribute version
    #   The version of the resource definition version.
    #
    #   @return [String]
    #
    GetResourceDefinitionVersionOutput = ::Struct.new(
      :arn,
      :creation_timestamp,
      :definition,
      :id,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetServiceRoleForAccountInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute associated_at
    #   The time when the service role was associated with the account.
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   The ARN of the role which is associated with the account.
    #
    #   @return [String]
    #
    GetServiceRoleForAccountOutput = ::Struct.new(
      :associated_at,
      :role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute subscription_definition_id
    #   The ID of the subscription definition.
    #
    #   @return [String]
    #
    GetSubscriptionDefinitionInput = ::Struct.new(
      :subscription_definition_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The ARN of the definition.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the definition was created.
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the definition.
    #
    #   @return [String]
    #
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the definition was last updated.
    #
    #   @return [String]
    #
    # @!attribute latest_version
    #   The ID of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the definition.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The name of the definition.
    #
    #   @return [String]
    #
    # @!attribute tags
    #   Tag(s) attached to the resource arn.
    #
    #   @return [Hash<String, String>]
    #
    GetSubscriptionDefinitionOutput = ::Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    # @!attribute subscription_definition_id
    #   The ID of the subscription definition.
    #
    #   @return [String]
    #
    # @!attribute subscription_definition_version_id
    #   The ID of the subscription definition version. This value maps to the ''Version'' property of the corresponding ''VersionInformation'' object, which is returned by ''ListSubscriptionDefinitionVersions'' requests. If the version is the last one that was associated with a subscription definition, the value also maps to the ''LatestVersion'' property of the corresponding ''DefinitionInformation'' object.
    #
    #   @return [String]
    #
    GetSubscriptionDefinitionVersionInput = ::Struct.new(
      :next_token,
      :subscription_definition_id,
      :subscription_definition_version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   The ARN of the subscription definition version.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the subscription definition version was created.
    #
    #   @return [String]
    #
    # @!attribute definition
    #   Information about the subscription definition version.
    #
    #   @return [SubscriptionDefinitionVersion]
    #
    # @!attribute id
    #   The ID of the subscription definition version.
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    # @!attribute version
    #   The version of the subscription definition version.
    #
    #   @return [String]
    #
    GetSubscriptionDefinitionVersionOutput = ::Struct.new(
      :arn,
      :creation_timestamp,
      :definition,
      :id,
      :next_token,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute thing_name
    #   The thing name.
    #
    #   @return [String]
    #
    GetThingRuntimeConfigurationInput = ::Struct.new(
      :thing_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute runtime_configuration
    #   Runtime configuration for a thing.
    #
    #   @return [RuntimeConfiguration]
    #
    GetThingRuntimeConfigurationOutput = ::Struct.new(
      :runtime_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Information about a certificate authority for a group.
    #
    # @!attribute group_certificate_authority_arn
    #   The ARN of the certificate authority for the group.
    #
    #   @return [String]
    #
    # @!attribute group_certificate_authority_id
    #   The ID of the certificate authority for the group.
    #
    #   @return [String]
    #
    GroupCertificateAuthorityProperties = ::Struct.new(
      :group_certificate_authority_arn,
      :group_certificate_authority_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Information about a group.
    #
    # @!attribute arn
    #   The ARN of the group.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the group was created.
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the group.
    #
    #   @return [String]
    #
    # @!attribute last_updated_timestamp
    #   The time, in milliseconds since the epoch, when the group was last updated.
    #
    #   @return [String]
    #
    # @!attribute latest_version
    #   The ID of the latest version associated with the group.
    #
    #   @return [String]
    #
    # @!attribute latest_version_arn
    #   The ARN of the latest version associated with the group.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The name of the group.
    #
    #   @return [String]
    #
    GroupInformation = ::Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :last_updated_timestamp,
      :latest_version,
      :latest_version_arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Group owner related settings for local resources.
    #
    # @!attribute auto_add_group_owner
    #   If true, AWS IoT Greengrass automatically adds the specified Linux OS group owner of the resource to the Lambda process privileges. Thus the Lambda process will have the file access permissions of the added Linux group.
    #
    #   @return [Boolean]
    #
    # @!attribute group_owner
    #   The name of the Linux OS group whose privileges will be added to the Lambda process. This field is optional.
    #
    #   @return [String]
    #
    GroupOwnerSetting = ::Struct.new(
      :auto_add_group_owner,
      :group_owner,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.auto_add_group_owner ||= false
      end
    end

    # Information about a group version.
    #
    # @!attribute connector_definition_version_arn
    #   The ARN of the connector definition version for this group.
    #
    #   @return [String]
    #
    # @!attribute core_definition_version_arn
    #   The ARN of the core definition version for this group.
    #
    #   @return [String]
    #
    # @!attribute device_definition_version_arn
    #   The ARN of the device definition version for this group.
    #
    #   @return [String]
    #
    # @!attribute function_definition_version_arn
    #   The ARN of the function definition version for this group.
    #
    #   @return [String]
    #
    # @!attribute logger_definition_version_arn
    #   The ARN of the logger definition version for this group.
    #
    #   @return [String]
    #
    # @!attribute resource_definition_version_arn
    #   The ARN of the resource definition version for this group.
    #
    #   @return [String]
    #
    # @!attribute subscription_definition_version_arn
    #   The ARN of the subscription definition version for this group.
    #
    #   @return [String]
    #
    GroupVersion = ::Struct.new(
      :connector_definition_version_arn,
      :core_definition_version_arn,
      :device_definition_version_arn,
      :function_definition_version_arn,
      :logger_definition_version_arn,
      :resource_definition_version_arn,
      :subscription_definition_version_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # General error information.
    #
    # @!attribute error_details
    #   Details about the error.
    #
    #   @return [Array<ErrorDetail>]
    #
    # @!attribute message
    #   A message containing information about the error.
    #
    #   @return [String]
    #
    InternalServerErrorException = ::Struct.new(
      :error_details,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bulk_deployment_id
    #   The ID of the bulk deployment.
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    ListBulkDeploymentDetailedReportsInput = ::Struct.new(
      :bulk_deployment_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute deployments
    #   A list of the individual group deployments in the bulk deployment operation.
    #
    #   @return [Array<BulkDeploymentResult>]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    ListBulkDeploymentDetailedReportsOutput = ::Struct.new(
      :deployments,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    ListBulkDeploymentsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bulk_deployments
    #   A list of bulk deployments.
    #
    #   @return [Array<BulkDeployment>]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    ListBulkDeploymentsOutput = ::Struct.new(
      :bulk_deployments,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connector_definition_id
    #   The ID of the connector definition.
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    ListConnectorDefinitionVersionsInput = ::Struct.new(
      :connector_definition_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    # @!attribute versions
    #   Information about a version.
    #
    #   @return [Array<VersionInformation>]
    #
    ListConnectorDefinitionVersionsOutput = ::Struct.new(
      :next_token,
      :versions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    ListConnectorDefinitionsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute definitions
    #   Information about a definition.
    #
    #   @return [Array<DefinitionInformation>]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    ListConnectorDefinitionsOutput = ::Struct.new(
      :definitions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_definition_id
    #   The ID of the core definition.
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    ListCoreDefinitionVersionsInput = ::Struct.new(
      :core_definition_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    # @!attribute versions
    #   Information about a version.
    #
    #   @return [Array<VersionInformation>]
    #
    ListCoreDefinitionVersionsOutput = ::Struct.new(
      :next_token,
      :versions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    ListCoreDefinitionsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute definitions
    #   Information about a definition.
    #
    #   @return [Array<DefinitionInformation>]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    ListCoreDefinitionsOutput = ::Struct.new(
      :definitions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_id
    #   The ID of the Greengrass group.
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    ListDeploymentsInput = ::Struct.new(
      :group_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute deployments
    #   A list of deployments for the requested groups.
    #
    #   @return [Array<Deployment>]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    ListDeploymentsOutput = ::Struct.new(
      :deployments,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_definition_id
    #   The ID of the device definition.
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    ListDeviceDefinitionVersionsInput = ::Struct.new(
      :device_definition_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    # @!attribute versions
    #   Information about a version.
    #
    #   @return [Array<VersionInformation>]
    #
    ListDeviceDefinitionVersionsOutput = ::Struct.new(
      :next_token,
      :versions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    ListDeviceDefinitionsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute definitions
    #   Information about a definition.
    #
    #   @return [Array<DefinitionInformation>]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    ListDeviceDefinitionsOutput = ::Struct.new(
      :definitions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute function_definition_id
    #   The ID of the Lambda function definition.
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    ListFunctionDefinitionVersionsInput = ::Struct.new(
      :function_definition_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    # @!attribute versions
    #   Information about a version.
    #
    #   @return [Array<VersionInformation>]
    #
    ListFunctionDefinitionVersionsOutput = ::Struct.new(
      :next_token,
      :versions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    ListFunctionDefinitionsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute definitions
    #   Information about a definition.
    #
    #   @return [Array<DefinitionInformation>]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    ListFunctionDefinitionsOutput = ::Struct.new(
      :definitions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_id
    #   The ID of the Greengrass group.
    #
    #   @return [String]
    #
    ListGroupCertificateAuthoritiesInput = ::Struct.new(
      :group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_certificate_authorities
    #   A list of certificate authorities associated with the group.
    #
    #   @return [Array<GroupCertificateAuthorityProperties>]
    #
    ListGroupCertificateAuthoritiesOutput = ::Struct.new(
      :group_certificate_authorities,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_id
    #   The ID of the Greengrass group.
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    ListGroupVersionsInput = ::Struct.new(
      :group_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    # @!attribute versions
    #   Information about a version.
    #
    #   @return [Array<VersionInformation>]
    #
    ListGroupVersionsOutput = ::Struct.new(
      :next_token,
      :versions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    ListGroupsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute groups
    #   Information about a group.
    #
    #   @return [Array<GroupInformation>]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    ListGroupsOutput = ::Struct.new(
      :groups,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute logger_definition_id
    #   The ID of the logger definition.
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    ListLoggerDefinitionVersionsInput = ::Struct.new(
      :logger_definition_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    # @!attribute versions
    #   Information about a version.
    #
    #   @return [Array<VersionInformation>]
    #
    ListLoggerDefinitionVersionsOutput = ::Struct.new(
      :next_token,
      :versions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    ListLoggerDefinitionsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute definitions
    #   Information about a definition.
    #
    #   @return [Array<DefinitionInformation>]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    ListLoggerDefinitionsOutput = ::Struct.new(
      :definitions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    # @!attribute resource_definition_id
    #   The ID of the resource definition.
    #
    #   @return [String]
    #
    ListResourceDefinitionVersionsInput = ::Struct.new(
      :max_results,
      :next_token,
      :resource_definition_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    # @!attribute versions
    #   Information about a version.
    #
    #   @return [Array<VersionInformation>]
    #
    ListResourceDefinitionVersionsOutput = ::Struct.new(
      :next_token,
      :versions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    ListResourceDefinitionsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute definitions
    #   Information about a definition.
    #
    #   @return [Array<DefinitionInformation>]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    ListResourceDefinitionsOutput = ::Struct.new(
      :definitions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    # @!attribute subscription_definition_id
    #   The ID of the subscription definition.
    #
    #   @return [String]
    #
    ListSubscriptionDefinitionVersionsInput = ::Struct.new(
      :max_results,
      :next_token,
      :subscription_definition_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    # @!attribute versions
    #   Information about a version.
    #
    #   @return [Array<VersionInformation>]
    #
    ListSubscriptionDefinitionVersionsOutput = ::Struct.new(
      :next_token,
      :versions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   The maximum number of results to be returned per request.
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    ListSubscriptionDefinitionsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute definitions
    #   Information about a definition.
    #
    #   @return [Array<DefinitionInformation>]
    #
    # @!attribute next_token
    #   The token for the next set of results, or ''null'' if there are no additional results.
    #
    #   @return [String]
    #
    ListSubscriptionDefinitionsOutput = ::Struct.new(
      :definitions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
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
    #   The key-value pair for the resource tag.
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Attributes that define a local device resource.
    #
    # @!attribute group_owner_setting
    #   Group/owner related settings for local resources.
    #
    #   @return [GroupOwnerSetting]
    #
    # @!attribute source_path
    #   The local absolute path of the device resource. The source path for a device resource can refer only to a character device or block device under ''/dev''.
    #
    #   @return [String]
    #
    LocalDeviceResourceData = ::Struct.new(
      :group_owner_setting,
      :source_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Attributes that define a local volume resource.
    #
    # @!attribute destination_path
    #   The absolute local path of the resource inside the Lambda environment.
    #
    #   @return [String]
    #
    # @!attribute group_owner_setting
    #   Allows you to configure additional group privileges for the Lambda process. This field is optional.
    #
    #   @return [GroupOwnerSetting]
    #
    # @!attribute source_path
    #   The local absolute path of the volume resource on the host. The source path for a volume resource type cannot start with ''/sys''.
    #
    #   @return [String]
    #
    LocalVolumeResourceData = ::Struct.new(
      :destination_path,
      :group_owner_setting,
      :source_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Information about a logger
    #
    # @!attribute component
    #   The component that will be subject to logging.
    #
    #   Enum, one of: ["GreengrassSystem", "Lambda"]
    #
    #   @return [String]
    #
    # @!attribute id
    #   A descriptive or arbitrary ID for the logger. This value must be unique within the logger definition version. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''.
    #
    #   @return [String]
    #
    # @!attribute level
    #   The level of the logs.
    #
    #   Enum, one of: ["DEBUG", "INFO", "WARN", "ERROR", "FATAL"]
    #
    #   @return [String]
    #
    # @!attribute space
    #   The amount of file space, in KB, to use if the local file system is used for logging purposes.
    #
    #   @return [Integer]
    #
    # @!attribute type
    #   The type of log output which will be used.
    #
    #   Enum, one of: ["FileSystem", "AWSCloudWatch"]
    #
    #   @return [String]
    #
    Logger = ::Struct.new(
      :component,
      :id,
      :level,
      :space,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.space ||= 0
      end
    end

    # Includes enum constants for LoggerComponent
    #
    module LoggerComponent
      # No documentation available.
      #
      GreengrassSystem = "GreengrassSystem"

      # No documentation available.
      #
      Lambda = "Lambda"
    end

    # Information about a logger definition version.
    #
    # @!attribute loggers
    #   A list of loggers.
    #
    #   @return [Array<Logger>]
    #
    LoggerDefinitionVersion = ::Struct.new(
      :loggers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LoggerLevel
    #
    module LoggerLevel
      # No documentation available.
      #
      DEBUG = "DEBUG"

      # No documentation available.
      #
      INFO = "INFO"

      # No documentation available.
      #
      WARN = "WARN"

      # No documentation available.
      #
      ERROR = "ERROR"

      # No documentation available.
      #
      FATAL = "FATAL"
    end

    # Includes enum constants for LoggerType
    #
    module LoggerType
      # No documentation available.
      #
      FileSystem = "FileSystem"

      # No documentation available.
      #
      AWSCloudWatch = "AWSCloudWatch"
    end

    # Includes enum constants for Permission
    #
    module Permission
      # No documentation available.
      #
      ro = "ro"

      # No documentation available.
      #
      rw = "rw"
    end

    # Information needed to reset deployments.
    #
    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    #   @return [String]
    #
    # @!attribute force
    #   If true, performs a best-effort only core reset.
    #
    #   @return [Boolean]
    #
    # @!attribute group_id
    #   The ID of the Greengrass group.
    #
    #   @return [String]
    #
    ResetDeploymentsInput = ::Struct.new(
      :amzn_client_token,
      :force,
      :group_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.force ||= false
      end
    end

    # @!attribute deployment_arn
    #   The ARN of the deployment.
    #
    #   @return [String]
    #
    # @!attribute deployment_id
    #   The ID of the deployment.
    #
    #   @return [String]
    #
    ResetDeploymentsOutput = ::Struct.new(
      :deployment_arn,
      :deployment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Information about a resource.
    #
    # @!attribute id
    #   The resource ID, used to refer to a resource in the Lambda function configuration. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''. This must be unique within a Greengrass group.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The descriptive resource name, which is displayed on the AWS IoT Greengrass console. Max length 128 characters with pattern ''[a-zA-Z0-9:_-]+''. This must be unique within a Greengrass group.
    #
    #   @return [String]
    #
    # @!attribute resource_data_container
    #   A container of data for all resource types.
    #
    #   @return [ResourceDataContainer]
    #
    Resource = ::Struct.new(
      :id,
      :name,
      :resource_data_container,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A policy used by the function to access a resource.
    #
    # @!attribute permission
    #   The permissions that the Lambda function has to the resource. Can be one of ''rw'' (read/write) or ''ro'' (read-only).
    #
    #   Enum, one of: ["ro", "rw"]
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   The ID of the resource. (This ID is assigned to the resource when you create the resource definiton.)
    #
    #   @return [String]
    #
    ResourceAccessPolicy = ::Struct.new(
      :permission,
      :resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A container for resource data. The container takes only one of the following supported resource data types: ''LocalDeviceResourceData'', ''LocalVolumeResourceData'', ''SageMakerMachineLearningModelResourceData'', ''S3MachineLearningModelResourceData'', ''SecretsManagerSecretResourceData''.
    #
    # @!attribute local_device_resource_data
    #   Attributes that define the local device resource.
    #
    #   @return [LocalDeviceResourceData]
    #
    # @!attribute local_volume_resource_data
    #   Attributes that define the local volume resource.
    #
    #   @return [LocalVolumeResourceData]
    #
    # @!attribute s3_machine_learning_model_resource_data
    #   Attributes that define an Amazon S3 machine learning resource.
    #
    #   @return [S3MachineLearningModelResourceData]
    #
    # @!attribute sage_maker_machine_learning_model_resource_data
    #   Attributes that define an Amazon SageMaker machine learning resource.
    #
    #   @return [SageMakerMachineLearningModelResourceData]
    #
    # @!attribute secrets_manager_secret_resource_data
    #   Attributes that define a secret resource, which references a secret from AWS Secrets Manager.
    #
    #   @return [SecretsManagerSecretResourceData]
    #
    ResourceDataContainer = ::Struct.new(
      :local_device_resource_data,
      :local_volume_resource_data,
      :s3_machine_learning_model_resource_data,
      :sage_maker_machine_learning_model_resource_data,
      :secrets_manager_secret_resource_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Information about a resource definition version.
    #
    # @!attribute resources
    #   A list of resources.
    #
    #   @return [Array<Resource>]
    #
    ResourceDefinitionVersion = ::Struct.new(
      :resources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The owner setting for downloaded machine learning resources.
    #
    # @!attribute group_owner
    #   The group owner of the resource. This is the name of an existing Linux OS group on the system or a GID. The group's permissions are added to the Lambda process.
    #
    #   @return [String]
    #
    # @!attribute group_permission
    #   The permissions that the group owner has to the resource. Valid values are ''rw'' (read/write) or ''ro'' (read-only).
    #
    #   Enum, one of: ["ro", "rw"]
    #
    #   @return [String]
    #
    ResourceDownloadOwnerSetting = ::Struct.new(
      :group_owner,
      :group_permission,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Runtime configuration for a thing.
    #
    # @!attribute telemetry_configuration
    #   Configuration for telemetry service.
    #
    #   @return [TelemetryConfiguration]
    #
    RuntimeConfiguration = ::Struct.new(
      :telemetry_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Attributes that define an Amazon S3 machine learning resource.
    #
    # @!attribute destination_path
    #   The absolute local path of the resource inside the Lambda environment.
    #
    #   @return [String]
    #
    # @!attribute owner_setting
    #   The owner setting for downloaded machine learning resources.
    #
    #   @return [ResourceDownloadOwnerSetting]
    #
    # @!attribute s3_uri
    #   The URI of the source model in an S3 bucket. The model package must be in tar.gz or .zip format.
    #
    #   @return [String]
    #
    S3MachineLearningModelResourceData = ::Struct.new(
      :destination_path,
      :owner_setting,
      :s3_uri,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Attributes that define an Amazon SageMaker machine learning resource.
    #
    # @!attribute destination_path
    #   The absolute local path of the resource inside the Lambda environment.
    #
    #   @return [String]
    #
    # @!attribute owner_setting
    #   The owner setting for downloaded machine learning resources.
    #
    #   @return [ResourceDownloadOwnerSetting]
    #
    # @!attribute sage_maker_job_arn
    #   The ARN of the Amazon SageMaker training job that represents the source model.
    #
    #   @return [String]
    #
    SageMakerMachineLearningModelResourceData = ::Struct.new(
      :destination_path,
      :owner_setting,
      :sage_maker_job_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Attributes that define a secret resource, which references a secret from AWS Secrets Manager. AWS IoT Greengrass stores a local, encrypted copy of the secret on the Greengrass core, where it can be securely accessed by connectors and Lambda functions.
    #
    # @!attribute arn
    #   The ARN of the Secrets Manager secret to make available on the core. The value of the secret's latest version (represented by the ''AWSCURRENT'' staging label) is included by default.
    #
    #   @return [String]
    #
    # @!attribute additional_staging_labels_to_download
    #   Optional. The staging labels whose values you want to make available on the core, in addition to ''AWSCURRENT''.
    #
    #   @return [Array<String>]
    #
    SecretsManagerSecretResourceData = ::Struct.new(
      :arn,
      :additional_staging_labels_to_download,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SoftwareToUpdate
    #
    module SoftwareToUpdate
      # No documentation available.
      #
      core = "core"

      # No documentation available.
      #
      ota_agent = "ota_agent"
    end

    # @!attribute amzn_client_token
    #   A client token used to correlate requests and responses.
    #
    #   @return [String]
    #
    # @!attribute execution_role_arn
    #   The ARN of the execution role to associate with the bulk deployment operation. This IAM role must allow the ''greengrass:CreateDeployment'' action for all group versions that are listed in the input file. This IAM role must have access to the S3 bucket containing the input file.
    #
    #   @return [String]
    #
    # @!attribute input_file_uri
    #   The URI of the input file contained in the S3 bucket. The execution role must have ''getObject'' permissions on this bucket to access the input file. The input file is a JSON-serialized, line delimited file with UTF-8 encoding that provides a list of group and version IDs and the deployment type. This file must be less than 100 MB. Currently, AWS IoT Greengrass supports only ''NewDeployment'' deployment types.
    #
    #   @return [String]
    #
    # @!attribute tags
    #   Tag(s) to add to the new resource.
    #
    #   @return [Hash<String, String>]
    #
    StartBulkDeploymentInput = ::Struct.new(
      :amzn_client_token,
      :execution_role_arn,
      :input_file_uri,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bulk_deployment_arn
    #   The ARN of the bulk deployment.
    #
    #   @return [String]
    #
    # @!attribute bulk_deployment_id
    #   The ID of the bulk deployment.
    #
    #   @return [String]
    #
    StartBulkDeploymentOutput = ::Struct.new(
      :bulk_deployment_arn,
      :bulk_deployment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bulk_deployment_id
    #   The ID of the bulk deployment.
    #
    #   @return [String]
    #
    StopBulkDeploymentInput = ::Struct.new(
      :bulk_deployment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StopBulkDeploymentOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Information about a subscription.
    #
    # @!attribute id
    #   A descriptive or arbitrary ID for the subscription. This value must be unique within the subscription definition version. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''.
    #
    #   @return [String]
    #
    # @!attribute source
    #   The source of the subscription. Can be a thing ARN, a Lambda function ARN, a connector ARN, 'cloud' (which represents the AWS IoT cloud), or 'GGShadowService'.
    #
    #   @return [String]
    #
    # @!attribute subject
    #   The MQTT topic used to route the message.
    #
    #   @return [String]
    #
    # @!attribute target
    #   Where the message is sent to. Can be a thing ARN, a Lambda function ARN, a connector ARN, 'cloud' (which represents the AWS IoT cloud), or 'GGShadowService'.
    #
    #   @return [String]
    #
    Subscription = ::Struct.new(
      :id,
      :source,
      :subject,
      :target,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Information about a subscription definition version.
    #
    # @!attribute subscriptions
    #   A list of subscriptions.
    #
    #   @return [Array<Subscription>]
    #
    SubscriptionDefinitionVersion = ::Struct.new(
      :subscriptions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # A map of the key-value pairs for the resource tag.
    #
    # @!attribute resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    #   @return [String]
    #
    # @!attribute tags
    #   The key-value pair for the resource tag.
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

    # Includes enum constants for Telemetry
    #
    module Telemetry
      # No documentation available.
      #
      On = "On"

      # No documentation available.
      #
      Off = "Off"
    end

    # Configuration settings for running telemetry.
    #
    # @!attribute configuration_sync_status
    #   Synchronization status of the device reported configuration with the desired configuration.
    #
    #   Enum, one of: ["InSync", "OutOfSync"]
    #
    #   @return [String]
    #
    # @!attribute telemetry
    #   Configure telemetry to be on or off.
    #
    #   Enum, one of: ["On", "Off"]
    #
    #   @return [String]
    #
    TelemetryConfiguration = ::Struct.new(
      :configuration_sync_status,
      :telemetry,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Configuration settings for running telemetry.
    #
    # @!attribute telemetry
    #   Configure telemetry to be on or off.
    #
    #   Enum, one of: ["On", "Off"]
    #
    #   @return [String]
    #
    TelemetryConfigurationUpdate = ::Struct.new(
      :telemetry,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   An array of tag keys to delete
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

    # Includes enum constants for UpdateAgentLogLevel
    #
    module UpdateAgentLogLevel
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      TRACE = "TRACE"

      # No documentation available.
      #
      DEBUG = "DEBUG"

      # No documentation available.
      #
      VERBOSE = "VERBOSE"

      # No documentation available.
      #
      INFO = "INFO"

      # No documentation available.
      #
      WARN = "WARN"

      # No documentation available.
      #
      ERROR = "ERROR"

      # No documentation available.
      #
      FATAL = "FATAL"
    end

    # Connectivity information.
    #
    # @!attribute connectivity_info
    #   A list of connectivity info.
    #
    #   @return [Array<ConnectivityInfo>]
    #
    # @!attribute thing_name
    #   The thing name.
    #
    #   @return [String]
    #
    UpdateConnectivityInfoInput = ::Struct.new(
      :connectivity_info,
      :thing_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute message
    #   A message about the connectivity info update request.
    #
    #   @return [String]
    #
    # @!attribute version
    #   The new version of the connectivity info.
    #
    #   @return [String]
    #
    UpdateConnectivityInfoOutput = ::Struct.new(
      :message,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connector_definition_id
    #   The ID of the connector definition.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The name of the definition.
    #
    #   @return [String]
    #
    UpdateConnectorDefinitionInput = ::Struct.new(
      :connector_definition_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateConnectorDefinitionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute core_definition_id
    #   The ID of the core definition.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The name of the definition.
    #
    #   @return [String]
    #
    UpdateCoreDefinitionInput = ::Struct.new(
      :core_definition_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateCoreDefinitionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_definition_id
    #   The ID of the device definition.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The name of the definition.
    #
    #   @return [String]
    #
    UpdateDeviceDefinitionInput = ::Struct.new(
      :device_definition_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateDeviceDefinitionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute function_definition_id
    #   The ID of the Lambda function definition.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The name of the definition.
    #
    #   @return [String]
    #
    UpdateFunctionDefinitionInput = ::Struct.new(
      :function_definition_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateFunctionDefinitionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_expiry_in_milliseconds
    #   The amount of time remaining before the certificate expires, in milliseconds.
    #
    #   @return [String]
    #
    # @!attribute group_id
    #   The ID of the Greengrass group.
    #
    #   @return [String]
    #
    UpdateGroupCertificateConfigurationInput = ::Struct.new(
      :certificate_expiry_in_milliseconds,
      :group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_authority_expiry_in_milliseconds
    #   The amount of time remaining before the certificate authority expires, in milliseconds.
    #
    #   @return [String]
    #
    # @!attribute certificate_expiry_in_milliseconds
    #   The amount of time remaining before the certificate expires, in milliseconds.
    #
    #   @return [String]
    #
    # @!attribute group_id
    #   The ID of the group certificate configuration.
    #
    #   @return [String]
    #
    UpdateGroupCertificateConfigurationOutput = ::Struct.new(
      :certificate_authority_expiry_in_milliseconds,
      :certificate_expiry_in_milliseconds,
      :group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_id
    #   The ID of the Greengrass group.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The name of the definition.
    #
    #   @return [String]
    #
    UpdateGroupInput = ::Struct.new(
      :group_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute logger_definition_id
    #   The ID of the logger definition.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The name of the definition.
    #
    #   @return [String]
    #
    UpdateLoggerDefinitionInput = ::Struct.new(
      :logger_definition_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateLoggerDefinitionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   The name of the definition.
    #
    #   @return [String]
    #
    # @!attribute resource_definition_id
    #   The ID of the resource definition.
    #
    #   @return [String]
    #
    UpdateResourceDefinitionInput = ::Struct.new(
      :name,
      :resource_definition_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateResourceDefinitionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   The name of the definition.
    #
    #   @return [String]
    #
    # @!attribute subscription_definition_id
    #   The ID of the subscription definition.
    #
    #   @return [String]
    #
    UpdateSubscriptionDefinitionInput = ::Struct.new(
      :name,
      :subscription_definition_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateSubscriptionDefinitionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UpdateTargetsArchitecture
    #
    module UpdateTargetsArchitecture
      # No documentation available.
      #
      armv6l = "armv6l"

      # No documentation available.
      #
      armv7l = "armv7l"

      # No documentation available.
      #
      x86_64 = "x86_64"

      # No documentation available.
      #
      aarch64 = "aarch64"
    end

    # Includes enum constants for UpdateTargetsOperatingSystem
    #
    module UpdateTargetsOperatingSystem
      # No documentation available.
      #
      ubuntu = "ubuntu"

      # No documentation available.
      #
      raspbian = "raspbian"

      # No documentation available.
      #
      amazon_linux = "amazon_linux"

      # No documentation available.
      #
      openwrt = "openwrt"
    end

    # @!attribute telemetry_configuration
    #   Configuration for telemetry service.
    #
    #   @return [TelemetryConfigurationUpdate]
    #
    # @!attribute thing_name
    #   The thing name.
    #
    #   @return [String]
    #
    UpdateThingRuntimeConfigurationInput = ::Struct.new(
      :telemetry_configuration,
      :thing_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateThingRuntimeConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Information about a version.
    #
    # @!attribute arn
    #   The ARN of the version.
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   The time, in milliseconds since the epoch, when the version was created.
    #
    #   @return [String]
    #
    # @!attribute id
    #   The ID of the parent definition that the version is associated with.
    #
    #   @return [String]
    #
    # @!attribute version
    #   The ID of the version.
    #
    #   @return [String]
    #
    VersionInformation = ::Struct.new(
      :arn,
      :creation_timestamp,
      :id,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
