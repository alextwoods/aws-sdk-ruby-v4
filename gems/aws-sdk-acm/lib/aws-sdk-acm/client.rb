# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::ACM
  # An API client for CertificateManager
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon Web Services Certificate Manager</fullname>
  #          <p>You can use Amazon Web Services Certificate Manager (ACM) to manage SSL/TLS certificates for your Amazon Web Services-based websites
  #       and applications. For more information about using ACM, see the <a href="https://docs.aws.amazon.com/acm/latest/userguide/">Amazon Web Services Certificate Manager User Guide</a>.</p>
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
    def initialize(config = AWS::SDK::ACM::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Adds one or more tags to an ACM certificate. Tags are labels that you can use to
    #       identify and organize your Amazon Web Services resources. Each tag consists of a <code>key</code> and an
    #       optional <code>value</code>. You specify the certificate on input by its Amazon Resource Name
    #       (ARN). You specify the tag by using a key-value pair. </p>
    #
    #          <p>You can apply a tag to just one certificate if you want to identify a specific
    #       characteristic of that certificate, or you can apply the same tag to multiple certificates if
    #       you want to filter for a common relationship among those certificates. Similarly, you can
    #       apply the same tag to multiple resources if you want to specify a relationship among those
    #       resources. For example, you can add the same tag to an ACM certificate and an Elastic Load
    #       Balancing load balancer to indicate that they are both used by the same website. For more
    #       information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/tags.html">Tagging ACM
    #         certificates</a>. </p>
    #
    #          <p>To remove one or more tags, use the <a>RemoveTagsFromCertificate</a> action. To
    #       view all of the tags that have been applied to the certificate, use the <a>ListTagsForCertificate</a> action. </p>
    #
    # @param [Hash] params
    #   See {Types::AddTagsToCertificateInput}.
    #
    # @option params [String] :certificate_arn
    #   <p>String that contains the ARN of the ACM certificate to which the tag is to be applied.
    #         This must be of the form:</p>
    #
    #            <p>
    #               <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code>
    #            </p>
    #
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The key-value pair that defines the tag. The tag value is optional.</p>
    #
    # @return [Types::AddTagsToCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags_to_certificate(
    #     certificate_arn: 'CertificateArn', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddTagsToCertificateOutput
    #
    def add_tags_to_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddTagsToCertificateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddTagsToCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddTagsToCertificate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::TooManyTagsException, Errors::TagPolicyException, Errors::InvalidTagException, Errors::ThrottlingException, Errors::InvalidArnException]),
        data_parser: Parsers::AddTagsToCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddTagsToCertificate,
        stubs: @stubs,
        params_class: Params::AddTagsToCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_tags_to_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a certificate and its associated private key. If this action succeeds, the
    #       certificate no longer appears in the list that can be displayed by calling the <a>ListCertificates</a> action or be retrieved by calling the <a>GetCertificate</a> action. The certificate will not be available for use by Amazon Web Services
    #       services integrated with ACM. </p>
    #          <note>
    #             <p>You cannot delete an ACM certificate that is being used by another Amazon Web Services service. To
    #         delete a certificate that is in use, the certificate association must first be
    #         removed.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteCertificateInput}.
    #
    # @option params [String] :certificate_arn
    #   <p>String that contains the ARN of the ACM certificate to be deleted. This must be of the
    #         form:</p>
    #            <p>
    #               <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code>
    #            </p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    #
    # @return [Types::DeleteCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_certificate(
    #     certificate_arn: 'CertificateArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCertificateOutput
    #
    def delete_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCertificateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCertificate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ResourceInUseException, Errors::InvalidArnException]),
        data_parser: Parsers::DeleteCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCertificate,
        stubs: @stubs,
        params_class: Params::DeleteCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns detailed metadata about the specified ACM certificate.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCertificateInput}.
    #
    # @option params [String] :certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the ACM certificate. The ARN must have the following
    #         form:</p>
    #            <p>
    #               <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code>
    #            </p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    #
    # @return [Types::DescribeCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_certificate(
    #     certificate_arn: 'CertificateArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCertificateOutput
    #   resp.data.certificate #=> Types::CertificateDetail
    #   resp.data.certificate.certificate_arn #=> String
    #   resp.data.certificate.domain_name #=> String
    #   resp.data.certificate.subject_alternative_names #=> Array<String>
    #   resp.data.certificate.subject_alternative_names[0] #=> String
    #   resp.data.certificate.domain_validation_options #=> Array<DomainValidation>
    #   resp.data.certificate.domain_validation_options[0] #=> Types::DomainValidation
    #   resp.data.certificate.domain_validation_options[0].domain_name #=> String
    #   resp.data.certificate.domain_validation_options[0].validation_emails #=> Array<String>
    #   resp.data.certificate.domain_validation_options[0].validation_emails[0] #=> String
    #   resp.data.certificate.domain_validation_options[0].validation_domain #=> String
    #   resp.data.certificate.domain_validation_options[0].validation_status #=> String, one of ["PENDING_VALIDATION", "SUCCESS", "FAILED"]
    #   resp.data.certificate.domain_validation_options[0].resource_record #=> Types::ResourceRecord
    #   resp.data.certificate.domain_validation_options[0].resource_record.name #=> String
    #   resp.data.certificate.domain_validation_options[0].resource_record.type #=> String, one of ["CNAME"]
    #   resp.data.certificate.domain_validation_options[0].resource_record.value #=> String
    #   resp.data.certificate.domain_validation_options[0].validation_method #=> String, one of ["EMAIL", "DNS"]
    #   resp.data.certificate.serial #=> String
    #   resp.data.certificate.subject #=> String
    #   resp.data.certificate.issuer #=> String
    #   resp.data.certificate.created_at #=> Time
    #   resp.data.certificate.issued_at #=> Time
    #   resp.data.certificate.imported_at #=> Time
    #   resp.data.certificate.status #=> String, one of ["PENDING_VALIDATION", "ISSUED", "INACTIVE", "EXPIRED", "VALIDATION_TIMED_OUT", "REVOKED", "FAILED"]
    #   resp.data.certificate.revoked_at #=> Time
    #   resp.data.certificate.revocation_reason #=> String, one of ["UNSPECIFIED", "KEY_COMPROMISE", "CA_COMPROMISE", "AFFILIATION_CHANGED", "SUPERCEDED", "CESSATION_OF_OPERATION", "CERTIFICATE_HOLD", "REMOVE_FROM_CRL", "PRIVILEGE_WITHDRAWN", "A_A_COMPROMISE"]
    #   resp.data.certificate.not_before #=> Time
    #   resp.data.certificate.not_after #=> Time
    #   resp.data.certificate.key_algorithm #=> String, one of ["RSA_1024", "RSA_2048", "RSA_3072", "RSA_4096", "EC_prime256v1", "EC_secp384r1", "EC_secp521r1"]
    #   resp.data.certificate.signature_algorithm #=> String
    #   resp.data.certificate.in_use_by #=> Array<String>
    #   resp.data.certificate.in_use_by[0] #=> String
    #   resp.data.certificate.failure_reason #=> String, one of ["NO_AVAILABLE_CONTACTS", "ADDITIONAL_VERIFICATION_REQUIRED", "DOMAIN_NOT_ALLOWED", "INVALID_PUBLIC_DOMAIN", "DOMAIN_VALIDATION_DENIED", "CAA_ERROR", "PCA_LIMIT_EXCEEDED", "PCA_INVALID_ARN", "PCA_INVALID_STATE", "PCA_REQUEST_FAILED", "PCA_NAME_CONSTRAINTS_VALIDATION", "PCA_RESOURCE_NOT_FOUND", "PCA_INVALID_ARGS", "PCA_INVALID_DURATION", "PCA_ACCESS_DENIED", "SLR_NOT_FOUND", "OTHER"]
    #   resp.data.certificate.type #=> String, one of ["IMPORTED", "AMAZON_ISSUED", "PRIVATE"]
    #   resp.data.certificate.renewal_summary #=> Types::RenewalSummary
    #   resp.data.certificate.renewal_summary.renewal_status #=> String, one of ["PENDING_AUTO_RENEWAL", "PENDING_VALIDATION", "SUCCESS", "FAILED"]
    #   resp.data.certificate.renewal_summary.domain_validation_options #=> Array<DomainValidation>
    #   resp.data.certificate.renewal_summary.renewal_status_reason #=> String, one of ["NO_AVAILABLE_CONTACTS", "ADDITIONAL_VERIFICATION_REQUIRED", "DOMAIN_NOT_ALLOWED", "INVALID_PUBLIC_DOMAIN", "DOMAIN_VALIDATION_DENIED", "CAA_ERROR", "PCA_LIMIT_EXCEEDED", "PCA_INVALID_ARN", "PCA_INVALID_STATE", "PCA_REQUEST_FAILED", "PCA_NAME_CONSTRAINTS_VALIDATION", "PCA_RESOURCE_NOT_FOUND", "PCA_INVALID_ARGS", "PCA_INVALID_DURATION", "PCA_ACCESS_DENIED", "SLR_NOT_FOUND", "OTHER"]
    #   resp.data.certificate.renewal_summary.updated_at #=> Time
    #   resp.data.certificate.key_usages #=> Array<KeyUsage>
    #   resp.data.certificate.key_usages[0] #=> Types::KeyUsage
    #   resp.data.certificate.key_usages[0].name #=> String, one of ["DIGITAL_SIGNATURE", "NON_REPUDIATION", "KEY_ENCIPHERMENT", "DATA_ENCIPHERMENT", "KEY_AGREEMENT", "CERTIFICATE_SIGNING", "CRL_SIGNING", "ENCIPHER_ONLY", "DECIPHER_ONLY", "ANY", "CUSTOM"]
    #   resp.data.certificate.extended_key_usages #=> Array<ExtendedKeyUsage>
    #   resp.data.certificate.extended_key_usages[0] #=> Types::ExtendedKeyUsage
    #   resp.data.certificate.extended_key_usages[0].name #=> String, one of ["TLS_WEB_SERVER_AUTHENTICATION", "TLS_WEB_CLIENT_AUTHENTICATION", "CODE_SIGNING", "EMAIL_PROTECTION", "TIME_STAMPING", "OCSP_SIGNING", "IPSEC_END_SYSTEM", "IPSEC_TUNNEL", "IPSEC_USER", "ANY", "NONE", "CUSTOM"]
    #   resp.data.certificate.extended_key_usages[0].oid #=> String
    #   resp.data.certificate.certificate_authority_arn #=> String
    #   resp.data.certificate.renewal_eligibility #=> String, one of ["ELIGIBLE", "INELIGIBLE"]
    #   resp.data.certificate.options #=> Types::CertificateOptions
    #   resp.data.certificate.options.certificate_transparency_logging_preference #=> String, one of ["ENABLED", "DISABLED"]
    #
    def describe_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCertificateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCertificate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidArnException]),
        data_parser: Parsers::DescribeCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCertificate,
        stubs: @stubs,
        params_class: Params::DescribeCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Exports a private certificate issued by a private certificate authority (CA) for use
    #       anywhere. The exported file contains the certificate, the certificate chain, and the encrypted
    #       private 2048-bit RSA key associated with the public key that is embedded in the certificate.
    #       For security, you must assign a passphrase for the private key when exporting it. </p>
    #          <p>For information about exporting and formatting a certificate using the ACM console or
    #       CLI, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-export-private.html">Export a
    #         Private Certificate</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ExportCertificateInput}.
    #
    # @option params [String] :certificate_arn
    #   <p>An Amazon Resource Name (ARN) of the issued certificate. This must be of the form:</p>
    #            <p>
    #               <code>arn:aws:acm:region:account:certificate/12345678-1234-1234-1234-123456789012</code>
    #            </p>
    #
    # @option params [String] :passphrase
    #   <p>Passphrase to associate with the encrypted exported private key. If you want to later
    #         decrypt the private key, you must have the passphrase. You can use the following OpenSSL
    #         command to decrypt a private key: </p>
    #            <p>
    #               <code>openssl rsa -in encrypted_key.pem -out decrypted_key.pem</code>
    #            </p>
    #
    # @return [Types::ExportCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_certificate(
    #     certificate_arn: 'CertificateArn', # required
    #     passphrase: 'Passphrase' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExportCertificateOutput
    #   resp.data.certificate #=> String
    #   resp.data.certificate_chain #=> String
    #   resp.data.private_key #=> String
    #
    def export_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExportCertificateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExportCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExportCertificate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestInProgressException, Errors::ResourceNotFoundException, Errors::InvalidArnException]),
        data_parser: Parsers::ExportCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExportCertificate,
        stubs: @stubs,
        params_class: Params::ExportCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :export_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the account
    #       configuration options associated with an Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAccountConfigurationInput}.
    #
    # @return [Types::GetAccountConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_account_configuration()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAccountConfigurationOutput
    #   resp.data.expiry_events #=> Types::ExpiryEventsConfiguration
    #   resp.data.expiry_events.days_before_expiry #=> Integer
    #
    def get_account_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAccountConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAccountConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAccountConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ThrottlingException]),
        data_parser: Parsers::GetAccountConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAccountConfiguration,
        stubs: @stubs,
        params_class: Params::GetAccountConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_account_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves an Amazon-issued certificate and its certificate chain. The chain consists of
    #       the certificate of the issuing CA and the intermediate certificates of any other subordinate
    #       CAs. All of the certificates are base64 encoded. You can use <a href="https://wiki.openssl.org/index.php/Command_Line_Utilities">OpenSSL</a> to decode
    #       the certificates and inspect individual fields.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCertificateInput}.
    #
    # @option params [String] :certificate_arn
    #   <p>String that contains a certificate ARN in the following format:</p>
    #            <p>
    #               <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code>
    #            </p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    #
    # @return [Types::GetCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_certificate(
    #     certificate_arn: 'CertificateArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCertificateOutput
    #   resp.data.certificate #=> String
    #   resp.data.certificate_chain #=> String
    #
    def get_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCertificateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCertificate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestInProgressException, Errors::ResourceNotFoundException, Errors::InvalidArnException]),
        data_parser: Parsers::GetCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCertificate,
        stubs: @stubs,
        params_class: Params::GetCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Imports a certificate into Amazon Web Services Certificate Manager (ACM) to use with services that are integrated with
    #       ACM. Note that <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-services.html">integrated
    #         services</a> allow only certificate types and keys they support to be associated with
    #       their resources. Further, their support differs depending on whether the certificate is
    #       imported into IAM or into ACM. For more information, see the documentation for each
    #       service. For more information about importing certificates into ACM, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html">Importing
    #         Certificates</a> in the <i>Amazon Web Services Certificate Manager User Guide</i>. </p>
    #
    #          <note>
    #             <p>ACM does not provide <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html">managed renewal</a> for certificates that you import.</p>
    #          </note>
    #
    #          <p>Note the following guidelines when importing third party certificates:</p>
    #
    #
    #          <ul>
    #             <li>
    #                <p>You must enter the private key that matches the certificate you are importing.</p>
    #             </li>
    #             <li>
    #                <p>The private key must be unencrypted. You cannot import a private key that is protected
    #           by a password or a passphrase.</p>
    #             </li>
    #             <li>
    #                <p>The private key must be no larger than 5 KB (5,120 bytes).</p>
    #             </li>
    #             <li>
    #                <p>If the certificate you are importing is not self-signed, you must enter its
    #           certificate chain.</p>
    #             </li>
    #             <li>
    #                <p>If a certificate chain is included, the issuer must be the subject of one of the
    #           certificates in the chain.</p>
    #             </li>
    #             <li>
    #                <p>The certificate, private key, and certificate chain must be PEM-encoded.</p>
    #             </li>
    #             <li>
    #                <p>The current time must be between the <code>Not Before</code> and <code>Not
    #             After</code> certificate fields.</p>
    #             </li>
    #             <li>
    #                <p>The <code>Issuer</code> field must not be empty.</p>
    #             </li>
    #             <li>
    #                <p>The OCSP authority URL, if present, must not exceed 1000 characters.</p>
    #             </li>
    #             <li>
    #                <p>To import a new certificate, omit the <code>CertificateArn</code> argument. Include
    #           this argument only when you want to replace a previously imported certificate.</p>
    #             </li>
    #             <li>
    #                <p>When you import a certificate by using the CLI, you must specify the certificate, the
    #           certificate chain, and the private key by their file names preceded by
    #             <code>fileb://</code>. For example, you can specify a certificate saved in the
    #             <code>C:\temp</code> folder as <code>fileb://C:\temp\certificate_to_import.pem</code>.
    #           If you are making an HTTP or HTTPS Query request, include these arguments as BLOBs.
    #         </p>
    #             </li>
    #             <li>
    #                <p>When you import a certificate by using an SDK, you must specify the certificate, the
    #           certificate chain, and the private key files in the manner required by the programming
    #           language you're using. </p>
    #             </li>
    #             <li>
    #                <p>The cryptographic algorithm of an imported certificate must match the algorithm of the
    #           signing CA. For example, if the signing CA key type is RSA, then the certificate key type
    #           must also be RSA.</p>
    #             </li>
    #          </ul>
    #
    #          <p>This operation returns the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon
    #         Resource Name (ARN)</a> of the imported certificate.</p>
    #
    # @param [Hash] params
    #   See {Types::ImportCertificateInput}.
    #
    # @option params [String] :certificate_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name
    #           (ARN)</a> of an imported certificate to replace. To import a new certificate, omit this
    #         field. </p>
    #
    # @option params [String] :certificate
    #   <p>The certificate to import.</p>
    #
    # @option params [String] :private_key
    #   <p>The private key that matches the public key in the certificate.</p>
    #
    # @option params [String] :certificate_chain
    #   <p>The PEM encoded certificate chain.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>One or more resource tags to associate with the imported certificate. </p>
    #            <p>Note: You cannot apply tags when reimporting a certificate.</p>
    #
    # @return [Types::ImportCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_certificate(
    #     certificate_arn: 'CertificateArn',
    #     certificate: 'Certificate', # required
    #     private_key: 'PrivateKey', # required
    #     certificate_chain: 'CertificateChain',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ImportCertificateOutput
    #   resp.data.certificate_arn #=> String
    #
    def import_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ImportCertificateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ImportCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ImportCertificate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::TooManyTagsException, Errors::TagPolicyException, Errors::InvalidTagException, Errors::LimitExceededException, Errors::InvalidArnException]),
        data_parser: Parsers::ImportCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ImportCertificate,
        stubs: @stubs,
        params_class: Params::ImportCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :import_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of certificate ARNs and domain names. You can request that only
    #       certificates that match a specific status be listed. You can also filter by specific
    #       attributes of the certificate. Default filtering returns only <code>RSA_2048</code>
    #       certificates. For more information, see <a>Filters</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCertificatesInput}.
    #
    # @option params [Array<String>] :certificate_statuses
    #   <p>Filter the certificate list by status value.</p>
    #
    # @option params [Filters] :includes
    #   <p>Filter the certificate list. For more information, see the <a>Filters</a>
    #         structure.</p>
    #
    # @option params [String] :next_token
    #   <p>Use this parameter only when paginating results and only in a subsequent request after you
    #         receive a response with truncated results. Set it to the value of <code>NextToken</code> from
    #         the response you just received.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this parameter when paginating results to specify the maximum number of items to
    #         return in the response. If additional items exist beyond the number you specify, the
    #           <code>NextToken</code> element is sent in the response. Use this <code>NextToken</code>
    #         value in a subsequent request to retrieve additional items.</p>
    #
    # @return [Types::ListCertificatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_certificates(
    #     certificate_statuses: [
    #       'PENDING_VALIDATION' # accepts ["PENDING_VALIDATION", "ISSUED", "INACTIVE", "EXPIRED", "VALIDATION_TIMED_OUT", "REVOKED", "FAILED"]
    #     ],
    #     includes: {
    #       extended_key_usage: [
    #         'TLS_WEB_SERVER_AUTHENTICATION' # accepts ["TLS_WEB_SERVER_AUTHENTICATION", "TLS_WEB_CLIENT_AUTHENTICATION", "CODE_SIGNING", "EMAIL_PROTECTION", "TIME_STAMPING", "OCSP_SIGNING", "IPSEC_END_SYSTEM", "IPSEC_TUNNEL", "IPSEC_USER", "ANY", "NONE", "CUSTOM"]
    #       ],
    #       key_usage: [
    #         'DIGITAL_SIGNATURE' # accepts ["DIGITAL_SIGNATURE", "NON_REPUDIATION", "KEY_ENCIPHERMENT", "DATA_ENCIPHERMENT", "KEY_AGREEMENT", "CERTIFICATE_SIGNING", "CRL_SIGNING", "ENCIPHER_ONLY", "DECIPHER_ONLY", "ANY", "CUSTOM"]
    #       ],
    #       key_types: [
    #         'RSA_1024' # accepts ["RSA_1024", "RSA_2048", "RSA_3072", "RSA_4096", "EC_prime256v1", "EC_secp384r1", "EC_secp521r1"]
    #       ]
    #     },
    #     next_token: 'NextToken',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCertificatesOutput
    #   resp.data.next_token #=> String
    #   resp.data.certificate_summary_list #=> Array<CertificateSummary>
    #   resp.data.certificate_summary_list[0] #=> Types::CertificateSummary
    #   resp.data.certificate_summary_list[0].certificate_arn #=> String
    #   resp.data.certificate_summary_list[0].domain_name #=> String
    #
    def list_certificates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCertificatesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCertificatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCertificates
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArgsException]),
        data_parser: Parsers::ListCertificates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCertificates,
        stubs: @stubs,
        params_class: Params::ListCertificatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_certificates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags that have been applied to the ACM certificate. Use the certificate's
    #       Amazon Resource Name (ARN) to specify the certificate. To add a tag to an ACM certificate,
    #       use the <a>AddTagsToCertificate</a> action. To delete a tag, use the <a>RemoveTagsFromCertificate</a> action. </p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForCertificateInput}.
    #
    # @option params [String] :certificate_arn
    #   <p>String that contains the ARN of the ACM certificate for which you want to list the tags.
    #         This must have the following form:</p>
    #            <p>
    #               <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code>
    #            </p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    #
    # @return [Types::ListTagsForCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_certificate(
    #     certificate_arn: 'CertificateArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForCertificateOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def list_tags_for_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForCertificateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsForCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsForCertificate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidArnException]),
        data_parser: Parsers::ListTagsForCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTagsForCertificate,
        stubs: @stubs,
        params_class: Params::ListTagsForCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags_for_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or modifies
    #       account-level configurations in ACM.
    #       </p>
    #          <p>The
    #       supported configuration option is <code>DaysBeforeExpiry</code>. This option specifies the
    #       number of days prior to certificate expiration when ACM starts generating
    #         <code>EventBridge</code> events. ACM sends one event per day per certificate until the
    #       certificate expires. By default, accounts receive events starting 45 days before certificate
    #       expiration.</p>
    #
    # @param [Hash] params
    #   See {Types::PutAccountConfigurationInput}.
    #
    # @option params [ExpiryEventsConfiguration] :expiry_events
    #   <p>Specifies expiration
    #         events associated with an account.</p>
    #
    # @option params [String] :idempotency_token
    #   <p>Customer-chosen string
    #         used to distinguish between calls to <code>PutAccountConfiguration</code>. Idempotency tokens
    #         time out after one hour. If you call <code>PutAccountConfiguration</code> multiple times with
    #         the same unexpired idempotency token, ACM treats it as the same request and returns the
    #         original result. If you change the idempotency token for each call, ACM treats each call as
    #         a new request.</p>
    #
    # @return [Types::PutAccountConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_account_configuration(
    #     expiry_events: {
    #       days_before_expiry: 1
    #     },
    #     idempotency_token: 'IdempotencyToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutAccountConfigurationOutput
    #
    def put_account_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutAccountConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutAccountConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutAccountConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::ConflictException, Errors::ThrottlingException]),
        data_parser: Parsers::PutAccountConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutAccountConfiguration,
        stubs: @stubs,
        params_class: Params::PutAccountConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_account_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Remove one or more tags from an ACM certificate. A tag consists of a key-value pair. If
    #       you do not specify the value portion of the tag when calling this function, the tag will be
    #       removed regardless of value. If you specify a value, the tag is removed only if it is
    #       associated with the specified value. </p>
    #
    #          <p>To add tags to a certificate, use the <a>AddTagsToCertificate</a> action. To
    #       view all of the tags that have been applied to a specific ACM certificate, use the <a>ListTagsForCertificate</a> action. </p>
    #
    # @param [Hash] params
    #   See {Types::RemoveTagsFromCertificateInput}.
    #
    # @option params [String] :certificate_arn
    #   <p>String that contains the ARN of the ACM Certificate with one or more tags that you want
    #         to remove. This must be of the form:</p>
    #
    #            <p>
    #               <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code>
    #            </p>
    #
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The key-value pair that defines the tag to remove.</p>
    #
    # @return [Types::RemoveTagsFromCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags_from_certificate(
    #     certificate_arn: 'CertificateArn', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveTagsFromCertificateOutput
    #
    def remove_tags_from_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveTagsFromCertificateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveTagsFromCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveTagsFromCertificate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::TagPolicyException, Errors::InvalidTagException, Errors::ThrottlingException, Errors::InvalidArnException]),
        data_parser: Parsers::RemoveTagsFromCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveTagsFromCertificate,
        stubs: @stubs,
        params_class: Params::RemoveTagsFromCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_tags_from_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Renews an eligible ACM certificate. At this time, only exported private certificates can
    #       be renewed with this operation. In order to renew your ACM PCA certificates with ACM, you must
    #       first <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaPermissions.html">grant the ACM
    #         service principal permission to do so</a>. For more information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/manual-renewal.html">Testing Managed Renewal</a>
    #       in the ACM User Guide.</p>
    #
    # @param [Hash] params
    #   See {Types::RenewCertificateInput}.
    #
    # @option params [String] :certificate_arn
    #   <p>String that contains the ARN of the ACM certificate to be renewed. This must be of the
    #         form:</p>
    #            <p>
    #               <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code>
    #            </p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    #
    # @return [Types::RenewCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.renew_certificate(
    #     certificate_arn: 'CertificateArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RenewCertificateOutput
    #
    def renew_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RenewCertificateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RenewCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RenewCertificate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidArnException]),
        data_parser: Parsers::RenewCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RenewCertificate,
        stubs: @stubs,
        params_class: Params::RenewCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :renew_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Requests an ACM certificate for use with other Amazon Web Services services. To request an ACM
    #       certificate, you must specify a fully qualified domain name (FQDN) in the
    #         <code>DomainName</code> parameter. You can also specify additional FQDNs in the
    #         <code>SubjectAlternativeNames</code> parameter. </p>
    #          <p>If you are requesting a private certificate, domain validation is not required. If you are
    #       requesting a public certificate, each domain name that you specify must be validated to verify
    #       that you own or control the domain. You can use <a href="https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html">DNS validation</a> or <a href="https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-email.html">email validation</a>.
    #       We recommend that you use DNS validation. ACM issues public certificates after receiving
    #       approval from the domain owner. </p>
    #
    #          <note>
    #             <p>ACM behavior differs from the <a href="https://tools.ietf.org/html/rfc6125#appendix-B.2">https://tools.ietf.org/html/rfc6125#appendix-B.2</a>RFC 6125 specification of the
    #         certificate validation process. first checks for a subject alternative name, and, if it
    #         finds one, ignores the common name (CN)</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::RequestCertificateInput}.
    #
    # @option params [String] :domain_name
    #   <p> Fully qualified domain name (FQDN), such as www.example.com, that you want to secure with
    #         an ACM certificate. Use an asterisk (*) to create a wildcard certificate that protects
    #         several sites in the same domain. For example, *.example.com protects www.example.com,
    #         site.example.com, and images.example.com. </p>
    #
    #            <p> The first domain name you enter cannot exceed 64 octets, including periods. Each
    #         subsequent Subject Alternative Name (SAN), however, can be up to 253 octets in length. </p>
    #
    # @option params [String] :validation_method
    #   <p>The method you want to use if you are requesting a public certificate to validate that you
    #         own or control domain. You can <a href="https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html">validate with DNS</a> or <a href="https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-email.html">validate with
    #           email</a>. We recommend that you use DNS validation. </p>
    #
    # @option params [Array<String>] :subject_alternative_names
    #   <p>Additional FQDNs to be included in the Subject Alternative Name extension of the ACM
    #         certificate. For example, add the name www.example.net to a certificate for which the
    #           <code>DomainName</code> field is www.example.com if users can reach your site by using
    #         either name. The maximum number of domain names that you can add to an ACM certificate is
    #         100. However, the initial quota is 10 domain names. If you need more than 10 names, you must
    #         request a quota increase. For more information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html">Quotas</a>.</p>
    #
    #            <p> The maximum length of a SAN DNS name is 253 octets. The name is made up of multiple
    #         labels separated by periods. No label can be longer than 63 octets. Consider the following
    #         examples: </p>
    #
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>(63 octets).(63 octets).(63 octets).(61 octets)</code> is legal because the
    #             total length is 253 octets (63+1+63+1+63+1+61) and no label exceeds 63 octets.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>(64 octets).(63 octets).(63 octets).(61 octets)</code> is not legal because the
    #             total length exceeds 253 octets (64+1+63+1+63+1+61) and the first label exceeds 63
    #             octets.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>(63 octets).(63 octets).(63 octets).(62 octets)</code> is not legal because the
    #             total length of the DNS name (63+1+63+1+63+1+62) exceeds 253 octets.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :idempotency_token
    #   <p>Customer chosen string that can be used to distinguish between calls to
    #           <code>RequestCertificate</code>. Idempotency tokens time out after one hour. Therefore, if
    #         you call <code>RequestCertificate</code> multiple times with the same idempotency token within
    #         one hour, ACM recognizes that you are requesting only one certificate and will issue only
    #         one. If you change the idempotency token for each call, ACM recognizes that you are
    #         requesting multiple certificates.</p>
    #
    # @option params [Array<DomainValidationOption>] :domain_validation_options
    #   <p>The domain name that you want ACM to use to send you emails so that you can validate
    #         domain ownership.</p>
    #
    # @option params [CertificateOptions] :options
    #   <p>Currently, you can use this parameter to specify whether to add the certificate to a
    #         certificate transparency log. Certificate transparency makes it possible to detect SSL/TLS
    #         certificates that have been mistakenly or maliciously issued. Certificates that have not been
    #         logged typically produce an error message in a browser. For more information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-bestpractices.html#best-practices-transparency">Opting Out of Certificate Transparency Logging</a>.</p>
    #
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) of the private certificate authority (CA) that will be used
    #         to issue the certificate. If you do not provide an ARN and you are trying to request a private
    #         certificate, ACM will attempt to issue a public certificate. For more information about
    #         private CAs, see the <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaWelcome.html">Amazon Web Services Certificate Manager Private Certificate Authority (PCA)</a> user guide. The ARN must have the following form: </p>
    #
    #            <p>
    #               <code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012</code>
    #            </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>One or more resource tags to associate with the certificate.</p>
    #
    # @return [Types::RequestCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.request_certificate(
    #     domain_name: 'DomainName', # required
    #     validation_method: 'EMAIL', # accepts ["EMAIL", "DNS"]
    #     subject_alternative_names: [
    #       'member'
    #     ],
    #     idempotency_token: 'IdempotencyToken',
    #     domain_validation_options: [
    #       {
    #         domain_name: 'DomainName', # required
    #         validation_domain: 'ValidationDomain' # required
    #       }
    #     ],
    #     options: {
    #       certificate_transparency_logging_preference: 'ENABLED' # accepts ["ENABLED", "DISABLED"]
    #     },
    #     certificate_authority_arn: 'CertificateAuthorityArn',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RequestCertificateOutput
    #   resp.data.certificate_arn #=> String
    #
    def request_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RequestCertificateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RequestCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RequestCertificate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::TooManyTagsException, Errors::TagPolicyException, Errors::InvalidTagException, Errors::InvalidDomainValidationOptionsException, Errors::LimitExceededException, Errors::InvalidArnException]),
        data_parser: Parsers::RequestCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RequestCertificate,
        stubs: @stubs,
        params_class: Params::RequestCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :request_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Resends the email that requests domain ownership validation. The domain owner or an
    #       authorized representative must approve the ACM certificate before it can be issued. The
    #       certificate can be approved by clicking a link in the mail to navigate to the Amazon
    #       certificate approval website and then clicking <b>I Approve</b>.
    #       However, the validation email can be blocked by spam filters. Therefore, if you do not receive
    #       the original mail, you can request that the mail be resent within 72 hours of requesting the
    #       ACM certificate. If more than 72 hours have elapsed since your original request or since
    #       your last attempt to resend validation mail, you must request a new certificate. For more
    #       information about setting up your contact email addresses, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/setup-email.html">Configure Email for your Domain</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::ResendValidationEmailInput}.
    #
    # @option params [String] :certificate_arn
    #   <p>String that contains the ARN of the requested certificate. The certificate ARN is
    #         generated and returned by the <a>RequestCertificate</a> action as soon as the
    #         request is made. By default, using this parameter causes email to be sent to all top-level
    #         domains you specified in the certificate request. The ARN must be of the form: </p>
    #
    #            <p>
    #               <code>arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012</code>
    #            </p>
    #
    # @option params [String] :domain
    #   <p>The fully qualified domain name (FQDN) of the certificate that needs to be
    #         validated.</p>
    #
    # @option params [String] :validation_domain
    #   <p>The base validation domain that will act as the suffix of the email addresses that are
    #         used to send the emails. This must be the same as the <code>Domain</code> value or a
    #         superdomain of the <code>Domain</code> value. For example, if you requested a certificate for
    #           <code>site.subdomain.example.com</code> and specify a <b>ValidationDomain</b> of <code>subdomain.example.com</code>, ACM sends email to the
    #         domain registrant, technical contact, and administrative contact in WHOIS and the following
    #         five addresses:</p>
    #            <ul>
    #               <li>
    #                  <p>admin@subdomain.example.com</p>
    #               </li>
    #               <li>
    #                  <p>administrator@subdomain.example.com</p>
    #               </li>
    #               <li>
    #                  <p>hostmaster@subdomain.example.com</p>
    #               </li>
    #               <li>
    #                  <p>postmaster@subdomain.example.com</p>
    #               </li>
    #               <li>
    #                  <p>webmaster@subdomain.example.com</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::ResendValidationEmailOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resend_validation_email(
    #     certificate_arn: 'CertificateArn', # required
    #     domain: 'Domain', # required
    #     validation_domain: 'ValidationDomain' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResendValidationEmailOutput
    #
    def resend_validation_email(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResendValidationEmailInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResendValidationEmailInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResendValidationEmail
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidStateException, Errors::InvalidDomainValidationOptionsException, Errors::InvalidArnException]),
        data_parser: Parsers::ResendValidationEmail
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResendValidationEmail,
        stubs: @stubs,
        params_class: Params::ResendValidationEmailOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :resend_validation_email
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a certificate. Currently, you can use this function to specify whether to opt in
    #       to or out of recording your certificate in a certificate transparency log. For more
    #       information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-bestpractices.html#best-practices-transparency"> Opting Out of
    #         Certificate Transparency Logging</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateCertificateOptionsInput}.
    #
    # @option params [String] :certificate_arn
    #   <p>ARN of the requested certificate to update. This must be of the form:</p>
    #            <p>
    #               <code>arn:aws:acm:us-east-1:<i>account</i>:certificate/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>
    #            </p>
    #
    # @option params [CertificateOptions] :options
    #   <p>Use to update the options for your certificate. Currently, you can specify whether to add
    #         your certificate to a transparency log. Certificate transparency makes it possible to detect
    #         SSL/TLS certificates that have been mistakenly or maliciously issued. Certificates that have
    #         not been logged typically produce an error message in a browser. </p>
    #
    # @return [Types::UpdateCertificateOptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_certificate_options(
    #     certificate_arn: 'CertificateArn', # required
    #     options: {
    #       certificate_transparency_logging_preference: 'ENABLED' # accepts ["ENABLED", "DISABLED"]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateCertificateOptionsOutput
    #
    def update_certificate_options(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateCertificateOptionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateCertificateOptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateCertificateOptions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidStateException, Errors::LimitExceededException, Errors::InvalidArnException]),
        data_parser: Parsers::UpdateCertificateOptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateCertificateOptions,
        stubs: @stubs,
        params_class: Params::UpdateCertificateOptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_certificate_options
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
