# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::WorkLink
  # An API client for WorkLink
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon WorkLink is a cloud-based service that provides secure access
  #             to internal websites and web apps from iOS and Android phones. In a single step, your users, such as
  #             employees, can access internal websites as efficiently as they access any other public website.
  #             They enter a URL in their web browser, or choose a link to an internal website in an email. Amazon WorkLink
  #             authenticates the user's access and securely renders authorized internal web content in a secure
  #             rendering service in the AWS cloud. Amazon WorkLink doesn't download or store any internal web content on
  #             mobile devices.</p>
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
    def initialize(config = AWS::SDK::WorkLink::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Specifies a domain to be associated to Amazon WorkLink.</p>
    #
    # @deprecated
    #   Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.
    #
    # @param [Hash] params
    #   See {Types::AssociateDomainInput}.
    #
    # @option params [String] :fleet_arn
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
    #
    # @option params [String] :domain_name
    #   <p>The fully qualified domain name (FQDN).</p>
    #
    # @option params [String] :display_name
    #   <p>The name to display.</p>
    #
    # @option params [String] :acm_certificate_arn
    #   <p>The ARN of an issued ACM certificate that is valid for the domain being associated.</p>
    #
    # @return [Types::AssociateDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_domain(
    #     fleet_arn: 'FleetArn', # required
    #     domain_name: 'DomainName', # required
    #     display_name: 'DisplayName',
    #     acm_certificate_arn: 'AcmCertificateArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateDomainOutput
    #
    def associate_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateDomainInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateDomain
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::ResourceAlreadyExistsException, Errors::InternalServerErrorException, Errors::InvalidRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::AssociateDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateDomain,
        stubs: @stubs,
        params_class: Params::AssociateDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a website authorization provider with a specified fleet. This is used to authorize users against associated websites in the company network.</p>
    #
    # @deprecated
    #   Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.
    #
    # @param [Hash] params
    #   See {Types::AssociateWebsiteAuthorizationProviderInput}.
    #
    # @option params [String] :fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    # @option params [String] :authorization_provider_type
    #   <p>The authorization provider type.</p>
    #
    # @option params [String] :domain_name
    #   <p>The domain name of the authorization provider. This applies only to SAML-based
    #               authorization providers.</p>
    #
    # @return [Types::AssociateWebsiteAuthorizationProviderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_website_authorization_provider(
    #     fleet_arn: 'FleetArn', # required
    #     authorization_provider_type: 'SAML', # required - accepts ["SAML"]
    #     domain_name: 'DomainName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateWebsiteAuthorizationProviderOutput
    #   resp.data.authorization_provider_id #=> String
    #
    def associate_website_authorization_provider(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateWebsiteAuthorizationProviderInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateWebsiteAuthorizationProviderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateWebsiteAuthorizationProvider
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::ResourceAlreadyExistsException, Errors::InternalServerErrorException, Errors::InvalidRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::AssociateWebsiteAuthorizationProvider
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateWebsiteAuthorizationProvider,
        stubs: @stubs,
        params_class: Params::AssociateWebsiteAuthorizationProviderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_website_authorization_provider
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Imports the root certificate of a certificate authority (CA) used to obtain TLS
    #             certificates used by associated websites within the company network.</p>
    #
    # @deprecated
    #   Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.
    #
    # @param [Hash] params
    #   See {Types::AssociateWebsiteCertificateAuthorityInput}.
    #
    # @option params [String] :fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    # @option params [String] :certificate
    #   <p>The root certificate of the CA.</p>
    #
    # @option params [String] :display_name
    #   <p>The certificate name to display.</p>
    #
    # @return [Types::AssociateWebsiteCertificateAuthorityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_website_certificate_authority(
    #     fleet_arn: 'FleetArn', # required
    #     certificate: 'Certificate', # required
    #     display_name: 'DisplayName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateWebsiteCertificateAuthorityOutput
    #   resp.data.website_ca_id #=> String
    #
    def associate_website_certificate_authority(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateWebsiteCertificateAuthorityInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateWebsiteCertificateAuthorityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateWebsiteCertificateAuthority
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::ResourceAlreadyExistsException, Errors::InternalServerErrorException, Errors::InvalidRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::AssociateWebsiteCertificateAuthority
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateWebsiteCertificateAuthority,
        stubs: @stubs,
        params_class: Params::AssociateWebsiteCertificateAuthorityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_website_certificate_authority
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a fleet. A fleet consists of resources and the configuration that delivers
    #             associated websites to authorized users who download and set up the Amazon WorkLink app.</p>
    #
    # @deprecated
    #   Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.
    #
    # @param [Hash] params
    #   See {Types::CreateFleetInput}.
    #
    # @option params [String] :fleet_name
    #   <p>A unique name for the fleet.</p>
    #
    # @option params [String] :display_name
    #   <p>The fleet name to display.</p>
    #
    # @option params [Boolean] :optimize_for_end_user_location
    #   <p>The option to optimize for better performance by routing traffic through the closest
    #               AWS Region to users, which may be outside of your home Region.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p> The tags to add to the resource. A tag is a key-value pair.</p>
    #
    # @return [Types::CreateFleetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_fleet(
    #     fleet_name: 'FleetName', # required
    #     display_name: 'DisplayName',
    #     optimize_for_end_user_location: false,
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFleetOutput
    #   resp.data.fleet_arn #=> String
    #
    def create_fleet(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFleetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFleetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFleet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::ResourceAlreadyExistsException, Errors::InternalServerErrorException, Errors::InvalidRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::CreateFleet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFleet,
        stubs: @stubs,
        params_class: Params::CreateFleetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_fleet
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a fleet. Prevents users from accessing previously associated websites. </p>
    #
    # @deprecated
    #   Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.
    #
    # @param [Hash] params
    #   See {Types::DeleteFleetInput}.
    #
    # @option params [String] :fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    # @return [Types::DeleteFleetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_fleet(
    #     fleet_arn: 'FleetArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFleetOutput
    #
    def delete_fleet(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFleetInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFleetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFleet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::InternalServerErrorException, Errors::InvalidRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::DeleteFleet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFleet,
        stubs: @stubs,
        params_class: Params::DeleteFleetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_fleet
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the configuration for delivering audit streams to the customer account.</p>
    #
    # @deprecated
    #   Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.
    #
    # @param [Hash] params
    #   See {Types::DescribeAuditStreamConfigurationInput}.
    #
    # @option params [String] :fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    # @return [Types::DescribeAuditStreamConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_audit_stream_configuration(
    #     fleet_arn: 'FleetArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAuditStreamConfigurationOutput
    #   resp.data.audit_stream_arn #=> String
    #
    def describe_audit_stream_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAuditStreamConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAuditStreamConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAuditStreamConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::InternalServerErrorException, Errors::InvalidRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::DescribeAuditStreamConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAuditStreamConfiguration,
        stubs: @stubs,
        params_class: Params::DescribeAuditStreamConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_audit_stream_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the networking configuration to access the internal websites associated with
    #             the specified fleet.</p>
    #
    # @deprecated
    #   Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.
    #
    # @param [Hash] params
    #   See {Types::DescribeCompanyNetworkConfigurationInput}.
    #
    # @option params [String] :fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    # @return [Types::DescribeCompanyNetworkConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_company_network_configuration(
    #     fleet_arn: 'FleetArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCompanyNetworkConfigurationOutput
    #   resp.data.vpc_id #=> String
    #   resp.data.subnet_ids #=> Array<String>
    #   resp.data.subnet_ids[0] #=> String
    #   resp.data.security_group_ids #=> Array<String>
    #   resp.data.security_group_ids[0] #=> String
    #
    def describe_company_network_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCompanyNetworkConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCompanyNetworkConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCompanyNetworkConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::InternalServerErrorException, Errors::InvalidRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::DescribeCompanyNetworkConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCompanyNetworkConfiguration,
        stubs: @stubs,
        params_class: Params::DescribeCompanyNetworkConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_company_network_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides information about a user's device.</p>
    #
    # @deprecated
    #   Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.
    #
    # @param [Hash] params
    #   See {Types::DescribeDeviceInput}.
    #
    # @option params [String] :fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    # @option params [String] :device_id
    #   <p>A unique identifier for a registered user's device.</p>
    #
    # @return [Types::DescribeDeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_device(
    #     fleet_arn: 'FleetArn', # required
    #     device_id: 'DeviceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDeviceOutput
    #   resp.data.status #=> String, one of ["ACTIVE", "SIGNED_OUT"]
    #   resp.data.model #=> String
    #   resp.data.manufacturer #=> String
    #   resp.data.operating_system #=> String
    #   resp.data.operating_system_version #=> String
    #   resp.data.patch_level #=> String
    #   resp.data.first_accessed_time #=> Time
    #   resp.data.last_accessed_time #=> Time
    #   resp.data.username #=> String
    #
    def describe_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDeviceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDevice
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::InternalServerErrorException, Errors::InvalidRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::DescribeDevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDevice,
        stubs: @stubs,
        params_class: Params::DescribeDeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the device policy configuration for the specified fleet.</p>
    #
    # @deprecated
    #   Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.
    #
    # @param [Hash] params
    #   See {Types::DescribeDevicePolicyConfigurationInput}.
    #
    # @option params [String] :fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    # @return [Types::DescribeDevicePolicyConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_device_policy_configuration(
    #     fleet_arn: 'FleetArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDevicePolicyConfigurationOutput
    #   resp.data.device_ca_certificate #=> String
    #
    def describe_device_policy_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDevicePolicyConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDevicePolicyConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDevicePolicyConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::InternalServerErrorException, Errors::InvalidRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::DescribeDevicePolicyConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDevicePolicyConfiguration,
        stubs: @stubs,
        params_class: Params::DescribeDevicePolicyConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_device_policy_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides information about the domain.</p>
    #
    # @deprecated
    #   Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.
    #
    # @param [Hash] params
    #   See {Types::DescribeDomainInput}.
    #
    # @option params [String] :fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain.</p>
    #
    # @return [Types::DescribeDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_domain(
    #     fleet_arn: 'FleetArn', # required
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDomainOutput
    #   resp.data.domain_name #=> String
    #   resp.data.display_name #=> String
    #   resp.data.created_time #=> Time
    #   resp.data.domain_status #=> String, one of ["PENDING_VALIDATION", "ASSOCIATING", "ACTIVE", "INACTIVE", "DISASSOCIATING", "DISASSOCIATED", "FAILED_TO_ASSOCIATE", "FAILED_TO_DISASSOCIATE"]
    #   resp.data.acm_certificate_arn #=> String
    #
    def describe_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDomainInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDomain
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::InternalServerErrorException, Errors::InvalidRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::DescribeDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDomain,
        stubs: @stubs,
        params_class: Params::DescribeDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides basic information for the specified fleet, excluding identity provider,
    #             networking, and device configuration details.</p>
    #
    # @deprecated
    #   Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.
    #
    # @param [Hash] params
    #   See {Types::DescribeFleetMetadataInput}.
    #
    # @option params [String] :fleet_arn
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
    #
    # @return [Types::DescribeFleetMetadataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_fleet_metadata(
    #     fleet_arn: 'FleetArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFleetMetadataOutput
    #   resp.data.created_time #=> Time
    #   resp.data.last_updated_time #=> Time
    #   resp.data.fleet_name #=> String
    #   resp.data.display_name #=> String
    #   resp.data.optimize_for_end_user_location #=> Boolean
    #   resp.data.company_code #=> String
    #   resp.data.fleet_status #=> String, one of ["CREATING", "ACTIVE", "DELETING", "DELETED", "FAILED_TO_CREATE", "FAILED_TO_DELETE"]
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def describe_fleet_metadata(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFleetMetadataInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFleetMetadataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFleetMetadata
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::InternalServerErrorException, Errors::InvalidRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::DescribeFleetMetadata
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFleetMetadata,
        stubs: @stubs,
        params_class: Params::DescribeFleetMetadataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_fleet_metadata
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the identity provider configuration of the specified fleet.</p>
    #
    # @deprecated
    #   Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.
    #
    # @param [Hash] params
    #   See {Types::DescribeIdentityProviderConfigurationInput}.
    #
    # @option params [String] :fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    # @return [Types::DescribeIdentityProviderConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_identity_provider_configuration(
    #     fleet_arn: 'FleetArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeIdentityProviderConfigurationOutput
    #   resp.data.identity_provider_type #=> String, one of ["SAML"]
    #   resp.data.service_provider_saml_metadata #=> String
    #   resp.data.identity_provider_saml_metadata #=> String
    #
    def describe_identity_provider_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeIdentityProviderConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeIdentityProviderConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeIdentityProviderConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::InternalServerErrorException, Errors::InvalidRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::DescribeIdentityProviderConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeIdentityProviderConfiguration,
        stubs: @stubs,
        params_class: Params::DescribeIdentityProviderConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_identity_provider_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides information about the certificate authority.</p>
    #
    # @deprecated
    #   Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.
    #
    # @param [Hash] params
    #   See {Types::DescribeWebsiteCertificateAuthorityInput}.
    #
    # @option params [String] :fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    # @option params [String] :website_ca_id
    #   <p>A unique identifier for the certificate authority.</p>
    #
    # @return [Types::DescribeWebsiteCertificateAuthorityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_website_certificate_authority(
    #     fleet_arn: 'FleetArn', # required
    #     website_ca_id: 'WebsiteCaId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeWebsiteCertificateAuthorityOutput
    #   resp.data.certificate #=> String
    #   resp.data.created_time #=> Time
    #   resp.data.display_name #=> String
    #
    def describe_website_certificate_authority(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeWebsiteCertificateAuthorityInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeWebsiteCertificateAuthorityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeWebsiteCertificateAuthority
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::InternalServerErrorException, Errors::InvalidRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::DescribeWebsiteCertificateAuthority
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeWebsiteCertificateAuthority,
        stubs: @stubs,
        params_class: Params::DescribeWebsiteCertificateAuthorityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_website_certificate_authority
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a domain from Amazon WorkLink. End users lose the ability to access the domain with Amazon WorkLink. </p>
    #
    # @deprecated
    #   Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.
    #
    # @param [Hash] params
    #   See {Types::DisassociateDomainInput}.
    #
    # @option params [String] :fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain.</p>
    #
    # @return [Types::DisassociateDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_domain(
    #     fleet_arn: 'FleetArn', # required
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateDomainOutput
    #
    def disassociate_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateDomainInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateDomain
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::InternalServerErrorException, Errors::InvalidRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::DisassociateDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateDomain,
        stubs: @stubs,
        params_class: Params::DisassociateDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a website authorization provider from a specified fleet. After the
    #             disassociation, users can't load any associated websites that require this authorization
    #             provider.</p>
    #
    # @deprecated
    #   Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.
    #
    # @param [Hash] params
    #   See {Types::DisassociateWebsiteAuthorizationProviderInput}.
    #
    # @option params [String] :fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    # @option params [String] :authorization_provider_id
    #   <p>A unique identifier for the authorization provider.</p>
    #
    # @return [Types::DisassociateWebsiteAuthorizationProviderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_website_authorization_provider(
    #     fleet_arn: 'FleetArn', # required
    #     authorization_provider_id: 'AuthorizationProviderId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateWebsiteAuthorizationProviderOutput
    #
    def disassociate_website_authorization_provider(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateWebsiteAuthorizationProviderInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateWebsiteAuthorizationProviderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateWebsiteAuthorizationProvider
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::ResourceAlreadyExistsException, Errors::InternalServerErrorException, Errors::InvalidRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::DisassociateWebsiteAuthorizationProvider
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateWebsiteAuthorizationProvider,
        stubs: @stubs,
        params_class: Params::DisassociateWebsiteAuthorizationProviderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_website_authorization_provider
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a certificate authority (CA).</p>
    #
    # @deprecated
    #   Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.
    #
    # @param [Hash] params
    #   See {Types::DisassociateWebsiteCertificateAuthorityInput}.
    #
    # @option params [String] :fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    # @option params [String] :website_ca_id
    #   <p>A unique identifier for the CA.</p>
    #
    # @return [Types::DisassociateWebsiteCertificateAuthorityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_website_certificate_authority(
    #     fleet_arn: 'FleetArn', # required
    #     website_ca_id: 'WebsiteCaId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateWebsiteCertificateAuthorityOutput
    #
    def disassociate_website_certificate_authority(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateWebsiteCertificateAuthorityInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateWebsiteCertificateAuthorityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateWebsiteCertificateAuthority
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::InternalServerErrorException, Errors::InvalidRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::DisassociateWebsiteCertificateAuthority
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateWebsiteCertificateAuthority,
        stubs: @stubs,
        params_class: Params::DisassociateWebsiteCertificateAuthorityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_website_certificate_authority
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of devices registered with the specified fleet.</p>
    #
    # @deprecated
    #   Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.
    #
    # @param [Hash] params
    #   See {Types::ListDevicesInput}.
    #
    # @option params [String] :fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation. If
    #               this value is null, it retrieves the first page.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #
    # @return [Types::ListDevicesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_devices(
    #     fleet_arn: 'FleetArn', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDevicesOutput
    #   resp.data.devices #=> Array<DeviceSummary>
    #   resp.data.devices[0] #=> Types::DeviceSummary
    #   resp.data.devices[0].device_id #=> String
    #   resp.data.devices[0].device_status #=> String, one of ["ACTIVE", "SIGNED_OUT"]
    #   resp.data.next_token #=> String
    #
    def list_devices(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDevicesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDevicesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDevices
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::InternalServerErrorException, Errors::InvalidRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListDevices
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDevices,
        stubs: @stubs,
        params_class: Params::ListDevicesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_devices
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of domains associated to a specified fleet.</p>
    #
    # @deprecated
    #   Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.
    #
    # @param [Hash] params
    #   See {Types::ListDomainsInput}.
    #
    # @option params [String] :fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation. If
    #               this value is null, it retrieves the first page.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #
    # @return [Types::ListDomainsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_domains(
    #     fleet_arn: 'FleetArn', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDomainsOutput
    #   resp.data.domains #=> Array<DomainSummary>
    #   resp.data.domains[0] #=> Types::DomainSummary
    #   resp.data.domains[0].domain_name #=> String
    #   resp.data.domains[0].display_name #=> String
    #   resp.data.domains[0].created_time #=> Time
    #   resp.data.domains[0].domain_status #=> String, one of ["PENDING_VALIDATION", "ASSOCIATING", "ACTIVE", "INACTIVE", "DISASSOCIATING", "DISASSOCIATED", "FAILED_TO_ASSOCIATE", "FAILED_TO_DISASSOCIATE"]
    #   resp.data.next_token #=> String
    #
    def list_domains(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDomainsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDomainsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDomains
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::InternalServerErrorException, Errors::InvalidRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListDomains
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDomains,
        stubs: @stubs,
        params_class: Params::ListDomainsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_domains
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of fleets for the current account and Region.</p>
    #
    # @deprecated
    #   Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.
    #
    # @param [Hash] params
    #   See {Types::ListFleetsInput}.
    #
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation. If
    #               this value is null, it retrieves the first page.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #
    # @return [Types::ListFleetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fleets(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFleetsOutput
    #   resp.data.fleet_summary_list #=> Array<FleetSummary>
    #   resp.data.fleet_summary_list[0] #=> Types::FleetSummary
    #   resp.data.fleet_summary_list[0].fleet_arn #=> String
    #   resp.data.fleet_summary_list[0].created_time #=> Time
    #   resp.data.fleet_summary_list[0].last_updated_time #=> Time
    #   resp.data.fleet_summary_list[0].fleet_name #=> String
    #   resp.data.fleet_summary_list[0].display_name #=> String
    #   resp.data.fleet_summary_list[0].company_code #=> String
    #   resp.data.fleet_summary_list[0].fleet_status #=> String, one of ["CREATING", "ACTIVE", "DELETING", "DELETED", "FAILED_TO_CREATE", "FAILED_TO_DELETE"]
    #   resp.data.fleet_summary_list[0].tags #=> Hash<String, String>
    #   resp.data.fleet_summary_list[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_fleets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFleetsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFleetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFleets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::InternalServerErrorException, Errors::InvalidRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListFleets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFleets,
        stubs: @stubs,
        params_class: Params::ListFleetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_fleets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of tags for the specified resource.</p>
    #
    # @deprecated
    #   Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException]),
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

    # <p>Retrieves a list of website authorization providers associated with a specified fleet.</p>
    #
    # @deprecated
    #   Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.
    #
    # @param [Hash] params
    #   See {Types::ListWebsiteAuthorizationProvidersInput}.
    #
    # @option params [String] :fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #
    # @return [Types::ListWebsiteAuthorizationProvidersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_website_authorization_providers(
    #     fleet_arn: 'FleetArn', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListWebsiteAuthorizationProvidersOutput
    #   resp.data.website_authorization_providers #=> Array<WebsiteAuthorizationProviderSummary>
    #   resp.data.website_authorization_providers[0] #=> Types::WebsiteAuthorizationProviderSummary
    #   resp.data.website_authorization_providers[0].authorization_provider_id #=> String
    #   resp.data.website_authorization_providers[0].authorization_provider_type #=> String, one of ["SAML"]
    #   resp.data.website_authorization_providers[0].domain_name #=> String
    #   resp.data.website_authorization_providers[0].created_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_website_authorization_providers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListWebsiteAuthorizationProvidersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListWebsiteAuthorizationProvidersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListWebsiteAuthorizationProviders
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::InternalServerErrorException, Errors::InvalidRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListWebsiteAuthorizationProviders
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListWebsiteAuthorizationProviders,
        stubs: @stubs,
        params_class: Params::ListWebsiteAuthorizationProvidersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_website_authorization_providers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of certificate authorities added for the current account and
    #             Region.</p>
    #
    # @deprecated
    #   Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.
    #
    # @param [Hash] params
    #   See {Types::ListWebsiteCertificateAuthoritiesInput}.
    #
    # @option params [String] :fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation. If
    #               this value is null, it retrieves the first page.</p>
    #
    # @return [Types::ListWebsiteCertificateAuthoritiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_website_certificate_authorities(
    #     fleet_arn: 'FleetArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListWebsiteCertificateAuthoritiesOutput
    #   resp.data.website_certificate_authorities #=> Array<WebsiteCaSummary>
    #   resp.data.website_certificate_authorities[0] #=> Types::WebsiteCaSummary
    #   resp.data.website_certificate_authorities[0].website_ca_id #=> String
    #   resp.data.website_certificate_authorities[0].created_time #=> Time
    #   resp.data.website_certificate_authorities[0].display_name #=> String
    #   resp.data.next_token #=> String
    #
    def list_website_certificate_authorities(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListWebsiteCertificateAuthoritiesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListWebsiteCertificateAuthoritiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListWebsiteCertificateAuthorities
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::InternalServerErrorException, Errors::InvalidRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListWebsiteCertificateAuthorities
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListWebsiteCertificateAuthorities,
        stubs: @stubs,
        params_class: Params::ListWebsiteCertificateAuthoritiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_website_certificate_authorities
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Moves a domain to ACTIVE status if it was in the INACTIVE status.</p>
    #
    # @deprecated
    #   Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.
    #
    # @param [Hash] params
    #   See {Types::RestoreDomainAccessInput}.
    #
    # @option params [String] :fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain.</p>
    #
    # @return [Types::RestoreDomainAccessOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_domain_access(
    #     fleet_arn: 'FleetArn', # required
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RestoreDomainAccessOutput
    #
    def restore_domain_access(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RestoreDomainAccessInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RestoreDomainAccessInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RestoreDomainAccess
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::InternalServerErrorException, Errors::InvalidRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::RestoreDomainAccess
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RestoreDomainAccess,
        stubs: @stubs,
        params_class: Params::RestoreDomainAccessOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :restore_domain_access
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Moves a domain to INACTIVE status if it was in the ACTIVE status.</p>
    #
    # @deprecated
    #   Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.
    #
    # @param [Hash] params
    #   See {Types::RevokeDomainAccessInput}.
    #
    # @option params [String] :fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain.</p>
    #
    # @return [Types::RevokeDomainAccessOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_domain_access(
    #     fleet_arn: 'FleetArn', # required
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RevokeDomainAccessOutput
    #
    def revoke_domain_access(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RevokeDomainAccessInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RevokeDomainAccessInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RevokeDomainAccess
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::InternalServerErrorException, Errors::InvalidRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::RevokeDomainAccess
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RevokeDomainAccess,
        stubs: @stubs,
        params_class: Params::RevokeDomainAccessOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :revoke_domain_access
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Signs the user out from all of their devices. The user can sign in again if they have
    #             valid credentials.</p>
    #
    # @deprecated
    #   Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.
    #
    # @param [Hash] params
    #   See {Types::SignOutUserInput}.
    #
    # @option params [String] :fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    # @option params [String] :username
    #   <p>The name of the user.</p>
    #
    # @return [Types::SignOutUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.sign_out_user(
    #     fleet_arn: 'FleetArn', # required
    #     username: 'Username' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SignOutUserOutput
    #
    def sign_out_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SignOutUserInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SignOutUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SignOutUser
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::InternalServerErrorException, Errors::InvalidRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::SignOutUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SignOutUser,
        stubs: @stubs,
        params_class: Params::SignOutUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :sign_out_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or overwrites one or more tags for the specified resource, such as a fleet. Each tag consists of a key and an optional value. If a resource already has a tag with the same key, this operation updates its value.</p>
    #
    # @deprecated
    #   Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the resource. A tag is a key-value pair.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException]),
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

    # <p>Removes one or more tags from the specified resource.</p>
    #
    # @deprecated
    #   Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException]),
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

    # <p>Updates the audit stream configuration for the fleet.</p>
    #
    # @deprecated
    #   Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.
    #
    # @param [Hash] params
    #   See {Types::UpdateAuditStreamConfigurationInput}.
    #
    # @option params [String] :fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    # @option params [String] :audit_stream_arn
    #   <p>The ARN of the Amazon Kinesis data stream that receives the audit events.</p>
    #
    # @return [Types::UpdateAuditStreamConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_audit_stream_configuration(
    #     fleet_arn: 'FleetArn', # required
    #     audit_stream_arn: 'AuditStreamArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAuditStreamConfigurationOutput
    #
    def update_audit_stream_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAuditStreamConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAuditStreamConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAuditStreamConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::InternalServerErrorException, Errors::InvalidRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::UpdateAuditStreamConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAuditStreamConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateAuditStreamConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_audit_stream_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the company network configuration for the fleet.</p>
    #
    # @deprecated
    #   Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.
    #
    # @param [Hash] params
    #   See {Types::UpdateCompanyNetworkConfigurationInput}.
    #
    # @option params [String] :fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    # @option params [String] :vpc_id
    #   <p>The VPC with connectivity to associated websites.</p>
    #
    # @option params [Array<String>] :subnet_ids
    #   <p>The subnets used for X-ENI connections from Amazon WorkLink rendering containers.</p>
    #
    # @option params [Array<String>] :security_group_ids
    #   <p>The security groups associated with access to the provided subnets.</p>
    #
    # @return [Types::UpdateCompanyNetworkConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_company_network_configuration(
    #     fleet_arn: 'FleetArn', # required
    #     vpc_id: 'VpcId', # required
    #     subnet_ids: [
    #       'member'
    #     ], # required
    #     security_group_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateCompanyNetworkConfigurationOutput
    #
    def update_company_network_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateCompanyNetworkConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateCompanyNetworkConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateCompanyNetworkConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::InternalServerErrorException, Errors::InvalidRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::UpdateCompanyNetworkConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateCompanyNetworkConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateCompanyNetworkConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_company_network_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the device policy configuration for the fleet.</p>
    #
    # @deprecated
    #   Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.
    #
    # @param [Hash] params
    #   See {Types::UpdateDevicePolicyConfigurationInput}.
    #
    # @option params [String] :fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    # @option params [String] :device_ca_certificate
    #   <p>The certificate chain, including intermediate certificates and the root certificate authority certificate used to issue device certificates.</p>
    #
    # @return [Types::UpdateDevicePolicyConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_device_policy_configuration(
    #     fleet_arn: 'FleetArn', # required
    #     device_ca_certificate: 'DeviceCaCertificate'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDevicePolicyConfigurationOutput
    #
    def update_device_policy_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDevicePolicyConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDevicePolicyConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDevicePolicyConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::InternalServerErrorException, Errors::InvalidRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::UpdateDevicePolicyConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDevicePolicyConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateDevicePolicyConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_device_policy_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates domain metadata, such as DisplayName.</p>
    #
    # @deprecated
    #   Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.
    #
    # @param [Hash] params
    #   See {Types::UpdateDomainMetadataInput}.
    #
    # @option params [String] :fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    # @option params [String] :domain_name
    #   <p>The name of the domain.</p>
    #
    # @option params [String] :display_name
    #   <p>The name to display.</p>
    #
    # @return [Types::UpdateDomainMetadataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_domain_metadata(
    #     fleet_arn: 'FleetArn', # required
    #     domain_name: 'DomainName', # required
    #     display_name: 'DisplayName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDomainMetadataOutput
    #
    def update_domain_metadata(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDomainMetadataInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDomainMetadataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDomainMetadata
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::InternalServerErrorException, Errors::InvalidRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::UpdateDomainMetadata
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDomainMetadata,
        stubs: @stubs,
        params_class: Params::UpdateDomainMetadataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_domain_metadata
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates fleet metadata, such as DisplayName.</p>
    #
    # @deprecated
    #   Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.
    #
    # @param [Hash] params
    #   See {Types::UpdateFleetMetadataInput}.
    #
    # @option params [String] :fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    # @option params [String] :display_name
    #   <p>The fleet name to display. The existing DisplayName is unset if null is passed.</p>
    #
    # @option params [Boolean] :optimize_for_end_user_location
    #   <p>The option to optimize for better performance by routing traffic through the closest
    #               AWS Region to users, which may be outside of your home Region.</p>
    #
    # @return [Types::UpdateFleetMetadataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_fleet_metadata(
    #     fleet_arn: 'FleetArn', # required
    #     display_name: 'DisplayName',
    #     optimize_for_end_user_location: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFleetMetadataOutput
    #
    def update_fleet_metadata(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFleetMetadataInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFleetMetadataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFleetMetadata
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::InternalServerErrorException, Errors::InvalidRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::UpdateFleetMetadata
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFleetMetadata,
        stubs: @stubs,
        params_class: Params::UpdateFleetMetadataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_fleet_metadata
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the identity provider configuration for the fleet.</p>
    #
    # @deprecated
    #   Amazon WorkLink is no longer supported. This will be removed in a future version of the SDK.
    #
    # @param [Hash] params
    #   See {Types::UpdateIdentityProviderConfigurationInput}.
    #
    # @option params [String] :fleet_arn
    #   <p>The ARN of the fleet.</p>
    #
    # @option params [String] :identity_provider_type
    #   <p>The type of identity provider.</p>
    #
    # @option params [String] :identity_provider_saml_metadata
    #   <p>The SAML metadata document provided by the customer’s identity provider. The existing
    #               IdentityProviderSamlMetadata is unset if null is passed.</p>
    #
    # @return [Types::UpdateIdentityProviderConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_identity_provider_configuration(
    #     fleet_arn: 'FleetArn', # required
    #     identity_provider_type: 'SAML', # required - accepts ["SAML"]
    #     identity_provider_saml_metadata: 'IdentityProviderSamlMetadata'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateIdentityProviderConfigurationOutput
    #
    def update_identity_provider_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateIdentityProviderConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateIdentityProviderConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateIdentityProviderConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::InternalServerErrorException, Errors::InvalidRequestException, Errors::UnauthorizedException]),
        data_parser: Parsers::UpdateIdentityProviderConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateIdentityProviderConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateIdentityProviderConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_identity_provider_configuration
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
