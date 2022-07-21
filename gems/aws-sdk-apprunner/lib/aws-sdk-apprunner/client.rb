# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::AppRunner
  # An API client for AppRunner
  # See {#initialize} for a full list of supported configuration options
  # <fullname>App Runner</fullname>
  #
  #
  #
  #          <p>App Runner is an application service that provides a fast, simple, and cost-effective way to go directly from an existing container image or source code
  #       to a running service in the Amazon Web Services Cloud in seconds. You don't need to learn new technologies, decide which compute service to use, or understand how to
  #       provision and configure Amazon Web Services resources.</p>
  #          <p>App Runner connects directly to your container registry or source code repository. It provides an automatic delivery pipeline with fully managed operations,
  #       high performance, scalability, and security.</p>
  #          <p>For more information about App Runner, see the <a href="https://docs.aws.amazon.com/apprunner/latest/dg/">App Runner Developer Guide</a>.
  #       For release information, see the <a href="https://docs.aws.amazon.com/apprunner/latest/relnotes/">App Runner Release Notes</a>.</p>
  #          <p>
  #        To install the Software Development Kits (SDKs), Integrated
  #       Development Environment (IDE) Toolkits, and command line tools that you can use to access the API, see <a href="http://aws.amazon.com/tools/">Tools for
  #         Amazon Web Services</a>.</p>
  #          <p>
  #             <b>Endpoints</b>
  #          </p>
  #          <p>For a list of Region-specific endpoints that App Runner supports, see <a href="https://docs.aws.amazon.com/general/latest/gr/apprunner.html">App Runner
  #         endpoints and quotas</a> in the <i>Amazon Web Services General Reference</i>.</p>
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
    def initialize(config = AWS::SDK::AppRunner::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Associate your own domain name with the App Runner subdomain URL of your App Runner service.</p>
    #          <p>After you call <code>AssociateCustomDomain</code> and receive a successful response, use the information in the <a>CustomDomain</a> record
    #       that's returned to add CNAME records to your Domain Name System (DNS). For each mapped domain name, add a mapping to the target App Runner subdomain and one or
    #       more certificate validation records. App Runner then performs DNS validation to verify that you own or control the domain name that you associated. App Runner tracks
    #       domain validity in a certificate stored in <a href="https://docs.aws.amazon.com/acm/latest/userguide">AWS Certificate Manager (ACM)</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateCustomDomainInput}.
    #
    # @option params [String] :service_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner service that you want to associate a custom domain name with.</p>
    #
    # @option params [String] :domain_name
    #   <p>A custom domain endpoint to associate. Specify a root domain (for example, <code>example.com</code>), a subdomain (for example,
    #           <code>login.example.com</code> or <code>admin.login.example.com</code>), or a wildcard (for example, <code>*.example.com</code>).</p>
    #
    # @option params [Boolean] :enable_www_subdomain
    #   <p>Set to <code>true</code> to associate the subdomain <code>www.<i>DomainName</i>
    #               </code> with the App Runner service in addition to the base
    #         domain.</p>
    #            <p>Default: <code>true</code>
    #            </p>
    #
    # @return [Types::AssociateCustomDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_custom_domain(
    #     service_arn: 'ServiceArn', # required
    #     domain_name: 'DomainName', # required
    #     enable_www_subdomain: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateCustomDomainOutput
    #   resp.data.dns_target #=> String
    #   resp.data.service_arn #=> String
    #   resp.data.custom_domain #=> Types::CustomDomain
    #   resp.data.custom_domain.domain_name #=> String
    #   resp.data.custom_domain.enable_www_subdomain #=> Boolean
    #   resp.data.custom_domain.certificate_validation_records #=> Array<CertificateValidationRecord>
    #   resp.data.custom_domain.certificate_validation_records[0] #=> Types::CertificateValidationRecord
    #   resp.data.custom_domain.certificate_validation_records[0].name #=> String
    #   resp.data.custom_domain.certificate_validation_records[0].type #=> String
    #   resp.data.custom_domain.certificate_validation_records[0].value #=> String
    #   resp.data.custom_domain.certificate_validation_records[0].status #=> String, one of ["PENDING_VALIDATION", "SUCCESS", "FAILED"]
    #   resp.data.custom_domain.status #=> String, one of ["CREATING", "CREATE_FAILED", "ACTIVE", "DELETING", "DELETE_FAILED", "PENDING_CERTIFICATE_DNS_VALIDATION", "BINDING_CERTIFICATE"]
    #
    def associate_custom_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateCustomDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateCustomDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateCustomDomain
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalServiceErrorException, Errors::InvalidStateException]),
        data_parser: Parsers::AssociateCustomDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateCustomDomain,
        stubs: @stubs,
        params_class: Params::AssociateCustomDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_custom_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create an App Runner automatic scaling configuration resource. App Runner requires this resource when you create or update App Runner services and you require
    #       non-default auto scaling settings. You can share an auto scaling configuration across multiple services.</p>
    #          <p>Create multiple revisions of a configuration by calling this action multiple times using the same <code>AutoScalingConfigurationName</code>. The call
    #       returns incremental <code>AutoScalingConfigurationRevision</code> values. When you create a service and configure an auto scaling configuration resource,
    #       the service uses the latest active revision of the auto scaling configuration by default. You can optionally configure the service to use a specific
    #       revision.</p>
    #          <p>Configure a higher <code>MinSize</code> to increase the spread of your App Runner service over more Availability Zones in the Amazon Web Services Region. The tradeoff is
    #       a higher minimal cost.</p>
    #          <p>Configure a lower <code>MaxSize</code> to control your cost. The tradeoff is lower responsiveness during peak demand.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAutoScalingConfigurationInput}.
    #
    # @option params [String] :auto_scaling_configuration_name
    #   <p>A name for the auto scaling configuration. When you use it for the first time in an Amazon Web Services Region, App Runner creates revision number <code>1</code> of this
    #         name. When you use the same name in subsequent calls, App Runner creates incremental revisions of the configuration.</p>
    #            <note>
    #               <p>The name <code>DefaultConfiguration</code> is reserved (it's the configuration that App Runner uses if you don't provide a custome one). You can't use it
    #           to create a new auto scaling configuration, and you can't create a revision of it.</p>
    #               <p>When you want to use your own auto scaling configuration for your App Runner service, <i>create a configuration with a different name</i>,
    #           and then provide it when you create or update your service.</p>
    #            </note>
    #
    # @option params [Integer] :max_concurrency
    #   <p>The maximum number of concurrent requests that you want an instance to process. If the number of concurrent requests exceeds this limit, App Runner scales
    #         up your service.</p>
    #            <p>Default: <code>100</code>
    #            </p>
    #
    # @option params [Integer] :min_size
    #   <p>The minimum number of instances that App Runner provisions for your service. The service always has at least <code>MinSize</code> provisioned instances.
    #         Some of them actively serve traffic. The rest of them (provisioned and inactive instances) are a cost-effective compute capacity reserve and are ready to
    #         be quickly activated. You pay for memory usage of all the provisioned instances. You pay for CPU usage of only the active subset.</p>
    #            <p>App Runner temporarily doubles the number of provisioned instances during deployments, to maintain the same capacity for both old and new code.</p>
    #            <p>Default: <code>1</code>
    #            </p>
    #
    # @option params [Integer] :max_size
    #   <p>The maximum number of instances that your service scales up to. At most <code>MaxSize</code> instances actively serve traffic for your service.</p>
    #            <p>Default: <code>25</code>
    #            </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of metadata items that you can associate with your auto scaling configuration resource. A tag is a key-value pair.</p>
    #
    # @return [Types::CreateAutoScalingConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_auto_scaling_configuration(
    #     auto_scaling_configuration_name: 'AutoScalingConfigurationName', # required
    #     max_concurrency: 1,
    #     min_size: 1,
    #     max_size: 1,
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
    #   resp.data #=> Types::CreateAutoScalingConfigurationOutput
    #   resp.data.auto_scaling_configuration #=> Types::AutoScalingConfiguration
    #   resp.data.auto_scaling_configuration.auto_scaling_configuration_arn #=> String
    #   resp.data.auto_scaling_configuration.auto_scaling_configuration_name #=> String
    #   resp.data.auto_scaling_configuration.auto_scaling_configuration_revision #=> Integer
    #   resp.data.auto_scaling_configuration.latest #=> Boolean
    #   resp.data.auto_scaling_configuration.status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.auto_scaling_configuration.max_concurrency #=> Integer
    #   resp.data.auto_scaling_configuration.min_size #=> Integer
    #   resp.data.auto_scaling_configuration.max_size #=> Integer
    #   resp.data.auto_scaling_configuration.created_at #=> Time
    #   resp.data.auto_scaling_configuration.deleted_at #=> Time
    #
    def create_auto_scaling_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAutoScalingConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAutoScalingConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAutoScalingConfiguration
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalServiceErrorException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateAutoScalingConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAutoScalingConfiguration,
        stubs: @stubs,
        params_class: Params::CreateAutoScalingConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_auto_scaling_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create an App Runner connection resource. App Runner requires a connection resource when you create App Runner services that access private repositories from
    #       certain third-party providers. You can share a connection across multiple services.</p>
    #          <p>A connection resource is needed to access GitHub repositories. GitHub requires a user interface approval process through the App Runner console before you
    #       can use the connection.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateConnectionInput}.
    #
    # @option params [String] :connection_name
    #   <p>A name for the new connection. It must be unique across all App Runner connections for the Amazon Web Services account in the Amazon Web Services Region.</p>
    #
    # @option params [String] :provider_type
    #   <p>The source repository provider.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of metadata items that you can associate with your connection resource. A tag is a key-value pair.</p>
    #
    # @return [Types::CreateConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connection(
    #     connection_name: 'ConnectionName', # required
    #     provider_type: 'GITHUB', # required - accepts ["GITHUB"]
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
    #   resp.data #=> Types::CreateConnectionOutput
    #   resp.data.connection #=> Types::Connection
    #   resp.data.connection.connection_name #=> String
    #   resp.data.connection.connection_arn #=> String
    #   resp.data.connection.provider_type #=> String, one of ["GITHUB"]
    #   resp.data.connection.status #=> String, one of ["PENDING_HANDSHAKE", "AVAILABLE", "ERROR", "DELETED"]
    #   resp.data.connection.created_at #=> Time
    #
    def create_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateConnection
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalServiceErrorException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateConnection,
        stubs: @stubs,
        params_class: Params::CreateConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create an App Runner observability configuration resource. App Runner requires this resource when you create or update App Runner services and you want to enable
    #       non-default observability features. You can share an observability configuration across multiple services.</p>
    #          <p>Create multiple revisions of a configuration by calling this action multiple times using the same <code>ObservabilityConfigurationName</code>. The
    #       call returns incremental <code>ObservabilityConfigurationRevision</code> values. When you create a service and configure an observability configuration
    #       resource, the service uses the latest active revision of the observability configuration by default. You can optionally configure the service to use a
    #       specific revision.</p>
    #          <p>The observability configuration resource is designed to configure multiple features (currently one feature, tracing). This action takes optional
    #       parameters that describe the configuration of these features (currently one parameter, <code>TraceConfiguration</code>). If you don't specify a feature
    #       parameter, App Runner doesn't enable the feature.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateObservabilityConfigurationInput}.
    #
    # @option params [String] :observability_configuration_name
    #   <p>A name for the observability configuration. When you use it for the first time in an Amazon Web Services Region, App Runner creates revision number
    #           <code>1</code> of this name. When you use the same name in subsequent calls, App Runner creates incremental revisions of the configuration.</p>
    #            <note>
    #               <p>The name <code>DefaultConfiguration</code> is reserved. You can't use it to create a new observability configuration, and you can't create a
    #           revision of it.</p>
    #               <p>When you want to use your own observability configuration for your App Runner service, <i>create a configuration with a different name</i>,
    #           and then provide it when you create or update your service.</p>
    #            </note>
    #
    # @option params [TraceConfiguration] :trace_configuration
    #   <p>The configuration of the tracing feature within this observability configuration. If you don't specify it, App Runner doesn't enable tracing.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of metadata items that you can associate with your observability configuration resource. A tag is a key-value pair.</p>
    #
    # @return [Types::CreateObservabilityConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_observability_configuration(
    #     observability_configuration_name: 'ObservabilityConfigurationName', # required
    #     trace_configuration: {
    #       vendor: 'AWSXRAY' # required - accepts ["AWSXRAY"]
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
    #   resp.data #=> Types::CreateObservabilityConfigurationOutput
    #   resp.data.observability_configuration #=> Types::ObservabilityConfiguration
    #   resp.data.observability_configuration.observability_configuration_arn #=> String
    #   resp.data.observability_configuration.observability_configuration_name #=> String
    #   resp.data.observability_configuration.trace_configuration #=> Types::TraceConfiguration
    #   resp.data.observability_configuration.trace_configuration.vendor #=> String, one of ["AWSXRAY"]
    #   resp.data.observability_configuration.observability_configuration_revision #=> Integer
    #   resp.data.observability_configuration.latest #=> Boolean
    #   resp.data.observability_configuration.status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.observability_configuration.created_at #=> Time
    #   resp.data.observability_configuration.deleted_at #=> Time
    #
    def create_observability_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateObservabilityConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateObservabilityConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateObservabilityConfiguration
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalServiceErrorException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateObservabilityConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateObservabilityConfiguration,
        stubs: @stubs,
        params_class: Params::CreateObservabilityConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_observability_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create an App Runner service. After the service is created, the action also automatically starts a deployment.</p>
    #          <p>This is an asynchronous operation. On a successful call, you can use the returned <code>OperationId</code> and the <a href="https://docs.aws.amazon.com/apprunner/latest/api/API_ListOperations.html">ListOperations</a> call to track the operation's progress.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateServiceInput}.
    #
    # @option params [String] :service_name
    #   <p>A name for the App Runner service. It must be unique across all the running App Runner services in your Amazon Web Services account in the Amazon Web Services Region.</p>
    #
    # @option params [SourceConfiguration] :source_configuration
    #   <p>The source to deploy to the App Runner service. It can be a code or an image repository.</p>
    #
    # @option params [InstanceConfiguration] :instance_configuration
    #   <p>The runtime configuration of instances (scaling units) of your service.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An optional list of metadata items that you can associate with the App Runner service resource. A tag is a key-value pair.</p>
    #
    # @option params [EncryptionConfiguration] :encryption_configuration
    #   <p>An optional custom encryption key that App Runner uses to encrypt the copy of your source repository that it maintains and your service logs. By default,
    #         App Runner uses an Amazon Web Services managed key.</p>
    #
    # @option params [HealthCheckConfiguration] :health_check_configuration
    #   <p>The settings for the health check that App Runner performs to monitor the health of the App Runner service.</p>
    #
    # @option params [String] :auto_scaling_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of an App Runner automatic scaling configuration resource that you want to associate with your service. If not provided, App Runner
    #         associates the latest revision of a default auto scaling configuration.</p>
    #            <p>Specify an ARN with a name and a revision number to associate that revision. For example:
    #             <code>arn:aws:apprunner:us-east-1:123456789012:autoscalingconfiguration/high-availability/3</code>
    #            </p>
    #            <p>Specify just the name to associate the latest revision. For example:
    #           <code>arn:aws:apprunner:us-east-1:123456789012:autoscalingconfiguration/high-availability</code>
    #            </p>
    #
    # @option params [NetworkConfiguration] :network_configuration
    #   <p>Configuration settings related to network traffic of the web application that the App Runner service runs.</p>
    #
    # @option params [ServiceObservabilityConfiguration] :observability_configuration
    #   <p>The observability configuration of your service.</p>
    #
    # @return [Types::CreateServiceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service(
    #     service_name: 'ServiceName', # required
    #     source_configuration: {
    #       code_repository: {
    #         repository_url: 'RepositoryUrl', # required
    #         source_code_version: {
    #           type: 'BRANCH', # required - accepts ["BRANCH"]
    #           value: 'Value' # required
    #         }, # required
    #         code_configuration: {
    #           configuration_source: 'REPOSITORY', # required - accepts ["REPOSITORY", "API"]
    #           code_configuration_values: {
    #             runtime: 'PYTHON_3', # required - accepts ["PYTHON_3", "NODEJS_12", "NODEJS_14", "CORRETTO_8", "CORRETTO_11"]
    #             build_command: 'BuildCommand',
    #             start_command: 'StartCommand',
    #             port: 'Port',
    #             runtime_environment_variables: {
    #               'key' => 'value'
    #             }
    #           }
    #         }
    #       },
    #       image_repository: {
    #         image_identifier: 'ImageIdentifier', # required
    #         image_configuration: {
    #           start_command: 'StartCommand',
    #           port: 'Port'
    #         },
    #         image_repository_type: 'ECR' # required - accepts ["ECR", "ECR_PUBLIC"]
    #       },
    #       auto_deployments_enabled: false,
    #       authentication_configuration: {
    #         connection_arn: 'ConnectionArn',
    #         access_role_arn: 'AccessRoleArn'
    #       }
    #     }, # required
    #     instance_configuration: {
    #       cpu: 'Cpu',
    #       memory: 'Memory',
    #       instance_role_arn: 'InstanceRoleArn'
    #     },
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ],
    #     encryption_configuration: {
    #       kms_key: 'KmsKey' # required
    #     },
    #     health_check_configuration: {
    #       protocol: 'TCP', # accepts ["TCP", "HTTP"]
    #       path: 'Path',
    #       interval: 1,
    #       timeout: 1,
    #       healthy_threshold: 1,
    #       unhealthy_threshold: 1
    #     },
    #     auto_scaling_configuration_arn: 'AutoScalingConfigurationArn',
    #     network_configuration: {
    #       egress_configuration: {
    #         egress_type: 'DEFAULT', # accepts ["DEFAULT", "VPC"]
    #         vpc_connector_arn: 'VpcConnectorArn'
    #       }
    #     },
    #     observability_configuration: {
    #       observability_enabled: false, # required
    #       observability_configuration_arn: 'ObservabilityConfigurationArn'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateServiceOutput
    #   resp.data.service #=> Types::Service
    #   resp.data.service.service_name #=> String
    #   resp.data.service.service_id #=> String
    #   resp.data.service.service_arn #=> String
    #   resp.data.service.service_url #=> String
    #   resp.data.service.created_at #=> Time
    #   resp.data.service.updated_at #=> Time
    #   resp.data.service.deleted_at #=> Time
    #   resp.data.service.status #=> String, one of ["CREATE_FAILED", "RUNNING", "DELETED", "DELETE_FAILED", "PAUSED", "OPERATION_IN_PROGRESS"]
    #   resp.data.service.source_configuration #=> Types::SourceConfiguration
    #   resp.data.service.source_configuration.code_repository #=> Types::CodeRepository
    #   resp.data.service.source_configuration.code_repository.repository_url #=> String
    #   resp.data.service.source_configuration.code_repository.source_code_version #=> Types::SourceCodeVersion
    #   resp.data.service.source_configuration.code_repository.source_code_version.type #=> String, one of ["BRANCH"]
    #   resp.data.service.source_configuration.code_repository.source_code_version.value #=> String
    #   resp.data.service.source_configuration.code_repository.code_configuration #=> Types::CodeConfiguration
    #   resp.data.service.source_configuration.code_repository.code_configuration.configuration_source #=> String, one of ["REPOSITORY", "API"]
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values #=> Types::CodeConfigurationValues
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime #=> String, one of ["PYTHON_3", "NODEJS_12", "NODEJS_14", "CORRETTO_8", "CORRETTO_11"]
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.build_command #=> String
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.start_command #=> String
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.port #=> String
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_variables #=> Hash<String, String>
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_variables['key'] #=> String
    #   resp.data.service.source_configuration.image_repository #=> Types::ImageRepository
    #   resp.data.service.source_configuration.image_repository.image_identifier #=> String
    #   resp.data.service.source_configuration.image_repository.image_configuration #=> Types::ImageConfiguration
    #   resp.data.service.source_configuration.image_repository.image_configuration.runtime_environment_variables #=> Hash<String, String>
    #   resp.data.service.source_configuration.image_repository.image_configuration.start_command #=> String
    #   resp.data.service.source_configuration.image_repository.image_configuration.port #=> String
    #   resp.data.service.source_configuration.image_repository.image_repository_type #=> String, one of ["ECR", "ECR_PUBLIC"]
    #   resp.data.service.source_configuration.auto_deployments_enabled #=> Boolean
    #   resp.data.service.source_configuration.authentication_configuration #=> Types::AuthenticationConfiguration
    #   resp.data.service.source_configuration.authentication_configuration.connection_arn #=> String
    #   resp.data.service.source_configuration.authentication_configuration.access_role_arn #=> String
    #   resp.data.service.instance_configuration #=> Types::InstanceConfiguration
    #   resp.data.service.instance_configuration.cpu #=> String
    #   resp.data.service.instance_configuration.memory #=> String
    #   resp.data.service.instance_configuration.instance_role_arn #=> String
    #   resp.data.service.encryption_configuration #=> Types::EncryptionConfiguration
    #   resp.data.service.encryption_configuration.kms_key #=> String
    #   resp.data.service.health_check_configuration #=> Types::HealthCheckConfiguration
    #   resp.data.service.health_check_configuration.protocol #=> String, one of ["TCP", "HTTP"]
    #   resp.data.service.health_check_configuration.path #=> String
    #   resp.data.service.health_check_configuration.interval #=> Integer
    #   resp.data.service.health_check_configuration.timeout #=> Integer
    #   resp.data.service.health_check_configuration.healthy_threshold #=> Integer
    #   resp.data.service.health_check_configuration.unhealthy_threshold #=> Integer
    #   resp.data.service.auto_scaling_configuration_summary #=> Types::AutoScalingConfigurationSummary
    #   resp.data.service.auto_scaling_configuration_summary.auto_scaling_configuration_arn #=> String
    #   resp.data.service.auto_scaling_configuration_summary.auto_scaling_configuration_name #=> String
    #   resp.data.service.auto_scaling_configuration_summary.auto_scaling_configuration_revision #=> Integer
    #   resp.data.service.network_configuration #=> Types::NetworkConfiguration
    #   resp.data.service.network_configuration.egress_configuration #=> Types::EgressConfiguration
    #   resp.data.service.network_configuration.egress_configuration.egress_type #=> String, one of ["DEFAULT", "VPC"]
    #   resp.data.service.network_configuration.egress_configuration.vpc_connector_arn #=> String
    #   resp.data.service.observability_configuration #=> Types::ServiceObservabilityConfiguration
    #   resp.data.service.observability_configuration.observability_enabled #=> Boolean
    #   resp.data.service.observability_configuration.observability_configuration_arn #=> String
    #   resp.data.operation_id #=> String
    #
    def create_service(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateServiceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateServiceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateService
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalServiceErrorException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateService
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateService,
        stubs: @stubs,
        params_class: Params::CreateServiceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_service
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Create an App Runner VPC connector resource. App Runner requires this resource when you want to associate your App Runner service to a custom Amazon Virtual Private Cloud
    #         (Amazon VPC).</p>
    #
    # @param [Hash] params
    #   See {Types::CreateVpcConnectorInput}.
    #
    # @option params [String] :vpc_connector_name
    #   <p>A name for the VPC connector.</p>
    #
    # @option params [Array<String>] :subnets
    #   <p>A list of IDs of subnets that App Runner should use when it associates your service with a custom Amazon VPC. Specify IDs of subnets of a single
    #           Amazon VPC. App Runner determines the Amazon VPC from the subnets you specify.</p>
    #            <note>
    #               <p>
    #           App Runner currently only provides support for IPv4.
    #         </p>
    #            </note>
    #
    # @option params [Array<String>] :security_groups
    #   <p>A list of IDs of security groups that App Runner should use for access to Amazon Web Services resources under the specified subnets. If not specified, App Runner uses the
    #         default security group of the Amazon VPC. The default security group allows all outbound traffic.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of metadata items that you can associate with your VPC connector resource. A tag is a key-value pair.</p>
    #
    # @return [Types::CreateVpcConnectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vpc_connector(
    #     vpc_connector_name: 'VpcConnectorName', # required
    #     subnets: [
    #       'member'
    #     ], # required
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
    #   resp.data #=> Types::CreateVpcConnectorOutput
    #   resp.data.vpc_connector #=> Types::VpcConnector
    #   resp.data.vpc_connector.vpc_connector_name #=> String
    #   resp.data.vpc_connector.vpc_connector_arn #=> String
    #   resp.data.vpc_connector.vpc_connector_revision #=> Integer
    #   resp.data.vpc_connector.subnets #=> Array<String>
    #   resp.data.vpc_connector.subnets[0] #=> String
    #   resp.data.vpc_connector.security_groups #=> Array<String>
    #   resp.data.vpc_connector.status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.vpc_connector.created_at #=> Time
    #   resp.data.vpc_connector.deleted_at #=> Time
    #
    def create_vpc_connector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateVpcConnectorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateVpcConnectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateVpcConnector
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalServiceErrorException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateVpcConnector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateVpcConnector,
        stubs: @stubs,
        params_class: Params::CreateVpcConnectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_vpc_connector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete an App Runner automatic scaling configuration resource. You can delete a specific revision or the latest active revision. You can't delete a
    #       configuration that's used by one or more App Runner services.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAutoScalingConfigurationInput}.
    #
    # @option params [String] :auto_scaling_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner auto scaling configuration that you want to delete.</p>
    #            <p>The ARN can be a full auto scaling configuration ARN, or a partial ARN ending with either <code>.../<i>name</i>
    #               </code> or
    #             <code>.../<i>name</i>/<i>revision</i>
    #               </code>. If a revision isn't specified, the latest active revision is deleted.</p>
    #
    # @return [Types::DeleteAutoScalingConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_auto_scaling_configuration(
    #     auto_scaling_configuration_arn: 'AutoScalingConfigurationArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAutoScalingConfigurationOutput
    #   resp.data.auto_scaling_configuration #=> Types::AutoScalingConfiguration
    #   resp.data.auto_scaling_configuration.auto_scaling_configuration_arn #=> String
    #   resp.data.auto_scaling_configuration.auto_scaling_configuration_name #=> String
    #   resp.data.auto_scaling_configuration.auto_scaling_configuration_revision #=> Integer
    #   resp.data.auto_scaling_configuration.latest #=> Boolean
    #   resp.data.auto_scaling_configuration.status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.auto_scaling_configuration.max_concurrency #=> Integer
    #   resp.data.auto_scaling_configuration.min_size #=> Integer
    #   resp.data.auto_scaling_configuration.max_size #=> Integer
    #   resp.data.auto_scaling_configuration.created_at #=> Time
    #   resp.data.auto_scaling_configuration.deleted_at #=> Time
    #
    def delete_auto_scaling_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAutoScalingConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAutoScalingConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAutoScalingConfiguration
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::DeleteAutoScalingConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAutoScalingConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteAutoScalingConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_auto_scaling_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete an App Runner connection. You must first ensure that there are no running App Runner services that use this connection. If there are any, the
    #         <code>DeleteConnection</code> action fails.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteConnectionInput}.
    #
    # @option params [String] :connection_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner connection that you want to delete.</p>
    #
    # @return [Types::DeleteConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connection(
    #     connection_arn: 'ConnectionArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteConnectionOutput
    #   resp.data.connection #=> Types::Connection
    #   resp.data.connection.connection_name #=> String
    #   resp.data.connection.connection_arn #=> String
    #   resp.data.connection.provider_type #=> String, one of ["GITHUB"]
    #   resp.data.connection.status #=> String, one of ["PENDING_HANDSHAKE", "AVAILABLE", "ERROR", "DELETED"]
    #   resp.data.connection.created_at #=> Time
    #
    def delete_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteConnection
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::DeleteConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteConnection,
        stubs: @stubs,
        params_class: Params::DeleteConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete an App Runner observability configuration resource. You can delete a specific revision or the latest active revision. You can't delete a
    #       configuration that's used by one or more App Runner services.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteObservabilityConfigurationInput}.
    #
    # @option params [String] :observability_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner observability configuration that you want to delete.</p>
    #            <p>The ARN can be a full observability configuration ARN, or a partial ARN ending with either <code>.../<i>name</i>
    #               </code> or
    #             <code>.../<i>name</i>/<i>revision</i>
    #               </code>. If a revision isn't specified, the latest active revision is deleted.</p>
    #
    # @return [Types::DeleteObservabilityConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_observability_configuration(
    #     observability_configuration_arn: 'ObservabilityConfigurationArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteObservabilityConfigurationOutput
    #   resp.data.observability_configuration #=> Types::ObservabilityConfiguration
    #   resp.data.observability_configuration.observability_configuration_arn #=> String
    #   resp.data.observability_configuration.observability_configuration_name #=> String
    #   resp.data.observability_configuration.trace_configuration #=> Types::TraceConfiguration
    #   resp.data.observability_configuration.trace_configuration.vendor #=> String, one of ["AWSXRAY"]
    #   resp.data.observability_configuration.observability_configuration_revision #=> Integer
    #   resp.data.observability_configuration.latest #=> Boolean
    #   resp.data.observability_configuration.status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.observability_configuration.created_at #=> Time
    #   resp.data.observability_configuration.deleted_at #=> Time
    #
    def delete_observability_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteObservabilityConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteObservabilityConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteObservabilityConfiguration
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::DeleteObservabilityConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteObservabilityConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteObservabilityConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_observability_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete an App Runner service.</p>
    #          <p>This is an asynchronous operation. On a successful call, you can use the returned <code>OperationId</code> and the <a>ListOperations</a>
    #       call to track the operation's progress.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteServiceInput}.
    #
    # @option params [String] :service_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner service that you want to delete.</p>
    #
    # @return [Types::DeleteServiceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service(
    #     service_arn: 'ServiceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteServiceOutput
    #   resp.data.service #=> Types::Service
    #   resp.data.service.service_name #=> String
    #   resp.data.service.service_id #=> String
    #   resp.data.service.service_arn #=> String
    #   resp.data.service.service_url #=> String
    #   resp.data.service.created_at #=> Time
    #   resp.data.service.updated_at #=> Time
    #   resp.data.service.deleted_at #=> Time
    #   resp.data.service.status #=> String, one of ["CREATE_FAILED", "RUNNING", "DELETED", "DELETE_FAILED", "PAUSED", "OPERATION_IN_PROGRESS"]
    #   resp.data.service.source_configuration #=> Types::SourceConfiguration
    #   resp.data.service.source_configuration.code_repository #=> Types::CodeRepository
    #   resp.data.service.source_configuration.code_repository.repository_url #=> String
    #   resp.data.service.source_configuration.code_repository.source_code_version #=> Types::SourceCodeVersion
    #   resp.data.service.source_configuration.code_repository.source_code_version.type #=> String, one of ["BRANCH"]
    #   resp.data.service.source_configuration.code_repository.source_code_version.value #=> String
    #   resp.data.service.source_configuration.code_repository.code_configuration #=> Types::CodeConfiguration
    #   resp.data.service.source_configuration.code_repository.code_configuration.configuration_source #=> String, one of ["REPOSITORY", "API"]
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values #=> Types::CodeConfigurationValues
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime #=> String, one of ["PYTHON_3", "NODEJS_12", "NODEJS_14", "CORRETTO_8", "CORRETTO_11"]
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.build_command #=> String
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.start_command #=> String
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.port #=> String
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_variables #=> Hash<String, String>
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_variables['key'] #=> String
    #   resp.data.service.source_configuration.image_repository #=> Types::ImageRepository
    #   resp.data.service.source_configuration.image_repository.image_identifier #=> String
    #   resp.data.service.source_configuration.image_repository.image_configuration #=> Types::ImageConfiguration
    #   resp.data.service.source_configuration.image_repository.image_configuration.runtime_environment_variables #=> Hash<String, String>
    #   resp.data.service.source_configuration.image_repository.image_configuration.start_command #=> String
    #   resp.data.service.source_configuration.image_repository.image_configuration.port #=> String
    #   resp.data.service.source_configuration.image_repository.image_repository_type #=> String, one of ["ECR", "ECR_PUBLIC"]
    #   resp.data.service.source_configuration.auto_deployments_enabled #=> Boolean
    #   resp.data.service.source_configuration.authentication_configuration #=> Types::AuthenticationConfiguration
    #   resp.data.service.source_configuration.authentication_configuration.connection_arn #=> String
    #   resp.data.service.source_configuration.authentication_configuration.access_role_arn #=> String
    #   resp.data.service.instance_configuration #=> Types::InstanceConfiguration
    #   resp.data.service.instance_configuration.cpu #=> String
    #   resp.data.service.instance_configuration.memory #=> String
    #   resp.data.service.instance_configuration.instance_role_arn #=> String
    #   resp.data.service.encryption_configuration #=> Types::EncryptionConfiguration
    #   resp.data.service.encryption_configuration.kms_key #=> String
    #   resp.data.service.health_check_configuration #=> Types::HealthCheckConfiguration
    #   resp.data.service.health_check_configuration.protocol #=> String, one of ["TCP", "HTTP"]
    #   resp.data.service.health_check_configuration.path #=> String
    #   resp.data.service.health_check_configuration.interval #=> Integer
    #   resp.data.service.health_check_configuration.timeout #=> Integer
    #   resp.data.service.health_check_configuration.healthy_threshold #=> Integer
    #   resp.data.service.health_check_configuration.unhealthy_threshold #=> Integer
    #   resp.data.service.auto_scaling_configuration_summary #=> Types::AutoScalingConfigurationSummary
    #   resp.data.service.auto_scaling_configuration_summary.auto_scaling_configuration_arn #=> String
    #   resp.data.service.auto_scaling_configuration_summary.auto_scaling_configuration_name #=> String
    #   resp.data.service.auto_scaling_configuration_summary.auto_scaling_configuration_revision #=> Integer
    #   resp.data.service.network_configuration #=> Types::NetworkConfiguration
    #   resp.data.service.network_configuration.egress_configuration #=> Types::EgressConfiguration
    #   resp.data.service.network_configuration.egress_configuration.egress_type #=> String, one of ["DEFAULT", "VPC"]
    #   resp.data.service.network_configuration.egress_configuration.vpc_connector_arn #=> String
    #   resp.data.service.observability_configuration #=> Types::ServiceObservabilityConfiguration
    #   resp.data.service.observability_configuration.observability_enabled #=> Boolean
    #   resp.data.service.observability_configuration.observability_configuration_arn #=> String
    #   resp.data.operation_id #=> String
    #
    def delete_service(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteServiceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteServiceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteService
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidRequestException, Errors::InternalServiceErrorException, Errors::InvalidStateException]),
        data_parser: Parsers::DeleteService
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteService,
        stubs: @stubs,
        params_class: Params::DeleteServiceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_service
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Delete an App Runner VPC connector resource. You can't delete a
    #       connector that's used by one or more App Runner services.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteVpcConnectorInput}.
    #
    # @option params [String] :vpc_connector_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner VPC connector that you want to delete.</p>
    #            <p>The ARN must be a full VPC connector ARN.</p>
    #
    # @return [Types::DeleteVpcConnectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vpc_connector(
    #     vpc_connector_arn: 'VpcConnectorArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVpcConnectorOutput
    #   resp.data.vpc_connector #=> Types::VpcConnector
    #   resp.data.vpc_connector.vpc_connector_name #=> String
    #   resp.data.vpc_connector.vpc_connector_arn #=> String
    #   resp.data.vpc_connector.vpc_connector_revision #=> Integer
    #   resp.data.vpc_connector.subnets #=> Array<String>
    #   resp.data.vpc_connector.subnets[0] #=> String
    #   resp.data.vpc_connector.security_groups #=> Array<String>
    #   resp.data.vpc_connector.status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.vpc_connector.created_at #=> Time
    #   resp.data.vpc_connector.deleted_at #=> Time
    #
    def delete_vpc_connector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVpcConnectorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVpcConnectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVpcConnector
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::DeleteVpcConnector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVpcConnector,
        stubs: @stubs,
        params_class: Params::DeleteVpcConnectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_vpc_connector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Return a full description of an App Runner automatic scaling configuration resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAutoScalingConfigurationInput}.
    #
    # @option params [String] :auto_scaling_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner auto scaling configuration that you want a description for.</p>
    #            <p>The ARN can be a full auto scaling configuration ARN, or a partial ARN ending with either <code>.../<i>name</i>
    #               </code> or
    #             <code>.../<i>name</i>/<i>revision</i>
    #               </code>. If a revision isn't specified, the latest active revision is
    #         described.</p>
    #
    # @return [Types::DescribeAutoScalingConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_auto_scaling_configuration(
    #     auto_scaling_configuration_arn: 'AutoScalingConfigurationArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAutoScalingConfigurationOutput
    #   resp.data.auto_scaling_configuration #=> Types::AutoScalingConfiguration
    #   resp.data.auto_scaling_configuration.auto_scaling_configuration_arn #=> String
    #   resp.data.auto_scaling_configuration.auto_scaling_configuration_name #=> String
    #   resp.data.auto_scaling_configuration.auto_scaling_configuration_revision #=> Integer
    #   resp.data.auto_scaling_configuration.latest #=> Boolean
    #   resp.data.auto_scaling_configuration.status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.auto_scaling_configuration.max_concurrency #=> Integer
    #   resp.data.auto_scaling_configuration.min_size #=> Integer
    #   resp.data.auto_scaling_configuration.max_size #=> Integer
    #   resp.data.auto_scaling_configuration.created_at #=> Time
    #   resp.data.auto_scaling_configuration.deleted_at #=> Time
    #
    def describe_auto_scaling_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAutoScalingConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAutoScalingConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAutoScalingConfiguration
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::DescribeAutoScalingConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAutoScalingConfiguration,
        stubs: @stubs,
        params_class: Params::DescribeAutoScalingConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_auto_scaling_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Return a description of custom domain names that are associated with an App Runner service.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCustomDomainsInput}.
    #
    # @option params [String] :service_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner service that you want associated custom domain names to be described for.</p>
    #
    # @option params [String] :next_token
    #   <p>A token from a previous result page. It's used for a paginated request. The request retrieves the next result page. All other parameter values must be
    #         identical to the ones that are specified in the initial request.</p>
    #            <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that each response (result page) can include. It's used for a paginated request.</p>
    #            <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>
    #
    # @return [Types::DescribeCustomDomainsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_custom_domains(
    #     service_arn: 'ServiceArn', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCustomDomainsOutput
    #   resp.data.dns_target #=> String
    #   resp.data.service_arn #=> String
    #   resp.data.custom_domains #=> Array<CustomDomain>
    #   resp.data.custom_domains[0] #=> Types::CustomDomain
    #   resp.data.custom_domains[0].domain_name #=> String
    #   resp.data.custom_domains[0].enable_www_subdomain #=> Boolean
    #   resp.data.custom_domains[0].certificate_validation_records #=> Array<CertificateValidationRecord>
    #   resp.data.custom_domains[0].certificate_validation_records[0] #=> Types::CertificateValidationRecord
    #   resp.data.custom_domains[0].certificate_validation_records[0].name #=> String
    #   resp.data.custom_domains[0].certificate_validation_records[0].type #=> String
    #   resp.data.custom_domains[0].certificate_validation_records[0].value #=> String
    #   resp.data.custom_domains[0].certificate_validation_records[0].status #=> String, one of ["PENDING_VALIDATION", "SUCCESS", "FAILED"]
    #   resp.data.custom_domains[0].status #=> String, one of ["CREATING", "CREATE_FAILED", "ACTIVE", "DELETING", "DELETE_FAILED", "PENDING_CERTIFICATE_DNS_VALIDATION", "BINDING_CERTIFICATE"]
    #   resp.data.next_token #=> String
    #
    def describe_custom_domains(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCustomDomainsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCustomDomainsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCustomDomains
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::DescribeCustomDomains
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCustomDomains,
        stubs: @stubs,
        params_class: Params::DescribeCustomDomainsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_custom_domains
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Return a full description of an App Runner observability configuration resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeObservabilityConfigurationInput}.
    #
    # @option params [String] :observability_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner observability configuration that you want a description for.</p>
    #            <p>The ARN can be a full observability configuration ARN, or a partial ARN ending with either <code>.../<i>name</i>
    #               </code> or
    #             <code>.../<i>name</i>/<i>revision</i>
    #               </code>. If a revision isn't specified, the latest active revision is
    #         described.</p>
    #
    # @return [Types::DescribeObservabilityConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_observability_configuration(
    #     observability_configuration_arn: 'ObservabilityConfigurationArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeObservabilityConfigurationOutput
    #   resp.data.observability_configuration #=> Types::ObservabilityConfiguration
    #   resp.data.observability_configuration.observability_configuration_arn #=> String
    #   resp.data.observability_configuration.observability_configuration_name #=> String
    #   resp.data.observability_configuration.trace_configuration #=> Types::TraceConfiguration
    #   resp.data.observability_configuration.trace_configuration.vendor #=> String, one of ["AWSXRAY"]
    #   resp.data.observability_configuration.observability_configuration_revision #=> Integer
    #   resp.data.observability_configuration.latest #=> Boolean
    #   resp.data.observability_configuration.status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.observability_configuration.created_at #=> Time
    #   resp.data.observability_configuration.deleted_at #=> Time
    #
    def describe_observability_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeObservabilityConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeObservabilityConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeObservabilityConfiguration
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::DescribeObservabilityConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeObservabilityConfiguration,
        stubs: @stubs,
        params_class: Params::DescribeObservabilityConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_observability_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Return a full description of an App Runner service.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeServiceInput}.
    #
    # @option params [String] :service_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner service that you want a description for.</p>
    #
    # @return [Types::DescribeServiceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_service(
    #     service_arn: 'ServiceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeServiceOutput
    #   resp.data.service #=> Types::Service
    #   resp.data.service.service_name #=> String
    #   resp.data.service.service_id #=> String
    #   resp.data.service.service_arn #=> String
    #   resp.data.service.service_url #=> String
    #   resp.data.service.created_at #=> Time
    #   resp.data.service.updated_at #=> Time
    #   resp.data.service.deleted_at #=> Time
    #   resp.data.service.status #=> String, one of ["CREATE_FAILED", "RUNNING", "DELETED", "DELETE_FAILED", "PAUSED", "OPERATION_IN_PROGRESS"]
    #   resp.data.service.source_configuration #=> Types::SourceConfiguration
    #   resp.data.service.source_configuration.code_repository #=> Types::CodeRepository
    #   resp.data.service.source_configuration.code_repository.repository_url #=> String
    #   resp.data.service.source_configuration.code_repository.source_code_version #=> Types::SourceCodeVersion
    #   resp.data.service.source_configuration.code_repository.source_code_version.type #=> String, one of ["BRANCH"]
    #   resp.data.service.source_configuration.code_repository.source_code_version.value #=> String
    #   resp.data.service.source_configuration.code_repository.code_configuration #=> Types::CodeConfiguration
    #   resp.data.service.source_configuration.code_repository.code_configuration.configuration_source #=> String, one of ["REPOSITORY", "API"]
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values #=> Types::CodeConfigurationValues
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime #=> String, one of ["PYTHON_3", "NODEJS_12", "NODEJS_14", "CORRETTO_8", "CORRETTO_11"]
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.build_command #=> String
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.start_command #=> String
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.port #=> String
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_variables #=> Hash<String, String>
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_variables['key'] #=> String
    #   resp.data.service.source_configuration.image_repository #=> Types::ImageRepository
    #   resp.data.service.source_configuration.image_repository.image_identifier #=> String
    #   resp.data.service.source_configuration.image_repository.image_configuration #=> Types::ImageConfiguration
    #   resp.data.service.source_configuration.image_repository.image_configuration.runtime_environment_variables #=> Hash<String, String>
    #   resp.data.service.source_configuration.image_repository.image_configuration.start_command #=> String
    #   resp.data.service.source_configuration.image_repository.image_configuration.port #=> String
    #   resp.data.service.source_configuration.image_repository.image_repository_type #=> String, one of ["ECR", "ECR_PUBLIC"]
    #   resp.data.service.source_configuration.auto_deployments_enabled #=> Boolean
    #   resp.data.service.source_configuration.authentication_configuration #=> Types::AuthenticationConfiguration
    #   resp.data.service.source_configuration.authentication_configuration.connection_arn #=> String
    #   resp.data.service.source_configuration.authentication_configuration.access_role_arn #=> String
    #   resp.data.service.instance_configuration #=> Types::InstanceConfiguration
    #   resp.data.service.instance_configuration.cpu #=> String
    #   resp.data.service.instance_configuration.memory #=> String
    #   resp.data.service.instance_configuration.instance_role_arn #=> String
    #   resp.data.service.encryption_configuration #=> Types::EncryptionConfiguration
    #   resp.data.service.encryption_configuration.kms_key #=> String
    #   resp.data.service.health_check_configuration #=> Types::HealthCheckConfiguration
    #   resp.data.service.health_check_configuration.protocol #=> String, one of ["TCP", "HTTP"]
    #   resp.data.service.health_check_configuration.path #=> String
    #   resp.data.service.health_check_configuration.interval #=> Integer
    #   resp.data.service.health_check_configuration.timeout #=> Integer
    #   resp.data.service.health_check_configuration.healthy_threshold #=> Integer
    #   resp.data.service.health_check_configuration.unhealthy_threshold #=> Integer
    #   resp.data.service.auto_scaling_configuration_summary #=> Types::AutoScalingConfigurationSummary
    #   resp.data.service.auto_scaling_configuration_summary.auto_scaling_configuration_arn #=> String
    #   resp.data.service.auto_scaling_configuration_summary.auto_scaling_configuration_name #=> String
    #   resp.data.service.auto_scaling_configuration_summary.auto_scaling_configuration_revision #=> Integer
    #   resp.data.service.network_configuration #=> Types::NetworkConfiguration
    #   resp.data.service.network_configuration.egress_configuration #=> Types::EgressConfiguration
    #   resp.data.service.network_configuration.egress_configuration.egress_type #=> String, one of ["DEFAULT", "VPC"]
    #   resp.data.service.network_configuration.egress_configuration.vpc_connector_arn #=> String
    #   resp.data.service.observability_configuration #=> Types::ServiceObservabilityConfiguration
    #   resp.data.service.observability_configuration.observability_enabled #=> Boolean
    #   resp.data.service.observability_configuration.observability_configuration_arn #=> String
    #
    def describe_service(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeServiceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeServiceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeService
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::DescribeService
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeService,
        stubs: @stubs,
        params_class: Params::DescribeServiceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_service
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Return a description of an App Runner VPC connector resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeVpcConnectorInput}.
    #
    # @option params [String] :vpc_connector_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner VPC connector that you want a description for.</p>
    #            <p>The ARN must be a full VPC connector ARN.</p>
    #
    # @return [Types::DescribeVpcConnectorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_vpc_connector(
    #     vpc_connector_arn: 'VpcConnectorArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeVpcConnectorOutput
    #   resp.data.vpc_connector #=> Types::VpcConnector
    #   resp.data.vpc_connector.vpc_connector_name #=> String
    #   resp.data.vpc_connector.vpc_connector_arn #=> String
    #   resp.data.vpc_connector.vpc_connector_revision #=> Integer
    #   resp.data.vpc_connector.subnets #=> Array<String>
    #   resp.data.vpc_connector.subnets[0] #=> String
    #   resp.data.vpc_connector.security_groups #=> Array<String>
    #   resp.data.vpc_connector.status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.vpc_connector.created_at #=> Time
    #   resp.data.vpc_connector.deleted_at #=> Time
    #
    def describe_vpc_connector(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeVpcConnectorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeVpcConnectorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeVpcConnector
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::DescribeVpcConnector
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeVpcConnector,
        stubs: @stubs,
        params_class: Params::DescribeVpcConnectorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_vpc_connector
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociate a custom domain name from an App Runner service.</p>
    #          <p>Certificates tracking domain validity are associated with a custom domain and are stored in <a href="https://docs.aws.amazon.com/acm/latest/userguide">AWS
    #         Certificate Manager (ACM)</a>. These certificates aren't deleted as part of this action. App Runner delays certificate deletion for
    #       30 days after a domain is disassociated from your service.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateCustomDomainInput}.
    #
    # @option params [String] :service_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner service that you want to disassociate a custom domain name from.</p>
    #
    # @option params [String] :domain_name
    #   <p>The domain name that you want to disassociate from the App Runner service.</p>
    #
    # @return [Types::DisassociateCustomDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_custom_domain(
    #     service_arn: 'ServiceArn', # required
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateCustomDomainOutput
    #   resp.data.dns_target #=> String
    #   resp.data.service_arn #=> String
    #   resp.data.custom_domain #=> Types::CustomDomain
    #   resp.data.custom_domain.domain_name #=> String
    #   resp.data.custom_domain.enable_www_subdomain #=> Boolean
    #   resp.data.custom_domain.certificate_validation_records #=> Array<CertificateValidationRecord>
    #   resp.data.custom_domain.certificate_validation_records[0] #=> Types::CertificateValidationRecord
    #   resp.data.custom_domain.certificate_validation_records[0].name #=> String
    #   resp.data.custom_domain.certificate_validation_records[0].type #=> String
    #   resp.data.custom_domain.certificate_validation_records[0].value #=> String
    #   resp.data.custom_domain.certificate_validation_records[0].status #=> String, one of ["PENDING_VALIDATION", "SUCCESS", "FAILED"]
    #   resp.data.custom_domain.status #=> String, one of ["CREATING", "CREATE_FAILED", "ACTIVE", "DELETING", "DELETE_FAILED", "PENDING_CERTIFICATE_DNS_VALIDATION", "BINDING_CERTIFICATE"]
    #
    def disassociate_custom_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateCustomDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateCustomDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateCustomDomain
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidRequestException, Errors::InternalServiceErrorException, Errors::InvalidStateException]),
        data_parser: Parsers::DisassociateCustomDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateCustomDomain,
        stubs: @stubs,
        params_class: Params::DisassociateCustomDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_custom_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of active App Runner automatic scaling configurations in your Amazon Web Services account. You can query the revisions for a specific
    #       configuration name or the revisions for all active configurations in your account. You can optionally query only the latest revision of each requested
    #       name.</p>
    #          <p>To retrieve a full description of a particular configuration revision, call  and provide one of
    #       the ARNs returned by <code>ListAutoScalingConfigurations</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAutoScalingConfigurationsInput}.
    #
    # @option params [String] :auto_scaling_configuration_name
    #   <p>The name of the App Runner auto scaling configuration that you want to list. If specified, App Runner lists revisions that share this name. If not specified, App Runner
    #         returns revisions of all active configurations.</p>
    #
    # @option params [Boolean] :latest_only
    #   <p>Set to <code>true</code> to list only the latest revision for each requested configuration name.</p>
    #            <p>Set to <code>false</code> to list all revisions for each requested configuration name.</p>
    #            <p>Default: <code>true</code>
    #            </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in each response (result page). It's used for a paginated request.</p>
    #            <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>
    #
    # @option params [String] :next_token
    #   <p>A token from a previous result page. It's used for a paginated request. The request retrieves the next result page. All other parameter values must be
    #         identical to the ones that are specified in the initial request.</p>
    #            <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>
    #
    # @return [Types::ListAutoScalingConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_auto_scaling_configurations(
    #     auto_scaling_configuration_name: 'AutoScalingConfigurationName',
    #     latest_only: false,
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAutoScalingConfigurationsOutput
    #   resp.data.auto_scaling_configuration_summary_list #=> Array<AutoScalingConfigurationSummary>
    #   resp.data.auto_scaling_configuration_summary_list[0] #=> Types::AutoScalingConfigurationSummary
    #   resp.data.auto_scaling_configuration_summary_list[0].auto_scaling_configuration_arn #=> String
    #   resp.data.auto_scaling_configuration_summary_list[0].auto_scaling_configuration_name #=> String
    #   resp.data.auto_scaling_configuration_summary_list[0].auto_scaling_configuration_revision #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_auto_scaling_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAutoScalingConfigurationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAutoScalingConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAutoScalingConfigurations
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::ListAutoScalingConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAutoScalingConfigurations,
        stubs: @stubs,
        params_class: Params::ListAutoScalingConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_auto_scaling_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of App Runner connections that are associated with your Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListConnectionsInput}.
    #
    # @option params [String] :connection_name
    #   <p>If specified, only this connection is returned. If not specified, the result isn't filtered by name.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in each response (result page). Used for a paginated request.</p>
    #            <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>
    #
    # @option params [String] :next_token
    #   <p>A token from a previous result page. Used for a paginated request. The request retrieves the next result page. All other parameter values must be
    #         identical to the ones specified in the initial request.</p>
    #            <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>
    #
    # @return [Types::ListConnectionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_connections(
    #     connection_name: 'ConnectionName',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListConnectionsOutput
    #   resp.data.connection_summary_list #=> Array<ConnectionSummary>
    #   resp.data.connection_summary_list[0] #=> Types::ConnectionSummary
    #   resp.data.connection_summary_list[0].connection_name #=> String
    #   resp.data.connection_summary_list[0].connection_arn #=> String
    #   resp.data.connection_summary_list[0].provider_type #=> String, one of ["GITHUB"]
    #   resp.data.connection_summary_list[0].status #=> String, one of ["PENDING_HANDSHAKE", "AVAILABLE", "ERROR", "DELETED"]
    #   resp.data.connection_summary_list[0].created_at #=> Time
    #   resp.data.next_token #=> String
    #
    def list_connections(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListConnectionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListConnectionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListConnections
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::ListConnections
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListConnections,
        stubs: @stubs,
        params_class: Params::ListConnectionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_connections
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of active App Runner observability configurations in your Amazon Web Services account. You can query the revisions for a specific
    #       configuration name or the revisions for all active configurations in your account. You can optionally query only the latest revision of each requested
    #       name.</p>
    #          <p>To retrieve a full description of a particular configuration revision, call  and provide one
    #       of the ARNs returned by <code>ListObservabilityConfigurations</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListObservabilityConfigurationsInput}.
    #
    # @option params [String] :observability_configuration_name
    #   <p>The name of the App Runner observability configuration that you want to list. If specified, App Runner lists revisions that share this name. If not specified,
    #         App Runner returns revisions of all active configurations.</p>
    #
    # @option params [Boolean] :latest_only
    #   <p>Set to <code>true</code> to list only the latest revision for each requested configuration name.</p>
    #            <p>Set to <code>false</code> to list all revisions for each requested configuration name.</p>
    #            <p>Default: <code>true</code>
    #            </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in each response (result page). It's used for a paginated request.</p>
    #            <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>
    #
    # @option params [String] :next_token
    #   <p>A token from a previous result page. It's used for a paginated request. The request retrieves the next result page. All other parameter values must be
    #         identical to the ones that are specified in the initial request.</p>
    #            <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>
    #
    # @return [Types::ListObservabilityConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_observability_configurations(
    #     observability_configuration_name: 'ObservabilityConfigurationName',
    #     latest_only: false,
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListObservabilityConfigurationsOutput
    #   resp.data.observability_configuration_summary_list #=> Array<ObservabilityConfigurationSummary>
    #   resp.data.observability_configuration_summary_list[0] #=> Types::ObservabilityConfigurationSummary
    #   resp.data.observability_configuration_summary_list[0].observability_configuration_arn #=> String
    #   resp.data.observability_configuration_summary_list[0].observability_configuration_name #=> String
    #   resp.data.observability_configuration_summary_list[0].observability_configuration_revision #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_observability_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListObservabilityConfigurationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListObservabilityConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListObservabilityConfigurations
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::ListObservabilityConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListObservabilityConfigurations,
        stubs: @stubs,
        params_class: Params::ListObservabilityConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_observability_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Return a list of operations that occurred on an App Runner service.</p>
    #          <p>The resulting list of <a>OperationSummary</a> objects is sorted in reverse chronological order. The first object on the list represents the
    #       last started operation.</p>
    #
    # @param [Hash] params
    #   See {Types::ListOperationsInput}.
    #
    # @option params [String] :service_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner service that you want a list of operations for.</p>
    #
    # @option params [String] :next_token
    #   <p>A token from a previous result page. It's used for a paginated request. The request retrieves the next result page. All other parameter values must be
    #         identical to the ones specified in the initial request.</p>
    #            <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in each response (result page). It's used for a paginated request.</p>
    #            <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>
    #
    # @return [Types::ListOperationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_operations(
    #     service_arn: 'ServiceArn', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListOperationsOutput
    #   resp.data.operation_summary_list #=> Array<OperationSummary>
    #   resp.data.operation_summary_list[0] #=> Types::OperationSummary
    #   resp.data.operation_summary_list[0].id #=> String
    #   resp.data.operation_summary_list[0].type #=> String, one of ["START_DEPLOYMENT", "CREATE_SERVICE", "PAUSE_SERVICE", "RESUME_SERVICE", "DELETE_SERVICE"]
    #   resp.data.operation_summary_list[0].status #=> String, one of ["PENDING", "IN_PROGRESS", "FAILED", "SUCCEEDED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_FAILED", "ROLLBACK_SUCCEEDED"]
    #   resp.data.operation_summary_list[0].target_arn #=> String
    #   resp.data.operation_summary_list[0].started_at #=> Time
    #   resp.data.operation_summary_list[0].ended_at #=> Time
    #   resp.data.operation_summary_list[0].updated_at #=> Time
    #   resp.data.next_token #=> String
    #
    def list_operations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListOperationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListOperationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListOperations
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::ListOperations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListOperations,
        stubs: @stubs,
        params_class: Params::ListOperationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_operations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of running App Runner services in your Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListServicesInput}.
    #
    # @option params [String] :next_token
    #   <p>A token from a previous result page. Used for a paginated request. The request retrieves the next result page. All other parameter values must be
    #         identical to the ones specified in the initial request.</p>
    #            <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in each response (result page). It's used for a paginated request.</p>
    #            <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>
    #
    # @return [Types::ListServicesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_services(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListServicesOutput
    #   resp.data.service_summary_list #=> Array<ServiceSummary>
    #   resp.data.service_summary_list[0] #=> Types::ServiceSummary
    #   resp.data.service_summary_list[0].service_name #=> String
    #   resp.data.service_summary_list[0].service_id #=> String
    #   resp.data.service_summary_list[0].service_arn #=> String
    #   resp.data.service_summary_list[0].service_url #=> String
    #   resp.data.service_summary_list[0].created_at #=> Time
    #   resp.data.service_summary_list[0].updated_at #=> Time
    #   resp.data.service_summary_list[0].status #=> String, one of ["CREATE_FAILED", "RUNNING", "DELETED", "DELETE_FAILED", "PAUSED", "OPERATION_IN_PROGRESS"]
    #   resp.data.next_token #=> String
    #
    def list_services(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListServicesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListServicesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListServices
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::ListServices
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListServices,
        stubs: @stubs,
        params_class: Params::ListServicesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_services
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List tags that are associated with for an App Runner resource. The response contains a list of tag key-value pairs.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that a tag list is requested for.</p>
    #            <p>It must be the ARN of an App Runner resource.</p>
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
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidRequestException, Errors::InternalServiceErrorException, Errors::InvalidStateException]),
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

    # <p>Returns a list of App Runner VPC connectors in your Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListVpcConnectorsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to include in each response (result page). It's used for a paginated request.</p>
    #            <p>If you don't specify <code>MaxResults</code>, the request retrieves all available results in a single response.</p>
    #
    # @option params [String] :next_token
    #   <p>A token from a previous result page. It's used for a paginated request. The request retrieves the next result page. All other parameter values must be
    #         identical to the ones that are specified in the initial request.</p>
    #            <p>If you don't specify <code>NextToken</code>, the request retrieves the first result page.</p>
    #
    # @return [Types::ListVpcConnectorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_vpc_connectors(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListVpcConnectorsOutput
    #   resp.data.vpc_connectors #=> Array<VpcConnector>
    #   resp.data.vpc_connectors[0] #=> Types::VpcConnector
    #   resp.data.vpc_connectors[0].vpc_connector_name #=> String
    #   resp.data.vpc_connectors[0].vpc_connector_arn #=> String
    #   resp.data.vpc_connectors[0].vpc_connector_revision #=> Integer
    #   resp.data.vpc_connectors[0].subnets #=> Array<String>
    #   resp.data.vpc_connectors[0].subnets[0] #=> String
    #   resp.data.vpc_connectors[0].security_groups #=> Array<String>
    #   resp.data.vpc_connectors[0].status #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.vpc_connectors[0].created_at #=> Time
    #   resp.data.vpc_connectors[0].deleted_at #=> Time
    #   resp.data.next_token #=> String
    #
    def list_vpc_connectors(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListVpcConnectorsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListVpcConnectorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListVpcConnectors
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
        data_parser: Parsers::ListVpcConnectors
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListVpcConnectors,
        stubs: @stubs,
        params_class: Params::ListVpcConnectorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_vpc_connectors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Pause an active App Runner service. App Runner reduces compute capacity for the service to zero and loses state (for example, ephemeral storage is
    #       removed).</p>
    #          <p>This is an asynchronous operation. On a successful call, you can use the returned <code>OperationId</code> and the <a>ListOperations</a>
    #       call to track the operation's progress.</p>
    #
    # @param [Hash] params
    #   See {Types::PauseServiceInput}.
    #
    # @option params [String] :service_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner service that you want to pause.</p>
    #
    # @return [Types::PauseServiceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.pause_service(
    #     service_arn: 'ServiceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PauseServiceOutput
    #   resp.data.service #=> Types::Service
    #   resp.data.service.service_name #=> String
    #   resp.data.service.service_id #=> String
    #   resp.data.service.service_arn #=> String
    #   resp.data.service.service_url #=> String
    #   resp.data.service.created_at #=> Time
    #   resp.data.service.updated_at #=> Time
    #   resp.data.service.deleted_at #=> Time
    #   resp.data.service.status #=> String, one of ["CREATE_FAILED", "RUNNING", "DELETED", "DELETE_FAILED", "PAUSED", "OPERATION_IN_PROGRESS"]
    #   resp.data.service.source_configuration #=> Types::SourceConfiguration
    #   resp.data.service.source_configuration.code_repository #=> Types::CodeRepository
    #   resp.data.service.source_configuration.code_repository.repository_url #=> String
    #   resp.data.service.source_configuration.code_repository.source_code_version #=> Types::SourceCodeVersion
    #   resp.data.service.source_configuration.code_repository.source_code_version.type #=> String, one of ["BRANCH"]
    #   resp.data.service.source_configuration.code_repository.source_code_version.value #=> String
    #   resp.data.service.source_configuration.code_repository.code_configuration #=> Types::CodeConfiguration
    #   resp.data.service.source_configuration.code_repository.code_configuration.configuration_source #=> String, one of ["REPOSITORY", "API"]
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values #=> Types::CodeConfigurationValues
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime #=> String, one of ["PYTHON_3", "NODEJS_12", "NODEJS_14", "CORRETTO_8", "CORRETTO_11"]
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.build_command #=> String
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.start_command #=> String
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.port #=> String
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_variables #=> Hash<String, String>
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_variables['key'] #=> String
    #   resp.data.service.source_configuration.image_repository #=> Types::ImageRepository
    #   resp.data.service.source_configuration.image_repository.image_identifier #=> String
    #   resp.data.service.source_configuration.image_repository.image_configuration #=> Types::ImageConfiguration
    #   resp.data.service.source_configuration.image_repository.image_configuration.runtime_environment_variables #=> Hash<String, String>
    #   resp.data.service.source_configuration.image_repository.image_configuration.start_command #=> String
    #   resp.data.service.source_configuration.image_repository.image_configuration.port #=> String
    #   resp.data.service.source_configuration.image_repository.image_repository_type #=> String, one of ["ECR", "ECR_PUBLIC"]
    #   resp.data.service.source_configuration.auto_deployments_enabled #=> Boolean
    #   resp.data.service.source_configuration.authentication_configuration #=> Types::AuthenticationConfiguration
    #   resp.data.service.source_configuration.authentication_configuration.connection_arn #=> String
    #   resp.data.service.source_configuration.authentication_configuration.access_role_arn #=> String
    #   resp.data.service.instance_configuration #=> Types::InstanceConfiguration
    #   resp.data.service.instance_configuration.cpu #=> String
    #   resp.data.service.instance_configuration.memory #=> String
    #   resp.data.service.instance_configuration.instance_role_arn #=> String
    #   resp.data.service.encryption_configuration #=> Types::EncryptionConfiguration
    #   resp.data.service.encryption_configuration.kms_key #=> String
    #   resp.data.service.health_check_configuration #=> Types::HealthCheckConfiguration
    #   resp.data.service.health_check_configuration.protocol #=> String, one of ["TCP", "HTTP"]
    #   resp.data.service.health_check_configuration.path #=> String
    #   resp.data.service.health_check_configuration.interval #=> Integer
    #   resp.data.service.health_check_configuration.timeout #=> Integer
    #   resp.data.service.health_check_configuration.healthy_threshold #=> Integer
    #   resp.data.service.health_check_configuration.unhealthy_threshold #=> Integer
    #   resp.data.service.auto_scaling_configuration_summary #=> Types::AutoScalingConfigurationSummary
    #   resp.data.service.auto_scaling_configuration_summary.auto_scaling_configuration_arn #=> String
    #   resp.data.service.auto_scaling_configuration_summary.auto_scaling_configuration_name #=> String
    #   resp.data.service.auto_scaling_configuration_summary.auto_scaling_configuration_revision #=> Integer
    #   resp.data.service.network_configuration #=> Types::NetworkConfiguration
    #   resp.data.service.network_configuration.egress_configuration #=> Types::EgressConfiguration
    #   resp.data.service.network_configuration.egress_configuration.egress_type #=> String, one of ["DEFAULT", "VPC"]
    #   resp.data.service.network_configuration.egress_configuration.vpc_connector_arn #=> String
    #   resp.data.service.observability_configuration #=> Types::ServiceObservabilityConfiguration
    #   resp.data.service.observability_configuration.observability_enabled #=> Boolean
    #   resp.data.service.observability_configuration.observability_configuration_arn #=> String
    #   resp.data.operation_id #=> String
    #
    def pause_service(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PauseServiceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PauseServiceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PauseService
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidRequestException, Errors::InternalServiceErrorException, Errors::InvalidStateException]),
        data_parser: Parsers::PauseService
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PauseService,
        stubs: @stubs,
        params_class: Params::PauseServiceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :pause_service
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Resume an active App Runner service. App Runner provisions compute capacity for the service.</p>
    #          <p>This is an asynchronous operation. On a successful call, you can use the returned <code>OperationId</code> and the <a>ListOperations</a>
    #       call to track the operation's progress.</p>
    #
    # @param [Hash] params
    #   See {Types::ResumeServiceInput}.
    #
    # @option params [String] :service_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner service that you want to resume.</p>
    #
    # @return [Types::ResumeServiceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resume_service(
    #     service_arn: 'ServiceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResumeServiceOutput
    #   resp.data.service #=> Types::Service
    #   resp.data.service.service_name #=> String
    #   resp.data.service.service_id #=> String
    #   resp.data.service.service_arn #=> String
    #   resp.data.service.service_url #=> String
    #   resp.data.service.created_at #=> Time
    #   resp.data.service.updated_at #=> Time
    #   resp.data.service.deleted_at #=> Time
    #   resp.data.service.status #=> String, one of ["CREATE_FAILED", "RUNNING", "DELETED", "DELETE_FAILED", "PAUSED", "OPERATION_IN_PROGRESS"]
    #   resp.data.service.source_configuration #=> Types::SourceConfiguration
    #   resp.data.service.source_configuration.code_repository #=> Types::CodeRepository
    #   resp.data.service.source_configuration.code_repository.repository_url #=> String
    #   resp.data.service.source_configuration.code_repository.source_code_version #=> Types::SourceCodeVersion
    #   resp.data.service.source_configuration.code_repository.source_code_version.type #=> String, one of ["BRANCH"]
    #   resp.data.service.source_configuration.code_repository.source_code_version.value #=> String
    #   resp.data.service.source_configuration.code_repository.code_configuration #=> Types::CodeConfiguration
    #   resp.data.service.source_configuration.code_repository.code_configuration.configuration_source #=> String, one of ["REPOSITORY", "API"]
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values #=> Types::CodeConfigurationValues
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime #=> String, one of ["PYTHON_3", "NODEJS_12", "NODEJS_14", "CORRETTO_8", "CORRETTO_11"]
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.build_command #=> String
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.start_command #=> String
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.port #=> String
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_variables #=> Hash<String, String>
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_variables['key'] #=> String
    #   resp.data.service.source_configuration.image_repository #=> Types::ImageRepository
    #   resp.data.service.source_configuration.image_repository.image_identifier #=> String
    #   resp.data.service.source_configuration.image_repository.image_configuration #=> Types::ImageConfiguration
    #   resp.data.service.source_configuration.image_repository.image_configuration.runtime_environment_variables #=> Hash<String, String>
    #   resp.data.service.source_configuration.image_repository.image_configuration.start_command #=> String
    #   resp.data.service.source_configuration.image_repository.image_configuration.port #=> String
    #   resp.data.service.source_configuration.image_repository.image_repository_type #=> String, one of ["ECR", "ECR_PUBLIC"]
    #   resp.data.service.source_configuration.auto_deployments_enabled #=> Boolean
    #   resp.data.service.source_configuration.authentication_configuration #=> Types::AuthenticationConfiguration
    #   resp.data.service.source_configuration.authentication_configuration.connection_arn #=> String
    #   resp.data.service.source_configuration.authentication_configuration.access_role_arn #=> String
    #   resp.data.service.instance_configuration #=> Types::InstanceConfiguration
    #   resp.data.service.instance_configuration.cpu #=> String
    #   resp.data.service.instance_configuration.memory #=> String
    #   resp.data.service.instance_configuration.instance_role_arn #=> String
    #   resp.data.service.encryption_configuration #=> Types::EncryptionConfiguration
    #   resp.data.service.encryption_configuration.kms_key #=> String
    #   resp.data.service.health_check_configuration #=> Types::HealthCheckConfiguration
    #   resp.data.service.health_check_configuration.protocol #=> String, one of ["TCP", "HTTP"]
    #   resp.data.service.health_check_configuration.path #=> String
    #   resp.data.service.health_check_configuration.interval #=> Integer
    #   resp.data.service.health_check_configuration.timeout #=> Integer
    #   resp.data.service.health_check_configuration.healthy_threshold #=> Integer
    #   resp.data.service.health_check_configuration.unhealthy_threshold #=> Integer
    #   resp.data.service.auto_scaling_configuration_summary #=> Types::AutoScalingConfigurationSummary
    #   resp.data.service.auto_scaling_configuration_summary.auto_scaling_configuration_arn #=> String
    #   resp.data.service.auto_scaling_configuration_summary.auto_scaling_configuration_name #=> String
    #   resp.data.service.auto_scaling_configuration_summary.auto_scaling_configuration_revision #=> Integer
    #   resp.data.service.network_configuration #=> Types::NetworkConfiguration
    #   resp.data.service.network_configuration.egress_configuration #=> Types::EgressConfiguration
    #   resp.data.service.network_configuration.egress_configuration.egress_type #=> String, one of ["DEFAULT", "VPC"]
    #   resp.data.service.network_configuration.egress_configuration.vpc_connector_arn #=> String
    #   resp.data.service.observability_configuration #=> Types::ServiceObservabilityConfiguration
    #   resp.data.service.observability_configuration.observability_enabled #=> Boolean
    #   resp.data.service.observability_configuration.observability_configuration_arn #=> String
    #   resp.data.operation_id #=> String
    #
    def resume_service(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResumeServiceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResumeServiceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResumeService
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidRequestException, Errors::InternalServiceErrorException, Errors::InvalidStateException]),
        data_parser: Parsers::ResumeService
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResumeService,
        stubs: @stubs,
        params_class: Params::ResumeServiceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :resume_service
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Initiate a manual deployment of the latest commit in a source code repository or the latest image in a source image repository to an App Runner
    #       service.</p>
    #          <p>For a source code repository, App Runner retrieves the commit and builds a Docker image. For a source image repository, App Runner retrieves the latest Docker
    #       image. In both cases, App Runner then deploys the new image to your service and starts a new container instance.</p>
    #          <p>This is an asynchronous operation. On a successful call, you can use the returned <code>OperationId</code> and the <a>ListOperations</a>
    #       call to track the operation's progress.</p>
    #
    # @param [Hash] params
    #   See {Types::StartDeploymentInput}.
    #
    # @option params [String] :service_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner service that you want to manually deploy to.</p>
    #
    # @return [Types::StartDeploymentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_deployment(
    #     service_arn: 'ServiceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartDeploymentOutput
    #   resp.data.operation_id #=> String
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidRequestException, Errors::InternalServiceErrorException]),
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

    # <p>Add tags to, or update the tag values of, an App Runner resource. A tag is a key-value pair.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to update tags for.</p>
    #            <p>It must be the ARN of an App Runner resource.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tag key-value pairs to add or update. If a key is new to the resource, the tag is added with the provided value. If a key is already
    #         associated with the resource, the value of the tag is updated.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ] # required
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidRequestException, Errors::InternalServiceErrorException, Errors::InvalidStateException]),
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

    # <p>Remove tags from an App Runner resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to remove tags from.</p>
    #            <p>It must be the ARN of an App Runner resource.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys that you want to remove.</p>
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
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidRequestException, Errors::InternalServiceErrorException, Errors::InvalidStateException]),
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

    # <p>Update an App Runner service. You can update the source configuration and instance configuration of the service. You can also update the ARN of the auto
    #       scaling configuration resource that's associated with the service. However, you can't change the name or the encryption configuration of the service.
    #       These can be set only when you create the service.</p>
    #          <p>To update the tags applied to your service, use the separate actions <a>TagResource</a> and <a>UntagResource</a>.</p>
    #          <p>This is an asynchronous operation. On a successful call, you can use the returned <code>OperationId</code> and the <a>ListOperations</a>
    #       call to track the operation's progress.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateServiceInput}.
    #
    # @option params [String] :service_arn
    #   <p>The Amazon Resource Name (ARN) of the App Runner service that you want to update.</p>
    #
    # @option params [SourceConfiguration] :source_configuration
    #   <p>The source configuration to apply to the App Runner service.</p>
    #            <p>You can change the configuration of the code or image repository that the service uses. However, you can't switch from code to image or the other way
    #         around. This means that you must provide the same structure member of <code>SourceConfiguration</code> that you originally included when you created the
    #         service. Specifically, you can include either <code>CodeRepository</code> or <code>ImageRepository</code>. To update the source configuration, set the
    #         values to members of the structure that you include.</p>
    #
    # @option params [InstanceConfiguration] :instance_configuration
    #   <p>The runtime configuration to apply to instances (scaling units) of your service.</p>
    #
    # @option params [String] :auto_scaling_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of an App Runner automatic scaling configuration resource that you want to associate with the App Runner service.</p>
    #
    # @option params [HealthCheckConfiguration] :health_check_configuration
    #   <p>The settings for the health check that App Runner performs to monitor the health of the App Runner service.</p>
    #
    # @option params [NetworkConfiguration] :network_configuration
    #   <p>Configuration settings related to network traffic of the web application that the App Runner service runs.</p>
    #
    # @option params [ServiceObservabilityConfiguration] :observability_configuration
    #   <p>The observability configuration of your service.</p>
    #
    # @return [Types::UpdateServiceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service(
    #     service_arn: 'ServiceArn', # required
    #     source_configuration: {
    #       code_repository: {
    #         repository_url: 'RepositoryUrl', # required
    #         source_code_version: {
    #           type: 'BRANCH', # required - accepts ["BRANCH"]
    #           value: 'Value' # required
    #         }, # required
    #         code_configuration: {
    #           configuration_source: 'REPOSITORY', # required - accepts ["REPOSITORY", "API"]
    #           code_configuration_values: {
    #             runtime: 'PYTHON_3', # required - accepts ["PYTHON_3", "NODEJS_12", "NODEJS_14", "CORRETTO_8", "CORRETTO_11"]
    #             build_command: 'BuildCommand',
    #             start_command: 'StartCommand',
    #             port: 'Port',
    #             runtime_environment_variables: {
    #               'key' => 'value'
    #             }
    #           }
    #         }
    #       },
    #       image_repository: {
    #         image_identifier: 'ImageIdentifier', # required
    #         image_configuration: {
    #           start_command: 'StartCommand',
    #           port: 'Port'
    #         },
    #         image_repository_type: 'ECR' # required - accepts ["ECR", "ECR_PUBLIC"]
    #       },
    #       auto_deployments_enabled: false,
    #       authentication_configuration: {
    #         connection_arn: 'ConnectionArn',
    #         access_role_arn: 'AccessRoleArn'
    #       }
    #     },
    #     instance_configuration: {
    #       cpu: 'Cpu',
    #       memory: 'Memory',
    #       instance_role_arn: 'InstanceRoleArn'
    #     },
    #     auto_scaling_configuration_arn: 'AutoScalingConfigurationArn',
    #     health_check_configuration: {
    #       protocol: 'TCP', # accepts ["TCP", "HTTP"]
    #       path: 'Path',
    #       interval: 1,
    #       timeout: 1,
    #       healthy_threshold: 1,
    #       unhealthy_threshold: 1
    #     },
    #     network_configuration: {
    #       egress_configuration: {
    #         egress_type: 'DEFAULT', # accepts ["DEFAULT", "VPC"]
    #         vpc_connector_arn: 'VpcConnectorArn'
    #       }
    #     },
    #     observability_configuration: {
    #       observability_enabled: false, # required
    #       observability_configuration_arn: 'ObservabilityConfigurationArn'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateServiceOutput
    #   resp.data.service #=> Types::Service
    #   resp.data.service.service_name #=> String
    #   resp.data.service.service_id #=> String
    #   resp.data.service.service_arn #=> String
    #   resp.data.service.service_url #=> String
    #   resp.data.service.created_at #=> Time
    #   resp.data.service.updated_at #=> Time
    #   resp.data.service.deleted_at #=> Time
    #   resp.data.service.status #=> String, one of ["CREATE_FAILED", "RUNNING", "DELETED", "DELETE_FAILED", "PAUSED", "OPERATION_IN_PROGRESS"]
    #   resp.data.service.source_configuration #=> Types::SourceConfiguration
    #   resp.data.service.source_configuration.code_repository #=> Types::CodeRepository
    #   resp.data.service.source_configuration.code_repository.repository_url #=> String
    #   resp.data.service.source_configuration.code_repository.source_code_version #=> Types::SourceCodeVersion
    #   resp.data.service.source_configuration.code_repository.source_code_version.type #=> String, one of ["BRANCH"]
    #   resp.data.service.source_configuration.code_repository.source_code_version.value #=> String
    #   resp.data.service.source_configuration.code_repository.code_configuration #=> Types::CodeConfiguration
    #   resp.data.service.source_configuration.code_repository.code_configuration.configuration_source #=> String, one of ["REPOSITORY", "API"]
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values #=> Types::CodeConfigurationValues
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime #=> String, one of ["PYTHON_3", "NODEJS_12", "NODEJS_14", "CORRETTO_8", "CORRETTO_11"]
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.build_command #=> String
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.start_command #=> String
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.port #=> String
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_variables #=> Hash<String, String>
    #   resp.data.service.source_configuration.code_repository.code_configuration.code_configuration_values.runtime_environment_variables['key'] #=> String
    #   resp.data.service.source_configuration.image_repository #=> Types::ImageRepository
    #   resp.data.service.source_configuration.image_repository.image_identifier #=> String
    #   resp.data.service.source_configuration.image_repository.image_configuration #=> Types::ImageConfiguration
    #   resp.data.service.source_configuration.image_repository.image_configuration.runtime_environment_variables #=> Hash<String, String>
    #   resp.data.service.source_configuration.image_repository.image_configuration.start_command #=> String
    #   resp.data.service.source_configuration.image_repository.image_configuration.port #=> String
    #   resp.data.service.source_configuration.image_repository.image_repository_type #=> String, one of ["ECR", "ECR_PUBLIC"]
    #   resp.data.service.source_configuration.auto_deployments_enabled #=> Boolean
    #   resp.data.service.source_configuration.authentication_configuration #=> Types::AuthenticationConfiguration
    #   resp.data.service.source_configuration.authentication_configuration.connection_arn #=> String
    #   resp.data.service.source_configuration.authentication_configuration.access_role_arn #=> String
    #   resp.data.service.instance_configuration #=> Types::InstanceConfiguration
    #   resp.data.service.instance_configuration.cpu #=> String
    #   resp.data.service.instance_configuration.memory #=> String
    #   resp.data.service.instance_configuration.instance_role_arn #=> String
    #   resp.data.service.encryption_configuration #=> Types::EncryptionConfiguration
    #   resp.data.service.encryption_configuration.kms_key #=> String
    #   resp.data.service.health_check_configuration #=> Types::HealthCheckConfiguration
    #   resp.data.service.health_check_configuration.protocol #=> String, one of ["TCP", "HTTP"]
    #   resp.data.service.health_check_configuration.path #=> String
    #   resp.data.service.health_check_configuration.interval #=> Integer
    #   resp.data.service.health_check_configuration.timeout #=> Integer
    #   resp.data.service.health_check_configuration.healthy_threshold #=> Integer
    #   resp.data.service.health_check_configuration.unhealthy_threshold #=> Integer
    #   resp.data.service.auto_scaling_configuration_summary #=> Types::AutoScalingConfigurationSummary
    #   resp.data.service.auto_scaling_configuration_summary.auto_scaling_configuration_arn #=> String
    #   resp.data.service.auto_scaling_configuration_summary.auto_scaling_configuration_name #=> String
    #   resp.data.service.auto_scaling_configuration_summary.auto_scaling_configuration_revision #=> Integer
    #   resp.data.service.network_configuration #=> Types::NetworkConfiguration
    #   resp.data.service.network_configuration.egress_configuration #=> Types::EgressConfiguration
    #   resp.data.service.network_configuration.egress_configuration.egress_type #=> String, one of ["DEFAULT", "VPC"]
    #   resp.data.service.network_configuration.egress_configuration.vpc_connector_arn #=> String
    #   resp.data.service.observability_configuration #=> Types::ServiceObservabilityConfiguration
    #   resp.data.service.observability_configuration.observability_enabled #=> Boolean
    #   resp.data.service.observability_configuration.observability_configuration_arn #=> String
    #   resp.data.operation_id #=> String
    #
    def update_service(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateServiceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateServiceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateService
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidRequestException, Errors::InternalServiceErrorException, Errors::InvalidStateException]),
        data_parser: Parsers::UpdateService
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateService,
        stubs: @stubs,
        params_class: Params::UpdateServiceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_service
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
