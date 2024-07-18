# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'plugins/global_config'

module AWS::SDK::CodeCatalyst
  # <p>Welcome to the Amazon CodeCatalyst API reference. This reference provides descriptions of operations and data types for Amazon CodeCatalyst. You can use the Amazon CodeCatalyst
  #       API to work with the following objects. </p>
  #          <p>Spaces, by calling the following:</p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <a>DeleteSpace</a>, which deletes a space.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>GetSpace</a>, which returns information about a space.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>GetSubscription</a>, which returns information about the Amazon Web Services account used for billing purposes
  #         and the billing plan for the space.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>ListSpaces</a>, which retrieves a list of spaces.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>UpdateSpace</a>, which changes one or more values for a space.</p>
  #             </li>
  #          </ul>
  #          <p>Projects, by calling the following:</p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <a>CreateProject</a> which creates a project in a specified space.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>GetProject</a>, which returns information about a project.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>ListProjects</a>, which retrieves a list of projects in a space.</p>
  #             </li>
  #          </ul>
  #          <p>Users, by calling the following:</p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <a>GetUserDetails</a>, which returns information about a user in Amazon CodeCatalyst.</p>
  #             </li>
  #          </ul>
  #          <p>Source repositories, by calling the following:</p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <a>CreateSourceRepository</a>, which creates an empty Git-based source repository in a specified project.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>CreateSourceRepositoryBranch</a>, which creates a branch in a specified repository where you can work on code.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>DeleteSourceRepository</a>, which deletes a source repository.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>GetSourceRepository</a>, which returns information about a source repository.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>GetSourceRepositoryCloneUrls</a>, which returns information about the URLs that can be used with a Git client to clone a source
  #         repository.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>ListSourceRepositories</a>, which retrieves a list of source repositories in a project.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>ListSourceRepositoryBranches</a>, which retrieves a list of branches in a source repository.</p>
  #             </li>
  #          </ul>
  #          <p>Dev Environments and the Amazon Web Services Toolkits, by calling the following:</p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <a>CreateDevEnvironment</a>, which creates a Dev Environment,
  #        where you can quickly work on the code stored in the source repositories of your project.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>DeleteDevEnvironment</a>, which deletes a Dev Environment.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>GetDevEnvironment</a>, which returns information about a Dev Environment.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>ListDevEnvironments</a>, which retrieves a list of Dev Environments in a project.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>ListDevEnvironmentSessions</a>, which retrieves a list of active Dev Environment sessions in a project.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>StartDevEnvironment</a>, which starts a specified Dev Environment and puts it into an active state.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>StartDevEnvironmentSession</a>, which starts a session to a specified Dev Environment.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>StopDevEnvironment</a>, which stops a specified Dev Environment and puts it into an stopped state.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>StopDevEnvironmentSession</a>, which stops a session for a specified Dev Environment.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>UpdateDevEnvironment</a>, which changes one or more values for a Dev Environment.</p>
  #             </li>
  #          </ul>
  #          <p>Workflows, by calling the following:</p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <a>GetWorkflow</a>, which returns information about a workflow.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>GetWorkflowRun</a>, which returns information about a specified run of a workflow.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>ListWorkflowRuns</a>, which retrieves a list of runs of a specified workflow.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>ListWorkflows</a>, which retrieves a list of workflows in a specified project.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>StartWorkflowRun</a>, which starts a run of a specified workflow.</p>
  #             </li>
  #          </ul>
  #          <p>Security, activity, and resource management in Amazon CodeCatalyst, by calling the following:</p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <a>CreateAccessToken</a>, which creates a personal access token (PAT) for the current user.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>DeleteAccessToken</a>, which deletes a specified personal access token (PAT).</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>ListAccessTokens</a>, which lists all personal access tokens (PATs) associated with a user.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>ListEventLogs</a>, which retrieves a list of events that occurred during a specified time period in a space.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>VerifySession</a>, which verifies whether the calling user has a valid Amazon CodeCatalyst login and session.</p>
  #             </li>
  #          </ul>
  #          <note>
  #             <p>If you are using the Amazon CodeCatalyst APIs with an SDK or the CLI, you must configure your computer to work with Amazon CodeCatalyst and single sign-on (SSO).
  #         For more information, see <a href="https://docs.aws.amazon.com/codecatalyst/latest/userguide/set-up-cli.html">Setting up to use the CLI with Amazon CodeCatalyst</a>
  #       and the SSO documentation for your SDK.</p>
  #          </note>
  class Client < Hearth::Client

    # @api private
    @plugins = Hearth::PluginList.new([
      Plugins::GlobalConfig.new
    ])

    # @param [Hash] options
    #   Options used to construct an instance of {Config}
    def initialize(options = {})
      super(options, Config)
    end

    # @return [Config] config
    attr_reader :config

    # <p>Creates a personal access token (PAT) for the current user. A personal access token (PAT) is similar to a password.
    #       It is associated with your user identity for use across all spaces and projects in Amazon CodeCatalyst. You use PATs to access CodeCatalyst
    #       from resources that include integrated development environments (IDEs) and Git-based source repositories.
    #       PATs represent you in Amazon CodeCatalyst and you can manage them in your user settings.For more information, see
    #       <a href="https://docs.aws.amazon.com/codecatalyst/latest/userguide/ipa-tokens-keys.html">Managing personal access tokens in Amazon CodeCatalyst</a>.</p>
    # @param [Hash | Types::CreateAccessTokenInput] params
    #   Request parameters for this operation.
    #   See {Types::CreateAccessTokenInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.create_access_token(
    #     name: 'name', # required
    #     expires_time: Time.now
    #   )
    # @example Response structure
    #   resp.data #=> Types::CreateAccessTokenOutput
    #   resp.data.secret #=> String
    #   resp.data.name #=> String
    #   resp.data.expires_time #=> Time
    #   resp.data.access_token_id #=> String
    def create_access_token(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::CreateAccessTokenInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::CreateAccessToken.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :create_access_token,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'CreateAccessToken',
        'code.function' => 'create_access_token',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.CreateAccessToken', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#create_access_token] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#create_access_token] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#create_access_token] #{output.data}")
        output
      end
    end

    # <p>Creates a Dev Environment in Amazon CodeCatalyst, a cloud-based development environment that you can use to quickly work on the code stored
    #       in the source repositories of your project.       </p>
    #          <note>
    #             <p>When created in the Amazon CodeCatalyst console, by default a Dev Environment is configured to have a 2 core processor, 4GB of RAM, and 16GB of persistent storage. None of these
    #       defaults apply to a Dev Environment created programmatically.</p>
    #          </note>
    # @param [Hash | Types::CreateDevEnvironmentInput] params
    #   Request parameters for this operation.
    #   See {Types::CreateDevEnvironmentInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.create_dev_environment(
    #     space_name: 'spaceName', # required
    #     project_name: 'projectName', # required
    #     repositories: [
    #       {
    #         repository_name: 'repositoryName', # required
    #         branch_name: 'branchName'
    #       }
    #     ],
    #     client_token: 'clientToken',
    #     alias: 'alias',
    #     ides: [
    #       {
    #         runtime: 'runtime',
    #         name: 'name'
    #       }
    #     ],
    #     instance_type: 'dev.standard1.small', # required - accepts ["dev.standard1.small", "dev.standard1.medium", "dev.standard1.large", "dev.standard1.xlarge"]
    #     inactivity_timeout_minutes: 1,
    #     persistent_storage: {
    #       size_in_gi_b: 1 # required
    #     }, # required
    #     vpc_connection_name: 'vpcConnectionName'
    #   )
    # @example Response structure
    #   resp.data #=> Types::CreateDevEnvironmentOutput
    #   resp.data.space_name #=> String
    #   resp.data.project_name #=> String
    #   resp.data.id #=> String
    #   resp.data.vpc_connection_name #=> String
    def create_dev_environment(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::CreateDevEnvironmentInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::CreateDevEnvironment.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :create_dev_environment,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'CreateDevEnvironment',
        'code.function' => 'create_dev_environment',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.CreateDevEnvironment', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#create_dev_environment] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#create_dev_environment] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#create_dev_environment] #{output.data}")
        output
      end
    end

    # <p>Creates a project in a specified space.</p>
    # @param [Hash | Types::CreateProjectInput] params
    #   Request parameters for this operation.
    #   See {Types::CreateProjectInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.create_project(
    #     space_name: 'spaceName', # required
    #     display_name: 'displayName', # required
    #     description: 'description'
    #   )
    # @example Response structure
    #   resp.data #=> Types::CreateProjectOutput
    #   resp.data.space_name #=> String
    #   resp.data.name #=> String
    #   resp.data.display_name #=> String
    #   resp.data.description #=> String
    def create_project(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::CreateProjectInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::CreateProject.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :create_project,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'CreateProject',
        'code.function' => 'create_project',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.CreateProject', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#create_project] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#create_project] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#create_project] #{output.data}")
        output
      end
    end

    # <p>Creates an empty Git-based source repository in a specified project. The repository is
    #       created with an initial empty commit with a default branch named <code>main</code>.</p>
    # @param [Hash | Types::CreateSourceRepositoryInput] params
    #   Request parameters for this operation.
    #   See {Types::CreateSourceRepositoryInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.create_source_repository(
    #     space_name: 'spaceName', # required
    #     project_name: 'projectName', # required
    #     name: 'name', # required
    #     description: 'description'
    #   )
    # @example Response structure
    #   resp.data #=> Types::CreateSourceRepositoryOutput
    #   resp.data.space_name #=> String
    #   resp.data.project_name #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    def create_source_repository(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::CreateSourceRepositoryInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::CreateSourceRepository.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :create_source_repository,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'CreateSourceRepository',
        'code.function' => 'create_source_repository',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.CreateSourceRepository', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#create_source_repository] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#create_source_repository] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#create_source_repository] #{output.data}")
        output
      end
    end

    # <p>Creates a branch in a specified source repository in Amazon CodeCatalyst. </p>
    #          <note>
    #             <p>This API only creates a branch in a source repository hosted in Amazon CodeCatalyst. You cannot use this API to create a branch in a linked repository.</p>
    #          </note>
    # @param [Hash | Types::CreateSourceRepositoryBranchInput] params
    #   Request parameters for this operation.
    #   See {Types::CreateSourceRepositoryBranchInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.create_source_repository_branch(
    #     space_name: 'spaceName', # required
    #     project_name: 'projectName', # required
    #     source_repository_name: 'sourceRepositoryName', # required
    #     name: 'name', # required
    #     head_commit_id: 'headCommitId'
    #   )
    # @example Response structure
    #   resp.data #=> Types::CreateSourceRepositoryBranchOutput
    #   resp.data.ref #=> String
    #   resp.data.name #=> String
    #   resp.data.last_updated_time #=> Time
    #   resp.data.head_commit_id #=> String
    def create_source_repository_branch(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::CreateSourceRepositoryBranchInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::CreateSourceRepositoryBranch.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :create_source_repository_branch,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'CreateSourceRepositoryBranch',
        'code.function' => 'create_source_repository_branch',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.CreateSourceRepositoryBranch', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#create_source_repository_branch] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#create_source_repository_branch] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#create_source_repository_branch] #{output.data}")
        output
      end
    end

    # <p>Deletes a specified personal access token (PAT). A personal access token can only be deleted by the user who created it.</p>
    # @param [Hash | Types::DeleteAccessTokenInput] params
    #   Request parameters for this operation.
    #   See {Types::DeleteAccessTokenInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.delete_access_token(
    #     id: 'id' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::DeleteAccessTokenOutput
    def delete_access_token(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::DeleteAccessTokenInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::DeleteAccessToken.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :delete_access_token,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'DeleteAccessToken',
        'code.function' => 'delete_access_token',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.DeleteAccessToken', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_access_token] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#delete_access_token] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_access_token] #{output.data}")
        output
      end
    end

    # <p>Deletes a Dev Environment.  </p>
    # @param [Hash | Types::DeleteDevEnvironmentInput] params
    #   Request parameters for this operation.
    #   See {Types::DeleteDevEnvironmentInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.delete_dev_environment(
    #     space_name: 'spaceName', # required
    #     project_name: 'projectName', # required
    #     id: 'id' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::DeleteDevEnvironmentOutput
    #   resp.data.space_name #=> String
    #   resp.data.project_name #=> String
    #   resp.data.id #=> String
    def delete_dev_environment(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::DeleteDevEnvironmentInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::DeleteDevEnvironment.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :delete_dev_environment,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'DeleteDevEnvironment',
        'code.function' => 'delete_dev_environment',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.DeleteDevEnvironment', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_dev_environment] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#delete_dev_environment] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_dev_environment] #{output.data}")
        output
      end
    end

    # <p>Deletes a project in a space.</p>
    # @param [Hash | Types::DeleteProjectInput] params
    #   Request parameters for this operation.
    #   See {Types::DeleteProjectInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.delete_project(
    #     space_name: 'spaceName', # required
    #     name: 'name' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::DeleteProjectOutput
    #   resp.data.space_name #=> String
    #   resp.data.name #=> String
    #   resp.data.display_name #=> String
    def delete_project(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::DeleteProjectInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::DeleteProject.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :delete_project,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'DeleteProject',
        'code.function' => 'delete_project',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.DeleteProject', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_project] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#delete_project] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_project] #{output.data}")
        output
      end
    end

    # <p>Deletes a source repository in Amazon CodeCatalyst. You cannot use this API to delete a linked repository. It can only be used to delete a Amazon CodeCatalyst source repository.</p>
    # @param [Hash | Types::DeleteSourceRepositoryInput] params
    #   Request parameters for this operation.
    #   See {Types::DeleteSourceRepositoryInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.delete_source_repository(
    #     space_name: 'spaceName', # required
    #     project_name: 'projectName', # required
    #     name: 'name' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::DeleteSourceRepositoryOutput
    #   resp.data.space_name #=> String
    #   resp.data.project_name #=> String
    #   resp.data.name #=> String
    def delete_source_repository(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::DeleteSourceRepositoryInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::DeleteSourceRepository.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :delete_source_repository,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'DeleteSourceRepository',
        'code.function' => 'delete_source_repository',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.DeleteSourceRepository', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_source_repository] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#delete_source_repository] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_source_repository] #{output.data}")
        output
      end
    end

    # <p>Deletes a space.</p>
    #          <important>
    #             <p>Deleting a space cannot be undone. Additionally, since space names must be unique across Amazon CodeCatalyst, you cannot reuse names of deleted spaces.</p>
    #          </important>
    # @param [Hash | Types::DeleteSpaceInput] params
    #   Request parameters for this operation.
    #   See {Types::DeleteSpaceInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.delete_space(
    #     name: 'name' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::DeleteSpaceOutput
    #   resp.data.name #=> String
    #   resp.data.display_name #=> String
    def delete_space(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::DeleteSpaceInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::DeleteSpace.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :delete_space,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'DeleteSpace',
        'code.function' => 'delete_space',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.DeleteSpace', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_space] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#delete_space] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#delete_space] #{output.data}")
        output
      end
    end

    # <p>Returns information about a Dev Environment for a source repository in a project. Dev Environments are specific to the user who creates them.</p>
    # @param [Hash | Types::GetDevEnvironmentInput] params
    #   Request parameters for this operation.
    #   See {Types::GetDevEnvironmentInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_dev_environment(
    #     space_name: 'spaceName', # required
    #     project_name: 'projectName', # required
    #     id: 'id' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetDevEnvironmentOutput
    #   resp.data.space_name #=> String
    #   resp.data.project_name #=> String
    #   resp.data.id #=> String
    #   resp.data.last_updated_time #=> Time
    #   resp.data.creator_id #=> String
    #   resp.data.status #=> String, one of ["PENDING", "RUNNING", "STARTING", "STOPPING", "STOPPED", "FAILED", "DELETING", "DELETED"]
    #   resp.data.status_reason #=> String
    #   resp.data.repositories #=> Array<DevEnvironmentRepositorySummary>
    #   resp.data.repositories[0] #=> Types::DevEnvironmentRepositorySummary
    #   resp.data.repositories[0].repository_name #=> String
    #   resp.data.repositories[0].branch_name #=> String
    #   resp.data.alias #=> String
    #   resp.data.ides #=> Array<Ide>
    #   resp.data.ides[0] #=> Types::Ide
    #   resp.data.ides[0].runtime #=> String
    #   resp.data.ides[0].name #=> String
    #   resp.data.instance_type #=> String, one of ["dev.standard1.small", "dev.standard1.medium", "dev.standard1.large", "dev.standard1.xlarge"]
    #   resp.data.inactivity_timeout_minutes #=> Integer
    #   resp.data.persistent_storage #=> Types::PersistentStorage
    #   resp.data.persistent_storage.size_in_gi_b #=> Integer
    #   resp.data.vpc_connection_name #=> String
    def get_dev_environment(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::GetDevEnvironmentInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::GetDevEnvironment.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_dev_environment,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'GetDevEnvironment',
        'code.function' => 'get_dev_environment',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.GetDevEnvironment', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_dev_environment] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_dev_environment] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_dev_environment] #{output.data}")
        output
      end
    end

    # <p>Returns information about a project.</p>
    # @param [Hash | Types::GetProjectInput] params
    #   Request parameters for this operation.
    #   See {Types::GetProjectInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_project(
    #     space_name: 'spaceName', # required
    #     name: 'name' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetProjectOutput
    #   resp.data.space_name #=> String
    #   resp.data.name #=> String
    #   resp.data.display_name #=> String
    #   resp.data.description #=> String
    def get_project(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::GetProjectInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::GetProject.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_project,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'GetProject',
        'code.function' => 'get_project',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.GetProject', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_project] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_project] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_project] #{output.data}")
        output
      end
    end

    # <p>Returns information about a source repository.</p>
    # @param [Hash | Types::GetSourceRepositoryInput] params
    #   Request parameters for this operation.
    #   See {Types::GetSourceRepositoryInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_source_repository(
    #     space_name: 'spaceName', # required
    #     project_name: 'projectName', # required
    #     name: 'name' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetSourceRepositoryOutput
    #   resp.data.space_name #=> String
    #   resp.data.project_name #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.last_updated_time #=> Time
    #   resp.data.created_time #=> Time
    def get_source_repository(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::GetSourceRepositoryInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::GetSourceRepository.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_source_repository,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'GetSourceRepository',
        'code.function' => 'get_source_repository',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.GetSourceRepository', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_source_repository] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_source_repository] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_source_repository] #{output.data}")
        output
      end
    end

    # <p>Returns information about the URLs that can be used with a Git client to clone a source
    #       repository.</p>
    # @param [Hash | Types::GetSourceRepositoryCloneUrlsInput] params
    #   Request parameters for this operation.
    #   See {Types::GetSourceRepositoryCloneUrlsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_source_repository_clone_urls(
    #     space_name: 'spaceName', # required
    #     project_name: 'projectName', # required
    #     source_repository_name: 'sourceRepositoryName' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetSourceRepositoryCloneUrlsOutput
    #   resp.data.https #=> String
    def get_source_repository_clone_urls(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::GetSourceRepositoryCloneUrlsInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::GetSourceRepositoryCloneUrls.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_source_repository_clone_urls,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'GetSourceRepositoryCloneUrls',
        'code.function' => 'get_source_repository_clone_urls',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.GetSourceRepositoryCloneUrls', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_source_repository_clone_urls] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_source_repository_clone_urls] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_source_repository_clone_urls] #{output.data}")
        output
      end
    end

    # <p>Returns information about an space.</p>
    # @param [Hash | Types::GetSpaceInput] params
    #   Request parameters for this operation.
    #   See {Types::GetSpaceInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_space(
    #     name: 'name' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetSpaceOutput
    #   resp.data.name #=> String
    #   resp.data.region_name #=> String
    #   resp.data.display_name #=> String
    #   resp.data.description #=> String
    def get_space(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::GetSpaceInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::GetSpace.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_space,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'GetSpace',
        'code.function' => 'get_space',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.GetSpace', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_space] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_space] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_space] #{output.data}")
        output
      end
    end

    # <p>Returns information about the Amazon Web Services account used for billing purposes
    #       and the billing plan for the space.</p>
    # @param [Hash | Types::GetSubscriptionInput] params
    #   Request parameters for this operation.
    #   See {Types::GetSubscriptionInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_subscription(
    #     space_name: 'spaceName' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetSubscriptionOutput
    #   resp.data.subscription_type #=> String
    #   resp.data.aws_account_name #=> String
    #   resp.data.pending_subscription_type #=> String
    #   resp.data.pending_subscription_start_time #=> Time
    def get_subscription(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::GetSubscriptionInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::GetSubscription.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_subscription,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'GetSubscription',
        'code.function' => 'get_subscription',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.GetSubscription', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_subscription] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_subscription] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_subscription] #{output.data}")
        output
      end
    end

    # <p>Returns information about a user. </p>
    # @param [Hash | Types::GetUserDetailsInput] params
    #   Request parameters for this operation.
    #   See {Types::GetUserDetailsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_user_details(
    #     id: 'id',
    #     user_name: 'userName'
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetUserDetailsOutput
    #   resp.data.user_id #=> String
    #   resp.data.user_name #=> String
    #   resp.data.display_name #=> String
    #   resp.data.primary_email #=> Types::EmailAddress
    #   resp.data.primary_email.email #=> String
    #   resp.data.primary_email.verified #=> Boolean
    #   resp.data.version #=> String
    def get_user_details(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::GetUserDetailsInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::GetUserDetails.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_user_details,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'GetUserDetails',
        'code.function' => 'get_user_details',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.GetUserDetails', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_user_details] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_user_details] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_user_details] #{output.data}")
        output
      end
    end

    # <p>Returns information about a workflow.</p>
    # @param [Hash | Types::GetWorkflowInput] params
    #   Request parameters for this operation.
    #   See {Types::GetWorkflowInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_workflow(
    #     space_name: 'spaceName', # required
    #     id: 'id', # required
    #     project_name: 'projectName' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetWorkflowOutput
    #   resp.data.space_name #=> String
    #   resp.data.project_name #=> String
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.source_repository_name #=> String
    #   resp.data.source_branch_name #=> String
    #   resp.data.definition #=> Types::WorkflowDefinition
    #   resp.data.definition.path #=> String
    #   resp.data.created_time #=> Time
    #   resp.data.last_updated_time #=> Time
    #   resp.data.run_mode #=> String, one of ["QUEUED", "PARALLEL", "SUPERSEDED"]
    #   resp.data.status #=> String, one of ["INVALID", "ACTIVE"]
    def get_workflow(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::GetWorkflowInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::GetWorkflow.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_workflow,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'GetWorkflow',
        'code.function' => 'get_workflow',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.GetWorkflow', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_workflow] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_workflow] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_workflow] #{output.data}")
        output
      end
    end

    # <p>Returns information about a specified run of a workflow.</p>
    # @param [Hash | Types::GetWorkflowRunInput] params
    #   Request parameters for this operation.
    #   See {Types::GetWorkflowRunInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_workflow_run(
    #     space_name: 'spaceName', # required
    #     id: 'id', # required
    #     project_name: 'projectName' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetWorkflowRunOutput
    #   resp.data.space_name #=> String
    #   resp.data.project_name #=> String
    #   resp.data.id #=> String
    #   resp.data.workflow_id #=> String
    #   resp.data.status #=> String, one of ["SUCCEEDED", "FAILED", "STOPPED", "SUPERSEDED", "CANCELLED", "NOT_RUN", "VALIDATING", "PROVISIONING", "IN_PROGRESS", "STOPPING", "ABANDONED"]
    #   resp.data.status_reasons #=> Array<WorkflowRunStatusReason>
    #   resp.data.status_reasons[0] #=> Types::WorkflowRunStatusReason
    #   resp.data.start_time #=> Time
    #   resp.data.end_time #=> Time
    #   resp.data.last_updated_time #=> Time
    def get_workflow_run(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::GetWorkflowRunInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::GetWorkflowRun.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_workflow_run,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'GetWorkflowRun',
        'code.function' => 'get_workflow_run',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.GetWorkflowRun', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_workflow_run] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_workflow_run] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_workflow_run] #{output.data}")
        output
      end
    end

    # <p>Lists all personal access tokens (PATs) associated with the user who calls the API. You can only list PATs associated with your Amazon Web Services Builder ID.</p>
    # @param [Hash | Types::ListAccessTokensInput] params
    #   Request parameters for this operation.
    #   See {Types::ListAccessTokensInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.list_access_tokens(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListAccessTokensOutput
    #   resp.data.items #=> Array<AccessTokenSummary>
    #   resp.data.items[0] #=> Types::AccessTokenSummary
    #   resp.data.items[0].id #=> String
    #   resp.data.items[0].name #=> String
    #   resp.data.items[0].expires_time #=> Time
    #   resp.data.next_token #=> String
    def list_access_tokens(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::ListAccessTokensInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::ListAccessTokens.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :list_access_tokens,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'ListAccessTokens',
        'code.function' => 'list_access_tokens',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.ListAccessTokens', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_access_tokens] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#list_access_tokens] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_access_tokens] #{output.data}")
        output
      end
    end

    # <p>Retrieves a list of active sessions for a Dev Environment in a project.</p>
    # @param [Hash | Types::ListDevEnvironmentSessionsInput] params
    #   Request parameters for this operation.
    #   See {Types::ListDevEnvironmentSessionsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.list_dev_environment_sessions(
    #     space_name: 'spaceName', # required
    #     project_name: 'projectName', # required
    #     dev_environment_id: 'devEnvironmentId', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListDevEnvironmentSessionsOutput
    #   resp.data.items #=> Array<DevEnvironmentSessionSummary>
    #   resp.data.items[0] #=> Types::DevEnvironmentSessionSummary
    #   resp.data.items[0].space_name #=> String
    #   resp.data.items[0].project_name #=> String
    #   resp.data.items[0].dev_environment_id #=> String
    #   resp.data.items[0].started_time #=> Time
    #   resp.data.items[0].id #=> String
    #   resp.data.next_token #=> String
    def list_dev_environment_sessions(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::ListDevEnvironmentSessionsInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::ListDevEnvironmentSessions.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :list_dev_environment_sessions,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'ListDevEnvironmentSessions',
        'code.function' => 'list_dev_environment_sessions',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.ListDevEnvironmentSessions', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_dev_environment_sessions] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#list_dev_environment_sessions] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_dev_environment_sessions] #{output.data}")
        output
      end
    end

    # <p>Retrieves a list of Dev Environments in a project.</p>
    # @param [Hash | Types::ListDevEnvironmentsInput] params
    #   Request parameters for this operation.
    #   See {Types::ListDevEnvironmentsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.list_dev_environments(
    #     space_name: 'spaceName', # required
    #     project_name: 'projectName',
    #     filters: [
    #       {
    #         key: 'key', # required
    #         member_values: [
    #           'member'
    #         ], # required
    #         comparison_operator: 'comparisonOperator'
    #       }
    #     ],
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListDevEnvironmentsOutput
    #   resp.data.items #=> Array<DevEnvironmentSummary>
    #   resp.data.items[0] #=> Types::DevEnvironmentSummary
    #   resp.data.items[0].space_name #=> String
    #   resp.data.items[0].project_name #=> String
    #   resp.data.items[0].id #=> String
    #   resp.data.items[0].last_updated_time #=> Time
    #   resp.data.items[0].creator_id #=> String
    #   resp.data.items[0].status #=> String, one of ["PENDING", "RUNNING", "STARTING", "STOPPING", "STOPPED", "FAILED", "DELETING", "DELETED"]
    #   resp.data.items[0].status_reason #=> String
    #   resp.data.items[0].repositories #=> Array<DevEnvironmentRepositorySummary>
    #   resp.data.items[0].repositories[0] #=> Types::DevEnvironmentRepositorySummary
    #   resp.data.items[0].repositories[0].repository_name #=> String
    #   resp.data.items[0].repositories[0].branch_name #=> String
    #   resp.data.items[0].alias #=> String
    #   resp.data.items[0].ides #=> Array<Ide>
    #   resp.data.items[0].ides[0] #=> Types::Ide
    #   resp.data.items[0].ides[0].runtime #=> String
    #   resp.data.items[0].ides[0].name #=> String
    #   resp.data.items[0].instance_type #=> String, one of ["dev.standard1.small", "dev.standard1.medium", "dev.standard1.large", "dev.standard1.xlarge"]
    #   resp.data.items[0].inactivity_timeout_minutes #=> Integer
    #   resp.data.items[0].persistent_storage #=> Types::PersistentStorage
    #   resp.data.items[0].persistent_storage.size_in_gi_b #=> Integer
    #   resp.data.items[0].vpc_connection_name #=> String
    #   resp.data.next_token #=> String
    def list_dev_environments(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::ListDevEnvironmentsInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::ListDevEnvironments.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :list_dev_environments,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'ListDevEnvironments',
        'code.function' => 'list_dev_environments',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.ListDevEnvironments', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_dev_environments] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#list_dev_environments] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_dev_environments] #{output.data}")
        output
      end
    end

    # <p>Retrieves a list of events that occurred during a specific time in a space. You can
    #       use these events to audit user and system activity in a space. For more information, see
    #         <a href="https://docs.aws.amazon.com/codecatalyst/latest/userguide/ipa-monitoring.html">Monitoring</a> in the <i>Amazon CodeCatalyst User Guide</i>.</p>
    #          <note>
    #             <p>ListEventLogs guarantees events for the last 30 days in a given space. You can also
    #         view and retrieve a list of management events over the last 90 days for Amazon CodeCatalyst in the
    #           CloudTrail console by viewing Event history, or by creating a trail to create
    #         and maintain a record of events that extends past 90 days. For more information, see <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/view-cloudtrail-events.html">Working with CloudTrail Event History</a> and <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-getting-started.html">Working with
    #           CloudTrail trails</a>.</p>
    #          </note>
    # @param [Hash | Types::ListEventLogsInput] params
    #   Request parameters for this operation.
    #   See {Types::ListEventLogsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.list_event_logs(
    #     space_name: 'spaceName', # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     event_name: 'eventName',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListEventLogsOutput
    #   resp.data.next_token #=> String
    #   resp.data.items #=> Array<EventLogEntry>
    #   resp.data.items[0] #=> Types::EventLogEntry
    #   resp.data.items[0].id #=> String
    #   resp.data.items[0].event_name #=> String
    #   resp.data.items[0].event_type #=> String
    #   resp.data.items[0].event_category #=> String
    #   resp.data.items[0].event_source #=> String
    #   resp.data.items[0].event_time #=> Time
    #   resp.data.items[0].operation_type #=> String, one of ["READONLY", "MUTATION"]
    #   resp.data.items[0].user_identity #=> Types::UserIdentity
    #   resp.data.items[0].user_identity.user_type #=> String, one of ["USER", "AWS_ACCOUNT", "UNKNOWN"]
    #   resp.data.items[0].user_identity.principal_id #=> String
    #   resp.data.items[0].user_identity.user_name #=> String
    #   resp.data.items[0].user_identity.aws_account_id #=> String
    #   resp.data.items[0].project_information #=> Types::ProjectInformation
    #   resp.data.items[0].project_information.name #=> String
    #   resp.data.items[0].project_information.project_id #=> String
    #   resp.data.items[0].request_id #=> String
    #   resp.data.items[0].request_payload #=> Types::EventPayload
    #   resp.data.items[0].request_payload.content_type #=> String
    #   resp.data.items[0].request_payload.data #=> String
    #   resp.data.items[0].response_payload #=> Types::EventPayload
    #   resp.data.items[0].error_code #=> String
    #   resp.data.items[0].source_ip_address #=> String
    #   resp.data.items[0].user_agent #=> String
    def list_event_logs(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::ListEventLogsInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::ListEventLogs.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :list_event_logs,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'ListEventLogs',
        'code.function' => 'list_event_logs',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.ListEventLogs', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_event_logs] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#list_event_logs] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_event_logs] #{output.data}")
        output
      end
    end

    # <p>Retrieves a list of projects.</p>
    # @param [Hash | Types::ListProjectsInput] params
    #   Request parameters for this operation.
    #   See {Types::ListProjectsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.list_projects(
    #     space_name: 'spaceName', # required
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         key: 'hasAccessTo', # required - accepts ["hasAccessTo", "name"]
    #         member_values: [
    #           'member'
    #         ], # required
    #         comparison_operator: 'EQ' # accepts ["EQ", "GT", "GE", "LT", "LE", "BEGINS_WITH"]
    #       }
    #     ]
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListProjectsOutput
    #   resp.data.next_token #=> String
    #   resp.data.items #=> Array<ProjectSummary>
    #   resp.data.items[0] #=> Types::ProjectSummary
    #   resp.data.items[0].name #=> String
    #   resp.data.items[0].display_name #=> String
    #   resp.data.items[0].description #=> String
    def list_projects(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::ListProjectsInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::ListProjects.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :list_projects,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'ListProjects',
        'code.function' => 'list_projects',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.ListProjects', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_projects] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#list_projects] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_projects] #{output.data}")
        output
      end
    end

    # <p>Retrieves a list of source repositories in a project.</p>
    # @param [Hash | Types::ListSourceRepositoriesInput] params
    #   Request parameters for this operation.
    #   See {Types::ListSourceRepositoriesInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.list_source_repositories(
    #     space_name: 'spaceName', # required
    #     project_name: 'projectName', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListSourceRepositoriesOutput
    #   resp.data.items #=> Array<ListSourceRepositoriesItem>
    #   resp.data.items[0] #=> Types::ListSourceRepositoriesItem
    #   resp.data.items[0].id #=> String
    #   resp.data.items[0].name #=> String
    #   resp.data.items[0].description #=> String
    #   resp.data.items[0].last_updated_time #=> Time
    #   resp.data.items[0].created_time #=> Time
    #   resp.data.next_token #=> String
    def list_source_repositories(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::ListSourceRepositoriesInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::ListSourceRepositories.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :list_source_repositories,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'ListSourceRepositories',
        'code.function' => 'list_source_repositories',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.ListSourceRepositories', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_source_repositories] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#list_source_repositories] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_source_repositories] #{output.data}")
        output
      end
    end

    # <p>Retrieves a list of branches in a specified source repository.</p>
    # @param [Hash | Types::ListSourceRepositoryBranchesInput] params
    #   Request parameters for this operation.
    #   See {Types::ListSourceRepositoryBranchesInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.list_source_repository_branches(
    #     space_name: 'spaceName', # required
    #     project_name: 'projectName', # required
    #     source_repository_name: 'sourceRepositoryName', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListSourceRepositoryBranchesOutput
    #   resp.data.next_token #=> String
    #   resp.data.items #=> Array<ListSourceRepositoryBranchesItem>
    #   resp.data.items[0] #=> Types::ListSourceRepositoryBranchesItem
    #   resp.data.items[0].ref #=> String
    #   resp.data.items[0].name #=> String
    #   resp.data.items[0].last_updated_time #=> Time
    #   resp.data.items[0].head_commit_id #=> String
    def list_source_repository_branches(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::ListSourceRepositoryBranchesInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::ListSourceRepositoryBranches.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :list_source_repository_branches,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'ListSourceRepositoryBranches',
        'code.function' => 'list_source_repository_branches',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.ListSourceRepositoryBranches', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_source_repository_branches] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#list_source_repository_branches] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_source_repository_branches] #{output.data}")
        output
      end
    end

    # <p>Retrieves a list of spaces.</p>
    # @param [Hash | Types::ListSpacesInput] params
    #   Request parameters for this operation.
    #   See {Types::ListSpacesInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.list_spaces(
    #     next_token: 'nextToken'
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListSpacesOutput
    #   resp.data.next_token #=> String
    #   resp.data.items #=> Array<SpaceSummary>
    #   resp.data.items[0] #=> Types::SpaceSummary
    #   resp.data.items[0].name #=> String
    #   resp.data.items[0].region_name #=> String
    #   resp.data.items[0].display_name #=> String
    #   resp.data.items[0].description #=> String
    def list_spaces(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::ListSpacesInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::ListSpaces.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :list_spaces,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'ListSpaces',
        'code.function' => 'list_spaces',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.ListSpaces', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_spaces] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#list_spaces] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_spaces] #{output.data}")
        output
      end
    end

    # <p>Retrieves a list of workflow runs of a specified workflow.</p>
    # @param [Hash | Types::ListWorkflowRunsInput] params
    #   Request parameters for this operation.
    #   See {Types::ListWorkflowRunsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.list_workflow_runs(
    #     space_name: 'spaceName', # required
    #     workflow_id: 'workflowId',
    #     project_name: 'projectName', # required
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     member_sort_by: [
    #       { }
    #     ]
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListWorkflowRunsOutput
    #   resp.data.next_token #=> String
    #   resp.data.items #=> Array<WorkflowRunSummary>
    #   resp.data.items[0] #=> Types::WorkflowRunSummary
    #   resp.data.items[0].id #=> String
    #   resp.data.items[0].workflow_id #=> String
    #   resp.data.items[0].workflow_name #=> String
    #   resp.data.items[0].status #=> String, one of ["SUCCEEDED", "FAILED", "STOPPED", "SUPERSEDED", "CANCELLED", "NOT_RUN", "VALIDATING", "PROVISIONING", "IN_PROGRESS", "STOPPING", "ABANDONED"]
    #   resp.data.items[0].status_reasons #=> Array<WorkflowRunStatusReason>
    #   resp.data.items[0].status_reasons[0] #=> Types::WorkflowRunStatusReason
    #   resp.data.items[0].start_time #=> Time
    #   resp.data.items[0].end_time #=> Time
    #   resp.data.items[0].last_updated_time #=> Time
    def list_workflow_runs(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::ListWorkflowRunsInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::ListWorkflowRuns.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :list_workflow_runs,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'ListWorkflowRuns',
        'code.function' => 'list_workflow_runs',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.ListWorkflowRuns', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_workflow_runs] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#list_workflow_runs] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_workflow_runs] #{output.data}")
        output
      end
    end

    # <p>Retrieves a list of workflows in a specified project.</p>
    # @param [Hash | Types::ListWorkflowsInput] params
    #   Request parameters for this operation.
    #   See {Types::ListWorkflowsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.list_workflows(
    #     space_name: 'spaceName', # required
    #     project_name: 'projectName', # required
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     member_sort_by: [
    #       { }
    #     ]
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListWorkflowsOutput
    #   resp.data.next_token #=> String
    #   resp.data.items #=> Array<WorkflowSummary>
    #   resp.data.items[0] #=> Types::WorkflowSummary
    #   resp.data.items[0].id #=> String
    #   resp.data.items[0].name #=> String
    #   resp.data.items[0].source_repository_name #=> String
    #   resp.data.items[0].source_branch_name #=> String
    #   resp.data.items[0].definition #=> Types::WorkflowDefinitionSummary
    #   resp.data.items[0].definition.path #=> String
    #   resp.data.items[0].created_time #=> Time
    #   resp.data.items[0].last_updated_time #=> Time
    #   resp.data.items[0].run_mode #=> String, one of ["QUEUED", "PARALLEL", "SUPERSEDED"]
    #   resp.data.items[0].status #=> String, one of ["INVALID", "ACTIVE"]
    def list_workflows(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::ListWorkflowsInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::ListWorkflows.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :list_workflows,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'ListWorkflows',
        'code.function' => 'list_workflows',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.ListWorkflows', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_workflows] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#list_workflows] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_workflows] #{output.data}")
        output
      end
    end

    # <p>Starts a specified Dev Environment and puts it into an active state. </p>
    # @param [Hash | Types::StartDevEnvironmentInput] params
    #   Request parameters for this operation.
    #   See {Types::StartDevEnvironmentInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.start_dev_environment(
    #     space_name: 'spaceName', # required
    #     project_name: 'projectName', # required
    #     id: 'id', # required
    #     ides: [
    #       {
    #         runtime: 'runtime',
    #         name: 'name'
    #       }
    #     ],
    #     instance_type: 'dev.standard1.small', # accepts ["dev.standard1.small", "dev.standard1.medium", "dev.standard1.large", "dev.standard1.xlarge"]
    #     inactivity_timeout_minutes: 1
    #   )
    # @example Response structure
    #   resp.data #=> Types::StartDevEnvironmentOutput
    #   resp.data.space_name #=> String
    #   resp.data.project_name #=> String
    #   resp.data.id #=> String
    #   resp.data.status #=> String, one of ["PENDING", "RUNNING", "STARTING", "STOPPING", "STOPPED", "FAILED", "DELETING", "DELETED"]
    def start_dev_environment(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::StartDevEnvironmentInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::StartDevEnvironment.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :start_dev_environment,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'StartDevEnvironment',
        'code.function' => 'start_dev_environment',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.StartDevEnvironment', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#start_dev_environment] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#start_dev_environment] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#start_dev_environment] #{output.data}")
        output
      end
    end

    # <p>Starts a session for a specified Dev Environment.</p>
    # @param [Hash | Types::StartDevEnvironmentSessionInput] params
    #   Request parameters for this operation.
    #   See {Types::StartDevEnvironmentSessionInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.start_dev_environment_session(
    #     space_name: 'spaceName', # required
    #     project_name: 'projectName', # required
    #     id: 'id', # required
    #     session_configuration: {
    #       session_type: 'SSM', # required - accepts ["SSM", "SSH"]
    #       execute_command_session_configuration: {
    #         command: 'command', # required
    #         arguments: [
    #           'member'
    #         ]
    #       }
    #     } # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::StartDevEnvironmentSessionOutput
    #   resp.data.access_details #=> Types::DevEnvironmentAccessDetails
    #   resp.data.access_details.stream_url #=> String
    #   resp.data.access_details.token_value #=> String
    #   resp.data.session_id #=> String
    #   resp.data.space_name #=> String
    #   resp.data.project_name #=> String
    #   resp.data.id #=> String
    def start_dev_environment_session(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::StartDevEnvironmentSessionInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::StartDevEnvironmentSession.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :start_dev_environment_session,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'StartDevEnvironmentSession',
        'code.function' => 'start_dev_environment_session',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.StartDevEnvironmentSession', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#start_dev_environment_session] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#start_dev_environment_session] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#start_dev_environment_session] #{output.data}")
        output
      end
    end

    # <p>Begins a run of a specified workflow.</p>
    # @param [Hash | Types::StartWorkflowRunInput] params
    #   Request parameters for this operation.
    #   See {Types::StartWorkflowRunInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.start_workflow_run(
    #     space_name: 'spaceName', # required
    #     project_name: 'projectName', # required
    #     workflow_id: 'workflowId', # required
    #     client_token: 'clientToken'
    #   )
    # @example Response structure
    #   resp.data #=> Types::StartWorkflowRunOutput
    #   resp.data.space_name #=> String
    #   resp.data.project_name #=> String
    #   resp.data.id #=> String
    #   resp.data.workflow_id #=> String
    def start_workflow_run(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::StartWorkflowRunInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::StartWorkflowRun.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :start_workflow_run,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'StartWorkflowRun',
        'code.function' => 'start_workflow_run',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.StartWorkflowRun', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#start_workflow_run] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#start_workflow_run] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#start_workflow_run] #{output.data}")
        output
      end
    end

    # <p>Pauses a specified Dev Environment and places it in a non-running state. Stopped Dev Environments do not consume compute minutes.</p>
    # @param [Hash | Types::StopDevEnvironmentInput] params
    #   Request parameters for this operation.
    #   See {Types::StopDevEnvironmentInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.stop_dev_environment(
    #     space_name: 'spaceName', # required
    #     project_name: 'projectName', # required
    #     id: 'id' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::StopDevEnvironmentOutput
    #   resp.data.space_name #=> String
    #   resp.data.project_name #=> String
    #   resp.data.id #=> String
    #   resp.data.status #=> String, one of ["PENDING", "RUNNING", "STARTING", "STOPPING", "STOPPED", "FAILED", "DELETING", "DELETED"]
    def stop_dev_environment(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::StopDevEnvironmentInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::StopDevEnvironment.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :stop_dev_environment,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'StopDevEnvironment',
        'code.function' => 'stop_dev_environment',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.StopDevEnvironment', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#stop_dev_environment] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#stop_dev_environment] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#stop_dev_environment] #{output.data}")
        output
      end
    end

    # <p>Stops a session for a specified Dev Environment.</p>
    # @param [Hash | Types::StopDevEnvironmentSessionInput] params
    #   Request parameters for this operation.
    #   See {Types::StopDevEnvironmentSessionInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.stop_dev_environment_session(
    #     space_name: 'spaceName', # required
    #     project_name: 'projectName', # required
    #     id: 'id', # required
    #     session_id: 'sessionId' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::StopDevEnvironmentSessionOutput
    #   resp.data.space_name #=> String
    #   resp.data.project_name #=> String
    #   resp.data.id #=> String
    #   resp.data.session_id #=> String
    def stop_dev_environment_session(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::StopDevEnvironmentSessionInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::StopDevEnvironmentSession.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :stop_dev_environment_session,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'StopDevEnvironmentSession',
        'code.function' => 'stop_dev_environment_session',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.StopDevEnvironmentSession', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#stop_dev_environment_session] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#stop_dev_environment_session] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#stop_dev_environment_session] #{output.data}")
        output
      end
    end

    # <p>Changes one or more values for a Dev Environment. Updating certain values of the Dev Environment will cause a restart.</p>
    # @param [Hash | Types::UpdateDevEnvironmentInput] params
    #   Request parameters for this operation.
    #   See {Types::UpdateDevEnvironmentInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.update_dev_environment(
    #     space_name: 'spaceName', # required
    #     project_name: 'projectName', # required
    #     id: 'id', # required
    #     alias: 'alias',
    #     ides: [
    #       {
    #         runtime: 'runtime',
    #         name: 'name'
    #       }
    #     ],
    #     instance_type: 'dev.standard1.small', # accepts ["dev.standard1.small", "dev.standard1.medium", "dev.standard1.large", "dev.standard1.xlarge"]
    #     inactivity_timeout_minutes: 1,
    #     client_token: 'clientToken'
    #   )
    # @example Response structure
    #   resp.data #=> Types::UpdateDevEnvironmentOutput
    #   resp.data.id #=> String
    #   resp.data.space_name #=> String
    #   resp.data.project_name #=> String
    #   resp.data.alias #=> String
    #   resp.data.ides #=> Array<IdeConfiguration>
    #   resp.data.ides[0] #=> Types::IdeConfiguration
    #   resp.data.ides[0].runtime #=> String
    #   resp.data.ides[0].name #=> String
    #   resp.data.instance_type #=> String, one of ["dev.standard1.small", "dev.standard1.medium", "dev.standard1.large", "dev.standard1.xlarge"]
    #   resp.data.inactivity_timeout_minutes #=> Integer
    #   resp.data.client_token #=> String
    def update_dev_environment(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::UpdateDevEnvironmentInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::UpdateDevEnvironment.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :update_dev_environment,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'UpdateDevEnvironment',
        'code.function' => 'update_dev_environment',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.UpdateDevEnvironment', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#update_dev_environment] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#update_dev_environment] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#update_dev_environment] #{output.data}")
        output
      end
    end

    # <p>Changes one or more values for a project.</p>
    # @param [Hash | Types::UpdateProjectInput] params
    #   Request parameters for this operation.
    #   See {Types::UpdateProjectInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.update_project(
    #     space_name: 'spaceName', # required
    #     name: 'name', # required
    #     description: 'description'
    #   )
    # @example Response structure
    #   resp.data #=> Types::UpdateProjectOutput
    #   resp.data.space_name #=> String
    #   resp.data.name #=> String
    #   resp.data.display_name #=> String
    #   resp.data.description #=> String
    def update_project(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::UpdateProjectInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::UpdateProject.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :update_project,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'UpdateProject',
        'code.function' => 'update_project',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.UpdateProject', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#update_project] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#update_project] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#update_project] #{output.data}")
        output
      end
    end

    # <p>Changes one or more values for a space.</p>
    # @param [Hash | Types::UpdateSpaceInput] params
    #   Request parameters for this operation.
    #   See {Types::UpdateSpaceInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.update_space(
    #     name: 'name', # required
    #     description: 'description'
    #   )
    # @example Response structure
    #   resp.data #=> Types::UpdateSpaceOutput
    #   resp.data.name #=> String
    #   resp.data.display_name #=> String
    #   resp.data.description #=> String
    def update_space(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::UpdateSpaceInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::UpdateSpace.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :update_space,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'UpdateSpace',
        'code.function' => 'update_space',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.UpdateSpace', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#update_space] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#update_space] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#update_space] #{output.data}")
        output
      end
    end

    # <p>Verifies whether the calling user has a valid Amazon CodeCatalyst login and session.  If successful, this returns the ID of the user in Amazon CodeCatalyst.</p>
    # @param [Hash | Types::VerifySessionInput] params
    #   Request parameters for this operation.
    #   See {Types::VerifySessionInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.verify_session()
    # @example Response structure
    #   resp.data #=> Types::VerifySessionOutput
    #   resp.data.identity #=> String
    def verify_session(params = {}, options = {})
      response_body = ::StringIO.new
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws::sdk::codecatalyst.client')
      input = Params::VerifySessionInput.build(params, context: 'params')
      stack = AWS::SDK::CodeCatalyst::Middleware::VerifySession.build(config)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :verify_session,
        tracer: tracer
      )
      attributes = {
        'rpc.service' => 'CodeCatalyst',
        'rpc.method' => 'VerifySession',
        'code.function' => 'verify_session',
        'code.namespace' => 'AWS::SDK::CodeCatalyst::Client'
      }
      tracer.in_span('CodeCatalyst.VerifySession', attributes: attributes, kind: Hearth::Telemetry::SpanKind::CLIENT) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#verify_session] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#verify_session] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#verify_session] #{output.data}")
        output
      end
    end
  end
end
