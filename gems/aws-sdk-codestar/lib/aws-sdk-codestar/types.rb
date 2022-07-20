# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodeStar
  module Types

    # @!attribute project_id
    #   <p>The ID of the project to which you will add the IAM user.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A user- or system-generated token that identifies the entity that requested the team
    #         member association to the project. This token can be used to repeat the request.</p>
    #
    #   @return [String]
    #
    # @!attribute user_arn
    #   <p>The Amazon Resource Name (ARN) for the IAM user you want to add to the AWS CodeStar
    #         project.</p>
    #
    #   @return [String]
    #
    # @!attribute project_role
    #   <p>The AWS CodeStar project role that will apply to this user. This role determines what actions
    #         a user can take in an AWS CodeStar project.</p>
    #
    #   @return [String]
    #
    # @!attribute remote_access_allowed
    #   <p>Whether the team member is allowed to use an SSH public/private key pair to remotely
    #         access project resources, for example Amazon EC2 instances.</p>
    #
    #   @return [Boolean]
    #
    AssociateTeamMemberInput = ::Struct.new(
      :project_id,
      :client_request_token,
      :user_arn,
      :project_role,
      :remote_access_allowed,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_request_token
    #   <p>The user- or system-generated token from the initial request that can be used to repeat
    #         the request.</p>
    #
    #   @return [String]
    #
    AssociateTeamMemberOutput = ::Struct.new(
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Location and destination information about the source code files provided with the
    #       project request. The source code is uploaded to the new project source repository after
    #       project creation.</p>
    #
    # @!attribute source
    #   <p>The location where the source code files provided with the project request are
    #         stored. AWS CodeStar retrieves the files during project creation.</p>
    #
    #   @return [CodeSource]
    #
    # @!attribute destination
    #   <p>The repository to be created in AWS CodeStar. Valid values are AWS CodeCommit or GitHub. After AWS CodeStar provisions the new repository, the
    #         source code files provided with the project request are placed in the repository.</p>
    #
    #   @return [CodeDestination]
    #
    Code = ::Struct.new(
      :source,
      :destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the AWS CodeCommit repository to be created in AWS CodeStar. This is where the source code files provided
    #       with the project request will be uploaded after project creation.</p>
    #
    # @!attribute name
    #   <p>The name of the AWS CodeCommit repository to be created in AWS CodeStar.</p>
    #
    #   @return [String]
    #
    CodeCommitCodeDestination = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The repository to be created in AWS CodeStar. Valid values are AWS CodeCommit or GitHub. After AWS CodeStar provisions the new repository, the
    #       source code files provided with the project request are placed in the repository.</p>
    #
    # @!attribute code_commit
    #   <p>Information about the AWS CodeCommit repository to be created in AWS CodeStar. This is where the source code files provided
    #         with the project request will be uploaded after project creation.</p>
    #
    #   @return [CodeCommitCodeDestination]
    #
    # @!attribute git_hub
    #   <p>Information about the GitHub repository to be created in AWS CodeStar. This is where the source code files provided with the
    #         project request will be uploaded after project creation.</p>
    #
    #   @return [GitHubCodeDestination]
    #
    CodeDestination = ::Struct.new(
      :code_commit,
      :git_hub,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The location where the source code files provided with the project request are
    #       stored. AWS CodeStar retrieves the files during project creation.</p>
    #
    # @!attribute s3
    #   <p>Information about the Amazon S3 location where the source code files provided with the
    #         project request are stored. </p>
    #
    #   @return [S3Location]
    #
    CodeSource = ::Struct.new(
      :s3,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Another modification is being made. That modification must complete before you can make
    #       your change.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConcurrentModificationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The display name for the project to be created in AWS CodeStar.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID of the project to be created in AWS CodeStar.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the project, if any.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A user- or system-generated token that identifies the entity that requested project
    #         creation. This token can be used to repeat the request.</p>
    #
    #   @return [String]
    #
    # @!attribute source_code
    #   <p>A list of the Code objects submitted with the project request. If this
    #         parameter is specified, the request must also include the toolchain parameter.</p>
    #
    #   @return [Array<Code>]
    #
    # @!attribute toolchain
    #   <p>The name of the toolchain template file submitted with the project request. If
    #         this parameter is specified, the request must also include the sourceCode parameter.</p>
    #
    #   @return [Toolchain]
    #
    # @!attribute tags
    #   <p>The tags created for the project.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateProjectInput = ::Struct.new(
      :name,
      :id,
      :description,
      :client_request_token,
      :source_code,
      :toolchain,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CodeStar::Types::CreateProjectInput "\
          "name=\"[SENSITIVE]\", "\
          "id=#{id || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "client_request_token=#{client_request_token || 'nil'}, "\
          "source_code=#{source_code || 'nil'}, "\
          "toolchain=#{toolchain || 'nil'}, "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # @!attribute id
    #   <p>The ID of the project.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the created project.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A user- or system-generated token that identifies the entity that requested project
    #         creation.</p>
    #
    #   @return [String]
    #
    # @!attribute project_template_id
    #   <p>Reserved for future use.</p>
    #
    #   @return [String]
    #
    CreateProjectOutput = ::Struct.new(
      :id,
      :arn,
      :client_request_token,
      :project_template_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_arn
    #   <p>The Amazon Resource Name (ARN) of the user in IAM.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The name that will be displayed as the friendly name for the user in AWS CodeStar. </p>
    #
    #   @return [String]
    #
    # @!attribute email_address
    #   <p>The email address that will be displayed as part of the user's profile in
    #         AWS CodeStar.</p>
    #
    #   @return [String]
    #
    # @!attribute ssh_public_key
    #   <p>The SSH public key associated with the user in AWS CodeStar. If a project owner allows the
    #         user remote access to project resources, this public key will be used along with the user's
    #         private key for SSH access.</p>
    #
    #   @return [String]
    #
    CreateUserProfileInput = ::Struct.new(
      :user_arn,
      :display_name,
      :email_address,
      :ssh_public_key,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CodeStar::Types::CreateUserProfileInput "\
          "user_arn=#{user_arn || 'nil'}, "\
          "display_name=\"[SENSITIVE]\", "\
          "email_address=\"[SENSITIVE]\", "\
          "ssh_public_key=#{ssh_public_key || 'nil'}>"
      end
    end

    # @!attribute user_arn
    #   <p>The Amazon Resource Name (ARN) of the user in IAM.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The name that is displayed as the friendly name for the user in AWS CodeStar.</p>
    #
    #   @return [String]
    #
    # @!attribute email_address
    #   <p>The email address that is displayed as part of the user's profile in AWS CodeStar.</p>
    #
    #   @return [String]
    #
    # @!attribute ssh_public_key
    #   <p>The SSH public key associated with the user in AWS CodeStar. This is the public portion of the
    #         public/private keypair the user can use to access project resources if a project owner allows
    #         the user remote access to those resources.</p>
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The date the user profile was created, in timestamp format.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_timestamp
    #   <p>The date the user profile was last modified, in timestamp format.</p>
    #
    #   @return [Time]
    #
    CreateUserProfileOutput = ::Struct.new(
      :user_arn,
      :display_name,
      :email_address,
      :ssh_public_key,
      :created_timestamp,
      :last_modified_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CodeStar::Types::CreateUserProfileOutput "\
          "user_arn=#{user_arn || 'nil'}, "\
          "display_name=\"[SENSITIVE]\", "\
          "email_address=\"[SENSITIVE]\", "\
          "ssh_public_key=#{ssh_public_key || 'nil'}, "\
          "created_timestamp=#{created_timestamp || 'nil'}, "\
          "last_modified_timestamp=#{last_modified_timestamp || 'nil'}>"
      end
    end

    # @!attribute id
    #   <p>The ID of the project to be deleted in AWS CodeStar.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A user- or system-generated token that identifies the entity that requested project
    #         deletion. This token can be used to repeat the request. </p>
    #
    #   @return [String]
    #
    # @!attribute delete_stack
    #   <p>Whether to send a delete request for the primary stack in AWS CloudFormation originally
    #         used to generate the project and its resources. This option will delete all AWS resources for
    #         the project (except for any buckets in Amazon S3) as well as deleting the project itself.
    #         Recommended for most use cases.</p>
    #
    #   @return [Boolean]
    #
    DeleteProjectInput = ::Struct.new(
      :id,
      :client_request_token,
      :delete_stack,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.delete_stack ||= false
      end
    end

    # @!attribute stack_id
    #   <p>The ID of the primary stack in AWS CloudFormation that will be deleted as part of
    #         deleting the project and its resources.</p>
    #
    #   @return [String]
    #
    # @!attribute project_arn
    #   <p>The Amazon Resource Name (ARN) of the deleted project.</p>
    #
    #   @return [String]
    #
    DeleteProjectOutput = ::Struct.new(
      :stack_id,
      :project_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_arn
    #   <p>The Amazon Resource Name (ARN) of the user to delete from AWS CodeStar.</p>
    #
    #   @return [String]
    #
    DeleteUserProfileInput = ::Struct.new(
      :user_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_arn
    #   <p>The Amazon Resource Name (ARN) of the user deleted from AWS CodeStar.</p>
    #
    #   @return [String]
    #
    DeleteUserProfileOutput = ::Struct.new(
      :user_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the project.</p>
    #
    #   @return [String]
    #
    DescribeProjectInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The display name for the project.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID of the project.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the project.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the project, if any.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A user- or system-generated token that identifies the entity that requested project
    #         creation. </p>
    #
    #   @return [String]
    #
    # @!attribute created_time_stamp
    #   <p>The date and time the project was created, in timestamp format.</p>
    #
    #   @return [Time]
    #
    # @!attribute stack_id
    #   <p>The ID of the primary stack in AWS CloudFormation used to generate resources for the
    #         project.</p>
    #
    #   @return [String]
    #
    # @!attribute project_template_id
    #   <p>The ID for the AWS CodeStar project template used to create the project.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The project creation or deletion status.</p>
    #
    #   @return [ProjectStatus]
    #
    DescribeProjectOutput = ::Struct.new(
      :name,
      :id,
      :arn,
      :description,
      :client_request_token,
      :created_time_stamp,
      :stack_id,
      :project_template_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CodeStar::Types::DescribeProjectOutput "\
          "name=\"[SENSITIVE]\", "\
          "id=#{id || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "client_request_token=#{client_request_token || 'nil'}, "\
          "created_time_stamp=#{created_time_stamp || 'nil'}, "\
          "stack_id=#{stack_id || 'nil'}, "\
          "project_template_id=#{project_template_id || 'nil'}, "\
          "status=#{status || 'nil'}>"
      end
    end

    # @!attribute user_arn
    #   <p>The Amazon Resource Name (ARN) of the user.</p>
    #
    #   @return [String]
    #
    DescribeUserProfileInput = ::Struct.new(
      :user_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_arn
    #   <p>The Amazon Resource Name (ARN) of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The display name shown for the user in AWS CodeStar projects. For example, this could be set
    #         to both first and last name ("Mary Major") or a single name ("Mary"). The display name is also
    #         used to generate the initial icon associated with the user in AWS CodeStar projects. If spaces are
    #         included in the display name, the first character that appears after the space will be used as
    #         the second character in the user initial icon. The initial icon displays a maximum of two
    #         characters, so a display name with more than one space (for example "Mary Jane Major") would
    #         generate an initial icon using the first character and the first character after the space
    #         ("MJ", not "MM").</p>
    #
    #   @return [String]
    #
    # @!attribute email_address
    #   <p>The email address for the user. Optional.</p>
    #
    #   @return [String]
    #
    # @!attribute ssh_public_key
    #   <p>The SSH public key associated with the user. This SSH public key is associated with the
    #         user profile, and can be used in conjunction with the associated private key for access to
    #         project resources, such as Amazon EC2 instances, if a project owner grants remote access to
    #         those resources.</p>
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The date and time when the user profile was created in AWS CodeStar, in timestamp
    #         format.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_timestamp
    #   <p>The date and time when the user profile was last modified, in timestamp
    #         format.</p>
    #
    #   @return [Time]
    #
    DescribeUserProfileOutput = ::Struct.new(
      :user_arn,
      :display_name,
      :email_address,
      :ssh_public_key,
      :created_timestamp,
      :last_modified_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CodeStar::Types::DescribeUserProfileOutput "\
          "user_arn=#{user_arn || 'nil'}, "\
          "display_name=\"[SENSITIVE]\", "\
          "email_address=\"[SENSITIVE]\", "\
          "ssh_public_key=#{ssh_public_key || 'nil'}, "\
          "created_timestamp=#{created_timestamp || 'nil'}, "\
          "last_modified_timestamp=#{last_modified_timestamp || 'nil'}>"
      end
    end

    # @!attribute project_id
    #   <p>The ID of the AWS CodeStar project from which you want to remove a team member.</p>
    #
    #   @return [String]
    #
    # @!attribute user_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM user or group whom you want to remove from
    #         the project.</p>
    #
    #   @return [String]
    #
    DisassociateTeamMemberInput = ::Struct.new(
      :project_id,
      :user_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateTeamMemberOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the GitHub repository to be created in AWS CodeStar. This is where the source code files provided with the
    #       project request will be uploaded after project creation.</p>
    #
    # @!attribute name
    #   <p>Name of the GitHub repository to be created in AWS CodeStar.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Description for the GitHub repository to be created in AWS CodeStar. This description displays in
    #         GitHub after the repository is created.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of GitHub repository to be created in AWS CodeStar. Valid values are User or Organization.</p>
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>The GitHub username for the owner of the GitHub repository to be created in AWS CodeStar. If this repository should
    #         be owned by a GitHub organization, provide its name.</p>
    #
    #   @return [String]
    #
    # @!attribute private_repository
    #   <p>Whether the GitHub repository is to be a private repository.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute issues_enabled
    #   <p>Whether to enable issues for the GitHub repository.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute token
    #   <p>The GitHub user's personal access token for the GitHub repository.</p>
    #
    #   @return [String]
    #
    GitHubCodeDestination = ::Struct.new(
      :name,
      :description,
      :type,
      :owner,
      :private_repository,
      :issues_enabled,
      :token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.private_repository ||= false
        self.issues_enabled ||= false
      end

      def to_s
        "#<struct AWS::SDK::CodeStar::Types::GitHubCodeDestination "\
          "name=#{name || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "type=#{type || 'nil'}, "\
          "owner=#{owner || 'nil'}, "\
          "private_repository=#{private_repository || 'nil'}, "\
          "issues_enabled=#{issues_enabled || 'nil'}, "\
          "token=\"[SENSITIVE]\">"
      end
    end

    # <p>The next token is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidNextTokenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The service role is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidServiceRoleException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A resource limit has been exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The continuation token to be used to return the next set of results, if the results
    #         cannot be returned in one response.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum amount of data that can be contained in a single set of results.</p>
    #
    #   @return [Integer]
    #
    ListProjectsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute projects
    #   <p>A list of projects.</p>
    #
    #   @return [Array<ProjectSummary>]
    #
    # @!attribute next_token
    #   <p>The continuation token to use when requesting the next set of results, if there are
    #         more results to be returned.</p>
    #
    #   @return [String]
    #
    ListProjectsOutput = ::Struct.new(
      :projects,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_id
    #   <p>The ID of the project.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The continuation token for the next set of results, if the results cannot be returned
    #         in one response.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum amount of data that can be contained in a single set of results.</p>
    #
    #   @return [Integer]
    #
    ListResourcesInput = ::Struct.new(
      :project_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resources
    #   <p>An array of resources associated with the project. </p>
    #
    #   @return [Array<Resource>]
    #
    # @!attribute next_token
    #   <p>The continuation token to use when requesting the next set of results, if there are
    #         more results to be returned.</p>
    #
    #   @return [String]
    #
    ListResourcesOutput = ::Struct.new(
      :resources,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the project to get tags for.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>Reserved for future use.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Reserved for future use.</p>
    #
    #   @return [Integer]
    #
    ListTagsForProjectInput = ::Struct.new(
      :id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>The tags for the project.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute next_token
    #   <p>Reserved for future use.</p>
    #
    #   @return [String]
    #
    ListTagsForProjectOutput = ::Struct.new(
      :tags,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_id
    #   <p>The ID of the project for which you want to list team members.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The continuation token for the next set of results, if the results cannot be returned
    #         in one response.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of team members you want returned in a response.</p>
    #
    #   @return [Integer]
    #
    ListTeamMembersInput = ::Struct.new(
      :project_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute team_members
    #   <p>A list of team member objects for the project.</p>
    #
    #   @return [Array<TeamMember>]
    #
    # @!attribute next_token
    #   <p>The continuation token to use when requesting the next set of results, if there are
    #         more results to be returned.</p>
    #
    #   @return [String]
    #
    ListTeamMembersOutput = ::Struct.new(
      :team_members,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The continuation token for the next set of results, if the results cannot be returned
    #         in one response.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a response.</p>
    #
    #   @return [Integer]
    #
    ListUserProfilesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_profiles
    #   <p>All the user profiles configured in AWS CodeStar for an AWS account.</p>
    #
    #   @return [Array<UserProfileSummary>]
    #
    # @!attribute next_token
    #   <p>The continuation token to use when requesting the next set of results, if there are
    #         more results to be returned.</p>
    #
    #   @return [String]
    #
    ListUserProfilesOutput = ::Struct.new(
      :user_profiles,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An AWS CodeStar project with the same ID already exists in this region for the AWS account.
    #       AWS CodeStar project IDs must be unique within a region for the AWS account.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ProjectAlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Project configuration information is required but not specified.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ProjectConfigurationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The project creation request was valid, but a nonspecific exception or error occurred
    #       during project creation. The project could not be created in AWS CodeStar.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ProjectCreationFailedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified AWS CodeStar project was not found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ProjectNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An indication of whether a project creation or deletion is failed or
    #       successful.</p>
    #
    # @!attribute state
    #   <p>The phase of completion for a project creation or deletion.</p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>In the case of a project creation or deletion failure, a reason for the
    #         failure.</p>
    #
    #   @return [String]
    #
    ProjectStatus = ::Struct.new(
      :state,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the metadata for a project.</p>
    #
    # @!attribute project_id
    #   <p>The ID of the project.</p>
    #
    #   @return [String]
    #
    # @!attribute project_arn
    #   <p>The Amazon Resource Name (ARN) of the project.</p>
    #
    #   @return [String]
    #
    ProjectSummary = ::Struct.new(
      :project_id,
      :project_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a resource for a project.</p>
    #
    # @!attribute id
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    Resource = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon S3 location where the source code files provided with the project
    #       request are stored.</p>
    #
    # @!attribute bucket_name
    #   <p>The Amazon S3 bucket name where the source code files provided with the project
    #         request are stored.</p>
    #
    #   @return [String]
    #
    # @!attribute bucket_key
    #   <p>The Amazon S3 object key where the source code files provided with the project
    #         request are stored.</p>
    #
    #   @return [String]
    #
    S3Location = ::Struct.new(
      :bucket_name,
      :bucket_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the project you want to add a tag to.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags you want to add to the project.</p>
    #
    #   @return [Hash<String, String>]
    #
    TagProjectInput = ::Struct.new(
      :id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>The tags for the project.</p>
    #
    #   @return [Hash<String, String>]
    #
    TagProjectOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a team member in a project.</p>
    #
    # @!attribute user_arn
    #   <p>The Amazon Resource Name (ARN) of the user in IAM.</p>
    #
    #   @return [String]
    #
    # @!attribute project_role
    #   <p>The role assigned to the user in the project. Project roles have different levels of
    #         access. For more information, see <a href="http://docs.aws.amazon.com/codestar/latest/userguide/working-with-teams.html">Working with
    #           Teams</a> in the <i>AWS CodeStar User Guide</i>. </p>
    #
    #   @return [String]
    #
    # @!attribute remote_access_allowed
    #   <p>Whether the user is allowed to remotely access project resources using an SSH
    #         public/private key pair.</p>
    #
    #   @return [Boolean]
    #
    TeamMember = ::Struct.new(
      :user_arn,
      :project_role,
      :remote_access_allowed,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The team member is already associated with a role in this project.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TeamMemberAlreadyAssociatedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified team member was not found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TeamMemberNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The toolchain template file provided with the project request. AWS CodeStar uses
    #       the template to provision the toolchain stack in AWS CloudFormation.</p>
    #
    # @!attribute source
    #   <p>The Amazon S3 location where the toolchain template file provided with the
    #         project request is stored. AWS CodeStar retrieves the file during project creation.</p>
    #
    #   @return [ToolchainSource]
    #
    # @!attribute role_arn
    #   <p>The service role ARN for AWS CodeStar to use for the toolchain template during stack
    #         provisioning.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_parameters
    #   <p>The list of parameter overrides to be passed into the toolchain template during stack
    #         provisioning, if any.</p>
    #
    #   @return [Hash<String, String>]
    #
    Toolchain = ::Struct.new(
      :source,
      :role_arn,
      :stack_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon S3 location where the toolchain template file provided with the
    #       project request is stored. AWS CodeStar retrieves the file during project creation.</p>
    #
    # @!attribute s3
    #   <p>The Amazon S3 bucket where the toolchain template file provided with the project
    #         request is stored.</p>
    #
    #   @return [S3Location]
    #
    ToolchainSource = ::Struct.new(
      :s3,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the project to remove tags from.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to remove from the project.</p>
    #
    #   @return [Array<String>]
    #
    UntagProjectInput = ::Struct.new(
      :id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagProjectOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the project you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the project you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the project, if any.</p>
    #
    #   @return [String]
    #
    UpdateProjectInput = ::Struct.new(
      :id,
      :name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CodeStar::Types::UpdateProjectInput "\
          "id=#{id || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "description=\"[SENSITIVE]\">"
      end
    end

    UpdateProjectOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_id
    #   <p>The ID of the project.</p>
    #
    #   @return [String]
    #
    # @!attribute user_arn
    #   <p>The Amazon Resource Name (ARN) of the user for whom you want to change team membership
    #         attributes.</p>
    #
    #   @return [String]
    #
    # @!attribute project_role
    #   <p>The role assigned to the user in the project. Project roles have different levels of
    #         access. For more information, see <a href="http://docs.aws.amazon.com/codestar/latest/userguide/working-with-teams.html">Working with
    #           Teams</a> in the <i>AWS CodeStar User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute remote_access_allowed
    #   <p>Whether a team member is allowed to remotely access project resources using the SSH
    #         public key associated with the user's profile. Even if this is set to True, the user must
    #         associate a public key with their profile before the user can access resources.</p>
    #
    #   @return [Boolean]
    #
    UpdateTeamMemberInput = ::Struct.new(
      :project_id,
      :user_arn,
      :project_role,
      :remote_access_allowed,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_arn
    #   <p>The Amazon Resource Name (ARN) of the user whose team membership attributes were
    #         updated.</p>
    #
    #   @return [String]
    #
    # @!attribute project_role
    #   <p>The project role granted to the user.</p>
    #
    #   @return [String]
    #
    # @!attribute remote_access_allowed
    #   <p>Whether a team member is allowed to remotely access project resources using the SSH
    #         public key associated with the user's profile.</p>
    #
    #   @return [Boolean]
    #
    UpdateTeamMemberOutput = ::Struct.new(
      :user_arn,
      :project_role,
      :remote_access_allowed,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_arn
    #   <p>The name that will be displayed as the friendly name for the user in AWS
    #         CodeStar.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The name that is displayed as the friendly name for the user in AWS CodeStar.</p>
    #
    #   @return [String]
    #
    # @!attribute email_address
    #   <p>The email address that is displayed as part of the user's profile in AWS
    #         CodeStar.</p>
    #
    #   @return [String]
    #
    # @!attribute ssh_public_key
    #   <p>The SSH public key associated with the user in AWS CodeStar. If a project owner allows the
    #         user remote access to project resources, this public key will be used along with the user's
    #         private key for SSH access.</p>
    #
    #   @return [String]
    #
    UpdateUserProfileInput = ::Struct.new(
      :user_arn,
      :display_name,
      :email_address,
      :ssh_public_key,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CodeStar::Types::UpdateUserProfileInput "\
          "user_arn=#{user_arn || 'nil'}, "\
          "display_name=\"[SENSITIVE]\", "\
          "email_address=\"[SENSITIVE]\", "\
          "ssh_public_key=#{ssh_public_key || 'nil'}>"
      end
    end

    # @!attribute user_arn
    #   <p>The Amazon Resource Name (ARN) of the user in IAM.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The name that is displayed as the friendly name for the user in AWS CodeStar.</p>
    #
    #   @return [String]
    #
    # @!attribute email_address
    #   <p>The email address that is displayed as part of the user's profile in AWS
    #         CodeStar.</p>
    #
    #   @return [String]
    #
    # @!attribute ssh_public_key
    #   <p>The SSH public key associated with the user in AWS CodeStar. This is the public portion of the
    #         public/private keypair the user can use to access project resources if a project owner allows
    #         the user remote access to those resources.</p>
    #
    #   @return [String]
    #
    # @!attribute created_timestamp
    #   <p>The date the user profile was created, in timestamp format.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_timestamp
    #   <p>The date the user profile was last modified, in timestamp format.</p>
    #
    #   @return [Time]
    #
    UpdateUserProfileOutput = ::Struct.new(
      :user_arn,
      :display_name,
      :email_address,
      :ssh_public_key,
      :created_timestamp,
      :last_modified_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CodeStar::Types::UpdateUserProfileOutput "\
          "user_arn=#{user_arn || 'nil'}, "\
          "display_name=\"[SENSITIVE]\", "\
          "email_address=\"[SENSITIVE]\", "\
          "ssh_public_key=#{ssh_public_key || 'nil'}, "\
          "created_timestamp=#{created_timestamp || 'nil'}, "\
          "last_modified_timestamp=#{last_modified_timestamp || 'nil'}>"
      end
    end

    # <p>A user profile with that name already exists in this region for the AWS account. AWS
    #       CodeStar user profile names must be unique within a region for the AWS account. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UserProfileAlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The user profile was not found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UserProfileNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a user's profile in AWS CodeStar.</p>
    #
    # @!attribute user_arn
    #   <p>The Amazon Resource Name (ARN) of the user in IAM.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The display name of a user in AWS CodeStar. For example, this could be set to both first and
    #         last name ("Mary Major") or a single name ("Mary"). The display name is also used to generate
    #         the initial icon associated with the user in AWS CodeStar projects. If spaces are included in the
    #         display name, the first character that appears after the space will be used as the second
    #         character in the user initial icon. The initial icon displays a maximum of two characters, so
    #         a display name with more than one space (for example "Mary Jane Major") would generate an
    #         initial icon using the first character and the first character after the space ("MJ", not
    #         "MM").</p>
    #
    #   @return [String]
    #
    # @!attribute email_address
    #   <p>The email address associated with the user.</p>
    #
    #   @return [String]
    #
    # @!attribute ssh_public_key
    #   <p>The SSH public key associated with the user in AWS CodeStar. If a project owner allows the
    #         user remote access to project resources, this public key will be used along with the user's
    #         private key for SSH access.</p>
    #
    #   @return [String]
    #
    UserProfileSummary = ::Struct.new(
      :user_arn,
      :display_name,
      :email_address,
      :ssh_public_key,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CodeStar::Types::UserProfileSummary "\
          "user_arn=#{user_arn || 'nil'}, "\
          "display_name=\"[SENSITIVE]\", "\
          "email_address=\"[SENSITIVE]\", "\
          "ssh_public_key=#{ssh_public_key || 'nil'}>"
      end
    end

    # <p>The specified input is either not valid, or it could not be validated.</p>
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
