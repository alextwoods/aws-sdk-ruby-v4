# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::GameSparks
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource already exists, or another operation is in progress.</p>
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

    # <p>Details about a WebSocket connection.</p>
    #
    # @!attribute id
    #   <p>The identifier used to indicate a specific WebSocket connection.</p>
    #
    #   @return [String]
    #
    # @!attribute created
    #   <p>The date and time when the connection was created.</p>
    #
    #   @return [Time]
    #
    Connection = ::Struct.new(
      :id,
      :created,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_name
    #   <p>The name of the game.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the game.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>
    #         A client-defined token.
    #         With an active client token in the request, this action is idempotent.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The list of tags to apply to the game.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateGameInput = ::Struct.new(
      :game_name,
      :description,
      :client_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game
    #   <p>Details about the game that was created.</p>
    #
    #   @return [GameDetails]
    #
    CreateGameOutput = ::Struct.new(
      :game,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_name
    #   <p>The name of the game.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the snapshot.</p>
    #
    #   @return [String]
    #
    CreateSnapshotInput = ::Struct.new(
      :game_name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute snapshot
    #   <p>Properties that provide details of the created snapshot.</p>
    #
    #   @return [SnapshotDetails]
    #
    CreateSnapshotOutput = ::Struct.new(
      :snapshot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_name
    #   <p>The name of the game.</p>
    #
    #   @return [String]
    #
    # @!attribute stage_name
    #   <p>The name of the stage.</p>
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>
    #         The Amazon Resource Name (ARN) of the role to run the game with.
    #         This role can be a game-defined role or the default role that GameSparks created.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the stage.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>
    #         A client-defined token.
    #         With an active client token in the request, this action is idempotent.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The list of tags to apply to the stage.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateStageInput = ::Struct.new(
      :game_name,
      :stage_name,
      :role,
      :description,
      :client_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stage
    #   <p>Properties that describe the stage.</p>
    #
    #   @return [StageDetails]
    #
    CreateStageOutput = ::Struct.new(
      :stage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_name
    #   <p>The name of the game to delete.</p>
    #
    #   @return [String]
    #
    DeleteGameInput = ::Struct.new(
      :game_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteGameOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_name
    #   <p>The name of the game.</p>
    #
    #   @return [String]
    #
    # @!attribute stage_name
    #   <p>The name of the stage to delete.</p>
    #
    #   @return [String]
    #
    DeleteStageInput = ::Struct.new(
      :game_name,
      :stage_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteStageOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeploymentAction
    #
    module DeploymentAction
      # No documentation available.
      #
      DEPLOY = "DEPLOY"

      # No documentation available.
      #
      UNDEPLOY = "UNDEPLOY"
    end

    # <p>The result of the deployment.</p>
    #
    # @!attribute result_code
    #   <p>The type of deployment result.</p>
    #
    #   Enum, one of: ["SUCCESS", "INVALID_ROLE_FAILURE", "UNSPECIFIED_FAILURE"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>Details about the deployment result.</p>
    #
    #   @return [String]
    #
    DeploymentResult = ::Struct.new(
      :result_code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeploymentState
    #
    module DeploymentState
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # @!attribute player_id
    #   <p>The unique identifier representing a player.</p>
    #
    #   @return [String]
    #
    # @!attribute game_name
    #   <p>The name of the game.</p>
    #
    #   @return [String]
    #
    # @!attribute stage_name
    #   <p>The name of the stage.</p>
    #
    #   @return [String]
    #
    DisconnectPlayerInput = ::Struct.new(
      :player_id,
      :game_name,
      :stage_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute disconnect_successes
    #   <p>The list of the connection ids that were disconnected.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute disconnect_failures
    #   <p>The list of the connection ids that could not be disconnected.</p>
    #
    #   @return [Array<String>]
    #
    DisconnectPlayerOutput = ::Struct.new(
      :disconnect_successes,
      :disconnect_failures,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_name
    #   <p>The name of the game.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_id
    #   <p>The identifier of the snapshot to export.</p>
    #
    #   @return [String]
    #
    ExportSnapshotInput = ::Struct.new(
      :game_name,
      :snapshot_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute s3_url
    #   <p>The presigned URL for the snapshot data.</p>
    #            <p>
    #         This URL will be available for 10 minutes, and can be used to download the snapshot content.
    #         If the URL expires, a new one can be requested using the same operation.
    #         </p>
    #
    #   @return [String]
    #
    ExportSnapshotOutput = ::Struct.new(
      :s3_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about the extension.</p>
    #
    # @!attribute namespace
    #   <p>The namespace (qualifier) of the extension.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the extension.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the extension.</p>
    #
    #   @return [String]
    #
    ExtensionDetails = ::Struct.new(
      :namespace,
      :name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about the extension version.</p>
    #
    # @!attribute namespace
    #   <p>The namespace (qualifier) of the extension.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the extension.</p>
    #
    #   @return [String]
    #
    # @!attribute schema
    #   <p>The model that defines the interface for this extension version.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the extension.</p>
    #
    #   @return [String]
    #
    ExtensionVersionDetails = ::Struct.new(
      :namespace,
      :name,
      :schema,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about the game configuration.</p>
    #          <p>
    #       The game configuration is organized into named sections, where the schema of each section
    #       is defined by an extension. The schema for these sections can be retrieved using
    #       the <code>GetExtensionVersion</code> operation.
    #       </p>
    #
    # @!attribute sections
    #   <p>Configuration data, organized by section name.</p>
    #
    #   @return [Hash<String, Section>]
    #
    # @!attribute created
    #   <p>The date when the game was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated
    #   <p>The date when the game was last modified.</p>
    #
    #   @return [Time]
    #
    GameConfigurationDetails = ::Struct.new(
      :sections,
      :created,
      :last_updated,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about a game.</p>
    #
    # @!attribute name
    #   <p>The name of the game.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of this game.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the game.</p>
    #
    #   @return [String]
    #
    # @!attribute created
    #   <p>The date when the game was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated
    #   <p>The date when the game was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute state
    #   <p>The state of the game.</p>
    #
    #   Enum, one of: ["ACTIVE", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute enable_termination_protection
    #   <p>Determines if the game can be deleted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>The tags associated with the game.</p>
    #
    #   @return [Hash<String, String>]
    #
    GameDetails = ::Struct.new(
      :name,
      :arn,
      :description,
      :created,
      :last_updated,
      :state,
      :enable_termination_protection,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enable_termination_protection ||= false
      end
    end

    # Includes enum constants for GameState
    #
    module GameState
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DELETING = "DELETING"
    end

    # <p>The summary of the properties of a game.</p>
    #
    # @!attribute name
    #   <p>The name of the game.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the game.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the game.</p>
    #
    #   Enum, one of: ["ACTIVE", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the game.</p>
    #
    #   @return [Hash<String, String>]
    #
    GameSummary = ::Struct.new(
      :name,
      :description,
      :state,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about a generated code job.</p>
    #
    # @!attribute s3_url
    #   <p>A presigned URL that can be used to download the generated code.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the generated code job</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "COMPLETED", "FAILED", "PENDING"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the generated code job.</p>
    #
    #   @return [String]
    #
    # @!attribute expiration_time
    #   <p>The expiration date and time for the download URL.</p>
    #            <p>
    #         The download URL us guaranteed to be available until at least this time.
    #         </p>
    #
    #   @return [Time]
    #
    # @!attribute generated_code_job_id
    #   <p>The identifier for the generated code job.</p>
    #
    #   @return [String]
    #
    GeneratedCodeJobDetails = ::Struct.new(
      :s3_url,
      :status,
      :description,
      :expiration_time,
      :generated_code_job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for GeneratedCodeJobState
    #
    module GeneratedCodeJobState
      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      PENDING = "PENDING"
    end

    # <p>Properties that specify the code generator for a generated code job.</p>
    #
    # @!attribute target_platform
    #   <p>The platform that will be used to run the generated code.</p>
    #
    #   @return [String]
    #
    # @!attribute language
    #   <p>The programming language for the generated code.</p>
    #            <p>
    #         Not all languages are supported for each platform. For cases where multiple languages are supported,
    #         this parameter specifies the language to be used. If this value is omitted, the default language
    #         for the target platform will be used.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute game_sdk_version
    #   <p>The target version of the GameSparks Game SDK.</p>
    #
    #   @return [String]
    #
    Generator = ::Struct.new(
      :target_platform,
      :language,
      :game_sdk_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute namespace
    #   <p>The namespace (qualifier) of the extension.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the extension.</p>
    #
    #   @return [String]
    #
    GetExtensionInput = ::Struct.new(
      :namespace,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute extension
    #   <p>Details about the extension.</p>
    #
    #   @return [ExtensionDetails]
    #
    GetExtensionOutput = ::Struct.new(
      :extension,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute namespace
    #   <p>The namespace (qualifier) of the extension.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the extension.</p>
    #
    #   @return [String]
    #
    # @!attribute extension_version
    #   <p>The version of the extension.</p>
    #
    #   @return [String]
    #
    GetExtensionVersionInput = ::Struct.new(
      :namespace,
      :name,
      :extension_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute extension_version
    #   <p>The version of the extension.</p>
    #
    #   @return [ExtensionVersionDetails]
    #
    GetExtensionVersionOutput = ::Struct.new(
      :extension_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_name
    #   <p>The name of the game.</p>
    #
    #   @return [String]
    #
    # @!attribute sections
    #   <p>The list of sections to return.</p>
    #
    #   @return [Array<String>]
    #
    GetGameConfigurationInput = ::Struct.new(
      :game_name,
      :sections,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_configuration
    #   <p>Details about the game configuration.</p>
    #
    #   @return [GameConfigurationDetails]
    #
    GetGameConfigurationOutput = ::Struct.new(
      :game_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_name
    #   <p>The name of the game.</p>
    #
    #   @return [String]
    #
    GetGameInput = ::Struct.new(
      :game_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game
    #   <p>The details of the game.</p>
    #
    #   @return [GameDetails]
    #
    GetGameOutput = ::Struct.new(
      :game,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_name
    #   <p>The name of the game.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_id
    #   <p>The identifier of the snapshot for the code generation job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The identifier of the code generation job.</p>
    #
    #   @return [String]
    #
    GetGeneratedCodeJobInput = ::Struct.new(
      :game_name,
      :snapshot_id,
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute generated_code_job
    #   <p>Details about the generated code job.</p>
    #
    #   @return [GeneratedCodeJobDetails]
    #
    GetGeneratedCodeJobOutput = ::Struct.new(
      :generated_code_job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute player_id
    #   <p>The unique identifier representing a player.</p>
    #
    #   @return [String]
    #
    # @!attribute game_name
    #   <p>The name of the game.</p>
    #
    #   @return [String]
    #
    # @!attribute stage_name
    #   <p>The name of the stage.</p>
    #
    #   @return [String]
    #
    GetPlayerConnectionStatusInput = ::Struct.new(
      :player_id,
      :game_name,
      :stage_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connections
    #   <p>The list of connection ids, one for each connection in use by the player.</p>
    #
    #   @return [Array<Connection>]
    #
    GetPlayerConnectionStatusOutput = ::Struct.new(
      :connections,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_name
    #   <p>The name of the game.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_id
    #   <p>The identifier of the snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute sections
    #   <p>The list of game configuration sections to be described.</p>
    #
    #   @return [Array<String>]
    #
    GetSnapshotInput = ::Struct.new(
      :game_name,
      :snapshot_id,
      :sections,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute snapshot
    #   <p>Properties that provide details of the snapshot.</p>
    #
    #   @return [SnapshotDetails]
    #
    GetSnapshotOutput = ::Struct.new(
      :snapshot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_name
    #   <p>The name of the game.</p>
    #
    #   @return [String]
    #
    # @!attribute stage_name
    #   <p>The name of the stage.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_id
    #   <p>
    #         The identifier of the stage deployment.
    #         <code>StartStageDeployment</code> returns the identifier that you use here.
    #         </p>
    #
    #   @return [String]
    #
    GetStageDeploymentInput = ::Struct.new(
      :game_name,
      :stage_name,
      :deployment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stage_deployment
    #   <p>Properties that provide details of the stage deployment.</p>
    #
    #   @return [StageDeploymentDetails]
    #
    GetStageDeploymentOutput = ::Struct.new(
      :stage_deployment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_name
    #   <p>The name of the game.</p>
    #
    #   @return [String]
    #
    # @!attribute stage_name
    #   <p>The name of the stage.</p>
    #
    #   @return [String]
    #
    GetStageInput = ::Struct.new(
      :game_name,
      :stage_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stage
    #   <p>Properties that provide details of the stage.</p>
    #
    #   @return [StageDetails]
    #
    GetStageOutput = ::Struct.new(
      :stage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_name
    #   <p>The name of the game.</p>
    #
    #   @return [String]
    #
    # @!attribute import_source
    #   <p>The source used to import configuration sections.</p>
    #
    #   @return [ImportGameConfigurationSource]
    #
    ImportGameConfigurationInput = ::Struct.new(
      :game_name,
      :import_source,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_configuration
    #   <p>Details about the game configuration.</p>
    #
    #   @return [GameConfigurationDetails]
    #
    ImportGameConfigurationOutput = ::Struct.new(
      :game_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The source used to import configuration sections.</p>
    #
    # @!attribute file
    #   <p>The JSON string containing the configuration sections.</p>
    #
    #   @return [String]
    #
    ImportGameConfigurationSource = ::Struct.new(
      :file,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The service encountered an internal error.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute namespace
    #   <p>The namespace (qualifier) of the extension.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the extension.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token that indicates the start of the next sequential page of results.</p>
    #            <p>
    #         Use the token that is returned with a previous call to this operation.
    #         To start at the beginning of the result set, do not specify a value.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #            <p>
    #         Use this parameter with NextToken to get results as a set of sequential pages.
    #         </p>
    #
    #   @return [Integer]
    #
    ListExtensionVersionsInput = ::Struct.new(
      :namespace,
      :name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute extension_versions
    #   <p>The list of extension versions.</p>
    #
    #   @return [Array<ExtensionVersionDetails>]
    #
    # @!attribute next_token
    #   <p>The token that indicates the start of the next sequential page of results.</p>
    #            <p>
    #         Use this value when making the next call to this operation to continue where the last one finished.
    #         </p>
    #
    #   @return [String]
    #
    ListExtensionVersionsOutput = ::Struct.new(
      :extension_versions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #            <p>
    #         Use this parameter with NextToken to get results as a set of sequential pages.
    #         </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token that indicates the start of the next sequential page of results.</p>
    #            <p>
    #         Use the token that is returned with a previous call to this operation.
    #         To start at the beginning of the result set, do not specify a value.
    #         </p>
    #
    #   @return [String]
    #
    ListExtensionsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute extensions
    #   <p>The list of extensions.</p>
    #
    #   @return [Array<ExtensionDetails>]
    #
    # @!attribute next_token
    #   <p>The token that indicates the start of the next sequential page of results.</p>
    #            <p>
    #         Use this value when making the next call to this operation to continue where the last one finished.
    #         </p>
    #
    #   @return [String]
    #
    ListExtensionsOutput = ::Struct.new(
      :extensions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #            <p>
    #         Use this parameter with NextToken to get results as a set of sequential pages.
    #         </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token that indicates the start of the next sequential page of results.</p>
    #            <p>
    #         Use the token that is returned with a previous call to this operation.
    #         To start at the beginning of the result set, do not specify a value.
    #         </p>
    #
    #   @return [String]
    #
    ListGamesInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute games
    #   <p>The list of games.</p>
    #
    #   @return [Array<GameSummary>]
    #
    # @!attribute next_token
    #   <p>The token that indicates the start of the next sequential page of results.</p>
    #            <p>
    #         Use this value when making the next call to this operation to continue where the last one finished.
    #         </p>
    #
    #   @return [String]
    #
    ListGamesOutput = ::Struct.new(
      :games,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_name
    #   <p>The name of the game.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_id
    #   <p>The identifier of the snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #            <p>
    #         Use this parameter with NextToken to get results as a set of sequential pages.
    #         </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token that indicates the start of the next sequential page of results.</p>
    #            <p>
    #         Use the token that is returned with a previous call to this operation.
    #         To start at the beginning of the result set, do not specify a value.
    #         </p>
    #
    #   @return [String]
    #
    ListGeneratedCodeJobsInput = ::Struct.new(
      :game_name,
      :snapshot_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute generated_code_jobs
    #   <p>The list of generated code jobs.</p>
    #
    #   @return [Array<GeneratedCodeJobDetails>]
    #
    # @!attribute next_token
    #   <p>The token that indicates the start of the next sequential page of results.</p>
    #            <p>
    #         Use this value when making the next call to this operation to continue where the last one finished.
    #         </p>
    #
    #   @return [String]
    #
    ListGeneratedCodeJobsOutput = ::Struct.new(
      :generated_code_jobs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_name
    #   <p>The name of the game.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #            <p>
    #         Use this parameter with NextToken to get results as a set of sequential pages.
    #         </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token that indicates the start of the next sequential page of results.</p>
    #            <p>
    #         Use the token that is returned with a previous call to this operation.
    #         To start at the beginning of the result set, do not specify a value.
    #         </p>
    #
    #   @return [String]
    #
    ListSnapshotsInput = ::Struct.new(
      :game_name,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute snapshots
    #   <p>
    #         A list of snapshot summaries.
    #         You can use the returned snapshot IDs in the <code>UpdateSnapshot</code> and <code>GetSnapshot</code> operations.
    #         </p>
    #
    #   @return [Array<SnapshotSummary>]
    #
    # @!attribute next_token
    #   <p>The token that indicates the start of the next sequential page of results.</p>
    #            <p>
    #         Use this value when making the next call to this operation to continue where the last one finished.
    #         </p>
    #
    #   @return [String]
    #
    ListSnapshotsOutput = ::Struct.new(
      :snapshots,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_name
    #   <p>The name of the game.</p>
    #
    #   @return [String]
    #
    # @!attribute stage_name
    #   <p>The name of the stage.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token that indicates the start of the next sequential page of results.</p>
    #            <p>
    #         Use the token that is returned with a previous call to this operation.
    #         To start at the beginning of the result set, do not specify a value.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #            <p>
    #         Use this parameter with NextToken to get results as a set of sequential pages.
    #         </p>
    #
    #   @return [Integer]
    #
    ListStageDeploymentsInput = ::Struct.new(
      :game_name,
      :stage_name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stage_deployments
    #   <p>
    #         A list of stage deployment summaries.
    #         You can use the deployment IDs in the <code>UpdateStageDeployment</code> and <code>GetStageDeployment</code> actions.
    #         </p>
    #
    #   @return [Array<StageDeploymentSummary>]
    #
    # @!attribute next_token
    #   <p>The token that indicates the start of the next sequential page of results.</p>
    #            <p>
    #         Use this value when making the next call to this operation to continue where the last one finished.
    #         </p>
    #
    #   @return [String]
    #
    ListStageDeploymentsOutput = ::Struct.new(
      :stage_deployments,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_name
    #   <p>The name of the game.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #            <p>
    #         Use this parameter with NextToken to get results as a set of sequential pages.
    #         </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token that indicates the start of the next sequential page of results.</p>
    #            <p>
    #         Use the token that is returned with a previous call to this operation.
    #         To start at the beginning of the result set, do not specify a value.
    #         </p>
    #
    #   @return [String]
    #
    ListStagesInput = ::Struct.new(
      :game_name,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stages
    #   <p>
    #         A list of stage summaries.
    #         You can use the stage names in the <code>UpdateStage</code> and <code>GetStage</code> actions.
    #         </p>
    #
    #   @return [Array<StageSummary>]
    #
    # @!attribute next_token
    #   <p>The token that indicates the start of the next sequential page of results.</p>
    #            <p>
    #         Use this value when making the next call to this operation to continue where the last one finished.
    #         </p>
    #
    #   @return [String]
    #
    ListStagesOutput = ::Struct.new(
      :stages,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the GameSparks resource.</p>
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
    #   <p>The tags associated with the resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Operation
    #
    module Operation
      # No documentation available.
      #
      ADD = "ADD"

      # No documentation available.
      #
      REMOVE = "REMOVE"

      # No documentation available.
      #
      REPLACE = "REPLACE"
    end

    # <p>The resource specified in the request does not exist.</p>
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

    # Includes enum constants for ResultCode
    #
    module ResultCode
      # No documentation available.
      #
      SUCCESS = "SUCCESS"

      # No documentation available.
      #
      INVALID_ROLE_FAILURE = "INVALID_ROLE_FAILURE"

      # No documentation available.
      #
      UNSPECIFIED_FAILURE = "UNSPECIFIED_FAILURE"
    end

    # <p>The configuration section.</p>
    #
    # @!attribute name
    #   <p>The name of the section.</p>
    #
    #   @return [String]
    #
    # @!attribute size
    #   <p>The size, in bytes, of the section contents.</p>
    #
    #   @return [Integer]
    #
    # @!attribute attributes
    #   <p>The content of a configuration section.</p>
    #
    #   @return [Hash,Array,String,Boolean,Numeric]
    #
    Section = ::Struct.new(
      :name,
      :size,
      :attributes,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.size ||= 0
      end
    end

    # <p>A single modification to the configuration section.</p>
    #
    # @!attribute section
    #   <p>The name of the section to be modified.</p>
    #
    #   @return [String]
    #
    # @!attribute path
    #   <p>The path within the section content to be modified.</p>
    #
    #   @return [String]
    #
    # @!attribute operation
    #   <p>The operation to be performed on a configuration section.</p>
    #            <p>
    #         Content can be added, deleted, or replaced within a section.
    #         </p>
    #
    #   Enum, one of: ["ADD", "REMOVE", "REPLACE"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>For add and replace operations, this is the value that will be used.</p>
    #            <p>
    #         This field should be omitted for delete operations.
    #         </p>
    #
    #   @return [Hash,Array,String,Boolean,Numeric]
    #
    SectionModification = ::Struct.new(
      :section,
      :path,
      :operation,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request would result in exceeding service quota.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Properties that provide details of a snapshot.</p>
    #
    # @!attribute id
    #   <p>The identifier of the snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute sections
    #   <p>The sections in the snapshot.</p>
    #
    #   @return [Hash<String, Section>]
    #
    # @!attribute created
    #   <p>The timestamp of when the snapshot was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated
    #   <p>The timestamp of when the snapshot was last updated.</p>
    #
    #   @return [Time]
    #
    SnapshotDetails = ::Struct.new(
      :id,
      :description,
      :sections,
      :created,
      :last_updated,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The summary of the properties of a snapshot.</p>
    #
    # @!attribute id
    #   <p>The identifier of the snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute created
    #   <p>The timestamp of when the snapshot was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated
    #   <p>Then timestamp of when the snapshot was last updated.</p>
    #
    #   @return [Time]
    #
    SnapshotSummary = ::Struct.new(
      :id,
      :description,
      :created,
      :last_updated,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Properties that provide details of a stage deployment.</p>
    #
    # @!attribute deployment_id
    #   <p>The identifier of the deployment.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_id
    #   <p>The identifier of the snapshot associated with the stage deployment.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_action
    #   <p>The type of action of the stage deployment.</p>
    #
    #   Enum, one of: ["DEPLOY", "UNDEPLOY"]
    #
    #   @return [String]
    #
    # @!attribute deployment_state
    #   <p>The state of the deployment.</p>
    #
    #   Enum, one of: ["PENDING", "IN_PROGRESS", "COMPLETED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute created
    #   <p>The timestamp of when the stage deployment was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated
    #   <p>The timestamp of when the deployment was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute deployment_result
    #   <p>The result of the deployment.</p>
    #
    #   @return [DeploymentResult]
    #
    StageDeploymentDetails = ::Struct.new(
      :deployment_id,
      :snapshot_id,
      :deployment_action,
      :deployment_state,
      :created,
      :last_updated,
      :deployment_result,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The summary of the properties of a stage deployment.</p>
    #
    # @!attribute deployment_id
    #   <p>The identifier of the deployment.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_id
    #   <p>The identifier of the snapshot associated with the stage deployment.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_action
    #   <p>The type of action of the deployment.</p>
    #
    #   Enum, one of: ["DEPLOY", "UNDEPLOY"]
    #
    #   @return [String]
    #
    # @!attribute deployment_state
    #   <p>The state of the deployment.</p>
    #
    #   Enum, one of: ["PENDING", "IN_PROGRESS", "COMPLETED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute last_updated
    #   <p>The timestamp of when the deployment was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute deployment_result
    #   <p>The result of the deployment.</p>
    #
    #   @return [DeploymentResult]
    #
    StageDeploymentSummary = ::Struct.new(
      :deployment_id,
      :snapshot_id,
      :deployment_action,
      :deployment_state,
      :last_updated,
      :deployment_result,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Properties that provide details of a stage.</p>
    #
    # @!attribute name
    #   <p>The name of the stage.</p>
    #
    #   @return [String]
    #
    # @!attribute game_key
    #   <p>The game key associated with the stage.</p>
    #            <p>
    #         The game key is a unique identifier that the game client uses to connect to the GameSparks backend.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the stage.</p>
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The Amazon Resource Name (ARN) of the role used to run the game runtimes deployed to the stage.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the stage.</p>
    #
    #   @return [String]
    #
    # @!attribute created
    #   <p>The timestamp of when the stage was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated
    #   <p>The timestamp of when the stage was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute state
    #   <p>The state of the stage.</p>
    #
    #   Enum, one of: ["ACTIVE", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the stage.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute log_group
    #   <p>The Amazon CloudWatch log group for game runtimes deployed to the stage.</p>
    #
    #   @return [String]
    #
    StageDetails = ::Struct.new(
      :name,
      :game_key,
      :arn,
      :role,
      :description,
      :created,
      :last_updated,
      :state,
      :tags,
      :log_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StageState
    #
    module StageState
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DELETING = "DELETING"
    end

    # <p>The summary of the properties of a stage.</p>
    #
    # @!attribute name
    #   <p>The name of the stage.</p>
    #
    #   @return [String]
    #
    # @!attribute game_key
    #   <p>The game key associated with the stage.</p>
    #            <p>
    #         The game key is a unique identifier that the game client uses to connect to the GameSparks backend.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the stage.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the stage.</p>
    #
    #   Enum, one of: ["ACTIVE", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the stage.</p>
    #
    #   @return [Hash<String, String>]
    #
    StageSummary = ::Struct.new(
      :name,
      :game_key,
      :description,
      :state,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_name
    #   <p>The name of the game.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_id
    #   <p>The identifier of the snapshot for which to generate code.</p>
    #
    #   @return [String]
    #
    # @!attribute generator
    #   <p>Properties of the generator to use for the job.</p>
    #
    #   @return [Generator]
    #
    StartGeneratedCodeJobInput = ::Struct.new(
      :game_name,
      :snapshot_id,
      :generator,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute generated_code_job_id
    #   <p>
    #         The identifier of the code generation job.
    #         You can use this identifier in the <code>GetGeneratedCodeJob</code> operation.
    #         </p>
    #
    #   @return [String]
    #
    StartGeneratedCodeJobOutput = ::Struct.new(
      :generated_code_job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_name
    #   <p>The name of the game.</p>
    #
    #   @return [String]
    #
    # @!attribute stage_name
    #   <p>The name of the stage to deploy the snapshot onto.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_id
    #   <p>The identifier of the snapshot to deploy.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>
    #         A client-defined token.
    #         With an active client token in the request, this action is idempotent.
    #         </p>
    #
    #   @return [String]
    #
    StartStageDeploymentInput = ::Struct.new(
      :game_name,
      :stage_name,
      :snapshot_id,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stage_deployment
    #   <p>Properties that describe the stage deployment.</p>
    #
    #   @return [StageDeploymentDetails]
    #
    StartStageDeploymentOutput = ::Struct.new(
      :stage_deployment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to add the tags to.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to add to the resource.</p>
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

    # <p>The request throughput limit was exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove the tags from.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The keys of the tags to remove.</p>
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

    # @!attribute game_name
    #   <p>The name of the game.</p>
    #
    #   @return [String]
    #
    # @!attribute modifications
    #   <p>The list of modifications to make.</p>
    #
    #   @return [Array<SectionModification>]
    #
    UpdateGameConfigurationInput = ::Struct.new(
      :game_name,
      :modifications,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_configuration
    #   <p>Details about the game configuration.</p>
    #
    #   @return [GameConfigurationDetails]
    #
    UpdateGameConfigurationOutput = ::Struct.new(
      :game_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_name
    #   <p>The name of the game.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the game.</p>
    #
    #   @return [String]
    #
    UpdateGameInput = ::Struct.new(
      :game_name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game
    #   <p>The details of the game.</p>
    #
    #   @return [GameDetails]
    #
    UpdateGameOutput = ::Struct.new(
      :game,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_name
    #   <p>The name of the game.</p>
    #
    #   @return [String]
    #
    # @!attribute snapshot_id
    #   <p>The identifier of the snapshot.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the snapshot.</p>
    #
    #   @return [String]
    #
    UpdateSnapshotInput = ::Struct.new(
      :game_name,
      :snapshot_id,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute snapshot
    #   <p>Properties that provide details of the updated snapshot.</p>
    #
    #   @return [SnapshotDetails]
    #
    UpdateSnapshotOutput = ::Struct.new(
      :snapshot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute game_name
    #   <p>The name of the game.</p>
    #
    #   @return [String]
    #
    # @!attribute stage_name
    #   <p>The name of the stage.</p>
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The Amazon Resource Name (ARN) of the role to use for the game snapshots deployed to this stage.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the stage.</p>
    #
    #   @return [String]
    #
    UpdateStageInput = ::Struct.new(
      :game_name,
      :stage_name,
      :role,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stage
    #   <p>Properties that provide details of the updated stage.</p>
    #
    #   @return [StageDetails]
    #
    UpdateStageOutput = ::Struct.new(
      :stage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One of the parameters in the request is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
