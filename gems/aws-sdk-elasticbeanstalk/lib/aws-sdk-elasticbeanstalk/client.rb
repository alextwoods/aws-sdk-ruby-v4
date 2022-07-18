# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::ElasticBeanstalk
  # An API client for AWSElasticBeanstalkService
  # See {#initialize} for a full list of supported configuration options
  # <fullname>AWS Elastic Beanstalk</fullname>
  #
  #
  #          <p>AWS Elastic Beanstalk makes it easy for you to create, deploy, and manage scalable,
  #       fault-tolerant applications running on the Amazon Web Services cloud.</p>
  #          <p>For more information about this product, go to the <a href="http://aws.amazon.com/elasticbeanstalk/">AWS Elastic Beanstalk</a> details page. The location of the
  #       latest AWS Elastic Beanstalk WSDL is <a href="https://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl">https://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl</a>.
  #       To install the Software Development Kits (SDKs), Integrated Development Environment (IDE)
  #       Toolkits, and command line tools that enable you to access the API, go to <a href="http://aws.amazon.com/tools/">Tools for Amazon Web Services</a>.</p>
  #          <p>
  #             <b>Endpoints</b>
  #          </p>
  #          <p>For a list of region-specific endpoints that AWS Elastic Beanstalk supports, go to
  #         <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#elasticbeanstalk_region">Regions and Endpoints</a> in the <i>Amazon Web Services
  #       Glossary</i>.</p>
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
    def initialize(config = AWS::SDK::ElasticBeanstalk::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Cancels in-progress environment configuration update or application version
    #       deployment.</p>
    #
    # @param [Hash] params
    #   See {Types::AbortEnvironmentUpdateInput}.
    #
    # @option params [String] :environment_id
    #   <p>This specifies the ID of the environment with the in-progress update that you want to
    #         cancel.</p>
    #
    # @option params [String] :environment_name
    #   <p>This specifies the name of the environment with the in-progress update that you want to
    #         cancel.</p>
    #
    # @return [Types::AbortEnvironmentUpdateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.abort_environment_update(
    #     environment_id: 'EnvironmentId',
    #     environment_name: 'EnvironmentName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AbortEnvironmentUpdateOutput
    #
    def abort_environment_update(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AbortEnvironmentUpdateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AbortEnvironmentUpdateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AbortEnvironmentUpdate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsufficientPrivilegesException]),
        data_parser: Parsers::AbortEnvironmentUpdate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AbortEnvironmentUpdate,
        stubs: @stubs,
        params_class: Params::AbortEnvironmentUpdateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :abort_environment_update
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Applies a scheduled managed action immediately. A managed action can be applied only if
    #       its status is <code>Scheduled</code>. Get the status and action ID of a managed action with
    #         <a>DescribeEnvironmentManagedActions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ApplyEnvironmentManagedActionInput}.
    #
    # @option params [String] :environment_name
    #   <p>The name of the target environment.</p>
    #
    # @option params [String] :environment_id
    #   <p>The environment ID of the target environment.</p>
    #
    # @option params [String] :action_id
    #   <p>The action ID of the scheduled managed action to execute.</p>
    #
    # @return [Types::ApplyEnvironmentManagedActionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.apply_environment_managed_action(
    #     environment_name: 'EnvironmentName',
    #     environment_id: 'EnvironmentId',
    #     action_id: 'ActionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ApplyEnvironmentManagedActionOutput
    #   resp.data.action_id #=> String
    #   resp.data.action_description #=> String
    #   resp.data.action_type #=> String, one of ["InstanceRefresh", "PlatformUpdate", "Unknown"]
    #   resp.data.status #=> String
    #
    def apply_environment_managed_action(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ApplyEnvironmentManagedActionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ApplyEnvironmentManagedActionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ApplyEnvironmentManagedAction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ManagedActionInvalidStateException, Errors::ElasticBeanstalkServiceException]),
        data_parser: Parsers::ApplyEnvironmentManagedAction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ApplyEnvironmentManagedAction,
        stubs: @stubs,
        params_class: Params::ApplyEnvironmentManagedActionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :apply_environment_managed_action
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Add or change the operations role used by an environment. After this call is made, Elastic Beanstalk
    #       uses the associated operations role for permissions to downstream services during subsequent
    #       calls acting on this environment. For more information, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html">Operations roles</a> in the
    #         <i>AWS Elastic Beanstalk Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateEnvironmentOperationsRoleInput}.
    #
    # @option params [String] :environment_name
    #   <p>The name of the environment to which to set the operations role.</p>
    #
    # @option params [String] :operations_role
    #   <p>The Amazon Resource Name (ARN) of an existing IAM role to be used as the environment's
    #         operations role.</p>
    #
    # @return [Types::AssociateEnvironmentOperationsRoleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_environment_operations_role(
    #     environment_name: 'EnvironmentName', # required
    #     operations_role: 'OperationsRole' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateEnvironmentOperationsRoleOutput
    #
    def associate_environment_operations_role(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateEnvironmentOperationsRoleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateEnvironmentOperationsRoleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateEnvironmentOperationsRole
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsufficientPrivilegesException]),
        data_parser: Parsers::AssociateEnvironmentOperationsRole
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateEnvironmentOperationsRole,
        stubs: @stubs,
        params_class: Params::AssociateEnvironmentOperationsRoleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_environment_operations_role
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Checks if the specified CNAME is available.</p>
    #
    # @param [Hash] params
    #   See {Types::CheckDNSAvailabilityInput}.
    #
    # @option params [String] :cname_prefix
    #   <p>The prefix used when this CNAME is reserved.</p>
    #
    # @return [Types::CheckDNSAvailabilityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.check_dns_availability(
    #     cname_prefix: 'CNAMEPrefix' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CheckDNSAvailabilityOutput
    #   resp.data.available #=> Boolean
    #   resp.data.fully_qualified_cname #=> String
    #
    def check_dns_availability(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CheckDNSAvailabilityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CheckDNSAvailabilityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CheckDNSAvailability
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::CheckDNSAvailability
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CheckDNSAvailability,
        stubs: @stubs,
        params_class: Params::CheckDNSAvailabilityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :check_dns_availability
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create or update a group of environments that each run a separate component of a single
    #       application. Takes a list of version labels that specify application source bundles for each
    #       of the environments to create or update. The name of each environment and other required
    #       information must be included in the source bundles in an environment manifest named
    #       <code>env.yaml</code>. See <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-mgmt-compose.html">Compose Environments</a>
    #       for details.</p>
    #
    # @param [Hash] params
    #   See {Types::ComposeEnvironmentsInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of the application to which the specified source bundles belong.</p>
    #
    # @option params [String] :group_name
    #   <p>The name of the group to which the target environments belong. Specify a group name
    #         only if the environment name defined in each target environment's manifest ends with a +
    #         (plus) character. See <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html">Environment Manifest
    #           (env.yaml)</a> for details.</p>
    #
    # @option params [Array<String>] :version_labels
    #   <p>A list of version labels, specifying one or more application source bundles that belong
    #         to the target application. Each source bundle must include an environment manifest that
    #         specifies the name of the environment and the name of the solution stack to use, and
    #         optionally can specify environment links to create.</p>
    #
    # @return [Types::ComposeEnvironmentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.compose_environments(
    #     application_name: 'ApplicationName',
    #     group_name: 'GroupName',
    #     version_labels: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ComposeEnvironmentsOutput
    #   resp.data.environments #=> Array<EnvironmentDescription>
    #   resp.data.environments[0] #=> Types::EnvironmentDescription
    #   resp.data.environments[0].environment_name #=> String
    #   resp.data.environments[0].environment_id #=> String
    #   resp.data.environments[0].application_name #=> String
    #   resp.data.environments[0].version_label #=> String
    #   resp.data.environments[0].solution_stack_name #=> String
    #   resp.data.environments[0].platform_arn #=> String
    #   resp.data.environments[0].template_name #=> String
    #   resp.data.environments[0].description #=> String
    #   resp.data.environments[0].endpoint_url #=> String
    #   resp.data.environments[0].cname #=> String
    #   resp.data.environments[0].date_created #=> Time
    #   resp.data.environments[0].date_updated #=> Time
    #   resp.data.environments[0].status #=> String, one of ["Aborting", "Launching", "Updating", "LinkingFrom", "LinkingTo", "Ready", "Terminating", "Terminated"]
    #   resp.data.environments[0].abortable_operation_in_progress #=> Boolean
    #   resp.data.environments[0].health #=> String, one of ["Green", "Yellow", "Red", "Grey"]
    #   resp.data.environments[0].health_status #=> String, one of ["NoData", "Unknown", "Pending", "Ok", "Info", "Warning", "Degraded", "Severe", "Suspended"]
    #   resp.data.environments[0].resources #=> Types::EnvironmentResourcesDescription
    #   resp.data.environments[0].resources.load_balancer #=> Types::LoadBalancerDescription
    #   resp.data.environments[0].resources.load_balancer.load_balancer_name #=> String
    #   resp.data.environments[0].resources.load_balancer.domain #=> String
    #   resp.data.environments[0].resources.load_balancer.listeners #=> Array<Listener>
    #   resp.data.environments[0].resources.load_balancer.listeners[0] #=> Types::Listener
    #   resp.data.environments[0].resources.load_balancer.listeners[0].protocol #=> String
    #   resp.data.environments[0].resources.load_balancer.listeners[0].port #=> Integer
    #   resp.data.environments[0].tier #=> Types::EnvironmentTier
    #   resp.data.environments[0].tier.name #=> String
    #   resp.data.environments[0].tier.type #=> String
    #   resp.data.environments[0].tier.version #=> String
    #   resp.data.environments[0].environment_links #=> Array<EnvironmentLink>
    #   resp.data.environments[0].environment_links[0] #=> Types::EnvironmentLink
    #   resp.data.environments[0].environment_links[0].link_name #=> String
    #   resp.data.environments[0].environment_links[0].environment_name #=> String
    #   resp.data.environments[0].environment_arn #=> String
    #   resp.data.environments[0].operations_role #=> String
    #   resp.data.next_token #=> String
    #
    def compose_environments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ComposeEnvironmentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ComposeEnvironmentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ComposeEnvironments
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsufficientPrivilegesException, Errors::TooManyEnvironmentsException]),
        data_parser: Parsers::ComposeEnvironments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ComposeEnvironments,
        stubs: @stubs,
        params_class: Params::ComposeEnvironmentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :compose_environments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an application that has one configuration template named <code>default</code>
    #       and no application versions.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateApplicationInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of the application. Must be unique within your account.</p>
    #
    # @option params [String] :description
    #   <p>Your description of the application.</p>
    #
    # @option params [ApplicationResourceLifecycleConfig] :resource_lifecycle_config
    #   <p>Specifies an application resource lifecycle configuration to prevent your application
    #         from accumulating too many versions.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Specifies the tags applied to the application.</p>
    #            <p>Elastic Beanstalk applies these tags only to the application. Environments that you create in the
    #         application don't inherit the tags.</p>
    #
    # @return [Types::CreateApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application(
    #     application_name: 'ApplicationName', # required
    #     description: 'Description',
    #     resource_lifecycle_config: {
    #       service_role: 'ServiceRole',
    #       version_lifecycle_config: {
    #         max_count_rule: {
    #           enabled: false, # required
    #           max_count: 1,
    #           delete_source_from_s3: false
    #         },
    #         max_age_rule: {
    #           enabled: false, # required
    #           max_age_in_days: 1,
    #           delete_source_from_s3: false
    #         }
    #       }
    #     },
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateApplicationOutput
    #   resp.data.application #=> Types::ApplicationDescription
    #   resp.data.application.application_arn #=> String
    #   resp.data.application.application_name #=> String
    #   resp.data.application.description #=> String
    #   resp.data.application.date_created #=> Time
    #   resp.data.application.date_updated #=> Time
    #   resp.data.application.versions #=> Array<String>
    #   resp.data.application.versions[0] #=> String
    #   resp.data.application.configuration_templates #=> Array<String>
    #   resp.data.application.configuration_templates[0] #=> String
    #   resp.data.application.resource_lifecycle_config #=> Types::ApplicationResourceLifecycleConfig
    #   resp.data.application.resource_lifecycle_config.service_role #=> String
    #   resp.data.application.resource_lifecycle_config.version_lifecycle_config #=> Types::ApplicationVersionLifecycleConfig
    #   resp.data.application.resource_lifecycle_config.version_lifecycle_config.max_count_rule #=> Types::MaxCountRule
    #   resp.data.application.resource_lifecycle_config.version_lifecycle_config.max_count_rule.enabled #=> Boolean
    #   resp.data.application.resource_lifecycle_config.version_lifecycle_config.max_count_rule.max_count #=> Integer
    #   resp.data.application.resource_lifecycle_config.version_lifecycle_config.max_count_rule.delete_source_from_s3 #=> Boolean
    #   resp.data.application.resource_lifecycle_config.version_lifecycle_config.max_age_rule #=> Types::MaxAgeRule
    #   resp.data.application.resource_lifecycle_config.version_lifecycle_config.max_age_rule.enabled #=> Boolean
    #   resp.data.application.resource_lifecycle_config.version_lifecycle_config.max_age_rule.max_age_in_days #=> Integer
    #   resp.data.application.resource_lifecycle_config.version_lifecycle_config.max_age_rule.delete_source_from_s3 #=> Boolean
    #
    def create_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateApplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyApplicationsException]),
        data_parser: Parsers::CreateApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateApplication,
        stubs: @stubs,
        params_class: Params::CreateApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an application version for the specified application. You can create an
    #       application version from a source bundle in Amazon S3, a commit in AWS CodeCommit, or the
    #       output of an AWS CodeBuild build as follows:</p>
    #          <p>Specify a commit in an AWS CodeCommit repository with
    #         <code>SourceBuildInformation</code>.</p>
    #          <p>Specify a build in an AWS CodeBuild with <code>SourceBuildInformation</code> and
    #         <code>BuildConfiguration</code>.</p>
    #          <p>Specify a source bundle in S3 with <code>SourceBundle</code>
    #          </p>
    #          <p>Omit both <code>SourceBuildInformation</code> and <code>SourceBundle</code> to use the
    #       default sample application.</p>
    #          <note>
    #             <p>After you create an application version with a specified Amazon S3 bucket and key
    #         location, you can't change that Amazon S3 location. If you change the Amazon S3 location,
    #         you receive an exception when you attempt to launch an environment from the application
    #         version.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateApplicationVersionInput}.
    #
    # @option params [String] :application_name
    #   <p> The name of the application. If no application is found with this name, and
    #           <code>AutoCreateApplication</code> is <code>false</code>, returns an
    #           <code>InvalidParameterValue</code> error. </p>
    #
    # @option params [String] :version_label
    #   <p>A label identifying this version.</p>
    #            <p>Constraint: Must be unique per application. If an application version already exists
    #         with this label for the specified application, AWS Elastic Beanstalk returns an
    #           <code>InvalidParameterValue</code> error. </p>
    #
    # @option params [String] :description
    #   <p>A description of this application version.</p>
    #
    # @option params [SourceBuildInformation] :source_build_information
    #   <p>Specify a commit in an AWS CodeCommit Git repository to use as the source code for the
    #         application version.</p>
    #
    # @option params [S3Location] :source_bundle
    #   <p>The Amazon S3 bucket and key that identify the location of the source bundle for this
    #         version.</p>
    #            <note>
    #               <p>The Amazon S3 bucket must be in the same region as the
    #         environment.</p>
    #            </note>
    #            <p>Specify a source bundle in S3 or a commit in an AWS CodeCommit repository (with
    #           <code>SourceBuildInformation</code>), but not both. If neither <code>SourceBundle</code> nor
    #           <code>SourceBuildInformation</code> are provided, Elastic Beanstalk uses a sample
    #         application.</p>
    #
    # @option params [BuildConfiguration] :build_configuration
    #   <p>Settings for an AWS CodeBuild build.</p>
    #
    # @option params [Boolean] :auto_create_application
    #   <p>Set to <code>true</code> to create an application with the specified name if it doesn't
    #         already exist.</p>
    #
    # @option params [Boolean] :process
    #   <p>Pre-processes and validates the environment manifest (<code>env.yaml</code>) and
    #         configuration files (<code>*.config</code> files in the <code>.ebextensions</code> folder) in
    #         the source bundle. Validating configuration files can identify issues prior to deploying the
    #         application version to an environment.</p>
    #            <p>You must turn processing on for application versions that you create using AWS
    #         CodeBuild or AWS CodeCommit. For application versions built from a source bundle in Amazon S3,
    #         processing is optional.</p>
    #            <note>
    #               <p>The <code>Process</code> option validates Elastic Beanstalk configuration files. It
    #         doesn't validate your application's configuration files, like proxy server or Docker
    #         configuration.</p>
    #            </note>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Specifies the tags applied to the application version.</p>
    #            <p>Elastic Beanstalk applies these tags only to the application version. Environments that use the
    #         application version don't inherit the tags.</p>
    #
    # @return [Types::CreateApplicationVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application_version(
    #     application_name: 'ApplicationName', # required
    #     version_label: 'VersionLabel', # required
    #     description: 'Description',
    #     source_build_information: {
    #       source_type: 'Git', # required - accepts ["Git", "Zip"]
    #       source_repository: 'CodeCommit', # required - accepts ["CodeCommit", "S3"]
    #       source_location: 'SourceLocation' # required
    #     },
    #     source_bundle: {
    #       s3_bucket: 'S3Bucket',
    #       s3_key: 'S3Key'
    #     },
    #     build_configuration: {
    #       artifact_name: 'ArtifactName',
    #       code_build_service_role: 'CodeBuildServiceRole', # required
    #       compute_type: 'BUILD_GENERAL1_SMALL', # accepts ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE"]
    #       image: 'Image', # required
    #       timeout_in_minutes: 1
    #     },
    #     auto_create_application: false,
    #     process: false,
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateApplicationVersionOutput
    #   resp.data.application_version #=> Types::ApplicationVersionDescription
    #   resp.data.application_version.application_version_arn #=> String
    #   resp.data.application_version.application_name #=> String
    #   resp.data.application_version.description #=> String
    #   resp.data.application_version.version_label #=> String
    #   resp.data.application_version.source_build_information #=> Types::SourceBuildInformation
    #   resp.data.application_version.source_build_information.source_type #=> String, one of ["Git", "Zip"]
    #   resp.data.application_version.source_build_information.source_repository #=> String, one of ["CodeCommit", "S3"]
    #   resp.data.application_version.source_build_information.source_location #=> String
    #   resp.data.application_version.build_arn #=> String
    #   resp.data.application_version.source_bundle #=> Types::S3Location
    #   resp.data.application_version.source_bundle.s3_bucket #=> String
    #   resp.data.application_version.source_bundle.s3_key #=> String
    #   resp.data.application_version.date_created #=> Time
    #   resp.data.application_version.date_updated #=> Time
    #   resp.data.application_version.status #=> String, one of ["Processed", "Unprocessed", "Failed", "Processing", "Building"]
    #
    def create_application_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateApplicationVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateApplicationVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateApplicationVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsufficientPrivilegesException, Errors::S3LocationNotInServiceRegionException, Errors::TooManyApplicationsException, Errors::CodeBuildNotInServiceRegionException, Errors::TooManyApplicationVersionsException]),
        data_parser: Parsers::CreateApplicationVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateApplicationVersion,
        stubs: @stubs,
        params_class: Params::CreateApplicationVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_application_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an AWS Elastic Beanstalk configuration template, associated with a specific Elastic Beanstalk
    #       application. You define application configuration settings in a configuration template. You
    #       can then use the configuration template to deploy different versions of the application with
    #       the same configuration settings.</p>
    #          <p>Templates aren't associated with any environment. The <code>EnvironmentName</code>
    #       response element is always <code>null</code>.</p>
    #          <p>Related Topics</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>DescribeConfigurationOptions</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>DescribeConfigurationSettings</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a>ListAvailableSolutionStacks</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateConfigurationTemplateInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of the Elastic Beanstalk application to associate with this configuration
    #         template.</p>
    #
    # @option params [String] :template_name
    #   <p>The name of the configuration template.</p>
    #            <p>Constraint: This name must be unique per application.</p>
    #
    # @option params [String] :solution_stack_name
    #   <p>The name of an Elastic Beanstalk solution stack (platform version) that this configuration uses. For
    #         example, <code>64bit Amazon Linux 2013.09 running Tomcat 7 Java 7</code>. A solution stack
    #         specifies the operating system, runtime, and application server for a configuration template.
    #         It also determines the set of configuration options as well as the possible and default
    #         values. For more information, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/concepts.platforms.html">Supported Platforms</a> in the
    #           <i>AWS Elastic Beanstalk Developer Guide</i>.</p>
    #            <p>You must specify <code>SolutionStackName</code> if you don't specify
    #           <code>PlatformArn</code>, <code>EnvironmentId</code>, or
    #         <code>SourceConfiguration</code>.</p>
    #            <p>Use the <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/api/API_ListAvailableSolutionStacks.html">
    #                  <code>ListAvailableSolutionStacks</code>
    #               </a> API to obtain a list of available
    #         solution stacks.</p>
    #
    # @option params [String] :platform_arn
    #   <p>The Amazon Resource Name (ARN) of the custom platform. For more information, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/custom-platforms.html"> Custom
    #           Platforms</a> in the <i>AWS Elastic Beanstalk Developer Guide</i>.</p>
    #            <note>
    #
    #               <p>If you specify <code>PlatformArn</code>, then don't specify
    #             <code>SolutionStackName</code>.</p>
    #            </note>
    #
    # @option params [SourceConfiguration] :source_configuration
    #   <p>An Elastic Beanstalk configuration template to base this one on. If specified, Elastic Beanstalk uses the configuration values from the specified
    #         configuration template to create a new configuration.</p>
    #            <p>Values specified in <code>OptionSettings</code> override any values obtained from the
    #           <code>SourceConfiguration</code>.</p>
    #            <p>You must specify <code>SourceConfiguration</code> if you don't specify
    #           <code>PlatformArn</code>, <code>EnvironmentId</code>, or
    #         <code>SolutionStackName</code>.</p>
    #            <p>Constraint: If both solution stack name and source configuration are specified, the
    #         solution stack of the source configuration template must match the specified solution stack
    #         name.</p>
    #
    # @option params [String] :environment_id
    #   <p>The ID of an environment whose settings you want to use to create the configuration
    #         template. You must specify <code>EnvironmentId</code> if you don't specify
    #           <code>PlatformArn</code>, <code>SolutionStackName</code>, or
    #           <code>SourceConfiguration</code>.</p>
    #
    # @option params [String] :description
    #   <p>An optional description for this configuration.</p>
    #
    # @option params [Array<ConfigurationOptionSetting>] :option_settings
    #   <p>Option values for the Elastic Beanstalk configuration, such as the instance type. If specified, these
    #         values override the values obtained from the solution stack or the source configuration
    #         template. For a complete list of Elastic Beanstalk configuration options, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/command-options.html">Option Values</a> in the
    #           <i>AWS Elastic Beanstalk Developer Guide</i>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Specifies the tags applied to the configuration template.</p>
    #
    # @return [Types::CreateConfigurationTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configuration_template(
    #     application_name: 'ApplicationName', # required
    #     template_name: 'TemplateName', # required
    #     solution_stack_name: 'SolutionStackName',
    #     platform_arn: 'PlatformArn',
    #     source_configuration: {
    #       application_name: 'ApplicationName',
    #       template_name: 'TemplateName'
    #     },
    #     environment_id: 'EnvironmentId',
    #     description: 'Description',
    #     option_settings: [
    #       {
    #         resource_name: 'ResourceName',
    #         namespace: 'Namespace',
    #         option_name: 'OptionName',
    #         value: 'Value'
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateConfigurationTemplateOutput
    #   resp.data.solution_stack_name #=> String
    #   resp.data.platform_arn #=> String
    #   resp.data.application_name #=> String
    #   resp.data.template_name #=> String
    #   resp.data.description #=> String
    #   resp.data.environment_name #=> String
    #   resp.data.deployment_status #=> String, one of ["deployed", "pending", "failed"]
    #   resp.data.date_created #=> Time
    #   resp.data.date_updated #=> Time
    #   resp.data.option_settings #=> Array<ConfigurationOptionSetting>
    #   resp.data.option_settings[0] #=> Types::ConfigurationOptionSetting
    #   resp.data.option_settings[0].resource_name #=> String
    #   resp.data.option_settings[0].namespace #=> String
    #   resp.data.option_settings[0].option_name #=> String
    #   resp.data.option_settings[0].value #=> String
    #
    def create_configuration_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateConfigurationTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateConfigurationTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateConfigurationTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsufficientPrivilegesException, Errors::TooManyConfigurationTemplatesException, Errors::TooManyBucketsException]),
        data_parser: Parsers::CreateConfigurationTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateConfigurationTemplate,
        stubs: @stubs,
        params_class: Params::CreateConfigurationTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_configuration_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Launches an AWS Elastic Beanstalk environment for the specified application using the specified
    #       configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateEnvironmentInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of the application that is associated with this environment.</p>
    #
    # @option params [String] :environment_name
    #   <p>A unique name for the environment.</p>
    #            <p>Constraint: Must be from 4 to 40 characters in length. The name can contain only
    #         letters, numbers, and hyphens. It can't start or end with a hyphen. This name must be unique
    #         within a region in your account. If the specified name already exists in the region, Elastic Beanstalk returns an
    #           <code>InvalidParameterValue</code> error. </p>
    #            <p>If you don't specify the <code>CNAMEPrefix</code> parameter, the environment name becomes part of
    #         the CNAME, and therefore part of the visible URL for your application.</p>
    #
    # @option params [String] :group_name
    #   <p>The name of the group to which the target environment belongs. Specify a group name
    #         only if the environment's name is specified in an environment manifest and not with the
    #         environment name parameter. See <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html">Environment Manifest
    #           (env.yaml)</a> for details.</p>
    #
    # @option params [String] :description
    #   <p>Your description for this environment.</p>
    #
    # @option params [String] :cname_prefix
    #   <p>If specified, the environment attempts to use this value as the prefix for the CNAME in
    #         your Elastic Beanstalk environment URL. If not specified, the CNAME is generated automatically by
    #         appending a random alphanumeric string to the environment name.</p>
    #
    # @option params [EnvironmentTier] :tier
    #   <p>Specifies the tier to use in creating this environment. The environment tier that you
    #         choose determines whether Elastic Beanstalk provisions resources to support a web application that handles
    #         HTTP(S) requests or a web application that handles background-processing tasks.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Specifies the tags applied to resources in the environment.</p>
    #
    # @option params [String] :version_label
    #   <p>The name of the application version to deploy.</p>
    #            <p>Default: If not specified, Elastic Beanstalk attempts to deploy the sample application.</p>
    #
    # @option params [String] :template_name
    #   <p>The name of the Elastic Beanstalk configuration template to use with the environment.</p>
    #            <note>
    #               <p>If you specify <code>TemplateName</code>, then don't specify
    #             <code>SolutionStackName</code>.</p>
    #            </note>
    #
    # @option params [String] :solution_stack_name
    #   <p>The name of an Elastic Beanstalk solution stack (platform version) to use with the environment. If
    #         specified, Elastic Beanstalk sets the configuration values to the default values associated with the
    #         specified solution stack. For a list of current solution stacks, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/platforms/platforms-supported.html">Elastic Beanstalk Supported Platforms</a> in the <i>AWS Elastic Beanstalk
    #           Platforms</i> guide.</p>
    #            <note>
    #               <p>If you specify <code>SolutionStackName</code>, don't specify <code>PlatformArn</code> or
    #             <code>TemplateName</code>.</p>
    #            </note>
    #
    # @option params [String] :platform_arn
    #   <p>The Amazon Resource Name (ARN) of the custom platform to use with the environment. For
    #         more information, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/custom-platforms.html">Custom Platforms</a> in the
    #           <i>AWS Elastic Beanstalk Developer Guide</i>.</p>
    #            <note>
    #
    #               <p>If you specify <code>PlatformArn</code>, don't specify
    #           <code>SolutionStackName</code>.</p>
    #            </note>
    #
    # @option params [Array<ConfigurationOptionSetting>] :option_settings
    #   <p>If specified, AWS Elastic Beanstalk sets the specified configuration options to the
    #         requested value in the configuration set for the new environment. These override the values
    #         obtained from the solution stack or the configuration template.</p>
    #
    # @option params [Array<OptionSpecification>] :options_to_remove
    #   <p>A list of custom user-defined configuration options to remove from the configuration
    #         set for this new environment.</p>
    #
    # @option params [String] :operations_role
    #   <p>The Amazon Resource Name (ARN) of an existing IAM role to be used as the environment's
    #         operations role. If specified, Elastic Beanstalk uses the operations role for permissions to downstream
    #         services during this call and during subsequent calls acting on this environment. To specify
    #         an operations role, you must have the <code>iam:PassRole</code> permission for the role. For
    #         more information, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html">Operations roles</a> in the
    #           <i>AWS Elastic Beanstalk Developer Guide</i>.</p>
    #
    # @return [Types::CreateEnvironmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment(
    #     application_name: 'ApplicationName', # required
    #     environment_name: 'EnvironmentName',
    #     group_name: 'GroupName',
    #     description: 'Description',
    #     cname_prefix: 'CNAMEPrefix',
    #     tier: {
    #       name: 'Name',
    #       type: 'Type',
    #       version: 'Version'
    #     },
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ],
    #     version_label: 'VersionLabel',
    #     template_name: 'TemplateName',
    #     solution_stack_name: 'SolutionStackName',
    #     platform_arn: 'PlatformArn',
    #     option_settings: [
    #       {
    #         resource_name: 'ResourceName',
    #         namespace: 'Namespace',
    #         option_name: 'OptionName',
    #         value: 'Value'
    #       }
    #     ],
    #     options_to_remove: [
    #       {
    #         resource_name: 'ResourceName',
    #         namespace: 'Namespace',
    #         option_name: 'OptionName'
    #       }
    #     ],
    #     operations_role: 'OperationsRole'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateEnvironmentOutput
    #   resp.data.environment_name #=> String
    #   resp.data.environment_id #=> String
    #   resp.data.application_name #=> String
    #   resp.data.version_label #=> String
    #   resp.data.solution_stack_name #=> String
    #   resp.data.platform_arn #=> String
    #   resp.data.template_name #=> String
    #   resp.data.description #=> String
    #   resp.data.endpoint_url #=> String
    #   resp.data.cname #=> String
    #   resp.data.date_created #=> Time
    #   resp.data.date_updated #=> Time
    #   resp.data.status #=> String, one of ["Aborting", "Launching", "Updating", "LinkingFrom", "LinkingTo", "Ready", "Terminating", "Terminated"]
    #   resp.data.abortable_operation_in_progress #=> Boolean
    #   resp.data.health #=> String, one of ["Green", "Yellow", "Red", "Grey"]
    #   resp.data.health_status #=> String, one of ["NoData", "Unknown", "Pending", "Ok", "Info", "Warning", "Degraded", "Severe", "Suspended"]
    #   resp.data.resources #=> Types::EnvironmentResourcesDescription
    #   resp.data.resources.load_balancer #=> Types::LoadBalancerDescription
    #   resp.data.resources.load_balancer.load_balancer_name #=> String
    #   resp.data.resources.load_balancer.domain #=> String
    #   resp.data.resources.load_balancer.listeners #=> Array<Listener>
    #   resp.data.resources.load_balancer.listeners[0] #=> Types::Listener
    #   resp.data.resources.load_balancer.listeners[0].protocol #=> String
    #   resp.data.resources.load_balancer.listeners[0].port #=> Integer
    #   resp.data.tier #=> Types::EnvironmentTier
    #   resp.data.tier.name #=> String
    #   resp.data.tier.type #=> String
    #   resp.data.tier.version #=> String
    #   resp.data.environment_links #=> Array<EnvironmentLink>
    #   resp.data.environment_links[0] #=> Types::EnvironmentLink
    #   resp.data.environment_links[0].link_name #=> String
    #   resp.data.environment_links[0].environment_name #=> String
    #   resp.data.environment_arn #=> String
    #   resp.data.operations_role #=> String
    #
    def create_environment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEnvironmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEnvironmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEnvironment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsufficientPrivilegesException, Errors::TooManyEnvironmentsException]),
        data_parser: Parsers::CreateEnvironment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateEnvironment,
        stubs: @stubs,
        params_class: Params::CreateEnvironmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_environment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create a new version of your custom platform.</p>
    #
    # @param [Hash] params
    #   See {Types::CreatePlatformVersionInput}.
    #
    # @option params [String] :platform_name
    #   <p>The name of your custom platform.</p>
    #
    # @option params [String] :platform_version
    #   <p>The number, such as 1.0.2, for the new platform version.</p>
    #
    # @option params [S3Location] :platform_definition_bundle
    #   <p>The location of the platform definition archive in Amazon S3.</p>
    #
    # @option params [String] :environment_name
    #   <p>The name of the builder environment.</p>
    #
    # @option params [Array<ConfigurationOptionSetting>] :option_settings
    #   <p>The configuration option settings to apply to the builder environment.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Specifies the tags applied to the new platform version.</p>
    #            <p>Elastic Beanstalk applies these tags only to the platform version. Environments that you create using
    #         the platform version don't inherit the tags.</p>
    #
    # @return [Types::CreatePlatformVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_platform_version(
    #     platform_name: 'PlatformName', # required
    #     platform_version: 'PlatformVersion', # required
    #     platform_definition_bundle: {
    #       s3_bucket: 'S3Bucket',
    #       s3_key: 'S3Key'
    #     }, # required
    #     environment_name: 'EnvironmentName',
    #     option_settings: [
    #       {
    #         resource_name: 'ResourceName',
    #         namespace: 'Namespace',
    #         option_name: 'OptionName',
    #         value: 'Value'
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePlatformVersionOutput
    #   resp.data.platform_summary #=> Types::PlatformSummary
    #   resp.data.platform_summary.platform_arn #=> String
    #   resp.data.platform_summary.platform_owner #=> String
    #   resp.data.platform_summary.platform_status #=> String, one of ["Creating", "Failed", "Ready", "Deleting", "Deleted"]
    #   resp.data.platform_summary.platform_category #=> String
    #   resp.data.platform_summary.operating_system_name #=> String
    #   resp.data.platform_summary.operating_system_version #=> String
    #   resp.data.platform_summary.supported_tier_list #=> Array<String>
    #   resp.data.platform_summary.supported_tier_list[0] #=> String
    #   resp.data.platform_summary.supported_addon_list #=> Array<String>
    #   resp.data.platform_summary.supported_addon_list[0] #=> String
    #   resp.data.platform_summary.platform_lifecycle_state #=> String
    #   resp.data.platform_summary.platform_version #=> String
    #   resp.data.platform_summary.platform_branch_name #=> String
    #   resp.data.platform_summary.platform_branch_lifecycle_state #=> String
    #   resp.data.builder #=> Types::Builder
    #   resp.data.builder.arn #=> String
    #
    def create_platform_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePlatformVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePlatformVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePlatformVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsufficientPrivilegesException, Errors::ElasticBeanstalkServiceException, Errors::TooManyPlatformsException]),
        data_parser: Parsers::CreatePlatformVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePlatformVersion,
        stubs: @stubs,
        params_class: Params::CreatePlatformVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_platform_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a bucket in Amazon S3 to store application versions, logs, and other files used
    #       by Elastic Beanstalk environments. The Elastic Beanstalk console and EB CLI call this API the
    #       first time you create an environment in a region. If the storage location already exists,
    #         <code>CreateStorageLocation</code> still returns the bucket name but does not create a new
    #       bucket.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateStorageLocationInput}.
    #
    # @return [Types::CreateStorageLocationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_storage_location()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateStorageLocationOutput
    #   resp.data.s3_bucket #=> String
    #
    def create_storage_location(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateStorageLocationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateStorageLocationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateStorageLocation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsufficientPrivilegesException, Errors::TooManyBucketsException, Errors::S3SubscriptionRequiredException]),
        data_parser: Parsers::CreateStorageLocation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateStorageLocation,
        stubs: @stubs,
        params_class: Params::CreateStorageLocationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_storage_location
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified application along with all associated versions and
    #       configurations. The application versions will not be deleted from your Amazon S3
    #       bucket.</p>
    #          <note>
    #             <p>You cannot delete an application that has a running environment.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteApplicationInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of the application to delete.</p>
    #
    # @option params [Boolean] :terminate_env_by_force
    #   <p>When set to true, running environments will be terminated before deleting the
    #         application.</p>
    #
    # @return [Types::DeleteApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application(
    #     application_name: 'ApplicationName', # required
    #     terminate_env_by_force: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteApplicationOutput
    #
    def delete_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteApplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationInProgressException]),
        data_parser: Parsers::DeleteApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteApplication,
        stubs: @stubs,
        params_class: Params::DeleteApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified version from the specified application.</p>
    #          <note>
    #             <p>You cannot delete an application version that is associated with a running
    #         environment.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteApplicationVersionInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of the application to which the version belongs.</p>
    #
    # @option params [String] :version_label
    #   <p>The label of the version to delete.</p>
    #
    # @option params [Boolean] :delete_source_bundle
    #   <p>Set to <code>true</code> to delete the source bundle from your storage bucket.
    #         Otherwise, the application version is deleted only from Elastic Beanstalk and the source
    #         bundle remains in Amazon S3.</p>
    #
    # @return [Types::DeleteApplicationVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application_version(
    #     application_name: 'ApplicationName', # required
    #     version_label: 'VersionLabel', # required
    #     delete_source_bundle: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteApplicationVersionOutput
    #
    def delete_application_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteApplicationVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteApplicationVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteApplicationVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsufficientPrivilegesException, Errors::SourceBundleDeletionException, Errors::OperationInProgressException, Errors::S3LocationNotInServiceRegionException]),
        data_parser: Parsers::DeleteApplicationVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteApplicationVersion,
        stubs: @stubs,
        params_class: Params::DeleteApplicationVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_application_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified configuration template.</p>
    #          <note>
    #             <p>When you launch an environment using a configuration template, the environment gets a
    #         copy of the template. You can delete or modify the environment's copy of the template
    #         without affecting the running environment.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteConfigurationTemplateInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of the application to delete the configuration template from.</p>
    #
    # @option params [String] :template_name
    #   <p>The name of the configuration template to delete.</p>
    #
    # @return [Types::DeleteConfigurationTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configuration_template(
    #     application_name: 'ApplicationName', # required
    #     template_name: 'TemplateName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteConfigurationTemplateOutput
    #
    def delete_configuration_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteConfigurationTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteConfigurationTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteConfigurationTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationInProgressException]),
        data_parser: Parsers::DeleteConfigurationTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteConfigurationTemplate,
        stubs: @stubs,
        params_class: Params::DeleteConfigurationTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_configuration_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the draft configuration associated with the running environment.</p>
    #          <p>Updating a running environment with any configuration changes creates a draft
    #       configuration set. You can get the draft configuration using <a>DescribeConfigurationSettings</a> while the update is in progress or if the update
    #       fails. The <code>DeploymentStatus</code> for the draft configuration indicates whether the
    #       deployment is in process or has failed. The draft configuration remains in existence until it
    #       is deleted with this action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEnvironmentConfigurationInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of the application the environment is associated with.</p>
    #
    # @option params [String] :environment_name
    #   <p>The name of the environment to delete the draft configuration from.</p>
    #
    # @return [Types::DeleteEnvironmentConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment_configuration(
    #     application_name: 'ApplicationName', # required
    #     environment_name: 'EnvironmentName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEnvironmentConfigurationOutput
    #
    def delete_environment_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEnvironmentConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEnvironmentConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEnvironmentConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DeleteEnvironmentConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEnvironmentConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteEnvironmentConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_environment_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified version of a custom platform.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePlatformVersionInput}.
    #
    # @option params [String] :platform_arn
    #   <p>The ARN of the version of the custom platform.</p>
    #
    # @return [Types::DeletePlatformVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_platform_version(
    #     platform_arn: 'PlatformArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePlatformVersionOutput
    #   resp.data.platform_summary #=> Types::PlatformSummary
    #   resp.data.platform_summary.platform_arn #=> String
    #   resp.data.platform_summary.platform_owner #=> String
    #   resp.data.platform_summary.platform_status #=> String, one of ["Creating", "Failed", "Ready", "Deleting", "Deleted"]
    #   resp.data.platform_summary.platform_category #=> String
    #   resp.data.platform_summary.operating_system_name #=> String
    #   resp.data.platform_summary.operating_system_version #=> String
    #   resp.data.platform_summary.supported_tier_list #=> Array<String>
    #   resp.data.platform_summary.supported_tier_list[0] #=> String
    #   resp.data.platform_summary.supported_addon_list #=> Array<String>
    #   resp.data.platform_summary.supported_addon_list[0] #=> String
    #   resp.data.platform_summary.platform_lifecycle_state #=> String
    #   resp.data.platform_summary.platform_version #=> String
    #   resp.data.platform_summary.platform_branch_name #=> String
    #   resp.data.platform_summary.platform_branch_lifecycle_state #=> String
    #
    def delete_platform_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePlatformVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePlatformVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePlatformVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsufficientPrivilegesException, Errors::PlatformVersionStillReferencedException, Errors::OperationInProgressException, Errors::ElasticBeanstalkServiceException]),
        data_parser: Parsers::DeletePlatformVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePlatformVersion,
        stubs: @stubs,
        params_class: Params::DeletePlatformVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_platform_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns attributes related to AWS Elastic Beanstalk that are associated with the calling AWS
    #       account.</p>
    #          <p>The result currently has one set of attributes—resource quotas.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAccountAttributesInput}.
    #
    # @return [Types::DescribeAccountAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_attributes()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAccountAttributesOutput
    #   resp.data.resource_quotas #=> Types::ResourceQuotas
    #   resp.data.resource_quotas.application_quota #=> Types::ResourceQuota
    #   resp.data.resource_quotas.application_quota.maximum #=> Integer
    #   resp.data.resource_quotas.application_version_quota #=> Types::ResourceQuota
    #   resp.data.resource_quotas.environment_quota #=> Types::ResourceQuota
    #   resp.data.resource_quotas.configuration_template_quota #=> Types::ResourceQuota
    #   resp.data.resource_quotas.custom_platform_quota #=> Types::ResourceQuota
    #
    def describe_account_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAccountAttributesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAccountAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAccountAttributes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsufficientPrivilegesException]),
        data_parser: Parsers::DescribeAccountAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAccountAttributes,
        stubs: @stubs,
        params_class: Params::DescribeAccountAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_account_attributes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieve a list of application versions.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeApplicationVersionsInput}.
    #
    # @option params [String] :application_name
    #   <p>Specify an application name to show only application versions for that
    #         application.</p>
    #
    # @option params [Array<String>] :version_labels
    #   <p>Specify a version label to show a specific application version.</p>
    #
    # @option params [Integer] :max_records
    #   <p>For a paginated request. Specify a maximum number of application versions to include in
    #         each response.</p>
    #            <p>If no <code>MaxRecords</code> is specified, all available application versions are
    #         retrieved in a single response.</p>
    #
    # @option params [String] :next_token
    #   <p>For a paginated request. Specify a token from a previous response page to retrieve the next response page. All other
    #         parameter values must be identical to the ones specified in the initial request.</p>
    #            <p>If no <code>NextToken</code> is specified, the first page is retrieved.</p>
    #
    # @return [Types::DescribeApplicationVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_application_versions(
    #     application_name: 'ApplicationName',
    #     version_labels: [
    #       'member'
    #     ],
    #     max_records: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeApplicationVersionsOutput
    #   resp.data.application_versions #=> Array<ApplicationVersionDescription>
    #   resp.data.application_versions[0] #=> Types::ApplicationVersionDescription
    #   resp.data.application_versions[0].application_version_arn #=> String
    #   resp.data.application_versions[0].application_name #=> String
    #   resp.data.application_versions[0].description #=> String
    #   resp.data.application_versions[0].version_label #=> String
    #   resp.data.application_versions[0].source_build_information #=> Types::SourceBuildInformation
    #   resp.data.application_versions[0].source_build_information.source_type #=> String, one of ["Git", "Zip"]
    #   resp.data.application_versions[0].source_build_information.source_repository #=> String, one of ["CodeCommit", "S3"]
    #   resp.data.application_versions[0].source_build_information.source_location #=> String
    #   resp.data.application_versions[0].build_arn #=> String
    #   resp.data.application_versions[0].source_bundle #=> Types::S3Location
    #   resp.data.application_versions[0].source_bundle.s3_bucket #=> String
    #   resp.data.application_versions[0].source_bundle.s3_key #=> String
    #   resp.data.application_versions[0].date_created #=> Time
    #   resp.data.application_versions[0].date_updated #=> Time
    #   resp.data.application_versions[0].status #=> String, one of ["Processed", "Unprocessed", "Failed", "Processing", "Building"]
    #   resp.data.next_token #=> String
    #
    def describe_application_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeApplicationVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeApplicationVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeApplicationVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DescribeApplicationVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeApplicationVersions,
        stubs: @stubs,
        params_class: Params::DescribeApplicationVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_application_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the descriptions of existing applications.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeApplicationsInput}.
    #
    # @option params [Array<String>] :application_names
    #   <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to only include
    #         those with the specified names.</p>
    #
    # @return [Types::DescribeApplicationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_applications(
    #     application_names: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeApplicationsOutput
    #   resp.data.applications #=> Array<ApplicationDescription>
    #   resp.data.applications[0] #=> Types::ApplicationDescription
    #   resp.data.applications[0].application_arn #=> String
    #   resp.data.applications[0].application_name #=> String
    #   resp.data.applications[0].description #=> String
    #   resp.data.applications[0].date_created #=> Time
    #   resp.data.applications[0].date_updated #=> Time
    #   resp.data.applications[0].versions #=> Array<String>
    #   resp.data.applications[0].versions[0] #=> String
    #   resp.data.applications[0].configuration_templates #=> Array<String>
    #   resp.data.applications[0].configuration_templates[0] #=> String
    #   resp.data.applications[0].resource_lifecycle_config #=> Types::ApplicationResourceLifecycleConfig
    #   resp.data.applications[0].resource_lifecycle_config.service_role #=> String
    #   resp.data.applications[0].resource_lifecycle_config.version_lifecycle_config #=> Types::ApplicationVersionLifecycleConfig
    #   resp.data.applications[0].resource_lifecycle_config.version_lifecycle_config.max_count_rule #=> Types::MaxCountRule
    #   resp.data.applications[0].resource_lifecycle_config.version_lifecycle_config.max_count_rule.enabled #=> Boolean
    #   resp.data.applications[0].resource_lifecycle_config.version_lifecycle_config.max_count_rule.max_count #=> Integer
    #   resp.data.applications[0].resource_lifecycle_config.version_lifecycle_config.max_count_rule.delete_source_from_s3 #=> Boolean
    #   resp.data.applications[0].resource_lifecycle_config.version_lifecycle_config.max_age_rule #=> Types::MaxAgeRule
    #   resp.data.applications[0].resource_lifecycle_config.version_lifecycle_config.max_age_rule.enabled #=> Boolean
    #   resp.data.applications[0].resource_lifecycle_config.version_lifecycle_config.max_age_rule.max_age_in_days #=> Integer
    #   resp.data.applications[0].resource_lifecycle_config.version_lifecycle_config.max_age_rule.delete_source_from_s3 #=> Boolean
    #
    def describe_applications(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeApplicationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeApplicationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeApplications
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DescribeApplications
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeApplications,
        stubs: @stubs,
        params_class: Params::DescribeApplicationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_applications
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the configuration options that are used in a particular configuration
    #       template or environment, or that a specified solution stack defines. The description includes
    #       the values the options, their default values, and an indication of the required action on a
    #       running environment if an option value is changed.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeConfigurationOptionsInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of the application associated with the configuration template or environment.
    #         Only needed if you want to describe the configuration options associated with either the
    #         configuration template or environment.</p>
    #
    # @option params [String] :template_name
    #   <p>The name of the configuration template whose configuration options you want to
    #         describe.</p>
    #
    # @option params [String] :environment_name
    #   <p>The name of the environment whose configuration options you want to describe.</p>
    #
    # @option params [String] :solution_stack_name
    #   <p>The name of the solution stack whose configuration options you want to
    #         describe.</p>
    #
    # @option params [String] :platform_arn
    #   <p>The ARN of the custom platform.</p>
    #
    # @option params [Array<OptionSpecification>] :options
    #   <p>If specified, restricts the descriptions to only the specified options.</p>
    #
    # @return [Types::DescribeConfigurationOptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_configuration_options(
    #     application_name: 'ApplicationName',
    #     template_name: 'TemplateName',
    #     environment_name: 'EnvironmentName',
    #     solution_stack_name: 'SolutionStackName',
    #     platform_arn: 'PlatformArn',
    #     options: [
    #       {
    #         resource_name: 'ResourceName',
    #         namespace: 'Namespace',
    #         option_name: 'OptionName'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeConfigurationOptionsOutput
    #   resp.data.solution_stack_name #=> String
    #   resp.data.platform_arn #=> String
    #   resp.data.options #=> Array<ConfigurationOptionDescription>
    #   resp.data.options[0] #=> Types::ConfigurationOptionDescription
    #   resp.data.options[0].namespace #=> String
    #   resp.data.options[0].name #=> String
    #   resp.data.options[0].default_value #=> String
    #   resp.data.options[0].change_severity #=> String
    #   resp.data.options[0].user_defined #=> Boolean
    #   resp.data.options[0].value_type #=> String, one of ["Scalar", "List"]
    #   resp.data.options[0].value_options #=> Array<String>
    #   resp.data.options[0].value_options[0] #=> String
    #   resp.data.options[0].min_value #=> Integer
    #   resp.data.options[0].max_value #=> Integer
    #   resp.data.options[0].max_length #=> Integer
    #   resp.data.options[0].regex #=> Types::OptionRestrictionRegex
    #   resp.data.options[0].regex.pattern #=> String
    #   resp.data.options[0].regex.label #=> String
    #
    def describe_configuration_options(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeConfigurationOptionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeConfigurationOptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeConfigurationOptions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyBucketsException]),
        data_parser: Parsers::DescribeConfigurationOptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeConfigurationOptions,
        stubs: @stubs,
        params_class: Params::DescribeConfigurationOptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_configuration_options
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a description of the settings for the specified configuration set, that is,
    #       either a configuration template or the configuration set associated with a running
    #       environment.</p>
    #          <p>When describing the settings for the configuration set associated with a running
    #       environment, it is possible to receive two sets of setting descriptions. One is the deployed
    #       configuration set, and the other is a draft configuration of an environment that is either in
    #       the process of deployment or that failed to deploy.</p>
    #          <p>Related Topics</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>DeleteEnvironmentConfiguration</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DescribeConfigurationSettingsInput}.
    #
    # @option params [String] :application_name
    #   <p>The application for the environment or configuration template.</p>
    #
    # @option params [String] :template_name
    #   <p>The name of the configuration template to describe.</p>
    #            <p> Conditional: You must specify either this parameter or an EnvironmentName, but not
    #         both. If you specify both, AWS Elastic Beanstalk returns an
    #           <code>InvalidParameterCombination</code> error. If you do not specify either, AWS Elastic
    #         Beanstalk returns a <code>MissingRequiredParameter</code> error. </p>
    #
    # @option params [String] :environment_name
    #   <p>The name of the environment to describe.</p>
    #            <p> Condition: You must specify either this or a TemplateName, but not both. If you
    #         specify both, AWS Elastic Beanstalk returns an <code>InvalidParameterCombination</code> error.
    #         If you do not specify either, AWS Elastic Beanstalk returns
    #           <code>MissingRequiredParameter</code> error. </p>
    #
    # @return [Types::DescribeConfigurationSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_configuration_settings(
    #     application_name: 'ApplicationName', # required
    #     template_name: 'TemplateName',
    #     environment_name: 'EnvironmentName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeConfigurationSettingsOutput
    #   resp.data.configuration_settings #=> Array<ConfigurationSettingsDescription>
    #   resp.data.configuration_settings[0] #=> Types::ConfigurationSettingsDescription
    #   resp.data.configuration_settings[0].solution_stack_name #=> String
    #   resp.data.configuration_settings[0].platform_arn #=> String
    #   resp.data.configuration_settings[0].application_name #=> String
    #   resp.data.configuration_settings[0].template_name #=> String
    #   resp.data.configuration_settings[0].description #=> String
    #   resp.data.configuration_settings[0].environment_name #=> String
    #   resp.data.configuration_settings[0].deployment_status #=> String, one of ["deployed", "pending", "failed"]
    #   resp.data.configuration_settings[0].date_created #=> Time
    #   resp.data.configuration_settings[0].date_updated #=> Time
    #   resp.data.configuration_settings[0].option_settings #=> Array<ConfigurationOptionSetting>
    #   resp.data.configuration_settings[0].option_settings[0] #=> Types::ConfigurationOptionSetting
    #   resp.data.configuration_settings[0].option_settings[0].resource_name #=> String
    #   resp.data.configuration_settings[0].option_settings[0].namespace #=> String
    #   resp.data.configuration_settings[0].option_settings[0].option_name #=> String
    #   resp.data.configuration_settings[0].option_settings[0].value #=> String
    #
    def describe_configuration_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeConfigurationSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeConfigurationSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeConfigurationSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyBucketsException]),
        data_parser: Parsers::DescribeConfigurationSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeConfigurationSettings,
        stubs: @stubs,
        params_class: Params::DescribeConfigurationSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_configuration_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the overall health of the specified environment. The
    #         <b>DescribeEnvironmentHealth</b> operation is only available with
    #       AWS Elastic Beanstalk Enhanced Health.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEnvironmentHealthInput}.
    #
    # @option params [String] :environment_name
    #   <p>Specify the environment by name.</p>
    #            <p>You must specify either this or an EnvironmentName, or both.</p>
    #
    # @option params [String] :environment_id
    #   <p>Specify the environment by ID.</p>
    #            <p>You must specify either this or an EnvironmentName, or both.</p>
    #
    # @option params [Array<String>] :attribute_names
    #   <p>Specify the response elements to return. To retrieve all attributes, set to
    #           <code>All</code>. If no attribute names are specified, returns the name of the
    #         environment.</p>
    #
    # @return [Types::DescribeEnvironmentHealthOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_environment_health(
    #     environment_name: 'EnvironmentName',
    #     environment_id: 'EnvironmentId',
    #     attribute_names: [
    #       'Status' # accepts ["Status", "Color", "Causes", "ApplicationMetrics", "InstancesHealth", "All", "HealthStatus", "RefreshedAt"]
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEnvironmentHealthOutput
    #   resp.data.environment_name #=> String
    #   resp.data.health_status #=> String
    #   resp.data.status #=> String, one of ["Green", "Yellow", "Red", "Grey"]
    #   resp.data.color #=> String
    #   resp.data.causes #=> Array<String>
    #   resp.data.causes[0] #=> String
    #   resp.data.application_metrics #=> Types::ApplicationMetrics
    #   resp.data.application_metrics.duration #=> Integer
    #   resp.data.application_metrics.request_count #=> Integer
    #   resp.data.application_metrics.status_codes #=> Types::StatusCodes
    #   resp.data.application_metrics.status_codes.status2xx #=> Integer
    #   resp.data.application_metrics.status_codes.status3xx #=> Integer
    #   resp.data.application_metrics.status_codes.status4xx #=> Integer
    #   resp.data.application_metrics.status_codes.status5xx #=> Integer
    #   resp.data.application_metrics.latency #=> Types::Latency
    #   resp.data.application_metrics.latency.p999 #=> Float
    #   resp.data.application_metrics.latency.p99 #=> Float
    #   resp.data.application_metrics.latency.p95 #=> Float
    #   resp.data.application_metrics.latency.p90 #=> Float
    #   resp.data.application_metrics.latency.p85 #=> Float
    #   resp.data.application_metrics.latency.p75 #=> Float
    #   resp.data.application_metrics.latency.p50 #=> Float
    #   resp.data.application_metrics.latency.p10 #=> Float
    #   resp.data.instances_health #=> Types::InstanceHealthSummary
    #   resp.data.instances_health.no_data #=> Integer
    #   resp.data.instances_health.unknown #=> Integer
    #   resp.data.instances_health.pending #=> Integer
    #   resp.data.instances_health.ok #=> Integer
    #   resp.data.instances_health.info #=> Integer
    #   resp.data.instances_health.warning #=> Integer
    #   resp.data.instances_health.degraded #=> Integer
    #   resp.data.instances_health.severe #=> Integer
    #   resp.data.refreshed_at #=> Time
    #
    def describe_environment_health(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEnvironmentHealthInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEnvironmentHealthInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEnvironmentHealth
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ElasticBeanstalkServiceException]),
        data_parser: Parsers::DescribeEnvironmentHealth
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEnvironmentHealth,
        stubs: @stubs,
        params_class: Params::DescribeEnvironmentHealthOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_environment_health
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists an environment's completed and failed managed actions.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEnvironmentManagedActionHistoryInput}.
    #
    # @option params [String] :environment_id
    #   <p>The environment ID of the target environment.</p>
    #
    # @option params [String] :environment_name
    #   <p>The name of the target environment.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token returned by a previous request.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of items to return for a single request.</p>
    #
    # @return [Types::DescribeEnvironmentManagedActionHistoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_environment_managed_action_history(
    #     environment_id: 'EnvironmentId',
    #     environment_name: 'EnvironmentName',
    #     next_token: 'NextToken',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEnvironmentManagedActionHistoryOutput
    #   resp.data.managed_action_history_items #=> Array<ManagedActionHistoryItem>
    #   resp.data.managed_action_history_items[0] #=> Types::ManagedActionHistoryItem
    #   resp.data.managed_action_history_items[0].action_id #=> String
    #   resp.data.managed_action_history_items[0].action_type #=> String, one of ["InstanceRefresh", "PlatformUpdate", "Unknown"]
    #   resp.data.managed_action_history_items[0].action_description #=> String
    #   resp.data.managed_action_history_items[0].failure_type #=> String, one of ["UpdateCancelled", "CancellationFailed", "RollbackFailed", "RollbackSuccessful", "InternalFailure", "InvalidEnvironmentState", "PermissionsError"]
    #   resp.data.managed_action_history_items[0].status #=> String, one of ["Completed", "Failed", "Unknown"]
    #   resp.data.managed_action_history_items[0].failure_description #=> String
    #   resp.data.managed_action_history_items[0].executed_time #=> Time
    #   resp.data.managed_action_history_items[0].finished_time #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_environment_managed_action_history(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEnvironmentManagedActionHistoryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEnvironmentManagedActionHistoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEnvironmentManagedActionHistory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ElasticBeanstalkServiceException]),
        data_parser: Parsers::DescribeEnvironmentManagedActionHistory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEnvironmentManagedActionHistory,
        stubs: @stubs,
        params_class: Params::DescribeEnvironmentManagedActionHistoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_environment_managed_action_history
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists an environment's upcoming and in-progress managed actions.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEnvironmentManagedActionsInput}.
    #
    # @option params [String] :environment_name
    #   <p>The name of the target environment.</p>
    #
    # @option params [String] :environment_id
    #   <p>The environment ID of the target environment.</p>
    #
    # @option params [String] :status
    #   <p>To show only actions with a particular status, specify a status.</p>
    #
    # @return [Types::DescribeEnvironmentManagedActionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_environment_managed_actions(
    #     environment_name: 'EnvironmentName',
    #     environment_id: 'EnvironmentId',
    #     status: 'Scheduled' # accepts ["Scheduled", "Pending", "Running", "Unknown"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEnvironmentManagedActionsOutput
    #   resp.data.managed_actions #=> Array<ManagedAction>
    #   resp.data.managed_actions[0] #=> Types::ManagedAction
    #   resp.data.managed_actions[0].action_id #=> String
    #   resp.data.managed_actions[0].action_description #=> String
    #   resp.data.managed_actions[0].action_type #=> String, one of ["InstanceRefresh", "PlatformUpdate", "Unknown"]
    #   resp.data.managed_actions[0].status #=> String, one of ["Scheduled", "Pending", "Running", "Unknown"]
    #   resp.data.managed_actions[0].window_start_time #=> Time
    #
    def describe_environment_managed_actions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEnvironmentManagedActionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEnvironmentManagedActionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEnvironmentManagedActions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ElasticBeanstalkServiceException]),
        data_parser: Parsers::DescribeEnvironmentManagedActions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEnvironmentManagedActions,
        stubs: @stubs,
        params_class: Params::DescribeEnvironmentManagedActionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_environment_managed_actions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns AWS resources for this environment.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEnvironmentResourcesInput}.
    #
    # @option params [String] :environment_id
    #   <p>The ID of the environment to retrieve AWS resource usage data.</p>
    #            <p> Condition: You must specify either this or an EnvironmentName, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    #
    # @option params [String] :environment_name
    #   <p>The name of the environment to retrieve AWS resource usage data.</p>
    #            <p> Condition: You must specify either this or an EnvironmentId, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    #
    # @return [Types::DescribeEnvironmentResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_environment_resources(
    #     environment_id: 'EnvironmentId',
    #     environment_name: 'EnvironmentName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEnvironmentResourcesOutput
    #   resp.data.environment_resources #=> Types::EnvironmentResourceDescription
    #   resp.data.environment_resources.environment_name #=> String
    #   resp.data.environment_resources.auto_scaling_groups #=> Array<AutoScalingGroup>
    #   resp.data.environment_resources.auto_scaling_groups[0] #=> Types::AutoScalingGroup
    #   resp.data.environment_resources.auto_scaling_groups[0].name #=> String
    #   resp.data.environment_resources.instances #=> Array<Instance>
    #   resp.data.environment_resources.instances[0] #=> Types::Instance
    #   resp.data.environment_resources.instances[0].id #=> String
    #   resp.data.environment_resources.launch_configurations #=> Array<LaunchConfiguration>
    #   resp.data.environment_resources.launch_configurations[0] #=> Types::LaunchConfiguration
    #   resp.data.environment_resources.launch_configurations[0].name #=> String
    #   resp.data.environment_resources.launch_templates #=> Array<LaunchTemplate>
    #   resp.data.environment_resources.launch_templates[0] #=> Types::LaunchTemplate
    #   resp.data.environment_resources.launch_templates[0].id #=> String
    #   resp.data.environment_resources.load_balancers #=> Array<LoadBalancer>
    #   resp.data.environment_resources.load_balancers[0] #=> Types::LoadBalancer
    #   resp.data.environment_resources.load_balancers[0].name #=> String
    #   resp.data.environment_resources.triggers #=> Array<Trigger>
    #   resp.data.environment_resources.triggers[0] #=> Types::Trigger
    #   resp.data.environment_resources.triggers[0].name #=> String
    #   resp.data.environment_resources.queues #=> Array<Queue>
    #   resp.data.environment_resources.queues[0] #=> Types::Queue
    #   resp.data.environment_resources.queues[0].name #=> String
    #   resp.data.environment_resources.queues[0].url #=> String
    #
    def describe_environment_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEnvironmentResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEnvironmentResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEnvironmentResources
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsufficientPrivilegesException]),
        data_parser: Parsers::DescribeEnvironmentResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEnvironmentResources,
        stubs: @stubs,
        params_class: Params::DescribeEnvironmentResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_environment_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns descriptions for existing environments.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEnvironmentsInput}.
    #
    # @option params [String] :application_name
    #   <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only
    #         those that are associated with this application.</p>
    #
    # @option params [String] :version_label
    #   <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only
    #         those that are associated with this application version.</p>
    #
    # @option params [Array<String>] :environment_ids
    #   <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only
    #         those that have the specified IDs.</p>
    #
    # @option params [Array<String>] :environment_names
    #   <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only
    #         those that have the specified names.</p>
    #
    # @option params [Boolean] :include_deleted
    #   <p>Indicates whether to include deleted environments:</p>
    #            <p>
    #               <code>true</code>: Environments that have been deleted after
    #         <code>IncludedDeletedBackTo</code> are displayed.</p>
    #            <p>
    #               <code>false</code>: Do not include deleted environments.</p>
    #
    # @option params [Time] :included_deleted_back_to
    #   <p> If specified when <code>IncludeDeleted</code> is set to <code>true</code>, then
    #         environments deleted after this date are displayed. </p>
    #
    # @option params [Integer] :max_records
    #   <p>For a paginated request. Specify a maximum number of environments to include in
    #         each response.</p>
    #            <p>If no <code>MaxRecords</code> is specified, all available environments are
    #         retrieved in a single response.</p>
    #
    # @option params [String] :next_token
    #   <p>For a paginated request. Specify a token from a previous response page to retrieve the next response page. All other
    #         parameter values must be identical to the ones specified in the initial request.</p>
    #            <p>If no <code>NextToken</code> is specified, the first page is retrieved.</p>
    #
    # @return [Types::DescribeEnvironmentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_environments(
    #     application_name: 'ApplicationName',
    #     version_label: 'VersionLabel',
    #     environment_ids: [
    #       'member'
    #     ],
    #     environment_names: [
    #       'member'
    #     ],
    #     include_deleted: false,
    #     included_deleted_back_to: Time.now,
    #     max_records: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEnvironmentsOutput
    #   resp.data.environments #=> Array<EnvironmentDescription>
    #   resp.data.environments[0] #=> Types::EnvironmentDescription
    #   resp.data.environments[0].environment_name #=> String
    #   resp.data.environments[0].environment_id #=> String
    #   resp.data.environments[0].application_name #=> String
    #   resp.data.environments[0].version_label #=> String
    #   resp.data.environments[0].solution_stack_name #=> String
    #   resp.data.environments[0].platform_arn #=> String
    #   resp.data.environments[0].template_name #=> String
    #   resp.data.environments[0].description #=> String
    #   resp.data.environments[0].endpoint_url #=> String
    #   resp.data.environments[0].cname #=> String
    #   resp.data.environments[0].date_created #=> Time
    #   resp.data.environments[0].date_updated #=> Time
    #   resp.data.environments[0].status #=> String, one of ["Aborting", "Launching", "Updating", "LinkingFrom", "LinkingTo", "Ready", "Terminating", "Terminated"]
    #   resp.data.environments[0].abortable_operation_in_progress #=> Boolean
    #   resp.data.environments[0].health #=> String, one of ["Green", "Yellow", "Red", "Grey"]
    #   resp.data.environments[0].health_status #=> String, one of ["NoData", "Unknown", "Pending", "Ok", "Info", "Warning", "Degraded", "Severe", "Suspended"]
    #   resp.data.environments[0].resources #=> Types::EnvironmentResourcesDescription
    #   resp.data.environments[0].resources.load_balancer #=> Types::LoadBalancerDescription
    #   resp.data.environments[0].resources.load_balancer.load_balancer_name #=> String
    #   resp.data.environments[0].resources.load_balancer.domain #=> String
    #   resp.data.environments[0].resources.load_balancer.listeners #=> Array<Listener>
    #   resp.data.environments[0].resources.load_balancer.listeners[0] #=> Types::Listener
    #   resp.data.environments[0].resources.load_balancer.listeners[0].protocol #=> String
    #   resp.data.environments[0].resources.load_balancer.listeners[0].port #=> Integer
    #   resp.data.environments[0].tier #=> Types::EnvironmentTier
    #   resp.data.environments[0].tier.name #=> String
    #   resp.data.environments[0].tier.type #=> String
    #   resp.data.environments[0].tier.version #=> String
    #   resp.data.environments[0].environment_links #=> Array<EnvironmentLink>
    #   resp.data.environments[0].environment_links[0] #=> Types::EnvironmentLink
    #   resp.data.environments[0].environment_links[0].link_name #=> String
    #   resp.data.environments[0].environment_links[0].environment_name #=> String
    #   resp.data.environments[0].environment_arn #=> String
    #   resp.data.environments[0].operations_role #=> String
    #   resp.data.next_token #=> String
    #
    def describe_environments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEnvironmentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEnvironmentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEnvironments
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DescribeEnvironments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEnvironments,
        stubs: @stubs,
        params_class: Params::DescribeEnvironmentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_environments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns list of event descriptions matching criteria up to the last 6 weeks.</p>
    #          <note>
    #             <p>This action returns the most recent 1,000 events from the specified
    #           <code>NextToken</code>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeEventsInput}.
    #
    # @option params [String] :application_name
    #   <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to include only
    #         those associated with this application.</p>
    #
    # @option params [String] :version_label
    #   <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those
    #         associated with this application version.</p>
    #
    # @option params [String] :template_name
    #   <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those that
    #         are associated with this environment configuration.</p>
    #
    # @option params [String] :environment_id
    #   <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those
    #         associated with this environment.</p>
    #
    # @option params [String] :environment_name
    #   <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those
    #         associated with this environment.</p>
    #
    # @option params [String] :platform_arn
    #   <p>The ARN of a custom platform version. If specified, AWS Elastic Beanstalk restricts the
    #         returned descriptions to those associated with this custom platform version.</p>
    #
    # @option params [String] :request_id
    #   <p>If specified, AWS Elastic Beanstalk restricts the described events to include only
    #         those associated with this request ID.</p>
    #
    # @option params [String] :severity
    #   <p>If specified, limits the events returned from this call to include only those with the
    #         specified severity or higher.</p>
    #
    # @option params [Time] :start_time
    #   <p>If specified, AWS Elastic Beanstalk restricts the returned descriptions to those that
    #         occur on or after this time.</p>
    #
    # @option params [Time] :end_time
    #   <p> If specified, AWS Elastic Beanstalk restricts the returned descriptions to those that
    #         occur up to, but not including, the <code>EndTime</code>. </p>
    #
    # @option params [Integer] :max_records
    #   <p>Specifies the maximum number of events that can be returned, beginning with the most
    #         recent event.</p>
    #
    # @option params [String] :next_token
    #   <p>Pagination token. If specified, the events return the next batch of results.</p>
    #
    # @return [Types::DescribeEventsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_events(
    #     application_name: 'ApplicationName',
    #     version_label: 'VersionLabel',
    #     template_name: 'TemplateName',
    #     environment_id: 'EnvironmentId',
    #     environment_name: 'EnvironmentName',
    #     platform_arn: 'PlatformArn',
    #     request_id: 'RequestId',
    #     severity: 'TRACE', # accepts ["TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"]
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     max_records: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEventsOutput
    #   resp.data.events #=> Array<EventDescription>
    #   resp.data.events[0] #=> Types::EventDescription
    #   resp.data.events[0].event_date #=> Time
    #   resp.data.events[0].message #=> String
    #   resp.data.events[0].application_name #=> String
    #   resp.data.events[0].version_label #=> String
    #   resp.data.events[0].template_name #=> String
    #   resp.data.events[0].environment_name #=> String
    #   resp.data.events[0].platform_arn #=> String
    #   resp.data.events[0].request_id #=> String
    #   resp.data.events[0].severity #=> String, one of ["TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"]
    #   resp.data.next_token #=> String
    #
    def describe_events(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEventsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEventsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEvents
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::DescribeEvents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEvents,
        stubs: @stubs,
        params_class: Params::DescribeEventsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_events
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves detailed information about the health of instances in your AWS Elastic
    #       Beanstalk. This operation requires <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced.html">enhanced health
    #       reporting</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeInstancesHealthInput}.
    #
    # @option params [String] :environment_name
    #   <p>Specify the AWS Elastic Beanstalk environment by name.</p>
    #
    # @option params [String] :environment_id
    #   <p>Specify the AWS Elastic Beanstalk environment by ID.</p>
    #
    # @option params [Array<String>] :attribute_names
    #   <p>Specifies the response elements you wish to receive. To retrieve all attributes, set to
    #           <code>All</code>. If no attribute names are specified, returns a list of
    #         instances.</p>
    #
    # @option params [String] :next_token
    #   <p>Specify the pagination token returned by a previous call.</p>
    #
    # @return [Types::DescribeInstancesHealthOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instances_health(
    #     environment_name: 'EnvironmentName',
    #     environment_id: 'EnvironmentId',
    #     attribute_names: [
    #       'HealthStatus' # accepts ["HealthStatus", "Color", "Causes", "ApplicationMetrics", "RefreshedAt", "LaunchedAt", "System", "Deployment", "AvailabilityZone", "InstanceType", "All"]
    #     ],
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeInstancesHealthOutput
    #   resp.data.instance_health_list #=> Array<SingleInstanceHealth>
    #   resp.data.instance_health_list[0] #=> Types::SingleInstanceHealth
    #   resp.data.instance_health_list[0].instance_id #=> String
    #   resp.data.instance_health_list[0].health_status #=> String
    #   resp.data.instance_health_list[0].color #=> String
    #   resp.data.instance_health_list[0].causes #=> Array<String>
    #   resp.data.instance_health_list[0].causes[0] #=> String
    #   resp.data.instance_health_list[0].launched_at #=> Time
    #   resp.data.instance_health_list[0].application_metrics #=> Types::ApplicationMetrics
    #   resp.data.instance_health_list[0].application_metrics.duration #=> Integer
    #   resp.data.instance_health_list[0].application_metrics.request_count #=> Integer
    #   resp.data.instance_health_list[0].application_metrics.status_codes #=> Types::StatusCodes
    #   resp.data.instance_health_list[0].application_metrics.status_codes.status2xx #=> Integer
    #   resp.data.instance_health_list[0].application_metrics.status_codes.status3xx #=> Integer
    #   resp.data.instance_health_list[0].application_metrics.status_codes.status4xx #=> Integer
    #   resp.data.instance_health_list[0].application_metrics.status_codes.status5xx #=> Integer
    #   resp.data.instance_health_list[0].application_metrics.latency #=> Types::Latency
    #   resp.data.instance_health_list[0].application_metrics.latency.p999 #=> Float
    #   resp.data.instance_health_list[0].application_metrics.latency.p99 #=> Float
    #   resp.data.instance_health_list[0].application_metrics.latency.p95 #=> Float
    #   resp.data.instance_health_list[0].application_metrics.latency.p90 #=> Float
    #   resp.data.instance_health_list[0].application_metrics.latency.p85 #=> Float
    #   resp.data.instance_health_list[0].application_metrics.latency.p75 #=> Float
    #   resp.data.instance_health_list[0].application_metrics.latency.p50 #=> Float
    #   resp.data.instance_health_list[0].application_metrics.latency.p10 #=> Float
    #   resp.data.instance_health_list[0].system #=> Types::SystemStatus
    #   resp.data.instance_health_list[0].system.cpu_utilization #=> Types::CPUUtilization
    #   resp.data.instance_health_list[0].system.cpu_utilization.user #=> Float
    #   resp.data.instance_health_list[0].system.cpu_utilization.nice #=> Float
    #   resp.data.instance_health_list[0].system.cpu_utilization.system #=> Float
    #   resp.data.instance_health_list[0].system.cpu_utilization.idle #=> Float
    #   resp.data.instance_health_list[0].system.cpu_utilization.io_wait #=> Float
    #   resp.data.instance_health_list[0].system.cpu_utilization.irq #=> Float
    #   resp.data.instance_health_list[0].system.cpu_utilization.soft_irq #=> Float
    #   resp.data.instance_health_list[0].system.cpu_utilization.privileged #=> Float
    #   resp.data.instance_health_list[0].system.load_average #=> Array<Float>
    #   resp.data.instance_health_list[0].system.load_average[0] #=> Float
    #   resp.data.instance_health_list[0].deployment #=> Types::Deployment
    #   resp.data.instance_health_list[0].deployment.version_label #=> String
    #   resp.data.instance_health_list[0].deployment.deployment_id #=> Integer
    #   resp.data.instance_health_list[0].deployment.status #=> String
    #   resp.data.instance_health_list[0].deployment.deployment_time #=> Time
    #   resp.data.instance_health_list[0].availability_zone #=> String
    #   resp.data.instance_health_list[0].instance_type #=> String
    #   resp.data.refreshed_at #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_instances_health(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeInstancesHealthInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeInstancesHealthInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeInstancesHealth
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ElasticBeanstalkServiceException]),
        data_parser: Parsers::DescribeInstancesHealth
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeInstancesHealth,
        stubs: @stubs,
        params_class: Params::DescribeInstancesHealthOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_instances_health
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a platform version. Provides full details. Compare to <a>ListPlatformVersions</a>, which provides summary information about a list of
    #       platform versions.</p>
    #          <p>For definitions of platform version and other platform-related terms, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/platforms-glossary.html">AWS Elastic Beanstalk
    #         Platforms Glossary</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePlatformVersionInput}.
    #
    # @option params [String] :platform_arn
    #   <p>The ARN of the platform version.</p>
    #
    # @return [Types::DescribePlatformVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_platform_version(
    #     platform_arn: 'PlatformArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePlatformVersionOutput
    #   resp.data.platform_description #=> Types::PlatformDescription
    #   resp.data.platform_description.platform_arn #=> String
    #   resp.data.platform_description.platform_owner #=> String
    #   resp.data.platform_description.platform_name #=> String
    #   resp.data.platform_description.platform_version #=> String
    #   resp.data.platform_description.solution_stack_name #=> String
    #   resp.data.platform_description.platform_status #=> String, one of ["Creating", "Failed", "Ready", "Deleting", "Deleted"]
    #   resp.data.platform_description.date_created #=> Time
    #   resp.data.platform_description.date_updated #=> Time
    #   resp.data.platform_description.platform_category #=> String
    #   resp.data.platform_description.description #=> String
    #   resp.data.platform_description.maintainer #=> String
    #   resp.data.platform_description.operating_system_name #=> String
    #   resp.data.platform_description.operating_system_version #=> String
    #   resp.data.platform_description.programming_languages #=> Array<PlatformProgrammingLanguage>
    #   resp.data.platform_description.programming_languages[0] #=> Types::PlatformProgrammingLanguage
    #   resp.data.platform_description.programming_languages[0].name #=> String
    #   resp.data.platform_description.programming_languages[0].version #=> String
    #   resp.data.platform_description.frameworks #=> Array<PlatformFramework>
    #   resp.data.platform_description.frameworks[0] #=> Types::PlatformFramework
    #   resp.data.platform_description.frameworks[0].name #=> String
    #   resp.data.platform_description.frameworks[0].version #=> String
    #   resp.data.platform_description.custom_ami_list #=> Array<CustomAmi>
    #   resp.data.platform_description.custom_ami_list[0] #=> Types::CustomAmi
    #   resp.data.platform_description.custom_ami_list[0].virtualization_type #=> String
    #   resp.data.platform_description.custom_ami_list[0].image_id #=> String
    #   resp.data.platform_description.supported_tier_list #=> Array<String>
    #   resp.data.platform_description.supported_tier_list[0] #=> String
    #   resp.data.platform_description.supported_addon_list #=> Array<String>
    #   resp.data.platform_description.supported_addon_list[0] #=> String
    #   resp.data.platform_description.platform_lifecycle_state #=> String
    #   resp.data.platform_description.platform_branch_name #=> String
    #   resp.data.platform_description.platform_branch_lifecycle_state #=> String
    #
    def describe_platform_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePlatformVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePlatformVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePlatformVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsufficientPrivilegesException, Errors::ElasticBeanstalkServiceException]),
        data_parser: Parsers::DescribePlatformVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePlatformVersion,
        stubs: @stubs,
        params_class: Params::DescribePlatformVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_platform_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociate the operations role from an environment. After this call is made, Elastic Beanstalk uses
    #       the caller's permissions for permissions to downstream services during subsequent calls acting
    #       on this environment. For more information, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-operationsrole.html">Operations roles</a> in the
    #         <i>AWS Elastic Beanstalk Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateEnvironmentOperationsRoleInput}.
    #
    # @option params [String] :environment_name
    #   <p>The name of the environment from which to disassociate the operations role.</p>
    #
    # @return [Types::DisassociateEnvironmentOperationsRoleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_environment_operations_role(
    #     environment_name: 'EnvironmentName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateEnvironmentOperationsRoleOutput
    #
    def disassociate_environment_operations_role(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateEnvironmentOperationsRoleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateEnvironmentOperationsRoleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateEnvironmentOperationsRole
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsufficientPrivilegesException]),
        data_parser: Parsers::DisassociateEnvironmentOperationsRole
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateEnvironmentOperationsRole,
        stubs: @stubs,
        params_class: Params::DisassociateEnvironmentOperationsRoleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_environment_operations_role
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the available solution stack names, with the public version first and
    #       then in reverse chronological order.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAvailableSolutionStacksInput}.
    #
    # @return [Types::ListAvailableSolutionStacksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_available_solution_stacks()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAvailableSolutionStacksOutput
    #   resp.data.solution_stacks #=> Array<String>
    #   resp.data.solution_stacks[0] #=> String
    #   resp.data.solution_stack_details #=> Array<SolutionStackDescription>
    #   resp.data.solution_stack_details[0] #=> Types::SolutionStackDescription
    #   resp.data.solution_stack_details[0].solution_stack_name #=> String
    #   resp.data.solution_stack_details[0].permitted_file_types #=> Array<String>
    #   resp.data.solution_stack_details[0].permitted_file_types[0] #=> String
    #
    def list_available_solution_stacks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAvailableSolutionStacksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAvailableSolutionStacksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAvailableSolutionStacks
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListAvailableSolutionStacks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAvailableSolutionStacks,
        stubs: @stubs,
        params_class: Params::ListAvailableSolutionStacksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_available_solution_stacks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the platform branches available for your account in an AWS Region. Provides
    #       summary information about each platform branch.</p>
    #          <p>For definitions of platform branch and other platform-related terms, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/platforms-glossary.html">AWS Elastic Beanstalk
    #         Platforms Glossary</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPlatformBranchesInput}.
    #
    # @option params [Array<SearchFilter>] :filters
    #   <p>Criteria for restricting the resulting list of platform branches. The filter is evaluated
    #         as a logical conjunction (AND) of the separate <code>SearchFilter</code> terms.</p>
    #            <p>The following list shows valid attribute values for each of the <code>SearchFilter</code>
    #         terms. Most operators take a single value. The <code>in</code> and <code>not_in</code>
    #         operators can take multiple values.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Attribute = BranchName</code>:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>Operator</code>: <code>=</code> | <code>!=</code> | <code>begins_with</code>
    #                 | <code>ends_with</code> | <code>contains</code> | <code>in</code> |
    #                   <code>not_in</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Attribute = LifecycleState</code>:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>Operator</code>: <code>=</code> | <code>!=</code> | <code>in</code> |
    #                   <code>not_in</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>Values</code>: <code>beta</code> | <code>supported</code> |
    #                   <code>deprecated</code> | <code>retired</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Attribute = PlatformName</code>:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>Operator</code>: <code>=</code> | <code>!=</code> | <code>begins_with</code>
    #                 | <code>ends_with</code> | <code>contains</code> | <code>in</code> |
    #                 <code>not_in</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Attribute = TierType</code>:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>Operator</code>: <code>=</code> | <code>!=</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>Values</code>: <code>WebServer/Standard</code> | <code>Worker/SQS/HTTP</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <p>Array size: limited to 10 <code>SearchFilter</code> objects.</p>
    #            <p>Within each <code>SearchFilter</code> item, the <code>Values</code> array is limited to 10
    #         items.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of platform branch values returned in one call.</p>
    #
    # @option params [String] :next_token
    #   <p>For a paginated request. Specify a token from a previous response page to retrieve the
    #         next response page. All other parameter values must be identical to the ones specified in the
    #         initial request.</p>
    #            <p>If no <code>NextToken</code> is specified, the first page is retrieved.</p>
    #
    # @return [Types::ListPlatformBranchesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_platform_branches(
    #     filters: [
    #       {
    #         attribute: 'Attribute',
    #         operator: 'Operator',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_records: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPlatformBranchesOutput
    #   resp.data.platform_branch_summary_list #=> Array<PlatformBranchSummary>
    #   resp.data.platform_branch_summary_list[0] #=> Types::PlatformBranchSummary
    #   resp.data.platform_branch_summary_list[0].platform_name #=> String
    #   resp.data.platform_branch_summary_list[0].branch_name #=> String
    #   resp.data.platform_branch_summary_list[0].lifecycle_state #=> String
    #   resp.data.platform_branch_summary_list[0].branch_order #=> Integer
    #   resp.data.platform_branch_summary_list[0].supported_tier_list #=> Array<String>
    #   resp.data.platform_branch_summary_list[0].supported_tier_list[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_platform_branches(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPlatformBranchesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPlatformBranchesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPlatformBranches
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListPlatformBranches
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPlatformBranches,
        stubs: @stubs,
        params_class: Params::ListPlatformBranchesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_platform_branches
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the platform versions available for your account in an AWS Region. Provides
    #       summary information about each platform version. Compare to <a>DescribePlatformVersion</a>, which provides full details about a single platform
    #       version.</p>
    #          <p>For definitions of platform version and other platform-related terms, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/platforms-glossary.html">AWS Elastic Beanstalk
    #         Platforms Glossary</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPlatformVersionsInput}.
    #
    # @option params [Array<PlatformFilter>] :filters
    #   <p>Criteria for restricting the resulting list of platform versions. The filter is
    #         interpreted as a logical conjunction (AND) of the separate <code>PlatformFilter</code>
    #         terms.</p>
    #
    # @option params [Integer] :max_records
    #   <p>The maximum number of platform version values returned in one call.</p>
    #
    # @option params [String] :next_token
    #   <p>For a paginated request. Specify a token from a previous response page to retrieve the
    #         next response page. All other parameter values must be identical to the ones specified in the
    #         initial request.</p>
    #            <p>If no <code>NextToken</code> is specified, the first page is retrieved.</p>
    #
    # @return [Types::ListPlatformVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_platform_versions(
    #     filters: [
    #       {
    #         type: 'Type',
    #         operator: 'Operator',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_records: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPlatformVersionsOutput
    #   resp.data.platform_summary_list #=> Array<PlatformSummary>
    #   resp.data.platform_summary_list[0] #=> Types::PlatformSummary
    #   resp.data.platform_summary_list[0].platform_arn #=> String
    #   resp.data.platform_summary_list[0].platform_owner #=> String
    #   resp.data.platform_summary_list[0].platform_status #=> String, one of ["Creating", "Failed", "Ready", "Deleting", "Deleted"]
    #   resp.data.platform_summary_list[0].platform_category #=> String
    #   resp.data.platform_summary_list[0].operating_system_name #=> String
    #   resp.data.platform_summary_list[0].operating_system_version #=> String
    #   resp.data.platform_summary_list[0].supported_tier_list #=> Array<String>
    #   resp.data.platform_summary_list[0].supported_tier_list[0] #=> String
    #   resp.data.platform_summary_list[0].supported_addon_list #=> Array<String>
    #   resp.data.platform_summary_list[0].supported_addon_list[0] #=> String
    #   resp.data.platform_summary_list[0].platform_lifecycle_state #=> String
    #   resp.data.platform_summary_list[0].platform_version #=> String
    #   resp.data.platform_summary_list[0].platform_branch_name #=> String
    #   resp.data.platform_summary_list[0].platform_branch_lifecycle_state #=> String
    #   resp.data.next_token #=> String
    #
    def list_platform_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPlatformVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPlatformVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPlatformVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsufficientPrivilegesException, Errors::ElasticBeanstalkServiceException]),
        data_parser: Parsers::ListPlatformVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPlatformVersions,
        stubs: @stubs,
        params_class: Params::ListPlatformVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_platform_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Return the tags applied to an AWS Elastic Beanstalk resource. The response contains a list of tag key-value pairs.</p>
    #          <p>Elastic Beanstalk supports tagging of all of its resources. For details about resource tagging, see
    #         <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/applications-tagging-resources.html">Tagging Application
    #         Resources</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resouce for which a tag list is requested.</p>
    #            <p>Must be the ARN of an Elastic Beanstalk resource.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.resource_arn #=> String
    #   resp.data.resource_tags #=> Array<Tag>
    #   resp.data.resource_tags[0] #=> Types::Tag
    #   resp.data.resource_tags[0].key #=> String
    #   resp.data.resource_tags[0].value #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsufficientPrivilegesException, Errors::ResourceTypeNotSupportedException, Errors::ResourceNotFoundException]),
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

    # <p>Deletes and recreates all of the AWS resources (for example: the Auto Scaling group,
    #       load balancer, etc.) for a specified environment and forces a restart.</p>
    #
    # @param [Hash] params
    #   See {Types::RebuildEnvironmentInput}.
    #
    # @option params [String] :environment_id
    #   <p>The ID of the environment to rebuild.</p>
    #            <p> Condition: You must specify either this or an EnvironmentName, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    #
    # @option params [String] :environment_name
    #   <p>The name of the environment to rebuild.</p>
    #            <p> Condition: You must specify either this or an EnvironmentId, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    #
    # @return [Types::RebuildEnvironmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.rebuild_environment(
    #     environment_id: 'EnvironmentId',
    #     environment_name: 'EnvironmentName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RebuildEnvironmentOutput
    #
    def rebuild_environment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RebuildEnvironmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RebuildEnvironmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RebuildEnvironment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsufficientPrivilegesException]),
        data_parser: Parsers::RebuildEnvironment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RebuildEnvironment,
        stubs: @stubs,
        params_class: Params::RebuildEnvironmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :rebuild_environment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Initiates a request to compile the specified type of information of the deployed
    #       environment.</p>
    #          <p> Setting the <code>InfoType</code> to <code>tail</code> compiles the last lines from
    #       the application server log files of every Amazon EC2 instance in your environment. </p>
    #          <p> Setting the <code>InfoType</code> to <code>bundle</code> compresses the application
    #       server log files for every Amazon EC2 instance into a <code>.zip</code> file. Legacy and .NET
    #       containers do not support bundle logs. </p>
    #          <p> Use <a>RetrieveEnvironmentInfo</a> to obtain the set of logs. </p>
    #          <p>Related Topics</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>RetrieveEnvironmentInfo</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::RequestEnvironmentInfoInput}.
    #
    # @option params [String] :environment_id
    #   <p>The ID of the environment of the requested data.</p>
    #            <p>If no such environment is found, <code>RequestEnvironmentInfo</code> returns an
    #         <code>InvalidParameterValue</code> error. </p>
    #            <p>Condition: You must specify either this or an EnvironmentName, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    #
    # @option params [String] :environment_name
    #   <p>The name of the environment of the requested data.</p>
    #            <p>If no such environment is found, <code>RequestEnvironmentInfo</code> returns an
    #         <code>InvalidParameterValue</code> error. </p>
    #            <p>Condition: You must specify either this or an EnvironmentId, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    #
    # @option params [String] :info_type
    #   <p>The type of information to request.</p>
    #
    # @return [Types::RequestEnvironmentInfoOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.request_environment_info(
    #     environment_id: 'EnvironmentId',
    #     environment_name: 'EnvironmentName',
    #     info_type: 'tail' # required - accepts ["tail", "bundle"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RequestEnvironmentInfoOutput
    #
    def request_environment_info(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RequestEnvironmentInfoInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RequestEnvironmentInfoInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RequestEnvironmentInfo
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::RequestEnvironmentInfo
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RequestEnvironmentInfo,
        stubs: @stubs,
        params_class: Params::RequestEnvironmentInfoOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :request_environment_info
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Causes the environment to restart the application container server running on each
    #       Amazon EC2 instance.</p>
    #
    # @param [Hash] params
    #   See {Types::RestartAppServerInput}.
    #
    # @option params [String] :environment_id
    #   <p>The ID of the environment to restart the server for.</p>
    #            <p> Condition: You must specify either this or an EnvironmentName, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    #
    # @option params [String] :environment_name
    #   <p>The name of the environment to restart the server for.</p>
    #            <p> Condition: You must specify either this or an EnvironmentId, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    #
    # @return [Types::RestartAppServerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restart_app_server(
    #     environment_id: 'EnvironmentId',
    #     environment_name: 'EnvironmentName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RestartAppServerOutput
    #
    def restart_app_server(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RestartAppServerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RestartAppServerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RestartAppServer
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::RestartAppServer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RestartAppServer,
        stubs: @stubs,
        params_class: Params::RestartAppServerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :restart_app_server
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the compiled information from a <a>RequestEnvironmentInfo</a>
    #       request.</p>
    #          <p>Related Topics</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>RequestEnvironmentInfo</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::RetrieveEnvironmentInfoInput}.
    #
    # @option params [String] :environment_id
    #   <p>The ID of the data's environment.</p>
    #            <p>If no such environment is found, returns an <code>InvalidParameterValue</code>
    #         error.</p>
    #            <p>Condition: You must specify either this or an EnvironmentName, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code>
    #         error.</p>
    #
    # @option params [String] :environment_name
    #   <p>The name of the data's environment.</p>
    #            <p> If no such environment is found, returns an <code>InvalidParameterValue</code> error. </p>
    #            <p> Condition: You must specify either this or an EnvironmentId, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    #
    # @option params [String] :info_type
    #   <p>The type of information to retrieve.</p>
    #
    # @return [Types::RetrieveEnvironmentInfoOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.retrieve_environment_info(
    #     environment_id: 'EnvironmentId',
    #     environment_name: 'EnvironmentName',
    #     info_type: 'tail' # required - accepts ["tail", "bundle"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RetrieveEnvironmentInfoOutput
    #   resp.data.environment_info #=> Array<EnvironmentInfoDescription>
    #   resp.data.environment_info[0] #=> Types::EnvironmentInfoDescription
    #   resp.data.environment_info[0].info_type #=> String, one of ["tail", "bundle"]
    #   resp.data.environment_info[0].ec2_instance_id #=> String
    #   resp.data.environment_info[0].sample_timestamp #=> Time
    #   resp.data.environment_info[0].message #=> String
    #
    def retrieve_environment_info(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RetrieveEnvironmentInfoInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RetrieveEnvironmentInfoInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RetrieveEnvironmentInfo
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::RetrieveEnvironmentInfo
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RetrieveEnvironmentInfo,
        stubs: @stubs,
        params_class: Params::RetrieveEnvironmentInfoOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :retrieve_environment_info
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Swaps the CNAMEs of two environments.</p>
    #
    # @param [Hash] params
    #   See {Types::SwapEnvironmentCNAMEsInput}.
    #
    # @option params [String] :source_environment_id
    #   <p>The ID of the source environment.</p>
    #            <p> Condition: You must specify at least the <code>SourceEnvironmentID</code> or the
    #         <code>SourceEnvironmentName</code>. You may also specify both. If you specify the
    #         <code>SourceEnvironmentId</code>, you must specify the
    #         <code>DestinationEnvironmentId</code>. </p>
    #
    # @option params [String] :source_environment_name
    #   <p>The name of the source environment.</p>
    #            <p> Condition: You must specify at least the <code>SourceEnvironmentID</code> or the
    #         <code>SourceEnvironmentName</code>. You may also specify both. If you specify the
    #         <code>SourceEnvironmentName</code>, you must specify the
    #         <code>DestinationEnvironmentName</code>. </p>
    #
    # @option params [String] :destination_environment_id
    #   <p>The ID of the destination environment.</p>
    #            <p> Condition: You must specify at least the <code>DestinationEnvironmentID</code> or the
    #         <code>DestinationEnvironmentName</code>. You may also specify both. You must specify the
    #         <code>SourceEnvironmentId</code> with the <code>DestinationEnvironmentId</code>. </p>
    #
    # @option params [String] :destination_environment_name
    #   <p>The name of the destination environment.</p>
    #            <p> Condition: You must specify at least the <code>DestinationEnvironmentID</code> or the
    #         <code>DestinationEnvironmentName</code>. You may also specify both. You must specify the
    #         <code>SourceEnvironmentName</code> with the <code>DestinationEnvironmentName</code>.
    #       </p>
    #
    # @return [Types::SwapEnvironmentCNAMEsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.swap_environment_cnam_es(
    #     source_environment_id: 'SourceEnvironmentId',
    #     source_environment_name: 'SourceEnvironmentName',
    #     destination_environment_id: 'DestinationEnvironmentId',
    #     destination_environment_name: 'DestinationEnvironmentName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SwapEnvironmentCNAMEsOutput
    #
    def swap_environment_cnam_es(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SwapEnvironmentCNAMEsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SwapEnvironmentCNAMEsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SwapEnvironmentCNAMEs
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::SwapEnvironmentCNAMEs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SwapEnvironmentCNAMEs,
        stubs: @stubs,
        params_class: Params::SwapEnvironmentCNAMEsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :swap_environment_cnam_es
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Terminates the specified environment.</p>
    #
    # @param [Hash] params
    #   See {Types::TerminateEnvironmentInput}.
    #
    # @option params [String] :environment_id
    #   <p>The ID of the environment to terminate.</p>
    #            <p> Condition: You must specify either this or an EnvironmentName, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    #
    # @option params [String] :environment_name
    #   <p>The name of the environment to terminate.</p>
    #            <p> Condition: You must specify either this or an EnvironmentId, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    #
    # @option params [Boolean] :terminate_resources
    #   <p>Indicates whether the associated AWS resources should shut down when the environment is
    #         terminated:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>true</code>: The specified environment as well as the associated AWS resources, such
    #             as Auto Scaling group and LoadBalancer, are terminated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>false</code>: AWS Elastic Beanstalk resource management is removed from the
    #             environment, but the AWS resources continue to operate.</p>
    #               </li>
    #            </ul>
    #            <p> For more information, see the <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/ug/"> AWS Elastic Beanstalk User Guide. </a>
    #            </p>
    #            <p> Default: <code>true</code>
    #            </p>
    #            <p> Valid Values: <code>true</code> | <code>false</code>
    #            </p>
    #
    # @option params [Boolean] :force_terminate
    #   <p>Terminates the target environment even if another environment in the same group is
    #         dependent on it.</p>
    #
    # @return [Types::TerminateEnvironmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_environment(
    #     environment_id: 'EnvironmentId',
    #     environment_name: 'EnvironmentName',
    #     terminate_resources: false,
    #     force_terminate: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TerminateEnvironmentOutput
    #   resp.data.environment_name #=> String
    #   resp.data.environment_id #=> String
    #   resp.data.application_name #=> String
    #   resp.data.version_label #=> String
    #   resp.data.solution_stack_name #=> String
    #   resp.data.platform_arn #=> String
    #   resp.data.template_name #=> String
    #   resp.data.description #=> String
    #   resp.data.endpoint_url #=> String
    #   resp.data.cname #=> String
    #   resp.data.date_created #=> Time
    #   resp.data.date_updated #=> Time
    #   resp.data.status #=> String, one of ["Aborting", "Launching", "Updating", "LinkingFrom", "LinkingTo", "Ready", "Terminating", "Terminated"]
    #   resp.data.abortable_operation_in_progress #=> Boolean
    #   resp.data.health #=> String, one of ["Green", "Yellow", "Red", "Grey"]
    #   resp.data.health_status #=> String, one of ["NoData", "Unknown", "Pending", "Ok", "Info", "Warning", "Degraded", "Severe", "Suspended"]
    #   resp.data.resources #=> Types::EnvironmentResourcesDescription
    #   resp.data.resources.load_balancer #=> Types::LoadBalancerDescription
    #   resp.data.resources.load_balancer.load_balancer_name #=> String
    #   resp.data.resources.load_balancer.domain #=> String
    #   resp.data.resources.load_balancer.listeners #=> Array<Listener>
    #   resp.data.resources.load_balancer.listeners[0] #=> Types::Listener
    #   resp.data.resources.load_balancer.listeners[0].protocol #=> String
    #   resp.data.resources.load_balancer.listeners[0].port #=> Integer
    #   resp.data.tier #=> Types::EnvironmentTier
    #   resp.data.tier.name #=> String
    #   resp.data.tier.type #=> String
    #   resp.data.tier.version #=> String
    #   resp.data.environment_links #=> Array<EnvironmentLink>
    #   resp.data.environment_links[0] #=> Types::EnvironmentLink
    #   resp.data.environment_links[0].link_name #=> String
    #   resp.data.environment_links[0].environment_name #=> String
    #   resp.data.environment_arn #=> String
    #   resp.data.operations_role #=> String
    #
    def terminate_environment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TerminateEnvironmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TerminateEnvironmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TerminateEnvironment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsufficientPrivilegesException]),
        data_parser: Parsers::TerminateEnvironment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TerminateEnvironment,
        stubs: @stubs,
        params_class: Params::TerminateEnvironmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :terminate_environment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified application to have the specified properties.</p>
    #          <note>
    #             <p>If a property (for example, <code>description</code>) is not provided, the value
    #         remains unchanged. To clear these properties, specify an empty string.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateApplicationInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of the application to update. If no such application is found,
    #           <code>UpdateApplication</code> returns an <code>InvalidParameterValue</code> error.
    #       </p>
    #
    # @option params [String] :description
    #   <p>A new description for the application.</p>
    #            <p>Default: If not specified, AWS Elastic Beanstalk does not update the
    #         description.</p>
    #
    # @return [Types::UpdateApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application(
    #     application_name: 'ApplicationName', # required
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateApplicationOutput
    #   resp.data.application #=> Types::ApplicationDescription
    #   resp.data.application.application_arn #=> String
    #   resp.data.application.application_name #=> String
    #   resp.data.application.description #=> String
    #   resp.data.application.date_created #=> Time
    #   resp.data.application.date_updated #=> Time
    #   resp.data.application.versions #=> Array<String>
    #   resp.data.application.versions[0] #=> String
    #   resp.data.application.configuration_templates #=> Array<String>
    #   resp.data.application.configuration_templates[0] #=> String
    #   resp.data.application.resource_lifecycle_config #=> Types::ApplicationResourceLifecycleConfig
    #   resp.data.application.resource_lifecycle_config.service_role #=> String
    #   resp.data.application.resource_lifecycle_config.version_lifecycle_config #=> Types::ApplicationVersionLifecycleConfig
    #   resp.data.application.resource_lifecycle_config.version_lifecycle_config.max_count_rule #=> Types::MaxCountRule
    #   resp.data.application.resource_lifecycle_config.version_lifecycle_config.max_count_rule.enabled #=> Boolean
    #   resp.data.application.resource_lifecycle_config.version_lifecycle_config.max_count_rule.max_count #=> Integer
    #   resp.data.application.resource_lifecycle_config.version_lifecycle_config.max_count_rule.delete_source_from_s3 #=> Boolean
    #   resp.data.application.resource_lifecycle_config.version_lifecycle_config.max_age_rule #=> Types::MaxAgeRule
    #   resp.data.application.resource_lifecycle_config.version_lifecycle_config.max_age_rule.enabled #=> Boolean
    #   resp.data.application.resource_lifecycle_config.version_lifecycle_config.max_age_rule.max_age_in_days #=> Integer
    #   resp.data.application.resource_lifecycle_config.version_lifecycle_config.max_age_rule.delete_source_from_s3 #=> Boolean
    #
    def update_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateApplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::UpdateApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateApplication,
        stubs: @stubs,
        params_class: Params::UpdateApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modifies lifecycle settings for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateApplicationResourceLifecycleInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of the application.</p>
    #
    # @option params [ApplicationResourceLifecycleConfig] :resource_lifecycle_config
    #   <p>The lifecycle configuration.</p>
    #
    # @return [Types::UpdateApplicationResourceLifecycleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application_resource_lifecycle(
    #     application_name: 'ApplicationName', # required
    #     resource_lifecycle_config: {
    #       service_role: 'ServiceRole',
    #       version_lifecycle_config: {
    #         max_count_rule: {
    #           enabled: false, # required
    #           max_count: 1,
    #           delete_source_from_s3: false
    #         },
    #         max_age_rule: {
    #           enabled: false, # required
    #           max_age_in_days: 1,
    #           delete_source_from_s3: false
    #         }
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateApplicationResourceLifecycleOutput
    #   resp.data.application_name #=> String
    #   resp.data.resource_lifecycle_config #=> Types::ApplicationResourceLifecycleConfig
    #   resp.data.resource_lifecycle_config.service_role #=> String
    #   resp.data.resource_lifecycle_config.version_lifecycle_config #=> Types::ApplicationVersionLifecycleConfig
    #   resp.data.resource_lifecycle_config.version_lifecycle_config.max_count_rule #=> Types::MaxCountRule
    #   resp.data.resource_lifecycle_config.version_lifecycle_config.max_count_rule.enabled #=> Boolean
    #   resp.data.resource_lifecycle_config.version_lifecycle_config.max_count_rule.max_count #=> Integer
    #   resp.data.resource_lifecycle_config.version_lifecycle_config.max_count_rule.delete_source_from_s3 #=> Boolean
    #   resp.data.resource_lifecycle_config.version_lifecycle_config.max_age_rule #=> Types::MaxAgeRule
    #   resp.data.resource_lifecycle_config.version_lifecycle_config.max_age_rule.enabled #=> Boolean
    #   resp.data.resource_lifecycle_config.version_lifecycle_config.max_age_rule.max_age_in_days #=> Integer
    #   resp.data.resource_lifecycle_config.version_lifecycle_config.max_age_rule.delete_source_from_s3 #=> Boolean
    #
    def update_application_resource_lifecycle(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateApplicationResourceLifecycleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateApplicationResourceLifecycleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateApplicationResourceLifecycle
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsufficientPrivilegesException]),
        data_parser: Parsers::UpdateApplicationResourceLifecycle
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateApplicationResourceLifecycle,
        stubs: @stubs,
        params_class: Params::UpdateApplicationResourceLifecycleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_application_resource_lifecycle
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified application version to have the specified properties.</p>
    #          <note>
    #             <p>If a property (for example, <code>description</code>) is not provided, the value
    #         remains unchanged. To clear properties, specify an empty string.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateApplicationVersionInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of the application associated with this version.</p>
    #            <p> If no application is found with this name, <code>UpdateApplication</code> returns an
    #           <code>InvalidParameterValue</code> error.</p>
    #
    # @option params [String] :version_label
    #   <p>The name of the version to update.</p>
    #            <p>If no application version is found with this label, <code>UpdateApplication</code>
    #         returns an <code>InvalidParameterValue</code> error. </p>
    #
    # @option params [String] :description
    #   <p>A new description for this version.</p>
    #
    # @return [Types::UpdateApplicationVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application_version(
    #     application_name: 'ApplicationName', # required
    #     version_label: 'VersionLabel', # required
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateApplicationVersionOutput
    #   resp.data.application_version #=> Types::ApplicationVersionDescription
    #   resp.data.application_version.application_version_arn #=> String
    #   resp.data.application_version.application_name #=> String
    #   resp.data.application_version.description #=> String
    #   resp.data.application_version.version_label #=> String
    #   resp.data.application_version.source_build_information #=> Types::SourceBuildInformation
    #   resp.data.application_version.source_build_information.source_type #=> String, one of ["Git", "Zip"]
    #   resp.data.application_version.source_build_information.source_repository #=> String, one of ["CodeCommit", "S3"]
    #   resp.data.application_version.source_build_information.source_location #=> String
    #   resp.data.application_version.build_arn #=> String
    #   resp.data.application_version.source_bundle #=> Types::S3Location
    #   resp.data.application_version.source_bundle.s3_bucket #=> String
    #   resp.data.application_version.source_bundle.s3_key #=> String
    #   resp.data.application_version.date_created #=> Time
    #   resp.data.application_version.date_updated #=> Time
    #   resp.data.application_version.status #=> String, one of ["Processed", "Unprocessed", "Failed", "Processing", "Building"]
    #
    def update_application_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateApplicationVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateApplicationVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateApplicationVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::UpdateApplicationVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateApplicationVersion,
        stubs: @stubs,
        params_class: Params::UpdateApplicationVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_application_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified configuration template to have the specified properties or
    #       configuration option values.</p>
    #          <note>
    #             <p>If a property (for example, <code>ApplicationName</code>) is not provided, its value
    #         remains unchanged. To clear such properties, specify an empty string.</p>
    #          </note>
    #          <p>Related Topics</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a>DescribeConfigurationOptions</a>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::UpdateConfigurationTemplateInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of the application associated with the configuration template to
    #         update.</p>
    #            <p> If no application is found with this name, <code>UpdateConfigurationTemplate</code>
    #         returns an <code>InvalidParameterValue</code> error. </p>
    #
    # @option params [String] :template_name
    #   <p>The name of the configuration template to update.</p>
    #            <p> If no configuration template is found with this name,
    #           <code>UpdateConfigurationTemplate</code> returns an <code>InvalidParameterValue</code>
    #         error. </p>
    #
    # @option params [String] :description
    #   <p>A new description for the configuration.</p>
    #
    # @option params [Array<ConfigurationOptionSetting>] :option_settings
    #   <p>A list of configuration option settings to update with the new specified option
    #         value.</p>
    #
    # @option params [Array<OptionSpecification>] :options_to_remove
    #   <p>A list of configuration options to remove from the configuration set.</p>
    #            <p> Constraint: You can remove only <code>UserDefined</code> configuration options.
    #       </p>
    #
    # @return [Types::UpdateConfigurationTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configuration_template(
    #     application_name: 'ApplicationName', # required
    #     template_name: 'TemplateName', # required
    #     description: 'Description',
    #     option_settings: [
    #       {
    #         resource_name: 'ResourceName',
    #         namespace: 'Namespace',
    #         option_name: 'OptionName',
    #         value: 'Value'
    #       }
    #     ],
    #     options_to_remove: [
    #       {
    #         resource_name: 'ResourceName',
    #         namespace: 'Namespace',
    #         option_name: 'OptionName'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateConfigurationTemplateOutput
    #   resp.data.solution_stack_name #=> String
    #   resp.data.platform_arn #=> String
    #   resp.data.application_name #=> String
    #   resp.data.template_name #=> String
    #   resp.data.description #=> String
    #   resp.data.environment_name #=> String
    #   resp.data.deployment_status #=> String, one of ["deployed", "pending", "failed"]
    #   resp.data.date_created #=> Time
    #   resp.data.date_updated #=> Time
    #   resp.data.option_settings #=> Array<ConfigurationOptionSetting>
    #   resp.data.option_settings[0] #=> Types::ConfigurationOptionSetting
    #   resp.data.option_settings[0].resource_name #=> String
    #   resp.data.option_settings[0].namespace #=> String
    #   resp.data.option_settings[0].option_name #=> String
    #   resp.data.option_settings[0].value #=> String
    #
    def update_configuration_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateConfigurationTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateConfigurationTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateConfigurationTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsufficientPrivilegesException, Errors::TooManyBucketsException]),
        data_parser: Parsers::UpdateConfigurationTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateConfigurationTemplate,
        stubs: @stubs,
        params_class: Params::UpdateConfigurationTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_configuration_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the environment description, deploys a new application version, updates the
    #       configuration settings to an entirely new configuration template, or updates select
    #       configuration option values in the running environment.</p>
    #          <p> Attempting to update both the release and configuration is not allowed and AWS Elastic
    #       Beanstalk returns an <code>InvalidParameterCombination</code> error. </p>
    #          <p> When updating the configuration settings to a new template or individual settings, a
    #       draft configuration is created and <a>DescribeConfigurationSettings</a> for this
    #       environment returns two setting descriptions with different <code>DeploymentStatus</code>
    #       values. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateEnvironmentInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of the application with which the environment is associated.</p>
    #
    # @option params [String] :environment_id
    #   <p>The ID of the environment to update.</p>
    #            <p>If no environment with this ID exists, AWS Elastic Beanstalk returns an
    #           <code>InvalidParameterValue</code> error.</p>
    #            <p>Condition: You must specify either this or an EnvironmentName, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    #
    # @option params [String] :environment_name
    #   <p>The name of the environment to update. If no environment with this name exists, AWS
    #         Elastic Beanstalk returns an <code>InvalidParameterValue</code> error. </p>
    #            <p>Condition: You must specify either this or an EnvironmentId, or both. If you do not
    #         specify either, AWS Elastic Beanstalk returns <code>MissingRequiredParameter</code> error.
    #       </p>
    #
    # @option params [String] :group_name
    #   <p>The name of the group to which the target environment belongs. Specify a group name
    #         only if the environment's name is specified in an environment manifest and not with the
    #         environment name or environment ID parameters. See <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html">Environment Manifest
    #           (env.yaml)</a> for details.</p>
    #
    # @option params [String] :description
    #   <p>If this parameter is specified, AWS Elastic Beanstalk updates the description of this
    #         environment.</p>
    #
    # @option params [EnvironmentTier] :tier
    #   <p>This specifies the tier to use to update the environment.</p>
    #            <p>Condition: At this time, if you change the tier version, name, or type, AWS Elastic
    #         Beanstalk returns <code>InvalidParameterValue</code> error. </p>
    #
    # @option params [String] :version_label
    #   <p>If this parameter is specified, AWS Elastic Beanstalk deploys the named application
    #         version to the environment. If no such application version is found, returns an
    #           <code>InvalidParameterValue</code> error. </p>
    #
    # @option params [String] :template_name
    #   <p>If this parameter is specified, AWS Elastic Beanstalk deploys this configuration
    #         template to the environment. If no such configuration template is found, AWS Elastic Beanstalk
    #         returns an <code>InvalidParameterValue</code> error. </p>
    #
    # @option params [String] :solution_stack_name
    #   <p>This specifies the platform version that the environment will run after the environment
    #         is updated.</p>
    #
    # @option params [String] :platform_arn
    #   <p>The ARN of the platform, if used.</p>
    #
    # @option params [Array<ConfigurationOptionSetting>] :option_settings
    #   <p>If specified, AWS Elastic Beanstalk updates the configuration set associated with the
    #         running environment and sets the specified configuration options to the requested
    #         value.</p>
    #
    # @option params [Array<OptionSpecification>] :options_to_remove
    #   <p>A list of custom user-defined configuration options to remove from the configuration
    #         set for this environment.</p>
    #
    # @return [Types::UpdateEnvironmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment(
    #     application_name: 'ApplicationName',
    #     environment_id: 'EnvironmentId',
    #     environment_name: 'EnvironmentName',
    #     group_name: 'GroupName',
    #     description: 'Description',
    #     tier: {
    #       name: 'Name',
    #       type: 'Type',
    #       version: 'Version'
    #     },
    #     version_label: 'VersionLabel',
    #     template_name: 'TemplateName',
    #     solution_stack_name: 'SolutionStackName',
    #     platform_arn: 'PlatformArn',
    #     option_settings: [
    #       {
    #         resource_name: 'ResourceName',
    #         namespace: 'Namespace',
    #         option_name: 'OptionName',
    #         value: 'Value'
    #       }
    #     ],
    #     options_to_remove: [
    #       {
    #         resource_name: 'ResourceName',
    #         namespace: 'Namespace',
    #         option_name: 'OptionName'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateEnvironmentOutput
    #   resp.data.environment_name #=> String
    #   resp.data.environment_id #=> String
    #   resp.data.application_name #=> String
    #   resp.data.version_label #=> String
    #   resp.data.solution_stack_name #=> String
    #   resp.data.platform_arn #=> String
    #   resp.data.template_name #=> String
    #   resp.data.description #=> String
    #   resp.data.endpoint_url #=> String
    #   resp.data.cname #=> String
    #   resp.data.date_created #=> Time
    #   resp.data.date_updated #=> Time
    #   resp.data.status #=> String, one of ["Aborting", "Launching", "Updating", "LinkingFrom", "LinkingTo", "Ready", "Terminating", "Terminated"]
    #   resp.data.abortable_operation_in_progress #=> Boolean
    #   resp.data.health #=> String, one of ["Green", "Yellow", "Red", "Grey"]
    #   resp.data.health_status #=> String, one of ["NoData", "Unknown", "Pending", "Ok", "Info", "Warning", "Degraded", "Severe", "Suspended"]
    #   resp.data.resources #=> Types::EnvironmentResourcesDescription
    #   resp.data.resources.load_balancer #=> Types::LoadBalancerDescription
    #   resp.data.resources.load_balancer.load_balancer_name #=> String
    #   resp.data.resources.load_balancer.domain #=> String
    #   resp.data.resources.load_balancer.listeners #=> Array<Listener>
    #   resp.data.resources.load_balancer.listeners[0] #=> Types::Listener
    #   resp.data.resources.load_balancer.listeners[0].protocol #=> String
    #   resp.data.resources.load_balancer.listeners[0].port #=> Integer
    #   resp.data.tier #=> Types::EnvironmentTier
    #   resp.data.tier.name #=> String
    #   resp.data.tier.type #=> String
    #   resp.data.tier.version #=> String
    #   resp.data.environment_links #=> Array<EnvironmentLink>
    #   resp.data.environment_links[0] #=> Types::EnvironmentLink
    #   resp.data.environment_links[0].link_name #=> String
    #   resp.data.environment_links[0].environment_name #=> String
    #   resp.data.environment_arn #=> String
    #   resp.data.operations_role #=> String
    #
    def update_environment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateEnvironmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateEnvironmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateEnvironment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsufficientPrivilegesException, Errors::TooManyBucketsException]),
        data_parser: Parsers::UpdateEnvironment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateEnvironment,
        stubs: @stubs,
        params_class: Params::UpdateEnvironmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_environment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Update the list of tags applied to an AWS Elastic Beanstalk resource. Two lists can be passed: <code>TagsToAdd</code>
    #       for tags to add or update, and <code>TagsToRemove</code>.</p>
    #          <p>Elastic Beanstalk supports tagging of all of its resources. For details about resource tagging, see
    #       <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/applications-tagging-resources.html">Tagging Application
    #         Resources</a>.</p>
    #          <p>If you create a custom IAM user policy to control permission to this operation, specify
    #       one of the following two virtual actions (or both) instead of the API operation name:</p>
    #          <dl>
    #             <dt>elasticbeanstalk:AddTags</dt>
    #             <dd>
    #                <p>Controls permission to call <code>UpdateTagsForResource</code> and pass a list of tags to add in the <code>TagsToAdd</code>
    #           parameter.</p>
    #             </dd>
    #             <dt>elasticbeanstalk:RemoveTags</dt>
    #             <dd>
    #                <p>Controls permission to call <code>UpdateTagsForResource</code> and pass a list of tag keys to remove in the <code>TagsToRemove</code>
    #           parameter.</p>
    #             </dd>
    #          </dl>
    #          <p>For details about creating a custom user policy, see <a href="https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/AWSHowTo.iam.managed-policies.html#AWSHowTo.iam.policies">Creating a Custom User Policy</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resouce to be updated.</p>
    #            <p>Must be the ARN of an Elastic Beanstalk resource.</p>
    #
    # @option params [Array<Tag>] :tags_to_add
    #   <p>A list of tags to add or update. If a key of an existing tag is added, the tag's value is
    #         updated.</p>
    #            <p>Specify at least one of these parameters: <code>TagsToAdd</code>,
    #           <code>TagsToRemove</code>.</p>
    #
    # @option params [Array<String>] :tags_to_remove
    #   <p>A list of tag keys to remove. If a tag key doesn't exist, it is silently ignored.</p>
    #            <p>Specify at least one of these parameters: <code>TagsToAdd</code>,
    #         <code>TagsToRemove</code>.</p>
    #
    # @return [Types::UpdateTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_tags_for_resource(
    #     resource_arn: 'ResourceArn', # required
    #     tags_to_add: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ],
    #     tags_to_remove: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateTagsForResourceOutput
    #
    def update_tags_for_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTagsForResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTagsForResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTagsForResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsufficientPrivilegesException, Errors::ResourceTypeNotSupportedException, Errors::TooManyTagsException, Errors::ResourceNotFoundException, Errors::OperationInProgressException]),
        data_parser: Parsers::UpdateTagsForResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateTagsForResource,
        stubs: @stubs,
        params_class: Params::UpdateTagsForResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_tags_for_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Takes a set of configuration settings and either a configuration template or
    #       environment, and determines whether those values are valid.</p>
    #          <p>This action returns a list of messages indicating any errors or warnings associated
    #       with the selection of option values.</p>
    #
    # @param [Hash] params
    #   See {Types::ValidateConfigurationSettingsInput}.
    #
    # @option params [String] :application_name
    #   <p>The name of the application that the configuration template or environment belongs
    #         to.</p>
    #
    # @option params [String] :template_name
    #   <p>The name of the configuration template to validate the settings against.</p>
    #            <p>Condition: You cannot specify both this and an environment name.</p>
    #
    # @option params [String] :environment_name
    #   <p>The name of the environment to validate the settings against.</p>
    #            <p>Condition: You cannot specify both this and a configuration template name.</p>
    #
    # @option params [Array<ConfigurationOptionSetting>] :option_settings
    #   <p>A list of the options and desired values to evaluate.</p>
    #
    # @return [Types::ValidateConfigurationSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.validate_configuration_settings(
    #     application_name: 'ApplicationName', # required
    #     template_name: 'TemplateName',
    #     environment_name: 'EnvironmentName',
    #     option_settings: [
    #       {
    #         resource_name: 'ResourceName',
    #         namespace: 'Namespace',
    #         option_name: 'OptionName',
    #         value: 'Value'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ValidateConfigurationSettingsOutput
    #   resp.data.messages #=> Array<ValidationMessage>
    #   resp.data.messages[0] #=> Types::ValidationMessage
    #   resp.data.messages[0].message #=> String
    #   resp.data.messages[0].severity #=> String, one of ["error", "warning"]
    #   resp.data.messages[0].namespace #=> String
    #   resp.data.messages[0].option_name #=> String
    #
    def validate_configuration_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ValidateConfigurationSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ValidateConfigurationSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ValidateConfigurationSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsufficientPrivilegesException, Errors::TooManyBucketsException]),
        data_parser: Parsers::ValidateConfigurationSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ValidateConfigurationSettings,
        stubs: @stubs,
        params_class: Params::ValidateConfigurationSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :validate_configuration_settings
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
