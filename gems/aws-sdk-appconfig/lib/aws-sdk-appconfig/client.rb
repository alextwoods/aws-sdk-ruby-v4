# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::AppConfig
  # An API client for AmazonAppConfig
  # See {#initialize} for a full list of supported configuration options
  # <p>Use AppConfig, a capability of Amazon Web Services Systems Manager, to create, manage, and quickly deploy
  #          application configurations. AppConfig supports controlled deployments to applications of
  #          any size and includes built-in validation checks and monitoring. You can use AppConfig with
  #          applications hosted on Amazon EC2 instances, Lambda, containers, mobile applications, or IoT
  #          devices.</p>
  #          <p>To prevent errors when deploying application configurations, especially for production
  #          systems where a simple typo could cause an unexpected outage, AppConfig includes
  #          validators. A validator provides a syntactic or semantic check to ensure that the
  #          configuration you want to deploy works as intended. To validate your application
  #          configuration data, you provide a schema or an Amazon Web Services Lambda function that runs against
  #          the configuration. The configuration deployment or update can only proceed when the
  #          configuration data is valid.</p>
  #          <p>During a configuration deployment, AppConfig monitors the application to ensure that the
  #          deployment is successful. If the system encounters an error, AppConfig rolls back the
  #          change to minimize impact for your application users. You can configure a deployment
  #          strategy for each application or environment that includes deployment criteria, including
  #          velocity, bake time, and alarms to monitor. Similar to error monitoring, if a deployment
  #          triggers an alarm, AppConfig automatically rolls back to the previous version. </p>
  #          <p>AppConfig supports multiple use cases. Here are some examples:</p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <b>Feature flags</b>: Use AppConfig to turn on new
  #                features that require a timely deployment, such as a product launch or announcement.
  #             </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <b>Application tuning</b>: Use AppConfig to carefully
  #                introduce changes to your application that can only be tested with production
  #                traffic.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <b>Allow list</b>: Use AppConfig to allow premium
  #                subscribers to access paid content. </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <b>Operational issues</b>: Use AppConfig to reduce
  #                stress on your application when a dependency or other external factor impacts the
  #                system.</p>
  #             </li>
  #          </ul>
  #          <p>This reference is intended to be used with the <a href="http://docs.aws.amazon.com/appconfig/latest/userguide/what-is-appconfig.html">AppConfig User Guide</a>.</p>
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
    def initialize(config = AWS::SDK::AppConfig::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates an application. An application in AppConfig is a logical unit of code that
    #          provides capabilities for your customers. For example, an application can be a microservice
    #          that runs on Amazon EC2 instances, a mobile application installed by your users, a serverless
    #          application using Amazon API Gateway and Lambda, or any system you run on behalf of
    #          others.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateApplicationInput}.
    #
    # @option params [String] :name
    #   <p>A name for the application.</p>
    #
    # @option params [String] :description
    #   <p>A description of the application.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata to assign to the application. Tags help organize and categorize your AppConfig
    #            resources. Each tag consists of a key and an optional value, both of which you
    #            define.</p>
    #
    # @return [Types::CreateApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application(
    #     name: 'Name', # required
    #     description: 'Description',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateApplicationOutput
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::BadRequestException, Errors::InternalServerException]),
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

    # <p>Creates a configuration profile, which is information that enables AppConfig to access
    #          the configuration source. Valid configuration sources include the AppConfig hosted
    #          configuration store, Amazon Web Services Systems Manager (SSM) documents, SSM Parameter Store parameters, Amazon S3
    #          objects, or any <a href="http://docs.aws.amazon.com/codepipeline/latest/userguide/integrations-action-type.html#integrations-source">integration source
    #             action</a> supported by CodePipeline. A configuration profile includes the following
    #          information:</p>
    #
    #          <ul>
    #             <li>
    #                <p>The URI location of the configuration data.</p>
    #             </li>
    #             <li>
    #                <p>The Identity and Access Management (IAM) role that provides access to the configuration data.</p>
    #             </li>
    #             <li>
    #                <p>A validator for the configuration data. Available validators include either a JSON
    #                Schema or an Amazon Web Services Lambda function.</p>
    #             </li>
    #          </ul>
    #          <p>For more information, see <a href="http://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-creating-configuration-and-profile.html">Create a
    #             Configuration and a Configuration Profile</a> in the <i>AppConfig User
    #             Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateConfigurationProfileInput}.
    #
    # @option params [String] :application_id
    #   <p>The application ID.</p>
    #
    # @option params [String] :name
    #   <p>A name for the configuration profile.</p>
    #
    # @option params [String] :description
    #   <p>A description of the configuration profile.</p>
    #
    # @option params [String] :location_uri
    #   <p>A URI to locate the configuration. You can specify the AppConfig hosted configuration
    #            store, Systems Manager (SSM) document, an SSM Parameter Store parameter, or an Amazon S3 object. For the
    #            hosted configuration store and for feature flags, specify <code>hosted</code>. For an SSM
    #            document, specify either the document name in the format
    #               <code>ssm-document://<Document_name></code> or the Amazon Resource Name (ARN). For
    #            a parameter, specify either the parameter name in the format
    #               <code>ssm-parameter://<Parameter_name></code> or the ARN. For an Amazon S3 object,
    #            specify the URI in the following format: <code>s3://<bucket>/<objectKey>
    #            </code>. Here is an example:
    #            <code>s3://my-bucket/my-app/us-east-1/my-config.json</code>
    #            </p>
    #
    # @option params [String] :retrieval_role_arn
    #   <p>The ARN of an IAM role with permission to access the configuration at the specified
    #               <code>LocationUri</code>.</p>
    #            <important>
    #               <p>A retrieval role ARN is not required for configurations stored in the AppConfig
    #               hosted configuration store. It is required for all other sources that store your
    #               configuration. </p>
    #            </important>
    #
    # @option params [Array<Validator>] :validators
    #   <p>A list of methods for validating the configuration.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata to assign to the configuration profile. Tags help organize and categorize your
    #            AppConfig resources. Each tag consists of a key and an optional value, both of which you
    #            define.</p>
    #
    # @option params [String] :type
    #   <p>The type of configurations contained in the profile. AppConfig supports <code>feature
    #               flags</code> and <code>freeform</code> configurations. We recommend you create feature
    #            flag configurations to enable or disable new features and freeform configurations to
    #            distribute configurations to an application. When calling this API, enter one of the
    #            following values for <code>Type</code>:</p>
    #            <p>
    #               <code>AWS.AppConfig.FeatureFlags</code>
    #            </p>
    #            <p>
    #               <code>AWS.Freeform</code>
    #            </p>
    #
    # @return [Types::CreateConfigurationProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_configuration_profile(
    #     application_id: 'ApplicationId', # required
    #     name: 'Name', # required
    #     description: 'Description',
    #     location_uri: 'LocationUri', # required
    #     retrieval_role_arn: 'RetrievalRoleArn',
    #     validators: [
    #       {
    #         type: 'JSON_SCHEMA', # required - accepts ["JSON_SCHEMA", "LAMBDA"]
    #         content: 'Content' # required
    #       }
    #     ],
    #     tags: {
    #       'key' => 'value'
    #     },
    #     type: 'Type'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateConfigurationProfileOutput
    #   resp.data.application_id #=> String
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.location_uri #=> String
    #   resp.data.retrieval_role_arn #=> String
    #   resp.data.validators #=> Array<Validator>
    #   resp.data.validators[0] #=> Types::Validator
    #   resp.data.validators[0].type #=> String, one of ["JSON_SCHEMA", "LAMBDA"]
    #   resp.data.validators[0].content #=> String
    #   resp.data.type #=> String
    #
    def create_configuration_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateConfigurationProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateConfigurationProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateConfigurationProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
        data_parser: Parsers::CreateConfigurationProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateConfigurationProfile,
        stubs: @stubs,
        params_class: Params::CreateConfigurationProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_configuration_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a deployment strategy that defines important criteria for rolling out your
    #          configuration to the designated targets. A deployment strategy includes the overall
    #          duration required, a percentage of targets to receive the deployment during each interval,
    #          an algorithm that defines how percentage grows, and bake time.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDeploymentStrategyInput}.
    #
    # @option params [String] :name
    #   <p>A name for the deployment strategy.</p>
    #
    # @option params [String] :description
    #   <p>A description of the deployment strategy.</p>
    #
    # @option params [Integer] :deployment_duration_in_minutes
    #   <p>Total amount of time for a deployment to last.</p>
    #
    # @option params [Integer] :final_bake_time_in_minutes
    #   <p>The amount of time AppConfig monitors for alarms before considering the deployment to be
    #            complete and no longer eligible for automatic roll back.</p>
    #
    # @option params [Float] :growth_factor
    #   <p>The percentage of targets to receive a deployed configuration during each
    #            interval.</p>
    #
    # @option params [String] :growth_type
    #   <p>The algorithm used to define how percentage grows over time. AppConfig supports the
    #            following growth types:</p>
    #            <p>
    #               <b>Linear</b>: For this type, AppConfig processes the
    #            deployment by dividing the total number of targets by the value specified for <code>Step
    #               percentage</code>. For example, a linear deployment that uses a <code>Step
    #               percentage</code> of 10 deploys the configuration to 10 percent of the hosts. After
    #            those deployments are complete, the system deploys the configuration to the next 10
    #            percent. This continues until 100% of the targets have successfully received the
    #            configuration.</p>
    #
    #            <p>
    #               <b>Exponential</b>: For this type, AppConfig processes the
    #            deployment exponentially using the following formula: <code>G*(2^N)</code>. In this
    #            formula, <code>G</code> is the growth factor specified by the user and <code>N</code> is
    #            the number of steps until the configuration is deployed to all targets. For example, if you
    #            specify a growth factor of 2, then the system rolls out the configuration as
    #            follows:</p>
    #            <p>
    #               <code>2*(2^0)</code>
    #            </p>
    #            <p>
    #               <code>2*(2^1)</code>
    #            </p>
    #            <p>
    #               <code>2*(2^2)</code>
    #            </p>
    #            <p>Expressed numerically, the deployment rolls out as follows: 2% of the targets, 4% of the
    #            targets, 8% of the targets, and continues until the configuration has been deployed to all
    #            targets.</p>
    #
    # @option params [String] :replicate_to
    #   <p>Save the deployment strategy to a Systems Manager (SSM) document.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata to assign to the deployment strategy. Tags help organize and categorize your
    #            AppConfig resources. Each tag consists of a key and an optional value, both of which you
    #            define.</p>
    #
    # @return [Types::CreateDeploymentStrategyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_deployment_strategy(
    #     name: 'Name', # required
    #     description: 'Description',
    #     deployment_duration_in_minutes: 1, # required
    #     final_bake_time_in_minutes: 1,
    #     growth_factor: 1.0, # required
    #     growth_type: 'LINEAR', # accepts ["LINEAR", "EXPONENTIAL"]
    #     replicate_to: 'NONE', # required - accepts ["NONE", "SSM_DOCUMENT"]
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDeploymentStrategyOutput
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.deployment_duration_in_minutes #=> Integer
    #   resp.data.growth_type #=> String, one of ["LINEAR", "EXPONENTIAL"]
    #   resp.data.growth_factor #=> Float
    #   resp.data.final_bake_time_in_minutes #=> Integer
    #   resp.data.replicate_to #=> String, one of ["NONE", "SSM_DOCUMENT"]
    #
    def create_deployment_strategy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDeploymentStrategyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDeploymentStrategyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDeploymentStrategy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::BadRequestException, Errors::InternalServerException]),
        data_parser: Parsers::CreateDeploymentStrategy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDeploymentStrategy,
        stubs: @stubs,
        params_class: Params::CreateDeploymentStrategyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_deployment_strategy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an environment. For each application, you define one or more environments. An
    #          environment is a logical deployment group of AppConfig targets, such as applications in a
    #             <code>Beta</code> or <code>Production</code> environment. You can also define
    #          environments for application subcomponents such as the <code>Web</code>,
    #             <code>Mobile</code> and <code>Back-end</code> components for your application. You can
    #          configure Amazon CloudWatch alarms for each environment. The system monitors alarms during a
    #          configuration deployment. If an alarm is triggered, the system rolls back the
    #          configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateEnvironmentInput}.
    #
    # @option params [String] :application_id
    #   <p>The application ID.</p>
    #
    # @option params [String] :name
    #   <p>A name for the environment.</p>
    #
    # @option params [String] :description
    #   <p>A description of the environment.</p>
    #
    # @option params [Array<Monitor>] :monitors
    #   <p>Amazon CloudWatch alarms to monitor during the deployment process.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata to assign to the environment. Tags help organize and categorize your AppConfig
    #            resources. Each tag consists of a key and an optional value, both of which you
    #            define.</p>
    #
    # @return [Types::CreateEnvironmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment(
    #     application_id: 'ApplicationId', # required
    #     name: 'Name', # required
    #     description: 'Description',
    #     monitors: [
    #       {
    #         alarm_arn: 'AlarmArn', # required
    #         alarm_role_arn: 'AlarmRoleArn'
    #       }
    #     ],
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateEnvironmentOutput
    #   resp.data.application_id #=> String
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.state #=> String, one of ["READY_FOR_DEPLOYMENT", "DEPLOYING", "ROLLING_BACK", "ROLLED_BACK"]
    #   resp.data.monitors #=> Array<Monitor>
    #   resp.data.monitors[0] #=> Types::Monitor
    #   resp.data.monitors[0].alarm_arn #=> String
    #   resp.data.monitors[0].alarm_role_arn #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
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

    # <p>Creates a new configuration in the AppConfig hosted configuration store.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateHostedConfigurationVersionInput}.
    #
    # @option params [String] :application_id
    #   <p>The application ID.</p>
    #
    # @option params [String] :configuration_profile_id
    #   <p>The configuration profile ID.</p>
    #
    # @option params [String] :description
    #   <p>A description of the configuration.</p>
    #
    # @option params [String] :content
    #   <p>The content of the configuration or the configuration data.</p>
    #
    # @option params [String] :content_type
    #   <p>A standard MIME type describing the format of the configuration content. For more
    #            information, see <a href="https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17">Content-Type</a>.</p>
    #
    # @option params [Integer] :latest_version_number
    #   <p>An optional locking token used to prevent race conditions from overwriting configuration
    #            updates when creating a new version. To ensure your data is not overwritten when creating
    #            multiple hosted configuration versions in rapid succession, specify the version number of
    #            the latest hosted configuration version.</p>
    #
    # @return [Types::CreateHostedConfigurationVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_hosted_configuration_version(
    #     application_id: 'ApplicationId', # required
    #     configuration_profile_id: 'ConfigurationProfileId', # required
    #     description: 'Description',
    #     content: 'Content', # required
    #     content_type: 'ContentType', # required
    #     latest_version_number: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateHostedConfigurationVersionOutput
    #   resp.data.application_id #=> String
    #   resp.data.configuration_profile_id #=> String
    #   resp.data.version_number #=> Integer
    #   resp.data.description #=> String
    #   resp.data.content #=> String
    #   resp.data.content_type #=> String
    #
    def create_hosted_configuration_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateHostedConfigurationVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateHostedConfigurationVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateHostedConfigurationVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ConflictException, Errors::PayloadTooLargeException, Errors::ServiceQuotaExceededException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
        data_parser: Parsers::CreateHostedConfigurationVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateHostedConfigurationVersion,
        stubs: @stubs,
        params_class: Params::CreateHostedConfigurationVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_hosted_configuration_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an application. Deleting an application does not delete a configuration from a
    #          host.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApplicationInput}.
    #
    # @option params [String] :application_id
    #   <p>The ID of the application to delete.</p>
    #
    # @return [Types::DeleteApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application(
    #     application_id: 'ApplicationId' # required
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
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
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

    # <p>Deletes a configuration profile. Deleting a configuration profile does not delete a
    #          configuration from a host.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteConfigurationProfileInput}.
    #
    # @option params [String] :application_id
    #   <p>The application ID that includes the configuration profile you want to delete.</p>
    #
    # @option params [String] :configuration_profile_id
    #   <p>The ID of the configuration profile you want to delete.</p>
    #
    # @return [Types::DeleteConfigurationProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_configuration_profile(
    #     application_id: 'ApplicationId', # required
    #     configuration_profile_id: 'ConfigurationProfileId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteConfigurationProfileOutput
    #
    def delete_configuration_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteConfigurationProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteConfigurationProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteConfigurationProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ConflictException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
        data_parser: Parsers::DeleteConfigurationProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteConfigurationProfile,
        stubs: @stubs,
        params_class: Params::DeleteConfigurationProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_configuration_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a deployment strategy. Deleting a deployment strategy does not delete a
    #          configuration from a host.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDeploymentStrategyInput}.
    #
    # @option params [String] :deployment_strategy_id
    #   <p>The ID of the deployment strategy you want to delete.</p>
    #
    # @return [Types::DeleteDeploymentStrategyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_deployment_strategy(
    #     deployment_strategy_id: 'DeploymentStrategyId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDeploymentStrategyOutput
    #
    def delete_deployment_strategy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDeploymentStrategyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDeploymentStrategyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDeploymentStrategy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
        data_parser: Parsers::DeleteDeploymentStrategy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDeploymentStrategy,
        stubs: @stubs,
        params_class: Params::DeleteDeploymentStrategyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_deployment_strategy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an environment. Deleting an environment does not delete a configuration from a
    #          host.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEnvironmentInput}.
    #
    # @option params [String] :application_id
    #   <p>The application ID that includes the environment that you want to delete.</p>
    #
    # @option params [String] :environment_id
    #   <p>The ID of the environment that you want to delete.</p>
    #
    # @return [Types::DeleteEnvironmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment(
    #     application_id: 'ApplicationId', # required
    #     environment_id: 'EnvironmentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEnvironmentOutput
    #
    def delete_environment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEnvironmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEnvironmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEnvironment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ConflictException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
        data_parser: Parsers::DeleteEnvironment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEnvironment,
        stubs: @stubs,
        params_class: Params::DeleteEnvironmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_environment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a version of a configuration from the AppConfig hosted configuration
    #          store.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteHostedConfigurationVersionInput}.
    #
    # @option params [String] :application_id
    #   <p>The application ID.</p>
    #
    # @option params [String] :configuration_profile_id
    #   <p>The configuration profile ID.</p>
    #
    # @option params [Integer] :version_number
    #   <p>The versions number to delete.</p>
    #
    # @return [Types::DeleteHostedConfigurationVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_hosted_configuration_version(
    #     application_id: 'ApplicationId', # required
    #     configuration_profile_id: 'ConfigurationProfileId', # required
    #     version_number: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteHostedConfigurationVersionOutput
    #
    def delete_hosted_configuration_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteHostedConfigurationVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteHostedConfigurationVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteHostedConfigurationVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
        data_parser: Parsers::DeleteHostedConfigurationVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteHostedConfigurationVersion,
        stubs: @stubs,
        params_class: Params::DeleteHostedConfigurationVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_hosted_configuration_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about an application.</p>
    #
    # @param [Hash] params
    #   See {Types::GetApplicationInput}.
    #
    # @option params [String] :application_id
    #   <p>The ID of the application you want to get.</p>
    #
    # @return [Types::GetApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_application(
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetApplicationOutput
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #
    def get_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetApplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
        data_parser: Parsers::GetApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetApplication,
        stubs: @stubs,
        params_class: Params::GetApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the latest deployed configuration.</p>
    #
    #          <important>
    #             <p>Note the following important information.</p>
    #             <ul>
    #                <li>
    #                   <p>This API action has been deprecated. Calls to receive configuration data should
    #                   use the <a href="https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_StartConfigurationSession.html">StartConfigurationSession</a> and <a href="https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/API_appconfigdata_GetLatestConfiguration.html">GetLatestConfiguration</a> APIs instead. </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <code>GetConfiguration</code> is a priced call. For more information, see
    #                      <a href="https://aws.amazon.com/systems-manager/pricing/">Pricing</a>.</p>
    #                </li>
    #                <li>
    #                   <p>AppConfig uses the value of the <code>ClientConfigurationVersion</code>
    #                   parameter to identify the configuration version on your clients. If you don’t send
    #                      <code>ClientConfigurationVersion</code> with each call to
    #                      <code>GetConfiguration</code>, your clients receive the current configuration.
    #                   You are charged each time your clients receive a configuration.</p>
    #                   <p>To avoid excess charges, we recommend you use the <a href="https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/StartConfigurationSession.html">StartConfigurationSession</a> and <a href="https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/GetLatestConfiguration.html">GetLatestConfiguration</a> APIs, which track the client configuration
    #                   version on your behalf. If you choose to continue using
    #                      <code>GetConfiguration</code>, we recommend that you include the
    #                      <code>ClientConfigurationVersion</code> value with every call to
    #                      <code>GetConfiguration</code>. The value to use for
    #                      <code>ClientConfigurationVersion</code> comes from the
    #                      <code>ConfigurationVersion</code> attribute returned by
    #                      <code>GetConfiguration</code> when there is new or updated data, and should be
    #                   saved for subsequent calls to <code>GetConfiguration</code>.</p>
    #                </li>
    #             </ul>
    #          </important>
    #
    # @deprecated
    #   This API has been deprecated in favor of the GetLatestConfiguration API used in conjunction with StartConfigurationSession.
    #
    # @param [Hash] params
    #   See {Types::GetConfigurationInput}.
    #
    # @option params [String] :application
    #   <p>The application to get. Specify either the application name or the application
    #            ID.</p>
    #
    # @option params [String] :environment
    #   <p>The environment to get. Specify either the environment name or the environment
    #            ID.</p>
    #
    # @option params [String] :configuration
    #   <p>The configuration to get. Specify either the configuration name or the configuration
    #            ID.</p>
    #
    # @option params [String] :client_id
    #   <p>The clientId parameter in the following command is a unique, user-specified ID to
    #            identify the client for the configuration. This ID enables AppConfig to deploy the
    #            configuration in intervals, as defined in the deployment strategy. </p>
    #
    # @option params [String] :client_configuration_version
    #   <p>The configuration version returned in the most recent <code>GetConfiguration</code>
    #            response.</p>
    #            <important>
    #               <p>AppConfig uses the value of the <code>ClientConfigurationVersion</code> parameter to
    #               identify the configuration version on your clients. If you don’t send
    #                  <code>ClientConfigurationVersion</code> with each call to
    #                  <code>GetConfiguration</code>, your clients receive the current configuration. You
    #               are charged each time your clients receive a configuration.</p>
    #               <p>To avoid excess charges, we recommend that you include the
    #                  <code>ClientConfigurationVersion</code> value with every call to
    #                  <code>GetConfiguration</code>. This value must be saved on your client. Subsequent
    #               calls to <code>GetConfiguration</code> must pass this value by using the
    #                  <code>ClientConfigurationVersion</code> parameter. </p>
    #            </important>
    #            <p>For more information about working with configurations, see <a href="http://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-retrieving-the-configuration.html">Retrieving the
    #               Configuration</a> in the <i>AppConfig User Guide</i>.</p>
    #
    # @return [Types::GetConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_configuration(
    #     application: 'Application', # required
    #     environment: 'Environment', # required
    #     configuration: 'Configuration', # required
    #     client_id: 'ClientId', # required
    #     client_configuration_version: 'ClientConfigurationVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetConfigurationOutput
    #   resp.data.content #=> String
    #   resp.data.configuration_version #=> String
    #   resp.data.content_type #=> String
    #
    def get_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
        data_parser: Parsers::GetConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetConfiguration,
        stubs: @stubs,
        params_class: Params::GetConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about a configuration profile.</p>
    #
    # @param [Hash] params
    #   See {Types::GetConfigurationProfileInput}.
    #
    # @option params [String] :application_id
    #   <p>The ID of the application that includes the configuration profile you want to
    #            get.</p>
    #
    # @option params [String] :configuration_profile_id
    #   <p>The ID of the configuration profile that you want to get.</p>
    #
    # @return [Types::GetConfigurationProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_configuration_profile(
    #     application_id: 'ApplicationId', # required
    #     configuration_profile_id: 'ConfigurationProfileId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetConfigurationProfileOutput
    #   resp.data.application_id #=> String
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.location_uri #=> String
    #   resp.data.retrieval_role_arn #=> String
    #   resp.data.validators #=> Array<Validator>
    #   resp.data.validators[0] #=> Types::Validator
    #   resp.data.validators[0].type #=> String, one of ["JSON_SCHEMA", "LAMBDA"]
    #   resp.data.validators[0].content #=> String
    #   resp.data.type #=> String
    #
    def get_configuration_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetConfigurationProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetConfigurationProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetConfigurationProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
        data_parser: Parsers::GetConfigurationProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetConfigurationProfile,
        stubs: @stubs,
        params_class: Params::GetConfigurationProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_configuration_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about a configuration deployment.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDeploymentInput}.
    #
    # @option params [String] :application_id
    #   <p>The ID of the application that includes the deployment you want to get. </p>
    #
    # @option params [String] :environment_id
    #   <p>The ID of the environment that includes the deployment you want to get. </p>
    #
    # @option params [Integer] :deployment_number
    #   <p>The sequence number of the deployment.</p>
    #
    # @return [Types::GetDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployment(
    #     application_id: 'ApplicationId', # required
    #     environment_id: 'EnvironmentId', # required
    #     deployment_number: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDeploymentOutput
    #   resp.data.application_id #=> String
    #   resp.data.environment_id #=> String
    #   resp.data.deployment_strategy_id #=> String
    #   resp.data.configuration_profile_id #=> String
    #   resp.data.deployment_number #=> Integer
    #   resp.data.configuration_name #=> String
    #   resp.data.configuration_location_uri #=> String
    #   resp.data.configuration_version #=> String
    #   resp.data.description #=> String
    #   resp.data.deployment_duration_in_minutes #=> Integer
    #   resp.data.growth_type #=> String, one of ["LINEAR", "EXPONENTIAL"]
    #   resp.data.growth_factor #=> Float
    #   resp.data.final_bake_time_in_minutes #=> Integer
    #   resp.data.state #=> String, one of ["BAKING", "VALIDATING", "DEPLOYING", "COMPLETE", "ROLLING_BACK", "ROLLED_BACK"]
    #   resp.data.event_log #=> Array<DeploymentEvent>
    #   resp.data.event_log[0] #=> Types::DeploymentEvent
    #   resp.data.event_log[0].event_type #=> String, one of ["PERCENTAGE_UPDATED", "ROLLBACK_STARTED", "ROLLBACK_COMPLETED", "BAKE_TIME_STARTED", "DEPLOYMENT_STARTED", "DEPLOYMENT_COMPLETED"]
    #   resp.data.event_log[0].triggered_by #=> String, one of ["USER", "APPCONFIG", "CLOUDWATCH_ALARM", "INTERNAL_ERROR"]
    #   resp.data.event_log[0].description #=> String
    #   resp.data.event_log[0].occurred_at #=> Time
    #   resp.data.percentage_complete #=> Float
    #   resp.data.started_at #=> Time
    #   resp.data.completed_at #=> Time
    #
    def get_deployment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDeploymentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDeploymentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDeployment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
        data_parser: Parsers::GetDeployment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDeployment,
        stubs: @stubs,
        params_class: Params::GetDeploymentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_deployment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about a deployment strategy. A deployment strategy defines
    #          important criteria for rolling out your configuration to the designated targets. A
    #          deployment strategy includes the overall duration required, a percentage of targets to
    #          receive the deployment during each interval, an algorithm that defines how percentage
    #          grows, and bake time.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDeploymentStrategyInput}.
    #
    # @option params [String] :deployment_strategy_id
    #   <p>The ID of the deployment strategy to get.</p>
    #
    # @return [Types::GetDeploymentStrategyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_deployment_strategy(
    #     deployment_strategy_id: 'DeploymentStrategyId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDeploymentStrategyOutput
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.deployment_duration_in_minutes #=> Integer
    #   resp.data.growth_type #=> String, one of ["LINEAR", "EXPONENTIAL"]
    #   resp.data.growth_factor #=> Float
    #   resp.data.final_bake_time_in_minutes #=> Integer
    #   resp.data.replicate_to #=> String, one of ["NONE", "SSM_DOCUMENT"]
    #
    def get_deployment_strategy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDeploymentStrategyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDeploymentStrategyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDeploymentStrategy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
        data_parser: Parsers::GetDeploymentStrategy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDeploymentStrategy,
        stubs: @stubs,
        params_class: Params::GetDeploymentStrategyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_deployment_strategy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about an environment. An environment is a logical deployment group
    #          of AppConfig applications, such as applications in a <code>Production</code> environment or
    #          in an <code>EU_Region</code> environment. Each configuration deployment targets an
    #          environment. You can enable one or more Amazon CloudWatch alarms for an environment. If an alarm is
    #          triggered during a deployment, AppConfig roles back the configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEnvironmentInput}.
    #
    # @option params [String] :application_id
    #   <p>The ID of the application that includes the environment you want to get.</p>
    #
    # @option params [String] :environment_id
    #   <p>The ID of the environment that you want to get.</p>
    #
    # @return [Types::GetEnvironmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_environment(
    #     application_id: 'ApplicationId', # required
    #     environment_id: 'EnvironmentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEnvironmentOutput
    #   resp.data.application_id #=> String
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.state #=> String, one of ["READY_FOR_DEPLOYMENT", "DEPLOYING", "ROLLING_BACK", "ROLLED_BACK"]
    #   resp.data.monitors #=> Array<Monitor>
    #   resp.data.monitors[0] #=> Types::Monitor
    #   resp.data.monitors[0].alarm_arn #=> String
    #   resp.data.monitors[0].alarm_role_arn #=> String
    #
    def get_environment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEnvironmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEnvironmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEnvironment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
        data_parser: Parsers::GetEnvironment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEnvironment,
        stubs: @stubs,
        params_class: Params::GetEnvironmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_environment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about a specific configuration version.</p>
    #
    # @param [Hash] params
    #   See {Types::GetHostedConfigurationVersionInput}.
    #
    # @option params [String] :application_id
    #   <p>The application ID.</p>
    #
    # @option params [String] :configuration_profile_id
    #   <p>The configuration profile ID.</p>
    #
    # @option params [Integer] :version_number
    #   <p>The version.</p>
    #
    # @return [Types::GetHostedConfigurationVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_hosted_configuration_version(
    #     application_id: 'ApplicationId', # required
    #     configuration_profile_id: 'ConfigurationProfileId', # required
    #     version_number: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetHostedConfigurationVersionOutput
    #   resp.data.application_id #=> String
    #   resp.data.configuration_profile_id #=> String
    #   resp.data.version_number #=> Integer
    #   resp.data.description #=> String
    #   resp.data.content #=> String
    #   resp.data.content_type #=> String
    #
    def get_hosted_configuration_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetHostedConfigurationVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetHostedConfigurationVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetHostedConfigurationVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
        data_parser: Parsers::GetHostedConfigurationVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetHostedConfigurationVersion,
        stubs: @stubs,
        params_class: Params::GetHostedConfigurationVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_hosted_configuration_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all applications in your Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListApplicationsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that
    #            you can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to start the list. Next token is a pagination token generated by AppConfig to
    #            describe what page the previous List call ended on. For the first List request, the
    #            nextToken should not be set. On subsequent calls, the nextToken parameter should be set to
    #            the previous responses nextToken value. Use this token to get the next set of results.
    #         </p>
    #
    # @return [Types::ListApplicationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_applications(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListApplicationsOutput
    #   resp.data.items #=> Array<Application>
    #   resp.data.items[0] #=> Types::Application
    #   resp.data.items[0].id #=> String
    #   resp.data.items[0].name #=> String
    #   resp.data.items[0].description #=> String
    #   resp.data.next_token #=> String
    #
    def list_applications(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListApplicationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListApplicationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListApplications
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerException]),
        data_parser: Parsers::ListApplications
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListApplications,
        stubs: @stubs,
        params_class: Params::ListApplicationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_applications
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the configuration profiles for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::ListConfigurationProfilesInput}.
    #
    # @option params [String] :application_id
    #   <p>The application ID.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that
    #            you can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    #
    # @option params [String] :type
    #   <p>A filter based on the type of configurations that the configuration profile contains. A
    #            configuration can be a feature flag or a freeform configuration.</p>
    #
    # @return [Types::ListConfigurationProfilesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configuration_profiles(
    #     application_id: 'ApplicationId', # required
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     type: 'Type'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListConfigurationProfilesOutput
    #   resp.data.items #=> Array<ConfigurationProfileSummary>
    #   resp.data.items[0] #=> Types::ConfigurationProfileSummary
    #   resp.data.items[0].application_id #=> String
    #   resp.data.items[0].id #=> String
    #   resp.data.items[0].name #=> String
    #   resp.data.items[0].location_uri #=> String
    #   resp.data.items[0].validator_types #=> Array<String>
    #   resp.data.items[0].validator_types[0] #=> String, one of ["JSON_SCHEMA", "LAMBDA"]
    #   resp.data.items[0].type #=> String
    #   resp.data.next_token #=> String
    #
    def list_configuration_profiles(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListConfigurationProfilesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListConfigurationProfilesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListConfigurationProfiles
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
        data_parser: Parsers::ListConfigurationProfiles
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListConfigurationProfiles,
        stubs: @stubs,
        params_class: Params::ListConfigurationProfilesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_configuration_profiles
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists deployment strategies.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDeploymentStrategiesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that
    #            you can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    #
    # @return [Types::ListDeploymentStrategiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_deployment_strategies(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDeploymentStrategiesOutput
    #   resp.data.items #=> Array<DeploymentStrategy>
    #   resp.data.items[0] #=> Types::DeploymentStrategy
    #   resp.data.items[0].id #=> String
    #   resp.data.items[0].name #=> String
    #   resp.data.items[0].description #=> String
    #   resp.data.items[0].deployment_duration_in_minutes #=> Integer
    #   resp.data.items[0].growth_type #=> String, one of ["LINEAR", "EXPONENTIAL"]
    #   resp.data.items[0].growth_factor #=> Float
    #   resp.data.items[0].final_bake_time_in_minutes #=> Integer
    #   resp.data.items[0].replicate_to #=> String, one of ["NONE", "SSM_DOCUMENT"]
    #   resp.data.next_token #=> String
    #
    def list_deployment_strategies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDeploymentStrategiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDeploymentStrategiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDeploymentStrategies
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerException]),
        data_parser: Parsers::ListDeploymentStrategies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDeploymentStrategies,
        stubs: @stubs,
        params_class: Params::ListDeploymentStrategiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_deployment_strategies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the deployments for an environment in descending deployment number order.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDeploymentsInput}.
    #
    # @option params [String] :application_id
    #   <p>The application ID.</p>
    #
    # @option params [String] :environment_id
    #   <p>The environment ID.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items that may be returned for this call. If there are items that
    #            have not yet been returned, the response will include a non-null <code>NextToken</code>
    #            that you can provide in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>The token returned by a prior call to this operation indicating the next set of results
    #            to be returned. If not specified, the operation will return the first set of
    #            results.</p>
    #
    # @return [Types::ListDeploymentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_deployments(
    #     application_id: 'ApplicationId', # required
    #     environment_id: 'EnvironmentId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDeploymentsOutput
    #   resp.data.items #=> Array<DeploymentSummary>
    #   resp.data.items[0] #=> Types::DeploymentSummary
    #   resp.data.items[0].deployment_number #=> Integer
    #   resp.data.items[0].configuration_name #=> String
    #   resp.data.items[0].configuration_version #=> String
    #   resp.data.items[0].deployment_duration_in_minutes #=> Integer
    #   resp.data.items[0].growth_type #=> String, one of ["LINEAR", "EXPONENTIAL"]
    #   resp.data.items[0].growth_factor #=> Float
    #   resp.data.items[0].final_bake_time_in_minutes #=> Integer
    #   resp.data.items[0].state #=> String, one of ["BAKING", "VALIDATING", "DEPLOYING", "COMPLETE", "ROLLING_BACK", "ROLLED_BACK"]
    #   resp.data.items[0].percentage_complete #=> Float
    #   resp.data.items[0].started_at #=> Time
    #   resp.data.items[0].completed_at #=> Time
    #   resp.data.next_token #=> String
    #
    def list_deployments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDeploymentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDeploymentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDeployments
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
        data_parser: Parsers::ListDeployments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDeployments,
        stubs: @stubs,
        params_class: Params::ListDeploymentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_deployments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the environments for an application.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEnvironmentsInput}.
    #
    # @option params [String] :application_id
    #   <p>The application ID.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that
    #            you can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    #
    # @return [Types::ListEnvironmentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environments(
    #     application_id: 'ApplicationId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEnvironmentsOutput
    #   resp.data.items #=> Array<Environment>
    #   resp.data.items[0] #=> Types::Environment
    #   resp.data.items[0].application_id #=> String
    #   resp.data.items[0].id #=> String
    #   resp.data.items[0].name #=> String
    #   resp.data.items[0].description #=> String
    #   resp.data.items[0].state #=> String, one of ["READY_FOR_DEPLOYMENT", "DEPLOYING", "ROLLING_BACK", "ROLLED_BACK"]
    #   resp.data.items[0].monitors #=> Array<Monitor>
    #   resp.data.items[0].monitors[0] #=> Types::Monitor
    #   resp.data.items[0].monitors[0].alarm_arn #=> String
    #   resp.data.items[0].monitors[0].alarm_role_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_environments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEnvironmentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEnvironmentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEnvironments
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
        data_parser: Parsers::ListEnvironments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEnvironments,
        stubs: @stubs,
        params_class: Params::ListEnvironmentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_environments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists configurations stored in the AppConfig hosted configuration store by
    #          version.</p>
    #
    # @param [Hash] params
    #   See {Types::ListHostedConfigurationVersionsInput}.
    #
    # @option params [String] :application_id
    #   <p>The application ID.</p>
    #
    # @option params [String] :configuration_profile_id
    #   <p>The configuration profile ID.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that
    #            you can specify in a subsequent call to get the next set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    #
    # @return [Types::ListHostedConfigurationVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_hosted_configuration_versions(
    #     application_id: 'ApplicationId', # required
    #     configuration_profile_id: 'ConfigurationProfileId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListHostedConfigurationVersionsOutput
    #   resp.data.items #=> Array<HostedConfigurationVersionSummary>
    #   resp.data.items[0] #=> Types::HostedConfigurationVersionSummary
    #   resp.data.items[0].application_id #=> String
    #   resp.data.items[0].configuration_profile_id #=> String
    #   resp.data.items[0].version_number #=> Integer
    #   resp.data.items[0].description #=> String
    #   resp.data.items[0].content_type #=> String
    #   resp.data.next_token #=> String
    #
    def list_hosted_configuration_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListHostedConfigurationVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListHostedConfigurationVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListHostedConfigurationVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
        data_parser: Parsers::ListHostedConfigurationVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListHostedConfigurationVersions,
        stubs: @stubs,
        params_class: Params::ListHostedConfigurationVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_hosted_configuration_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the list of key-value tags assigned to the resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The resource ARN.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
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

    # <p>Starts a deployment.</p>
    #
    # @param [Hash] params
    #   See {Types::StartDeploymentInput}.
    #
    # @option params [String] :application_id
    #   <p>The application ID.</p>
    #
    # @option params [String] :environment_id
    #   <p>The environment ID.</p>
    #
    # @option params [String] :deployment_strategy_id
    #   <p>The deployment strategy ID.</p>
    #
    # @option params [String] :configuration_profile_id
    #   <p>The configuration profile ID.</p>
    #
    # @option params [String] :configuration_version
    #   <p>The configuration version to deploy.</p>
    #
    # @option params [String] :description
    #   <p>A description of the deployment.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Metadata to assign to the deployment. Tags help organize and categorize your AppConfig
    #            resources. Each tag consists of a key and an optional value, both of which you
    #            define.</p>
    #
    # @return [Types::StartDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_deployment(
    #     application_id: 'ApplicationId', # required
    #     environment_id: 'EnvironmentId', # required
    #     deployment_strategy_id: 'DeploymentStrategyId', # required
    #     configuration_profile_id: 'ConfigurationProfileId', # required
    #     configuration_version: 'ConfigurationVersion', # required
    #     description: 'Description',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartDeploymentOutput
    #   resp.data.application_id #=> String
    #   resp.data.environment_id #=> String
    #   resp.data.deployment_strategy_id #=> String
    #   resp.data.configuration_profile_id #=> String
    #   resp.data.deployment_number #=> Integer
    #   resp.data.configuration_name #=> String
    #   resp.data.configuration_location_uri #=> String
    #   resp.data.configuration_version #=> String
    #   resp.data.description #=> String
    #   resp.data.deployment_duration_in_minutes #=> Integer
    #   resp.data.growth_type #=> String, one of ["LINEAR", "EXPONENTIAL"]
    #   resp.data.growth_factor #=> Float
    #   resp.data.final_bake_time_in_minutes #=> Integer
    #   resp.data.state #=> String, one of ["BAKING", "VALIDATING", "DEPLOYING", "COMPLETE", "ROLLING_BACK", "ROLLED_BACK"]
    #   resp.data.event_log #=> Array<DeploymentEvent>
    #   resp.data.event_log[0] #=> Types::DeploymentEvent
    #   resp.data.event_log[0].event_type #=> String, one of ["PERCENTAGE_UPDATED", "ROLLBACK_STARTED", "ROLLBACK_COMPLETED", "BAKE_TIME_STARTED", "DEPLOYMENT_STARTED", "DEPLOYMENT_COMPLETED"]
    #   resp.data.event_log[0].triggered_by #=> String, one of ["USER", "APPCONFIG", "CLOUDWATCH_ALARM", "INTERNAL_ERROR"]
    #   resp.data.event_log[0].description #=> String
    #   resp.data.event_log[0].occurred_at #=> Time
    #   resp.data.percentage_complete #=> Float
    #   resp.data.started_at #=> Time
    #   resp.data.completed_at #=> Time
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ConflictException, Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
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

    # <p>Stops a deployment. This API action works only on deployments that have a status of
    #             <code>DEPLOYING</code>. This action moves the deployment to a status of
    #             <code>ROLLED_BACK</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::StopDeploymentInput}.
    #
    # @option params [String] :application_id
    #   <p>The application ID.</p>
    #
    # @option params [String] :environment_id
    #   <p>The environment ID.</p>
    #
    # @option params [Integer] :deployment_number
    #   <p>The sequence number of the deployment.</p>
    #
    # @return [Types::StopDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_deployment(
    #     application_id: 'ApplicationId', # required
    #     environment_id: 'EnvironmentId', # required
    #     deployment_number: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopDeploymentOutput
    #   resp.data.application_id #=> String
    #   resp.data.environment_id #=> String
    #   resp.data.deployment_strategy_id #=> String
    #   resp.data.configuration_profile_id #=> String
    #   resp.data.deployment_number #=> Integer
    #   resp.data.configuration_name #=> String
    #   resp.data.configuration_location_uri #=> String
    #   resp.data.configuration_version #=> String
    #   resp.data.description #=> String
    #   resp.data.deployment_duration_in_minutes #=> Integer
    #   resp.data.growth_type #=> String, one of ["LINEAR", "EXPONENTIAL"]
    #   resp.data.growth_factor #=> Float
    #   resp.data.final_bake_time_in_minutes #=> Integer
    #   resp.data.state #=> String, one of ["BAKING", "VALIDATING", "DEPLOYING", "COMPLETE", "ROLLING_BACK", "ROLLED_BACK"]
    #   resp.data.event_log #=> Array<DeploymentEvent>
    #   resp.data.event_log[0] #=> Types::DeploymentEvent
    #   resp.data.event_log[0].event_type #=> String, one of ["PERCENTAGE_UPDATED", "ROLLBACK_STARTED", "ROLLBACK_COMPLETED", "BAKE_TIME_STARTED", "DEPLOYMENT_STARTED", "DEPLOYMENT_COMPLETED"]
    #   resp.data.event_log[0].triggered_by #=> String, one of ["USER", "APPCONFIG", "CLOUDWATCH_ALARM", "INTERNAL_ERROR"]
    #   resp.data.event_log[0].description #=> String
    #   resp.data.event_log[0].occurred_at #=> Time
    #   resp.data.percentage_complete #=> Float
    #   resp.data.started_at #=> Time
    #   resp.data.completed_at #=> Time
    #
    def stop_deployment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopDeploymentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopDeploymentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopDeployment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
        data_parser: Parsers::StopDeployment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopDeployment,
        stubs: @stubs,
        params_class: Params::StopDeploymentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_deployment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Assigns
    #          metadata
    #          to an AppConfig resource. Tags help organize and categorize your AppConfig resources. Each
    #          tag consists of a key and an optional value, both of which you define. You can specify a
    #          maximum of 50 tags for a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource for which to retrieve tags.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value string map. The valid character set is [a-zA-Z+-=._:/]. The tag key can be
    #            up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to
    #            256 characters.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
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

    # <p>Deletes a tag key and value from an AppConfig resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource for which to remove tags.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys to delete.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceArn', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
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

    # <p>Updates an application.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateApplicationInput}.
    #
    # @option params [String] :application_id
    #   <p>The application ID.</p>
    #
    # @option params [String] :name
    #   <p>The name of the application.</p>
    #
    # @option params [String] :description
    #   <p>A description of the application.</p>
    #
    # @return [Types::UpdateApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application(
    #     application_id: 'ApplicationId', # required
    #     name: 'Name',
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateApplicationOutput
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
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

    # <p>Updates a configuration profile.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateConfigurationProfileInput}.
    #
    # @option params [String] :application_id
    #   <p>The application ID.</p>
    #
    # @option params [String] :configuration_profile_id
    #   <p>The ID of the configuration profile.</p>
    #
    # @option params [String] :name
    #   <p>The name of the configuration profile.</p>
    #
    # @option params [String] :description
    #   <p>A description of the configuration profile.</p>
    #
    # @option params [String] :retrieval_role_arn
    #   <p>The ARN of an IAM role with permission to access the configuration at the specified
    #               <code>LocationUri</code>.</p>
    #
    # @option params [Array<Validator>] :validators
    #   <p>A list of methods for validating the configuration.</p>
    #
    # @return [Types::UpdateConfigurationProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_configuration_profile(
    #     application_id: 'ApplicationId', # required
    #     configuration_profile_id: 'ConfigurationProfileId', # required
    #     name: 'Name',
    #     description: 'Description',
    #     retrieval_role_arn: 'RetrievalRoleArn',
    #     validators: [
    #       {
    #         type: 'JSON_SCHEMA', # required - accepts ["JSON_SCHEMA", "LAMBDA"]
    #         content: 'Content' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateConfigurationProfileOutput
    #   resp.data.application_id #=> String
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.location_uri #=> String
    #   resp.data.retrieval_role_arn #=> String
    #   resp.data.validators #=> Array<Validator>
    #   resp.data.validators[0] #=> Types::Validator
    #   resp.data.validators[0].type #=> String, one of ["JSON_SCHEMA", "LAMBDA"]
    #   resp.data.validators[0].content #=> String
    #   resp.data.type #=> String
    #
    def update_configuration_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateConfigurationProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateConfigurationProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateConfigurationProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
        data_parser: Parsers::UpdateConfigurationProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateConfigurationProfile,
        stubs: @stubs,
        params_class: Params::UpdateConfigurationProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_configuration_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a deployment strategy.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDeploymentStrategyInput}.
    #
    # @option params [String] :deployment_strategy_id
    #   <p>The deployment strategy ID.</p>
    #
    # @option params [String] :description
    #   <p>A description of the deployment strategy.</p>
    #
    # @option params [Integer] :deployment_duration_in_minutes
    #   <p>Total amount of time for a deployment to last.</p>
    #
    # @option params [Integer] :final_bake_time_in_minutes
    #   <p>The amount of time that AppConfig monitors for alarms before considering the deployment
    #            to be complete and no longer eligible for automatic rollback.</p>
    #
    # @option params [Float] :growth_factor
    #   <p>The percentage of targets to receive a deployed configuration during each
    #            interval.</p>
    #
    # @option params [String] :growth_type
    #   <p>The algorithm used to define how percentage grows over time. AppConfig supports the
    #            following growth types:</p>
    #            <p>
    #               <b>Linear</b>: For this type, AppConfig processes the
    #            deployment by increments of the growth factor evenly distributed over the deployment time.
    #            For example, a linear deployment that uses a growth factor of 20 initially makes the
    #            configuration available to 20 percent of the targets. After 1/5th of the deployment time
    #            has passed, the system updates the percentage to 40 percent. This continues until 100% of
    #            the targets are set to receive the deployed configuration.</p>
    #
    #            <p>
    #               <b>Exponential</b>: For this type, AppConfig processes the
    #            deployment exponentially using the following formula: <code>G*(2^N)</code>. In this
    #            formula, <code>G</code> is the growth factor specified by the user and <code>N</code> is
    #            the number of steps until the configuration is deployed to all targets. For example, if you
    #            specify a growth factor of 2, then the system rolls out the configuration as
    #            follows:</p>
    #            <p>
    #               <code>2*(2^0)</code>
    #            </p>
    #            <p>
    #               <code>2*(2^1)</code>
    #            </p>
    #            <p>
    #               <code>2*(2^2)</code>
    #            </p>
    #            <p>Expressed numerically, the deployment rolls out as follows: 2% of the targets, 4% of the
    #            targets, 8% of the targets, and continues until the configuration has been deployed to all
    #            targets.</p>
    #
    # @return [Types::UpdateDeploymentStrategyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_deployment_strategy(
    #     deployment_strategy_id: 'DeploymentStrategyId', # required
    #     description: 'Description',
    #     deployment_duration_in_minutes: 1,
    #     final_bake_time_in_minutes: 1,
    #     growth_factor: 1.0,
    #     growth_type: 'LINEAR' # accepts ["LINEAR", "EXPONENTIAL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDeploymentStrategyOutput
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.deployment_duration_in_minutes #=> Integer
    #   resp.data.growth_type #=> String, one of ["LINEAR", "EXPONENTIAL"]
    #   resp.data.growth_factor #=> Float
    #   resp.data.final_bake_time_in_minutes #=> Integer
    #   resp.data.replicate_to #=> String, one of ["NONE", "SSM_DOCUMENT"]
    #
    def update_deployment_strategy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDeploymentStrategyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDeploymentStrategyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDeploymentStrategy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
        data_parser: Parsers::UpdateDeploymentStrategy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDeploymentStrategy,
        stubs: @stubs,
        params_class: Params::UpdateDeploymentStrategyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_deployment_strategy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an environment.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateEnvironmentInput}.
    #
    # @option params [String] :application_id
    #   <p>The application ID.</p>
    #
    # @option params [String] :environment_id
    #   <p>The environment ID.</p>
    #
    # @option params [String] :name
    #   <p>The name of the environment.</p>
    #
    # @option params [String] :description
    #   <p>A description of the environment.</p>
    #
    # @option params [Array<Monitor>] :monitors
    #   <p>Amazon CloudWatch alarms to monitor during the deployment process.</p>
    #
    # @return [Types::UpdateEnvironmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment(
    #     application_id: 'ApplicationId', # required
    #     environment_id: 'EnvironmentId', # required
    #     name: 'Name',
    #     description: 'Description',
    #     monitors: [
    #       {
    #         alarm_arn: 'AlarmArn', # required
    #         alarm_role_arn: 'AlarmRoleArn'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateEnvironmentOutput
    #   resp.data.application_id #=> String
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.state #=> String, one of ["READY_FOR_DEPLOYMENT", "DEPLOYING", "ROLLING_BACK", "ROLLED_BACK"]
    #   resp.data.monitors #=> Array<Monitor>
    #   resp.data.monitors[0] #=> Types::Monitor
    #   resp.data.monitors[0].alarm_arn #=> String
    #   resp.data.monitors[0].alarm_role_arn #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
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

    # <p>Uses the validators in a configuration profile to validate a configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::ValidateConfigurationInput}.
    #
    # @option params [String] :application_id
    #   <p>The application ID.</p>
    #
    # @option params [String] :configuration_profile_id
    #   <p>The configuration profile ID.</p>
    #
    # @option params [String] :configuration_version
    #   <p>The version of the configuration to validate.</p>
    #
    # @return [Types::ValidateConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.validate_configuration(
    #     application_id: 'ApplicationId', # required
    #     configuration_profile_id: 'ConfigurationProfileId', # required
    #     configuration_version: 'ConfigurationVersion' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ValidateConfigurationOutput
    #
    def validate_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ValidateConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ValidateConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ValidateConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::BadRequestException, Errors::ResourceNotFoundException, Errors::InternalServerException]),
        data_parser: Parsers::ValidateConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ValidateConfiguration,
        stubs: @stubs,
        params_class: Params::ValidateConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :validate_configuration
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
