# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Amplify
  module Types

    # <p> Represents the different branches of a repository for building, deploying, and
    #             hosting an Amplify app. </p>
    #
    # @!attribute app_id
    #   <p> The unique ID of the Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute app_arn
    #   <p> The Amazon Resource Name (ARN) of the Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p> The name for the Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p> The tag for the Amplify app. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute description
    #   <p> The description for the Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute repository
    #   <p> The Git repository for the Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p> The platform for the Amplify app. </p>
    #
    #   Enum, one of: ["WEB", "WEB_DYNAMIC"]
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p> Creates a date and time for the Amplify app. </p>
    #
    #   @return [Time]
    #
    # @!attribute update_time
    #   <p> Updates the date and time for the Amplify app. </p>
    #
    #   @return [Time]
    #
    # @!attribute iam_service_role_arn
    #   <p> The AWS Identity and Access Management (IAM) service role for the Amazon Resource
    #               Name (ARN) of the Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute environment_variables
    #   <p> The environment variables for the Amplify app. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute default_domain
    #   <p> The default domain for the Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute enable_branch_auto_build
    #   <p> Enables the auto-building of branches for the Amplify app. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_branch_auto_deletion
    #   <p> Automatically disconnect a branch in the Amplify Console when you delete a branch
    #               from your Git repository. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_basic_auth
    #   <p> Enables basic authorization for the Amplify app's branches. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute basic_auth_credentials
    #   <p> The basic authorization credentials for branches for the Amplify app. You must
    #               base64-encode the authorization credentials and provide them in the format
    #                   <code>user:password</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_rules
    #   <p> Describes the custom redirect and rewrite rules for the Amplify app. </p>
    #
    #   @return [Array<CustomRule>]
    #
    # @!attribute production_branch
    #   <p> Describes the information about a production branch of the Amplify app. </p>
    #
    #   @return [ProductionBranch]
    #
    # @!attribute build_spec
    #   <p> Describes the content of the build specification (build spec) for the Amplify app.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute custom_headers
    #   <p>Describes the custom HTTP headers for the Amplify app.</p>
    #
    #   @return [String]
    #
    # @!attribute enable_auto_branch_creation
    #   <p> Enables automated branch creation for the Amplify app. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute auto_branch_creation_patterns
    #   <p> Describes the automated branch creation glob patterns for the Amplify app. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute auto_branch_creation_config
    #   <p> Describes the automated branch creation configuration for the Amplify app. </p>
    #
    #   @return [AutoBranchCreationConfig]
    #
    # @!attribute repository_clone_method
    #   <note>
    #               <p>This is for internal use.</p>
    #           </note>
    #           <p>The Amplify service uses this parameter to specify the authentication protocol to use to access
    #               the Git repository for an Amplify app. Amplify specifies <code>TOKEN</code> for a GitHub
    #               repository, <code>SIGV4</code> for an Amazon Web Services CodeCommit repository, and
    #                   <code>SSH</code> for GitLab and Bitbucket repositories.</p>
    #
    #   Enum, one of: ["SSH", "TOKEN", "SIGV4"]
    #
    #   @return [String]
    #
    App = ::Struct.new(
      :app_id,
      :app_arn,
      :name,
      :tags,
      :description,
      :repository,
      :platform,
      :create_time,
      :update_time,
      :iam_service_role_arn,
      :environment_variables,
      :default_domain,
      :enable_branch_auto_build,
      :enable_branch_auto_deletion,
      :enable_basic_auth,
      :basic_auth_credentials,
      :custom_rules,
      :production_branch,
      :build_spec,
      :custom_headers,
      :enable_auto_branch_creation,
      :auto_branch_creation_patterns,
      :auto_branch_creation_config,
      :repository_clone_method,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Amplify::Types::App "\
          "app_id=#{app_id || 'nil'}, "\
          "app_arn=#{app_arn || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "tags=#{tags || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "repository=#{repository || 'nil'}, "\
          "platform=#{platform || 'nil'}, "\
          "create_time=#{create_time || 'nil'}, "\
          "update_time=#{update_time || 'nil'}, "\
          "iam_service_role_arn=#{iam_service_role_arn || 'nil'}, "\
          "environment_variables=#{environment_variables || 'nil'}, "\
          "default_domain=#{default_domain || 'nil'}, "\
          "enable_branch_auto_build=#{enable_branch_auto_build || 'nil'}, "\
          "enable_branch_auto_deletion=#{enable_branch_auto_deletion || 'nil'}, "\
          "enable_basic_auth=#{enable_basic_auth || 'nil'}, "\
          "basic_auth_credentials=\"[SENSITIVE]\", "\
          "custom_rules=#{custom_rules || 'nil'}, "\
          "production_branch=#{production_branch || 'nil'}, "\
          "build_spec=\"[SENSITIVE]\", "\
          "custom_headers=#{custom_headers || 'nil'}, "\
          "enable_auto_branch_creation=#{enable_auto_branch_creation || 'nil'}, "\
          "auto_branch_creation_patterns=#{auto_branch_creation_patterns || 'nil'}, "\
          "auto_branch_creation_config=#{auto_branch_creation_config || 'nil'}, "\
          "repository_clone_method=#{repository_clone_method || 'nil'}>"
      end
    end

    # <p> Describes an artifact. </p>
    #
    # @!attribute artifact_file_name
    #   <p> The file name for the artifact. </p>
    #
    #   @return [String]
    #
    # @!attribute artifact_id
    #   <p> The unique ID for the artifact. </p>
    #
    #   @return [String]
    #
    Artifact = ::Struct.new(
      :artifact_file_name,
      :artifact_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Describes the automated branch creation configuration. </p>
    #
    # @!attribute stage
    #   <p> Describes the current stage for the autocreated branch. </p>
    #
    #   Enum, one of: ["PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"]
    #
    #   @return [String]
    #
    # @!attribute framework
    #   <p> The framework for the autocreated branch. </p>
    #
    #   @return [String]
    #
    # @!attribute enable_auto_build
    #   <p> Enables auto building for the autocreated branch. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute environment_variables
    #   <p> The environment variables for the autocreated branch. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute basic_auth_credentials
    #   <p> The basic authorization credentials for the autocreated branch. You must
    #               base64-encode the authorization credentials and provide them in the format
    #                   <code>user:password</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute enable_basic_auth
    #   <p> Enables basic authorization for the autocreated branch. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_performance_mode
    #   <p>Enables performance mode for the branch.</p>
    #           <p>Performance mode optimizes for faster hosting performance by keeping content cached at
    #               the edge for a longer interval. When performance mode is enabled, hosting configuration
    #               or code changes can take up to 10 minutes to roll out. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute build_spec
    #   <p> The build specification (build spec) for the autocreated branch. </p>
    #
    #   @return [String]
    #
    # @!attribute enable_pull_request_preview
    #   <p> Enables pull request previews for the autocreated branch. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute pull_request_environment_name
    #   <p> The Amplify environment name for the pull request. </p>
    #
    #   @return [String]
    #
    AutoBranchCreationConfig = ::Struct.new(
      :stage,
      :framework,
      :enable_auto_build,
      :environment_variables,
      :basic_auth_credentials,
      :enable_basic_auth,
      :enable_performance_mode,
      :build_spec,
      :enable_pull_request_preview,
      :pull_request_environment_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Amplify::Types::AutoBranchCreationConfig "\
          "stage=#{stage || 'nil'}, "\
          "framework=#{framework || 'nil'}, "\
          "enable_auto_build=#{enable_auto_build || 'nil'}, "\
          "environment_variables=#{environment_variables || 'nil'}, "\
          "basic_auth_credentials=\"[SENSITIVE]\", "\
          "enable_basic_auth=#{enable_basic_auth || 'nil'}, "\
          "enable_performance_mode=#{enable_performance_mode || 'nil'}, "\
          "build_spec=\"[SENSITIVE]\", "\
          "enable_pull_request_preview=#{enable_pull_request_preview || 'nil'}, "\
          "pull_request_environment_name=#{pull_request_environment_name || 'nil'}>"
      end
    end

    # <p> Describes the backend environment for an Amplify app. </p>
    #
    # @!attribute backend_environment_arn
    #   <p> The Amazon Resource Name (ARN) for a backend environment that is part of an Amplify
    #               app. </p>
    #
    #   @return [String]
    #
    # @!attribute environment_name
    #   <p> The name for a backend environment that is part of an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute stack_name
    #   <p> The AWS CloudFormation stack name of a backend environment. </p>
    #
    #   @return [String]
    #
    # @!attribute deployment_artifacts
    #   <p> The name of deployment artifacts. </p>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p> The creation date and time for a backend environment that is part of an Amplify app.
    #           </p>
    #
    #   @return [Time]
    #
    # @!attribute update_time
    #   <p> The last updated date and time for a backend environment that is part of an Amplify
    #               app. </p>
    #
    #   @return [Time]
    #
    BackendEnvironment = ::Struct.new(
      :backend_environment_arn,
      :environment_name,
      :stack_name,
      :deployment_artifacts,
      :create_time,
      :update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> A request contains unexpected data. </p>
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

    # <p> The branch for an Amplify app, which maps to a third-party repository branch. </p>
    #
    # @!attribute branch_arn
    #   <p> The Amazon Resource Name (ARN) for a branch that is part of an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute branch_name
    #   <p> The name for the branch that is part of an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p> The description for the branch that is part of an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p> The tag for the branch of an Amplify app. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute stage
    #   <p> The current stage for the branch that is part of an Amplify app. </p>
    #
    #   Enum, one of: ["PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"]
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p> The display name for the branch. This is used as the default domain prefix. </p>
    #
    #   @return [String]
    #
    # @!attribute enable_notification
    #   <p> Enables notifications for a branch that is part of an Amplify app. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute create_time
    #   <p> The creation date and time for a branch that is part of an Amplify app. </p>
    #
    #   @return [Time]
    #
    # @!attribute update_time
    #   <p> The last updated date and time for a branch that is part of an Amplify app. </p>
    #
    #   @return [Time]
    #
    # @!attribute environment_variables
    #   <p> The environment variables specific to a branch of an Amplify app. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute enable_auto_build
    #   <p> Enables auto-building on push for a branch of an Amplify app. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute custom_domains
    #   <p> The custom domains for a branch of an Amplify app. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute framework
    #   <p> The framework for a branch of an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute active_job_id
    #   <p> The ID of the active job for a branch of an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute total_number_of_jobs
    #   <p> The total number of jobs that are part of an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute enable_basic_auth
    #   <p> Enables basic authorization for a branch of an Amplify app. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_performance_mode
    #   <p>Enables performance mode for the branch.</p>
    #           <p>Performance mode optimizes for faster hosting performance by keeping content cached at
    #               the edge for a longer interval. When performance mode is enabled, hosting configuration
    #               or code changes can take up to 10 minutes to roll out. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute thumbnail_url
    #   <p> The thumbnail URL for the branch of an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute basic_auth_credentials
    #   <p> The basic authorization credentials for a branch of an Amplify app. You must
    #               base64-encode the authorization credentials and provide them in the format
    #                   <code>user:password</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute build_spec
    #   <p> The build specification (build spec) content for the branch of an Amplify app.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute ttl
    #   <p> The content Time to Live (TTL) for the website in seconds. </p>
    #
    #   @return [String]
    #
    # @!attribute associated_resources
    #   <p> A list of custom resources that are linked to this branch. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute enable_pull_request_preview
    #   <p> Enables pull request previews for the branch. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute pull_request_environment_name
    #   <p> The Amplify environment name for the pull request. </p>
    #
    #   @return [String]
    #
    # @!attribute destination_branch
    #   <p> The destination branch if the branch is a pull request branch. </p>
    #
    #   @return [String]
    #
    # @!attribute source_branch
    #   <p> The source branch if the branch is a pull request branch. </p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_arn
    #   <p> The Amazon Resource Name (ARN) for a backend environment that is part of an Amplify
    #               app. </p>
    #
    #   @return [String]
    #
    Branch = ::Struct.new(
      :branch_arn,
      :branch_name,
      :description,
      :tags,
      :stage,
      :display_name,
      :enable_notification,
      :create_time,
      :update_time,
      :environment_variables,
      :enable_auto_build,
      :custom_domains,
      :framework,
      :active_job_id,
      :total_number_of_jobs,
      :enable_basic_auth,
      :enable_performance_mode,
      :thumbnail_url,
      :basic_auth_credentials,
      :build_spec,
      :ttl,
      :associated_resources,
      :enable_pull_request_preview,
      :pull_request_environment_name,
      :destination_branch,
      :source_branch,
      :backend_environment_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Amplify::Types::Branch "\
          "branch_arn=#{branch_arn || 'nil'}, "\
          "branch_name=#{branch_name || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "tags=#{tags || 'nil'}, "\
          "stage=#{stage || 'nil'}, "\
          "display_name=#{display_name || 'nil'}, "\
          "enable_notification=#{enable_notification || 'nil'}, "\
          "create_time=#{create_time || 'nil'}, "\
          "update_time=#{update_time || 'nil'}, "\
          "environment_variables=#{environment_variables || 'nil'}, "\
          "enable_auto_build=#{enable_auto_build || 'nil'}, "\
          "custom_domains=#{custom_domains || 'nil'}, "\
          "framework=#{framework || 'nil'}, "\
          "active_job_id=#{active_job_id || 'nil'}, "\
          "total_number_of_jobs=#{total_number_of_jobs || 'nil'}, "\
          "enable_basic_auth=#{enable_basic_auth || 'nil'}, "\
          "enable_performance_mode=#{enable_performance_mode || 'nil'}, "\
          "thumbnail_url=#{thumbnail_url || 'nil'}, "\
          "basic_auth_credentials=\"[SENSITIVE]\", "\
          "build_spec=\"[SENSITIVE]\", "\
          "ttl=#{ttl || 'nil'}, "\
          "associated_resources=#{associated_resources || 'nil'}, "\
          "enable_pull_request_preview=#{enable_pull_request_preview || 'nil'}, "\
          "pull_request_environment_name=#{pull_request_environment_name || 'nil'}, "\
          "destination_branch=#{destination_branch || 'nil'}, "\
          "source_branch=#{source_branch || 'nil'}, "\
          "backend_environment_arn=#{backend_environment_arn || 'nil'}>"
      end
    end

    # <p> The request structure used to create apps in Amplify. </p>
    #
    # @!attribute name
    #   <p> The name for an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p> The description for an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute repository
    #   <p> The repository for an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p> The platform or framework for an Amplify app. </p>
    #
    #   Enum, one of: ["WEB", "WEB_DYNAMIC"]
    #
    #   @return [String]
    #
    # @!attribute iam_service_role_arn
    #   <p> The AWS Identity and Access Management (IAM) service role for an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute oauth_token
    #   <p>The OAuth token for a third-party source control system for an Amplify app. The OAuth
    #               token is used to create a webhook and a read-only deploy key using SSH cloning. The
    #               OAuth token is not stored.</p>
    #           <p>Use <code>oauthToken</code> for repository providers other than GitHub, such as
    #               Bitbucket or CodeCommit. To authorize access to GitHub as your repository provider, use
    #                   <code>accessToken</code>.</p>
    #           <p>You must specify either <code>oauthToken</code> or <code>accessToken</code> when you
    #               create a new app.</p>
    #           <p>Existing Amplify apps deployed from a GitHub repository using OAuth continue to work
    #               with CI/CD. However, we strongly recommend that you migrate these apps to use the GitHub
    #               App. For more information, see <a href="https://docs.aws.amazon.com/amplify/latest/UserGuide/setting-up-GitHub-access.html migrating-to-github-app-auth">Migrating an existing OAuth app to the Amplify GitHub App</a> in the
    #                   <i>Amplify User Guide</i> .</p>
    #
    #   @return [String]
    #
    # @!attribute access_token
    #   <p>The personal access token for a GitHub repository for an Amplify app. The personal
    #               access token is used to authorize access to a GitHub repository using the Amplify GitHub
    #               App. The token is not stored.</p>
    #           <p>Use <code>accessToken</code> for GitHub repositories only. To authorize access to a
    #               repository provider such as Bitbucket or CodeCommit, use <code>oauthToken</code>.</p>
    #           <p>You must specify either <code>accessToken</code> or <code>oauthToken</code> when you
    #               create a new app.</p>
    #           <p>Existing Amplify apps deployed from a GitHub repository using OAuth continue to work
    #               with CI/CD. However, we strongly recommend that you migrate these apps to use the GitHub
    #               App. For more information, see <a href="https://docs.aws.amazon.com/amplify/latest/UserGuide/setting-up-GitHub-access.html migrating-to-github-app-auth">Migrating an existing OAuth app to the Amplify GitHub App</a> in the
    #                   <i>Amplify User Guide</i> .</p>
    #
    #   @return [String]
    #
    # @!attribute environment_variables
    #   <p> The environment variables map for an Amplify app. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute enable_branch_auto_build
    #   <p> Enables the auto building of branches for an Amplify app. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_branch_auto_deletion
    #   <p> Automatically disconnects a branch in the Amplify Console when you delete a branch
    #               from your Git repository. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_basic_auth
    #   <p> Enables basic authorization for an Amplify app. This will apply to all branches that
    #               are part of this app. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute basic_auth_credentials
    #   <p> The credentials for basic authorization for an Amplify app. You must base64-encode
    #               the authorization credentials and provide them in the format
    #               <code>user:password</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_rules
    #   <p> The custom rewrite and redirect rules for an Amplify app. </p>
    #
    #   @return [Array<CustomRule>]
    #
    # @!attribute tags
    #   <p> The tag for an Amplify app. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute build_spec
    #   <p> The build specification (build spec) for an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute custom_headers
    #   <p>The custom HTTP headers for an Amplify app.</p>
    #
    #   @return [String]
    #
    # @!attribute enable_auto_branch_creation
    #   <p> Enables automated branch creation for an Amplify app. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute auto_branch_creation_patterns
    #   <p> The automated branch creation glob patterns for an Amplify app. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute auto_branch_creation_config
    #   <p> The automated branch creation configuration for an Amplify app. </p>
    #
    #   @return [AutoBranchCreationConfig]
    #
    CreateAppInput = ::Struct.new(
      :name,
      :description,
      :repository,
      :platform,
      :iam_service_role_arn,
      :oauth_token,
      :access_token,
      :environment_variables,
      :enable_branch_auto_build,
      :enable_branch_auto_deletion,
      :enable_basic_auth,
      :basic_auth_credentials,
      :custom_rules,
      :tags,
      :build_spec,
      :custom_headers,
      :enable_auto_branch_creation,
      :auto_branch_creation_patterns,
      :auto_branch_creation_config,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Amplify::Types::CreateAppInput "\
          "name=#{name || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "repository=#{repository || 'nil'}, "\
          "platform=#{platform || 'nil'}, "\
          "iam_service_role_arn=#{iam_service_role_arn || 'nil'}, "\
          "oauth_token=\"[SENSITIVE]\", "\
          "access_token=\"[SENSITIVE]\", "\
          "environment_variables=#{environment_variables || 'nil'}, "\
          "enable_branch_auto_build=#{enable_branch_auto_build || 'nil'}, "\
          "enable_branch_auto_deletion=#{enable_branch_auto_deletion || 'nil'}, "\
          "enable_basic_auth=#{enable_basic_auth || 'nil'}, "\
          "basic_auth_credentials=\"[SENSITIVE]\", "\
          "custom_rules=#{custom_rules || 'nil'}, "\
          "tags=#{tags || 'nil'}, "\
          "build_spec=\"[SENSITIVE]\", "\
          "custom_headers=#{custom_headers || 'nil'}, "\
          "enable_auto_branch_creation=#{enable_auto_branch_creation || 'nil'}, "\
          "auto_branch_creation_patterns=#{auto_branch_creation_patterns || 'nil'}, "\
          "auto_branch_creation_config=#{auto_branch_creation_config || 'nil'}>"
      end
    end

    # @!attribute app
    #   <p> Represents the different branches of a repository for building, deploying, and
    #               hosting an Amplify app. </p>
    #
    #   @return [App]
    #
    CreateAppOutput = ::Struct.new(
      :app,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request structure for the backend environment create request. </p>
    #
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute environment_name
    #   <p> The name for the backend environment. </p>
    #
    #   @return [String]
    #
    # @!attribute stack_name
    #   <p> The AWS CloudFormation stack name of a backend environment. </p>
    #
    #   @return [String]
    #
    # @!attribute deployment_artifacts
    #   <p> The name of deployment artifacts. </p>
    #
    #   @return [String]
    #
    CreateBackendEnvironmentInput = ::Struct.new(
      :app_id,
      :environment_name,
      :stack_name,
      :deployment_artifacts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The result structure for the create backend environment request. </p>
    #
    # @!attribute backend_environment
    #   <p> Describes the backend environment for an Amplify app. </p>
    #
    #   @return [BackendEnvironment]
    #
    CreateBackendEnvironmentOutput = ::Struct.new(
      :backend_environment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request structure for the create branch request. </p>
    #
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute branch_name
    #   <p> The name for the branch. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p> The description for the branch. </p>
    #
    #   @return [String]
    #
    # @!attribute stage
    #   <p> Describes the current stage for the branch. </p>
    #
    #   Enum, one of: ["PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"]
    #
    #   @return [String]
    #
    # @!attribute framework
    #   <p> The framework for the branch. </p>
    #
    #   @return [String]
    #
    # @!attribute enable_notification
    #   <p> Enables notifications for the branch. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_auto_build
    #   <p> Enables auto building for the branch. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute environment_variables
    #   <p> The environment variables for the branch. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute basic_auth_credentials
    #   <p> The basic authorization credentials for the branch. You must base64-encode the
    #               authorization credentials and provide them in the format
    #               <code>user:password</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute enable_basic_auth
    #   <p> Enables basic authorization for the branch. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_performance_mode
    #   <p>Enables performance mode for the branch.</p>
    #           <p>Performance mode optimizes for faster hosting performance by keeping content cached at
    #               the edge for a longer interval. When performance mode is enabled, hosting configuration
    #               or code changes can take up to 10 minutes to roll out. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p> The tag for the branch. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute build_spec
    #   <p> The build specification (build spec) for the branch. </p>
    #
    #   @return [String]
    #
    # @!attribute ttl
    #   <p> The content Time To Live (TTL) for the website in seconds. </p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p> The display name for a branch. This is used as the default domain prefix. </p>
    #
    #   @return [String]
    #
    # @!attribute enable_pull_request_preview
    #   <p> Enables pull request previews for this branch. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute pull_request_environment_name
    #   <p> The Amplify environment name for the pull request. </p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_arn
    #   <p> The Amazon Resource Name (ARN) for a backend environment that is part of an Amplify
    #               app. </p>
    #
    #   @return [String]
    #
    CreateBranchInput = ::Struct.new(
      :app_id,
      :branch_name,
      :description,
      :stage,
      :framework,
      :enable_notification,
      :enable_auto_build,
      :environment_variables,
      :basic_auth_credentials,
      :enable_basic_auth,
      :enable_performance_mode,
      :tags,
      :build_spec,
      :ttl,
      :display_name,
      :enable_pull_request_preview,
      :pull_request_environment_name,
      :backend_environment_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Amplify::Types::CreateBranchInput "\
          "app_id=#{app_id || 'nil'}, "\
          "branch_name=#{branch_name || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "stage=#{stage || 'nil'}, "\
          "framework=#{framework || 'nil'}, "\
          "enable_notification=#{enable_notification || 'nil'}, "\
          "enable_auto_build=#{enable_auto_build || 'nil'}, "\
          "environment_variables=#{environment_variables || 'nil'}, "\
          "basic_auth_credentials=\"[SENSITIVE]\", "\
          "enable_basic_auth=#{enable_basic_auth || 'nil'}, "\
          "enable_performance_mode=#{enable_performance_mode || 'nil'}, "\
          "tags=#{tags || 'nil'}, "\
          "build_spec=\"[SENSITIVE]\", "\
          "ttl=#{ttl || 'nil'}, "\
          "display_name=#{display_name || 'nil'}, "\
          "enable_pull_request_preview=#{enable_pull_request_preview || 'nil'}, "\
          "pull_request_environment_name=#{pull_request_environment_name || 'nil'}, "\
          "backend_environment_arn=#{backend_environment_arn || 'nil'}>"
      end
    end

    # <p> The result structure for create branch request. </p>
    #
    # @!attribute branch
    #   <p> Describes the branch for an Amplify app, which maps to a third-party repository
    #               branch. </p>
    #
    #   @return [Branch]
    #
    CreateBranchOutput = ::Struct.new(
      :branch,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request structure for the create a new deployment request. </p>
    #
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute branch_name
    #   <p> The name for the branch, for the job. </p>
    #
    #   @return [String]
    #
    # @!attribute file_map
    #   <p> An optional file map that contains the file name as the key and the file content md5
    #               hash as the value. If this argument is provided, the service will generate a unique
    #               upload URL per file. Otherwise, the service will only generate a single upload URL for
    #               the zipped files. </p>
    #
    #   @return [Hash<String, String>]
    #
    CreateDeploymentInput = ::Struct.new(
      :app_id,
      :branch_name,
      :file_map,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The result structure for the create a new deployment request. </p>
    #
    # @!attribute job_id
    #   <p> The job ID for this deployment. will supply to start deployment api. </p>
    #
    #   @return [String]
    #
    # @!attribute file_upload_urls
    #   <p> When the <code>fileMap</code> argument is provided in the request,
    #                   <code>fileUploadUrls</code> will contain a map of file names to upload URLs. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute zip_upload_url
    #   <p> When the <code>fileMap</code> argument is not provided in the request, this
    #                   <code>zipUploadUrl</code> is returned. </p>
    #
    #   @return [String]
    #
    CreateDeploymentOutput = ::Struct.new(
      :job_id,
      :file_upload_urls,
      :zip_upload_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request structure for the create domain association request. </p>
    #
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p> The domain name for the domain association. </p>
    #
    #   @return [String]
    #
    # @!attribute enable_auto_sub_domain
    #   <p> Enables the automated creation of subdomains for branches. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute sub_domain_settings
    #   <p> The setting for the subdomain. </p>
    #
    #   @return [Array<SubDomainSetting>]
    #
    # @!attribute auto_sub_domain_creation_patterns
    #   <p> Sets the branch patterns for automatic subdomain creation. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute auto_sub_domain_iam_role
    #   <p> The required AWS Identity and Access Management (IAM) service role for the Amazon
    #               Resource Name (ARN) for automatically creating subdomains. </p>
    #
    #   @return [String]
    #
    CreateDomainAssociationInput = ::Struct.new(
      :app_id,
      :domain_name,
      :enable_auto_sub_domain,
      :sub_domain_settings,
      :auto_sub_domain_creation_patterns,
      :auto_sub_domain_iam_role,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The result structure for the create domain association request. </p>
    #
    # @!attribute domain_association
    #   <p> Describes the structure of a domain association, which associates a custom domain
    #               with an Amplify app. </p>
    #
    #   @return [DomainAssociation]
    #
    CreateDomainAssociationOutput = ::Struct.new(
      :domain_association,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request structure for the create webhook request. </p>
    #
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute branch_name
    #   <p> The name for a branch that is part of an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p> The description for a webhook. </p>
    #
    #   @return [String]
    #
    CreateWebhookInput = ::Struct.new(
      :app_id,
      :branch_name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The result structure for the create webhook request. </p>
    #
    # @!attribute webhook
    #   <p> Describes a webhook that connects repository events to an Amplify app. </p>
    #
    #   @return [Webhook]
    #
    CreateWebhookOutput = ::Struct.new(
      :webhook,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Describes a custom rewrite or redirect rule. </p>
    #
    # @!attribute source
    #   <p> The source pattern for a URL rewrite or redirect rule. </p>
    #
    #   @return [String]
    #
    # @!attribute target
    #   <p> The target pattern for a URL rewrite or redirect rule. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p> The status code for a URL rewrite or redirect rule. </p>
    #
    #           <dl>
    #               <dt>200</dt>
    #               <dd>
    #                       <p>Represents a 200 rewrite rule.</p>
    #                   </dd>
    #               <dt>301</dt>
    #               <dd>
    #                       <p>Represents a 301 (moved pemanently) redirect rule. This and all future
    #                           requests should be directed to the target URL. </p>
    #                   </dd>
    #               <dt>302</dt>
    #               <dd>
    #                       <p>Represents a 302 temporary redirect rule.</p>
    #                   </dd>
    #               <dt>404</dt>
    #               <dd>
    #                       <p>Represents a 404 redirect rule.</p>
    #                   </dd>
    #               <dt>404-200</dt>
    #               <dd>
    #                       <p>Represents a 404 rewrite rule.</p>
    #                   </dd>
    #            </dl>
    #
    #   @return [String]
    #
    # @!attribute condition
    #   <p> The condition for a URL rewrite or redirect rule, such as a country code. </p>
    #
    #   @return [String]
    #
    CustomRule = ::Struct.new(
      :source,
      :target,
      :status,
      :condition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Describes the request structure for the delete app request. </p>
    #
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    #   @return [String]
    #
    DeleteAppInput = ::Struct.new(
      :app_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The result structure for the delete app request. </p>
    #
    # @!attribute app
    #   <p> Represents the different branches of a repository for building, deploying, and
    #               hosting an Amplify app. </p>
    #
    #   @return [App]
    #
    DeleteAppOutput = ::Struct.new(
      :app,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request structure for the delete backend environment request. </p>
    #
    # @!attribute app_id
    #   <p> The unique ID of an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute environment_name
    #   <p> The name of a backend environment of an Amplify app. </p>
    #
    #   @return [String]
    #
    DeleteBackendEnvironmentInput = ::Struct.new(
      :app_id,
      :environment_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The result structure of the delete backend environment result. </p>
    #
    # @!attribute backend_environment
    #   <p> Describes the backend environment for an Amplify app. </p>
    #
    #   @return [BackendEnvironment]
    #
    DeleteBackendEnvironmentOutput = ::Struct.new(
      :backend_environment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request structure for the delete branch request. </p>
    #
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute branch_name
    #   <p> The name for the branch. </p>
    #
    #   @return [String]
    #
    DeleteBranchInput = ::Struct.new(
      :app_id,
      :branch_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The result structure for the delete branch request. </p>
    #
    # @!attribute branch
    #   <p> The branch for an Amplify app, which maps to a third-party repository branch. </p>
    #
    #   @return [Branch]
    #
    DeleteBranchOutput = ::Struct.new(
      :branch,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request structure for the delete domain association request. </p>
    #
    # @!attribute app_id
    #   <p> The unique id for an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p> The name of the domain. </p>
    #
    #   @return [String]
    #
    DeleteDomainAssociationInput = ::Struct.new(
      :app_id,
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_association
    #   <p> Describes a domain association that associates a custom domain with an Amplify app.
    #           </p>
    #
    #   @return [DomainAssociation]
    #
    DeleteDomainAssociationOutput = ::Struct.new(
      :domain_association,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request structure for the delete job request. </p>
    #
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute branch_name
    #   <p> The name for the branch, for the job. </p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p> The unique ID for the job. </p>
    #
    #   @return [String]
    #
    DeleteJobInput = ::Struct.new(
      :app_id,
      :branch_name,
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The result structure for the delete job request. </p>
    #
    # @!attribute job_summary
    #   <p> Describes the summary for an execution job for an Amplify app. </p>
    #
    #   @return [JobSummary]
    #
    DeleteJobOutput = ::Struct.new(
      :job_summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request structure for the delete webhook request. </p>
    #
    # @!attribute webhook_id
    #   <p> The unique ID for a webhook. </p>
    #
    #   @return [String]
    #
    DeleteWebhookInput = ::Struct.new(
      :webhook_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The result structure for the delete webhook request. </p>
    #
    # @!attribute webhook
    #   <p> Describes a webhook that connects repository events to an Amplify app. </p>
    #
    #   @return [Webhook]
    #
    DeleteWebhookOutput = ::Struct.new(
      :webhook,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> An operation failed because a dependent service threw an exception. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DependentServiceFailureException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Describes a domain association that associates a custom domain with an Amplify app.
    #         </p>
    #
    # @!attribute domain_association_arn
    #   <p> The Amazon Resource Name (ARN) for the domain association. </p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p> The name of the domain. </p>
    #
    #   @return [String]
    #
    # @!attribute enable_auto_sub_domain
    #   <p> Enables the automated creation of subdomains for branches. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute auto_sub_domain_creation_patterns
    #   <p> Sets branch patterns for automatic subdomain creation. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute auto_sub_domain_iam_role
    #   <p> The required AWS Identity and Access Management (IAM) service role for the Amazon
    #               Resource Name (ARN) for automatically creating subdomains. </p>
    #
    #   @return [String]
    #
    # @!attribute domain_status
    #   <p> The current status of the domain association. </p>
    #
    #   Enum, one of: ["PENDING_VERIFICATION", "IN_PROGRESS", "AVAILABLE", "PENDING_DEPLOYMENT", "FAILED", "CREATING", "REQUESTING_CERTIFICATE", "UPDATING"]
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p> The reason for the current status of the domain association. </p>
    #
    #   @return [String]
    #
    # @!attribute certificate_verification_dns_record
    #   <p> The DNS record for certificate verification. </p>
    #
    #   @return [String]
    #
    # @!attribute sub_domains
    #   <p> The subdomains for the domain association. </p>
    #
    #   @return [Array<SubDomain>]
    #
    DomainAssociation = ::Struct.new(
      :domain_association_arn,
      :domain_name,
      :enable_auto_sub_domain,
      :auto_sub_domain_creation_patterns,
      :auto_sub_domain_iam_role,
      :domain_status,
      :status_reason,
      :certificate_verification_dns_record,
      :sub_domains,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DomainStatus
    #
    module DomainStatus
      # No documentation available.
      #
      PENDING_VERIFICATION = "PENDING_VERIFICATION"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"

      # No documentation available.
      #
      PENDING_DEPLOYMENT = "PENDING_DEPLOYMENT"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      REQUESTING_CERTIFICATE = "REQUESTING_CERTIFICATE"

      # No documentation available.
      #
      UPDATING = "UPDATING"
    end

    # <p> The request structure for the generate access logs request. </p>
    #
    # @!attribute start_time
    #   <p> The time at which the logs should start. The time range specified is inclusive of the
    #               start time. </p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p> The time at which the logs should end. The time range specified is inclusive of the
    #               end time. </p>
    #
    #   @return [Time]
    #
    # @!attribute domain_name
    #   <p> The name of the domain. </p>
    #
    #   @return [String]
    #
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    #   @return [String]
    #
    GenerateAccessLogsInput = ::Struct.new(
      :start_time,
      :end_time,
      :domain_name,
      :app_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The result structure for the generate access logs request. </p>
    #
    # @!attribute log_url
    #   <p> The pre-signed URL for the requested access logs. </p>
    #
    #   @return [String]
    #
    GenerateAccessLogsOutput = ::Struct.new(
      :log_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request structure for the get app request. </p>
    #
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    #   @return [String]
    #
    GetAppInput = ::Struct.new(
      :app_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute app
    #   <p> Represents the different branches of a repository for building, deploying, and
    #               hosting an Amplify app. </p>
    #
    #   @return [App]
    #
    GetAppOutput = ::Struct.new(
      :app,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Returns the request structure for the get artifact request. </p>
    #
    # @!attribute artifact_id
    #   <p> The unique ID for an artifact. </p>
    #
    #   @return [String]
    #
    GetArtifactUrlInput = ::Struct.new(
      :artifact_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Returns the result structure for the get artifact request. </p>
    #
    # @!attribute artifact_id
    #   <p> The unique ID for an artifact. </p>
    #
    #   @return [String]
    #
    # @!attribute artifact_url
    #   <p> The presigned URL for the artifact. </p>
    #
    #   @return [String]
    #
    GetArtifactUrlOutput = ::Struct.new(
      :artifact_id,
      :artifact_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request structure for the get backend environment request. </p>
    #
    # @!attribute app_id
    #   <p> The unique id for an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute environment_name
    #   <p> The name for the backend environment. </p>
    #
    #   @return [String]
    #
    GetBackendEnvironmentInput = ::Struct.new(
      :app_id,
      :environment_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The result structure for the get backend environment result. </p>
    #
    # @!attribute backend_environment
    #   <p> Describes the backend environment for an Amplify app. </p>
    #
    #   @return [BackendEnvironment]
    #
    GetBackendEnvironmentOutput = ::Struct.new(
      :backend_environment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request structure for the get branch request. </p>
    #
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute branch_name
    #   <p> The name for the branch. </p>
    #
    #   @return [String]
    #
    GetBranchInput = ::Struct.new(
      :app_id,
      :branch_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute branch
    #   <p> The branch for an Amplify app, which maps to a third-party repository branch. </p>
    #
    #   @return [Branch]
    #
    GetBranchOutput = ::Struct.new(
      :branch,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request structure for the get domain association request. </p>
    #
    # @!attribute app_id
    #   <p> The unique id for an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p> The name of the domain. </p>
    #
    #   @return [String]
    #
    GetDomainAssociationInput = ::Struct.new(
      :app_id,
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The result structure for the get domain association request. </p>
    #
    # @!attribute domain_association
    #   <p> Describes the structure of a domain association, which associates a custom domain
    #               with an Amplify app. </p>
    #
    #   @return [DomainAssociation]
    #
    GetDomainAssociationOutput = ::Struct.new(
      :domain_association,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request structure for the get job request. </p>
    #
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute branch_name
    #   <p> The branch name for the job. </p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p> The unique ID for the job. </p>
    #
    #   @return [String]
    #
    GetJobInput = ::Struct.new(
      :app_id,
      :branch_name,
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job
    #   <p> Describes an execution job for an Amplify app. </p>
    #
    #   @return [Job]
    #
    GetJobOutput = ::Struct.new(
      :job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request structure for the get webhook request. </p>
    #
    # @!attribute webhook_id
    #   <p> The unique ID for a webhook. </p>
    #
    #   @return [String]
    #
    GetWebhookInput = ::Struct.new(
      :webhook_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The result structure for the get webhook request. </p>
    #
    # @!attribute webhook
    #   <p> Describes the structure of a webhook. </p>
    #
    #   @return [Webhook]
    #
    GetWebhookOutput = ::Struct.new(
      :webhook,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The service failed to perform an operation due to an internal issue. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalFailureException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Describes an execution job for an Amplify app. </p>
    #
    # @!attribute summary
    #   <p> Describes the summary for an execution job for an Amplify app. </p>
    #
    #   @return [JobSummary]
    #
    # @!attribute steps
    #   <p> The execution steps for an execution job, for an Amplify app. </p>
    #
    #   @return [Array<Step>]
    #
    Job = ::Struct.new(
      :summary,
      :steps,
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
      PROVISIONING = "PROVISIONING"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      SUCCEED = "SUCCEED"

      # No documentation available.
      #
      CANCELLING = "CANCELLING"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"
    end

    # <p> Describes the summary for an execution job for an Amplify app. </p>
    #
    # @!attribute job_arn
    #   <p> The Amazon Resource Name (ARN) for the job. </p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p> The unique ID for the job. </p>
    #
    #   @return [String]
    #
    # @!attribute commit_id
    #   <p> The commit ID from a third-party repository provider for the job. </p>
    #
    #   @return [String]
    #
    # @!attribute commit_message
    #   <p> The commit message from a third-party repository provider for the job. </p>
    #
    #   @return [String]
    #
    # @!attribute commit_time
    #   <p> The commit date and time for the job. </p>
    #
    #   @return [Time]
    #
    # @!attribute start_time
    #   <p> The start date and time for the job. </p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p> The current status for the job. </p>
    #
    #   Enum, one of: ["PENDING", "PROVISIONING", "RUNNING", "FAILED", "SUCCEED", "CANCELLING", "CANCELLED"]
    #
    #   @return [String]
    #
    # @!attribute end_time
    #   <p> The end date and time for the job. </p>
    #
    #   @return [Time]
    #
    # @!attribute job_type
    #   <p> The type for the job. If the value is <code>RELEASE</code>, the job was manually
    #               released from its source by using the <code>StartJob</code> API. If the value is
    #                   <code>RETRY</code>, the job was manually retried using the <code>StartJob</code>
    #               API. If the value is <code>WEB_HOOK</code>, the job was automatically triggered by
    #               webhooks. </p>
    #
    #   Enum, one of: ["RELEASE", "RETRY", "MANUAL", "WEB_HOOK"]
    #
    #   @return [String]
    #
    JobSummary = ::Struct.new(
      :job_arn,
      :job_id,
      :commit_id,
      :commit_message,
      :commit_time,
      :start_time,
      :status,
      :end_time,
      :job_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for JobType
    #
    module JobType
      # No documentation available.
      #
      RELEASE = "RELEASE"

      # No documentation available.
      #
      RETRY = "RETRY"

      # No documentation available.
      #
      MANUAL = "MANUAL"

      # No documentation available.
      #
      WEB_HOOK = "WEB_HOOK"
    end

    # <p> A resource could not be created because service quotas were exceeded. </p>
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

    # <p> The request structure for the list apps request. </p>
    #
    # @!attribute next_token
    #   <p> A pagination token. If non-null, the pagination token is returned in a result. Pass
    #               its value in another request to retrieve more entries. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p> The maximum number of records to list in a single response. </p>
    #
    #   @return [Integer]
    #
    ListAppsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # <p> The result structure for an Amplify app list request. </p>
    #
    # @!attribute apps
    #   <p> A list of Amplify apps. </p>
    #
    #   @return [Array<App>]
    #
    # @!attribute next_token
    #   <p> A pagination token. Set to null to start listing apps from start. If non-null, the
    #               pagination token is returned in a result. Pass its value in here to list more projects.
    #           </p>
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

    # <p> Describes the request structure for the list artifacts request. </p>
    #
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute branch_name
    #   <p> The name of a branch that is part of an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p> The unique ID for a job. </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p> A pagination token. Set to null to start listing artifacts from start. If a non-null
    #               pagination token is returned in a result, pass its value in here to list more artifacts.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p> The maximum number of records to list in a single response. </p>
    #
    #   @return [Integer]
    #
    ListArtifactsInput = ::Struct.new(
      :app_id,
      :branch_name,
      :job_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # <p> The result structure for the list artifacts request. </p>
    #
    # @!attribute artifacts
    #   <p> A list of artifacts. </p>
    #
    #   @return [Array<Artifact>]
    #
    # @!attribute next_token
    #   <p> A pagination token. If a non-null pagination token is returned in a result, pass its
    #               value in another request to retrieve more entries. </p>
    #
    #   @return [String]
    #
    ListArtifactsOutput = ::Struct.new(
      :artifacts,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request structure for the list backend environments request. </p>
    #
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute environment_name
    #   <p> The name of the backend environment </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p> A pagination token. Set to null to start listing backend environments from the start.
    #               If a non-null pagination token is returned in a result, pass its value in here to list
    #               more backend environments. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p> The maximum number of records to list in a single response. </p>
    #
    #   @return [Integer]
    #
    ListBackendEnvironmentsInput = ::Struct.new(
      :app_id,
      :environment_name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # <p> The result structure for the list backend environments result. </p>
    #
    # @!attribute backend_environments
    #   <p> The list of backend environments for an Amplify app. </p>
    #
    #   @return [Array<BackendEnvironment>]
    #
    # @!attribute next_token
    #   <p> A pagination token. If a non-null pagination token is returned in a result, pass its
    #               value in another request to retrieve more entries. </p>
    #
    #   @return [String]
    #
    ListBackendEnvironmentsOutput = ::Struct.new(
      :backend_environments,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request structure for the list branches request. </p>
    #
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p> A pagination token. Set to null to start listing branches from the start. If a
    #               non-null pagination token is returned in a result, pass its value in here to list more
    #               branches. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p> The maximum number of records to list in a single response. </p>
    #
    #   @return [Integer]
    #
    ListBranchesInput = ::Struct.new(
      :app_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # <p> The result structure for the list branches request. </p>
    #
    # @!attribute branches
    #   <p> A list of branches for an Amplify app. </p>
    #
    #   @return [Array<Branch>]
    #
    # @!attribute next_token
    #   <p> A pagination token. If a non-null pagination token is returned in a result, pass its
    #               value in another request to retrieve more entries. </p>
    #
    #   @return [String]
    #
    ListBranchesOutput = ::Struct.new(
      :branches,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request structure for the list domain associations request. </p>
    #
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p> A pagination token. Set to null to start listing apps from the start. If non-null, a
    #               pagination token is returned in a result. Pass its value in here to list more projects.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p> The maximum number of records to list in a single response. </p>
    #
    #   @return [Integer]
    #
    ListDomainAssociationsInput = ::Struct.new(
      :app_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # <p> The result structure for the list domain association request. </p>
    #
    # @!attribute domain_associations
    #   <p> A list of domain associations. </p>
    #
    #   @return [Array<DomainAssociation>]
    #
    # @!attribute next_token
    #   <p> A pagination token. If non-null, a pagination token is returned in a result. Pass its
    #               value in another request to retrieve more entries. </p>
    #
    #   @return [String]
    #
    ListDomainAssociationsOutput = ::Struct.new(
      :domain_associations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request structure for the list jobs request. </p>
    #
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute branch_name
    #   <p> The name for a branch. </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p> A pagination token. Set to null to start listing steps from the start. If a non-null
    #               pagination token is returned in a result, pass its value in here to list more steps.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p> The maximum number of records to list in a single response. </p>
    #
    #   @return [Integer]
    #
    ListJobsInput = ::Struct.new(
      :app_id,
      :branch_name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # <p> The maximum number of records to list in a single response. </p>
    #
    # @!attribute job_summaries
    #   <p> The result structure for the list job result request. </p>
    #
    #   @return [Array<JobSummary>]
    #
    # @!attribute next_token
    #   <p> A pagination token. If non-null the pagination token is returned in a result. Pass
    #               its value in another request to retrieve more entries. </p>
    #
    #   @return [String]
    #
    ListJobsOutput = ::Struct.new(
      :job_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request structure to use to list tags for a resource. </p>
    #
    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) to use to list tags. </p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The response for the list tags for resource request. </p>
    #
    # @!attribute tags
    #   <p> A list of tags for the specified The Amazon Resource Name (ARN). </p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request structure for the list webhooks request. </p>
    #
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p> A pagination token. Set to null to start listing webhooks from the start. If
    #               non-null,the pagination token is returned in a result. Pass its value in here to list
    #               more webhooks. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p> The maximum number of records to list in a single response. </p>
    #
    #   @return [Integer]
    #
    ListWebhooksInput = ::Struct.new(
      :app_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # <p> The result structure for the list webhooks request. </p>
    #
    # @!attribute webhooks
    #   <p> A list of webhooks. </p>
    #
    #   @return [Array<Webhook>]
    #
    # @!attribute next_token
    #   <p> A pagination token. If non-null, the pagination token is returned in a result. Pass
    #               its value in another request to retrieve more entries. </p>
    #
    #   @return [String]
    #
    ListWebhooksOutput = ::Struct.new(
      :webhooks,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> An entity was not found during an operation. </p>
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

    # Includes enum constants for Platform
    #
    module Platform
      # No documentation available.
      #
      WEB = "WEB"

      # No documentation available.
      #
      WEB_DYNAMIC = "WEB_DYNAMIC"
    end

    # <p> Describes the information about a production branch for an Amplify app. </p>
    #
    # @!attribute last_deploy_time
    #   <p> The last deploy time of the production branch. </p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p> The status of the production branch. </p>
    #
    #   @return [String]
    #
    # @!attribute thumbnail_url
    #   <p> The thumbnail URL for the production branch. </p>
    #
    #   @return [String]
    #
    # @!attribute branch_name
    #   <p> The branch name for the production branch. </p>
    #
    #   @return [String]
    #
    ProductionBranch = ::Struct.new(
      :last_deploy_time,
      :status,
      :thumbnail_url,
      :branch_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RepositoryCloneMethod
    #
    module RepositoryCloneMethod
      # No documentation available.
      #
      SSH = "SSH"

      # No documentation available.
      #
      TOKEN = "TOKEN"

      # No documentation available.
      #
      SIGV4 = "SIGV4"
    end

    # <p> An operation failed due to a non-existent resource. </p>
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Stage
    #
    module Stage
      # No documentation available.
      #
      PRODUCTION = "PRODUCTION"

      # No documentation available.
      #
      BETA = "BETA"

      # No documentation available.
      #
      DEVELOPMENT = "DEVELOPMENT"

      # No documentation available.
      #
      EXPERIMENTAL = "EXPERIMENTAL"

      # No documentation available.
      #
      PULL_REQUEST = "PULL_REQUEST"
    end

    # <p> The request structure for the start a deployment request. </p>
    #
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute branch_name
    #   <p> The name for the branch, for the job. </p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p> The job ID for this deployment, generated by the create deployment request. </p>
    #
    #   @return [String]
    #
    # @!attribute source_url
    #   <p> The source URL for this deployment, used when calling start deployment without create
    #               deployment. The source URL can be any HTTP GET URL that is publicly accessible and
    #               downloads a single .zip file. </p>
    #
    #   @return [String]
    #
    StartDeploymentInput = ::Struct.new(
      :app_id,
      :branch_name,
      :job_id,
      :source_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The result structure for the start a deployment request. </p>
    #
    # @!attribute job_summary
    #   <p> The summary for the job. </p>
    #
    #   @return [JobSummary]
    #
    StartDeploymentOutput = ::Struct.new(
      :job_summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request structure for the start job request. </p>
    #
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute branch_name
    #   <p> The branch name for the job. </p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p> The unique ID for an existing job. This is required if the value of
    #                   <code>jobType</code> is <code>RETRY</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute job_type
    #   <p> Describes the type for the job. The job type <code>RELEASE</code> starts a new job
    #               with the latest change from the specified branch. This value is available only for apps
    #               that are connected to a repository. The job type <code>RETRY</code> retries an existing
    #               job. If the job type value is <code>RETRY</code>, the <code>jobId</code> is also
    #               required. </p>
    #
    #   Enum, one of: ["RELEASE", "RETRY", "MANUAL", "WEB_HOOK"]
    #
    #   @return [String]
    #
    # @!attribute job_reason
    #   <p> A descriptive reason for starting this job. </p>
    #
    #   @return [String]
    #
    # @!attribute commit_id
    #   <p> The commit ID from a third-party repository provider for the job. </p>
    #
    #   @return [String]
    #
    # @!attribute commit_message
    #   <p> The commit message from a third-party repository provider for the job. </p>
    #
    #   @return [String]
    #
    # @!attribute commit_time
    #   <p> The commit date and time for the job. </p>
    #
    #   @return [Time]
    #
    StartJobInput = ::Struct.new(
      :app_id,
      :branch_name,
      :job_id,
      :job_type,
      :job_reason,
      :commit_id,
      :commit_message,
      :commit_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The result structure for the run job request. </p>
    #
    # @!attribute job_summary
    #   <p> The summary for the job. </p>
    #
    #   @return [JobSummary]
    #
    StartJobOutput = ::Struct.new(
      :job_summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Describes an execution step, for an execution job, for an Amplify app. </p>
    #
    # @!attribute step_name
    #   <p> The name of the execution step. </p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p> The start date and time of the execution step. </p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p> The status of the execution step. </p>
    #
    #   Enum, one of: ["PENDING", "PROVISIONING", "RUNNING", "FAILED", "SUCCEED", "CANCELLING", "CANCELLED"]
    #
    #   @return [String]
    #
    # @!attribute end_time
    #   <p> The end date and time of the execution step. </p>
    #
    #   @return [Time]
    #
    # @!attribute log_url
    #   <p> The URL to the logs for the execution step. </p>
    #
    #   @return [String]
    #
    # @!attribute artifacts_url
    #   <p> The URL to the artifact for the execution step. </p>
    #
    #   @return [String]
    #
    # @!attribute test_artifacts_url
    #   <p> The URL to the test artifact for the execution step. </p>
    #
    #   @return [String]
    #
    # @!attribute test_config_url
    #   <p> The URL to the test configuration for the execution step. </p>
    #
    #   @return [String]
    #
    # @!attribute screenshots
    #   <p> The list of screenshot URLs for the execution step, if relevant. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute status_reason
    #   <p> The reason for the current step status. </p>
    #
    #   @return [String]
    #
    # @!attribute context
    #   <p> The context for the current step. Includes a build image if the step is build.
    #           </p>
    #
    #   @return [String]
    #
    Step = ::Struct.new(
      :step_name,
      :start_time,
      :status,
      :end_time,
      :log_url,
      :artifacts_url,
      :test_artifacts_url,
      :test_config_url,
      :screenshots,
      :status_reason,
      :context,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request structure for the stop job request. </p>
    #
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute branch_name
    #   <p> The name for the branch, for the job. </p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p> The unique id for the job. </p>
    #
    #   @return [String]
    #
    StopJobInput = ::Struct.new(
      :app_id,
      :branch_name,
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The result structure for the stop job request. </p>
    #
    # @!attribute job_summary
    #   <p> The summary for the job. </p>
    #
    #   @return [JobSummary]
    #
    StopJobOutput = ::Struct.new(
      :job_summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The subdomain for the domain association. </p>
    #
    # @!attribute sub_domain_setting
    #   <p> Describes the settings for the subdomain. </p>
    #
    #   @return [SubDomainSetting]
    #
    # @!attribute verified
    #   <p> The verified status of the subdomain </p>
    #
    #   @return [Boolean]
    #
    # @!attribute dns_record
    #   <p> The DNS record for the subdomain. </p>
    #
    #   @return [String]
    #
    SubDomain = ::Struct.new(
      :sub_domain_setting,
      :verified,
      :dns_record,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Describes the settings for the subdomain. </p>
    #
    # @!attribute prefix
    #   <p> The prefix setting for the subdomain. </p>
    #
    #   @return [String]
    #
    # @!attribute branch_name
    #   <p> The branch name setting for the subdomain. </p>
    #
    #   @return [String]
    #
    SubDomainSetting = ::Struct.new(
      :prefix,
      :branch_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request structure to tag a resource with a tag key and value. </p>
    #
    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) to use to tag a resource. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p> The tags used to tag the resource. </p>
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

    # <p> The response for the tag resource request. </p>
    #
    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> An operation failed due to a lack of access. </p>
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

    # <p> The request structure for the untag resource request. </p>
    #
    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) to use to untag a resource. </p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p> The tag keys to use to untag a resource. </p>
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

    # <p> The response for the untag resource request. </p>
    #
    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request structure for the update app request. </p>
    #
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p> The name for an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p> The description for an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute platform
    #   <p> The platform for an Amplify app. </p>
    #
    #   Enum, one of: ["WEB", "WEB_DYNAMIC"]
    #
    #   @return [String]
    #
    # @!attribute iam_service_role_arn
    #   <p> The AWS Identity and Access Management (IAM) service role for an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute environment_variables
    #   <p> The environment variables for an Amplify app. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute enable_branch_auto_build
    #   <p> Enables branch auto-building for an Amplify app. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_branch_auto_deletion
    #   <p> Automatically disconnects a branch in the Amplify Console when you delete a branch
    #               from your Git repository. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_basic_auth
    #   <p> Enables basic authorization for an Amplify app. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute basic_auth_credentials
    #   <p> The basic authorization credentials for an Amplify app. You must base64-encode the
    #               authorization credentials and provide them in the format
    #               <code>user:password</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_rules
    #   <p> The custom redirect and rewrite rules for an Amplify app. </p>
    #
    #   @return [Array<CustomRule>]
    #
    # @!attribute build_spec
    #   <p> The build specification (build spec) for an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute custom_headers
    #   <p>The custom HTTP headers for an Amplify app.</p>
    #
    #   @return [String]
    #
    # @!attribute enable_auto_branch_creation
    #   <p> Enables automated branch creation for an Amplify app. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute auto_branch_creation_patterns
    #   <p> Describes the automated branch creation glob patterns for an Amplify app. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute auto_branch_creation_config
    #   <p> The automated branch creation configuration for an Amplify app. </p>
    #
    #   @return [AutoBranchCreationConfig]
    #
    # @!attribute repository
    #   <p> The name of the repository for an Amplify app </p>
    #
    #   @return [String]
    #
    # @!attribute oauth_token
    #   <p>The OAuth token for a third-party source control system for an Amplify app. The OAuth
    #               token is used to create a webhook and a read-only deploy key using SSH cloning. The
    #               OAuth token is not stored.</p>
    #           <p>Use <code>oauthToken</code> for repository providers other than GitHub, such as
    #               Bitbucket or CodeCommit.</p>
    #           <p>To authorize access to GitHub as your repository provider, use
    #                   <code>accessToken</code>.</p>
    #           <p>You must specify either <code>oauthToken</code> or <code>accessToken</code> when you
    #               update an app.</p>
    #           <p>Existing Amplify apps deployed from a GitHub repository using OAuth continue to work
    #               with CI/CD. However, we strongly recommend that you migrate these apps to use the GitHub
    #               App. For more information, see <a href="https://docs.aws.amazon.com/amplify/latest/UserGuide/setting-up-GitHub-access.html migrating-to-github-app-auth">Migrating an existing OAuth app to the Amplify GitHub App</a> in the
    #                   <i>Amplify User Guide</i> .</p>
    #
    #   @return [String]
    #
    # @!attribute access_token
    #   <p>The personal access token for a GitHub repository for an Amplify app. The personal
    #               access token is used to authorize access to a GitHub repository using the Amplify GitHub
    #               App. The token is not stored.</p>
    #           <p>Use <code>accessToken</code> for GitHub repositories only. To authorize access to a
    #               repository provider such as Bitbucket or CodeCommit, use <code>oauthToken</code>.</p>
    #           <p>You must specify either <code>accessToken</code> or <code>oauthToken</code> when you
    #               update an app.</p>
    #           <p>Existing Amplify apps deployed from a GitHub repository using OAuth continue to work
    #               with CI/CD. However, we strongly recommend that you migrate these apps to use the GitHub
    #               App. For more information, see <a href="https://docs.aws.amazon.com/amplify/latest/UserGuide/setting-up-GitHub-access.html migrating-to-github-app-auth">Migrating an existing OAuth app to the Amplify GitHub App</a> in the
    #                   <i>Amplify User Guide</i> .</p>
    #
    #   @return [String]
    #
    UpdateAppInput = ::Struct.new(
      :app_id,
      :name,
      :description,
      :platform,
      :iam_service_role_arn,
      :environment_variables,
      :enable_branch_auto_build,
      :enable_branch_auto_deletion,
      :enable_basic_auth,
      :basic_auth_credentials,
      :custom_rules,
      :build_spec,
      :custom_headers,
      :enable_auto_branch_creation,
      :auto_branch_creation_patterns,
      :auto_branch_creation_config,
      :repository,
      :oauth_token,
      :access_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Amplify::Types::UpdateAppInput "\
          "app_id=#{app_id || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "platform=#{platform || 'nil'}, "\
          "iam_service_role_arn=#{iam_service_role_arn || 'nil'}, "\
          "environment_variables=#{environment_variables || 'nil'}, "\
          "enable_branch_auto_build=#{enable_branch_auto_build || 'nil'}, "\
          "enable_branch_auto_deletion=#{enable_branch_auto_deletion || 'nil'}, "\
          "enable_basic_auth=#{enable_basic_auth || 'nil'}, "\
          "basic_auth_credentials=\"[SENSITIVE]\", "\
          "custom_rules=#{custom_rules || 'nil'}, "\
          "build_spec=\"[SENSITIVE]\", "\
          "custom_headers=#{custom_headers || 'nil'}, "\
          "enable_auto_branch_creation=#{enable_auto_branch_creation || 'nil'}, "\
          "auto_branch_creation_patterns=#{auto_branch_creation_patterns || 'nil'}, "\
          "auto_branch_creation_config=#{auto_branch_creation_config || 'nil'}, "\
          "repository=#{repository || 'nil'}, "\
          "oauth_token=\"[SENSITIVE]\", "\
          "access_token=\"[SENSITIVE]\">"
      end
    end

    # <p> The result structure for an Amplify app update request. </p>
    #
    # @!attribute app
    #   <p> Represents the updated Amplify app. </p>
    #
    #   @return [App]
    #
    UpdateAppOutput = ::Struct.new(
      :app,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request structure for the update branch request. </p>
    #
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute branch_name
    #   <p> The name for the branch. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p> The description for the branch. </p>
    #
    #   @return [String]
    #
    # @!attribute framework
    #   <p> The framework for the branch. </p>
    #
    #   @return [String]
    #
    # @!attribute stage
    #   <p> Describes the current stage for the branch. </p>
    #
    #   Enum, one of: ["PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"]
    #
    #   @return [String]
    #
    # @!attribute enable_notification
    #   <p> Enables notifications for the branch. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_auto_build
    #   <p> Enables auto building for the branch. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute environment_variables
    #   <p> The environment variables for the branch. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute basic_auth_credentials
    #   <p> The basic authorization credentials for the branch. You must base64-encode the
    #               authorization credentials and provide them in the format
    #               <code>user:password</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute enable_basic_auth
    #   <p> Enables basic authorization for the branch. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_performance_mode
    #   <p>Enables performance mode for the branch.</p>
    #           <p>Performance mode optimizes for faster hosting performance by keeping content cached at
    #               the edge for a longer interval. When performance mode is enabled, hosting configuration
    #               or code changes can take up to 10 minutes to roll out. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute build_spec
    #   <p> The build specification (build spec) for the branch. </p>
    #
    #   @return [String]
    #
    # @!attribute ttl
    #   <p> The content Time to Live (TTL) for the website in seconds. </p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p> The display name for a branch. This is used as the default domain prefix. </p>
    #
    #   @return [String]
    #
    # @!attribute enable_pull_request_preview
    #   <p> Enables pull request previews for this branch. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute pull_request_environment_name
    #   <p> The Amplify environment name for the pull request. </p>
    #
    #   @return [String]
    #
    # @!attribute backend_environment_arn
    #   <p> The Amazon Resource Name (ARN) for a backend environment that is part of an Amplify
    #               app. </p>
    #
    #   @return [String]
    #
    UpdateBranchInput = ::Struct.new(
      :app_id,
      :branch_name,
      :description,
      :framework,
      :stage,
      :enable_notification,
      :enable_auto_build,
      :environment_variables,
      :basic_auth_credentials,
      :enable_basic_auth,
      :enable_performance_mode,
      :build_spec,
      :ttl,
      :display_name,
      :enable_pull_request_preview,
      :pull_request_environment_name,
      :backend_environment_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Amplify::Types::UpdateBranchInput "\
          "app_id=#{app_id || 'nil'}, "\
          "branch_name=#{branch_name || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "framework=#{framework || 'nil'}, "\
          "stage=#{stage || 'nil'}, "\
          "enable_notification=#{enable_notification || 'nil'}, "\
          "enable_auto_build=#{enable_auto_build || 'nil'}, "\
          "environment_variables=#{environment_variables || 'nil'}, "\
          "basic_auth_credentials=\"[SENSITIVE]\", "\
          "enable_basic_auth=#{enable_basic_auth || 'nil'}, "\
          "enable_performance_mode=#{enable_performance_mode || 'nil'}, "\
          "build_spec=\"[SENSITIVE]\", "\
          "ttl=#{ttl || 'nil'}, "\
          "display_name=#{display_name || 'nil'}, "\
          "enable_pull_request_preview=#{enable_pull_request_preview || 'nil'}, "\
          "pull_request_environment_name=#{pull_request_environment_name || 'nil'}, "\
          "backend_environment_arn=#{backend_environment_arn || 'nil'}>"
      end
    end

    # <p> The result structure for the update branch request. </p>
    #
    # @!attribute branch
    #   <p> The branch for an Amplify app, which maps to a third-party repository branch. </p>
    #
    #   @return [Branch]
    #
    UpdateBranchOutput = ::Struct.new(
      :branch,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request structure for the update domain association request. </p>
    #
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p> The name of the domain. </p>
    #
    #   @return [String]
    #
    # @!attribute enable_auto_sub_domain
    #   <p> Enables the automated creation of subdomains for branches. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute sub_domain_settings
    #   <p> Describes the settings for the subdomain. </p>
    #
    #   @return [Array<SubDomainSetting>]
    #
    # @!attribute auto_sub_domain_creation_patterns
    #   <p> Sets the branch patterns for automatic subdomain creation. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute auto_sub_domain_iam_role
    #   <p> The required AWS Identity and Access Management (IAM) service role for the Amazon
    #               Resource Name (ARN) for automatically creating subdomains. </p>
    #
    #   @return [String]
    #
    UpdateDomainAssociationInput = ::Struct.new(
      :app_id,
      :domain_name,
      :enable_auto_sub_domain,
      :sub_domain_settings,
      :auto_sub_domain_creation_patterns,
      :auto_sub_domain_iam_role,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The result structure for the update domain association request. </p>
    #
    # @!attribute domain_association
    #   <p> Describes a domain association, which associates a custom domain with an Amplify app.
    #           </p>
    #
    #   @return [DomainAssociation]
    #
    UpdateDomainAssociationOutput = ::Struct.new(
      :domain_association,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request structure for the update webhook request. </p>
    #
    # @!attribute webhook_id
    #   <p> The unique ID for a webhook. </p>
    #
    #   @return [String]
    #
    # @!attribute branch_name
    #   <p> The name for a branch that is part of an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p> The description for a webhook. </p>
    #
    #   @return [String]
    #
    UpdateWebhookInput = ::Struct.new(
      :webhook_id,
      :branch_name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The result structure for the update webhook request. </p>
    #
    # @!attribute webhook
    #   <p> Describes a webhook that connects repository events to an Amplify app. </p>
    #
    #   @return [Webhook]
    #
    UpdateWebhookOutput = ::Struct.new(
      :webhook,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Describes a webhook that connects repository events to an Amplify app. </p>
    #
    # @!attribute webhook_arn
    #   <p> The Amazon Resource Name (ARN) for the webhook. </p>
    #
    #   @return [String]
    #
    # @!attribute webhook_id
    #   <p> The ID of the webhook. </p>
    #
    #   @return [String]
    #
    # @!attribute webhook_url
    #   <p> The URL of the webhook. </p>
    #
    #   @return [String]
    #
    # @!attribute branch_name
    #   <p> The name for a branch that is part of an Amplify app. </p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p> The description for a webhook. </p>
    #
    #   @return [String]
    #
    # @!attribute create_time
    #   <p> The create date and time for a webhook. </p>
    #
    #   @return [Time]
    #
    # @!attribute update_time
    #   <p> Updates the date and time for a webhook. </p>
    #
    #   @return [Time]
    #
    Webhook = ::Struct.new(
      :webhook_arn,
      :webhook_id,
      :webhook_url,
      :branch_name,
      :description,
      :create_time,
      :update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
