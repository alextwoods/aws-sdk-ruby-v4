# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::Grafana
  # An API client for AWSGrafanaControlPlane
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Managed Grafana is a fully managed and secure data visualization service that you can use to
  #        instantly query, correlate, and visualize operational metrics, logs, and traces from multiple sources.
  #        Amazon Managed Grafana makes it easy to deploy, operate, and scale Grafana, a widely deployed data visualization tool
  #        that is popular for its extensible data support.</p>
  #          <p>With Amazon Managed Grafana, you create logically isolated Grafana servers called <i>workspaces</i>. In
  #         a workspace,  you can create  Grafana dashboards and visualizations to analyze your metrics, logs, and traces without having to
  #        build, package, or deploy any hardware to run Grafana servers.  </p>
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
    def initialize(config = AWS::SDK::Grafana::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Assigns a Grafana Enterprise license to a workspace. Upgrading to Grafana Enterprise
    #          incurs additional fees. For more information, see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/upgrade-to-Grafana-Enterprise.html">Upgrade a workspace to
    #             Grafana Enterprise</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateLicenseInput}.
    #
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to associate the license with.</p>
    #
    # @option params [String] :license_type
    #   <p>The type of license to associate with the workspace.</p>
    #
    # @return [Types::AssociateLicenseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_license(
    #     workspace_id: 'workspaceId', # required
    #     license_type: 'ENTERPRISE' # required - accepts ["ENTERPRISE", "ENTERPRISE_FREE_TRIAL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateLicenseOutput
    #   resp.data.workspace #=> Types::WorkspaceDescription
    #   resp.data.workspace.account_access_type #=> String, one of ["CURRENT_ACCOUNT", "ORGANIZATION"]
    #   resp.data.workspace.created #=> Time
    #   resp.data.workspace.data_sources #=> Array<String>
    #   resp.data.workspace.data_sources[0] #=> String, one of ["AMAZON_OPENSEARCH_SERVICE", "CLOUDWATCH", "PROMETHEUS", "XRAY", "TIMESTREAM", "SITEWISE", "ATHENA", "REDSHIFT"]
    #   resp.data.workspace.description #=> String
    #   resp.data.workspace.endpoint #=> String
    #   resp.data.workspace.grafana_version #=> String
    #   resp.data.workspace.id #=> String
    #   resp.data.workspace.modified #=> Time
    #   resp.data.workspace.name #=> String
    #   resp.data.workspace.organization_role_name #=> String
    #   resp.data.workspace.notification_destinations #=> Array<String>
    #   resp.data.workspace.notification_destinations[0] #=> String, one of ["SNS"]
    #   resp.data.workspace.organizational_units #=> Array<String>
    #   resp.data.workspace.organizational_units[0] #=> String
    #   resp.data.workspace.permission_type #=> String, one of ["CUSTOMER_MANAGED", "SERVICE_MANAGED"]
    #   resp.data.workspace.stack_set_name #=> String
    #   resp.data.workspace.status #=> String, one of ["ACTIVE", "CREATING", "DELETING", "FAILED", "UPDATING", "UPGRADING", "DELETION_FAILED", "CREATION_FAILED", "UPDATE_FAILED", "UPGRADE_FAILED", "LICENSE_REMOVAL_FAILED"]
    #   resp.data.workspace.workspace_role_arn #=> String
    #   resp.data.workspace.license_type #=> String, one of ["ENTERPRISE", "ENTERPRISE_FREE_TRIAL"]
    #   resp.data.workspace.free_trial_consumed #=> Boolean
    #   resp.data.workspace.license_expiration #=> Time
    #   resp.data.workspace.free_trial_expiration #=> Time
    #   resp.data.workspace.authentication #=> Types::AuthenticationSummary
    #   resp.data.workspace.authentication.providers #=> Array<String>
    #   resp.data.workspace.authentication.providers[0] #=> String, one of ["AWS_SSO", "SAML"]
    #   resp.data.workspace.authentication.saml_configuration_status #=> String, one of ["CONFIGURED", "NOT_CONFIGURED"]
    #   resp.data.workspace.tags #=> Hash<String, String>
    #   resp.data.workspace.tags['key'] #=> String
    #
    def associate_license(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateLicenseInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateLicenseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateLicense
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::AssociateLicense
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateLicense,
        stubs: @stubs,
        params_class: Params::AssociateLicenseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_license
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a <i>workspace</i>. In a workspace, you can create Grafana
    #          dashboards and visualizations to analyze your metrics, logs, and traces. You don't have to
    #          build, package, or deploy any hardware to run the Grafana server.</p>
    #          <p>Don't use <code>CreateWorkspace</code> to modify an existing workspace. Instead,
    #          use <a href="https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdateWorkspace.html">UpdateWorkspace</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateWorkspaceInput}.
    #
    # @option params [String] :account_access_type
    #   <p>Specifies whether the workspace can access Amazon Web Services resources in this Amazon Web Services account only, or whether it can also access Amazon Web Services resources in
    #            other accounts in the same organization. If you specify <code>ORGANIZATION</code>, you must
    #            specify which organizational units the workspace can access in the
    #               <code>workspaceOrganizationalUnits</code> parameter.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive, user-provided identifier to ensure the idempotency of the request.</p>
    #
    # @option params [String] :organization_role_name
    #   <p>The name of an IAM role that already exists to use with Organizations to access Amazon Web Services
    #            data sources and notification channels in other accounts in an organization.</p>
    #
    # @option params [String] :permission_type
    #   <p>If you specify <code>SERVICE_MANAGED</code> on AWS Grafana console, Amazon Managed Grafana automatically creates
    #            the IAM roles and provisions the permissions that the workspace needs to use
    #            Amazon Web Services data sources and notification channels. In CLI mode, the permissionType <code>SERVICE_MANAGED</code> will not create the IAM role
    #            for you.</p>
    #            <p>If you specify <code>CUSTOMER_MANAGED</code>, you will manage those roles and
    #            permissions yourself. If you are creating this workspace in a member account of an
    #            organization that is not a delegated administrator account, and you want the workspace to access data sources in other Amazon Web Services
    #            accounts in the organization, you must choose <code>CUSTOMER_MANAGED</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html">Amazon Managed Grafana permissions and policies for
    #            Amazon Web Services data sources and notification channels</a>.</p>
    #
    # @option params [String] :stack_set_name
    #   <p>The name of the CloudFormation stack set to use to generate IAM roles
    #         to be used for this workspace.</p>
    #
    # @option params [Array<String>] :workspace_data_sources
    #   <p>Specify the Amazon Web Services data sources that you want to be queried in this
    #            workspace. Specifying these data sources here enables Amazon Managed Grafana to create IAM roles and permissions that allow Amazon Managed Grafana to read data from these
    #            sources. You must still add them as data sources in the Grafana console in the
    #            workspace.</p>
    #            <p>If you don't specify a data source here, you can still add it as a data source in the
    #            workspace console later. However, you will then have to manually configure permissions for
    #            it.</p>
    #
    # @option params [String] :workspace_description
    #   <p>A description for the workspace. This is used only to help you identify this workspace.</p>
    #            <p>Pattern: <code>^[\\p{L}\\p{Z}\\p{N}\\p{P}]{0,2048}$</code>
    #            </p>
    #
    # @option params [String] :workspace_name
    #   <p>The name for the workspace. It does not have to be unique.</p>
    #
    # @option params [Array<String>] :workspace_notification_destinations
    #   <p>Specify the Amazon Web Services notification channels that you plan to use in this workspace. Specifying these
    #            data sources here enables Amazon Managed Grafana to create IAM roles and permissions that allow
    #            Amazon Managed Grafana to use these channels.</p>
    #
    # @option params [Array<String>] :workspace_organizational_units
    #   <p>Specifies the organizational units that this workspace is allowed to use data sources
    #            from, if this workspace is in an account that is part of an organization.</p>
    #
    # @option params [String] :workspace_role_arn
    #   <p>The workspace needs an IAM role that grants permissions to the Amazon Web Services resources that the
    #         workspace will view data from. If you already have a role that you want to use, specify it here.  The permission type should be set to  <code>CUSTOMER_MANAGED</code>.</p>
    #
    # @option params [Array<String>] :authentication_providers
    #   <p>Specifies whether this workspace uses SAML 2.0, Amazon Web Services Single Sign On, or both to authenticate
    #            users for using the Grafana console within a workspace. For more information,
    #            see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/authentication-in-AMG.html">User authentication in
    #               Amazon Managed Grafana</a>.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The list of tags associated with the workspace.</p>
    #
    # @return [Types::CreateWorkspaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workspace(
    #     account_access_type: 'CURRENT_ACCOUNT', # required - accepts ["CURRENT_ACCOUNT", "ORGANIZATION"]
    #     client_token: 'clientToken',
    #     organization_role_name: 'organizationRoleName',
    #     permission_type: 'CUSTOMER_MANAGED', # required - accepts ["CUSTOMER_MANAGED", "SERVICE_MANAGED"]
    #     stack_set_name: 'stackSetName',
    #     workspace_data_sources: [
    #       'AMAZON_OPENSEARCH_SERVICE' # accepts ["AMAZON_OPENSEARCH_SERVICE", "CLOUDWATCH", "PROMETHEUS", "XRAY", "TIMESTREAM", "SITEWISE", "ATHENA", "REDSHIFT"]
    #     ],
    #     workspace_description: 'workspaceDescription',
    #     workspace_name: 'workspaceName',
    #     workspace_notification_destinations: [
    #       'SNS' # accepts ["SNS"]
    #     ],
    #     workspace_organizational_units: [
    #       'member'
    #     ],
    #     workspace_role_arn: 'workspaceRoleArn',
    #     authentication_providers: [
    #       'AWS_SSO' # accepts ["AWS_SSO", "SAML"]
    #     ], # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateWorkspaceOutput
    #   resp.data.workspace #=> Types::WorkspaceDescription
    #   resp.data.workspace.account_access_type #=> String, one of ["CURRENT_ACCOUNT", "ORGANIZATION"]
    #   resp.data.workspace.created #=> Time
    #   resp.data.workspace.data_sources #=> Array<String>
    #   resp.data.workspace.data_sources[0] #=> String, one of ["AMAZON_OPENSEARCH_SERVICE", "CLOUDWATCH", "PROMETHEUS", "XRAY", "TIMESTREAM", "SITEWISE", "ATHENA", "REDSHIFT"]
    #   resp.data.workspace.description #=> String
    #   resp.data.workspace.endpoint #=> String
    #   resp.data.workspace.grafana_version #=> String
    #   resp.data.workspace.id #=> String
    #   resp.data.workspace.modified #=> Time
    #   resp.data.workspace.name #=> String
    #   resp.data.workspace.organization_role_name #=> String
    #   resp.data.workspace.notification_destinations #=> Array<String>
    #   resp.data.workspace.notification_destinations[0] #=> String, one of ["SNS"]
    #   resp.data.workspace.organizational_units #=> Array<String>
    #   resp.data.workspace.organizational_units[0] #=> String
    #   resp.data.workspace.permission_type #=> String, one of ["CUSTOMER_MANAGED", "SERVICE_MANAGED"]
    #   resp.data.workspace.stack_set_name #=> String
    #   resp.data.workspace.status #=> String, one of ["ACTIVE", "CREATING", "DELETING", "FAILED", "UPDATING", "UPGRADING", "DELETION_FAILED", "CREATION_FAILED", "UPDATE_FAILED", "UPGRADE_FAILED", "LICENSE_REMOVAL_FAILED"]
    #   resp.data.workspace.workspace_role_arn #=> String
    #   resp.data.workspace.license_type #=> String, one of ["ENTERPRISE", "ENTERPRISE_FREE_TRIAL"]
    #   resp.data.workspace.free_trial_consumed #=> Boolean
    #   resp.data.workspace.license_expiration #=> Time
    #   resp.data.workspace.free_trial_expiration #=> Time
    #   resp.data.workspace.authentication #=> Types::AuthenticationSummary
    #   resp.data.workspace.authentication.providers #=> Array<String>
    #   resp.data.workspace.authentication.providers[0] #=> String, one of ["AWS_SSO", "SAML"]
    #   resp.data.workspace.authentication.saml_configuration_status #=> String, one of ["CONFIGURED", "NOT_CONFIGURED"]
    #   resp.data.workspace.tags #=> Hash<String, String>
    #   resp.data.workspace.tags['key'] #=> String
    #
    def create_workspace(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateWorkspaceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateWorkspaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateWorkspace
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::InternalServerException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateWorkspace
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateWorkspace,
        stubs: @stubs,
        params_class: Params::CreateWorkspaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_workspace
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an API key for the workspace.  This key can be used to authenticate
    #          requests sent to the workspace's HTTP API.  See
    #          <a href=" https://docs.aws.amazon.com/grafana/latest/userguide/Using-Grafana-APIs.html"> https://docs.aws.amazon.com/grafana/latest/userguide/Using-Grafana-APIs.html</a>
    #          for available APIs and example requests.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateWorkspaceApiKeyInput}.
    #
    # @option params [String] :key_name
    #   <p>Specifies the name of the key to create.  Key names must be unique to the workspace.</p>
    #
    # @option params [String] :key_role
    #   <p>Specifies the permission level of the key.</p>
    #            <p>Valid Values: <code>VIEWER</code> | <code>EDITOR</code> | <code>ADMIN</code>
    #            </p>
    #
    # @option params [Integer] :seconds_to_live
    #   <p>Specifies the time in seconds until the key expires.  Keys can be valid for up to 30 days.</p>
    #
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace in which to create an API key.</p>
    #
    # @return [Types::CreateWorkspaceApiKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_workspace_api_key(
    #     key_name: 'keyName', # required
    #     key_role: 'keyRole', # required
    #     seconds_to_live: 1, # required
    #     workspace_id: 'workspaceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateWorkspaceApiKeyOutput
    #   resp.data.key_name #=> String
    #   resp.data.key #=> String
    #   resp.data.workspace_id #=> String
    #
    def create_workspace_api_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateWorkspaceApiKeyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateWorkspaceApiKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateWorkspaceApiKey
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateWorkspaceApiKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateWorkspaceApiKey,
        stubs: @stubs,
        params_class: Params::CreateWorkspaceApiKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_workspace_api_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Amazon Managed Grafana workspace.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteWorkspaceInput}.
    #
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to delete.</p>
    #
    # @return [Types::DeleteWorkspaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workspace(
    #     workspace_id: 'workspaceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteWorkspaceOutput
    #   resp.data.workspace #=> Types::WorkspaceDescription
    #   resp.data.workspace.account_access_type #=> String, one of ["CURRENT_ACCOUNT", "ORGANIZATION"]
    #   resp.data.workspace.created #=> Time
    #   resp.data.workspace.data_sources #=> Array<String>
    #   resp.data.workspace.data_sources[0] #=> String, one of ["AMAZON_OPENSEARCH_SERVICE", "CLOUDWATCH", "PROMETHEUS", "XRAY", "TIMESTREAM", "SITEWISE", "ATHENA", "REDSHIFT"]
    #   resp.data.workspace.description #=> String
    #   resp.data.workspace.endpoint #=> String
    #   resp.data.workspace.grafana_version #=> String
    #   resp.data.workspace.id #=> String
    #   resp.data.workspace.modified #=> Time
    #   resp.data.workspace.name #=> String
    #   resp.data.workspace.organization_role_name #=> String
    #   resp.data.workspace.notification_destinations #=> Array<String>
    #   resp.data.workspace.notification_destinations[0] #=> String, one of ["SNS"]
    #   resp.data.workspace.organizational_units #=> Array<String>
    #   resp.data.workspace.organizational_units[0] #=> String
    #   resp.data.workspace.permission_type #=> String, one of ["CUSTOMER_MANAGED", "SERVICE_MANAGED"]
    #   resp.data.workspace.stack_set_name #=> String
    #   resp.data.workspace.status #=> String, one of ["ACTIVE", "CREATING", "DELETING", "FAILED", "UPDATING", "UPGRADING", "DELETION_FAILED", "CREATION_FAILED", "UPDATE_FAILED", "UPGRADE_FAILED", "LICENSE_REMOVAL_FAILED"]
    #   resp.data.workspace.workspace_role_arn #=> String
    #   resp.data.workspace.license_type #=> String, one of ["ENTERPRISE", "ENTERPRISE_FREE_TRIAL"]
    #   resp.data.workspace.free_trial_consumed #=> Boolean
    #   resp.data.workspace.license_expiration #=> Time
    #   resp.data.workspace.free_trial_expiration #=> Time
    #   resp.data.workspace.authentication #=> Types::AuthenticationSummary
    #   resp.data.workspace.authentication.providers #=> Array<String>
    #   resp.data.workspace.authentication.providers[0] #=> String, one of ["AWS_SSO", "SAML"]
    #   resp.data.workspace.authentication.saml_configuration_status #=> String, one of ["CONFIGURED", "NOT_CONFIGURED"]
    #   resp.data.workspace.tags #=> Hash<String, String>
    #   resp.data.workspace.tags['key'] #=> String
    #
    def delete_workspace(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteWorkspaceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteWorkspaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteWorkspace
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteWorkspace
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteWorkspace,
        stubs: @stubs,
        params_class: Params::DeleteWorkspaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_workspace
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an API key for a workspace.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteWorkspaceApiKeyInput}.
    #
    # @option params [String] :key_name
    #   <p>The name of the API key to delete.</p>
    #
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to delete.</p>
    #
    # @return [Types::DeleteWorkspaceApiKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_workspace_api_key(
    #     key_name: 'keyName', # required
    #     workspace_id: 'workspaceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteWorkspaceApiKeyOutput
    #   resp.data.key_name #=> String
    #   resp.data.workspace_id #=> String
    #
    def delete_workspace_api_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteWorkspaceApiKeyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteWorkspaceApiKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteWorkspaceApiKey
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteWorkspaceApiKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteWorkspaceApiKey,
        stubs: @stubs,
        params_class: Params::DeleteWorkspaceApiKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_workspace_api_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Displays information about one Amazon Managed Grafana workspace.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeWorkspaceInput}.
    #
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to display information about.</p>
    #
    # @return [Types::DescribeWorkspaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspace(
    #     workspace_id: 'workspaceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeWorkspaceOutput
    #   resp.data.workspace #=> Types::WorkspaceDescription
    #   resp.data.workspace.account_access_type #=> String, one of ["CURRENT_ACCOUNT", "ORGANIZATION"]
    #   resp.data.workspace.created #=> Time
    #   resp.data.workspace.data_sources #=> Array<String>
    #   resp.data.workspace.data_sources[0] #=> String, one of ["AMAZON_OPENSEARCH_SERVICE", "CLOUDWATCH", "PROMETHEUS", "XRAY", "TIMESTREAM", "SITEWISE", "ATHENA", "REDSHIFT"]
    #   resp.data.workspace.description #=> String
    #   resp.data.workspace.endpoint #=> String
    #   resp.data.workspace.grafana_version #=> String
    #   resp.data.workspace.id #=> String
    #   resp.data.workspace.modified #=> Time
    #   resp.data.workspace.name #=> String
    #   resp.data.workspace.organization_role_name #=> String
    #   resp.data.workspace.notification_destinations #=> Array<String>
    #   resp.data.workspace.notification_destinations[0] #=> String, one of ["SNS"]
    #   resp.data.workspace.organizational_units #=> Array<String>
    #   resp.data.workspace.organizational_units[0] #=> String
    #   resp.data.workspace.permission_type #=> String, one of ["CUSTOMER_MANAGED", "SERVICE_MANAGED"]
    #   resp.data.workspace.stack_set_name #=> String
    #   resp.data.workspace.status #=> String, one of ["ACTIVE", "CREATING", "DELETING", "FAILED", "UPDATING", "UPGRADING", "DELETION_FAILED", "CREATION_FAILED", "UPDATE_FAILED", "UPGRADE_FAILED", "LICENSE_REMOVAL_FAILED"]
    #   resp.data.workspace.workspace_role_arn #=> String
    #   resp.data.workspace.license_type #=> String, one of ["ENTERPRISE", "ENTERPRISE_FREE_TRIAL"]
    #   resp.data.workspace.free_trial_consumed #=> Boolean
    #   resp.data.workspace.license_expiration #=> Time
    #   resp.data.workspace.free_trial_expiration #=> Time
    #   resp.data.workspace.authentication #=> Types::AuthenticationSummary
    #   resp.data.workspace.authentication.providers #=> Array<String>
    #   resp.data.workspace.authentication.providers[0] #=> String, one of ["AWS_SSO", "SAML"]
    #   resp.data.workspace.authentication.saml_configuration_status #=> String, one of ["CONFIGURED", "NOT_CONFIGURED"]
    #   resp.data.workspace.tags #=> Hash<String, String>
    #   resp.data.workspace.tags['key'] #=> String
    #
    def describe_workspace(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeWorkspaceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeWorkspaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeWorkspace
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeWorkspace
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeWorkspace,
        stubs: @stubs,
        params_class: Params::DescribeWorkspaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_workspace
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Displays information about the authentication methods used in one Amazon Managed Grafana workspace.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeWorkspaceAuthenticationInput}.
    #
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to return authentication information about.</p>
    #
    # @return [Types::DescribeWorkspaceAuthenticationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_workspace_authentication(
    #     workspace_id: 'workspaceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeWorkspaceAuthenticationOutput
    #   resp.data.authentication #=> Types::AuthenticationDescription
    #   resp.data.authentication.providers #=> Array<String>
    #   resp.data.authentication.providers[0] #=> String, one of ["AWS_SSO", "SAML"]
    #   resp.data.authentication.saml #=> Types::SamlAuthentication
    #   resp.data.authentication.saml.status #=> String, one of ["CONFIGURED", "NOT_CONFIGURED"]
    #   resp.data.authentication.saml.configuration #=> Types::SamlConfiguration
    #   resp.data.authentication.saml.configuration.idp_metadata #=> IdpMetadata
    #   resp.data.authentication.saml.configuration.assertion_attributes #=> Types::AssertionAttributes
    #   resp.data.authentication.saml.configuration.assertion_attributes.name #=> String
    #   resp.data.authentication.saml.configuration.assertion_attributes.login #=> String
    #   resp.data.authentication.saml.configuration.assertion_attributes.email #=> String
    #   resp.data.authentication.saml.configuration.assertion_attributes.groups #=> String
    #   resp.data.authentication.saml.configuration.assertion_attributes.role #=> String
    #   resp.data.authentication.saml.configuration.assertion_attributes.org #=> String
    #   resp.data.authentication.saml.configuration.role_values #=> Types::RoleValues
    #   resp.data.authentication.saml.configuration.role_values.editor #=> Array<String>
    #   resp.data.authentication.saml.configuration.role_values.editor[0] #=> String
    #   resp.data.authentication.saml.configuration.role_values.admin #=> Array<String>
    #   resp.data.authentication.saml.configuration.allowed_organizations #=> Array<String>
    #   resp.data.authentication.saml.configuration.allowed_organizations[0] #=> String
    #   resp.data.authentication.saml.configuration.login_validity_duration #=> Integer
    #   resp.data.authentication.aws_sso #=> Types::AwsSsoAuthentication
    #   resp.data.authentication.aws_sso.sso_client_id #=> String
    #
    def describe_workspace_authentication(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeWorkspaceAuthenticationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeWorkspaceAuthenticationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeWorkspaceAuthentication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeWorkspaceAuthentication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeWorkspaceAuthentication,
        stubs: @stubs,
        params_class: Params::DescribeWorkspaceAuthenticationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_workspace_authentication
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the Grafana Enterprise license from a workspace.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateLicenseInput}.
    #
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to remove the Grafana Enterprise license from.</p>
    #
    # @option params [String] :license_type
    #   <p>The type of license to remove from the workspace.</p>
    #
    # @return [Types::DisassociateLicenseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_license(
    #     workspace_id: 'workspaceId', # required
    #     license_type: 'ENTERPRISE' # required - accepts ["ENTERPRISE", "ENTERPRISE_FREE_TRIAL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateLicenseOutput
    #   resp.data.workspace #=> Types::WorkspaceDescription
    #   resp.data.workspace.account_access_type #=> String, one of ["CURRENT_ACCOUNT", "ORGANIZATION"]
    #   resp.data.workspace.created #=> Time
    #   resp.data.workspace.data_sources #=> Array<String>
    #   resp.data.workspace.data_sources[0] #=> String, one of ["AMAZON_OPENSEARCH_SERVICE", "CLOUDWATCH", "PROMETHEUS", "XRAY", "TIMESTREAM", "SITEWISE", "ATHENA", "REDSHIFT"]
    #   resp.data.workspace.description #=> String
    #   resp.data.workspace.endpoint #=> String
    #   resp.data.workspace.grafana_version #=> String
    #   resp.data.workspace.id #=> String
    #   resp.data.workspace.modified #=> Time
    #   resp.data.workspace.name #=> String
    #   resp.data.workspace.organization_role_name #=> String
    #   resp.data.workspace.notification_destinations #=> Array<String>
    #   resp.data.workspace.notification_destinations[0] #=> String, one of ["SNS"]
    #   resp.data.workspace.organizational_units #=> Array<String>
    #   resp.data.workspace.organizational_units[0] #=> String
    #   resp.data.workspace.permission_type #=> String, one of ["CUSTOMER_MANAGED", "SERVICE_MANAGED"]
    #   resp.data.workspace.stack_set_name #=> String
    #   resp.data.workspace.status #=> String, one of ["ACTIVE", "CREATING", "DELETING", "FAILED", "UPDATING", "UPGRADING", "DELETION_FAILED", "CREATION_FAILED", "UPDATE_FAILED", "UPGRADE_FAILED", "LICENSE_REMOVAL_FAILED"]
    #   resp.data.workspace.workspace_role_arn #=> String
    #   resp.data.workspace.license_type #=> String, one of ["ENTERPRISE", "ENTERPRISE_FREE_TRIAL"]
    #   resp.data.workspace.free_trial_consumed #=> Boolean
    #   resp.data.workspace.license_expiration #=> Time
    #   resp.data.workspace.free_trial_expiration #=> Time
    #   resp.data.workspace.authentication #=> Types::AuthenticationSummary
    #   resp.data.workspace.authentication.providers #=> Array<String>
    #   resp.data.workspace.authentication.providers[0] #=> String, one of ["AWS_SSO", "SAML"]
    #   resp.data.workspace.authentication.saml_configuration_status #=> String, one of ["CONFIGURED", "NOT_CONFIGURED"]
    #   resp.data.workspace.tags #=> Hash<String, String>
    #   resp.data.workspace.tags['key'] #=> String
    #
    def disassociate_license(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateLicenseInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateLicenseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateLicense
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::DisassociateLicense
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateLicense,
        stubs: @stubs,
        params_class: Params::DisassociateLicenseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_license
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the users and groups who have the Grafana <code>Admin</code> and
    #          <code>Editor</code> roles in this workspace. If you use this
    #       operation without specifying <code>userId</code> or <code>groupId</code>, the operation returns
    #          the roles of all users
    #          and groups. If you specify a <code>userId</code> or a <code>groupId</code>, only the roles
    #          for that user or group are returned. If you do this, you can specify only one <code>userId</code> or
    #          one <code>groupId</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPermissionsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in the response.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use when requesting the next set of results. You received this token from a previous
    #            <code>ListPermissions</code> operation.</p>
    #
    # @option params [String] :user_type
    #   <p>(Optional) If you specify <code>SSO_USER</code>, then only the permissions of Amazon Web Services SSO users
    #            are returned. If you specify <code>SSO_GROUP</code>, only the permissions of Amazon Web Services SSO groups
    #               are returned.</p>
    #
    # @option params [String] :user_id
    #   <p>(Optional) Limits the results to only the user that matches this ID.</p>
    #
    # @option params [String] :group_id
    #   <p>(Optional) Limits the results to only the group that matches this ID.</p>
    #
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to list permissions for. This parameter is required.</p>
    #
    # @return [Types::ListPermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_permissions(
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     user_type: 'SSO_USER', # accepts ["SSO_USER", "SSO_GROUP"]
    #     user_id: 'userId',
    #     group_id: 'groupId',
    #     workspace_id: 'workspaceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPermissionsOutput
    #   resp.data.next_token #=> String
    #   resp.data.permissions #=> Array<PermissionEntry>
    #   resp.data.permissions[0] #=> Types::PermissionEntry
    #   resp.data.permissions[0].user #=> Types::User
    #   resp.data.permissions[0].user.id #=> String
    #   resp.data.permissions[0].user.type #=> String, one of ["SSO_USER", "SSO_GROUP"]
    #   resp.data.permissions[0].role #=> String, one of ["ADMIN", "EDITOR", "VIEWER"]
    #
    def list_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPermissionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPermissions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListPermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPermissions,
        stubs: @stubs,
        params_class: Params::ListPermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The <code>ListTagsForResource</code> operation returns the tags that
    #          are associated with the Amazon Managed Service for Grafana resource specified by the <code>resourceArn</code>.
    #          Currently, the only resource that can be tagged is a workspace. </p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource the list of tags are associated with.</p>
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
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
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

    # <p>Returns a list of Amazon Managed Grafana workspaces in the account, with some information
    #          about each workspace. For more complete information about one workspace, use <a href="https://docs.aws.amazon.com/AAMG/latest/APIReference/API_DescribeWorkspace.html">DescribeWorkspace</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListWorkspacesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of workspaces to include in the results.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of workspaces to return. (You receive this token from a
    #            previous <code>ListWorkspaces</code> operation.)</p>
    #
    # @return [Types::ListWorkspacesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_workspaces(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListWorkspacesOutput
    #   resp.data.workspaces #=> Array<WorkspaceSummary>
    #   resp.data.workspaces[0] #=> Types::WorkspaceSummary
    #   resp.data.workspaces[0].created #=> Time
    #   resp.data.workspaces[0].description #=> String
    #   resp.data.workspaces[0].endpoint #=> String
    #   resp.data.workspaces[0].grafana_version #=> String
    #   resp.data.workspaces[0].id #=> String
    #   resp.data.workspaces[0].modified #=> Time
    #   resp.data.workspaces[0].name #=> String
    #   resp.data.workspaces[0].notification_destinations #=> Array<String>
    #   resp.data.workspaces[0].notification_destinations[0] #=> String, one of ["SNS"]
    #   resp.data.workspaces[0].status #=> String, one of ["ACTIVE", "CREATING", "DELETING", "FAILED", "UPDATING", "UPGRADING", "DELETION_FAILED", "CREATION_FAILED", "UPDATE_FAILED", "UPGRADE_FAILED", "LICENSE_REMOVAL_FAILED"]
    #   resp.data.workspaces[0].authentication #=> Types::AuthenticationSummary
    #   resp.data.workspaces[0].authentication.providers #=> Array<String>
    #   resp.data.workspaces[0].authentication.providers[0] #=> String, one of ["AWS_SSO", "SAML"]
    #   resp.data.workspaces[0].authentication.saml_configuration_status #=> String, one of ["CONFIGURED", "NOT_CONFIGURED"]
    #   resp.data.workspaces[0].tags #=> Hash<String, String>
    #   resp.data.workspaces[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_workspaces(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListWorkspacesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListWorkspacesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListWorkspaces
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListWorkspaces
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListWorkspaces,
        stubs: @stubs,
        params_class: Params::ListWorkspacesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_workspaces
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The <code>TagResource</code> operation associates tags with an Amazon Managed Grafana resource.
    #          Currently, the only resource that can be tagged is workspaces. </p>
    #          <p>If you specify a new tag key for the resource, this tag is appended to the list of tags associated
    #          with the resource.  If you specify a tag key that is already associated with the resource, the new tag
    #          value that you specify replaces the previous value for that tag.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource the tag is associated with.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The list of tag keys and values to associate with the resource.  You can associate tag keys only, tags (key and values) only
    #         or a combination of tag keys and tags.</p>
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
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
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

    # <p>The <code>UntagResource</code> operation removes the association of the tag with the Amazon Managed Grafana resource.
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource the tag association is removed from.  </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The key values of the tag to be removed from the resource.</p>
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
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
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

    # <p>Updates which users in a workspace have the Grafana <code>Admin</code> or <code>Editor</code> roles.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePermissionsInput}.
    #
    # @option params [Array<UpdateInstruction>] :update_instruction_batch
    #   <p>An array of structures that contain the permission updates to make.</p>
    #
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to update.</p>
    #
    # @return [Types::UpdatePermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_permissions(
    #     update_instruction_batch: [
    #       {
    #         action: 'ADD', # required - accepts ["ADD", "REVOKE"]
    #         role: 'ADMIN', # required - accepts ["ADMIN", "EDITOR", "VIEWER"]
    #         users: [
    #           {
    #             id: 'id', # required
    #             type: 'SSO_USER' # required - accepts ["SSO_USER", "SSO_GROUP"]
    #           }
    #         ] # required
    #       }
    #     ], # required
    #     workspace_id: 'workspaceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePermissionsOutput
    #   resp.data.errors #=> Array<UpdateError>
    #   resp.data.errors[0] #=> Types::UpdateError
    #   resp.data.errors[0].code #=> Integer
    #   resp.data.errors[0].message #=> String
    #   resp.data.errors[0].caused_by #=> Types::UpdateInstruction
    #   resp.data.errors[0].caused_by.action #=> String, one of ["ADD", "REVOKE"]
    #   resp.data.errors[0].caused_by.role #=> String, one of ["ADMIN", "EDITOR", "VIEWER"]
    #   resp.data.errors[0].caused_by.users #=> Array<User>
    #   resp.data.errors[0].caused_by.users[0] #=> Types::User
    #   resp.data.errors[0].caused_by.users[0].id #=> String
    #   resp.data.errors[0].caused_by.users[0].type #=> String, one of ["SSO_USER", "SSO_GROUP"]
    #
    def update_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePermissionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePermissions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::UpdatePermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePermissions,
        stubs: @stubs,
        params_class: Params::UpdatePermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies an existing Amazon Managed Grafana workspace. If you use this operation and omit any
    #       optional parameters, the existing values of those parameters are not changed.</p>
    #          <p>To modify the user authentication methods that the workspace uses, such as SAML or Amazon Web Services SSO,
    #          use <a href="https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdateWorkspaceAuthentication.html">UpdateWorkspaceAuthentication</a>.</p>
    #          <p>To modify which users in the workspace have the <code>Admin</code> and <code>Editor</code> Grafana roles,
    #          use <a href="https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdatePermissions.html">UpdatePermissions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateWorkspaceInput}.
    #
    # @option params [String] :account_access_type
    #   <p>Specifies whether the workspace can access Amazon Web Services resources in this Amazon Web Services account only, or whether it can also access Amazon Web Services resources in
    #            other accounts in the same organization. If you specify <code>ORGANIZATION</code>, you must
    #            specify which organizational units the workspace can access in the
    #               <code>workspaceOrganizationalUnits</code> parameter.</p>
    #
    # @option params [String] :organization_role_name
    #   <p>The name of an IAM role that already exists to use to access resources through Organizations.</p>
    #
    # @option params [String] :permission_type
    #   <p>If you specify <code>Service Managed</code>, Amazon Managed Grafana automatically creates
    #            the IAM roles and provisions the permissions that the workspace needs to use
    #               Amazon Web Services data sources and notification channels.</p>
    #            <p>If you specify <code>CUSTOMER_MANAGED</code>, you will manage those roles and
    #            permissions yourself. If you are creating this workspace in a member account of an
    #            organization and that account is not a delegated administrator account, and you want the workspace to access data sources in other Amazon Web Services
    #            accounts in the organization, you must choose <code>CUSTOMER_MANAGED</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html">Amazon Managed Grafana permissions and policies for
    #            Amazon Web Services data sources and notification channels</a>
    #            </p>
    #
    # @option params [String] :stack_set_name
    #   <p>The name of the CloudFormation stack set to use to generate IAM roles
    #            to be used for this workspace.</p>
    #
    # @option params [Array<String>] :workspace_data_sources
    #   <p>Specify the Amazon Web Services data sources that you want to be queried in this
    #            workspace. Specifying these data sources here enables Amazon Managed Grafana to create IAM roles and permissions that allow Amazon Managed Grafana to read data from these
    #            sources. You must still add them as data sources in the Grafana console in the
    #            workspace.</p>
    #            <p>If you don't specify a data source here, you can still add it as a data source later in
    #            the workspace console. However, you will then have to manually configure permissions for
    #            it.</p>
    #
    # @option params [String] :workspace_description
    #   <p>A description for the workspace. This is used only to help you identify this workspace.</p>
    #
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to update.</p>
    #
    # @option params [String] :workspace_name
    #   <p>A new name for the workspace to update.</p>
    #
    # @option params [Array<String>] :workspace_notification_destinations
    #   <p>Specify the Amazon Web Services notification channels that you plan to use in this workspace. Specifying these
    #            data sources here enables Amazon Managed Grafana to create IAM roles and permissions that allow
    #            Amazon Managed Grafana to use these channels.</p>
    #
    # @option params [Array<String>] :workspace_organizational_units
    #   <p>Specifies the organizational units that this workspace is allowed to use data sources
    #            from, if this workspace is in an account that is part of an organization.</p>
    #
    # @option params [String] :workspace_role_arn
    #   <p>The workspace needs an IAM role that grants permissions to the Amazon Web Services resources that the
    #            workspace will view data from. If you already have a role that you want to use, specify it here. If you omit
    #            this field and you specify some Amazon Web Services resources in <code>workspaceDataSources</code> or
    #            <code>workspaceNotificationDestinations</code>, a new IAM role with the necessary permissions is
    #            automatically created.</p>
    #
    # @return [Types::UpdateWorkspaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workspace(
    #     account_access_type: 'CURRENT_ACCOUNT', # accepts ["CURRENT_ACCOUNT", "ORGANIZATION"]
    #     organization_role_name: 'organizationRoleName',
    #     permission_type: 'CUSTOMER_MANAGED', # accepts ["CUSTOMER_MANAGED", "SERVICE_MANAGED"]
    #     stack_set_name: 'stackSetName',
    #     workspace_data_sources: [
    #       'AMAZON_OPENSEARCH_SERVICE' # accepts ["AMAZON_OPENSEARCH_SERVICE", "CLOUDWATCH", "PROMETHEUS", "XRAY", "TIMESTREAM", "SITEWISE", "ATHENA", "REDSHIFT"]
    #     ],
    #     workspace_description: 'workspaceDescription',
    #     workspace_id: 'workspaceId', # required
    #     workspace_name: 'workspaceName',
    #     workspace_notification_destinations: [
    #       'SNS' # accepts ["SNS"]
    #     ],
    #     workspace_organizational_units: [
    #       'member'
    #     ],
    #     workspace_role_arn: 'workspaceRoleArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateWorkspaceOutput
    #   resp.data.workspace #=> Types::WorkspaceDescription
    #   resp.data.workspace.account_access_type #=> String, one of ["CURRENT_ACCOUNT", "ORGANIZATION"]
    #   resp.data.workspace.created #=> Time
    #   resp.data.workspace.data_sources #=> Array<String>
    #   resp.data.workspace.data_sources[0] #=> String, one of ["AMAZON_OPENSEARCH_SERVICE", "CLOUDWATCH", "PROMETHEUS", "XRAY", "TIMESTREAM", "SITEWISE", "ATHENA", "REDSHIFT"]
    #   resp.data.workspace.description #=> String
    #   resp.data.workspace.endpoint #=> String
    #   resp.data.workspace.grafana_version #=> String
    #   resp.data.workspace.id #=> String
    #   resp.data.workspace.modified #=> Time
    #   resp.data.workspace.name #=> String
    #   resp.data.workspace.organization_role_name #=> String
    #   resp.data.workspace.notification_destinations #=> Array<String>
    #   resp.data.workspace.notification_destinations[0] #=> String, one of ["SNS"]
    #   resp.data.workspace.organizational_units #=> Array<String>
    #   resp.data.workspace.organizational_units[0] #=> String
    #   resp.data.workspace.permission_type #=> String, one of ["CUSTOMER_MANAGED", "SERVICE_MANAGED"]
    #   resp.data.workspace.stack_set_name #=> String
    #   resp.data.workspace.status #=> String, one of ["ACTIVE", "CREATING", "DELETING", "FAILED", "UPDATING", "UPGRADING", "DELETION_FAILED", "CREATION_FAILED", "UPDATE_FAILED", "UPGRADE_FAILED", "LICENSE_REMOVAL_FAILED"]
    #   resp.data.workspace.workspace_role_arn #=> String
    #   resp.data.workspace.license_type #=> String, one of ["ENTERPRISE", "ENTERPRISE_FREE_TRIAL"]
    #   resp.data.workspace.free_trial_consumed #=> Boolean
    #   resp.data.workspace.license_expiration #=> Time
    #   resp.data.workspace.free_trial_expiration #=> Time
    #   resp.data.workspace.authentication #=> Types::AuthenticationSummary
    #   resp.data.workspace.authentication.providers #=> Array<String>
    #   resp.data.workspace.authentication.providers[0] #=> String, one of ["AWS_SSO", "SAML"]
    #   resp.data.workspace.authentication.saml_configuration_status #=> String, one of ["CONFIGURED", "NOT_CONFIGURED"]
    #   resp.data.workspace.tags #=> Hash<String, String>
    #   resp.data.workspace.tags['key'] #=> String
    #
    def update_workspace(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateWorkspaceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateWorkspaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateWorkspace
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::UpdateWorkspace
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateWorkspace,
        stubs: @stubs,
        params_class: Params::UpdateWorkspaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_workspace
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Use this operation to define the identity provider (IdP) that this workspace
    #          authenticates users from, using SAML. You can also map SAML assertion attributes to
    #          workspace user information and define which groups in the assertion attribute are to have
    #          the <code>Admin</code> and <code>Editor</code> roles in the workspace.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateWorkspaceAuthenticationInput}.
    #
    # @option params [String] :workspace_id
    #   <p>The ID of the workspace to update the authentication for.</p>
    #
    # @option params [Array<String>] :authentication_providers
    #   <p>Specifies whether this workspace uses SAML 2.0, Amazon Web Services Single Sign On, or both to authenticate
    #            users for using the Grafana console within a workspace. For more information,
    #            see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/authentication-in-AMG.html">User authentication in
    #               Amazon Managed Grafana</a>.</p>
    #
    # @option params [SamlConfiguration] :saml_configuration
    #   <p>If the workspace uses SAML, use this structure to
    #            map SAML assertion attributes to workspace user information and
    #            define which groups in the assertion attribute are to have the <code>Admin</code> and <code>Editor</code> roles
    #            in the workspace.</p>
    #
    # @return [Types::UpdateWorkspaceAuthenticationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_workspace_authentication(
    #     workspace_id: 'workspaceId', # required
    #     authentication_providers: [
    #       'AWS_SSO' # accepts ["AWS_SSO", "SAML"]
    #     ], # required
    #     saml_configuration: {
    #       idp_metadata: {
    #         # One of:
    #         url: 'url',
    #         xml: 'xml'
    #       }, # required
    #       assertion_attributes: {
    #         name: 'name',
    #         login: 'login',
    #         email: 'email',
    #         groups: 'groups',
    #         role: 'role',
    #         org: 'org'
    #       },
    #       role_values: {
    #         editor: [
    #           'member'
    #         ],
    #       },
    #       allowed_organizations: [
    #         'member'
    #       ],
    #       login_validity_duration: 1
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateWorkspaceAuthenticationOutput
    #   resp.data.authentication #=> Types::AuthenticationDescription
    #   resp.data.authentication.providers #=> Array<String>
    #   resp.data.authentication.providers[0] #=> String, one of ["AWS_SSO", "SAML"]
    #   resp.data.authentication.saml #=> Types::SamlAuthentication
    #   resp.data.authentication.saml.status #=> String, one of ["CONFIGURED", "NOT_CONFIGURED"]
    #   resp.data.authentication.saml.configuration #=> Types::SamlConfiguration
    #   resp.data.authentication.saml.configuration.idp_metadata #=> IdpMetadata
    #   resp.data.authentication.saml.configuration.assertion_attributes #=> Types::AssertionAttributes
    #   resp.data.authentication.saml.configuration.assertion_attributes.name #=> String
    #   resp.data.authentication.saml.configuration.assertion_attributes.login #=> String
    #   resp.data.authentication.saml.configuration.assertion_attributes.email #=> String
    #   resp.data.authentication.saml.configuration.assertion_attributes.groups #=> String
    #   resp.data.authentication.saml.configuration.assertion_attributes.role #=> String
    #   resp.data.authentication.saml.configuration.assertion_attributes.org #=> String
    #   resp.data.authentication.saml.configuration.role_values #=> Types::RoleValues
    #   resp.data.authentication.saml.configuration.role_values.editor #=> Array<String>
    #   resp.data.authentication.saml.configuration.role_values.editor[0] #=> String
    #   resp.data.authentication.saml.configuration.role_values.admin #=> Array<String>
    #   resp.data.authentication.saml.configuration.allowed_organizations #=> Array<String>
    #   resp.data.authentication.saml.configuration.allowed_organizations[0] #=> String
    #   resp.data.authentication.saml.configuration.login_validity_duration #=> Integer
    #   resp.data.authentication.aws_sso #=> Types::AwsSsoAuthentication
    #   resp.data.authentication.aws_sso.sso_client_id #=> String
    #
    def update_workspace_authentication(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateWorkspaceAuthenticationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateWorkspaceAuthenticationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateWorkspaceAuthentication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ThrottlingException, Errors::ValidationException, Errors::AccessDeniedException]),
        data_parser: Parsers::UpdateWorkspaceAuthentication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateWorkspaceAuthentication,
        stubs: @stubs,
        params_class: Params::UpdateWorkspaceAuthenticationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_workspace_authentication
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
