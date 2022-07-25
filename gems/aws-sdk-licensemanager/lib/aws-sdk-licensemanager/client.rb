# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::LicenseManager
  # An API client for AWSLicenseManager
  # See {#initialize} for a full list of supported configuration options
  # <p>License Manager makes it easier to manage licenses from software vendors across multiple
  #          Amazon Web Services accounts and on-premises servers.</p>
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
    def initialize(config = AWS::SDK::LicenseManager::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Accepts the specified grant.</p>
    #
    # @param [Hash] params
    #   See {Types::AcceptGrantInput}.
    #
    # @option params [String] :grant_arn
    #   <p>Amazon Resource Name (ARN) of the grant.</p>
    #
    # @return [Types::AcceptGrantOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_grant(
    #     grant_arn: 'GrantArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AcceptGrantOutput
    #   resp.data.grant_arn #=> String
    #   resp.data.status #=> String, one of ["PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"]
    #   resp.data.version #=> String
    #
    def accept_grant(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AcceptGrantInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AcceptGrantInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AcceptGrant
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException, Errors::ResourceLimitExceededException, Errors::ValidationException]),
        data_parser: Parsers::AcceptGrant
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AcceptGrant,
        stubs: @stubs,
        params_class: Params::AcceptGrantOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :accept_grant
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Checks in the specified license. Check in a license when it is no longer in use.</p>
    #
    # @param [Hash] params
    #   See {Types::CheckInLicenseInput}.
    #
    # @option params [String] :license_consumption_token
    #   <p>License consumption token.</p>
    #
    # @option params [String] :beneficiary
    #   <p>License beneficiary.</p>
    #
    # @return [Types::CheckInLicenseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.check_in_license(
    #     license_consumption_token: 'LicenseConsumptionToken', # required
    #     beneficiary: 'Beneficiary'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CheckInLicenseOutput
    #
    def check_in_license(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CheckInLicenseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CheckInLicenseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CheckInLicense
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException]),
        data_parser: Parsers::CheckInLicense
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CheckInLicense,
        stubs: @stubs,
        params_class: Params::CheckInLicenseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :check_in_license
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Checks out the specified license for offline use.</p>
    #
    # @param [Hash] params
    #   See {Types::CheckoutBorrowLicenseInput}.
    #
    # @option params [String] :license_arn
    #   <p>Amazon Resource Name (ARN) of the license. The license must use the borrow consumption configuration.</p>
    #
    # @option params [Array<EntitlementData>] :entitlements
    #   <p>License entitlements. Partial checkouts are not supported.</p>
    #
    # @option params [String] :digital_signature_method
    #   <p>Digital signature method. The possible value is JSON Web Signature (JWS) algorithm PS384.
    #            For more information, see <a href="https://tools.ietf.org/html/rfc7518#section-3.5">RFC 7518 Digital Signature with RSASSA-PSS</a>.</p>
    #
    # @option params [String] :node_id
    #   <p>Node ID.</p>
    #
    # @option params [Array<Metadata>] :checkout_metadata
    #   <p>Information about constraints.</p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #
    # @return [Types::CheckoutBorrowLicenseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.checkout_borrow_license(
    #     license_arn: 'LicenseArn', # required
    #     entitlements: [
    #       {
    #         name: 'Name', # required
    #         value: 'Value',
    #         unit: 'Count' # required - accepts ["Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"]
    #       }
    #     ], # required
    #     digital_signature_method: 'JWT_PS384', # required - accepts ["JWT_PS384"]
    #     node_id: 'NodeId',
    #     checkout_metadata: [
    #       {
    #         name: 'Name',
    #         value: 'Value'
    #       }
    #     ],
    #     client_token: 'ClientToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CheckoutBorrowLicenseOutput
    #   resp.data.license_arn #=> String
    #   resp.data.license_consumption_token #=> String
    #   resp.data.entitlements_allowed #=> Array<EntitlementData>
    #   resp.data.entitlements_allowed[0] #=> Types::EntitlementData
    #   resp.data.entitlements_allowed[0].name #=> String
    #   resp.data.entitlements_allowed[0].value #=> String
    #   resp.data.entitlements_allowed[0].unit #=> String, one of ["Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"]
    #   resp.data.node_id #=> String
    #   resp.data.signed_token #=> String
    #   resp.data.issued_at #=> String
    #   resp.data.expiration #=> String
    #   resp.data.checkout_metadata #=> Array<Metadata>
    #   resp.data.checkout_metadata[0] #=> Types::Metadata
    #   resp.data.checkout_metadata[0].name #=> String
    #   resp.data.checkout_metadata[0].value #=> String
    #
    def checkout_borrow_license(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CheckoutBorrowLicenseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CheckoutBorrowLicenseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CheckoutBorrowLicense
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntitlementNotAllowedException, Errors::NoEntitlementsAllowedException, Errors::ResourceNotFoundException, Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::RedirectException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::UnsupportedDigitalSignatureMethodException, Errors::AccessDeniedException, Errors::ValidationException]),
        data_parser: Parsers::CheckoutBorrowLicense
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CheckoutBorrowLicense,
        stubs: @stubs,
        params_class: Params::CheckoutBorrowLicenseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :checkout_borrow_license
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Checks out the specified license.</p>
    #
    # @param [Hash] params
    #   See {Types::CheckoutLicenseInput}.
    #
    # @option params [String] :product_sku
    #   <p>Product SKU.</p>
    #
    # @option params [String] :checkout_type
    #   <p>Checkout type.</p>
    #
    # @option params [String] :key_fingerprint
    #   <p>Key fingerprint identifying the license.</p>
    #
    # @option params [Array<EntitlementData>] :entitlements
    #   <p>License entitlements.</p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #
    # @option params [String] :beneficiary
    #   <p>License beneficiary.</p>
    #
    # @option params [String] :node_id
    #   <p>Node ID.</p>
    #
    # @return [Types::CheckoutLicenseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.checkout_license(
    #     product_sku: 'ProductSKU', # required
    #     checkout_type: 'PROVISIONAL', # required - accepts ["PROVISIONAL", "PERPETUAL"]
    #     key_fingerprint: 'KeyFingerprint', # required
    #     entitlements: [
    #       {
    #         name: 'Name', # required
    #         value: 'Value',
    #         unit: 'Count' # required - accepts ["Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"]
    #       }
    #     ], # required
    #     client_token: 'ClientToken', # required
    #     beneficiary: 'Beneficiary',
    #     node_id: 'NodeId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CheckoutLicenseOutput
    #   resp.data.checkout_type #=> String, one of ["PROVISIONAL", "PERPETUAL"]
    #   resp.data.license_consumption_token #=> String
    #   resp.data.entitlements_allowed #=> Array<EntitlementData>
    #   resp.data.entitlements_allowed[0] #=> Types::EntitlementData
    #   resp.data.entitlements_allowed[0].name #=> String
    #   resp.data.entitlements_allowed[0].value #=> String
    #   resp.data.entitlements_allowed[0].unit #=> String, one of ["Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"]
    #   resp.data.signed_token #=> String
    #   resp.data.node_id #=> String
    #   resp.data.issued_at #=> String
    #   resp.data.expiration #=> String
    #   resp.data.license_arn #=> String
    #
    def checkout_license(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CheckoutLicenseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CheckoutLicenseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CheckoutLicense
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoEntitlementsAllowedException, Errors::ResourceNotFoundException, Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::RedirectException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::UnsupportedDigitalSignatureMethodException, Errors::AccessDeniedException, Errors::ValidationException]),
        data_parser: Parsers::CheckoutLicense
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CheckoutLicense,
        stubs: @stubs,
        params_class: Params::CheckoutLicenseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :checkout_license
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a grant for the specified license. A grant shares the use of license entitlements with specific Amazon Web Services accounts.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateGrantInput}.
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #
    # @option params [String] :grant_name
    #   <p>Grant name.</p>
    #
    # @option params [String] :license_arn
    #   <p>Amazon Resource Name (ARN) of the license.</p>
    #
    # @option params [Array<String>] :principals
    #   <p>The grant principals.</p>
    #
    # @option params [String] :home_region
    #   <p>Home Region of the grant.</p>
    #
    # @option params [Array<String>] :allowed_operations
    #   <p>Allowed operations for the grant.</p>
    #
    # @return [Types::CreateGrantOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_grant(
    #     client_token: 'ClientToken', # required
    #     grant_name: 'GrantName', # required
    #     license_arn: 'LicenseArn', # required
    #     principals: [
    #       'member'
    #     ], # required
    #     home_region: 'HomeRegion', # required
    #     allowed_operations: [
    #       'CreateGrant' # accepts ["CreateGrant", "CheckoutLicense", "CheckoutBorrowLicense", "CheckInLicense", "ExtendConsumptionLicense", "ListPurchasedLicenses", "CreateToken"]
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateGrantOutput
    #   resp.data.grant_arn #=> String
    #   resp.data.status #=> String, one of ["PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"]
    #   resp.data.version #=> String
    #
    def create_grant(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateGrantInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateGrantInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateGrant
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException, Errors::ResourceLimitExceededException, Errors::ValidationException]),
        data_parser: Parsers::CreateGrant
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateGrant,
        stubs: @stubs,
        params_class: Params::CreateGrantOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_grant
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new version of the specified grant.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateGrantVersionInput}.
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #
    # @option params [String] :grant_arn
    #   <p>Amazon Resource Name (ARN) of the grant.</p>
    #
    # @option params [String] :grant_name
    #   <p>Grant name.</p>
    #
    # @option params [Array<String>] :allowed_operations
    #   <p>Allowed operations for the grant.</p>
    #
    # @option params [String] :status
    #   <p>Grant status.</p>
    #
    # @option params [String] :status_reason
    #   <p>Grant status reason.</p>
    #
    # @option params [String] :source_version
    #   <p>Current version of the grant.</p>
    #
    # @return [Types::CreateGrantVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_grant_version(
    #     client_token: 'ClientToken', # required
    #     grant_arn: 'GrantArn', # required
    #     grant_name: 'GrantName',
    #     allowed_operations: [
    #       'CreateGrant' # accepts ["CreateGrant", "CheckoutLicense", "CheckoutBorrowLicense", "CheckInLicense", "ExtendConsumptionLicense", "ListPurchasedLicenses", "CreateToken"]
    #     ],
    #     status: 'PENDING_WORKFLOW', # accepts ["PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"]
    #     status_reason: 'StatusReason',
    #     source_version: 'SourceVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateGrantVersionOutput
    #   resp.data.grant_arn #=> String
    #   resp.data.status #=> String, one of ["PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"]
    #   resp.data.version #=> String
    #
    def create_grant_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateGrantVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateGrantVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateGrantVersion
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException, Errors::ResourceLimitExceededException, Errors::ValidationException]),
        data_parser: Parsers::CreateGrantVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateGrantVersion,
        stubs: @stubs,
        params_class: Params::CreateGrantVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_grant_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a license.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateLicenseInput}.
    #
    # @option params [String] :license_name
    #   <p>License name.</p>
    #
    # @option params [String] :product_name
    #   <p>Product name.</p>
    #
    # @option params [String] :product_sku
    #   <p>Product SKU.</p>
    #
    # @option params [Issuer] :issuer
    #   <p>License issuer.</p>
    #
    # @option params [String] :home_region
    #   <p>Home Region for the license.</p>
    #
    # @option params [DatetimeRange] :validity
    #   <p>Date and time range during which the license is valid, in ISO8601-UTC format.</p>
    #
    # @option params [Array<Entitlement>] :entitlements
    #   <p>License entitlements.</p>
    #
    # @option params [String] :beneficiary
    #   <p>License beneficiary.</p>
    #
    # @option params [ConsumptionConfiguration] :consumption_configuration
    #   <p>Configuration for consumption of the license. Choose a provisional configuration for workloads
    #             running with continuous connectivity. Choose a borrow configuration for workloads with offline
    #             usage.</p>
    #
    # @option params [Array<Metadata>] :license_metadata
    #   <p>Information about the license.</p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #
    # @return [Types::CreateLicenseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_license(
    #     license_name: 'LicenseName', # required
    #     product_name: 'ProductName', # required
    #     product_sku: 'ProductSKU', # required
    #     issuer: {
    #       name: 'Name', # required
    #       sign_key: 'SignKey'
    #     }, # required
    #     home_region: 'HomeRegion', # required
    #     validity: {
    #       begin: 'Begin', # required
    #       end: 'End'
    #     }, # required
    #     entitlements: [
    #       {
    #         name: 'Name', # required
    #         value: 'Value',
    #         max_count: 1,
    #         overage: false,
    #         unit: 'Count', # required - accepts ["Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"]
    #         allow_check_in: false
    #       }
    #     ], # required
    #     beneficiary: 'Beneficiary', # required
    #     consumption_configuration: {
    #       renew_type: 'None', # accepts ["None", "Weekly", "Monthly"]
    #       provisional_configuration: {
    #         max_time_to_live_in_minutes: 1 # required
    #       },
    #       borrow_configuration: {
    #         allow_early_check_in: false, # required
    #         max_time_to_live_in_minutes: 1 # required
    #       }
    #     }, # required
    #     license_metadata: [
    #       {
    #         name: 'Name',
    #         value: 'Value'
    #       }
    #     ],
    #     client_token: 'ClientToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateLicenseOutput
    #   resp.data.license_arn #=> String
    #   resp.data.status #=> String, one of ["AVAILABLE", "PENDING_AVAILABLE", "DEACTIVATED", "SUSPENDED", "EXPIRED", "PENDING_DELETE", "DELETED"]
    #   resp.data.version #=> String
    #
    def create_license(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLicenseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLicenseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLicense
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::RedirectException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException, Errors::ValidationException]),
        data_parser: Parsers::CreateLicense
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLicense,
        stubs: @stubs,
        params_class: Params::CreateLicenseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_license
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a license configuration.</p>
    #          <p>A license configuration is an abstraction of a customer license agreement that can be
    #          consumed and enforced by License Manager. Components include specifications for the license
    #          type (licensing by instance, socket, CPU, or vCPU), allowed tenancy (shared tenancy,
    #          Dedicated Instance, Dedicated Host, or all of these), license affinity  to host (how long a
    #          license must be associated with a host), and the number of licenses purchased and used.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateLicenseConfigurationInput}.
    #
    # @option params [String] :name
    #   <p>Name of the license configuration.</p>
    #
    # @option params [String] :description
    #   <p>Description of the license configuration.</p>
    #
    # @option params [String] :license_counting_type
    #   <p>Dimension used to track the license inventory.</p>
    #
    # @option params [Integer] :license_count
    #   <p>Number of licenses managed by the license configuration.</p>
    #
    # @option params [Boolean] :license_count_hard_limit
    #   <p>Indicates whether hard or soft license enforcement is used. Exceeding a hard limit
    #            blocks the launch of new instances.</p>
    #
    # @option params [Array<String>] :license_rules
    #   <p>License rules. The syntax is #name=value (for example, #allowedTenancy=EC2-DedicatedHost). The available rules
    #            vary by dimension, as follows.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Cores</code> dimension: <code>allowedTenancy</code> |
    #                  <code>licenseAffinityToHost</code> |
    #                  <code>maximumCores</code> | <code>minimumCores</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Instances</code> dimension: <code>allowedTenancy</code> |
    #                  <code>maximumCores</code> | <code>minimumCores</code> |
    #                  <code>maximumSockets</code> | <code>minimumSockets</code> |
    #                  <code>maximumVcpus</code> | <code>minimumVcpus</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Sockets</code> dimension: <code>allowedTenancy</code> |
    #                  <code>licenseAffinityToHost</code> |
    #                  <code>maximumSockets</code> | <code>minimumSockets</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>vCPUs</code> dimension: <code>allowedTenancy</code> |
    #                  <code>honorVcpuOptimization</code> |
    #                  <code>maximumVcpus</code> | <code>minimumVcpus</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The unit for <code>licenseAffinityToHost</code> is days and the range is 1 to 180. The possible
    #            values for <code>allowedTenancy</code> are <code>EC2-Default</code>, <code>EC2-DedicatedHost</code>, and
    #            <code>EC2-DedicatedInstance</code>. The possible values for <code>honorVcpuOptimization</code> are
    #            <code>True</code> and <code>False</code>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Tags to add to the license configuration.</p>
    #
    # @option params [Boolean] :disassociate_when_not_found
    #   <p>When true, disassociates a resource when software is uninstalled.</p>
    #
    # @option params [Array<ProductInformation>] :product_information_list
    #   <p>Product information.</p>
    #
    # @return [Types::CreateLicenseConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_license_configuration(
    #     name: 'Name', # required
    #     description: 'Description',
    #     license_counting_type: 'vCPU', # required - accepts ["vCPU", "Instance", "Core", "Socket"]
    #     license_count: 1,
    #     license_count_hard_limit: false,
    #     license_rules: [
    #       'member'
    #     ],
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ],
    #     disassociate_when_not_found: false,
    #     product_information_list: [
    #       {
    #         resource_type: 'ResourceType', # required
    #         product_information_filter_list: [
    #           {
    #             product_information_filter_name: 'ProductInformationFilterName', # required
    #             product_information_filter_comparator: 'ProductInformationFilterComparator' # required
    #           }
    #         ] # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateLicenseConfigurationOutput
    #   resp.data.license_configuration_arn #=> String
    #
    def create_license_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLicenseConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLicenseConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLicenseConfiguration
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException, Errors::ResourceLimitExceededException]),
        data_parser: Parsers::CreateLicenseConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLicenseConfiguration,
        stubs: @stubs,
        params_class: Params::CreateLicenseConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_license_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new license conversion task.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateLicenseConversionTaskForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>Amazon Resource Name (ARN) of the resource you are converting the license type for.</p>
    #
    # @option params [LicenseConversionContext] :source_license_context
    #   <p>Information that identifies the license type you are converting from.
    #            For the structure of the source license, see <a href="https://docs.aws.amazon.com/license-manager/latest/userguide/conversion-procedures.html#conversion-cli">Convert a license type using the AWS CLI</a> in the <i>License Manager User Guide</i>.</p>
    #
    # @option params [LicenseConversionContext] :destination_license_context
    #   <p>Information that identifies the license type you are converting to. For the structure of the destination license, see <a href="https://docs.aws.amazon.com/license-manager/latest/userguide/conversion-procedures.html#conversion-cli">Convert a license type using the AWS CLI</a> in the <i>License Manager User Guide</i>.</p>
    #
    # @return [Types::CreateLicenseConversionTaskForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_license_conversion_task_for_resource(
    #     resource_arn: 'ResourceArn', # required
    #     source_license_context: {
    #       usage_operation: 'UsageOperation'
    #     }, # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateLicenseConversionTaskForResourceOutput
    #   resp.data.license_conversion_task_id #=> String
    #
    def create_license_conversion_task_for_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLicenseConversionTaskForResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLicenseConversionTaskForResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLicenseConversionTaskForResource
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException, Errors::ValidationException]),
        data_parser: Parsers::CreateLicenseConversionTaskForResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLicenseConversionTaskForResource,
        stubs: @stubs,
        params_class: Params::CreateLicenseConversionTaskForResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_license_conversion_task_for_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a report generator.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateLicenseManagerReportGeneratorInput}.
    #
    # @option params [String] :report_generator_name
    #   <p>Name of the report generator.</p>
    #
    # @option params [Array<String>] :type
    #   <p>Type of reports to generate. The following report types an be generated:</p>
    #            <ul>
    #               <li>
    #                  <p>License configuration report - Reports the number and details of consumed licenses for a license configuration.</p>
    #               </li>
    #               <li>
    #                  <p>Resource report - Reports the tracked licenses and resource consumption for a license configuration.</p>
    #               </li>
    #            </ul>
    #
    # @option params [ReportContext] :report_context
    #   <p>Defines the type of license configuration the report generator tracks.</p>
    #
    # @option params [ReportFrequency] :report_frequency
    #   <p>Frequency by which reports are generated.  Reports can be generated daily, monthly, or weekly.</p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #
    # @option params [String] :description
    #   <p>Description of the report generator.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Tags to add to the report generator.</p>
    #
    # @return [Types::CreateLicenseManagerReportGeneratorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_license_manager_report_generator(
    #     report_generator_name: 'ReportGeneratorName', # required
    #     type: [
    #       'LicenseConfigurationSummaryReport' # accepts ["LicenseConfigurationSummaryReport", "LicenseConfigurationUsageReport"]
    #     ], # required
    #     report_context: {
    #       license_configuration_arns: [
    #         'member'
    #       ] # required
    #     }, # required
    #     report_frequency: {
    #       value: 1,
    #       period: 'DAY' # accepts ["DAY", "WEEK", "MONTH"]
    #     }, # required
    #     client_token: 'ClientToken', # required
    #     description: 'Description',
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
    #   resp.data #=> Types::CreateLicenseManagerReportGeneratorOutput
    #   resp.data.license_manager_report_generator_arn #=> String
    #
    def create_license_manager_report_generator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLicenseManagerReportGeneratorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLicenseManagerReportGeneratorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLicenseManagerReportGenerator
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException, Errors::ResourceLimitExceededException, Errors::ValidationException]),
        data_parser: Parsers::CreateLicenseManagerReportGenerator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLicenseManagerReportGenerator,
        stubs: @stubs,
        params_class: Params::CreateLicenseManagerReportGeneratorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_license_manager_report_generator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new version of the specified license.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateLicenseVersionInput}.
    #
    # @option params [String] :license_arn
    #   <p>Amazon Resource Name (ARN) of the license.</p>
    #
    # @option params [String] :license_name
    #   <p>License name.</p>
    #
    # @option params [String] :product_name
    #   <p>Product name.</p>
    #
    # @option params [Issuer] :issuer
    #   <p>License issuer.</p>
    #
    # @option params [String] :home_region
    #   <p>Home Region of the license.</p>
    #
    # @option params [DatetimeRange] :validity
    #   <p>Date and time range during which the license is valid, in ISO8601-UTC format.</p>
    #
    # @option params [Array<Metadata>] :license_metadata
    #   <p>Information about the license.</p>
    #
    # @option params [Array<Entitlement>] :entitlements
    #   <p>License entitlements.</p>
    #
    # @option params [ConsumptionConfiguration] :consumption_configuration
    #   <p>Configuration for consumption of the license. Choose a provisional configuration for workloads
    #            running with continuous connectivity. Choose a borrow configuration for workloads with offline
    #            usage.</p>
    #
    # @option params [String] :status
    #   <p>License status.</p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #
    # @option params [String] :source_version
    #   <p>Current version of the license.</p>
    #
    # @return [Types::CreateLicenseVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_license_version(
    #     license_arn: 'LicenseArn', # required
    #     license_name: 'LicenseName', # required
    #     product_name: 'ProductName', # required
    #     issuer: {
    #       name: 'Name', # required
    #       sign_key: 'SignKey'
    #     }, # required
    #     home_region: 'HomeRegion', # required
    #     validity: {
    #       begin: 'Begin', # required
    #       end: 'End'
    #     }, # required
    #     license_metadata: [
    #       {
    #         name: 'Name',
    #         value: 'Value'
    #       }
    #     ],
    #     entitlements: [
    #       {
    #         name: 'Name', # required
    #         value: 'Value',
    #         max_count: 1,
    #         overage: false,
    #         unit: 'Count', # required - accepts ["Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"]
    #         allow_check_in: false
    #       }
    #     ], # required
    #     consumption_configuration: {
    #       renew_type: 'None', # accepts ["None", "Weekly", "Monthly"]
    #       provisional_configuration: {
    #         max_time_to_live_in_minutes: 1 # required
    #       },
    #       borrow_configuration: {
    #         allow_early_check_in: false, # required
    #         max_time_to_live_in_minutes: 1 # required
    #       }
    #     }, # required
    #     status: 'AVAILABLE', # required - accepts ["AVAILABLE", "PENDING_AVAILABLE", "DEACTIVATED", "SUSPENDED", "EXPIRED", "PENDING_DELETE", "DELETED"]
    #     client_token: 'ClientToken', # required
    #     source_version: 'SourceVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateLicenseVersionOutput
    #   resp.data.license_arn #=> String
    #   resp.data.version #=> String
    #   resp.data.status #=> String, one of ["AVAILABLE", "PENDING_AVAILABLE", "DEACTIVATED", "SUSPENDED", "EXPIRED", "PENDING_DELETE", "DELETED"]
    #
    def create_license_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLicenseVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLicenseVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLicenseVersion
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::RateLimitExceededException, Errors::RedirectException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException]),
        data_parser: Parsers::CreateLicenseVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLicenseVersion,
        stubs: @stubs,
        params_class: Params::CreateLicenseVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_license_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a long-lived token.</p>
    #          <p>A refresh token is a JWT token used to get an access token. With an access token,
    #           you can call AssumeRoleWithWebIdentity to get role credentials that you can use to
    #           call License Manager to manage the specified license.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateTokenInput}.
    #
    # @option params [String] :license_arn
    #   <p>Amazon Resource Name (ARN) of the license. The ARN is mapped to the aud claim of the
    #             JWT token.</p>
    #
    # @option params [Array<String>] :role_arns
    #   <p>Amazon Resource Name (ARN) of the IAM roles to embed in the token.
    #            License Manager does not check whether the roles are in use.</p>
    #
    # @option params [Integer] :expiration_in_days
    #   <p>Token expiration, in days, counted from token creation. The default is 365 days.</p>
    #
    # @option params [Array<String>] :token_properties
    #   <p>Data specified by the caller to be included in the JWT token. The data is mapped
    #             to the amr claim of the JWT token.</p>
    #
    # @option params [String] :client_token
    #   <p>Idempotency token, valid for 10 minutes.</p>
    #
    # @return [Types::CreateTokenOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_token(
    #     license_arn: 'LicenseArn', # required
    #     role_arns: [
    #       'member'
    #     ],
    #     expiration_in_days: 1,
    #     token_properties: [
    #       'member'
    #     ],
    #     client_token: 'ClientToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateTokenOutput
    #   resp.data.token_id #=> String
    #   resp.data.token_type #=> String, one of ["REFRESH_TOKEN"]
    #   resp.data.token #=> String
    #
    def create_token(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTokenInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTokenInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateToken
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::RateLimitExceededException, Errors::RedirectException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException, Errors::ResourceLimitExceededException, Errors::ValidationException]),
        data_parser: Parsers::CreateToken
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateToken,
        stubs: @stubs,
        params_class: Params::CreateTokenOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_token
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified grant.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteGrantInput}.
    #
    # @option params [String] :grant_arn
    #   <p>Amazon Resource Name (ARN) of the grant.</p>
    #
    # @option params [String] :status_reason
    #   <p>The Status reason for the delete request.</p>
    #
    # @option params [String] :version
    #   <p>Current version of the grant.</p>
    #
    # @return [Types::DeleteGrantOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_grant(
    #     grant_arn: 'GrantArn', # required
    #     status_reason: 'StatusReason',
    #     version: 'Version' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteGrantOutput
    #   resp.data.grant_arn #=> String
    #   resp.data.status #=> String, one of ["PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"]
    #   resp.data.version #=> String
    #
    def delete_grant(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteGrantInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteGrantInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteGrant
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException, Errors::ResourceLimitExceededException, Errors::ValidationException]),
        data_parser: Parsers::DeleteGrant
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteGrant,
        stubs: @stubs,
        params_class: Params::DeleteGrantOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_grant
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified license.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLicenseInput}.
    #
    # @option params [String] :license_arn
    #   <p>Amazon Resource Name (ARN) of the license.</p>
    #
    # @option params [String] :source_version
    #   <p>Current version of the license.</p>
    #
    # @return [Types::DeleteLicenseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_license(
    #     license_arn: 'LicenseArn', # required
    #     source_version: 'SourceVersion' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLicenseOutput
    #   resp.data.status #=> String, one of ["PENDING_DELETE", "DELETED"]
    #   resp.data.deletion_date #=> String
    #
    def delete_license(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLicenseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLicenseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLicense
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::RedirectException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ValidationException]),
        data_parser: Parsers::DeleteLicense
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLicense,
        stubs: @stubs,
        params_class: Params::DeleteLicenseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_license
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified license configuration.</p>
    #          <p>You cannot delete a license configuration that is in use.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLicenseConfigurationInput}.
    #
    # @option params [String] :license_configuration_arn
    #   <p>ID of the license configuration.</p>
    #
    # @return [Types::DeleteLicenseConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_license_configuration(
    #     license_configuration_arn: 'LicenseConfigurationArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLicenseConfigurationOutput
    #
    def delete_license_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLicenseConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLicenseConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLicenseConfiguration
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteLicenseConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLicenseConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteLicenseConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_license_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified report generator.</p>
    #          <p>This action deletes the report generator, which stops it from generating future reports.
    #          The action cannot be reversed. It has no effect on the previous reports from this generator.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLicenseManagerReportGeneratorInput}.
    #
    # @option params [String] :license_manager_report_generator_arn
    #   <p>Amazon Resource Name (ARN) of the report generator to be deleted.</p>
    #
    # @return [Types::DeleteLicenseManagerReportGeneratorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_license_manager_report_generator(
    #     license_manager_report_generator_arn: 'LicenseManagerReportGeneratorArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLicenseManagerReportGeneratorOutput
    #
    def delete_license_manager_report_generator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLicenseManagerReportGeneratorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLicenseManagerReportGeneratorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLicenseManagerReportGenerator
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException, Errors::ResourceLimitExceededException, Errors::ValidationException]),
        data_parser: Parsers::DeleteLicenseManagerReportGenerator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLicenseManagerReportGenerator,
        stubs: @stubs,
        params_class: Params::DeleteLicenseManagerReportGeneratorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_license_manager_report_generator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified token. Must be called in the license home Region.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTokenInput}.
    #
    # @option params [String] :token_id
    #   <p>Token ID.</p>
    #
    # @return [Types::DeleteTokenOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_token(
    #     token_id: 'TokenId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTokenOutput
    #
    def delete_token(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTokenInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTokenInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteToken
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::RateLimitExceededException, Errors::RedirectException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException, Errors::ValidationException]),
        data_parser: Parsers::DeleteToken
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteToken,
        stubs: @stubs,
        params_class: Params::DeleteTokenOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_token
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Extends the expiration date for license consumption.</p>
    #
    # @param [Hash] params
    #   See {Types::ExtendLicenseConsumptionInput}.
    #
    # @option params [String] :license_consumption_token
    #   <p>License consumption token.</p>
    #
    # @option params [Boolean] :dry_run
    #   <p>Checks whether you have the required permissions for the action, without actually making the request. Provides an error response if you do not have the required permissions.</p>
    #
    # @return [Types::ExtendLicenseConsumptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.extend_license_consumption(
    #     license_consumption_token: 'LicenseConsumptionToken', # required
    #     dry_run: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExtendLicenseConsumptionOutput
    #   resp.data.license_consumption_token #=> String
    #   resp.data.expiration #=> String
    #
    def extend_license_consumption(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExtendLicenseConsumptionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExtendLicenseConsumptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExtendLicenseConsumption
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException, Errors::ValidationException]),
        data_parser: Parsers::ExtendLicenseConsumption
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExtendLicenseConsumption,
        stubs: @stubs,
        params_class: Params::ExtendLicenseConsumptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :extend_license_consumption
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a temporary access token to use with AssumeRoleWithWebIdentity. Access tokens
    #           are valid for one hour.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAccessTokenInput}.
    #
    # @option params [String] :token
    #   <p>Refresh token, encoded as a JWT token.</p>
    #
    # @option params [Array<String>] :token_properties
    #   <p>Token properties to validate against those present in the JWT token.</p>
    #
    # @return [Types::GetAccessTokenOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_access_token(
    #     token: 'Token', # required
    #     token_properties: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAccessTokenOutput
    #   resp.data.access_token #=> String
    #
    def get_access_token(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAccessTokenInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAccessTokenInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAccessToken
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException, Errors::ValidationException]),
        data_parser: Parsers::GetAccessToken
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAccessToken,
        stubs: @stubs,
        params_class: Params::GetAccessTokenOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_access_token
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets detailed information about the specified grant.</p>
    #
    # @param [Hash] params
    #   See {Types::GetGrantInput}.
    #
    # @option params [String] :grant_arn
    #   <p>Amazon Resource Name (ARN) of the grant.</p>
    #
    # @option params [String] :version
    #   <p>Grant version.</p>
    #
    # @return [Types::GetGrantOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_grant(
    #     grant_arn: 'GrantArn', # required
    #     version: 'Version'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetGrantOutput
    #   resp.data.grant #=> Types::Grant
    #   resp.data.grant.grant_arn #=> String
    #   resp.data.grant.grant_name #=> String
    #   resp.data.grant.parent_arn #=> String
    #   resp.data.grant.license_arn #=> String
    #   resp.data.grant.grantee_principal_arn #=> String
    #   resp.data.grant.home_region #=> String
    #   resp.data.grant.grant_status #=> String, one of ["PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"]
    #   resp.data.grant.status_reason #=> String
    #   resp.data.grant.version #=> String
    #   resp.data.grant.granted_operations #=> Array<String>
    #   resp.data.grant.granted_operations[0] #=> String, one of ["CreateGrant", "CheckoutLicense", "CheckoutBorrowLicense", "CheckInLicense", "ExtendConsumptionLicense", "ListPurchasedLicenses", "CreateToken"]
    #
    def get_grant(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetGrantInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetGrantInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetGrant
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException, Errors::ResourceLimitExceededException, Errors::ValidationException]),
        data_parser: Parsers::GetGrant
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetGrant,
        stubs: @stubs,
        params_class: Params::GetGrantOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_grant
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets detailed information about the specified license.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLicenseInput}.
    #
    # @option params [String] :license_arn
    #   <p>Amazon Resource Name (ARN) of the license.</p>
    #
    # @option params [String] :version
    #   <p>License version.</p>
    #
    # @return [Types::GetLicenseOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_license(
    #     license_arn: 'LicenseArn', # required
    #     version: 'Version'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLicenseOutput
    #   resp.data.license #=> Types::License
    #   resp.data.license.license_arn #=> String
    #   resp.data.license.license_name #=> String
    #   resp.data.license.product_name #=> String
    #   resp.data.license.product_sku #=> String
    #   resp.data.license.issuer #=> Types::IssuerDetails
    #   resp.data.license.issuer.name #=> String
    #   resp.data.license.issuer.sign_key #=> String
    #   resp.data.license.issuer.key_fingerprint #=> String
    #   resp.data.license.home_region #=> String
    #   resp.data.license.status #=> String, one of ["AVAILABLE", "PENDING_AVAILABLE", "DEACTIVATED", "SUSPENDED", "EXPIRED", "PENDING_DELETE", "DELETED"]
    #   resp.data.license.validity #=> Types::DatetimeRange
    #   resp.data.license.validity.begin #=> String
    #   resp.data.license.validity.end #=> String
    #   resp.data.license.beneficiary #=> String
    #   resp.data.license.entitlements #=> Array<Entitlement>
    #   resp.data.license.entitlements[0] #=> Types::Entitlement
    #   resp.data.license.entitlements[0].name #=> String
    #   resp.data.license.entitlements[0].value #=> String
    #   resp.data.license.entitlements[0].max_count #=> Integer
    #   resp.data.license.entitlements[0].overage #=> Boolean
    #   resp.data.license.entitlements[0].unit #=> String, one of ["Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"]
    #   resp.data.license.entitlements[0].allow_check_in #=> Boolean
    #   resp.data.license.consumption_configuration #=> Types::ConsumptionConfiguration
    #   resp.data.license.consumption_configuration.renew_type #=> String, one of ["None", "Weekly", "Monthly"]
    #   resp.data.license.consumption_configuration.provisional_configuration #=> Types::ProvisionalConfiguration
    #   resp.data.license.consumption_configuration.provisional_configuration.max_time_to_live_in_minutes #=> Integer
    #   resp.data.license.consumption_configuration.borrow_configuration #=> Types::BorrowConfiguration
    #   resp.data.license.consumption_configuration.borrow_configuration.allow_early_check_in #=> Boolean
    #   resp.data.license.consumption_configuration.borrow_configuration.max_time_to_live_in_minutes #=> Integer
    #   resp.data.license.license_metadata #=> Array<Metadata>
    #   resp.data.license.license_metadata[0] #=> Types::Metadata
    #   resp.data.license.license_metadata[0].name #=> String
    #   resp.data.license.license_metadata[0].value #=> String
    #   resp.data.license.create_time #=> String
    #   resp.data.license.version #=> String
    #
    def get_license(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLicenseInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLicenseInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLicense
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException, Errors::ValidationException]),
        data_parser: Parsers::GetLicense
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLicense,
        stubs: @stubs,
        params_class: Params::GetLicenseOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_license
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets detailed information about the specified license configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLicenseConfigurationInput}.
    #
    # @option params [String] :license_configuration_arn
    #   <p>Amazon Resource Name (ARN) of the license configuration.</p>
    #
    # @return [Types::GetLicenseConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_license_configuration(
    #     license_configuration_arn: 'LicenseConfigurationArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLicenseConfigurationOutput
    #   resp.data.license_configuration_id #=> String
    #   resp.data.license_configuration_arn #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.license_counting_type #=> String, one of ["vCPU", "Instance", "Core", "Socket"]
    #   resp.data.license_rules #=> Array<String>
    #   resp.data.license_rules[0] #=> String
    #   resp.data.license_count #=> Integer
    #   resp.data.license_count_hard_limit #=> Boolean
    #   resp.data.consumed_licenses #=> Integer
    #   resp.data.status #=> String
    #   resp.data.owner_account_id #=> String
    #   resp.data.consumed_license_summary_list #=> Array<ConsumedLicenseSummary>
    #   resp.data.consumed_license_summary_list[0] #=> Types::ConsumedLicenseSummary
    #   resp.data.consumed_license_summary_list[0].resource_type #=> String, one of ["EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"]
    #   resp.data.consumed_license_summary_list[0].consumed_licenses #=> Integer
    #   resp.data.managed_resource_summary_list #=> Array<ManagedResourceSummary>
    #   resp.data.managed_resource_summary_list[0] #=> Types::ManagedResourceSummary
    #   resp.data.managed_resource_summary_list[0].resource_type #=> String, one of ["EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"]
    #   resp.data.managed_resource_summary_list[0].association_count #=> Integer
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.product_information_list #=> Array<ProductInformation>
    #   resp.data.product_information_list[0] #=> Types::ProductInformation
    #   resp.data.product_information_list[0].resource_type #=> String
    #   resp.data.product_information_list[0].product_information_filter_list #=> Array<ProductInformationFilter>
    #   resp.data.product_information_list[0].product_information_filter_list[0] #=> Types::ProductInformationFilter
    #   resp.data.product_information_list[0].product_information_filter_list[0].product_information_filter_name #=> String
    #   resp.data.product_information_list[0].product_information_filter_list[0].product_information_filter_value #=> Array<String>
    #   resp.data.product_information_list[0].product_information_filter_list[0].product_information_filter_comparator #=> String
    #   resp.data.automated_discovery_information #=> Types::AutomatedDiscoveryInformation
    #   resp.data.automated_discovery_information.last_run_time #=> Time
    #   resp.data.disassociate_when_not_found #=> Boolean
    #
    def get_license_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLicenseConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLicenseConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLicenseConfiguration
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetLicenseConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLicenseConfiguration,
        stubs: @stubs,
        params_class: Params::GetLicenseConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_license_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the specified license type conversion task.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLicenseConversionTaskInput}.
    #
    # @option params [String] :license_conversion_task_id
    #   <p>ID of the license type conversion task to retrieve information on.</p>
    #
    # @return [Types::GetLicenseConversionTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_license_conversion_task(
    #     license_conversion_task_id: 'LicenseConversionTaskId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLicenseConversionTaskOutput
    #   resp.data.license_conversion_task_id #=> String
    #   resp.data.resource_arn #=> String
    #   resp.data.source_license_context #=> Types::LicenseConversionContext
    #   resp.data.source_license_context.usage_operation #=> String
    #   resp.data.destination_license_context #=> Types::LicenseConversionContext
    #   resp.data.status_message #=> String
    #   resp.data.status #=> String, one of ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #   resp.data.start_time #=> Time
    #   resp.data.license_conversion_time #=> Time
    #   resp.data.end_time #=> Time
    #
    def get_license_conversion_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLicenseConversionTaskInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLicenseConversionTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLicenseConversionTask
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetLicenseConversionTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLicenseConversionTask,
        stubs: @stubs,
        params_class: Params::GetLicenseConversionTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_license_conversion_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the specified report generator.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLicenseManagerReportGeneratorInput}.
    #
    # @option params [String] :license_manager_report_generator_arn
    #   <p>Amazon Resource Name (ARN) of the report generator.</p>
    #
    # @return [Types::GetLicenseManagerReportGeneratorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_license_manager_report_generator(
    #     license_manager_report_generator_arn: 'LicenseManagerReportGeneratorArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLicenseManagerReportGeneratorOutput
    #   resp.data.report_generator #=> Types::ReportGenerator
    #   resp.data.report_generator.report_generator_name #=> String
    #   resp.data.report_generator.report_type #=> Array<String>
    #   resp.data.report_generator.report_type[0] #=> String, one of ["LicenseConfigurationSummaryReport", "LicenseConfigurationUsageReport"]
    #   resp.data.report_generator.report_context #=> Types::ReportContext
    #   resp.data.report_generator.report_context.license_configuration_arns #=> Array<String>
    #   resp.data.report_generator.report_context.license_configuration_arns[0] #=> String
    #   resp.data.report_generator.report_frequency #=> Types::ReportFrequency
    #   resp.data.report_generator.report_frequency.value #=> Integer
    #   resp.data.report_generator.report_frequency.period #=> String, one of ["DAY", "WEEK", "MONTH"]
    #   resp.data.report_generator.license_manager_report_generator_arn #=> String
    #   resp.data.report_generator.last_run_status #=> String
    #   resp.data.report_generator.last_run_failure_reason #=> String
    #   resp.data.report_generator.last_report_generation_time #=> String
    #   resp.data.report_generator.report_creator_account #=> String
    #   resp.data.report_generator.description #=> String
    #   resp.data.report_generator.s3_location #=> Types::S3Location
    #   resp.data.report_generator.s3_location.bucket #=> String
    #   resp.data.report_generator.s3_location.key_prefix #=> String
    #   resp.data.report_generator.create_time #=> String
    #   resp.data.report_generator.tags #=> Array<Tag>
    #   resp.data.report_generator.tags[0] #=> Types::Tag
    #   resp.data.report_generator.tags[0].key #=> String
    #   resp.data.report_generator.tags[0].value #=> String
    #
    def get_license_manager_report_generator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLicenseManagerReportGeneratorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLicenseManagerReportGeneratorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLicenseManagerReportGenerator
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException, Errors::ResourceLimitExceededException, Errors::ValidationException]),
        data_parser: Parsers::GetLicenseManagerReportGenerator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLicenseManagerReportGenerator,
        stubs: @stubs,
        params_class: Params::GetLicenseManagerReportGeneratorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_license_manager_report_generator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets detailed information about the usage of the specified license.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLicenseUsageInput}.
    #
    # @option params [String] :license_arn
    #   <p>Amazon Resource Name (ARN) of the license.</p>
    #
    # @return [Types::GetLicenseUsageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_license_usage(
    #     license_arn: 'LicenseArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLicenseUsageOutput
    #   resp.data.license_usage #=> Types::LicenseUsage
    #   resp.data.license_usage.entitlement_usages #=> Array<EntitlementUsage>
    #   resp.data.license_usage.entitlement_usages[0] #=> Types::EntitlementUsage
    #   resp.data.license_usage.entitlement_usages[0].name #=> String
    #   resp.data.license_usage.entitlement_usages[0].consumed_value #=> String
    #   resp.data.license_usage.entitlement_usages[0].max_count #=> String
    #   resp.data.license_usage.entitlement_usages[0].unit #=> String, one of ["Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"]
    #
    def get_license_usage(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLicenseUsageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLicenseUsageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLicenseUsage
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException, Errors::ValidationException]),
        data_parser: Parsers::GetLicenseUsage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLicenseUsage,
        stubs: @stubs,
        params_class: Params::GetLicenseUsageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_license_usage
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the License Manager settings for the current Region.</p>
    #
    # @param [Hash] params
    #   See {Types::GetServiceSettingsInput}.
    #
    # @return [Types::GetServiceSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_settings()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetServiceSettingsOutput
    #   resp.data.s3_bucket_arn #=> String
    #   resp.data.sns_topic_arn #=> String
    #   resp.data.organization_configuration #=> Types::OrganizationConfiguration
    #   resp.data.organization_configuration.enable_integration #=> Boolean
    #   resp.data.enable_cross_accounts_discovery #=> Boolean
    #   resp.data.license_manager_resource_share_arn #=> String
    #
    def get_service_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetServiceSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetServiceSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetServiceSettings
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetServiceSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetServiceSettings,
        stubs: @stubs,
        params_class: Params::GetServiceSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_service_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the resource associations for the specified license configuration.</p>
    #          <p>Resource associations need not consume licenses from a license configuration.
    #          For example, an AMI or a stopped instance might not consume a license (depending on
    #          the license rules).</p>
    #
    # @param [Hash] params
    #   See {Types::ListAssociationsForLicenseConfigurationInput}.
    #
    # @option params [String] :license_configuration_arn
    #   <p>Amazon Resource Name (ARN) of a license configuration.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single call.</p>
    #
    # @option params [String] :next_token
    #   <p>Token for the next set of results.</p>
    #
    # @return [Types::ListAssociationsForLicenseConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_associations_for_license_configuration(
    #     license_configuration_arn: 'LicenseConfigurationArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAssociationsForLicenseConfigurationOutput
    #   resp.data.license_configuration_associations #=> Array<LicenseConfigurationAssociation>
    #   resp.data.license_configuration_associations[0] #=> Types::LicenseConfigurationAssociation
    #   resp.data.license_configuration_associations[0].resource_arn #=> String
    #   resp.data.license_configuration_associations[0].resource_type #=> String, one of ["EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"]
    #   resp.data.license_configuration_associations[0].resource_owner_id #=> String
    #   resp.data.license_configuration_associations[0].association_time #=> Time
    #   resp.data.license_configuration_associations[0].ami_association_scope #=> String
    #   resp.data.next_token #=> String
    #
    def list_associations_for_license_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAssociationsForLicenseConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAssociationsForLicenseConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAssociationsForLicenseConfiguration
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FilterLimitExceededException, Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListAssociationsForLicenseConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAssociationsForLicenseConfiguration,
        stubs: @stubs,
        params_class: Params::ListAssociationsForLicenseConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_associations_for_license_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the grants distributed for the specified license.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDistributedGrantsInput}.
    #
    # @option params [Array<String>] :grant_arns
    #   <p>Amazon Resource Names (ARNs) of the grants.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>Filters to scope the results. The following filters are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LicenseArn</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GrantStatus</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GranteePrincipalARN</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ProductSKU</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LicenseIssuerName</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :next_token
    #   <p>Token for the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single call.</p>
    #
    # @return [Types::ListDistributedGrantsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_distributed_grants(
    #     grant_arns: [
    #       'member'
    #     ],
    #     filters: [
    #       {
    #         name: 'Name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDistributedGrantsOutput
    #   resp.data.grants #=> Array<Grant>
    #   resp.data.grants[0] #=> Types::Grant
    #   resp.data.grants[0].grant_arn #=> String
    #   resp.data.grants[0].grant_name #=> String
    #   resp.data.grants[0].parent_arn #=> String
    #   resp.data.grants[0].license_arn #=> String
    #   resp.data.grants[0].grantee_principal_arn #=> String
    #   resp.data.grants[0].home_region #=> String
    #   resp.data.grants[0].grant_status #=> String, one of ["PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"]
    #   resp.data.grants[0].status_reason #=> String
    #   resp.data.grants[0].version #=> String
    #   resp.data.grants[0].granted_operations #=> Array<String>
    #   resp.data.grants[0].granted_operations[0] #=> String, one of ["CreateGrant", "CheckoutLicense", "CheckoutBorrowLicense", "CheckInLicense", "ExtendConsumptionLicense", "ListPurchasedLicenses", "CreateToken"]
    #   resp.data.next_token #=> String
    #
    def list_distributed_grants(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDistributedGrantsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDistributedGrantsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDistributedGrants
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException, Errors::ResourceLimitExceededException, Errors::ValidationException]),
        data_parser: Parsers::ListDistributedGrants
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDistributedGrants,
        stubs: @stubs,
        params_class: Params::ListDistributedGrantsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_distributed_grants
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the license configuration operations that failed.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFailuresForLicenseConfigurationOperationsInput}.
    #
    # @option params [String] :license_configuration_arn
    #   <p>Amazon Resource Name of the license configuration.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single call.</p>
    #
    # @option params [String] :next_token
    #   <p>Token for the next set of results.</p>
    #
    # @return [Types::ListFailuresForLicenseConfigurationOperationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_failures_for_license_configuration_operations(
    #     license_configuration_arn: 'LicenseConfigurationArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFailuresForLicenseConfigurationOperationsOutput
    #   resp.data.license_operation_failure_list #=> Array<LicenseOperationFailure>
    #   resp.data.license_operation_failure_list[0] #=> Types::LicenseOperationFailure
    #   resp.data.license_operation_failure_list[0].resource_arn #=> String
    #   resp.data.license_operation_failure_list[0].resource_type #=> String, one of ["EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"]
    #   resp.data.license_operation_failure_list[0].error_message #=> String
    #   resp.data.license_operation_failure_list[0].failure_time #=> Time
    #   resp.data.license_operation_failure_list[0].operation_name #=> String
    #   resp.data.license_operation_failure_list[0].resource_owner_id #=> String
    #   resp.data.license_operation_failure_list[0].operation_requested_by #=> String
    #   resp.data.license_operation_failure_list[0].metadata_list #=> Array<Metadata>
    #   resp.data.license_operation_failure_list[0].metadata_list[0] #=> Types::Metadata
    #   resp.data.license_operation_failure_list[0].metadata_list[0].name #=> String
    #   resp.data.license_operation_failure_list[0].metadata_list[0].value #=> String
    #   resp.data.next_token #=> String
    #
    def list_failures_for_license_configuration_operations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFailuresForLicenseConfigurationOperationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFailuresForLicenseConfigurationOperationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFailuresForLicenseConfigurationOperations
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListFailuresForLicenseConfigurationOperations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFailuresForLicenseConfigurationOperations,
        stubs: @stubs,
        params_class: Params::ListFailuresForLicenseConfigurationOperationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_failures_for_license_configuration_operations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the license configurations for your account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListLicenseConfigurationsInput}.
    #
    # @option params [Array<String>] :license_configuration_arns
    #   <p>Amazon Resource Names (ARN) of the license configurations.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single call.</p>
    #
    # @option params [String] :next_token
    #   <p>Token for the next set of results.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>Filters to scope the results. The following filters and logical operators
    #           are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>licenseCountingType</code> - The dimension for which licenses are counted.
    #                  Possible values are <code>vCPU</code> | <code>Instance</code> | <code>Core</code> | <code>Socket</code>.
    #                  Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>enforceLicenseCount</code> - A Boolean value that indicates whether hard license enforcement is used.
    #                  Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>usagelimitExceeded</code> - A Boolean value that indicates whether the available licenses have been exceeded.
    #                  Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::ListLicenseConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_license_configurations(
    #     license_configuration_arns: [
    #       'member'
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     filters: [
    #       {
    #         name: 'Name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListLicenseConfigurationsOutput
    #   resp.data.license_configurations #=> Array<LicenseConfiguration>
    #   resp.data.license_configurations[0] #=> Types::LicenseConfiguration
    #   resp.data.license_configurations[0].license_configuration_id #=> String
    #   resp.data.license_configurations[0].license_configuration_arn #=> String
    #   resp.data.license_configurations[0].name #=> String
    #   resp.data.license_configurations[0].description #=> String
    #   resp.data.license_configurations[0].license_counting_type #=> String, one of ["vCPU", "Instance", "Core", "Socket"]
    #   resp.data.license_configurations[0].license_rules #=> Array<String>
    #   resp.data.license_configurations[0].license_rules[0] #=> String
    #   resp.data.license_configurations[0].license_count #=> Integer
    #   resp.data.license_configurations[0].license_count_hard_limit #=> Boolean
    #   resp.data.license_configurations[0].disassociate_when_not_found #=> Boolean
    #   resp.data.license_configurations[0].consumed_licenses #=> Integer
    #   resp.data.license_configurations[0].status #=> String
    #   resp.data.license_configurations[0].owner_account_id #=> String
    #   resp.data.license_configurations[0].consumed_license_summary_list #=> Array<ConsumedLicenseSummary>
    #   resp.data.license_configurations[0].consumed_license_summary_list[0] #=> Types::ConsumedLicenseSummary
    #   resp.data.license_configurations[0].consumed_license_summary_list[0].resource_type #=> String, one of ["EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"]
    #   resp.data.license_configurations[0].consumed_license_summary_list[0].consumed_licenses #=> Integer
    #   resp.data.license_configurations[0].managed_resource_summary_list #=> Array<ManagedResourceSummary>
    #   resp.data.license_configurations[0].managed_resource_summary_list[0] #=> Types::ManagedResourceSummary
    #   resp.data.license_configurations[0].managed_resource_summary_list[0].resource_type #=> String, one of ["EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"]
    #   resp.data.license_configurations[0].managed_resource_summary_list[0].association_count #=> Integer
    #   resp.data.license_configurations[0].product_information_list #=> Array<ProductInformation>
    #   resp.data.license_configurations[0].product_information_list[0] #=> Types::ProductInformation
    #   resp.data.license_configurations[0].product_information_list[0].resource_type #=> String
    #   resp.data.license_configurations[0].product_information_list[0].product_information_filter_list #=> Array<ProductInformationFilter>
    #   resp.data.license_configurations[0].product_information_list[0].product_information_filter_list[0] #=> Types::ProductInformationFilter
    #   resp.data.license_configurations[0].product_information_list[0].product_information_filter_list[0].product_information_filter_name #=> String
    #   resp.data.license_configurations[0].product_information_list[0].product_information_filter_list[0].product_information_filter_value #=> Array<String>
    #   resp.data.license_configurations[0].product_information_list[0].product_information_filter_list[0].product_information_filter_comparator #=> String
    #   resp.data.license_configurations[0].automated_discovery_information #=> Types::AutomatedDiscoveryInformation
    #   resp.data.license_configurations[0].automated_discovery_information.last_run_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_license_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLicenseConfigurationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLicenseConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLicenseConfigurations
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FilterLimitExceededException, Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListLicenseConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListLicenseConfigurations,
        stubs: @stubs,
        params_class: Params::ListLicenseConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_license_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the license type conversion tasks for your account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListLicenseConversionTasksInput}.
    #
    # @option params [String] :next_token
    #   <p>Token for the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single call.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>
    #            Filters to scope the results. Valid filters are <code>ResourceArns</code> and <code>Status</code>.
    #         </p>
    #
    # @return [Types::ListLicenseConversionTasksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_license_conversion_tasks(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: 'Name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListLicenseConversionTasksOutput
    #   resp.data.license_conversion_tasks #=> Array<LicenseConversionTask>
    #   resp.data.license_conversion_tasks[0] #=> Types::LicenseConversionTask
    #   resp.data.license_conversion_tasks[0].license_conversion_task_id #=> String
    #   resp.data.license_conversion_tasks[0].resource_arn #=> String
    #   resp.data.license_conversion_tasks[0].source_license_context #=> Types::LicenseConversionContext
    #   resp.data.license_conversion_tasks[0].source_license_context.usage_operation #=> String
    #   resp.data.license_conversion_tasks[0].destination_license_context #=> Types::LicenseConversionContext
    #   resp.data.license_conversion_tasks[0].status #=> String, one of ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #   resp.data.license_conversion_tasks[0].status_message #=> String
    #   resp.data.license_conversion_tasks[0].start_time #=> Time
    #   resp.data.license_conversion_tasks[0].license_conversion_time #=> Time
    #   resp.data.license_conversion_tasks[0].end_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_license_conversion_tasks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLicenseConversionTasksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLicenseConversionTasksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLicenseConversionTasks
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListLicenseConversionTasks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListLicenseConversionTasks,
        stubs: @stubs,
        params_class: Params::ListLicenseConversionTasksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_license_conversion_tasks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the report generators for your account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListLicenseManagerReportGeneratorsInput}.
    #
    # @option params [Array<Filter>] :filters
    #   <p>Filters to scope the results. The following filters are supported: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LicenseConfigurationArn</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :next_token
    #   <p>Token for the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single call.</p>
    #
    # @return [Types::ListLicenseManagerReportGeneratorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_license_manager_report_generators(
    #     filters: [
    #       {
    #         name: 'Name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListLicenseManagerReportGeneratorsOutput
    #   resp.data.report_generators #=> Array<ReportGenerator>
    #   resp.data.report_generators[0] #=> Types::ReportGenerator
    #   resp.data.report_generators[0].report_generator_name #=> String
    #   resp.data.report_generators[0].report_type #=> Array<String>
    #   resp.data.report_generators[0].report_type[0] #=> String, one of ["LicenseConfigurationSummaryReport", "LicenseConfigurationUsageReport"]
    #   resp.data.report_generators[0].report_context #=> Types::ReportContext
    #   resp.data.report_generators[0].report_context.license_configuration_arns #=> Array<String>
    #   resp.data.report_generators[0].report_context.license_configuration_arns[0] #=> String
    #   resp.data.report_generators[0].report_frequency #=> Types::ReportFrequency
    #   resp.data.report_generators[0].report_frequency.value #=> Integer
    #   resp.data.report_generators[0].report_frequency.period #=> String, one of ["DAY", "WEEK", "MONTH"]
    #   resp.data.report_generators[0].license_manager_report_generator_arn #=> String
    #   resp.data.report_generators[0].last_run_status #=> String
    #   resp.data.report_generators[0].last_run_failure_reason #=> String
    #   resp.data.report_generators[0].last_report_generation_time #=> String
    #   resp.data.report_generators[0].report_creator_account #=> String
    #   resp.data.report_generators[0].description #=> String
    #   resp.data.report_generators[0].s3_location #=> Types::S3Location
    #   resp.data.report_generators[0].s3_location.bucket #=> String
    #   resp.data.report_generators[0].s3_location.key_prefix #=> String
    #   resp.data.report_generators[0].create_time #=> String
    #   resp.data.report_generators[0].tags #=> Array<Tag>
    #   resp.data.report_generators[0].tags[0] #=> Types::Tag
    #   resp.data.report_generators[0].tags[0].key #=> String
    #   resp.data.report_generators[0].tags[0].value #=> String
    #   resp.data.next_token #=> String
    #
    def list_license_manager_report_generators(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLicenseManagerReportGeneratorsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLicenseManagerReportGeneratorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLicenseManagerReportGenerators
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException, Errors::ResourceLimitExceededException, Errors::ValidationException]),
        data_parser: Parsers::ListLicenseManagerReportGenerators
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListLicenseManagerReportGenerators,
        stubs: @stubs,
        params_class: Params::ListLicenseManagerReportGeneratorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_license_manager_report_generators
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the license configurations for the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListLicenseSpecificationsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>Amazon Resource Name (ARN) of a resource that has an associated license configuration.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single call.</p>
    #
    # @option params [String] :next_token
    #   <p>Token for the next set of results.</p>
    #
    # @return [Types::ListLicenseSpecificationsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_license_specifications_for_resource(
    #     resource_arn: 'ResourceArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListLicenseSpecificationsForResourceOutput
    #   resp.data.license_specifications #=> Array<LicenseSpecification>
    #   resp.data.license_specifications[0] #=> Types::LicenseSpecification
    #   resp.data.license_specifications[0].license_configuration_arn #=> String
    #   resp.data.license_specifications[0].ami_association_scope #=> String
    #   resp.data.next_token #=> String
    #
    def list_license_specifications_for_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLicenseSpecificationsForResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLicenseSpecificationsForResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLicenseSpecificationsForResource
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListLicenseSpecificationsForResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListLicenseSpecificationsForResource,
        stubs: @stubs,
        params_class: Params::ListLicenseSpecificationsForResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_license_specifications_for_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all versions of the specified license.</p>
    #
    # @param [Hash] params
    #   See {Types::ListLicenseVersionsInput}.
    #
    # @option params [String] :license_arn
    #   <p>Amazon Resource Name (ARN) of the license.</p>
    #
    # @option params [String] :next_token
    #   <p>Token for the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single call.</p>
    #
    # @return [Types::ListLicenseVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_license_versions(
    #     license_arn: 'LicenseArn', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListLicenseVersionsOutput
    #   resp.data.licenses #=> Array<License>
    #   resp.data.licenses[0] #=> Types::License
    #   resp.data.licenses[0].license_arn #=> String
    #   resp.data.licenses[0].license_name #=> String
    #   resp.data.licenses[0].product_name #=> String
    #   resp.data.licenses[0].product_sku #=> String
    #   resp.data.licenses[0].issuer #=> Types::IssuerDetails
    #   resp.data.licenses[0].issuer.name #=> String
    #   resp.data.licenses[0].issuer.sign_key #=> String
    #   resp.data.licenses[0].issuer.key_fingerprint #=> String
    #   resp.data.licenses[0].home_region #=> String
    #   resp.data.licenses[0].status #=> String, one of ["AVAILABLE", "PENDING_AVAILABLE", "DEACTIVATED", "SUSPENDED", "EXPIRED", "PENDING_DELETE", "DELETED"]
    #   resp.data.licenses[0].validity #=> Types::DatetimeRange
    #   resp.data.licenses[0].validity.begin #=> String
    #   resp.data.licenses[0].validity.end #=> String
    #   resp.data.licenses[0].beneficiary #=> String
    #   resp.data.licenses[0].entitlements #=> Array<Entitlement>
    #   resp.data.licenses[0].entitlements[0] #=> Types::Entitlement
    #   resp.data.licenses[0].entitlements[0].name #=> String
    #   resp.data.licenses[0].entitlements[0].value #=> String
    #   resp.data.licenses[0].entitlements[0].max_count #=> Integer
    #   resp.data.licenses[0].entitlements[0].overage #=> Boolean
    #   resp.data.licenses[0].entitlements[0].unit #=> String, one of ["Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"]
    #   resp.data.licenses[0].entitlements[0].allow_check_in #=> Boolean
    #   resp.data.licenses[0].consumption_configuration #=> Types::ConsumptionConfiguration
    #   resp.data.licenses[0].consumption_configuration.renew_type #=> String, one of ["None", "Weekly", "Monthly"]
    #   resp.data.licenses[0].consumption_configuration.provisional_configuration #=> Types::ProvisionalConfiguration
    #   resp.data.licenses[0].consumption_configuration.provisional_configuration.max_time_to_live_in_minutes #=> Integer
    #   resp.data.licenses[0].consumption_configuration.borrow_configuration #=> Types::BorrowConfiguration
    #   resp.data.licenses[0].consumption_configuration.borrow_configuration.allow_early_check_in #=> Boolean
    #   resp.data.licenses[0].consumption_configuration.borrow_configuration.max_time_to_live_in_minutes #=> Integer
    #   resp.data.licenses[0].license_metadata #=> Array<Metadata>
    #   resp.data.licenses[0].license_metadata[0] #=> Types::Metadata
    #   resp.data.licenses[0].license_metadata[0].name #=> String
    #   resp.data.licenses[0].license_metadata[0].value #=> String
    #   resp.data.licenses[0].create_time #=> String
    #   resp.data.licenses[0].version #=> String
    #   resp.data.next_token #=> String
    #
    def list_license_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLicenseVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLicenseVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLicenseVersions
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListLicenseVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListLicenseVersions,
        stubs: @stubs,
        params_class: Params::ListLicenseVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_license_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the licenses for your account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListLicensesInput}.
    #
    # @option params [Array<String>] :license_arns
    #   <p>Amazon Resource Names (ARNs) of the licenses.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>Filters to scope the results. The following filters are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Beneficiary</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ProductSKU</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Fingerprint</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :next_token
    #   <p>Token for the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single call.</p>
    #
    # @return [Types::ListLicensesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_licenses(
    #     license_arns: [
    #       'member'
    #     ],
    #     filters: [
    #       {
    #         name: 'Name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListLicensesOutput
    #   resp.data.licenses #=> Array<License>
    #   resp.data.licenses[0] #=> Types::License
    #   resp.data.licenses[0].license_arn #=> String
    #   resp.data.licenses[0].license_name #=> String
    #   resp.data.licenses[0].product_name #=> String
    #   resp.data.licenses[0].product_sku #=> String
    #   resp.data.licenses[0].issuer #=> Types::IssuerDetails
    #   resp.data.licenses[0].issuer.name #=> String
    #   resp.data.licenses[0].issuer.sign_key #=> String
    #   resp.data.licenses[0].issuer.key_fingerprint #=> String
    #   resp.data.licenses[0].home_region #=> String
    #   resp.data.licenses[0].status #=> String, one of ["AVAILABLE", "PENDING_AVAILABLE", "DEACTIVATED", "SUSPENDED", "EXPIRED", "PENDING_DELETE", "DELETED"]
    #   resp.data.licenses[0].validity #=> Types::DatetimeRange
    #   resp.data.licenses[0].validity.begin #=> String
    #   resp.data.licenses[0].validity.end #=> String
    #   resp.data.licenses[0].beneficiary #=> String
    #   resp.data.licenses[0].entitlements #=> Array<Entitlement>
    #   resp.data.licenses[0].entitlements[0] #=> Types::Entitlement
    #   resp.data.licenses[0].entitlements[0].name #=> String
    #   resp.data.licenses[0].entitlements[0].value #=> String
    #   resp.data.licenses[0].entitlements[0].max_count #=> Integer
    #   resp.data.licenses[0].entitlements[0].overage #=> Boolean
    #   resp.data.licenses[0].entitlements[0].unit #=> String, one of ["Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"]
    #   resp.data.licenses[0].entitlements[0].allow_check_in #=> Boolean
    #   resp.data.licenses[0].consumption_configuration #=> Types::ConsumptionConfiguration
    #   resp.data.licenses[0].consumption_configuration.renew_type #=> String, one of ["None", "Weekly", "Monthly"]
    #   resp.data.licenses[0].consumption_configuration.provisional_configuration #=> Types::ProvisionalConfiguration
    #   resp.data.licenses[0].consumption_configuration.provisional_configuration.max_time_to_live_in_minutes #=> Integer
    #   resp.data.licenses[0].consumption_configuration.borrow_configuration #=> Types::BorrowConfiguration
    #   resp.data.licenses[0].consumption_configuration.borrow_configuration.allow_early_check_in #=> Boolean
    #   resp.data.licenses[0].consumption_configuration.borrow_configuration.max_time_to_live_in_minutes #=> Integer
    #   resp.data.licenses[0].license_metadata #=> Array<Metadata>
    #   resp.data.licenses[0].license_metadata[0] #=> Types::Metadata
    #   resp.data.licenses[0].license_metadata[0].name #=> String
    #   resp.data.licenses[0].license_metadata[0].value #=> String
    #   resp.data.licenses[0].create_time #=> String
    #   resp.data.licenses[0].version #=> String
    #   resp.data.next_token #=> String
    #
    def list_licenses(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLicensesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLicensesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLicenses
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException, Errors::ValidationException]),
        data_parser: Parsers::ListLicenses
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListLicenses,
        stubs: @stubs,
        params_class: Params::ListLicensesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_licenses
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists grants that are received but not accepted.</p>
    #
    # @param [Hash] params
    #   See {Types::ListReceivedGrantsInput}.
    #
    # @option params [Array<String>] :grant_arns
    #   <p>Amazon Resource Names (ARNs) of the grants.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>Filters to scope the results. The following filters are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ProductSKU</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LicenseIssuerName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LicenseArn</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GrantStatus</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GranterAccountId</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :next_token
    #   <p>Token for the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single call.</p>
    #
    # @return [Types::ListReceivedGrantsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_received_grants(
    #     grant_arns: [
    #       'member'
    #     ],
    #     filters: [
    #       {
    #         name: 'Name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListReceivedGrantsOutput
    #   resp.data.grants #=> Array<Grant>
    #   resp.data.grants[0] #=> Types::Grant
    #   resp.data.grants[0].grant_arn #=> String
    #   resp.data.grants[0].grant_name #=> String
    #   resp.data.grants[0].parent_arn #=> String
    #   resp.data.grants[0].license_arn #=> String
    #   resp.data.grants[0].grantee_principal_arn #=> String
    #   resp.data.grants[0].home_region #=> String
    #   resp.data.grants[0].grant_status #=> String, one of ["PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"]
    #   resp.data.grants[0].status_reason #=> String
    #   resp.data.grants[0].version #=> String
    #   resp.data.grants[0].granted_operations #=> Array<String>
    #   resp.data.grants[0].granted_operations[0] #=> String, one of ["CreateGrant", "CheckoutLicense", "CheckoutBorrowLicense", "CheckInLicense", "ExtendConsumptionLicense", "ListPurchasedLicenses", "CreateToken"]
    #   resp.data.next_token #=> String
    #
    def list_received_grants(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListReceivedGrantsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListReceivedGrantsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListReceivedGrants
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException, Errors::ResourceLimitExceededException, Errors::ValidationException]),
        data_parser: Parsers::ListReceivedGrants
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListReceivedGrants,
        stubs: @stubs,
        params_class: Params::ListReceivedGrantsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_received_grants
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists received licenses.</p>
    #
    # @param [Hash] params
    #   See {Types::ListReceivedLicensesInput}.
    #
    # @option params [Array<String>] :license_arns
    #   <p>Amazon Resource Names (ARNs) of the licenses.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>Filters to scope the results. The following filters are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ProductSKU</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Status</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Fingerprint</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IssuerName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Beneficiary</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :next_token
    #   <p>Token for the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single call.</p>
    #
    # @return [Types::ListReceivedLicensesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_received_licenses(
    #     license_arns: [
    #       'member'
    #     ],
    #     filters: [
    #       {
    #         name: 'Name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListReceivedLicensesOutput
    #   resp.data.licenses #=> Array<GrantedLicense>
    #   resp.data.licenses[0] #=> Types::GrantedLicense
    #   resp.data.licenses[0].license_arn #=> String
    #   resp.data.licenses[0].license_name #=> String
    #   resp.data.licenses[0].product_name #=> String
    #   resp.data.licenses[0].product_sku #=> String
    #   resp.data.licenses[0].issuer #=> Types::IssuerDetails
    #   resp.data.licenses[0].issuer.name #=> String
    #   resp.data.licenses[0].issuer.sign_key #=> String
    #   resp.data.licenses[0].issuer.key_fingerprint #=> String
    #   resp.data.licenses[0].home_region #=> String
    #   resp.data.licenses[0].status #=> String, one of ["AVAILABLE", "PENDING_AVAILABLE", "DEACTIVATED", "SUSPENDED", "EXPIRED", "PENDING_DELETE", "DELETED"]
    #   resp.data.licenses[0].validity #=> Types::DatetimeRange
    #   resp.data.licenses[0].validity.begin #=> String
    #   resp.data.licenses[0].validity.end #=> String
    #   resp.data.licenses[0].beneficiary #=> String
    #   resp.data.licenses[0].entitlements #=> Array<Entitlement>
    #   resp.data.licenses[0].entitlements[0] #=> Types::Entitlement
    #   resp.data.licenses[0].entitlements[0].name #=> String
    #   resp.data.licenses[0].entitlements[0].value #=> String
    #   resp.data.licenses[0].entitlements[0].max_count #=> Integer
    #   resp.data.licenses[0].entitlements[0].overage #=> Boolean
    #   resp.data.licenses[0].entitlements[0].unit #=> String, one of ["Count", "None", "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second"]
    #   resp.data.licenses[0].entitlements[0].allow_check_in #=> Boolean
    #   resp.data.licenses[0].consumption_configuration #=> Types::ConsumptionConfiguration
    #   resp.data.licenses[0].consumption_configuration.renew_type #=> String, one of ["None", "Weekly", "Monthly"]
    #   resp.data.licenses[0].consumption_configuration.provisional_configuration #=> Types::ProvisionalConfiguration
    #   resp.data.licenses[0].consumption_configuration.provisional_configuration.max_time_to_live_in_minutes #=> Integer
    #   resp.data.licenses[0].consumption_configuration.borrow_configuration #=> Types::BorrowConfiguration
    #   resp.data.licenses[0].consumption_configuration.borrow_configuration.allow_early_check_in #=> Boolean
    #   resp.data.licenses[0].consumption_configuration.borrow_configuration.max_time_to_live_in_minutes #=> Integer
    #   resp.data.licenses[0].license_metadata #=> Array<Metadata>
    #   resp.data.licenses[0].license_metadata[0] #=> Types::Metadata
    #   resp.data.licenses[0].license_metadata[0].name #=> String
    #   resp.data.licenses[0].license_metadata[0].value #=> String
    #   resp.data.licenses[0].create_time #=> String
    #   resp.data.licenses[0].version #=> String
    #   resp.data.licenses[0].received_metadata #=> Types::ReceivedMetadata
    #   resp.data.licenses[0].received_metadata.received_status #=> String, one of ["PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "DISABLED", "WORKFLOW_COMPLETED"]
    #   resp.data.licenses[0].received_metadata.received_status_reason #=> String
    #   resp.data.licenses[0].received_metadata.allowed_operations #=> Array<String>
    #   resp.data.licenses[0].received_metadata.allowed_operations[0] #=> String, one of ["CreateGrant", "CheckoutLicense", "CheckoutBorrowLicense", "CheckInLicense", "ExtendConsumptionLicense", "ListPurchasedLicenses", "CreateToken"]
    #   resp.data.next_token #=> String
    #
    def list_received_licenses(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListReceivedLicensesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListReceivedLicensesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListReceivedLicenses
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException, Errors::ResourceLimitExceededException, Errors::ValidationException]),
        data_parser: Parsers::ListReceivedLicenses
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListReceivedLicenses,
        stubs: @stubs,
        params_class: Params::ListReceivedLicensesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_received_licenses
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists resources managed using Systems Manager inventory.</p>
    #
    # @param [Hash] params
    #   See {Types::ListResourceInventoryInput}.
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single call.</p>
    #
    # @option params [String] :next_token
    #   <p>Token for the next set of results.</p>
    #
    # @option params [Array<InventoryFilter>] :filters
    #   <p>Filters to scope the results. The following filters and logical operators
    #           are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>account_id</code> - The ID of the Amazon Web Services account that owns the resource.
    #                  Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>application_name</code> - The name of the application.
    #                  Logical operators are <code>EQUALS</code> | <code>BEGINS_WITH</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>license_included</code> - The type of license included.
    #                  Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.
    #                  Possible values are <code>sql-server-enterprise</code> |
    #                  <code>sql-server-standard</code> |
    #                  <code>sql-server-web</code> |
    #                  <code>windows-server-datacenter</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>platform</code> - The platform of the resource.
    #                  Logical operators are <code>EQUALS</code> | <code>BEGINS_WITH</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>resource_id</code> - The ID of the resource.
    #                  Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>tag:<key></code> - The key/value combination of a tag assigned
    #                  to the resource. Logical operators are <code>EQUALS</code> (single account) or
    #                  <code>EQUALS</code> | <code>NOT_EQUALS</code> (cross account).</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::ListResourceInventoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_inventory(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     filters: [
    #       {
    #         name: 'Name', # required
    #         condition: 'EQUALS', # required - accepts ["EQUALS", "NOT_EQUALS", "BEGINS_WITH", "CONTAINS"]
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListResourceInventoryOutput
    #   resp.data.resource_inventory_list #=> Array<ResourceInventory>
    #   resp.data.resource_inventory_list[0] #=> Types::ResourceInventory
    #   resp.data.resource_inventory_list[0].resource_id #=> String
    #   resp.data.resource_inventory_list[0].resource_type #=> String, one of ["EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"]
    #   resp.data.resource_inventory_list[0].resource_arn #=> String
    #   resp.data.resource_inventory_list[0].platform #=> String
    #   resp.data.resource_inventory_list[0].platform_version #=> String
    #   resp.data.resource_inventory_list[0].resource_owning_account_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_resource_inventory(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListResourceInventoryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListResourceInventoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListResourceInventory
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FilterLimitExceededException, Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException, Errors::FailedDependencyException]),
        data_parser: Parsers::ListResourceInventory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListResourceInventory,
        stubs: @stubs,
        params_class: Params::ListResourceInventoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_resource_inventory
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags for the specified license configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>Amazon Resource Name (ARN) of the license configuration.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException]),
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

    # <p>Lists your tokens.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTokensInput}.
    #
    # @option params [Array<String>] :token_ids
    #   <p>Token IDs.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>Filters to scope the results. The following filter is supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LicenseArns</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :next_token
    #   <p>Token for the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single call.</p>
    #
    # @return [Types::ListTokensOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tokens(
    #     token_ids: [
    #       'member'
    #     ],
    #     filters: [
    #       {
    #         name: 'Name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTokensOutput
    #   resp.data.tokens #=> Array<TokenData>
    #   resp.data.tokens[0] #=> Types::TokenData
    #   resp.data.tokens[0].token_id #=> String
    #   resp.data.tokens[0].token_type #=> String
    #   resp.data.tokens[0].license_arn #=> String
    #   resp.data.tokens[0].expiration_time #=> String
    #   resp.data.tokens[0].token_properties #=> Array<String>
    #   resp.data.tokens[0].token_properties[0] #=> String
    #   resp.data.tokens[0].role_arns #=> Array<String>
    #   resp.data.tokens[0].role_arns[0] #=> String
    #   resp.data.tokens[0].status #=> String
    #   resp.data.next_token #=> String
    #
    def list_tokens(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTokensInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTokensInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTokens
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException, Errors::ValidationException]),
        data_parser: Parsers::ListTokens
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTokens,
        stubs: @stubs,
        params_class: Params::ListTokensOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tokens
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all license usage records for a license configuration, displaying license
    #          consumption details by resource at a selected point in time. Use this action to audit the
    #          current license consumption for any license inventory and configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::ListUsageForLicenseConfigurationInput}.
    #
    # @option params [String] :license_configuration_arn
    #   <p>Amazon Resource Name (ARN) of the license configuration.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single call.</p>
    #
    # @option params [String] :next_token
    #   <p>Token for the next set of results.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>Filters to scope the results. The following filters and logical operators
    #           are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>resourceArn</code> - The ARN of the license configuration resource.
    #                  Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>resourceType</code> - The resource type (<code>EC2_INSTANCE</code> | <code>EC2_HOST</code> | <code>EC2_AMI</code> | <code>SYSTEMS_MANAGER_MANAGED_INSTANCE</code>).
    #                  Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>resourceAccount</code> - The ID of the account that owns the resource.
    #                  Logical operators are <code>EQUALS</code> | <code>NOT_EQUALS</code>.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::ListUsageForLicenseConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_usage_for_license_configuration(
    #     license_configuration_arn: 'LicenseConfigurationArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     filters: [
    #       {
    #         name: 'Name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListUsageForLicenseConfigurationOutput
    #   resp.data.license_configuration_usage_list #=> Array<LicenseConfigurationUsage>
    #   resp.data.license_configuration_usage_list[0] #=> Types::LicenseConfigurationUsage
    #   resp.data.license_configuration_usage_list[0].resource_arn #=> String
    #   resp.data.license_configuration_usage_list[0].resource_type #=> String, one of ["EC2_INSTANCE", "EC2_HOST", "EC2_AMI", "RDS", "SYSTEMS_MANAGER_MANAGED_INSTANCE"]
    #   resp.data.license_configuration_usage_list[0].resource_status #=> String
    #   resp.data.license_configuration_usage_list[0].resource_owner_id #=> String
    #   resp.data.license_configuration_usage_list[0].association_time #=> Time
    #   resp.data.license_configuration_usage_list[0].consumed_licenses #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_usage_for_license_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListUsageForLicenseConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListUsageForLicenseConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListUsageForLicenseConfiguration
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FilterLimitExceededException, Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListUsageForLicenseConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListUsageForLicenseConfiguration,
        stubs: @stubs,
        params_class: Params::ListUsageForLicenseConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_usage_for_license_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Rejects the specified grant.</p>
    #
    # @param [Hash] params
    #   See {Types::RejectGrantInput}.
    #
    # @option params [String] :grant_arn
    #   <p>Amazon Resource Name (ARN) of the grant.</p>
    #
    # @return [Types::RejectGrantOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_grant(
    #     grant_arn: 'GrantArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RejectGrantOutput
    #   resp.data.grant_arn #=> String
    #   resp.data.status #=> String, one of ["PENDING_WORKFLOW", "PENDING_ACCEPT", "REJECTED", "ACTIVE", "FAILED_WORKFLOW", "DELETED", "PENDING_DELETE", "DISABLED", "WORKFLOW_COMPLETED"]
    #   resp.data.version #=> String
    #
    def reject_grant(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RejectGrantInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RejectGrantInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RejectGrant
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException, Errors::ResourceLimitExceededException, Errors::ValidationException]),
        data_parser: Parsers::RejectGrant
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RejectGrant,
        stubs: @stubs,
        params_class: Params::RejectGrantOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reject_grant
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds the specified tags to the specified license configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>Amazon Resource Name (ARN) of the license configuration.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>One or more tags.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException]),
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

    # <p>Removes the specified tags from the specified license configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>Amazon Resource Name (ARN) of the license configuration.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>Keys identifying the tags to remove.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException]),
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

    # <p>Modifies the attributes of an existing license configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateLicenseConfigurationInput}.
    #
    # @option params [String] :license_configuration_arn
    #   <p>Amazon Resource Name (ARN) of the license configuration.</p>
    #
    # @option params [String] :license_configuration_status
    #   <p>New status of the license configuration.</p>
    #
    # @option params [Array<String>] :license_rules
    #   <p>New license rule. The only rule that you can add after you create a license
    #             configuration is licenseAffinityToHost.</p>
    #
    # @option params [Integer] :license_count
    #   <p>New number of licenses managed by the license configuration.</p>
    #
    # @option params [Boolean] :license_count_hard_limit
    #   <p>New hard limit of the number of available licenses.</p>
    #
    # @option params [String] :name
    #   <p>New name of the license configuration.</p>
    #
    # @option params [String] :description
    #   <p>New description of the license configuration.</p>
    #
    # @option params [Array<ProductInformation>] :product_information_list
    #   <p>New product information.</p>
    #
    # @option params [Boolean] :disassociate_when_not_found
    #   <p>When true, disassociates a resource when software is uninstalled.</p>
    #
    # @return [Types::UpdateLicenseConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_license_configuration(
    #     license_configuration_arn: 'LicenseConfigurationArn', # required
    #     license_configuration_status: 'AVAILABLE', # accepts ["AVAILABLE", "DISABLED"]
    #     license_rules: [
    #       'member'
    #     ],
    #     license_count: 1,
    #     license_count_hard_limit: false,
    #     name: 'Name',
    #     description: 'Description',
    #     product_information_list: [
    #       {
    #         resource_type: 'ResourceType', # required
    #         product_information_filter_list: [
    #           {
    #             product_information_filter_name: 'ProductInformationFilterName', # required
    #             product_information_filter_comparator: 'ProductInformationFilterComparator' # required
    #           }
    #         ] # required
    #       }
    #     ],
    #     disassociate_when_not_found: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateLicenseConfigurationOutput
    #
    def update_license_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateLicenseConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateLicenseConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateLicenseConfiguration
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException, Errors::ResourceLimitExceededException]),
        data_parser: Parsers::UpdateLicenseConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateLicenseConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateLicenseConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_license_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a report generator.</p>
    #          <p>After you make changes to a report generator, it starts generating new reports within 60 minutes of being updated.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateLicenseManagerReportGeneratorInput}.
    #
    # @option params [String] :license_manager_report_generator_arn
    #   <p>Amazon Resource Name (ARN) of the report generator to update.</p>
    #
    # @option params [String] :report_generator_name
    #   <p>Name of the report generator.</p>
    #
    # @option params [Array<String>] :type
    #   <p>Type of reports to generate. The following report types are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>License configuration report - Reports the number and details of consumed licenses for a license configuration.</p>
    #               </li>
    #               <li>
    #                  <p>Resource report - Reports the tracked licenses and resource consumption for a license configuration.</p>
    #               </li>
    #            </ul>
    #
    # @option params [ReportContext] :report_context
    #   <p>The report context.</p>
    #
    # @option params [ReportFrequency] :report_frequency
    #   <p>Frequency by which reports are generated.</p>
    #
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #
    # @option params [String] :description
    #   <p>Description of the report generator.</p>
    #
    # @return [Types::UpdateLicenseManagerReportGeneratorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_license_manager_report_generator(
    #     license_manager_report_generator_arn: 'LicenseManagerReportGeneratorArn', # required
    #     report_generator_name: 'ReportGeneratorName', # required
    #     type: [
    #       'LicenseConfigurationSummaryReport' # accepts ["LicenseConfigurationSummaryReport", "LicenseConfigurationUsageReport"]
    #     ], # required
    #     report_context: {
    #       license_configuration_arns: [
    #         'member'
    #       ] # required
    #     }, # required
    #     report_frequency: {
    #       value: 1,
    #       period: 'DAY' # accepts ["DAY", "WEEK", "MONTH"]
    #     }, # required
    #     client_token: 'ClientToken', # required
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateLicenseManagerReportGeneratorOutput
    #
    def update_license_manager_report_generator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateLicenseManagerReportGeneratorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateLicenseManagerReportGeneratorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateLicenseManagerReportGenerator
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException, Errors::ResourceLimitExceededException, Errors::ValidationException]),
        data_parser: Parsers::UpdateLicenseManagerReportGenerator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateLicenseManagerReportGenerator,
        stubs: @stubs,
        params_class: Params::UpdateLicenseManagerReportGeneratorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_license_manager_report_generator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or removes the specified license configurations for the specified Amazon Web Services resource.</p>
    #          <p>You can update the license specifications of AMIs, instances, and hosts.
    #          You cannot update the license specifications for launch templates and CloudFormation templates,
    #          as they send license configurations to the operation that creates the resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateLicenseSpecificationsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>Amazon Resource Name (ARN) of the Amazon Web Services resource.</p>
    #
    # @option params [Array<LicenseSpecification>] :add_license_specifications
    #   <p>ARNs of the license configurations to add.</p>
    #
    # @option params [Array<LicenseSpecification>] :remove_license_specifications
    #   <p>ARNs of the license configurations to remove.</p>
    #
    # @return [Types::UpdateLicenseSpecificationsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_license_specifications_for_resource(
    #     resource_arn: 'ResourceArn', # required
    #     add_license_specifications: [
    #       {
    #         license_configuration_arn: 'LicenseConfigurationArn', # required
    #         ami_association_scope: 'AmiAssociationScope'
    #       }
    #     ],
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateLicenseSpecificationsForResourceOutput
    #
    def update_license_specifications_for_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateLicenseSpecificationsForResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateLicenseSpecificationsForResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateLicenseSpecificationsForResource
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException, Errors::InvalidResourceStateException, Errors::LicenseUsageException]),
        data_parser: Parsers::UpdateLicenseSpecificationsForResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateLicenseSpecificationsForResource,
        stubs: @stubs,
        params_class: Params::UpdateLicenseSpecificationsForResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_license_specifications_for_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates License Manager settings for the current Region.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateServiceSettingsInput}.
    #
    # @option params [String] :s3_bucket_arn
    #   <p>Amazon Resource Name (ARN) of the Amazon S3 bucket where the License Manager information is stored.</p>
    #
    # @option params [String] :sns_topic_arn
    #   <p>Amazon Resource Name (ARN) of the Amazon SNS topic used for License Manager alerts.</p>
    #
    # @option params [OrganizationConfiguration] :organization_configuration
    #   <p>Enables integration with Organizations for cross-account discovery.</p>
    #
    # @option params [Boolean] :enable_cross_accounts_discovery
    #   <p>Activates cross-account discovery.</p>
    #
    # @return [Types::UpdateServiceSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service_settings(
    #     s3_bucket_arn: 'S3BucketArn',
    #     sns_topic_arn: 'SnsTopicArn',
    #     organization_configuration: {
    #       enable_integration: false # required
    #     },
    #     enable_cross_accounts_discovery: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateServiceSettingsOutput
    #
    def update_service_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateServiceSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateServiceSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateServiceSettings
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::RateLimitExceededException, Errors::ServerInternalException, Errors::AuthorizationException, Errors::AccessDeniedException]),
        data_parser: Parsers::UpdateServiceSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateServiceSettings,
        stubs: @stubs,
        params_class: Params::UpdateServiceSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_service_settings
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
