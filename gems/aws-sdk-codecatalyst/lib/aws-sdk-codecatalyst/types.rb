# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodeCatalyst
  module Types

    # <p>The request was denied because you don't have sufficient access to perform this action. Verify that you are a member of a role that allows this action.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message (0)
    # @!attribute message
    #   @return [String]
    class AccessDeniedException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Information about a specified personal access token (PAT).</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :id (0)
    #   @option params [String] :name (0)
    #   @option params [Time] :expires_time
    # @!attribute id
    #   <p>The system-generated ID of the personal access token.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The friendly name of the personal access token.</p>
    #   @return [String]
    # @!attribute expires_time
    #   <p>The date and time when the personal access token will expire, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    #   @return [Time]
    class AccessTokenSummary
      include Hearth::Structure

      MEMBERS = %i[
        id
        name
        expires_time
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for ComparisonOperator
    module ComparisonOperator
      EQUALS = "EQ"

      GREATER_THAN = "GT"

      GREATER_THAN_OR_EQUALS = "GE"

      LESS_THAN = "LT"

      LESS_THAN_OR_EQUALS = "LE"

      BEGINS_WITH = "BEGINS_WITH"
    end

    # <p>The request was denied because the requested operation would cause a conflict with the current state of a service resource associated with the request.
    #        Another user might have updated the resource. Reload, make sure you have the latest data, and then try again.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message (0)
    # @!attribute message
    #   @return [String]
    class ConflictException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :name
    #   @option params [Time] :expires_time
    # @!attribute name
    #   <p>The friendly name of the personal access token.</p>
    #   @return [String]
    # @!attribute expires_time
    #   <p>The date and time the personal access token expires, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    #   @return [Time]
    class CreateAccessTokenInput
      include Hearth::Structure

      MEMBERS = %i[
        name
        expires_time
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :secret (0)
    #   @option params [String] :name (0)
    #   @option params [Time] :expires_time (0)
    #   @option params [String] :access_token_id (0)
    # @!attribute secret
    #   <p>The secret value of the personal access token.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The friendly name of the personal access token.</p>
    #   @return [String]
    # @!attribute expires_time
    #   <p>The date and time the personal access token expires, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>. If not specified, the default is one year from creation.</p>
    #   @return [Time]
    # @!attribute access_token_id
    #   <p>The system-generated unique ID of the access token.</p>
    #   @return [String]
    class CreateAccessTokenOutput
      include Hearth::Structure

      MEMBERS = %i[
        secret
        name
        expires_time
        access_token_id
      ].freeze

      attr_accessor(*MEMBERS)

      def to_s
        '#<AWS::SDK::CodeCatalyst::Types::CreateAccessTokenOutput ' \
          'secret=[SENSITIVE], ' \
          "name=#{name || 'nil'}, " \
          "expires_time=#{expires_time || 'nil'}, " \
          "access_token_id=#{access_token_id || 'nil'}>"
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name
    #   @option params [String] :project_name
    #   @option params [Array<RepositoryInput>] :repositories
    #   @option params [String] :client_token
    #   @option params [String] :alias
    #   @option params [Array<IdeConfiguration>] :ides
    #   @option params [String] :instance_type
    #   @option params [Integer] :inactivity_timeout_minutes
    #   @option params [PersistentStorageConfiguration] :persistent_storage
    #   @option params [String] :vpc_connection_name
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute repositories
    #   <p>The source repository that contains the branch to clone into the Dev Environment. </p>
    #   @return [Array<RepositoryInput>]
    # @!attribute client_token
    #   <p>A user-specified idempotency token.  Idempotency ensures that an API request completes only once.
    #          With an idempotent request, if the original request completes successfully, the subsequent retries return the result from the original successful request and have no additional effect.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The user-defined alias for a Dev Environment.</p>
    #   @return [String]
    # @!attribute ides
    #   <p>Information about the integrated development environment (IDE) configured for a
    #         Dev Environment.</p>
    #            <note>
    #               <p>An IDE is required to create a Dev Environment. For Dev Environment creation, this field
    #           contains configuration information and must be provided. </p>
    #            </note>
    #   @return [Array<IdeConfiguration>]
    # @!attribute instance_type
    #   <p>The Amazon EC2 instace type to use for the Dev Environment. </p>
    #   Enum, one of: ["dev.standard1.small", "dev.standard1.medium", "dev.standard1.large", "dev.standard1.xlarge"]
    #   @return [String]
    # @!attribute inactivity_timeout_minutes
    #   <p>The amount of time the Dev Environment will run without any activity detected before stopping, in minutes. Only whole integers are allowed. Dev Environments consume compute minutes when running.</p>
    #   @return [Integer]
    # @!attribute persistent_storage
    #   <p>Information about the amount of storage allocated to the Dev Environment. </p>
    #            <note>
    #               <p>By default, a Dev Environment is configured to have 16GB of persistent storage when created from the Amazon CodeCatalyst console, but there is no default when programmatically
    #           creating a Dev Environment.
    #           Valid values for persistent storage are based on memory sizes in 16GB increments. Valid
    #           values are 16, 32, and 64.</p>
    #            </note>
    #   @return [PersistentStorageConfiguration]
    # @!attribute vpc_connection_name
    #   <p>The name of the connection that will be used to connect to Amazon VPC, if any.</p>
    #   @return [String]
    class CreateDevEnvironmentInput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        project_name
        repositories
        client_token
        alias
        ides
        instance_type
        inactivity_timeout_minutes
        persistent_storage
        vpc_connection_name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name (0)
    #   @option params [String] :project_name (0)
    #   @option params [String] :id (0)
    #   @option params [String] :vpc_connection_name
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The system-generated unique ID of the Dev Environment. </p>
    #   @return [String]
    # @!attribute vpc_connection_name
    #   <p>The name of the connection used to connect to Amazon VPC used when the Dev Environment was created, if any.</p>
    #   @return [String]
    class CreateDevEnvironmentOutput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        project_name
        id
        vpc_connection_name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name
    #   @option params [String] :display_name
    #   @option params [String] :description
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The friendly name of the project that will be displayed to users.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the project. This description will be displayed to all users of the project. We recommend providing a brief description of the project and its intended purpose.</p>
    #   @return [String]
    class CreateProjectInput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        display_name
        description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name
    #   @option params [String] :name (0)
    #   @option params [String] :display_name
    #   @option params [String] :description
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The friendly name of the project.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the project.</p>
    #   @return [String]
    class CreateProjectOutput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        name
        display_name
        description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name
    #   @option params [String] :project_name
    #   @option params [String] :source_repository_name
    #   @option params [String] :name
    #   @option params [String] :head_commit_id
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute source_repository_name
    #   <p>The name of the repository where you want to create a branch.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name for the branch you're creating.</p>
    #   @return [String]
    # @!attribute head_commit_id
    #   <p>The commit ID in an existing branch from which you want to create the new branch.</p>
    #   @return [String]
    class CreateSourceRepositoryBranchInput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        project_name
        source_repository_name
        name
        head_commit_id
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :ref
    #   @option params [String] :name
    #   @option params [Time] :last_updated_time
    #   @option params [String] :head_commit_id
    # @!attribute ref
    #   <p>The Git reference name of the branch.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the newly created branch.</p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>The time the branch was last updated, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    #   @return [Time]
    # @!attribute head_commit_id
    #   <p>The commit ID of the tip of the newly created branch.</p>
    #   @return [String]
    class CreateSourceRepositoryBranchOutput
      include Hearth::Structure

      MEMBERS = %i[
        ref
        name
        last_updated_time
        head_commit_id
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name
    #   @option params [String] :project_name
    #   @option params [String] :name
    #   @option params [String] :description
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the source repository. For more information about name requirements, see <a href="https://docs.aws.amazon.com/codecatalyst/latest/userguide/source-quotas.html">Quotas for source repositories</a>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the source repository.</p>
    #   @return [String]
    class CreateSourceRepositoryInput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        project_name
        name
        description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name (0)
    #   @option params [String] :project_name (0)
    #   @option params [String] :name (0)
    #   @option params [String] :description
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the source repository.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the source repository.</p>
    #   @return [String]
    class CreateSourceRepositoryOutput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        project_name
        name
        description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :id
    # @!attribute id
    #   <p>The ID of the personal access token to delete. You can find the IDs of all PATs associated with your Amazon Web Services Builder ID in a space by calling <a>ListAccessTokens</a>.</p>
    #   @return [String]
    class DeleteAccessTokenInput
      include Hearth::Structure

      MEMBERS = %i[
        id
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class DeleteAccessTokenOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name
    #   @option params [String] :project_name
    #   @option params [String] :id
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The system-generated unique ID of the Dev Environment you want to delete. To retrieve a list of Dev Environment IDs, use <a>ListDevEnvironments</a>.</p>
    #   @return [String]
    class DeleteDevEnvironmentInput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        project_name
        id
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name (0)
    #   @option params [String] :project_name (0)
    #   @option params [String] :id (0)
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The system-generated unique ID of the deleted Dev Environment. </p>
    #   @return [String]
    class DeleteDevEnvironmentOutput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        project_name
        id
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name
    #   @option params [String] :name
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the project in the space. To retrieve a list of project names, use <a>ListProjects</a>.</p>
    #   @return [String]
    class DeleteProjectInput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name (0)
    #   @option params [String] :name (0)
    #   @option params [String] :display_name
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The friendly name displayed to users of the project in Amazon CodeCatalyst.</p>
    #   @return [String]
    class DeleteProjectOutput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        name
        display_name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name
    #   @option params [String] :project_name
    #   @option params [String] :name
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the source repository.</p>
    #   @return [String]
    class DeleteSourceRepositoryInput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        project_name
        name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name (0)
    #   @option params [String] :project_name (0)
    #   @option params [String] :name (0)
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the repository.</p>
    #   @return [String]
    class DeleteSourceRepositoryOutput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        project_name
        name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :name
    # @!attribute name
    #   <p>The name of the space.  To retrieve a list of space names, use <a>ListSpaces</a>.</p>
    #   @return [String]
    class DeleteSpaceInput
      include Hearth::Structure

      MEMBERS = %i[
        name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :name (0)
    #   @option params [String] :display_name
    # @!attribute name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The friendly name of the space displayed to users of the space in Amazon CodeCatalyst.</p>
    #   @return [String]
    class DeleteSpaceOutput
      include Hearth::Structure

      MEMBERS = %i[
        name
        display_name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Information about connection details for a Dev Environment.</p>
    # @note
    #   This shape is sensitive and must be handled with care.
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :stream_url (0)
    #   @option params [String] :token_value (0)
    # @!attribute stream_url
    #   <p>The URL used to send commands to and from the Dev Environment.</p>
    #   @return [String]
    # @!attribute token_value
    #   <p>An encrypted token value that contains session and caller information used to authenticate the connection.</p>
    #   @return [String]
    class DevEnvironmentAccessDetails
      include Hearth::Structure

      MEMBERS = %i[
        stream_url
        token_value
      ].freeze

      attr_accessor(*MEMBERS)

      def to_s
        "#<AWS::SDK::CodeCatalyst::Types::DevEnvironmentAccessDetails [SENSITIVE]>"
      end
    end

    # <p>Information about the source repsitory for a Dev Environment. </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :repository_name (0)
    #   @option params [String] :branch_name
    # @!attribute repository_name
    #   <p>The name of the source repository.</p>
    #   @return [String]
    # @!attribute branch_name
    #   <p>The name of the branch in a source repository cloned into the Dev Environment. </p>
    #   @return [String]
    class DevEnvironmentRepositorySummary
      include Hearth::Structure

      MEMBERS = %i[
        repository_name
        branch_name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Information about the configuration of a Dev Environment session.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :session_type (0)
    #   @option params [ExecuteCommandSessionConfiguration] :execute_command_session_configuration
    # @!attribute session_type
    #   <p>The type of the session.</p>
    #   Enum, one of: ["SSM", "SSH"]
    #   @return [String]
    # @!attribute execute_command_session_configuration
    #   <p>Information about optional commands that will be run on the Dev Environment when the SSH session begins.</p>
    #   @return [ExecuteCommandSessionConfiguration]
    class DevEnvironmentSessionConfiguration
      include Hearth::Structure

      MEMBERS = %i[
        session_type
        execute_command_session_configuration
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Information about active sessions for a Dev Environment.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name (0)
    #   @option params [String] :project_name (0)
    #   @option params [String] :dev_environment_id (0)
    #   @option params [Time] :started_time (0)
    #   @option params [String] :id (0)
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute dev_environment_id
    #   <p>The system-generated unique ID of the Dev Environment.</p>
    #   @return [String]
    # @!attribute started_time
    #   <p>The date and time the session started, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>
    #            </p>
    #   @return [Time]
    # @!attribute id
    #   <p>The system-generated unique ID of the Dev Environment session.</p>
    #   @return [String]
    class DevEnvironmentSessionSummary
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        project_name
        dev_environment_id
        started_time
        id
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for DevEnvironmentSessionType
    module DevEnvironmentSessionType
      SSM = "SSM"

      SSH = "SSH"
    end

    # Enum constants for DevEnvironmentStatus
    module DevEnvironmentStatus
      PENDING = "PENDING"

      RUNNING = "RUNNING"

      STARTING = "STARTING"

      STOPPING = "STOPPING"

      STOPPED = "STOPPED"

      FAILED = "FAILED"

      DELETING = "DELETING"

      DELETED = "DELETED"
    end

    # <p>Information about a Dev Environment. </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name
    #   @option params [String] :project_name
    #   @option params [String] :id (0)
    #   @option params [Time] :last_updated_time (0)
    #   @option params [String] :creator_id (0)
    #   @option params [String] :status (0)
    #   @option params [String] :status_reason
    #   @option params [Array<DevEnvironmentRepositorySummary>] :repositories (0)
    #   @option params [String] :alias
    #   @option params [Array<Ide>] :ides
    #   @option params [String] :instance_type (0)
    #   @option params [Integer] :inactivity_timeout_minutes (0)
    #   @option params [PersistentStorage] :persistent_storage (0)
    #   @option params [String] :vpc_connection_name
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The system-generated unique ID for the Dev Environment. </p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>The time when the Dev Environment was last updated, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    #   @return [Time]
    # @!attribute creator_id
    #   <p>The system-generated unique ID of the user who created the Dev Environment. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Dev Environment. </p>
    #   Enum, one of: ["PENDING", "RUNNING", "STARTING", "STOPPING", "STOPPED", "FAILED", "DELETING", "DELETED"]
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the status.</p>
    #   @return [String]
    # @!attribute repositories
    #   <p>Information about the repositories that will be cloned into the Dev Environment. If no rvalue is specified, no repository is cloned.</p>
    #   @return [Array<DevEnvironmentRepositorySummary>]
    # @!attribute alias
    #   <p>The user-specified alias for the Dev Environment.</p>
    #   @return [String]
    # @!attribute ides
    #   <p>Information about the integrated development environment (IDE) configured for a Dev Environment.</p>
    #   @return [Array<Ide>]
    # @!attribute instance_type
    #   <p>The Amazon EC2 instace type used for the Dev Environment. </p>
    #   Enum, one of: ["dev.standard1.small", "dev.standard1.medium", "dev.standard1.large", "dev.standard1.xlarge"]
    #   @return [String]
    # @!attribute inactivity_timeout_minutes
    #   <p>The amount of time the Dev Environment will run without any activity detected before stopping, in minutes. Dev Environments consume compute minutes when running.</p>
    #   @return [Integer]
    # @!attribute persistent_storage
    #   <p>Information about the configuration of persistent storage for the Dev Environment.</p>
    #   @return [PersistentStorage]
    # @!attribute vpc_connection_name
    #   <p>The name of the connection used to connect to Amazon VPC used when the Dev Environment was created, if any.</p>
    #   @return [String]
    class DevEnvironmentSummary
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        project_name
        id
        last_updated_time
        creator_id
        status
        status_reason
        repositories
        alias
        ides
        instance_type
        inactivity_timeout_minutes
        persistent_storage
        vpc_connection_name
      ].freeze

      attr_accessor(*MEMBERS)

      private

      def _defaults
        {
          inactivity_timeout_minutes: 0
        }
      end
    end

    # <p>Information about an email address.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :email
    #   @option params [Boolean] :verified
    # @!attribute email
    #   <p>The email address.</p>
    #   @return [String]
    # @!attribute verified
    #   <p>Whether the email address has been verified.</p>
    #   @return [Boolean]
    class EmailAddress
      include Hearth::Structure

      MEMBERS = %i[
        email
        verified
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Information about an entry in an event log of Amazon CodeCatalyst activity.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :id (0)
    #   @option params [String] :event_name (0)
    #   @option params [String] :event_type (0)
    #   @option params [String] :event_category (0)
    #   @option params [String] :event_source (0)
    #   @option params [Time] :event_time (0)
    #   @option params [String] :operation_type (0)
    #   @option params [UserIdentity] :user_identity (0)
    #   @option params [ProjectInformation] :project_information
    #   @option params [String] :request_id
    #   @option params [EventPayload] :request_payload
    #   @option params [EventPayload] :response_payload
    #   @option params [String] :error_code
    #   @option params [String] :source_ip_address
    #   @option params [String] :user_agent
    # @!attribute id
    #   <p>The system-generated unique ID of the event.</p>
    #   @return [String]
    # @!attribute event_name
    #   <p>The name of the event.</p>
    #   @return [String]
    # @!attribute event_type
    #   <p>The type of the event.</p>
    #   @return [String]
    # @!attribute event_category
    #   <p>The category for the event.</p>
    #   @return [String]
    # @!attribute event_source
    #   <p>The source of the event.</p>
    #   @return [String]
    # @!attribute event_time
    #   <p>The time the event took place, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    #   @return [Time]
    # @!attribute operation_type
    #   <p>The type of the event.</p>
    #   Enum, one of: ["READONLY", "MUTATION"]
    #   @return [String]
    # @!attribute user_identity
    #   <p>The system-generated unique ID of the user whose actions are recorded in the event.</p>
    #   @return [UserIdentity]
    # @!attribute project_information
    #   <p>Information about the project where the event occurred.</p>
    #   @return [ProjectInformation]
    # @!attribute request_id
    #   <p>The system-generated unique ID of the request.</p>
    #   @return [String]
    # @!attribute request_payload
    #   <p>Information about the payload of the request.</p>
    #   @return [EventPayload]
    # @!attribute response_payload
    #   <p>Information about the payload of the response, if any.</p>
    #   @return [EventPayload]
    # @!attribute error_code
    #   <p>The code of the error, if any.</p>
    #   @return [String]
    # @!attribute source_ip_address
    #   <p>The IP address of the user whose actions are recorded in the event.</p>
    #   @return [String]
    # @!attribute user_agent
    #   <p>The user agent whose actions are recorded in the event.</p>
    #   @return [String]
    class EventLogEntry
      include Hearth::Structure

      MEMBERS = %i[
        id
        event_name
        event_type
        event_category
        event_source
        event_time
        operation_type
        user_identity
        project_information
        request_id
        request_payload
        response_payload
        error_code
        source_ip_address
        user_agent
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Information about the payload of an event recording Amazon CodeCatalyst activity.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :content_type
    #   @option params [String] :data
    # @!attribute content_type
    #   <p>The type of content in the event payload.</p>
    #   @return [String]
    # @!attribute data
    #   <p>The data included in the event payload.</p>
    #   @return [String]
    class EventPayload
      include Hearth::Structure

      MEMBERS = %i[
        content_type
        data
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Information about the commands that will be run on a Dev Environment when an SSH session begins.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :command (0)
    #   @option params [Array<String>] :arguments
    # @!attribute command
    #   <p>The command used at the beginning of the SSH session to a Dev Environment.</p>
    #   @return [String]
    # @!attribute arguments
    #   <p>An array of arguments containing arguments and members.</p>
    #   @return [Array<String>]
    class ExecuteCommandSessionConfiguration
      include Hearth::Structure

      MEMBERS = %i[
        command
        arguments
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Information about a filter used to limit results of a query.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key (0)
    #   @option params [Array<String>] :values (0)
    #   @option params [String] :comparison_operator
    # @!attribute key
    #   <p>A key that can be used to sort results.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values of the key.</p>
    #   @return [Array<String>]
    # @!attribute comparison_operator
    #   <p>The operator used to compare the fields.</p>
    #   @return [String]
    class Filter
      include Hearth::Structure

      MEMBERS = %i[
        key
        values
        comparison_operator
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for FilterKey
    module FilterKey
      HAS_ACCESS_TO = "hasAccessTo"

      NAME = "name"
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name
    #   @option params [String] :project_name
    #   @option params [String] :id
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The system-generated unique ID of the Dev Environment for which you want to view information. To retrieve a list of Dev Environment IDs, use <a>ListDevEnvironments</a>.</p>
    #   @return [String]
    class GetDevEnvironmentInput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        project_name
        id
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name (0)
    #   @option params [String] :project_name (0)
    #   @option params [String] :id (0)
    #   @option params [Time] :last_updated_time (0)
    #   @option params [String] :creator_id (0)
    #   @option params [String] :status (0)
    #   @option params [String] :status_reason
    #   @option params [Array<DevEnvironmentRepositorySummary>] :repositories (0)
    #   @option params [String] :alias
    #   @option params [Array<Ide>] :ides
    #   @option params [String] :instance_type (0)
    #   @option params [Integer] :inactivity_timeout_minutes (0)
    #   @option params [PersistentStorage] :persistent_storage (0)
    #   @option params [String] :vpc_connection_name
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The system-generated unique ID of the Dev Environment. </p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>The time when the Dev Environment was last updated, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    #   @return [Time]
    # @!attribute creator_id
    #   <p>The system-generated unique ID of the user who created the Dev Environment. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the Dev Environment.</p>
    #   Enum, one of: ["PENDING", "RUNNING", "STARTING", "STOPPING", "STOPPED", "FAILED", "DELETING", "DELETED"]
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the status.</p>
    #   @return [String]
    # @!attribute repositories
    #   <p>The source repository that contains the branch cloned into the Dev Environment. </p>
    #   @return [Array<DevEnvironmentRepositorySummary>]
    # @!attribute alias
    #   <p>The user-specified alias for the Dev Environment. </p>
    #   @return [String]
    # @!attribute ides
    #   <p>Information about the integrated development environment (IDE) configured for the Dev Environment. </p>
    #   @return [Array<Ide>]
    # @!attribute instance_type
    #   <p>The Amazon EC2 instace type to use for the Dev Environment. </p>
    #   Enum, one of: ["dev.standard1.small", "dev.standard1.medium", "dev.standard1.large", "dev.standard1.xlarge"]
    #   @return [String]
    # @!attribute inactivity_timeout_minutes
    #   <p>The amount of time the Dev Environment will run without any activity detected before stopping, in minutes.</p>
    #   @return [Integer]
    # @!attribute persistent_storage
    #   <p>Information about the amount of storage allocated to the Dev Environment.  By default, a Dev Environment is configured to have 16GB of persistent storage.</p>
    #   @return [PersistentStorage]
    # @!attribute vpc_connection_name
    #   <p>The name of the connection used to connect to Amazon VPC used when the Dev Environment was created, if any.</p>
    #   @return [String]
    class GetDevEnvironmentOutput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        project_name
        id
        last_updated_time
        creator_id
        status
        status_reason
        repositories
        alias
        ides
        instance_type
        inactivity_timeout_minutes
        persistent_storage
        vpc_connection_name
      ].freeze

      attr_accessor(*MEMBERS)

      private

      def _defaults
        {
          inactivity_timeout_minutes: 0
        }
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name
    #   @option params [String] :name
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    class GetProjectInput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name
    #   @option params [String] :name (0)
    #   @option params [String] :display_name
    #   @option params [String] :description
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The friendly name of the project displayed to users in Amazon CodeCatalyst.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the project.</p>
    #   @return [String]
    class GetProjectOutput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        name
        display_name
        description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name
    #   @option params [String] :project_name
    #   @option params [String] :source_repository_name
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute source_repository_name
    #   <p>The name of the source repository.</p>
    #   @return [String]
    class GetSourceRepositoryCloneUrlsInput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        project_name
        source_repository_name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :https (0)
    # @!attribute https
    #   <p>The HTTPS URL to use when cloning the source repository.</p>
    #   @return [String]
    class GetSourceRepositoryCloneUrlsOutput
      include Hearth::Structure

      MEMBERS = %i[
        https
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name
    #   @option params [String] :project_name
    #   @option params [String] :name
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the source repository.</p>
    #   @return [String]
    class GetSourceRepositoryInput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        project_name
        name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name (0)
    #   @option params [String] :project_name (0)
    #   @option params [String] :name (0)
    #   @option params [String] :description
    #   @option params [Time] :last_updated_time (0)
    #   @option params [Time] :created_time (0)
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the source repository.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the source repository.</p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>The time the source repository was last updated, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    #   @return [Time]
    # @!attribute created_time
    #   <p>The time the source repository was created, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    #   @return [Time]
    class GetSourceRepositoryOutput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        project_name
        name
        description
        last_updated_time
        created_time
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :name
    # @!attribute name
    #   <p>The name of the space.</p>
    #   @return [String]
    class GetSpaceInput
      include Hearth::Structure

      MEMBERS = %i[
        name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :name (0)
    #   @option params [String] :region_name (0)
    #   @option params [String] :display_name
    #   @option params [String] :description
    # @!attribute name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute region_name
    #   <p>The Amazon Web Services Region where the space exists.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The friendly name of the space displayed to users.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the space.</p>
    #   @return [String]
    class GetSpaceOutput
      include Hearth::Structure

      MEMBERS = %i[
        name
        region_name
        display_name
        description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    class GetSubscriptionInput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :subscription_type
    #   @option params [String] :aws_account_name
    #   @option params [String] :pending_subscription_type
    #   @option params [Time] :pending_subscription_start_time
    # @!attribute subscription_type
    #   <p>The type of the billing plan for the space.</p>
    #   @return [String]
    # @!attribute aws_account_name
    #   <p>The display name of the Amazon Web Services account used for billing for the space.</p>
    #   @return [String]
    # @!attribute pending_subscription_type
    #   <p>The type of the billing plan that the space will be changed to at the start of the next billing cycle. This applies
    #       only to changes that reduce the functionality available for the space. Billing plan changes that increase functionality
    #       are applied immediately. For more information, see <a href="https://codecatalyst.aws/explore/pricing">Pricing</a>.</p>
    #   @return [String]
    # @!attribute pending_subscription_start_time
    #   <p>The day and time the pending change will be applied to the space, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    #   @return [Time]
    class GetSubscriptionOutput
      include Hearth::Structure

      MEMBERS = %i[
        subscription_type
        aws_account_name
        pending_subscription_type
        pending_subscription_start_time
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :id
    #   @option params [String] :user_name
    # @!attribute id
    #   <p>The system-generated unique ID of the user. </p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The name of the user as displayed in Amazon CodeCatalyst.</p>
    #   @return [String]
    class GetUserDetailsInput
      include Hearth::Structure

      MEMBERS = %i[
        id
        user_name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :user_id
    #   @option params [String] :user_name
    #   @option params [String] :display_name
    #   @option params [EmailAddress] :primary_email
    #   @option params [String] :version
    # @!attribute user_id
    #   <p>The system-generated unique ID of the user.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The name of the user as displayed in Amazon CodeCatalyst.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The friendly name displayed for the user in Amazon CodeCatalyst.</p>
    #   @return [String]
    # @!attribute primary_email
    #   <p>The email address provided by the user when they signed up.</p>
    #   @return [EmailAddress]
    # @!attribute version
    #   <p/>
    #   @return [String]
    class GetUserDetailsOutput
      include Hearth::Structure

      MEMBERS = %i[
        user_id
        user_name
        display_name
        primary_email
        version
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name
    #   @option params [String] :id
    #   @option params [String] :project_name
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the workflow. To rerieve a list of workflow IDs, use <a>ListWorkflows</a>.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    class GetWorkflowInput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        id
        project_name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name (0)
    #   @option params [String] :project_name (0)
    #   @option params [String] :id (0)
    #   @option params [String] :name (0)
    #   @option params [String] :source_repository_name
    #   @option params [String] :source_branch_name
    #   @option params [WorkflowDefinition] :definition (0)
    #   @option params [Time] :created_time (0)
    #   @option params [Time] :last_updated_time (0)
    #   @option params [String] :run_mode (0)
    #   @option params [String] :status (0)
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the workflow.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the workflow.</p>
    #   @return [String]
    # @!attribute source_repository_name
    #   <p>The name of the source repository where the workflow YAML is stored.</p>
    #   @return [String]
    # @!attribute source_branch_name
    #   <p>The name of the branch that contains the workflow YAML.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>Information about the workflow definition file for the workflow.</p>
    #   @return [WorkflowDefinition]
    # @!attribute created_time
    #   <p>The date and time the workflow was created, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>
    #            </p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The date and time the workflow was last updated, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>
    #            </p>
    #   @return [Time]
    # @!attribute run_mode
    #   <p>The behavior to use when multiple workflows occur at the same time. For more information, see
    #         <a href="https://docs.aws.amazon.com/codecatalyst/latest/userguide/workflows-configure-runs.html">https://docs.aws.amazon.com/codecatalyst/latest/userguide/workflows-configure-runs.html</a> in the Amazon CodeCatalyst User Guide.</p>
    #   Enum, one of: ["QUEUED", "PARALLEL", "SUPERSEDED"]
    #   @return [String]
    # @!attribute status
    #   <p>The status of the workflow.</p>
    #   Enum, one of: ["INVALID", "ACTIVE"]
    #   @return [String]
    class GetWorkflowOutput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        project_name
        id
        name
        source_repository_name
        source_branch_name
        definition
        created_time
        last_updated_time
        run_mode
        status
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name
    #   @option params [String] :id
    #   @option params [String] :project_name
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the workflow run. To retrieve a list of workflow run IDs, use <a>ListWorkflowRuns</a>.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    class GetWorkflowRunInput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        id
        project_name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name (0)
    #   @option params [String] :project_name (0)
    #   @option params [String] :id (0)
    #   @option params [String] :workflow_id (0)
    #   @option params [String] :status (0)
    #   @option params [Array<WorkflowRunStatusReason>] :status_reasons
    #   @option params [Time] :start_time (0)
    #   @option params [Time] :end_time
    #   @option params [Time] :last_updated_time (0)
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the workflow run.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>The ID of the workflow.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the workflow run.</p>
    #   Enum, one of: ["SUCCEEDED", "FAILED", "STOPPED", "SUPERSEDED", "CANCELLED", "NOT_RUN", "VALIDATING", "PROVISIONING", "IN_PROGRESS", "STOPPING", "ABANDONED"]
    #   @return [String]
    # @!attribute status_reasons
    #   <p>Information about the reasons for the status of the workflow run.</p>
    #   @return [Array<WorkflowRunStatusReason>]
    # @!attribute start_time
    #   <p>The date and time the workflow run began, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>
    #            </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The date and time the workflow run ended, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The date and time the workflow run status was last updated, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>
    #            </p>
    #   @return [Time]
    class GetWorkflowRunOutput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        project_name
        id
        workflow_id
        status
        status_reasons
        start_time
        end_time
        last_updated_time
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Information about an integrated development environment (IDE) used in a Dev Environment.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :runtime
    #   @option params [String] :name
    # @!attribute runtime
    #   <p>A link to the IDE runtime image.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the IDE.</p>
    #   @return [String]
    class Ide
      include Hearth::Structure

      MEMBERS = %i[
        runtime
        name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Information about the configuration of an integrated development environment (IDE) for a Dev Environment.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :runtime
    #   @option params [String] :name
    # @!attribute runtime
    #   <p>A link to the IDE runtime image. </p>
    #            <note>
    #               <p>This parameter is not required for <code>VSCode</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the IDE. Valid values include <code>Cloud9</code>, <code>IntelliJ</code>, <code>PyCharm</code>, <code>GoLand</code>, and <code>VSCode</code>.</p>
    #   @return [String]
    class IdeConfiguration
      include Hearth::Structure

      MEMBERS = %i[
        runtime
        name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for InstanceType
    module InstanceType
      DEV_STANDARD1_SMALL = "dev.standard1.small"

      DEV_STANDARD1_MEDIUM = "dev.standard1.medium"

      DEV_STANDARD1_LARGE = "dev.standard1.large"

      DEV_STANDARD1_XLARGE = "dev.standard1.xlarge"
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Integer] :max_results
    #   @option params [String] :next_token
    # @!attribute max_results
    #   <p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    class ListAccessTokensInput
      include Hearth::Structure

      MEMBERS = %i[
        max_results
        next_token
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<AccessTokenSummary>] :items (0)
    #   @option params [String] :next_token
    # @!attribute items
    #   <p>A list of personal access tokens (PATs) associated with the calling user identity.</p>
    #   @return [Array<AccessTokenSummary>]
    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    class ListAccessTokensOutput
      include Hearth::Structure

      MEMBERS = %i[
        items
        next_token
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name
    #   @option params [String] :project_name
    #   @option params [String] :dev_environment_id
    #   @option params [String] :next_token
    #   @option params [Integer] :max_results
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute dev_environment_id
    #   <p>The system-generated unique ID of the Dev Environment.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    #   @return [Integer]
    class ListDevEnvironmentSessionsInput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        project_name
        dev_environment_id
        next_token
        max_results
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<DevEnvironmentSessionSummary>] :items (0)
    #   @option params [String] :next_token
    # @!attribute items
    #   <p>Information about each session retrieved in the list.</p>
    #   @return [Array<DevEnvironmentSessionSummary>]
    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    class ListDevEnvironmentSessionsOutput
      include Hearth::Structure

      MEMBERS = %i[
        items
        next_token
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name
    #   @option params [String] :project_name
    #   @option params [Array<Filter>] :filters
    #   @option params [String] :next_token
    #   @option params [Integer] :max_results
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Information about filters to apply to narrow the results returned in the list.</p>
    #   @return [Array<Filter>]
    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    #   @return [Integer]
    class ListDevEnvironmentsInput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        project_name
        filters
        next_token
        max_results
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<DevEnvironmentSummary>] :items (0)
    #   @option params [String] :next_token
    # @!attribute items
    #   <p>Information about the Dev Environments in a project.</p>
    #   @return [Array<DevEnvironmentSummary>]
    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    class ListDevEnvironmentsOutput
      include Hearth::Structure

      MEMBERS = %i[
        items
        next_token
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name
    #   @option params [Time] :start_time
    #   @option params [Time] :end_time
    #   @option params [String] :event_name
    #   @option params [String] :next_token
    #   @option params [Integer] :max_results
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The date and time when you want to start retrieving events, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time after which you do not want any events retrieved, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    #   @return [Time]
    # @!attribute event_name
    #   <p>The name of the event.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    #   @return [Integer]
    class ListEventLogsInput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        start_time
        end_time
        event_name
        next_token
        max_results
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :next_token
    #   @option params [Array<EventLogEntry>] :items (0)
    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    # @!attribute items
    #   <p>Information about each event retrieved in the list.</p>
    #   @return [Array<EventLogEntry>]
    class ListEventLogsOutput
      include Hearth::Structure

      MEMBERS = %i[
        next_token
        items
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name
    #   @option params [String] :next_token
    #   @option params [Integer] :max_results
    #   @option params [Array<ProjectListFilter>] :filters
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>Information about filters to apply to narrow the results returned in the list.</p>
    #   @return [Array<ProjectListFilter>]
    class ListProjectsInput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        next_token
        max_results
        filters
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :next_token
    #   @option params [Array<ProjectSummary>] :items
    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    # @!attribute items
    #   <p>Information about the projects.</p>
    #   @return [Array<ProjectSummary>]
    class ListProjectsOutput
      include Hearth::Structure

      MEMBERS = %i[
        next_token
        items
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name
    #   @option params [String] :project_name
    #   @option params [String] :next_token
    #   @option params [Integer] :max_results
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    #   @return [Integer]
    class ListSourceRepositoriesInput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        project_name
        next_token
        max_results
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Information about a source repository returned in a list of source repositories.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :id (0)
    #   @option params [String] :name (0)
    #   @option params [String] :description
    #   @option params [Time] :last_updated_time (0)
    #   @option params [Time] :created_time (0)
    # @!attribute id
    #   <p>The system-generated unique ID of the source repository.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the source repository.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the repository, if any.</p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>The time the source repository was last updated, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    #   @return [Time]
    # @!attribute created_time
    #   <p>The time the source repository was created, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    #   @return [Time]
    class ListSourceRepositoriesItem
      include Hearth::Structure

      MEMBERS = %i[
        id
        name
        description
        last_updated_time
        created_time
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<ListSourceRepositoriesItem>] :items
    #   @option params [String] :next_token
    # @!attribute items
    #   <p>Information about the source repositories.</p>
    #   @return [Array<ListSourceRepositoriesItem>]
    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    class ListSourceRepositoriesOutput
      include Hearth::Structure

      MEMBERS = %i[
        items
        next_token
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name
    #   @option params [String] :project_name
    #   @option params [String] :source_repository_name
    #   @option params [String] :next_token
    #   @option params [Integer] :max_results
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute source_repository_name
    #   <p>The name of the source repository.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    #   @return [Integer]
    class ListSourceRepositoryBranchesInput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        project_name
        source_repository_name
        next_token
        max_results
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Information about a branch of a source repository returned in a list of branches.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :ref
    #   @option params [String] :name
    #   @option params [Time] :last_updated_time
    #   @option params [String] :head_commit_id
    # @!attribute ref
    #   <p>The Git reference name of the branch.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the branch.</p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>The time the branch was last updated, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    #   @return [Time]
    # @!attribute head_commit_id
    #   <p>The commit ID of the tip of the branch at the time of the request, also known as the head commit.</p>
    #   @return [String]
    class ListSourceRepositoryBranchesItem
      include Hearth::Structure

      MEMBERS = %i[
        ref
        name
        last_updated_time
        head_commit_id
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :next_token
    #   @option params [Array<ListSourceRepositoryBranchesItem>] :items (0)
    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    # @!attribute items
    #   <p>Information about the source branches.</p>
    #   @return [Array<ListSourceRepositoryBranchesItem>]
    class ListSourceRepositoryBranchesOutput
      include Hearth::Structure

      MEMBERS = %i[
        next_token
        items
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :next_token
    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    class ListSpacesInput
      include Hearth::Structure

      MEMBERS = %i[
        next_token
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :next_token
    #   @option params [Array<SpaceSummary>] :items
    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    # @!attribute items
    #   <p>Information about the spaces. </p>
    #   @return [Array<SpaceSummary>]
    class ListSpacesOutput
      include Hearth::Structure

      MEMBERS = %i[
        next_token
        items
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name
    #   @option params [String] :workflow_id
    #   @option params [String] :project_name
    #   @option params [String] :next_token
    #   @option params [Integer] :max_results
    #   @option params [Array<WorkflowRunSortCriteria>] :sort_by
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>The ID of the workflow. To retrieve a list of workflow IDs, use <a>ListWorkflows</a>.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    #   @return [Integer]
    # @!attribute sort_by
    #   <p>Information used to sort the items in the returned list.</p>
    #   @return [Array<WorkflowRunSortCriteria>]
    class ListWorkflowRunsInput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        workflow_id
        project_name
        next_token
        max_results
        sort_by
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :next_token
    #   @option params [Array<WorkflowRunSummary>] :items
    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    # @!attribute items
    #   <p>Information about the runs of a workflow.</p>
    #   @return [Array<WorkflowRunSummary>]
    class ListWorkflowRunsOutput
      include Hearth::Structure

      MEMBERS = %i[
        next_token
        items
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name
    #   @option params [String] :project_name
    #   @option params [String] :next_token
    #   @option params [Integer] :max_results
    #   @option params [Array<WorkflowSortCriteria>] :sort_by
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to show in a single call to this API. If the number of results is larger than the number you specified, the response will include a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    #   @return [Integer]
    # @!attribute sort_by
    #   <p>Information used to sort the items in the returned list.</p>
    #   @return [Array<WorkflowSortCriteria>]
    class ListWorkflowsInput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        project_name
        next_token
        max_results
        sort_by
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :next_token
    #   @option params [Array<WorkflowSummary>] :items
    # @!attribute next_token
    #   <p>A token returned from a call to this API to indicate the next batch of results to return, if any.</p>
    #   @return [String]
    # @!attribute items
    #   <p>Information about the workflows in a project.</p>
    #   @return [Array<WorkflowSummary>]
    class ListWorkflowsOutput
      include Hearth::Structure

      MEMBERS = %i[
        next_token
        items
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for OperationType
    module OperationType
      READONLY = "READONLY"

      MUTATION = "MUTATION"
    end

    # <p>Information about the persistent storage for a Dev Environment.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Integer] :size_in_gi_b (0)
    # @!attribute size_in_gi_b
    #   <p>The size of the persistent storage in gigabytes (specifically GiB).</p>
    #            <note>
    #               <p>Valid values for storage are based on memory sizes in 16GB increments. Valid values are
    #           16, 32, and 64.</p>
    #            </note>
    #   @return [Integer]
    class PersistentStorage
      include Hearth::Structure

      MEMBERS = %i[
        size_in_gi_b
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Information about the configuration of persistent storage for a Dev Environment. </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Integer] :size_in_gi_b (0)
    # @!attribute size_in_gi_b
    #   <p>The size of the persistent storage in gigabytes (specifically GiB).</p>
    #            <note>
    #               <p>Valid values for storage are based on memory sizes in 16GB increments. Valid values are
    #           16, 32, and 64.</p>
    #            </note>
    #   @return [Integer]
    class PersistentStorageConfiguration
      include Hearth::Structure

      MEMBERS = %i[
        size_in_gi_b
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Information about a project in a space.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :name
    #   @option params [String] :project_id
    # @!attribute name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute project_id
    #   <p>The system-generated unique ID of the project.</p>
    #   @return [String]
    class ProjectInformation
      include Hearth::Structure

      MEMBERS = %i[
        name
        project_id
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>nformation about the filter used to narrow the results returned in a list of projects.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key (0)
    #   @option params [Array<String>] :values (0)
    #   @option params [String] :comparison_operator
    # @!attribute key
    #   <p>A key that can be used to sort results.</p>
    #   Enum, one of: ["hasAccessTo", "name"]
    #   @return [String]
    # @!attribute values
    #   <p>The values of the key.</p>
    #   @return [Array<String>]
    # @!attribute comparison_operator
    #   <p>The operator used to compare the fields.</p>
    #   Enum, one of: ["EQ", "GT", "GE", "LT", "LE", "BEGINS_WITH"]
    #   @return [String]
    class ProjectListFilter
      include Hearth::Structure

      MEMBERS = %i[
        key
        values
        comparison_operator
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Information about a project.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :name (0)
    #   @option params [String] :display_name
    #   @option params [String] :description
    # @!attribute name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The friendly name displayed to users of the project in Amazon CodeCatalyst.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the project.</p>
    #   @return [String]
    class ProjectSummary
      include Hearth::Structure

      MEMBERS = %i[
        name
        display_name
        description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Information about a repository that will be cloned to a Dev Environment.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :repository_name (0)
    #   @option params [String] :branch_name
    # @!attribute repository_name
    #   <p>The name of the source repository.</p>
    #   @return [String]
    # @!attribute branch_name
    #   <p>The name of the branch in a source repository.</p>
    #   @return [String]
    class RepositoryInput
      include Hearth::Structure

      MEMBERS = %i[
        repository_name
        branch_name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>The request was denied because the specified resource was not found. Verify that the spelling is correct and that you have access to the resource.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message (0)
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>The request was denied because one or more resources has reached its limits for the tier the space belongs to. Either reduce
    #       the number of resources, or change the tier if applicable.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message (0)
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Information about an space.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :name (0)
    #   @option params [String] :region_name (0)
    #   @option params [String] :display_name
    #   @option params [String] :description
    # @!attribute name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute region_name
    #   <p>The Amazon Web Services Region
    #         where the space exists.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The friendly name of the space displayed to users.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the space.</p>
    #   @return [String]
    class SpaceSummary
      include Hearth::Structure

      MEMBERS = %i[
        name
        region_name
        display_name
        description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name
    #   @option params [String] :project_name
    #   @option params [String] :id
    #   @option params [Array<IdeConfiguration>] :ides
    #   @option params [String] :instance_type
    #   @option params [Integer] :inactivity_timeout_minutes
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The system-generated unique ID of the Dev Environment. </p>
    #   @return [String]
    # @!attribute ides
    #   <p>Information about the integrated development environment (IDE) configured for a Dev Environment. </p>
    #   @return [Array<IdeConfiguration>]
    # @!attribute instance_type
    #   <p>The Amazon EC2 instace type to use for the Dev Environment. </p>
    #   Enum, one of: ["dev.standard1.small", "dev.standard1.medium", "dev.standard1.large", "dev.standard1.xlarge"]
    #   @return [String]
    # @!attribute inactivity_timeout_minutes
    #   <p>The amount of time the Dev Environment will run without any activity detected before stopping, in minutes. Only whole integers are allowed. Dev Environments consume compute minutes when running.</p>
    #   @return [Integer]
    class StartDevEnvironmentInput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        project_name
        id
        ides
        instance_type
        inactivity_timeout_minutes
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name (0)
    #   @option params [String] :project_name (0)
    #   @option params [String] :id (0)
    #   @option params [String] :status (0)
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The system-generated unique ID of the Dev Environment. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Dev Environment. </p>
    #   Enum, one of: ["PENDING", "RUNNING", "STARTING", "STOPPING", "STOPPED", "FAILED", "DELETING", "DELETED"]
    #   @return [String]
    class StartDevEnvironmentOutput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        project_name
        id
        status
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name
    #   @option params [String] :project_name
    #   @option params [String] :id
    #   @option params [DevEnvironmentSessionConfiguration] :session_configuration
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The system-generated unique ID of the Dev Environment.</p>
    #   @return [String]
    # @!attribute session_configuration
    #   <p>Information about the configuration of a Dev Environment session.</p>
    #   @return [DevEnvironmentSessionConfiguration]
    class StartDevEnvironmentSessionInput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        project_name
        id
        session_configuration
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [DevEnvironmentAccessDetails] :access_details (0)
    #   @option params [String] :session_id
    #   @option params [String] :space_name (0)
    #   @option params [String] :project_name (0)
    #   @option params [String] :id (0)
    # @!attribute access_details
    #   <p>Information about connection details for a Dev Environment.</p>
    #   @return [DevEnvironmentAccessDetails]
    # @!attribute session_id
    #   <p>The system-generated unique ID of the Dev Environment session.</p>
    #   @return [String]
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The system-generated unique ID of the Dev Environment.</p>
    #   @return [String]
    class StartDevEnvironmentSessionOutput
      include Hearth::Structure

      MEMBERS = %i[
        access_details
        session_id
        space_name
        project_name
        id
      ].freeze

      attr_accessor(*MEMBERS)

      def to_s
        '#<AWS::SDK::CodeCatalyst::Types::StartDevEnvironmentSessionOutput ' \
          'access_details=[SENSITIVE], ' \
          "session_id=#{session_id || 'nil'}, " \
          "space_name=#{space_name || 'nil'}, " \
          "project_name=#{project_name || 'nil'}, " \
          "id=#{id || 'nil'}>"
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name
    #   @option params [String] :project_name
    #   @option params [String] :workflow_id
    #   @option params [String] :client_token
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>The system-generated unique ID of the workflow. To retrieve a list of workflow IDs, use <a>ListWorkflows</a>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A user-specified idempotency token.  Idempotency ensures that an API request completes only once.
    #          With an idempotent request, if the original request completes successfully, the subsequent retries return the result from the original successful request and have no additional effect.</p>
    #   @return [String]
    class StartWorkflowRunInput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        project_name
        workflow_id
        client_token
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name (0)
    #   @option params [String] :project_name (0)
    #   @option params [String] :id (0)
    #   @option params [String] :workflow_id (0)
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The system-generated unique ID of the workflow run.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>The system-generated unique ID of the workflow.</p>
    #   @return [String]
    class StartWorkflowRunOutput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        project_name
        id
        workflow_id
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name
    #   @option params [String] :project_name
    #   @option params [String] :id
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The system-generated unique ID of the Dev Environment. </p>
    #   @return [String]
    class StopDevEnvironmentInput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        project_name
        id
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name (0)
    #   @option params [String] :project_name (0)
    #   @option params [String] :id (0)
    #   @option params [String] :status (0)
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The system-generated unique ID of the Dev Environment. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Dev Environment. </p>
    #   Enum, one of: ["PENDING", "RUNNING", "STARTING", "STOPPING", "STOPPED", "FAILED", "DELETING", "DELETED"]
    #   @return [String]
    class StopDevEnvironmentOutput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        project_name
        id
        status
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name
    #   @option params [String] :project_name
    #   @option params [String] :id
    #   @option params [String] :session_id
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The system-generated unique ID of the Dev Environment. To obtain this ID, use <a>ListDevEnvironments</a>.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The system-generated unique ID of the Dev Environment session. This ID is returned by <a>StartDevEnvironmentSession</a>.</p>
    #   @return [String]
    class StopDevEnvironmentSessionInput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        project_name
        id
        session_id
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name (0)
    #   @option params [String] :project_name (0)
    #   @option params [String] :id (0)
    #   @option params [String] :session_id (0)
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The system-generated unique ID of the Dev Environment.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The system-generated unique ID of the Dev Environment session.</p>
    #   @return [String]
    class StopDevEnvironmentSessionOutput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        project_name
        id
        session_id
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>The request was denied due to request throttling.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message (0)
    # @!attribute message
    #   @return [String]
    class ThrottlingException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name
    #   @option params [String] :project_name
    #   @option params [String] :id
    #   @option params [String] :alias
    #   @option params [Array<IdeConfiguration>] :ides
    #   @option params [String] :instance_type
    #   @option params [Integer] :inactivity_timeout_minutes
    #   @option params [String] :client_token
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The system-generated unique ID of the Dev Environment. </p>
    #   @return [String]
    # @!attribute alias
    #   <p>The user-specified alias for the Dev Environment. Changing this value will not cause a restart.</p>
    #   @return [String]
    # @!attribute ides
    #   <p>Information about the integrated development environment (IDE) configured for a Dev Environment.</p>
    #   @return [Array<IdeConfiguration>]
    # @!attribute instance_type
    #   <p>The Amazon EC2 instace type to use for the Dev Environment. </p>
    #            <note>
    #               <p>Changing this value will cause a restart of the Dev Environment if it is running.</p>
    #            </note>
    #   Enum, one of: ["dev.standard1.small", "dev.standard1.medium", "dev.standard1.large", "dev.standard1.xlarge"]
    #   @return [String]
    # @!attribute inactivity_timeout_minutes
    #   <p>The amount of time the Dev Environment will run without any activity detected before stopping, in minutes.
    #         Only whole integers are allowed. Dev Environments consume compute minutes when running.</p>
    #            <note>
    #               <p>Changing this value will cause a restart of the Dev Environment if it is running.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute client_token
    #   <p>A user-specified idempotency token.  Idempotency ensures that an API request completes only once.
    #          With an idempotent request, if the original request completes successfully, the subsequent retries return the result from the original successful request and have no additional effect.</p>
    #   @return [String]
    class UpdateDevEnvironmentInput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        project_name
        id
        alias
        ides
        instance_type
        inactivity_timeout_minutes
        client_token
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :id (0)
    #   @option params [String] :space_name (0)
    #   @option params [String] :project_name (0)
    #   @option params [String] :alias
    #   @option params [Array<IdeConfiguration>] :ides
    #   @option params [String] :instance_type
    #   @option params [Integer] :inactivity_timeout_minutes (0)
    #   @option params [String] :client_token
    # @!attribute id
    #   <p>The system-generated unique ID of the Dev Environment. </p>
    #   @return [String]
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project in the space.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The user-specified alias for the Dev Environment.</p>
    #   @return [String]
    # @!attribute ides
    #   <p>Information about the integrated development environment (IDE) configured for the Dev Environment.</p>
    #   @return [Array<IdeConfiguration>]
    # @!attribute instance_type
    #   <p>The Amazon EC2 instace type to use for the Dev Environment. </p>
    #   Enum, one of: ["dev.standard1.small", "dev.standard1.medium", "dev.standard1.large", "dev.standard1.xlarge"]
    #   @return [String]
    # @!attribute inactivity_timeout_minutes
    #   <p>The amount of time the Dev Environment will run without any activity detected before stopping, in minutes. </p>
    #   @return [Integer]
    # @!attribute client_token
    #   <p>A user-specified idempotency token.  Idempotency ensures that an API request completes only once.
    #          With an idempotent request, if the original request completes successfully, the subsequent retries return the result from the original successful request and have no additional effect.</p>
    #   @return [String]
    class UpdateDevEnvironmentOutput
      include Hearth::Structure

      MEMBERS = %i[
        id
        space_name
        project_name
        alias
        ides
        instance_type
        inactivity_timeout_minutes
        client_token
      ].freeze

      attr_accessor(*MEMBERS)

      private

      def _defaults
        {
          inactivity_timeout_minutes: 0
        }
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name
    #   @option params [String] :name
    #   @option params [String] :description
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the project.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the project.</p>
    #   @return [String]
    class UpdateProjectInput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        name
        description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :space_name
    #   @option params [String] :name
    #   @option params [String] :display_name
    #   @option params [String] :description
    # @!attribute space_name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the project.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The friendly name of the project displayed to users in Amazon CodeCatalyst.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the project.</p>
    #   @return [String]
    class UpdateProjectOutput
      include Hearth::Structure

      MEMBERS = %i[
        space_name
        name
        display_name
        description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :name
    #   @option params [String] :description
    # @!attribute name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the space.</p>
    #   @return [String]
    class UpdateSpaceInput
      include Hearth::Structure

      MEMBERS = %i[
        name
        description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :name
    #   @option params [String] :display_name
    #   @option params [String] :description
    # @!attribute name
    #   <p>The name of the space.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The friendly name of the space displayed to users in Amazon CodeCatalyst.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the space.</p>
    #   @return [String]
    class UpdateSpaceOutput
      include Hearth::Structure

      MEMBERS = %i[
        name
        display_name
        description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Information about a user whose activity is recorded in an event for a space.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :user_type (0)
    #   @option params [String] :principal_id (0)
    #   @option params [String] :user_name
    #   @option params [String] :aws_account_id
    # @!attribute user_type
    #   <p>The role assigned to the user in a Amazon CodeCatalyst space or project when the event occurred.</p>
    #   Enum, one of: ["USER", "AWS_ACCOUNT", "UNKNOWN"]
    #   @return [String]
    # @!attribute principal_id
    #   <p>The ID of the Amazon CodeCatalyst service principal.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The display name of the user in Amazon CodeCatalyst.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account number of the user in Amazon Web Services, if any.</p>
    #   @return [String]
    class UserIdentity
      include Hearth::Structure

      MEMBERS = %i[
        user_type
        principal_id
        user_name
        aws_account_id
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for UserType
    module UserType
      USER = "USER"

      AWS_ACCOUNT = "AWS_ACCOUNT"

      UNKNOWN = "UNKNOWN"
    end

    # <p>The request was denied because an input failed to satisfy the constraints specified by the service. Check the spelling and input requirements, and then try again.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message (0)
    # @!attribute message
    #   @return [String]
    class ValidationException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class VerifySessionInput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :identity
    # @!attribute identity
    #   <p>The system-generated unique ID of the user in Amazon CodeCatalyst.</p>
    #   @return [String]
    class VerifySessionOutput
      include Hearth::Structure

      MEMBERS = %i[
        identity
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Information about a workflow definition file.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :path (0)
    # @!attribute path
    #   <p>The path to the workflow definition file stored in the source repository for the project, including the file name.</p>
    #   @return [String]
    class WorkflowDefinition
      include Hearth::Structure

      MEMBERS = %i[
        path
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Information about a workflow definition.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :path (0)
    # @!attribute path
    #   <p>The path to the workflow definition file stored in the source repository for the project, including the file name.</p>
    #   @return [String]
    class WorkflowDefinitionSummary
      include Hearth::Structure

      MEMBERS = %i[
        path
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for WorkflowRunMode
    module WorkflowRunMode
      QUEUED = "QUEUED"

      PARALLEL = "PARALLEL"

      SUPERSEDED = "SUPERSEDED"
    end

    # <p>Information used to sort workflow runs in the returned list.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    class WorkflowRunSortCriteria
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for WorkflowRunStatus
    module WorkflowRunStatus
      SUCCEEDED = "SUCCEEDED"

      FAILED = "FAILED"

      STOPPED = "STOPPED"

      SUPERSEDED = "SUPERSEDED"

      CANCELLED = "CANCELLED"

      NOT_RUN = "NOT_RUN"

      VALIDATING = "VALIDATING"

      PROVISIONING = "PROVISIONING"

      IN_PROGRESS = "IN_PROGRESS"

      STOPPING = "STOPPING"

      ABANDONED = "ABANDONED"
    end

    # <p>Information about the status of a workflow run.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    class WorkflowRunStatusReason
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Information about a workflow run.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :id (0)
    #   @option params [String] :workflow_id (0)
    #   @option params [String] :workflow_name (0)
    #   @option params [String] :status (0)
    #   @option params [Array<WorkflowRunStatusReason>] :status_reasons
    #   @option params [Time] :start_time (0)
    #   @option params [Time] :end_time
    #   @option params [Time] :last_updated_time (0)
    # @!attribute id
    #   <p>The system-generated unique ID of the workflow run.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>The system-generated unique ID of the workflow.</p>
    #   @return [String]
    # @!attribute workflow_name
    #   <p>The name of the workflow.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the workflow run.</p>
    #   Enum, one of: ["SUCCEEDED", "FAILED", "STOPPED", "SUPERSEDED", "CANCELLED", "NOT_RUN", "VALIDATING", "PROVISIONING", "IN_PROGRESS", "STOPPING", "ABANDONED"]
    #   @return [String]
    # @!attribute status_reasons
    #   <p>The reasons for the workflow run status.</p>
    #   @return [Array<WorkflowRunStatusReason>]
    # @!attribute start_time
    #   <p>The date and time the workflow run began, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The date and time the workflow run ended, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>
    #            </p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The date and time the workflow was last updated, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>
    #            </p>
    #   @return [Time]
    class WorkflowRunSummary
      include Hearth::Structure

      MEMBERS = %i[
        id
        workflow_id
        workflow_name
        status
        status_reasons
        start_time
        end_time
        last_updated_time
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Information used to sort workflows in the returned list.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    class WorkflowSortCriteria
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for WorkflowStatus
    module WorkflowStatus
      INVALID = "INVALID"

      ACTIVE = "ACTIVE"
    end

    # <p>Information about a workflow.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :id (0)
    #   @option params [String] :name (0)
    #   @option params [String] :source_repository_name (0)
    #   @option params [String] :source_branch_name (0)
    #   @option params [WorkflowDefinitionSummary] :definition (0)
    #   @option params [Time] :created_time (0)
    #   @option params [Time] :last_updated_time (0)
    #   @option params [String] :run_mode (0)
    #   @option params [String] :status (0)
    # @!attribute id
    #   <p>The system-generated unique ID of a workflow.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the workflow.</p>
    #   @return [String]
    # @!attribute source_repository_name
    #   <p>The name of the source repository where the workflow definition file is stored.</p>
    #   @return [String]
    # @!attribute source_branch_name
    #   <p>The name of the branch of the source repository where the workflow definition file is stored.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>Information about the workflow definition file.</p>
    #   @return [WorkflowDefinitionSummary]
    # @!attribute created_time
    #   <p>The date and time the workflow was created, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>
    #            </p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The date and time the workflow was last updated, in coordinated universal time (UTC) timestamp format as specified in <a href="https://www.rfc-editor.org/rfc/rfc3339#section-5.6">RFC 3339</a>
    #            </p>
    #   @return [Time]
    # @!attribute run_mode
    #   <p>The run mode of the workflow.</p>
    #   Enum, one of: ["QUEUED", "PARALLEL", "SUPERSEDED"]
    #   @return [String]
    # @!attribute status
    #   <p>The status of the workflow.</p>
    #   Enum, one of: ["INVALID", "ACTIVE"]
    #   @return [String]
    class WorkflowSummary
      include Hearth::Structure

      MEMBERS = %i[
        id
        name
        source_repository_name
        source_branch_name
        definition
        created_time
        last_updated_time
        run_mode
        status
      ].freeze

      attr_accessor(*MEMBERS)
    end

  end
end
