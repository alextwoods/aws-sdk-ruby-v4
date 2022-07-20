# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Amplify
  # An API client for Amplify
  # See {#initialize} for a full list of supported configuration options
  # <p>Amplify enables developers to develop and deploy cloud-powered mobile and web apps.
  #             The Amplify Console provides a continuous delivery and hosting service for web
  #             applications. For more information, see the <a href="https://docs.aws.amazon.com/amplify/latest/userguide/welcome.html">Amplify Console User Guide</a>. The
  #             Amplify Framework is a comprehensive set of SDKs, libraries, tools, and documentation
  #             for client app development. For more information, see the <a href="https://docs.amplify.aws/">Amplify Framework.</a>
  #          </p>
  #
  class Client
    include Hearth::ClientStubs

    @middleware = Hearth::MiddlewareBuilder.new

    def self.middleware
      @middleware
    end

    # @param [Config] config
    #   An instance of {Config}
    #
    def initialize(config = AWS::SDK::Amplify::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p> Creates a new Amplify app. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateAppInput}.
    #
    # @option params [String] :name
    #   <p> The name for an Amplify app. </p>
    #
    # @option params [String] :description
    #   <p> The description for an Amplify app. </p>
    #
    # @option params [String] :repository
    #   <p> The repository for an Amplify app. </p>
    #
    # @option params [String] :platform
    #   <p> The platform or framework for an Amplify app. </p>
    #
    # @option params [String] :iam_service_role_arn
    #   <p> The AWS Identity and Access Management (IAM) service role for an Amplify app. </p>
    #
    # @option params [String] :oauth_token
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
    #               App. For more information, see <a href="https://docs.aws.amazon.com/amplify/latest/UserGuide/setting-up-GitHub-access.html#migrating-to-github-app-auth">Migrating an existing OAuth app to the Amplify GitHub App</a> in the
    #                   <i>Amplify User Guide</i> .</p>
    #
    # @option params [String] :access_token
    #   <p>The personal access token for a GitHub repository for an Amplify app. The personal
    #               access token is used to authorize access to a GitHub repository using the Amplify GitHub
    #               App. The token is not stored.</p>
    #           <p>Use <code>accessToken</code> for GitHub repositories only. To authorize access to a
    #               repository provider such as Bitbucket or CodeCommit, use <code>oauthToken</code>.</p>
    #           <p>You must specify either <code>accessToken</code> or <code>oauthToken</code> when you
    #               create a new app.</p>
    #           <p>Existing Amplify apps deployed from a GitHub repository using OAuth continue to work
    #               with CI/CD. However, we strongly recommend that you migrate these apps to use the GitHub
    #               App. For more information, see <a href="https://docs.aws.amazon.com/amplify/latest/UserGuide/setting-up-GitHub-access.html#migrating-to-github-app-auth">Migrating an existing OAuth app to the Amplify GitHub App</a> in the
    #                   <i>Amplify User Guide</i> .</p>
    #
    # @option params [Hash<String, String>] :environment_variables
    #   <p> The environment variables map for an Amplify app. </p>
    #
    # @option params [Boolean] :enable_branch_auto_build
    #   <p> Enables the auto building of branches for an Amplify app. </p>
    #
    # @option params [Boolean] :enable_branch_auto_deletion
    #   <p> Automatically disconnects a branch in the Amplify Console when you delete a branch
    #               from your Git repository. </p>
    #
    # @option params [Boolean] :enable_basic_auth
    #   <p> Enables basic authorization for an Amplify app. This will apply to all branches that
    #               are part of this app. </p>
    #
    # @option params [String] :basic_auth_credentials
    #   <p> The credentials for basic authorization for an Amplify app. You must base64-encode
    #               the authorization credentials and provide them in the format
    #               <code>user:password</code>.</p>
    #
    # @option params [Array<CustomRule>] :custom_rules
    #   <p> The custom rewrite and redirect rules for an Amplify app. </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p> The tag for an Amplify app. </p>
    #
    # @option params [String] :build_spec
    #   <p> The build specification (build spec) for an Amplify app. </p>
    #
    # @option params [String] :custom_headers
    #   <p>The custom HTTP headers for an Amplify app.</p>
    #
    # @option params [Boolean] :enable_auto_branch_creation
    #   <p> Enables automated branch creation for an Amplify app. </p>
    #
    # @option params [Array<String>] :auto_branch_creation_patterns
    #   <p> The automated branch creation glob patterns for an Amplify app. </p>
    #
    # @option params [AutoBranchCreationConfig] :auto_branch_creation_config
    #   <p> The automated branch creation configuration for an Amplify app. </p>
    #
    # @return [Types::CreateAppOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app(
    #     name: 'name', # required
    #     description: 'description',
    #     repository: 'repository',
    #     platform: 'WEB', # accepts ["WEB", "WEB_DYNAMIC"]
    #     iam_service_role_arn: 'iamServiceRoleArn',
    #     oauth_token: 'oauthToken',
    #     access_token: 'accessToken',
    #     environment_variables: {
    #       'key' => 'value'
    #     },
    #     enable_branch_auto_build: false,
    #     enable_branch_auto_deletion: false,
    #     enable_basic_auth: false,
    #     basic_auth_credentials: 'basicAuthCredentials',
    #     custom_rules: [
    #       {
    #         source: 'source', # required
    #         target: 'target', # required
    #         status: 'status',
    #         condition: 'condition'
    #       }
    #     ],
    #     tags: {
    #       'key' => 'value'
    #     },
    #     build_spec: 'buildSpec',
    #     custom_headers: 'customHeaders',
    #     enable_auto_branch_creation: false,
    #     auto_branch_creation_patterns: [
    #       'member'
    #     ],
    #     auto_branch_creation_config: {
    #       stage: 'PRODUCTION', # accepts ["PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"]
    #       framework: 'framework',
    #       enable_auto_build: false,
    #       basic_auth_credentials: 'basicAuthCredentials',
    #       enable_basic_auth: false,
    #       enable_performance_mode: false,
    #       build_spec: 'buildSpec',
    #       enable_pull_request_preview: false,
    #       pull_request_environment_name: 'pullRequestEnvironmentName'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAppOutput
    #   resp.data.app #=> Types::App
    #   resp.data.app.app_id #=> String
    #   resp.data.app.app_arn #=> String
    #   resp.data.app.name #=> String
    #   resp.data.app.tags #=> Hash<String, String>
    #   resp.data.app.tags['key'] #=> String
    #   resp.data.app.description #=> String
    #   resp.data.app.repository #=> String
    #   resp.data.app.platform #=> String, one of ["WEB", "WEB_DYNAMIC"]
    #   resp.data.app.create_time #=> Time
    #   resp.data.app.update_time #=> Time
    #   resp.data.app.iam_service_role_arn #=> String
    #   resp.data.app.environment_variables #=> Hash<String, String>
    #   resp.data.app.environment_variables['key'] #=> String
    #   resp.data.app.default_domain #=> String
    #   resp.data.app.enable_branch_auto_build #=> Boolean
    #   resp.data.app.enable_branch_auto_deletion #=> Boolean
    #   resp.data.app.enable_basic_auth #=> Boolean
    #   resp.data.app.basic_auth_credentials #=> String
    #   resp.data.app.custom_rules #=> Array<CustomRule>
    #   resp.data.app.custom_rules[0] #=> Types::CustomRule
    #   resp.data.app.custom_rules[0].source #=> String
    #   resp.data.app.custom_rules[0].target #=> String
    #   resp.data.app.custom_rules[0].status #=> String
    #   resp.data.app.custom_rules[0].condition #=> String
    #   resp.data.app.production_branch #=> Types::ProductionBranch
    #   resp.data.app.production_branch.last_deploy_time #=> Time
    #   resp.data.app.production_branch.status #=> String
    #   resp.data.app.production_branch.thumbnail_url #=> String
    #   resp.data.app.production_branch.branch_name #=> String
    #   resp.data.app.build_spec #=> String
    #   resp.data.app.custom_headers #=> String
    #   resp.data.app.enable_auto_branch_creation #=> Boolean
    #   resp.data.app.auto_branch_creation_patterns #=> Array<String>
    #   resp.data.app.auto_branch_creation_patterns[0] #=> String
    #   resp.data.app.auto_branch_creation_config #=> Types::AutoBranchCreationConfig
    #   resp.data.app.auto_branch_creation_config.stage #=> String, one of ["PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"]
    #   resp.data.app.auto_branch_creation_config.framework #=> String
    #   resp.data.app.auto_branch_creation_config.enable_auto_build #=> Boolean
    #   resp.data.app.auto_branch_creation_config.environment_variables #=> Hash<String, String>
    #   resp.data.app.auto_branch_creation_config.basic_auth_credentials #=> String
    #   resp.data.app.auto_branch_creation_config.enable_basic_auth #=> Boolean
    #   resp.data.app.auto_branch_creation_config.enable_performance_mode #=> Boolean
    #   resp.data.app.auto_branch_creation_config.build_spec #=> String
    #   resp.data.app.auto_branch_creation_config.enable_pull_request_preview #=> Boolean
    #   resp.data.app.auto_branch_creation_config.pull_request_environment_name #=> String
    #   resp.data.app.repository_clone_method #=> String, one of ["SSH", "TOKEN", "SIGV4"]
    #
    def create_app(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAppInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAppInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateApp
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::InternalFailureException, Errors::BadRequestException, Errors::LimitExceededException, Errors::DependentServiceFailureException]),
        data_parser: Parsers::CreateApp
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateApp,
        stubs: @stubs,
        params_class: Params::CreateAppOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_app
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Creates a new backend environment for an Amplify app. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateBackendEnvironmentInput}.
    #
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    # @option params [String] :environment_name
    #   <p> The name for the backend environment. </p>
    #
    # @option params [String] :stack_name
    #   <p> The AWS CloudFormation stack name of a backend environment. </p>
    #
    # @option params [String] :deployment_artifacts
    #   <p> The name of deployment artifacts. </p>
    #
    # @return [Types::CreateBackendEnvironmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_backend_environment(
    #     app_id: 'appId', # required
    #     environment_name: 'environmentName', # required
    #     stack_name: 'stackName',
    #     deployment_artifacts: 'deploymentArtifacts'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBackendEnvironmentOutput
    #   resp.data.backend_environment #=> Types::BackendEnvironment
    #   resp.data.backend_environment.backend_environment_arn #=> String
    #   resp.data.backend_environment.environment_name #=> String
    #   resp.data.backend_environment.stack_name #=> String
    #   resp.data.backend_environment.deployment_artifacts #=> String
    #   resp.data.backend_environment.create_time #=> Time
    #   resp.data.backend_environment.update_time #=> Time
    #
    def create_backend_environment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBackendEnvironmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBackendEnvironmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBackendEnvironment
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateBackendEnvironment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBackendEnvironment,
        stubs: @stubs,
        params_class: Params::CreateBackendEnvironmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_backend_environment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Creates a new branch for an Amplify app. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateBranchInput}.
    #
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    # @option params [String] :branch_name
    #   <p> The name for the branch. </p>
    #
    # @option params [String] :description
    #   <p> The description for the branch. </p>
    #
    # @option params [String] :stage
    #   <p> Describes the current stage for the branch. </p>
    #
    # @option params [String] :framework
    #   <p> The framework for the branch. </p>
    #
    # @option params [Boolean] :enable_notification
    #   <p> Enables notifications for the branch. </p>
    #
    # @option params [Boolean] :enable_auto_build
    #   <p> Enables auto building for the branch. </p>
    #
    # @option params [Hash<String, String>] :environment_variables
    #   <p> The environment variables for the branch. </p>
    #
    # @option params [String] :basic_auth_credentials
    #   <p> The basic authorization credentials for the branch. You must base64-encode the
    #               authorization credentials and provide them in the format
    #               <code>user:password</code>.</p>
    #
    # @option params [Boolean] :enable_basic_auth
    #   <p> Enables basic authorization for the branch. </p>
    #
    # @option params [Boolean] :enable_performance_mode
    #   <p>Enables performance mode for the branch.</p>
    #           <p>Performance mode optimizes for faster hosting performance by keeping content cached at
    #               the edge for a longer interval. When performance mode is enabled, hosting configuration
    #               or code changes can take up to 10 minutes to roll out. </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p> The tag for the branch. </p>
    #
    # @option params [String] :build_spec
    #   <p> The build specification (build spec) for the branch. </p>
    #
    # @option params [String] :ttl
    #   <p> The content Time To Live (TTL) for the website in seconds. </p>
    #
    # @option params [String] :display_name
    #   <p> The display name for a branch. This is used as the default domain prefix. </p>
    #
    # @option params [Boolean] :enable_pull_request_preview
    #   <p> Enables pull request previews for this branch. </p>
    #
    # @option params [String] :pull_request_environment_name
    #   <p> The Amplify environment name for the pull request. </p>
    #
    # @option params [String] :backend_environment_arn
    #   <p> The Amazon Resource Name (ARN) for a backend environment that is part of an Amplify
    #               app. </p>
    #
    # @return [Types::CreateBranchOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_branch(
    #     app_id: 'appId', # required
    #     branch_name: 'branchName', # required
    #     description: 'description',
    #     stage: 'PRODUCTION', # accepts ["PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"]
    #     framework: 'framework',
    #     enable_notification: false,
    #     enable_auto_build: false,
    #     environment_variables: {
    #       'key' => 'value'
    #     },
    #     basic_auth_credentials: 'basicAuthCredentials',
    #     enable_basic_auth: false,
    #     enable_performance_mode: false,
    #     tags: {
    #       'key' => 'value'
    #     },
    #     build_spec: 'buildSpec',
    #     ttl: 'ttl',
    #     display_name: 'displayName',
    #     enable_pull_request_preview: false,
    #     pull_request_environment_name: 'pullRequestEnvironmentName',
    #     backend_environment_arn: 'backendEnvironmentArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBranchOutput
    #   resp.data.branch #=> Types::Branch
    #   resp.data.branch.branch_arn #=> String
    #   resp.data.branch.branch_name #=> String
    #   resp.data.branch.description #=> String
    #   resp.data.branch.tags #=> Hash<String, String>
    #   resp.data.branch.tags['key'] #=> String
    #   resp.data.branch.stage #=> String, one of ["PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"]
    #   resp.data.branch.display_name #=> String
    #   resp.data.branch.enable_notification #=> Boolean
    #   resp.data.branch.create_time #=> Time
    #   resp.data.branch.update_time #=> Time
    #   resp.data.branch.environment_variables #=> Hash<String, String>
    #   resp.data.branch.environment_variables['key'] #=> String
    #   resp.data.branch.enable_auto_build #=> Boolean
    #   resp.data.branch.custom_domains #=> Array<String>
    #   resp.data.branch.custom_domains[0] #=> String
    #   resp.data.branch.framework #=> String
    #   resp.data.branch.active_job_id #=> String
    #   resp.data.branch.total_number_of_jobs #=> String
    #   resp.data.branch.enable_basic_auth #=> Boolean
    #   resp.data.branch.enable_performance_mode #=> Boolean
    #   resp.data.branch.thumbnail_url #=> String
    #   resp.data.branch.basic_auth_credentials #=> String
    #   resp.data.branch.build_spec #=> String
    #   resp.data.branch.ttl #=> String
    #   resp.data.branch.associated_resources #=> Array<String>
    #   resp.data.branch.associated_resources[0] #=> String
    #   resp.data.branch.enable_pull_request_preview #=> Boolean
    #   resp.data.branch.pull_request_environment_name #=> String
    #   resp.data.branch.destination_branch #=> String
    #   resp.data.branch.source_branch #=> String
    #   resp.data.branch.backend_environment_arn #=> String
    #
    def create_branch(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBranchInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBranchInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBranch
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::LimitExceededException, Errors::DependentServiceFailureException]),
        data_parser: Parsers::CreateBranch
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBranch,
        stubs: @stubs,
        params_class: Params::CreateBranchOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_branch
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Creates a deployment for a manually deployed Amplify app. Manually deployed apps are
    #             not connected to a repository. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateDeploymentInput}.
    #
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    # @option params [String] :branch_name
    #   <p> The name for the branch, for the job. </p>
    #
    # @option params [Hash<String, String>] :file_map
    #   <p> An optional file map that contains the file name as the key and the file content md5
    #               hash as the value. If this argument is provided, the service will generate a unique
    #               upload URL per file. Otherwise, the service will only generate a single upload URL for
    #               the zipped files. </p>
    #
    # @return [Types::CreateDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_deployment(
    #     app_id: 'appId', # required
    #     branch_name: 'branchName', # required
    #     file_map: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDeploymentOutput
    #   resp.data.job_id #=> String
    #   resp.data.file_upload_urls #=> Hash<String, String>
    #   resp.data.file_upload_urls['key'] #=> String
    #   resp.data.zip_upload_url #=> String
    #
    def create_deployment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDeploymentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDeploymentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDeployment
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::InternalFailureException, Errors::BadRequestException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateDeployment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDeployment,
        stubs: @stubs,
        params_class: Params::CreateDeploymentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_deployment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Creates a new domain association for an Amplify app. This action associates a custom
    #             domain with the Amplify app </p>
    #
    # @param [Hash] params
    #   See {Types::CreateDomainAssociationInput}.
    #
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    # @option params [String] :domain_name
    #   <p> The domain name for the domain association. </p>
    #
    # @option params [Boolean] :enable_auto_sub_domain
    #   <p> Enables the automated creation of subdomains for branches. </p>
    #
    # @option params [Array<SubDomainSetting>] :sub_domain_settings
    #   <p> The setting for the subdomain. </p>
    #
    # @option params [Array<String>] :auto_sub_domain_creation_patterns
    #   <p> Sets the branch patterns for automatic subdomain creation. </p>
    #
    # @option params [String] :auto_sub_domain_iam_role
    #   <p> The required AWS Identity and Access Management (IAM) service role for the Amazon
    #               Resource Name (ARN) for automatically creating subdomains. </p>
    #
    # @return [Types::CreateDomainAssociationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_domain_association(
    #     app_id: 'appId', # required
    #     domain_name: 'domainName', # required
    #     enable_auto_sub_domain: false,
    #     sub_domain_settings: [
    #       {
    #         prefix: 'prefix', # required
    #         branch_name: 'branchName' # required
    #       }
    #     ], # required
    #     auto_sub_domain_creation_patterns: [
    #       'member'
    #     ],
    #     auto_sub_domain_iam_role: 'autoSubDomainIAMRole'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDomainAssociationOutput
    #   resp.data.domain_association #=> Types::DomainAssociation
    #   resp.data.domain_association.domain_association_arn #=> String
    #   resp.data.domain_association.domain_name #=> String
    #   resp.data.domain_association.enable_auto_sub_domain #=> Boolean
    #   resp.data.domain_association.auto_sub_domain_creation_patterns #=> Array<String>
    #   resp.data.domain_association.auto_sub_domain_creation_patterns[0] #=> String
    #   resp.data.domain_association.auto_sub_domain_iam_role #=> String
    #   resp.data.domain_association.domain_status #=> String, one of ["PENDING_VERIFICATION", "IN_PROGRESS", "AVAILABLE", "PENDING_DEPLOYMENT", "FAILED", "CREATING", "REQUESTING_CERTIFICATE", "UPDATING"]
    #   resp.data.domain_association.status_reason #=> String
    #   resp.data.domain_association.certificate_verification_dns_record #=> String
    #   resp.data.domain_association.sub_domains #=> Array<SubDomain>
    #   resp.data.domain_association.sub_domains[0] #=> Types::SubDomain
    #   resp.data.domain_association.sub_domains[0].sub_domain_setting #=> Types::SubDomainSetting
    #   resp.data.domain_association.sub_domains[0].sub_domain_setting.prefix #=> String
    #   resp.data.domain_association.sub_domains[0].sub_domain_setting.branch_name #=> String
    #   resp.data.domain_association.sub_domains[0].verified #=> Boolean
    #   resp.data.domain_association.sub_domains[0].dns_record #=> String
    #
    def create_domain_association(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDomainAssociationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDomainAssociationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDomainAssociation
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::LimitExceededException, Errors::DependentServiceFailureException]),
        data_parser: Parsers::CreateDomainAssociation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDomainAssociation,
        stubs: @stubs,
        params_class: Params::CreateDomainAssociationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_domain_association
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Creates a new webhook on an Amplify app. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateWebhookInput}.
    #
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    # @option params [String] :branch_name
    #   <p> The name for a branch that is part of an Amplify app. </p>
    #
    # @option params [String] :description
    #   <p> The description for a webhook. </p>
    #
    # @return [Types::CreateWebhookOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_webhook(
    #     app_id: 'appId', # required
    #     branch_name: 'branchName', # required
    #     description: 'description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateWebhookOutput
    #   resp.data.webhook #=> Types::Webhook
    #   resp.data.webhook.webhook_arn #=> String
    #   resp.data.webhook.webhook_id #=> String
    #   resp.data.webhook.webhook_url #=> String
    #   resp.data.webhook.branch_name #=> String
    #   resp.data.webhook.description #=> String
    #   resp.data.webhook.create_time #=> Time
    #   resp.data.webhook.update_time #=> Time
    #
    def create_webhook(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateWebhookInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateWebhookInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateWebhook
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::LimitExceededException, Errors::DependentServiceFailureException]),
        data_parser: Parsers::CreateWebhook
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateWebhook,
        stubs: @stubs,
        params_class: Params::CreateWebhookOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_webhook
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Deletes an existing Amplify app specified by an app ID. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAppInput}.
    #
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    # @return [Types::DeleteAppOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app(
    #     app_id: 'appId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAppOutput
    #   resp.data.app #=> Types::App
    #   resp.data.app.app_id #=> String
    #   resp.data.app.app_arn #=> String
    #   resp.data.app.name #=> String
    #   resp.data.app.tags #=> Hash<String, String>
    #   resp.data.app.tags['key'] #=> String
    #   resp.data.app.description #=> String
    #   resp.data.app.repository #=> String
    #   resp.data.app.platform #=> String, one of ["WEB", "WEB_DYNAMIC"]
    #   resp.data.app.create_time #=> Time
    #   resp.data.app.update_time #=> Time
    #   resp.data.app.iam_service_role_arn #=> String
    #   resp.data.app.environment_variables #=> Hash<String, String>
    #   resp.data.app.environment_variables['key'] #=> String
    #   resp.data.app.default_domain #=> String
    #   resp.data.app.enable_branch_auto_build #=> Boolean
    #   resp.data.app.enable_branch_auto_deletion #=> Boolean
    #   resp.data.app.enable_basic_auth #=> Boolean
    #   resp.data.app.basic_auth_credentials #=> String
    #   resp.data.app.custom_rules #=> Array<CustomRule>
    #   resp.data.app.custom_rules[0] #=> Types::CustomRule
    #   resp.data.app.custom_rules[0].source #=> String
    #   resp.data.app.custom_rules[0].target #=> String
    #   resp.data.app.custom_rules[0].status #=> String
    #   resp.data.app.custom_rules[0].condition #=> String
    #   resp.data.app.production_branch #=> Types::ProductionBranch
    #   resp.data.app.production_branch.last_deploy_time #=> Time
    #   resp.data.app.production_branch.status #=> String
    #   resp.data.app.production_branch.thumbnail_url #=> String
    #   resp.data.app.production_branch.branch_name #=> String
    #   resp.data.app.build_spec #=> String
    #   resp.data.app.custom_headers #=> String
    #   resp.data.app.enable_auto_branch_creation #=> Boolean
    #   resp.data.app.auto_branch_creation_patterns #=> Array<String>
    #   resp.data.app.auto_branch_creation_patterns[0] #=> String
    #   resp.data.app.auto_branch_creation_config #=> Types::AutoBranchCreationConfig
    #   resp.data.app.auto_branch_creation_config.stage #=> String, one of ["PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"]
    #   resp.data.app.auto_branch_creation_config.framework #=> String
    #   resp.data.app.auto_branch_creation_config.enable_auto_build #=> Boolean
    #   resp.data.app.auto_branch_creation_config.environment_variables #=> Hash<String, String>
    #   resp.data.app.auto_branch_creation_config.basic_auth_credentials #=> String
    #   resp.data.app.auto_branch_creation_config.enable_basic_auth #=> Boolean
    #   resp.data.app.auto_branch_creation_config.enable_performance_mode #=> Boolean
    #   resp.data.app.auto_branch_creation_config.build_spec #=> String
    #   resp.data.app.auto_branch_creation_config.enable_pull_request_preview #=> Boolean
    #   resp.data.app.auto_branch_creation_config.pull_request_environment_name #=> String
    #   resp.data.app.repository_clone_method #=> String, one of ["SSH", "TOKEN", "SIGV4"]
    #
    def delete_app(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAppInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAppInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteApp
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::DependentServiceFailureException]),
        data_parser: Parsers::DeleteApp
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteApp,
        stubs: @stubs,
        params_class: Params::DeleteAppOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_app
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Deletes a backend environment for an Amplify app. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBackendEnvironmentInput}.
    #
    # @option params [String] :app_id
    #   <p> The unique ID of an Amplify app. </p>
    #
    # @option params [String] :environment_name
    #   <p> The name of a backend environment of an Amplify app. </p>
    #
    # @return [Types::DeleteBackendEnvironmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_backend_environment(
    #     app_id: 'appId', # required
    #     environment_name: 'environmentName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBackendEnvironmentOutput
    #   resp.data.backend_environment #=> Types::BackendEnvironment
    #   resp.data.backend_environment.backend_environment_arn #=> String
    #   resp.data.backend_environment.environment_name #=> String
    #   resp.data.backend_environment.stack_name #=> String
    #   resp.data.backend_environment.deployment_artifacts #=> String
    #   resp.data.backend_environment.create_time #=> Time
    #   resp.data.backend_environment.update_time #=> Time
    #
    def delete_backend_environment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBackendEnvironmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBackendEnvironmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBackendEnvironment
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::DependentServiceFailureException]),
        data_parser: Parsers::DeleteBackendEnvironment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBackendEnvironment,
        stubs: @stubs,
        params_class: Params::DeleteBackendEnvironmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_backend_environment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Deletes a branch for an Amplify app. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBranchInput}.
    #
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    # @option params [String] :branch_name
    #   <p> The name for the branch. </p>
    #
    # @return [Types::DeleteBranchOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_branch(
    #     app_id: 'appId', # required
    #     branch_name: 'branchName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBranchOutput
    #   resp.data.branch #=> Types::Branch
    #   resp.data.branch.branch_arn #=> String
    #   resp.data.branch.branch_name #=> String
    #   resp.data.branch.description #=> String
    #   resp.data.branch.tags #=> Hash<String, String>
    #   resp.data.branch.tags['key'] #=> String
    #   resp.data.branch.stage #=> String, one of ["PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"]
    #   resp.data.branch.display_name #=> String
    #   resp.data.branch.enable_notification #=> Boolean
    #   resp.data.branch.create_time #=> Time
    #   resp.data.branch.update_time #=> Time
    #   resp.data.branch.environment_variables #=> Hash<String, String>
    #   resp.data.branch.environment_variables['key'] #=> String
    #   resp.data.branch.enable_auto_build #=> Boolean
    #   resp.data.branch.custom_domains #=> Array<String>
    #   resp.data.branch.custom_domains[0] #=> String
    #   resp.data.branch.framework #=> String
    #   resp.data.branch.active_job_id #=> String
    #   resp.data.branch.total_number_of_jobs #=> String
    #   resp.data.branch.enable_basic_auth #=> Boolean
    #   resp.data.branch.enable_performance_mode #=> Boolean
    #   resp.data.branch.thumbnail_url #=> String
    #   resp.data.branch.basic_auth_credentials #=> String
    #   resp.data.branch.build_spec #=> String
    #   resp.data.branch.ttl #=> String
    #   resp.data.branch.associated_resources #=> Array<String>
    #   resp.data.branch.associated_resources[0] #=> String
    #   resp.data.branch.enable_pull_request_preview #=> Boolean
    #   resp.data.branch.pull_request_environment_name #=> String
    #   resp.data.branch.destination_branch #=> String
    #   resp.data.branch.source_branch #=> String
    #   resp.data.branch.backend_environment_arn #=> String
    #
    def delete_branch(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBranchInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBranchInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBranch
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::DependentServiceFailureException]),
        data_parser: Parsers::DeleteBranch
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBranch,
        stubs: @stubs,
        params_class: Params::DeleteBranchOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_branch
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Deletes a domain association for an Amplify app. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDomainAssociationInput}.
    #
    # @option params [String] :app_id
    #   <p> The unique id for an Amplify app. </p>
    #
    # @option params [String] :domain_name
    #   <p> The name of the domain. </p>
    #
    # @return [Types::DeleteDomainAssociationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_domain_association(
    #     app_id: 'appId', # required
    #     domain_name: 'domainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDomainAssociationOutput
    #   resp.data.domain_association #=> Types::DomainAssociation
    #   resp.data.domain_association.domain_association_arn #=> String
    #   resp.data.domain_association.domain_name #=> String
    #   resp.data.domain_association.enable_auto_sub_domain #=> Boolean
    #   resp.data.domain_association.auto_sub_domain_creation_patterns #=> Array<String>
    #   resp.data.domain_association.auto_sub_domain_creation_patterns[0] #=> String
    #   resp.data.domain_association.auto_sub_domain_iam_role #=> String
    #   resp.data.domain_association.domain_status #=> String, one of ["PENDING_VERIFICATION", "IN_PROGRESS", "AVAILABLE", "PENDING_DEPLOYMENT", "FAILED", "CREATING", "REQUESTING_CERTIFICATE", "UPDATING"]
    #   resp.data.domain_association.status_reason #=> String
    #   resp.data.domain_association.certificate_verification_dns_record #=> String
    #   resp.data.domain_association.sub_domains #=> Array<SubDomain>
    #   resp.data.domain_association.sub_domains[0] #=> Types::SubDomain
    #   resp.data.domain_association.sub_domains[0].sub_domain_setting #=> Types::SubDomainSetting
    #   resp.data.domain_association.sub_domains[0].sub_domain_setting.prefix #=> String
    #   resp.data.domain_association.sub_domains[0].sub_domain_setting.branch_name #=> String
    #   resp.data.domain_association.sub_domains[0].verified #=> Boolean
    #   resp.data.domain_association.sub_domains[0].dns_record #=> String
    #
    def delete_domain_association(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDomainAssociationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDomainAssociationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDomainAssociation
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::DependentServiceFailureException]),
        data_parser: Parsers::DeleteDomainAssociation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDomainAssociation,
        stubs: @stubs,
        params_class: Params::DeleteDomainAssociationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_domain_association
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Deletes a job for a branch of an Amplify app. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteJobInput}.
    #
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    # @option params [String] :branch_name
    #   <p> The name for the branch, for the job. </p>
    #
    # @option params [String] :job_id
    #   <p> The unique ID for the job. </p>
    #
    # @return [Types::DeleteJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_job(
    #     app_id: 'appId', # required
    #     branch_name: 'branchName', # required
    #     job_id: 'jobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteJobOutput
    #   resp.data.job_summary #=> Types::JobSummary
    #   resp.data.job_summary.job_arn #=> String
    #   resp.data.job_summary.job_id #=> String
    #   resp.data.job_summary.commit_id #=> String
    #   resp.data.job_summary.commit_message #=> String
    #   resp.data.job_summary.commit_time #=> Time
    #   resp.data.job_summary.start_time #=> Time
    #   resp.data.job_summary.status #=> String, one of ["PENDING", "PROVISIONING", "RUNNING", "FAILED", "SUCCEED", "CANCELLING", "CANCELLED"]
    #   resp.data.job_summary.end_time #=> Time
    #   resp.data.job_summary.job_type #=> String, one of ["RELEASE", "RETRY", "MANUAL", "WEB_HOOK"]
    #
    def delete_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteJob
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::LimitExceededException]),
        data_parser: Parsers::DeleteJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteJob,
        stubs: @stubs,
        params_class: Params::DeleteJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Deletes a webhook. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteWebhookInput}.
    #
    # @option params [String] :webhook_id
    #   <p> The unique ID for a webhook. </p>
    #
    # @return [Types::DeleteWebhookOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_webhook(
    #     webhook_id: 'webhookId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteWebhookOutput
    #   resp.data.webhook #=> Types::Webhook
    #   resp.data.webhook.webhook_arn #=> String
    #   resp.data.webhook.webhook_id #=> String
    #   resp.data.webhook.webhook_url #=> String
    #   resp.data.webhook.branch_name #=> String
    #   resp.data.webhook.description #=> String
    #   resp.data.webhook.create_time #=> Time
    #   resp.data.webhook.update_time #=> Time
    #
    def delete_webhook(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteWebhookInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteWebhookInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteWebhook
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::LimitExceededException]),
        data_parser: Parsers::DeleteWebhook
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteWebhook,
        stubs: @stubs,
        params_class: Params::DeleteWebhookOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_webhook
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns the website access logs for a specific time range using a presigned URL.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::GenerateAccessLogsInput}.
    #
    # @option params [Time] :start_time
    #   <p> The time at which the logs should start. The time range specified is inclusive of the
    #               start time. </p>
    #
    # @option params [Time] :end_time
    #   <p> The time at which the logs should end. The time range specified is inclusive of the
    #               end time. </p>
    #
    # @option params [String] :domain_name
    #   <p> The name of the domain. </p>
    #
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    # @return [Types::GenerateAccessLogsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_access_logs(
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     domain_name: 'domainName', # required
    #     app_id: 'appId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GenerateAccessLogsOutput
    #   resp.data.log_url #=> String
    #
    def generate_access_logs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GenerateAccessLogsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GenerateAccessLogsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GenerateAccessLogs
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::GenerateAccessLogs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GenerateAccessLogs,
        stubs: @stubs,
        params_class: Params::GenerateAccessLogsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :generate_access_logs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns an existing Amplify app by appID. </p>
    #
    # @param [Hash] params
    #   See {Types::GetAppInput}.
    #
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    # @return [Types::GetAppOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_app(
    #     app_id: 'appId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAppOutput
    #   resp.data.app #=> Types::App
    #   resp.data.app.app_id #=> String
    #   resp.data.app.app_arn #=> String
    #   resp.data.app.name #=> String
    #   resp.data.app.tags #=> Hash<String, String>
    #   resp.data.app.tags['key'] #=> String
    #   resp.data.app.description #=> String
    #   resp.data.app.repository #=> String
    #   resp.data.app.platform #=> String, one of ["WEB", "WEB_DYNAMIC"]
    #   resp.data.app.create_time #=> Time
    #   resp.data.app.update_time #=> Time
    #   resp.data.app.iam_service_role_arn #=> String
    #   resp.data.app.environment_variables #=> Hash<String, String>
    #   resp.data.app.environment_variables['key'] #=> String
    #   resp.data.app.default_domain #=> String
    #   resp.data.app.enable_branch_auto_build #=> Boolean
    #   resp.data.app.enable_branch_auto_deletion #=> Boolean
    #   resp.data.app.enable_basic_auth #=> Boolean
    #   resp.data.app.basic_auth_credentials #=> String
    #   resp.data.app.custom_rules #=> Array<CustomRule>
    #   resp.data.app.custom_rules[0] #=> Types::CustomRule
    #   resp.data.app.custom_rules[0].source #=> String
    #   resp.data.app.custom_rules[0].target #=> String
    #   resp.data.app.custom_rules[0].status #=> String
    #   resp.data.app.custom_rules[0].condition #=> String
    #   resp.data.app.production_branch #=> Types::ProductionBranch
    #   resp.data.app.production_branch.last_deploy_time #=> Time
    #   resp.data.app.production_branch.status #=> String
    #   resp.data.app.production_branch.thumbnail_url #=> String
    #   resp.data.app.production_branch.branch_name #=> String
    #   resp.data.app.build_spec #=> String
    #   resp.data.app.custom_headers #=> String
    #   resp.data.app.enable_auto_branch_creation #=> Boolean
    #   resp.data.app.auto_branch_creation_patterns #=> Array<String>
    #   resp.data.app.auto_branch_creation_patterns[0] #=> String
    #   resp.data.app.auto_branch_creation_config #=> Types::AutoBranchCreationConfig
    #   resp.data.app.auto_branch_creation_config.stage #=> String, one of ["PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"]
    #   resp.data.app.auto_branch_creation_config.framework #=> String
    #   resp.data.app.auto_branch_creation_config.enable_auto_build #=> Boolean
    #   resp.data.app.auto_branch_creation_config.environment_variables #=> Hash<String, String>
    #   resp.data.app.auto_branch_creation_config.basic_auth_credentials #=> String
    #   resp.data.app.auto_branch_creation_config.enable_basic_auth #=> Boolean
    #   resp.data.app.auto_branch_creation_config.enable_performance_mode #=> Boolean
    #   resp.data.app.auto_branch_creation_config.build_spec #=> String
    #   resp.data.app.auto_branch_creation_config.enable_pull_request_preview #=> Boolean
    #   resp.data.app.auto_branch_creation_config.pull_request_environment_name #=> String
    #   resp.data.app.repository_clone_method #=> String, one of ["SSH", "TOKEN", "SIGV4"]
    #
    def get_app(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAppInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAppInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetApp
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::GetApp
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetApp,
        stubs: @stubs,
        params_class: Params::GetAppOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_app
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns the artifact info that corresponds to an artifact id. </p>
    #
    # @param [Hash] params
    #   See {Types::GetArtifactUrlInput}.
    #
    # @option params [String] :artifact_id
    #   <p> The unique ID for an artifact. </p>
    #
    # @return [Types::GetArtifactUrlOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_artifact_url(
    #     artifact_id: 'artifactId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetArtifactUrlOutput
    #   resp.data.artifact_id #=> String
    #   resp.data.artifact_url #=> String
    #
    def get_artifact_url(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetArtifactUrlInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetArtifactUrlInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetArtifactUrl
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::LimitExceededException]),
        data_parser: Parsers::GetArtifactUrl
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetArtifactUrl,
        stubs: @stubs,
        params_class: Params::GetArtifactUrlOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_artifact_url
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a backend environment for an Amplify app. </p>
    #
    # @param [Hash] params
    #   See {Types::GetBackendEnvironmentInput}.
    #
    # @option params [String] :app_id
    #   <p> The unique id for an Amplify app. </p>
    #
    # @option params [String] :environment_name
    #   <p> The name for the backend environment. </p>
    #
    # @return [Types::GetBackendEnvironmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_backend_environment(
    #     app_id: 'appId', # required
    #     environment_name: 'environmentName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBackendEnvironmentOutput
    #   resp.data.backend_environment #=> Types::BackendEnvironment
    #   resp.data.backend_environment.backend_environment_arn #=> String
    #   resp.data.backend_environment.environment_name #=> String
    #   resp.data.backend_environment.stack_name #=> String
    #   resp.data.backend_environment.deployment_artifacts #=> String
    #   resp.data.backend_environment.create_time #=> Time
    #   resp.data.backend_environment.update_time #=> Time
    #
    def get_backend_environment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBackendEnvironmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBackendEnvironmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBackendEnvironment
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::GetBackendEnvironment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBackendEnvironment,
        stubs: @stubs,
        params_class: Params::GetBackendEnvironmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_backend_environment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a branch for an Amplify app. </p>
    #
    # @param [Hash] params
    #   See {Types::GetBranchInput}.
    #
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    # @option params [String] :branch_name
    #   <p> The name for the branch. </p>
    #
    # @return [Types::GetBranchOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_branch(
    #     app_id: 'appId', # required
    #     branch_name: 'branchName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBranchOutput
    #   resp.data.branch #=> Types::Branch
    #   resp.data.branch.branch_arn #=> String
    #   resp.data.branch.branch_name #=> String
    #   resp.data.branch.description #=> String
    #   resp.data.branch.tags #=> Hash<String, String>
    #   resp.data.branch.tags['key'] #=> String
    #   resp.data.branch.stage #=> String, one of ["PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"]
    #   resp.data.branch.display_name #=> String
    #   resp.data.branch.enable_notification #=> Boolean
    #   resp.data.branch.create_time #=> Time
    #   resp.data.branch.update_time #=> Time
    #   resp.data.branch.environment_variables #=> Hash<String, String>
    #   resp.data.branch.environment_variables['key'] #=> String
    #   resp.data.branch.enable_auto_build #=> Boolean
    #   resp.data.branch.custom_domains #=> Array<String>
    #   resp.data.branch.custom_domains[0] #=> String
    #   resp.data.branch.framework #=> String
    #   resp.data.branch.active_job_id #=> String
    #   resp.data.branch.total_number_of_jobs #=> String
    #   resp.data.branch.enable_basic_auth #=> Boolean
    #   resp.data.branch.enable_performance_mode #=> Boolean
    #   resp.data.branch.thumbnail_url #=> String
    #   resp.data.branch.basic_auth_credentials #=> String
    #   resp.data.branch.build_spec #=> String
    #   resp.data.branch.ttl #=> String
    #   resp.data.branch.associated_resources #=> Array<String>
    #   resp.data.branch.associated_resources[0] #=> String
    #   resp.data.branch.enable_pull_request_preview #=> Boolean
    #   resp.data.branch.pull_request_environment_name #=> String
    #   resp.data.branch.destination_branch #=> String
    #   resp.data.branch.source_branch #=> String
    #   resp.data.branch.backend_environment_arn #=> String
    #
    def get_branch(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBranchInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBranchInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBranch
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::GetBranch
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBranch,
        stubs: @stubs,
        params_class: Params::GetBranchOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_branch
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns the domain information for an Amplify app. </p>
    #
    # @param [Hash] params
    #   See {Types::GetDomainAssociationInput}.
    #
    # @option params [String] :app_id
    #   <p> The unique id for an Amplify app. </p>
    #
    # @option params [String] :domain_name
    #   <p> The name of the domain. </p>
    #
    # @return [Types::GetDomainAssociationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_domain_association(
    #     app_id: 'appId', # required
    #     domain_name: 'domainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDomainAssociationOutput
    #   resp.data.domain_association #=> Types::DomainAssociation
    #   resp.data.domain_association.domain_association_arn #=> String
    #   resp.data.domain_association.domain_name #=> String
    #   resp.data.domain_association.enable_auto_sub_domain #=> Boolean
    #   resp.data.domain_association.auto_sub_domain_creation_patterns #=> Array<String>
    #   resp.data.domain_association.auto_sub_domain_creation_patterns[0] #=> String
    #   resp.data.domain_association.auto_sub_domain_iam_role #=> String
    #   resp.data.domain_association.domain_status #=> String, one of ["PENDING_VERIFICATION", "IN_PROGRESS", "AVAILABLE", "PENDING_DEPLOYMENT", "FAILED", "CREATING", "REQUESTING_CERTIFICATE", "UPDATING"]
    #   resp.data.domain_association.status_reason #=> String
    #   resp.data.domain_association.certificate_verification_dns_record #=> String
    #   resp.data.domain_association.sub_domains #=> Array<SubDomain>
    #   resp.data.domain_association.sub_domains[0] #=> Types::SubDomain
    #   resp.data.domain_association.sub_domains[0].sub_domain_setting #=> Types::SubDomainSetting
    #   resp.data.domain_association.sub_domains[0].sub_domain_setting.prefix #=> String
    #   resp.data.domain_association.sub_domains[0].sub_domain_setting.branch_name #=> String
    #   resp.data.domain_association.sub_domains[0].verified #=> Boolean
    #   resp.data.domain_association.sub_domains[0].dns_record #=> String
    #
    def get_domain_association(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDomainAssociationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDomainAssociationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDomainAssociation
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::GetDomainAssociation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDomainAssociation,
        stubs: @stubs,
        params_class: Params::GetDomainAssociationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_domain_association
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a job for a branch of an Amplify app. </p>
    #
    # @param [Hash] params
    #   See {Types::GetJobInput}.
    #
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    # @option params [String] :branch_name
    #   <p> The branch name for the job. </p>
    #
    # @option params [String] :job_id
    #   <p> The unique ID for the job. </p>
    #
    # @return [Types::GetJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job(
    #     app_id: 'appId', # required
    #     branch_name: 'branchName', # required
    #     job_id: 'jobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetJobOutput
    #   resp.data.job #=> Types::Job
    #   resp.data.job.summary #=> Types::JobSummary
    #   resp.data.job.summary.job_arn #=> String
    #   resp.data.job.summary.job_id #=> String
    #   resp.data.job.summary.commit_id #=> String
    #   resp.data.job.summary.commit_message #=> String
    #   resp.data.job.summary.commit_time #=> Time
    #   resp.data.job.summary.start_time #=> Time
    #   resp.data.job.summary.status #=> String, one of ["PENDING", "PROVISIONING", "RUNNING", "FAILED", "SUCCEED", "CANCELLING", "CANCELLED"]
    #   resp.data.job.summary.end_time #=> Time
    #   resp.data.job.summary.job_type #=> String, one of ["RELEASE", "RETRY", "MANUAL", "WEB_HOOK"]
    #   resp.data.job.steps #=> Array<Step>
    #   resp.data.job.steps[0] #=> Types::Step
    #   resp.data.job.steps[0].step_name #=> String
    #   resp.data.job.steps[0].start_time #=> Time
    #   resp.data.job.steps[0].status #=> String, one of ["PENDING", "PROVISIONING", "RUNNING", "FAILED", "SUCCEED", "CANCELLING", "CANCELLED"]
    #   resp.data.job.steps[0].end_time #=> Time
    #   resp.data.job.steps[0].log_url #=> String
    #   resp.data.job.steps[0].artifacts_url #=> String
    #   resp.data.job.steps[0].test_artifacts_url #=> String
    #   resp.data.job.steps[0].test_config_url #=> String
    #   resp.data.job.steps[0].screenshots #=> Hash<String, String>
    #   resp.data.job.steps[0].screenshots['key'] #=> String
    #   resp.data.job.steps[0].status_reason #=> String
    #   resp.data.job.steps[0].context #=> String
    #
    def get_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetJob
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::LimitExceededException]),
        data_parser: Parsers::GetJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetJob,
        stubs: @stubs,
        params_class: Params::GetJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns the webhook information that corresponds to a specified webhook ID. </p>
    #
    # @param [Hash] params
    #   See {Types::GetWebhookInput}.
    #
    # @option params [String] :webhook_id
    #   <p> The unique ID for a webhook. </p>
    #
    # @return [Types::GetWebhookOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_webhook(
    #     webhook_id: 'webhookId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetWebhookOutput
    #   resp.data.webhook #=> Types::Webhook
    #   resp.data.webhook.webhook_arn #=> String
    #   resp.data.webhook.webhook_id #=> String
    #   resp.data.webhook.webhook_url #=> String
    #   resp.data.webhook.branch_name #=> String
    #   resp.data.webhook.description #=> String
    #   resp.data.webhook.create_time #=> Time
    #   resp.data.webhook.update_time #=> Time
    #
    def get_webhook(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetWebhookInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetWebhookInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetWebhook
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::LimitExceededException]),
        data_parser: Parsers::GetWebhook
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetWebhook,
        stubs: @stubs,
        params_class: Params::GetWebhookOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_webhook
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of the existing Amplify apps. </p>
    #
    # @param [Hash] params
    #   See {Types::ListAppsInput}.
    #
    # @option params [String] :next_token
    #   <p> A pagination token. If non-null, the pagination token is returned in a result. Pass
    #               its value in another request to retrieve more entries. </p>
    #
    # @option params [Integer] :max_results
    #   <p> The maximum number of records to list in a single response. </p>
    #
    # @return [Types::ListAppsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_apps(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAppsOutput
    #   resp.data.apps #=> Array<App>
    #   resp.data.apps[0] #=> Types::App
    #   resp.data.apps[0].app_id #=> String
    #   resp.data.apps[0].app_arn #=> String
    #   resp.data.apps[0].name #=> String
    #   resp.data.apps[0].tags #=> Hash<String, String>
    #   resp.data.apps[0].tags['key'] #=> String
    #   resp.data.apps[0].description #=> String
    #   resp.data.apps[0].repository #=> String
    #   resp.data.apps[0].platform #=> String, one of ["WEB", "WEB_DYNAMIC"]
    #   resp.data.apps[0].create_time #=> Time
    #   resp.data.apps[0].update_time #=> Time
    #   resp.data.apps[0].iam_service_role_arn #=> String
    #   resp.data.apps[0].environment_variables #=> Hash<String, String>
    #   resp.data.apps[0].environment_variables['key'] #=> String
    #   resp.data.apps[0].default_domain #=> String
    #   resp.data.apps[0].enable_branch_auto_build #=> Boolean
    #   resp.data.apps[0].enable_branch_auto_deletion #=> Boolean
    #   resp.data.apps[0].enable_basic_auth #=> Boolean
    #   resp.data.apps[0].basic_auth_credentials #=> String
    #   resp.data.apps[0].custom_rules #=> Array<CustomRule>
    #   resp.data.apps[0].custom_rules[0] #=> Types::CustomRule
    #   resp.data.apps[0].custom_rules[0].source #=> String
    #   resp.data.apps[0].custom_rules[0].target #=> String
    #   resp.data.apps[0].custom_rules[0].status #=> String
    #   resp.data.apps[0].custom_rules[0].condition #=> String
    #   resp.data.apps[0].production_branch #=> Types::ProductionBranch
    #   resp.data.apps[0].production_branch.last_deploy_time #=> Time
    #   resp.data.apps[0].production_branch.status #=> String
    #   resp.data.apps[0].production_branch.thumbnail_url #=> String
    #   resp.data.apps[0].production_branch.branch_name #=> String
    #   resp.data.apps[0].build_spec #=> String
    #   resp.data.apps[0].custom_headers #=> String
    #   resp.data.apps[0].enable_auto_branch_creation #=> Boolean
    #   resp.data.apps[0].auto_branch_creation_patterns #=> Array<String>
    #   resp.data.apps[0].auto_branch_creation_patterns[0] #=> String
    #   resp.data.apps[0].auto_branch_creation_config #=> Types::AutoBranchCreationConfig
    #   resp.data.apps[0].auto_branch_creation_config.stage #=> String, one of ["PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"]
    #   resp.data.apps[0].auto_branch_creation_config.framework #=> String
    #   resp.data.apps[0].auto_branch_creation_config.enable_auto_build #=> Boolean
    #   resp.data.apps[0].auto_branch_creation_config.environment_variables #=> Hash<String, String>
    #   resp.data.apps[0].auto_branch_creation_config.basic_auth_credentials #=> String
    #   resp.data.apps[0].auto_branch_creation_config.enable_basic_auth #=> Boolean
    #   resp.data.apps[0].auto_branch_creation_config.enable_performance_mode #=> Boolean
    #   resp.data.apps[0].auto_branch_creation_config.build_spec #=> String
    #   resp.data.apps[0].auto_branch_creation_config.enable_pull_request_preview #=> Boolean
    #   resp.data.apps[0].auto_branch_creation_config.pull_request_environment_name #=> String
    #   resp.data.apps[0].repository_clone_method #=> String, one of ["SSH", "TOKEN", "SIGV4"]
    #   resp.data.next_token #=> String
    #
    def list_apps(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAppsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAppsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListApps
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::ListApps
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListApps,
        stubs: @stubs,
        params_class: Params::ListAppsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_apps
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of artifacts for a specified app, branch, and job. </p>
    #
    # @param [Hash] params
    #   See {Types::ListArtifactsInput}.
    #
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    # @option params [String] :branch_name
    #   <p> The name of a branch that is part of an Amplify app. </p>
    #
    # @option params [String] :job_id
    #   <p> The unique ID for a job. </p>
    #
    # @option params [String] :next_token
    #   <p> A pagination token. Set to null to start listing artifacts from start. If a non-null
    #               pagination token is returned in a result, pass its value in here to list more artifacts.
    #           </p>
    #
    # @option params [Integer] :max_results
    #   <p> The maximum number of records to list in a single response. </p>
    #
    # @return [Types::ListArtifactsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_artifacts(
    #     app_id: 'appId', # required
    #     branch_name: 'branchName', # required
    #     job_id: 'jobId', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListArtifactsOutput
    #   resp.data.artifacts #=> Array<Artifact>
    #   resp.data.artifacts[0] #=> Types::Artifact
    #   resp.data.artifacts[0].artifact_file_name #=> String
    #   resp.data.artifacts[0].artifact_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_artifacts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListArtifactsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListArtifactsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListArtifacts
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::InternalFailureException, Errors::BadRequestException, Errors::LimitExceededException]),
        data_parser: Parsers::ListArtifacts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListArtifacts,
        stubs: @stubs,
        params_class: Params::ListArtifactsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_artifacts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Lists the backend environments for an Amplify app. </p>
    #
    # @param [Hash] params
    #   See {Types::ListBackendEnvironmentsInput}.
    #
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    # @option params [String] :environment_name
    #   <p> The name of the backend environment </p>
    #
    # @option params [String] :next_token
    #   <p> A pagination token. Set to null to start listing backend environments from the start.
    #               If a non-null pagination token is returned in a result, pass its value in here to list
    #               more backend environments. </p>
    #
    # @option params [Integer] :max_results
    #   <p> The maximum number of records to list in a single response. </p>
    #
    # @return [Types::ListBackendEnvironmentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_backend_environments(
    #     app_id: 'appId', # required
    #     environment_name: 'environmentName',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBackendEnvironmentsOutput
    #   resp.data.backend_environments #=> Array<BackendEnvironment>
    #   resp.data.backend_environments[0] #=> Types::BackendEnvironment
    #   resp.data.backend_environments[0].backend_environment_arn #=> String
    #   resp.data.backend_environments[0].environment_name #=> String
    #   resp.data.backend_environments[0].stack_name #=> String
    #   resp.data.backend_environments[0].deployment_artifacts #=> String
    #   resp.data.backend_environments[0].create_time #=> Time
    #   resp.data.backend_environments[0].update_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_backend_environments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBackendEnvironmentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBackendEnvironmentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBackendEnvironments
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::ListBackendEnvironments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBackendEnvironments,
        stubs: @stubs,
        params_class: Params::ListBackendEnvironmentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_backend_environments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Lists the branches of an Amplify app. </p>
    #
    # @param [Hash] params
    #   See {Types::ListBranchesInput}.
    #
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    # @option params [String] :next_token
    #   <p> A pagination token. Set to null to start listing branches from the start. If a
    #               non-null pagination token is returned in a result, pass its value in here to list more
    #               branches. </p>
    #
    # @option params [Integer] :max_results
    #   <p> The maximum number of records to list in a single response. </p>
    #
    # @return [Types::ListBranchesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_branches(
    #     app_id: 'appId', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBranchesOutput
    #   resp.data.branches #=> Array<Branch>
    #   resp.data.branches[0] #=> Types::Branch
    #   resp.data.branches[0].branch_arn #=> String
    #   resp.data.branches[0].branch_name #=> String
    #   resp.data.branches[0].description #=> String
    #   resp.data.branches[0].tags #=> Hash<String, String>
    #   resp.data.branches[0].tags['key'] #=> String
    #   resp.data.branches[0].stage #=> String, one of ["PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"]
    #   resp.data.branches[0].display_name #=> String
    #   resp.data.branches[0].enable_notification #=> Boolean
    #   resp.data.branches[0].create_time #=> Time
    #   resp.data.branches[0].update_time #=> Time
    #   resp.data.branches[0].environment_variables #=> Hash<String, String>
    #   resp.data.branches[0].environment_variables['key'] #=> String
    #   resp.data.branches[0].enable_auto_build #=> Boolean
    #   resp.data.branches[0].custom_domains #=> Array<String>
    #   resp.data.branches[0].custom_domains[0] #=> String
    #   resp.data.branches[0].framework #=> String
    #   resp.data.branches[0].active_job_id #=> String
    #   resp.data.branches[0].total_number_of_jobs #=> String
    #   resp.data.branches[0].enable_basic_auth #=> Boolean
    #   resp.data.branches[0].enable_performance_mode #=> Boolean
    #   resp.data.branches[0].thumbnail_url #=> String
    #   resp.data.branches[0].basic_auth_credentials #=> String
    #   resp.data.branches[0].build_spec #=> String
    #   resp.data.branches[0].ttl #=> String
    #   resp.data.branches[0].associated_resources #=> Array<String>
    #   resp.data.branches[0].associated_resources[0] #=> String
    #   resp.data.branches[0].enable_pull_request_preview #=> Boolean
    #   resp.data.branches[0].pull_request_environment_name #=> String
    #   resp.data.branches[0].destination_branch #=> String
    #   resp.data.branches[0].source_branch #=> String
    #   resp.data.branches[0].backend_environment_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_branches(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBranchesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBranchesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBranches
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::ListBranches
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBranches,
        stubs: @stubs,
        params_class: Params::ListBranchesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_branches
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns the domain associations for an Amplify app. </p>
    #
    # @param [Hash] params
    #   See {Types::ListDomainAssociationsInput}.
    #
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    # @option params [String] :next_token
    #   <p> A pagination token. Set to null to start listing apps from the start. If non-null, a
    #               pagination token is returned in a result. Pass its value in here to list more projects.
    #           </p>
    #
    # @option params [Integer] :max_results
    #   <p> The maximum number of records to list in a single response. </p>
    #
    # @return [Types::ListDomainAssociationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domain_associations(
    #     app_id: 'appId', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDomainAssociationsOutput
    #   resp.data.domain_associations #=> Array<DomainAssociation>
    #   resp.data.domain_associations[0] #=> Types::DomainAssociation
    #   resp.data.domain_associations[0].domain_association_arn #=> String
    #   resp.data.domain_associations[0].domain_name #=> String
    #   resp.data.domain_associations[0].enable_auto_sub_domain #=> Boolean
    #   resp.data.domain_associations[0].auto_sub_domain_creation_patterns #=> Array<String>
    #   resp.data.domain_associations[0].auto_sub_domain_creation_patterns[0] #=> String
    #   resp.data.domain_associations[0].auto_sub_domain_iam_role #=> String
    #   resp.data.domain_associations[0].domain_status #=> String, one of ["PENDING_VERIFICATION", "IN_PROGRESS", "AVAILABLE", "PENDING_DEPLOYMENT", "FAILED", "CREATING", "REQUESTING_CERTIFICATE", "UPDATING"]
    #   resp.data.domain_associations[0].status_reason #=> String
    #   resp.data.domain_associations[0].certificate_verification_dns_record #=> String
    #   resp.data.domain_associations[0].sub_domains #=> Array<SubDomain>
    #   resp.data.domain_associations[0].sub_domains[0] #=> Types::SubDomain
    #   resp.data.domain_associations[0].sub_domains[0].sub_domain_setting #=> Types::SubDomainSetting
    #   resp.data.domain_associations[0].sub_domains[0].sub_domain_setting.prefix #=> String
    #   resp.data.domain_associations[0].sub_domains[0].sub_domain_setting.branch_name #=> String
    #   resp.data.domain_associations[0].sub_domains[0].verified #=> Boolean
    #   resp.data.domain_associations[0].sub_domains[0].dns_record #=> String
    #   resp.data.next_token #=> String
    #
    def list_domain_associations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDomainAssociationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDomainAssociationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDomainAssociations
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::ListDomainAssociations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDomainAssociations,
        stubs: @stubs,
        params_class: Params::ListDomainAssociationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_domain_associations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Lists the jobs for a branch of an Amplify app. </p>
    #
    # @param [Hash] params
    #   See {Types::ListJobsInput}.
    #
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    # @option params [String] :branch_name
    #   <p> The name for a branch. </p>
    #
    # @option params [String] :next_token
    #   <p> A pagination token. Set to null to start listing steps from the start. If a non-null
    #               pagination token is returned in a result, pass its value in here to list more steps.
    #           </p>
    #
    # @option params [Integer] :max_results
    #   <p> The maximum number of records to list in a single response. </p>
    #
    # @return [Types::ListJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_jobs(
    #     app_id: 'appId', # required
    #     branch_name: 'branchName', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListJobsOutput
    #   resp.data.job_summaries #=> Array<JobSummary>
    #   resp.data.job_summaries[0] #=> Types::JobSummary
    #   resp.data.job_summaries[0].job_arn #=> String
    #   resp.data.job_summaries[0].job_id #=> String
    #   resp.data.job_summaries[0].commit_id #=> String
    #   resp.data.job_summaries[0].commit_message #=> String
    #   resp.data.job_summaries[0].commit_time #=> Time
    #   resp.data.job_summaries[0].start_time #=> Time
    #   resp.data.job_summaries[0].status #=> String, one of ["PENDING", "PROVISIONING", "RUNNING", "FAILED", "SUCCEED", "CANCELLING", "CANCELLED"]
    #   resp.data.job_summaries[0].end_time #=> Time
    #   resp.data.job_summaries[0].job_type #=> String, one of ["RELEASE", "RETRY", "MANUAL", "WEB_HOOK"]
    #   resp.data.next_token #=> String
    #
    def list_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListJobs
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::InternalFailureException, Errors::BadRequestException, Errors::LimitExceededException]),
        data_parser: Parsers::ListJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListJobs,
        stubs: @stubs,
        params_class: Params::ListJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of tags for a specified Amazon Resource Name (ARN). </p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) to use to list tags. </p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'resourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def list_tags_for_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsForResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsForResource
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::BadRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListTagsForResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTagsForResource,
        stubs: @stubs,
        params_class: Params::ListTagsForResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags_for_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of webhooks for an Amplify app. </p>
    #
    # @param [Hash] params
    #   See {Types::ListWebhooksInput}.
    #
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    # @option params [String] :next_token
    #   <p> A pagination token. Set to null to start listing webhooks from the start. If
    #               non-null,the pagination token is returned in a result. Pass its value in here to list
    #               more webhooks. </p>
    #
    # @option params [Integer] :max_results
    #   <p> The maximum number of records to list in a single response. </p>
    #
    # @return [Types::ListWebhooksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_webhooks(
    #     app_id: 'appId', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListWebhooksOutput
    #   resp.data.webhooks #=> Array<Webhook>
    #   resp.data.webhooks[0] #=> Types::Webhook
    #   resp.data.webhooks[0].webhook_arn #=> String
    #   resp.data.webhooks[0].webhook_id #=> String
    #   resp.data.webhooks[0].webhook_url #=> String
    #   resp.data.webhooks[0].branch_name #=> String
    #   resp.data.webhooks[0].description #=> String
    #   resp.data.webhooks[0].create_time #=> Time
    #   resp.data.webhooks[0].update_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_webhooks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListWebhooksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListWebhooksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListWebhooks
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::InternalFailureException, Errors::BadRequestException, Errors::LimitExceededException]),
        data_parser: Parsers::ListWebhooks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListWebhooks,
        stubs: @stubs,
        params_class: Params::ListWebhooksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_webhooks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Starts a deployment for a manually deployed app. Manually deployed apps are not
    #             connected to a repository. </p>
    #
    # @param [Hash] params
    #   See {Types::StartDeploymentInput}.
    #
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    # @option params [String] :branch_name
    #   <p> The name for the branch, for the job. </p>
    #
    # @option params [String] :job_id
    #   <p> The job ID for this deployment, generated by the create deployment request. </p>
    #
    # @option params [String] :source_url
    #   <p> The source URL for this deployment, used when calling start deployment without create
    #               deployment. The source URL can be any HTTP GET URL that is publicly accessible and
    #               downloads a single .zip file. </p>
    #
    # @return [Types::StartDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_deployment(
    #     app_id: 'appId', # required
    #     branch_name: 'branchName', # required
    #     job_id: 'jobId',
    #     source_url: 'sourceUrl'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartDeploymentOutput
    #   resp.data.job_summary #=> Types::JobSummary
    #   resp.data.job_summary.job_arn #=> String
    #   resp.data.job_summary.job_id #=> String
    #   resp.data.job_summary.commit_id #=> String
    #   resp.data.job_summary.commit_message #=> String
    #   resp.data.job_summary.commit_time #=> Time
    #   resp.data.job_summary.start_time #=> Time
    #   resp.data.job_summary.status #=> String, one of ["PENDING", "PROVISIONING", "RUNNING", "FAILED", "SUCCEED", "CANCELLING", "CANCELLED"]
    #   resp.data.job_summary.end_time #=> Time
    #   resp.data.job_summary.job_type #=> String, one of ["RELEASE", "RETRY", "MANUAL", "WEB_HOOK"]
    #
    def start_deployment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartDeploymentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartDeploymentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartDeployment
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::LimitExceededException]),
        data_parser: Parsers::StartDeployment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartDeployment,
        stubs: @stubs,
        params_class: Params::StartDeploymentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_deployment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Starts a new job for a branch of an Amplify app. </p>
    #
    # @param [Hash] params
    #   See {Types::StartJobInput}.
    #
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    # @option params [String] :branch_name
    #   <p> The branch name for the job. </p>
    #
    # @option params [String] :job_id
    #   <p> The unique ID for an existing job. This is required if the value of
    #                   <code>jobType</code> is <code>RETRY</code>. </p>
    #
    # @option params [String] :job_type
    #   <p> Describes the type for the job. The job type <code>RELEASE</code> starts a new job
    #               with the latest change from the specified branch. This value is available only for apps
    #               that are connected to a repository. The job type <code>RETRY</code> retries an existing
    #               job. If the job type value is <code>RETRY</code>, the <code>jobId</code> is also
    #               required. </p>
    #
    # @option params [String] :job_reason
    #   <p> A descriptive reason for starting this job. </p>
    #
    # @option params [String] :commit_id
    #   <p> The commit ID from a third-party repository provider for the job. </p>
    #
    # @option params [String] :commit_message
    #   <p> The commit message from a third-party repository provider for the job. </p>
    #
    # @option params [Time] :commit_time
    #   <p> The commit date and time for the job. </p>
    #
    # @return [Types::StartJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_job(
    #     app_id: 'appId', # required
    #     branch_name: 'branchName', # required
    #     job_id: 'jobId',
    #     job_type: 'RELEASE', # required - accepts ["RELEASE", "RETRY", "MANUAL", "WEB_HOOK"]
    #     job_reason: 'jobReason',
    #     commit_id: 'commitId',
    #     commit_message: 'commitMessage',
    #     commit_time: Time.now
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartJobOutput
    #   resp.data.job_summary #=> Types::JobSummary
    #   resp.data.job_summary.job_arn #=> String
    #   resp.data.job_summary.job_id #=> String
    #   resp.data.job_summary.commit_id #=> String
    #   resp.data.job_summary.commit_message #=> String
    #   resp.data.job_summary.commit_time #=> Time
    #   resp.data.job_summary.start_time #=> Time
    #   resp.data.job_summary.status #=> String, one of ["PENDING", "PROVISIONING", "RUNNING", "FAILED", "SUCCEED", "CANCELLING", "CANCELLED"]
    #   resp.data.job_summary.end_time #=> Time
    #   resp.data.job_summary.job_type #=> String, one of ["RELEASE", "RETRY", "MANUAL", "WEB_HOOK"]
    #
    def start_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartJob
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::LimitExceededException]),
        data_parser: Parsers::StartJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartJob,
        stubs: @stubs,
        params_class: Params::StartJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Stops a job that is in progress for a branch of an Amplify app. </p>
    #
    # @param [Hash] params
    #   See {Types::StopJobInput}.
    #
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    # @option params [String] :branch_name
    #   <p> The name for the branch, for the job. </p>
    #
    # @option params [String] :job_id
    #   <p> The unique id for the job. </p>
    #
    # @return [Types::StopJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_job(
    #     app_id: 'appId', # required
    #     branch_name: 'branchName', # required
    #     job_id: 'jobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopJobOutput
    #   resp.data.job_summary #=> Types::JobSummary
    #   resp.data.job_summary.job_arn #=> String
    #   resp.data.job_summary.job_id #=> String
    #   resp.data.job_summary.commit_id #=> String
    #   resp.data.job_summary.commit_message #=> String
    #   resp.data.job_summary.commit_time #=> Time
    #   resp.data.job_summary.start_time #=> Time
    #   resp.data.job_summary.status #=> String, one of ["PENDING", "PROVISIONING", "RUNNING", "FAILED", "SUCCEED", "CANCELLING", "CANCELLED"]
    #   resp.data.job_summary.end_time #=> Time
    #   resp.data.job_summary.job_type #=> String, one of ["RELEASE", "RETRY", "MANUAL", "WEB_HOOK"]
    #
    def stop_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopJob
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::LimitExceededException]),
        data_parser: Parsers::StopJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopJob,
        stubs: @stubs,
        params_class: Params::StopJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Tags the resource with a tag key and value. </p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) to use to tag a resource. </p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p> The tags used to tag the resource. </p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tags: {
    #       'key' => 'value'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TagResourceOutput
    #
    def tag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::BadRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::TagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TagResource,
        stubs: @stubs,
        params_class: Params::TagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Untags a resource with a specified Amazon Resource Name (ARN). </p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p> The Amazon Resource Name (ARN) to use to untag a resource. </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p> The tag keys to use to untag a resource. </p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagResourceOutput
    #
    def untag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagResource
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::BadRequestException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UntagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UntagResource,
        stubs: @stubs,
        params_class: Params::UntagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Updates an existing Amplify app. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAppInput}.
    #
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    # @option params [String] :name
    #   <p> The name for an Amplify app. </p>
    #
    # @option params [String] :description
    #   <p> The description for an Amplify app. </p>
    #
    # @option params [String] :platform
    #   <p> The platform for an Amplify app. </p>
    #
    # @option params [String] :iam_service_role_arn
    #   <p> The AWS Identity and Access Management (IAM) service role for an Amplify app. </p>
    #
    # @option params [Hash<String, String>] :environment_variables
    #   <p> The environment variables for an Amplify app. </p>
    #
    # @option params [Boolean] :enable_branch_auto_build
    #   <p> Enables branch auto-building for an Amplify app. </p>
    #
    # @option params [Boolean] :enable_branch_auto_deletion
    #   <p> Automatically disconnects a branch in the Amplify Console when you delete a branch
    #               from your Git repository. </p>
    #
    # @option params [Boolean] :enable_basic_auth
    #   <p> Enables basic authorization for an Amplify app. </p>
    #
    # @option params [String] :basic_auth_credentials
    #   <p> The basic authorization credentials for an Amplify app. You must base64-encode the
    #               authorization credentials and provide them in the format
    #               <code>user:password</code>.</p>
    #
    # @option params [Array<CustomRule>] :custom_rules
    #   <p> The custom redirect and rewrite rules for an Amplify app. </p>
    #
    # @option params [String] :build_spec
    #   <p> The build specification (build spec) for an Amplify app. </p>
    #
    # @option params [String] :custom_headers
    #   <p>The custom HTTP headers for an Amplify app.</p>
    #
    # @option params [Boolean] :enable_auto_branch_creation
    #   <p> Enables automated branch creation for an Amplify app. </p>
    #
    # @option params [Array<String>] :auto_branch_creation_patterns
    #   <p> Describes the automated branch creation glob patterns for an Amplify app. </p>
    #
    # @option params [AutoBranchCreationConfig] :auto_branch_creation_config
    #   <p> The automated branch creation configuration for an Amplify app. </p>
    #
    # @option params [String] :repository
    #   <p> The name of the repository for an Amplify app </p>
    #
    # @option params [String] :oauth_token
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
    #               App. For more information, see <a href="https://docs.aws.amazon.com/amplify/latest/UserGuide/setting-up-GitHub-access.html#migrating-to-github-app-auth">Migrating an existing OAuth app to the Amplify GitHub App</a> in the
    #                   <i>Amplify User Guide</i> .</p>
    #
    # @option params [String] :access_token
    #   <p>The personal access token for a GitHub repository for an Amplify app. The personal
    #               access token is used to authorize access to a GitHub repository using the Amplify GitHub
    #               App. The token is not stored.</p>
    #           <p>Use <code>accessToken</code> for GitHub repositories only. To authorize access to a
    #               repository provider such as Bitbucket or CodeCommit, use <code>oauthToken</code>.</p>
    #           <p>You must specify either <code>accessToken</code> or <code>oauthToken</code> when you
    #               update an app.</p>
    #           <p>Existing Amplify apps deployed from a GitHub repository using OAuth continue to work
    #               with CI/CD. However, we strongly recommend that you migrate these apps to use the GitHub
    #               App. For more information, see <a href="https://docs.aws.amazon.com/amplify/latest/UserGuide/setting-up-GitHub-access.html#migrating-to-github-app-auth">Migrating an existing OAuth app to the Amplify GitHub App</a> in the
    #                   <i>Amplify User Guide</i> .</p>
    #
    # @return [Types::UpdateAppOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_app(
    #     app_id: 'appId', # required
    #     name: 'name',
    #     description: 'description',
    #     platform: 'WEB', # accepts ["WEB", "WEB_DYNAMIC"]
    #     iam_service_role_arn: 'iamServiceRoleArn',
    #     environment_variables: {
    #       'key' => 'value'
    #     },
    #     enable_branch_auto_build: false,
    #     enable_branch_auto_deletion: false,
    #     enable_basic_auth: false,
    #     basic_auth_credentials: 'basicAuthCredentials',
    #     custom_rules: [
    #       {
    #         source: 'source', # required
    #         target: 'target', # required
    #         status: 'status',
    #         condition: 'condition'
    #       }
    #     ],
    #     build_spec: 'buildSpec',
    #     custom_headers: 'customHeaders',
    #     enable_auto_branch_creation: false,
    #     auto_branch_creation_patterns: [
    #       'member'
    #     ],
    #     auto_branch_creation_config: {
    #       stage: 'PRODUCTION', # accepts ["PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"]
    #       framework: 'framework',
    #       enable_auto_build: false,
    #       basic_auth_credentials: 'basicAuthCredentials',
    #       enable_basic_auth: false,
    #       enable_performance_mode: false,
    #       build_spec: 'buildSpec',
    #       enable_pull_request_preview: false,
    #       pull_request_environment_name: 'pullRequestEnvironmentName'
    #     },
    #     repository: 'repository',
    #     oauth_token: 'oauthToken',
    #     access_token: 'accessToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAppOutput
    #   resp.data.app #=> Types::App
    #   resp.data.app.app_id #=> String
    #   resp.data.app.app_arn #=> String
    #   resp.data.app.name #=> String
    #   resp.data.app.tags #=> Hash<String, String>
    #   resp.data.app.tags['key'] #=> String
    #   resp.data.app.description #=> String
    #   resp.data.app.repository #=> String
    #   resp.data.app.platform #=> String, one of ["WEB", "WEB_DYNAMIC"]
    #   resp.data.app.create_time #=> Time
    #   resp.data.app.update_time #=> Time
    #   resp.data.app.iam_service_role_arn #=> String
    #   resp.data.app.environment_variables #=> Hash<String, String>
    #   resp.data.app.environment_variables['key'] #=> String
    #   resp.data.app.default_domain #=> String
    #   resp.data.app.enable_branch_auto_build #=> Boolean
    #   resp.data.app.enable_branch_auto_deletion #=> Boolean
    #   resp.data.app.enable_basic_auth #=> Boolean
    #   resp.data.app.basic_auth_credentials #=> String
    #   resp.data.app.custom_rules #=> Array<CustomRule>
    #   resp.data.app.custom_rules[0] #=> Types::CustomRule
    #   resp.data.app.custom_rules[0].source #=> String
    #   resp.data.app.custom_rules[0].target #=> String
    #   resp.data.app.custom_rules[0].status #=> String
    #   resp.data.app.custom_rules[0].condition #=> String
    #   resp.data.app.production_branch #=> Types::ProductionBranch
    #   resp.data.app.production_branch.last_deploy_time #=> Time
    #   resp.data.app.production_branch.status #=> String
    #   resp.data.app.production_branch.thumbnail_url #=> String
    #   resp.data.app.production_branch.branch_name #=> String
    #   resp.data.app.build_spec #=> String
    #   resp.data.app.custom_headers #=> String
    #   resp.data.app.enable_auto_branch_creation #=> Boolean
    #   resp.data.app.auto_branch_creation_patterns #=> Array<String>
    #   resp.data.app.auto_branch_creation_patterns[0] #=> String
    #   resp.data.app.auto_branch_creation_config #=> Types::AutoBranchCreationConfig
    #   resp.data.app.auto_branch_creation_config.stage #=> String, one of ["PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"]
    #   resp.data.app.auto_branch_creation_config.framework #=> String
    #   resp.data.app.auto_branch_creation_config.enable_auto_build #=> Boolean
    #   resp.data.app.auto_branch_creation_config.environment_variables #=> Hash<String, String>
    #   resp.data.app.auto_branch_creation_config.basic_auth_credentials #=> String
    #   resp.data.app.auto_branch_creation_config.enable_basic_auth #=> Boolean
    #   resp.data.app.auto_branch_creation_config.enable_performance_mode #=> Boolean
    #   resp.data.app.auto_branch_creation_config.build_spec #=> String
    #   resp.data.app.auto_branch_creation_config.enable_pull_request_preview #=> Boolean
    #   resp.data.app.auto_branch_creation_config.pull_request_environment_name #=> String
    #   resp.data.app.repository_clone_method #=> String, one of ["SSH", "TOKEN", "SIGV4"]
    #
    def update_app(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAppInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAppInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateApp
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException]),
        data_parser: Parsers::UpdateApp
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateApp,
        stubs: @stubs,
        params_class: Params::UpdateAppOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_app
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Updates a branch for an Amplify app. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateBranchInput}.
    #
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    # @option params [String] :branch_name
    #   <p> The name for the branch. </p>
    #
    # @option params [String] :description
    #   <p> The description for the branch. </p>
    #
    # @option params [String] :framework
    #   <p> The framework for the branch. </p>
    #
    # @option params [String] :stage
    #   <p> Describes the current stage for the branch. </p>
    #
    # @option params [Boolean] :enable_notification
    #   <p> Enables notifications for the branch. </p>
    #
    # @option params [Boolean] :enable_auto_build
    #   <p> Enables auto building for the branch. </p>
    #
    # @option params [Hash<String, String>] :environment_variables
    #   <p> The environment variables for the branch. </p>
    #
    # @option params [String] :basic_auth_credentials
    #   <p> The basic authorization credentials for the branch. You must base64-encode the
    #               authorization credentials and provide them in the format
    #               <code>user:password</code>.</p>
    #
    # @option params [Boolean] :enable_basic_auth
    #   <p> Enables basic authorization for the branch. </p>
    #
    # @option params [Boolean] :enable_performance_mode
    #   <p>Enables performance mode for the branch.</p>
    #           <p>Performance mode optimizes for faster hosting performance by keeping content cached at
    #               the edge for a longer interval. When performance mode is enabled, hosting configuration
    #               or code changes can take up to 10 minutes to roll out. </p>
    #
    # @option params [String] :build_spec
    #   <p> The build specification (build spec) for the branch. </p>
    #
    # @option params [String] :ttl
    #   <p> The content Time to Live (TTL) for the website in seconds. </p>
    #
    # @option params [String] :display_name
    #   <p> The display name for a branch. This is used as the default domain prefix. </p>
    #
    # @option params [Boolean] :enable_pull_request_preview
    #   <p> Enables pull request previews for this branch. </p>
    #
    # @option params [String] :pull_request_environment_name
    #   <p> The Amplify environment name for the pull request. </p>
    #
    # @option params [String] :backend_environment_arn
    #   <p> The Amazon Resource Name (ARN) for a backend environment that is part of an Amplify
    #               app. </p>
    #
    # @return [Types::UpdateBranchOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_branch(
    #     app_id: 'appId', # required
    #     branch_name: 'branchName', # required
    #     description: 'description',
    #     framework: 'framework',
    #     stage: 'PRODUCTION', # accepts ["PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"]
    #     enable_notification: false,
    #     enable_auto_build: false,
    #     environment_variables: {
    #       'key' => 'value'
    #     },
    #     basic_auth_credentials: 'basicAuthCredentials',
    #     enable_basic_auth: false,
    #     enable_performance_mode: false,
    #     build_spec: 'buildSpec',
    #     ttl: 'ttl',
    #     display_name: 'displayName',
    #     enable_pull_request_preview: false,
    #     pull_request_environment_name: 'pullRequestEnvironmentName',
    #     backend_environment_arn: 'backendEnvironmentArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateBranchOutput
    #   resp.data.branch #=> Types::Branch
    #   resp.data.branch.branch_arn #=> String
    #   resp.data.branch.branch_name #=> String
    #   resp.data.branch.description #=> String
    #   resp.data.branch.tags #=> Hash<String, String>
    #   resp.data.branch.tags['key'] #=> String
    #   resp.data.branch.stage #=> String, one of ["PRODUCTION", "BETA", "DEVELOPMENT", "EXPERIMENTAL", "PULL_REQUEST"]
    #   resp.data.branch.display_name #=> String
    #   resp.data.branch.enable_notification #=> Boolean
    #   resp.data.branch.create_time #=> Time
    #   resp.data.branch.update_time #=> Time
    #   resp.data.branch.environment_variables #=> Hash<String, String>
    #   resp.data.branch.environment_variables['key'] #=> String
    #   resp.data.branch.enable_auto_build #=> Boolean
    #   resp.data.branch.custom_domains #=> Array<String>
    #   resp.data.branch.custom_domains[0] #=> String
    #   resp.data.branch.framework #=> String
    #   resp.data.branch.active_job_id #=> String
    #   resp.data.branch.total_number_of_jobs #=> String
    #   resp.data.branch.enable_basic_auth #=> Boolean
    #   resp.data.branch.enable_performance_mode #=> Boolean
    #   resp.data.branch.thumbnail_url #=> String
    #   resp.data.branch.basic_auth_credentials #=> String
    #   resp.data.branch.build_spec #=> String
    #   resp.data.branch.ttl #=> String
    #   resp.data.branch.associated_resources #=> Array<String>
    #   resp.data.branch.associated_resources[0] #=> String
    #   resp.data.branch.enable_pull_request_preview #=> Boolean
    #   resp.data.branch.pull_request_environment_name #=> String
    #   resp.data.branch.destination_branch #=> String
    #   resp.data.branch.source_branch #=> String
    #   resp.data.branch.backend_environment_arn #=> String
    #
    def update_branch(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateBranchInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateBranchInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateBranch
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::DependentServiceFailureException]),
        data_parser: Parsers::UpdateBranch
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateBranch,
        stubs: @stubs,
        params_class: Params::UpdateBranchOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_branch
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Creates a new domain association for an Amplify app.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDomainAssociationInput}.
    #
    # @option params [String] :app_id
    #   <p> The unique ID for an Amplify app. </p>
    #
    # @option params [String] :domain_name
    #   <p> The name of the domain. </p>
    #
    # @option params [Boolean] :enable_auto_sub_domain
    #   <p> Enables the automated creation of subdomains for branches. </p>
    #
    # @option params [Array<SubDomainSetting>] :sub_domain_settings
    #   <p> Describes the settings for the subdomain. </p>
    #
    # @option params [Array<String>] :auto_sub_domain_creation_patterns
    #   <p> Sets the branch patterns for automatic subdomain creation. </p>
    #
    # @option params [String] :auto_sub_domain_iam_role
    #   <p> The required AWS Identity and Access Management (IAM) service role for the Amazon
    #               Resource Name (ARN) for automatically creating subdomains. </p>
    #
    # @return [Types::UpdateDomainAssociationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain_association(
    #     app_id: 'appId', # required
    #     domain_name: 'domainName', # required
    #     enable_auto_sub_domain: false,
    #     sub_domain_settings: [
    #       {
    #         prefix: 'prefix', # required
    #         branch_name: 'branchName' # required
    #       }
    #     ],
    #     auto_sub_domain_creation_patterns: [
    #       'member'
    #     ],
    #     auto_sub_domain_iam_role: 'autoSubDomainIAMRole'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDomainAssociationOutput
    #   resp.data.domain_association #=> Types::DomainAssociation
    #   resp.data.domain_association.domain_association_arn #=> String
    #   resp.data.domain_association.domain_name #=> String
    #   resp.data.domain_association.enable_auto_sub_domain #=> Boolean
    #   resp.data.domain_association.auto_sub_domain_creation_patterns #=> Array<String>
    #   resp.data.domain_association.auto_sub_domain_creation_patterns[0] #=> String
    #   resp.data.domain_association.auto_sub_domain_iam_role #=> String
    #   resp.data.domain_association.domain_status #=> String, one of ["PENDING_VERIFICATION", "IN_PROGRESS", "AVAILABLE", "PENDING_DEPLOYMENT", "FAILED", "CREATING", "REQUESTING_CERTIFICATE", "UPDATING"]
    #   resp.data.domain_association.status_reason #=> String
    #   resp.data.domain_association.certificate_verification_dns_record #=> String
    #   resp.data.domain_association.sub_domains #=> Array<SubDomain>
    #   resp.data.domain_association.sub_domains[0] #=> Types::SubDomain
    #   resp.data.domain_association.sub_domains[0].sub_domain_setting #=> Types::SubDomainSetting
    #   resp.data.domain_association.sub_domains[0].sub_domain_setting.prefix #=> String
    #   resp.data.domain_association.sub_domains[0].sub_domain_setting.branch_name #=> String
    #   resp.data.domain_association.sub_domains[0].verified #=> Boolean
    #   resp.data.domain_association.sub_domains[0].dns_record #=> String
    #
    def update_domain_association(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDomainAssociationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDomainAssociationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDomainAssociation
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::DependentServiceFailureException]),
        data_parser: Parsers::UpdateDomainAssociation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDomainAssociation,
        stubs: @stubs,
        params_class: Params::UpdateDomainAssociationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_domain_association
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Updates a webhook. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateWebhookInput}.
    #
    # @option params [String] :webhook_id
    #   <p> The unique ID for a webhook. </p>
    #
    # @option params [String] :branch_name
    #   <p> The name for a branch that is part of an Amplify app. </p>
    #
    # @option params [String] :description
    #   <p> The description for a webhook. </p>
    #
    # @return [Types::UpdateWebhookOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_webhook(
    #     webhook_id: 'webhookId', # required
    #     branch_name: 'branchName',
    #     description: 'description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateWebhookOutput
    #   resp.data.webhook #=> Types::Webhook
    #   resp.data.webhook.webhook_arn #=> String
    #   resp.data.webhook.webhook_id #=> String
    #   resp.data.webhook.webhook_url #=> String
    #   resp.data.webhook.branch_name #=> String
    #   resp.data.webhook.description #=> String
    #   resp.data.webhook.create_time #=> Time
    #   resp.data.webhook.update_time #=> Time
    #
    def update_webhook(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateWebhookInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateWebhookInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateWebhook
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedException, Errors::NotFoundException, Errors::InternalFailureException, Errors::BadRequestException, Errors::DependentServiceFailureException]),
        data_parser: Parsers::UpdateWebhook
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateWebhook,
        stubs: @stubs,
        params_class: Params::UpdateWebhookOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_webhook
        )
      )
      raise resp.error if resp.error
      resp
    end

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
