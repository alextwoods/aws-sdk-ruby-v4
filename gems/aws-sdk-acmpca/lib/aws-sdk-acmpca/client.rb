# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::ACMPCA
  # An API client for ACMPrivateCA
  # See {#initialize} for a full list of supported configuration options
  # <p>This is the <i>Certificate Manager Private Certificate Authority (PCA) API Reference</i>. It provides descriptions,
  # 			syntax, and usage examples for each of the actions and data types involved in creating
  # 			and managing a private certificate authority (CA) for your organization.</p>
  # 		       <p>The documentation for each action shows the API request parameters and the JSON
  # 			response. Alternatively, you can use one of the Amazon Web Services SDKs to access an API that is
  # 			tailored to the programming language or platform that you prefer. For more information,
  # 			see <a href="https://aws.amazon.com/tools/#SDKs">Amazon Web Services SDKs</a>.</p>
  # 		       <p>Each ACM Private CA API operation has a quota that determines the number of times the
  # 			operation can be called per second. ACM Private CA throttles API requests at different rates
  # 			depending on the operation. Throttling means that ACM Private CA rejects an otherwise valid
  # 			request because the request exceeds the operation's quota for the number of requests per
  # 			second. When a request is throttled, ACM Private CA returns a <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/CommonErrors.html">ThrottlingException</a> error. ACM Private CA does not guarantee a minimum request
  # 			rate for APIs. </p>
  #
  # 		       <p>To see an up-to-date list of your ACM Private CA quotas, or to request a quota increase,
  # 			log into your Amazon Web Services account and visit the <a href="https://console.aws.amazon.com/servicequotas/">Service Quotas</a>
  # 			console.</p>
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
    def initialize(config = AWS::SDK::ACMPCA::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a root or subordinate private certificate authority (CA). You must specify the
    # 			CA configuration, an optional configuration for Online Certificate Status Protocol
    # 			(OCSP) and/or a certificate revocation list (CRL), the CA type, and an optional
    # 			idempotency token to avoid accidental creation of multiple CAs. The CA configuration
    # 			specifies the name of the algorithm and key size to be used to create the CA private
    # 			key, the type of signing algorithm that the CA uses, and X.500 subject information. The
    # 			OCSP configuration can optionally specify a custom URL for the OCSP responder. The CRL
    # 			configuration specifies the CRL expiration period in days (the validity period of the
    # 			CRL), the Amazon S3 bucket that will contain the CRL, and a CNAME alias for the S3
    # 			bucket that is included in certificates issued by the CA. If successful, this action
    # 			returns the Amazon Resource Name (ARN) of the CA.</p>
    # 		       <p>ACM Private CA assets that are stored in Amazon S3 can be protected with encryption.
    #   For more information, see <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaCreateCa.html#crl-encryption">Encrypting Your
    # 			CRLs</a>.</p>
    # 		       <note>
    #                         <p>Both PCA and the IAM principal must have permission to write to
    #                         the S3 bucket that you specify. If the IAM principal making the call
    #                         does not have permission to write to the bucket, then an exception is
    #                         thrown. For more information, see <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/crl-planning.html#s3-policies">Access
    # 						policies for CRLs in Amazon S3</a>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateCertificateAuthorityInput}.
    #
    # @option params [CertificateAuthorityConfiguration] :certificate_authority_configuration
    #   <p>Name and bit size of the private key algorithm, the name of the signing algorithm, and
    #   			X.500 certificate subject information.</p>
    #
    # @option params [RevocationConfiguration] :revocation_configuration
    #   <p>Contains information to enable Online Certificate Status Protocol (OCSP) support, to
    #   			enable a certificate revocation list (CRL), to enable both, or to enable neither. The
    #   			default is for both certificate validation mechanisms to be disabled. For more
    #   			information, see the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_OcspConfiguration.html">OcspConfiguration</a> and <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CrlConfiguration.html">CrlConfiguration</a> types.</p>
    #
    # @option params [String] :certificate_authority_type
    #   <p>The type of the certificate authority.</p>
    #
    # @option params [String] :idempotency_token
    #   <p>Custom string that can be used to distinguish between calls to the <b>CreateCertificateAuthority</b> action. Idempotency tokens for
    #   				<b>CreateCertificateAuthority</b> time out after five
    #   			minutes. Therefore, if you call <b>CreateCertificateAuthority</b> multiple times with the same idempotency
    #   			token within five minutes, ACM Private CA recognizes that you are requesting only
    #   			certificate authority and will issue only one. If you change the idempotency token for
    #   			each call, PCA recognizes that you are requesting multiple certificate
    #   			authorities.</p>
    #
    # @option params [String] :key_storage_security_standard
    #   <p>Specifies a
    #   			cryptographic key management compliance standard used for handling CA keys.</p>
    #   		       <p>Default: FIPS_140_2_LEVEL_3_OR_HIGHER</p>
    #   		       <p>Note: <code>FIPS_140_2_LEVEL_3_OR_HIGHER</code> is not supported in Region
    #   			ap-northeast-3. When creating a CA in the ap-northeast-3, you must provide
    #   				<code>FIPS_140_2_LEVEL_2_OR_HIGHER</code> as the argument for
    #   				<code>KeyStorageSecurityStandard</code>. Failure to do this results in an
    #   				<code>InvalidArgsException</code> with the message, "A certificate authority cannot
    #   			be created in this region with the specified security standard."</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Key-value pairs that will be attached to the new private CA. You can associate up to
    #   			50 tags with a private CA. For information using tags with IAM to manage permissions,
    #   			see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html">Controlling Access Using IAM Tags</a>.</p>
    #
    # @return [Types::CreateCertificateAuthorityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_certificate_authority(
    #     certificate_authority_configuration: {
    #       key_algorithm: 'RSA_2048', # required - accepts ["RSA_2048", "RSA_4096", "EC_prime256v1", "EC_secp384r1"]
    #       signing_algorithm: 'SHA256WITHECDSA', # required - accepts ["SHA256WITHECDSA", "SHA384WITHECDSA", "SHA512WITHECDSA", "SHA256WITHRSA", "SHA384WITHRSA", "SHA512WITHRSA"]
    #       subject: {
    #         country: 'Country',
    #         organization: 'Organization',
    #         organizational_unit: 'OrganizationalUnit',
    #         distinguished_name_qualifier: 'DistinguishedNameQualifier',
    #         state: 'State',
    #         common_name: 'CommonName',
    #         serial_number: 'SerialNumber',
    #         locality: 'Locality',
    #         title: 'Title',
    #         surname: 'Surname',
    #         given_name: 'GivenName',
    #         initials: 'Initials',
    #         pseudonym: 'Pseudonym',
    #         generation_qualifier: 'GenerationQualifier',
    #         custom_attributes: [
    #           {
    #             object_identifier: 'ObjectIdentifier', # required
    #             value: 'Value' # required
    #           }
    #         ]
    #       }, # required
    #       csr_extensions: {
    #         key_usage: {
    #           digital_signature: false,
    #           non_repudiation: false,
    #           key_encipherment: false,
    #           data_encipherment: false,
    #           key_agreement: false,
    #           key_cert_sign: false,
    #           crl_sign: false,
    #           encipher_only: false,
    #           decipher_only: false
    #         },
    #         subject_information_access: [
    #           {
    #             access_method: {
    #               custom_object_identifier: 'CustomObjectIdentifier',
    #               access_method_type: 'CA_REPOSITORY' # accepts ["CA_REPOSITORY", "RESOURCE_PKI_MANIFEST", "RESOURCE_PKI_NOTIFY"]
    #             }, # required
    #             access_location: {
    #               other_name: {
    #                 type_id: 'TypeId', # required
    #                 value: 'Value' # required
    #               },
    #               rfc822_name: 'Rfc822Name',
    #               dns_name: 'DnsName',
    #               edi_party_name: {
    #                 party_name: 'PartyName', # required
    #                 name_assigner: 'NameAssigner'
    #               },
    #               uniform_resource_identifier: 'UniformResourceIdentifier',
    #               ip_address: 'IpAddress',
    #               registered_id: 'RegisteredId'
    #             } # required
    #           }
    #         ]
    #       }
    #     }, # required
    #     revocation_configuration: {
    #       crl_configuration: {
    #         enabled: false, # required
    #         expiration_in_days: 1,
    #         custom_cname: 'CustomCname',
    #         s3_bucket_name: 'S3BucketName',
    #         s3_object_acl: 'PUBLIC_READ' # accepts ["PUBLIC_READ", "BUCKET_OWNER_FULL_CONTROL"]
    #       },
    #       ocsp_configuration: {
    #         enabled: false, # required
    #         ocsp_custom_cname: 'OcspCustomCname'
    #       }
    #     },
    #     certificate_authority_type: 'ROOT', # required - accepts ["ROOT", "SUBORDINATE"]
    #     idempotency_token: 'IdempotencyToken',
    #     key_storage_security_standard: 'FIPS_140_2_LEVEL_2_OR_HIGHER', # accepts ["FIPS_140_2_LEVEL_2_OR_HIGHER", "FIPS_140_2_LEVEL_3_OR_HIGHER"]
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
    #   resp.data #=> Types::CreateCertificateAuthorityOutput
    #   resp.data.certificate_authority_arn #=> String
    #
    def create_certificate_authority(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCertificateAuthorityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCertificateAuthorityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCertificateAuthority
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::InvalidPolicyException, Errors::InvalidTagException, Errors::InvalidArgsException]),
        data_parser: Parsers::CreateCertificateAuthority
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCertificateAuthority,
        stubs: @stubs,
        params_class: Params::CreateCertificateAuthorityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_certificate_authority
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an audit report that lists every time that your CA private key is used. The
    # 			report is saved in the Amazon S3 bucket that you specify on input. The <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_IssueCertificate.html">IssueCertificate</a> and <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_RevokeCertificate.html">RevokeCertificate</a> actions use
    # 			the private key. </p>
    # 		       <note>
    #                         <p>Both PCA and the IAM principal must have permission to write to
    #                         the S3 bucket that you specify. If the IAM principal making the call
    #                         does not have permission to write to the bucket, then an exception is
    #                         thrown. For more information, see <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/crl-planning.html#s3-policies">Access
    # 						policies for CRLs in Amazon S3</a>.</p>
    #          </note>
    # 		       <p>ACM Private CA assets that are stored in Amazon S3 can be protected with encryption.
    #   For more information, see <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaAuditReport.html#audit-report-encryption">Encrypting Your Audit
    # 				Reports</a>.</p>
    # 		       <note>
    # 			         <p>You can generate a maximum of one report every 30 minutes.</p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::CreateCertificateAuthorityAuditReportInput}.
    #
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) of the CA to be audited. This is of the form:</p>
    #   		       <p>
    #               <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>.</p>
    #
    # @option params [String] :s3_bucket_name
    #   <p>The name of the S3 bucket that will contain the audit report.</p>
    #
    # @option params [String] :audit_report_response_format
    #   <p>The format in which to create the report. This can be either <b>JSON</b> or <b>CSV</b>.</p>
    #
    # @return [Types::CreateCertificateAuthorityAuditReportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_certificate_authority_audit_report(
    #     certificate_authority_arn: 'CertificateAuthorityArn', # required
    #     s3_bucket_name: 'S3BucketName', # required
    #     audit_report_response_format: 'JSON' # required - accepts ["JSON", "CSV"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateCertificateAuthorityAuditReportOutput
    #   resp.data.audit_report_id #=> String
    #   resp.data.s3_key #=> String
    #
    def create_certificate_authority_audit_report(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCertificateAuthorityAuditReportInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCertificateAuthorityAuditReportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCertificateAuthorityAuditReport
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestFailedException, Errors::InvalidStateException, Errors::InvalidArnException, Errors::RequestInProgressException, Errors::ResourceNotFoundException, Errors::InvalidArgsException]),
        data_parser: Parsers::CreateCertificateAuthorityAuditReport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCertificateAuthorityAuditReport,
        stubs: @stubs,
        params_class: Params::CreateCertificateAuthorityAuditReportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_certificate_authority_audit_report
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Grants one or more permissions on a private CA to the Certificate Manager (ACM) service
    # 			principal (<code>acm.amazonaws.com</code>). These permissions allow ACM to issue and
    # 			renew ACM certificates that reside in the same Amazon Web Services account as the CA.</p>
    # 		       <p>You can list current permissions with the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListPermissions.html">ListPermissions</a> action and
    # 			revoke them with the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DeletePermission.html">DeletePermission</a> action.</p>
    # 		       <p class="title">
    #             <b>About Permissions</b>
    #          </p>
    #          <ul>
    #             <li>
    # 			            <p>If the private CA and the certificates it issues reside in the same
    # 			account, you can use <code>CreatePermission</code> to grant permissions for ACM to
    # 			carry out automatic certificate renewals.</p>
    # 		          </li>
    #             <li>
    # 			            <p>For automatic certificate renewal to succeed, the ACM service principal
    # 			needs permissions to create, retrieve, and list certificates.</p>
    # 		          </li>
    #             <li>
    # 			            <p>If the private CA and the ACM certificates reside in different accounts,
    # 			then permissions cannot be used to enable automatic renewals. Instead,
    # 			the ACM certificate owner must set up a resource-based policy to enable
    # 			cross-account issuance and renewals. For more information, see
    # 			<a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/pca-rbp.html">Using a Resource
    # 			Based Policy with ACM Private CA</a>.</p>
    # 		          </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreatePermissionInput}.
    #
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) of the CA that grants the permissions. You can find the
    #   			ARN by calling the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html">ListCertificateAuthorities</a> action. This must have the following form: </p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>.
    #   		</p>
    #
    # @option params [String] :principal
    #   <p>The Amazon Web Services service or identity that receives the permission. At this time, the only
    #   			valid principal is <code>acm.amazonaws.com</code>.</p>
    #
    # @option params [String] :source_account
    #   <p>The ID of the calling account.</p>
    #
    # @option params [Array<String>] :actions
    #   <p>The actions that the specified Amazon Web Services service principal can use. These include
    #   				<code>IssueCertificate</code>, <code>GetCertificate</code>, and
    #   				<code>ListPermissions</code>.</p>
    #
    # @return [Types::CreatePermissionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_permission(
    #     certificate_authority_arn: 'CertificateAuthorityArn', # required
    #     principal: 'Principal', # required
    #     source_account: 'SourceAccount',
    #     actions: [
    #       'IssueCertificate' # accepts ["IssueCertificate", "GetCertificate", "ListPermissions"]
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePermissionOutput
    #
    def create_permission(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePermissionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePermissionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePermission
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestFailedException, Errors::InvalidStateException, Errors::InvalidArnException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::PermissionAlreadyExistsException]),
        data_parser: Parsers::CreatePermission
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePermission,
        stubs: @stubs,
        params_class: Params::CreatePermissionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_permission
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a private certificate authority (CA). You must provide the Amazon Resource
    # 			Name (ARN) of the private CA that you want to delete. You can find the ARN by calling
    # 			the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html">ListCertificateAuthorities</a> action. </p>
    # 		       <note>
    # 			         <p>Deleting a CA will invalidate other CAs and certificates below it in your CA
    # 				hierarchy.</p>
    # 		       </note>
    # 		       <p>Before you can delete a CA that you have created and activated, you must disable it.
    # 			To do this, call the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html">UpdateCertificateAuthority</a> action and set the <b>CertificateAuthorityStatus</b> parameter to <code>DISABLED</code>. </p>
    # 		       <p>Additionally, you can delete a CA if you are waiting for it to be created (that is,
    # 			the status of the CA is <code>CREATING</code>). You can also delete it if the CA has
    # 			been created but you haven't yet imported the signed certificate into ACM Private CA (that
    # 			is, the status of the CA is <code>PENDING_CERTIFICATE</code>). </p>
    # 		       <p>When you successfully call <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DeleteCertificateAuthority.html">DeleteCertificateAuthority</a>, the CA's status changes to
    # 			<code>DELETED</code>. However, the CA won't be permanently deleted until the restoration
    # 			period has passed. By default, if you do not set the
    # 				<code>PermanentDeletionTimeInDays</code> parameter, the CA remains restorable for 30
    # 			days. You can set the parameter from 7 to 30 days. The <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DescribeCertificateAuthority.html">DescribeCertificateAuthority</a> action returns the time remaining in the
    # 			restoration window of a private CA in the <code>DELETED</code> state. To restore an
    # 			eligible CA, call the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_RestoreCertificateAuthority.html">RestoreCertificateAuthority</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCertificateAuthorityInput}.
    #
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a>. This must have the following form: </p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>.
    #   		</p>
    #
    # @option params [Integer] :permanent_deletion_time_in_days
    #   <p>The number of days to make a CA restorable after it has been deleted. This can be
    #   			anywhere from 7 to 30 days, with 30 being the default.</p>
    #
    # @return [Types::DeleteCertificateAuthorityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_certificate_authority(
    #     certificate_authority_arn: 'CertificateAuthorityArn', # required
    #     permanent_deletion_time_in_days: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCertificateAuthorityOutput
    #
    def delete_certificate_authority(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCertificateAuthorityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCertificateAuthorityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCertificateAuthority
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InvalidStateException, Errors::InvalidArnException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteCertificateAuthority
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCertificateAuthority,
        stubs: @stubs,
        params_class: Params::DeleteCertificateAuthorityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_certificate_authority
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Revokes permissions on a private CA granted to the Certificate Manager (ACM) service principal
    # 			(acm.amazonaws.com). </p>
    # 		       <p>These permissions allow ACM to issue and renew ACM certificates that reside in the
    # 			same Amazon Web Services account as the CA. If you revoke these permissions, ACM will no longer
    # 			renew the affected certificates automatically.</p>
    # 		       <p>Permissions can be granted with the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreatePermission.html">CreatePermission</a> action and
    # 			listed with the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListPermissions.html">ListPermissions</a> action. </p>
    # 		       <p class="title">
    #             <b>About Permissions</b>
    #          </p>
    #          <ul>
    #             <li>
    # 			            <p>If the private CA and the certificates it issues reside in the same
    # 			account, you can use <code>CreatePermission</code> to grant permissions for ACM to
    # 			carry out automatic certificate renewals.</p>
    # 		          </li>
    #             <li>
    # 			            <p>For automatic certificate renewal to succeed, the ACM service principal
    # 			needs permissions to create, retrieve, and list certificates.</p>
    # 		          </li>
    #             <li>
    # 			            <p>If the private CA and the ACM certificates reside in different accounts,
    # 			then permissions cannot be used to enable automatic renewals. Instead,
    # 			the ACM certificate owner must set up a resource-based policy to enable
    # 			cross-account issuance and renewals. For more information, see
    # 			<a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/pca-rbp.html">Using a Resource
    # 			Based Policy with ACM Private CA</a>.</p>
    # 		          </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeletePermissionInput}.
    #
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Number (ARN) of the private CA that issued the permissions. You
    #   			can find the CA's ARN by calling the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html">ListCertificateAuthorities</a> action. This must have the following form: </p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>.
    #   		</p>
    #
    # @option params [String] :principal
    #   <p>The Amazon Web Services service or identity that will have its CA permissions revoked. At this time,
    #   			the only valid service principal is <code>acm.amazonaws.com</code>
    #            </p>
    #
    # @option params [String] :source_account
    #   <p>The Amazon Web Services account that calls this action.</p>
    #
    # @return [Types::DeletePermissionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_permission(
    #     certificate_authority_arn: 'CertificateAuthorityArn', # required
    #     principal: 'Principal', # required
    #     source_account: 'SourceAccount'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePermissionOutput
    #
    def delete_permission(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePermissionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePermissionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePermission
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestFailedException, Errors::InvalidStateException, Errors::InvalidArnException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeletePermission
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePermission,
        stubs: @stubs,
        params_class: Params::DeletePermissionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_permission
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the resource-based policy attached to a private CA. Deletion will remove any
    # 			access that the policy has granted. If there is no policy attached to the private CA,
    # 			this action will return successful.</p>
    # 		       <p>If you delete a policy that was applied through Amazon Web Services Resource Access Manager (RAM),
    # 			the CA will be removed from all shares in which it was included. </p>
    # 		       <p>The Certificate Manager Service Linked Role that the policy supports is not affected when you
    # 			delete the policy. </p>
    # 		       <p>The current policy can be shown with <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_GetPolicy.html">GetPolicy</a> and updated with <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_PutPolicy.html">PutPolicy</a>.</p>
    # 		       <p class="title">
    #             <b>About Policies</b>
    #          </p>
    #          <ul>
    #             <li>
    # 			            <p>A policy grants access on a private CA to an Amazon Web Services customer account, to Amazon Web Services Organizations, or to
    # 			an Amazon Web Services Organizations unit. Policies are under the control of a CA administrator. For more information,
    # 			see <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/pca-rbp.html">Using a Resource Based Policy with ACM Private CA</a>.</p>
    # 		          </li>
    #             <li>
    # 			            <p>A policy permits a user of Certificate Manager (ACM) to issue ACM certificates
    # 			signed by a CA in another account.</p>			
    # 		          </li>
    #             <li>
    # 			            <p>For ACM to manage automatic renewal of these certificates,
    # 			the ACM user must configure a Service Linked Role (SLR). The SLR allows
    # 			the ACM service to assume the identity of the user, subject to confirmation against the
    # 			ACM Private CA policy. For more information, see
    # 			<a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-slr.html">Using a
    #             Service Linked Role with ACM</a>.</p>			
    # 		          </li>
    #             <li>
    # 			            <p>Updates made in Amazon Web Services Resource Manager (RAM) are reflected in policies. For more information,
    # 			see <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/pca-ram.html">Attach a Policy for Cross-Account
    # 			Access</a>.</p>				
    # 		          </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeletePolicyInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Number (ARN) of the private CA that will have its policy deleted.
    #   			You can find the CA's ARN by calling the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html">ListCertificateAuthorities</a> action. The ARN value must have the form
    #   				<code>arn:aws:acm-pca:region:account:certificate-authority/01234567-89ab-cdef-0123-0123456789ab</code>.
    #   		</p>
    #
    # @return [Types::DeletePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_policy(
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePolicyOutput
    #
    def delete_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::RequestFailedException, Errors::InvalidStateException, Errors::InvalidArnException, Errors::LockoutPreventedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeletePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePolicy,
        stubs: @stubs,
        params_class: Params::DeletePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists information about your private certificate authority (CA) or one that has been
    # 			shared with you. You specify the private CA on input by its ARN (Amazon Resource Name).
    # 			The output contains the status of your CA. This can be any of the following: </p>
    # 		       <ul>
    #             <li>
    # 				           <p>
    #                   <code>CREATING</code> - ACM Private CA is creating your private certificate
    # 					authority.</p>
    # 			         </li>
    #             <li>
    # 				           <p>
    #                   <code>PENDING_CERTIFICATE</code> - The certificate is pending. You must use
    # 					your ACM Private CA-hosted or on-premises root or subordinate CA to sign your
    # 					private CA CSR and then import it into PCA. </p>
    # 			         </li>
    #             <li>
    # 				           <p>
    #                   <code>ACTIVE</code> - Your private CA is active.</p>
    # 			         </li>
    #             <li>
    # 				           <p>
    #                   <code>DISABLED</code> - Your private CA has been disabled.</p>
    # 			         </li>
    #             <li>
    # 				           <p>
    #                   <code>EXPIRED</code> - Your private CA certificate has expired.</p>
    # 			         </li>
    #             <li>
    # 				           <p>
    #                   <code>FAILED</code> - Your private CA has failed. Your CA can fail because of
    # 					problems such a network outage or back-end Amazon Web Services failure or other errors. A
    # 					failed CA can never return to the pending state. You must create a new CA.
    # 				</p>
    # 			         </li>
    #             <li>
    # 				           <p>
    #                   <code>DELETED</code> - Your private CA is within the restoration period, after
    # 					which it is permanently deleted. The length of time remaining in the CA's
    # 					restoration period is also included in this action's output.</p>
    # 			         </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DescribeCertificateAuthorityInput}.
    #
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a>. This must be of the form: </p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>.
    #   		</p>
    #
    # @return [Types::DescribeCertificateAuthorityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_certificate_authority(
    #     certificate_authority_arn: 'CertificateAuthorityArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCertificateAuthorityOutput
    #   resp.data.certificate_authority #=> Types::CertificateAuthority
    #   resp.data.certificate_authority.arn #=> String
    #   resp.data.certificate_authority.owner_account #=> String
    #   resp.data.certificate_authority.created_at #=> Time
    #   resp.data.certificate_authority.last_state_change_at #=> Time
    #   resp.data.certificate_authority.type #=> String, one of ["ROOT", "SUBORDINATE"]
    #   resp.data.certificate_authority.serial #=> String
    #   resp.data.certificate_authority.status #=> String, one of ["CREATING", "PENDING_CERTIFICATE", "ACTIVE", "DELETED", "DISABLED", "EXPIRED", "FAILED"]
    #   resp.data.certificate_authority.not_before #=> Time
    #   resp.data.certificate_authority.not_after #=> Time
    #   resp.data.certificate_authority.failure_reason #=> String, one of ["REQUEST_TIMED_OUT", "UNSUPPORTED_ALGORITHM", "OTHER"]
    #   resp.data.certificate_authority.certificate_authority_configuration #=> Types::CertificateAuthorityConfiguration
    #   resp.data.certificate_authority.certificate_authority_configuration.key_algorithm #=> String, one of ["RSA_2048", "RSA_4096", "EC_prime256v1", "EC_secp384r1"]
    #   resp.data.certificate_authority.certificate_authority_configuration.signing_algorithm #=> String, one of ["SHA256WITHECDSA", "SHA384WITHECDSA", "SHA512WITHECDSA", "SHA256WITHRSA", "SHA384WITHRSA", "SHA512WITHRSA"]
    #   resp.data.certificate_authority.certificate_authority_configuration.subject #=> Types::ASN1Subject
    #   resp.data.certificate_authority.certificate_authority_configuration.subject.country #=> String
    #   resp.data.certificate_authority.certificate_authority_configuration.subject.organization #=> String
    #   resp.data.certificate_authority.certificate_authority_configuration.subject.organizational_unit #=> String
    #   resp.data.certificate_authority.certificate_authority_configuration.subject.distinguished_name_qualifier #=> String
    #   resp.data.certificate_authority.certificate_authority_configuration.subject.state #=> String
    #   resp.data.certificate_authority.certificate_authority_configuration.subject.common_name #=> String
    #   resp.data.certificate_authority.certificate_authority_configuration.subject.serial_number #=> String
    #   resp.data.certificate_authority.certificate_authority_configuration.subject.locality #=> String
    #   resp.data.certificate_authority.certificate_authority_configuration.subject.title #=> String
    #   resp.data.certificate_authority.certificate_authority_configuration.subject.surname #=> String
    #   resp.data.certificate_authority.certificate_authority_configuration.subject.given_name #=> String
    #   resp.data.certificate_authority.certificate_authority_configuration.subject.initials #=> String
    #   resp.data.certificate_authority.certificate_authority_configuration.subject.pseudonym #=> String
    #   resp.data.certificate_authority.certificate_authority_configuration.subject.generation_qualifier #=> String
    #   resp.data.certificate_authority.certificate_authority_configuration.subject.custom_attributes #=> Array<CustomAttribute>
    #   resp.data.certificate_authority.certificate_authority_configuration.subject.custom_attributes[0] #=> Types::CustomAttribute
    #   resp.data.certificate_authority.certificate_authority_configuration.subject.custom_attributes[0].object_identifier #=> String
    #   resp.data.certificate_authority.certificate_authority_configuration.subject.custom_attributes[0].value #=> String
    #   resp.data.certificate_authority.certificate_authority_configuration.csr_extensions #=> Types::CsrExtensions
    #   resp.data.certificate_authority.certificate_authority_configuration.csr_extensions.key_usage #=> Types::KeyUsage
    #   resp.data.certificate_authority.certificate_authority_configuration.csr_extensions.key_usage.digital_signature #=> Boolean
    #   resp.data.certificate_authority.certificate_authority_configuration.csr_extensions.key_usage.non_repudiation #=> Boolean
    #   resp.data.certificate_authority.certificate_authority_configuration.csr_extensions.key_usage.key_encipherment #=> Boolean
    #   resp.data.certificate_authority.certificate_authority_configuration.csr_extensions.key_usage.data_encipherment #=> Boolean
    #   resp.data.certificate_authority.certificate_authority_configuration.csr_extensions.key_usage.key_agreement #=> Boolean
    #   resp.data.certificate_authority.certificate_authority_configuration.csr_extensions.key_usage.key_cert_sign #=> Boolean
    #   resp.data.certificate_authority.certificate_authority_configuration.csr_extensions.key_usage.crl_sign #=> Boolean
    #   resp.data.certificate_authority.certificate_authority_configuration.csr_extensions.key_usage.encipher_only #=> Boolean
    #   resp.data.certificate_authority.certificate_authority_configuration.csr_extensions.key_usage.decipher_only #=> Boolean
    #   resp.data.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access #=> Array<AccessDescription>
    #   resp.data.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0] #=> Types::AccessDescription
    #   resp.data.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_method #=> Types::AccessMethod
    #   resp.data.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_method.custom_object_identifier #=> String
    #   resp.data.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_method.access_method_type #=> String, one of ["CA_REPOSITORY", "RESOURCE_PKI_MANIFEST", "RESOURCE_PKI_NOTIFY"]
    #   resp.data.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location #=> Types::GeneralName
    #   resp.data.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.other_name #=> Types::OtherName
    #   resp.data.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.other_name.type_id #=> String
    #   resp.data.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.other_name.value #=> String
    #   resp.data.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.rfc822_name #=> String
    #   resp.data.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.dns_name #=> String
    #   resp.data.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name #=> Types::ASN1Subject
    #   resp.data.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.edi_party_name #=> Types::EdiPartyName
    #   resp.data.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.edi_party_name.party_name #=> String
    #   resp.data.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.edi_party_name.name_assigner #=> String
    #   resp.data.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.uniform_resource_identifier #=> String
    #   resp.data.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.ip_address #=> String
    #   resp.data.certificate_authority.certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.registered_id #=> String
    #   resp.data.certificate_authority.revocation_configuration #=> Types::RevocationConfiguration
    #   resp.data.certificate_authority.revocation_configuration.crl_configuration #=> Types::CrlConfiguration
    #   resp.data.certificate_authority.revocation_configuration.crl_configuration.enabled #=> Boolean
    #   resp.data.certificate_authority.revocation_configuration.crl_configuration.expiration_in_days #=> Integer
    #   resp.data.certificate_authority.revocation_configuration.crl_configuration.custom_cname #=> String
    #   resp.data.certificate_authority.revocation_configuration.crl_configuration.s3_bucket_name #=> String
    #   resp.data.certificate_authority.revocation_configuration.crl_configuration.s3_object_acl #=> String, one of ["PUBLIC_READ", "BUCKET_OWNER_FULL_CONTROL"]
    #   resp.data.certificate_authority.revocation_configuration.ocsp_configuration #=> Types::OcspConfiguration
    #   resp.data.certificate_authority.revocation_configuration.ocsp_configuration.enabled #=> Boolean
    #   resp.data.certificate_authority.revocation_configuration.ocsp_configuration.ocsp_custom_cname #=> String
    #   resp.data.certificate_authority.restorable_until #=> Time
    #   resp.data.certificate_authority.key_storage_security_standard #=> String, one of ["FIPS_140_2_LEVEL_2_OR_HIGHER", "FIPS_140_2_LEVEL_3_OR_HIGHER"]
    #
    def describe_certificate_authority(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCertificateAuthorityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCertificateAuthorityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCertificateAuthority
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeCertificateAuthority
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCertificateAuthority,
        stubs: @stubs,
        params_class: Params::DescribeCertificateAuthorityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_certificate_authority
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists information about a specific audit report created by calling the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html">CreateCertificateAuthorityAuditReport</a> action. Audit information is created
    # 			every time the certificate authority (CA) private key is used. The private key is used
    # 			when you call the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_IssueCertificate.html">IssueCertificate</a> action or the
    # 				<a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_RevokeCertificate.html">RevokeCertificate</a> action. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCertificateAuthorityAuditReportInput}.
    #
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) of the private CA. This must be of the form:</p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>.
    #   		</p>
    #
    # @option params [String] :audit_report_id
    #   <p>The report ID returned by calling the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html">CreateCertificateAuthorityAuditReport</a> action.</p>
    #
    # @return [Types::DescribeCertificateAuthorityAuditReportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_certificate_authority_audit_report(
    #     certificate_authority_arn: 'CertificateAuthorityArn', # required
    #     audit_report_id: 'AuditReportId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCertificateAuthorityAuditReportOutput
    #   resp.data.audit_report_status #=> String, one of ["CREATING", "SUCCESS", "FAILED"]
    #   resp.data.s3_bucket_name #=> String
    #   resp.data.s3_key #=> String
    #   resp.data.created_at #=> Time
    #
    def describe_certificate_authority_audit_report(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCertificateAuthorityAuditReportInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCertificateAuthorityAuditReportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCertificateAuthorityAuditReport
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidArnException, Errors::ResourceNotFoundException, Errors::InvalidArgsException]),
        data_parser: Parsers::DescribeCertificateAuthorityAuditReport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCertificateAuthorityAuditReport,
        stubs: @stubs,
        params_class: Params::DescribeCertificateAuthorityAuditReportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_certificate_authority_audit_report
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a certificate from your private CA or one that has been shared with you. The
    # 			ARN of the certificate is returned when you call the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_IssueCertificate.html">IssueCertificate</a> action. You
    # 			must specify both the ARN of your private CA and the ARN of the issued certificate when
    # 			calling the <b>GetCertificate</b> action. You can retrieve the
    # 			certificate if it is in the <b>ISSUED</b> state. You can call
    # 			the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html">CreateCertificateAuthorityAuditReport</a> action to create a report that
    # 			contains information about all of the certificates issued and revoked by your private
    # 			CA. </p>
    #
    # @param [Hash] params
    #   See {Types::GetCertificateInput}.
    #
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a>. This must be of the form: </p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>.
    #   		</p>
    #
    # @option params [String] :certificate_arn
    #   <p>The ARN of the issued certificate. The ARN contains the certificate serial number and
    #   			must be in the following form: </p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>/certificate/<i>286535153982981100925020015808220737245</i>
    #               </code>
    #   		       </p>
    #
    # @return [Types::GetCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_certificate(
    #     certificate_authority_arn: 'CertificateAuthorityArn', # required
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
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestFailedException, Errors::InvalidStateException, Errors::InvalidArnException, Errors::RequestInProgressException, Errors::ResourceNotFoundException]),
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

    # <p>Retrieves the certificate and certificate chain for your private certificate authority
    # 			(CA) or one that has been shared with you. Both the certificate and the chain are base64
    # 			PEM-encoded. The chain does not include the CA certificate. Each certificate in the
    # 			chain signs the one before it. </p>
    #
    # @param [Hash] params
    #   See {Types::GetCertificateAuthorityCertificateInput}.
    #
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) of your private CA. This is of the form:</p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>.
    #   		</p>
    #
    # @return [Types::GetCertificateAuthorityCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_certificate_authority_certificate(
    #     certificate_authority_arn: 'CertificateAuthorityArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCertificateAuthorityCertificateOutput
    #   resp.data.certificate #=> String
    #   resp.data.certificate_chain #=> String
    #
    def get_certificate_authority_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCertificateAuthorityCertificateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCertificateAuthorityCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCertificateAuthorityCertificate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidStateException, Errors::InvalidArnException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetCertificateAuthorityCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCertificateAuthorityCertificate,
        stubs: @stubs,
        params_class: Params::GetCertificateAuthorityCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_certificate_authority_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the certificate signing request (CSR) for your private certificate authority
    # 			(CA). The CSR is created when you call the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a> action. Sign the CSR with your ACM Private CA-hosted
    # 			or on-premises root or subordinate CA. Then import the signed certificate back into
    # 			ACM Private CA by calling the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ImportCertificateAuthorityCertificate.html">ImportCertificateAuthorityCertificate</a> action. The CSR is returned as a
    # 			base64 PEM-encoded string. </p>
    #
    # @param [Hash] params
    #   See {Types::GetCertificateAuthorityCsrInput}.
    #
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a> action. This must be of the form: </p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>
    #   		       </p>
    #
    # @return [Types::GetCertificateAuthorityCsrOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_certificate_authority_csr(
    #     certificate_authority_arn: 'CertificateAuthorityArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCertificateAuthorityCsrOutput
    #   resp.data.csr #=> String
    #
    def get_certificate_authority_csr(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCertificateAuthorityCsrInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCertificateAuthorityCsrInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCertificateAuthorityCsr
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestFailedException, Errors::InvalidStateException, Errors::InvalidArnException, Errors::RequestInProgressException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetCertificateAuthorityCsr
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCertificateAuthorityCsr,
        stubs: @stubs,
        params_class: Params::GetCertificateAuthorityCsrOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_certificate_authority_csr
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the resource-based policy attached to a private CA. If either the private CA
    # 			resource or the policy cannot be found, this action returns a
    # 				<code>ResourceNotFoundException</code>. </p>
    # 		       <p>The policy can be attached or updated with <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_PutPolicy.html">PutPolicy</a> and removed with <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DeletePolicy.html">DeletePolicy</a>.</p>
    # 		       <p class="title">
    #             <b>About Policies</b>
    #          </p>
    #          <ul>
    #             <li>
    # 			            <p>A policy grants access on a private CA to an Amazon Web Services customer account, to Amazon Web Services Organizations, or to
    # 			an Amazon Web Services Organizations unit. Policies are under the control of a CA administrator. For more information,
    # 			see <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/pca-rbp.html">Using a Resource Based Policy with ACM Private CA</a>.</p>
    # 		          </li>
    #             <li>
    # 			            <p>A policy permits a user of Certificate Manager (ACM) to issue ACM certificates
    # 			signed by a CA in another account.</p>			
    # 		          </li>
    #             <li>
    # 			            <p>For ACM to manage automatic renewal of these certificates,
    # 			the ACM user must configure a Service Linked Role (SLR). The SLR allows
    # 			the ACM service to assume the identity of the user, subject to confirmation against the
    # 			ACM Private CA policy. For more information, see
    # 			<a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-slr.html">Using a
    #             Service Linked Role with ACM</a>.</p>			
    # 		          </li>
    #             <li>
    # 			            <p>Updates made in Amazon Web Services Resource Manager (RAM) are reflected in policies. For more information,
    # 			see <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/pca-ram.html">Attach a Policy for Cross-Account
    # 			Access</a>.</p>				
    # 		          </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetPolicyInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Number (ARN) of the private CA that will have its policy
    #   			retrieved. You can find the CA's ARN by calling the ListCertificateAuthorities action.
    #   			
    #   		</p>
    #
    # @return [Types::GetPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy(
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPolicyOutput
    #   resp.data.policy #=> String
    #
    def get_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestFailedException, Errors::InvalidStateException, Errors::InvalidArnException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPolicy,
        stubs: @stubs,
        params_class: Params::GetPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Imports a signed private CA certificate into ACM Private CA. This action is used when you
    # 			are using a chain of trust whose root is located outside ACM Private CA. Before you can call
    # 			this action, the following preparations must in place:</p>
    # 		       <ol>
    #             <li>
    # 				           <p>In ACM Private CA, call the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a> action to create the private CA that you
    # 					plan to back with the imported certificate.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Call the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_GetCertificateAuthorityCsr.html">GetCertificateAuthorityCsr</a> action to generate a certificate signing
    # 					request (CSR).</p>
    # 			         </li>
    #             <li>
    # 				           <p>Sign the CSR using a root or intermediate CA hosted by either an on-premises
    # 					PKI hierarchy or by a commercial CA.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Create a certificate chain and copy the signed certificate and the certificate
    # 					chain to your working directory.</p>
    # 			         </li>
    #          </ol>
    # 		       <p>ACM Private CA supports three scenarios for installing a CA certificate:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>Installing a certificate for a root CA hosted by ACM Private CA.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Installing a subordinate CA certificate whose parent authority is hosted by
    # 					ACM Private CA.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Installing a subordinate CA certificate whose parent authority is externally
    # 					hosted.</p>
    # 			         </li>
    #          </ul>
    # 		       <p>The following additional requirements apply when you import a CA certificate.</p>
    # 		       <ul>
    #             <li>
    # 				           <p>Only a self-signed certificate can be imported as a root CA.</p>
    # 			         </li>
    #             <li>
    # 				           <p>A self-signed certificate cannot be imported as a subordinate CA.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Your certificate chain must not include the private CA certificate that you
    # 					are importing.</p>
    # 			         </li>
    #             <li>
    # 				           <p>Your root CA must be the last certificate in your chain. The subordinate
    # 					certificate, if any, that your root CA signed must be next to last. The
    # 					subordinate certificate signed by the preceding subordinate CA must come next,
    # 					and so on until your chain is built. </p>
    # 			         </li>
    #             <li>
    # 				           <p>The chain must be PEM-encoded.</p>
    # 			         </li>
    #             <li>
    # 				           <p>The maximum allowed size of a certificate is 32 KB.</p>
    # 			         </li>
    #             <li>
    # 				           <p>The maximum allowed size of a certificate chain is 2 MB.</p>
    # 			         </li>
    #          </ul>
    # 		       <p>
    #             <i>Enforcement of Critical Constraints</i>
    #          </p>
    # 		       <p>ACM Private CA allows the following extensions to be marked critical in the imported CA
    # 			certificate or chain.</p>
    # 		       <ul>
    #             <li>
    # 				           <p>Basic constraints (<i>must</i> be marked critical)</p>
    # 			         </li>
    #             <li>
    # 				           <p>Subject alternative names</p>
    # 			         </li>
    #             <li>
    # 				           <p>Key usage</p>
    # 			         </li>
    #             <li>
    # 				           <p>Extended key usage</p>
    # 			         </li>
    #             <li>
    # 				           <p>Authority key identifier</p>
    # 			         </li>
    #             <li>
    # 				           <p>Subject key identifier</p>
    # 			         </li>
    #             <li>
    # 				           <p>Issuer alternative name</p>
    # 			         </li>
    #             <li>
    # 				           <p>Subject directory attributes</p>
    # 			         </li>
    #             <li>
    # 				           <p>Subject information access</p>
    # 			         </li>
    #             <li>
    # 				           <p>Certificate policies</p>
    # 			         </li>
    #             <li>
    # 				           <p>Policy mappings</p>
    # 			         </li>
    #             <li>
    # 				           <p>Inhibit anyPolicy</p>
    # 			         </li>
    #          </ul>
    # 		       <p>ACM Private CA rejects the following extensions when they are marked critical in an
    # 			imported CA certificate or chain.</p>
    # 		       <ul>
    #             <li>
    # 				           <p>Name constraints</p>
    # 			         </li>
    #             <li>
    # 				           <p>Policy constraints</p>
    # 			         </li>
    #             <li>
    # 				           <p>CRL distribution points</p>
    # 			         </li>
    #             <li>
    # 				           <p>Authority information access</p>
    # 			         </li>
    #             <li>
    # 				           <p>Freshest CRL</p>
    # 			         </li>
    #             <li>
    # 				           <p>Any other extension</p>
    # 			         </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ImportCertificateAuthorityCertificateInput}.
    #
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a>. This must be of the form: </p>
    #   		       <p>
    #               <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>
    #            </p>
    #
    # @option params [String] :certificate
    #   <p>The PEM-encoded certificate for a private CA. This may be a self-signed certificate in
    #   			the case of a root CA, or it may be signed by another CA that you control.</p>
    #
    # @option params [String] :certificate_chain
    #   <p>A PEM-encoded file that contains all of your certificates, other than the certificate
    #   			you're importing, chaining up to your root CA. Your ACM Private CA-hosted or on-premises
    #   			root certificate is the last in the chain, and each certificate in the chain signs the
    #   			one preceding. </p>
    #   		       <p>This parameter must be supplied when you import a subordinate CA. When you import a
    #   			root CA, there is no chain.</p>
    #
    # @return [Types::ImportCertificateAuthorityCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_certificate_authority_certificate(
    #     certificate_authority_arn: 'CertificateAuthorityArn', # required
    #     certificate: 'Certificate', # required
    #     certificate_chain: 'CertificateChain'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ImportCertificateAuthorityCertificateOutput
    #
    def import_certificate_authority_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ImportCertificateAuthorityCertificateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ImportCertificateAuthorityCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ImportCertificateAuthorityCertificate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::RequestFailedException, Errors::InvalidStateException, Errors::InvalidArnException, Errors::CertificateMismatchException, Errors::InvalidRequestException, Errors::RequestInProgressException, Errors::ResourceNotFoundException, Errors::MalformedCertificateException]),
        data_parser: Parsers::ImportCertificateAuthorityCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ImportCertificateAuthorityCertificate,
        stubs: @stubs,
        params_class: Params::ImportCertificateAuthorityCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :import_certificate_authority_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Uses your private certificate authority (CA), or one that has been shared with you, to
    # 			issue a client certificate. This action returns the Amazon Resource Name (ARN) of the
    # 			certificate. You can retrieve the certificate by calling the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_GetCertificate.html">GetCertificate</a> action and
    # 			specifying the ARN. </p>
    # 		       <note>
    # 			         <p>You cannot use the ACM <b>ListCertificateAuthorities</b> action to retrieve the ARNs of the
    # 				certificates that you issue by using ACM Private CA.</p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::IssueCertificateInput}.
    #
    # @option params [ApiPassthrough] :api_passthrough
    #   <p>Specifies X.509 certificate information to be included in the issued certificate. An
    #   				<code>APIPassthrough</code> or <code>APICSRPassthrough</code> template variant must
    #   			be selected, or else this parameter is ignored. For more information about using these
    #   			templates, see <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/UsingTemplates.html">Understanding Certificate Templates</a>.</p>
    #   		       <p>If conflicting or duplicate certificate information is supplied during certificate
    #   			issuance, ACM Private CA applies <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/UsingTemplates.html#template-order-of-operations">order of
    #   				operation rules</a> to determine what information is used.</p>
    #
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a>. This must be of the form:</p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>
    #   		       </p>
    #
    # @option params [String] :csr
    #   <p>The certificate signing request (CSR) for the certificate you want to issue. As an
    #   			example, you can use the following OpenSSL command to create the CSR and a 2048 bit RSA
    #   			private key. </p>
    #   		       <p>
    #   			         <code>openssl req -new -newkey rsa:2048 -days 365 -keyout private/test_cert_priv_key.pem
    #   				-out csr/test_cert_.csr</code>
    #   		       </p>
    #   		       <p>If you have a configuration file, you can then use the following OpenSSL command. The
    #   				<code>usr_cert</code> block in the configuration file contains your X509 version 3
    #   			extensions. </p>
    #   		       <p>
    #               <code>openssl req -new -config openssl_rsa.cnf -extensions usr_cert -newkey rsa:2048
    #   				-days 365 -keyout private/test_cert_priv_key.pem -out
    #   			csr/test_cert_.csr</code>
    #            </p>
    #   		       <p>Note: A CSR must provide either a <i>subject name</i> or a
    #   				<i>subject alternative name</i> or the request will be rejected.
    #   		</p>
    #
    # @option params [String] :signing_algorithm
    #   <p>The name of the algorithm that will be used to sign the certificate to be issued. </p>
    #   		       <p>This parameter should not be confused with the <code>SigningAlgorithm</code> parameter
    #   			used to sign a CSR in the <code>CreateCertificateAuthority</code> action.</p>
    #   		       <note>
    #   			         <p>The specified signing algorithm family (RSA or ECDSA) much match the algorithm
    #   				family of the CA's secret key.</p>
    #   		       </note>
    #
    # @option params [String] :template_arn
    #   <p>Specifies a custom configuration template to use when issuing a certificate. If this
    #   			parameter is not provided, ACM Private CA defaults to the
    #   				<code>EndEntityCertificate/V1</code> template. For CA certificates, you should
    #   			choose the shortest path length that meets your needs. The path length is indicated by
    #   			the PathLen<i>N</i> portion of the ARN, where <i>N</i> is
    #   			the <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaTerms.html#terms-cadepth">CA
    #   				depth</a>.</p>
    #   		       <p>Note: The CA depth configured on a subordinate CA certificate must not exceed the
    #   			limit set by its parents in the CA hierarchy.</p>
    #   		       <p>For a list of <code>TemplateArn</code> values supported by ACM Private CA, see <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/UsingTemplates.html">Understanding Certificate
    #   				Templates</a>.</p>
    #
    # @option params [Validity] :validity
    #   <p>Information describing the end of the validity period of the certificate. This
    #   			parameter sets the “Not After” date for the certificate.</p>
    #   		       <p>Certificate validity is the period of time during which a certificate is valid.
    #   			Validity can be expressed as an explicit date and time when the certificate expires, or
    #   			as a span of time after issuance, stated in days, months, or years. For more
    #   			information, see <a href="https://datatracker.ietf.org/doc/html/rfc5280#section-4.1.2.5">Validity</a>
    #   			in RFC 5280. </p>
    #   		       <p>This value is unaffected when <code>ValidityNotBefore</code> is also specified. For
    #   			example, if <code>Validity</code> is set to 20 days in the future, the certificate will
    #   			expire 20 days from issuance time regardless of the <code>ValidityNotBefore</code>
    #   			value.</p>
    #   		       <p>The end of the validity period configured on a certificate must not exceed the limit
    #   			set on its parents in the CA hierarchy.</p>
    #
    # @option params [Validity] :validity_not_before
    #   <p>Information describing the start of the validity period of the certificate. This
    #   			parameter sets the “Not Before" date for the certificate.</p>
    #   		       <p>By default, when issuing a certificate, ACM Private CA sets the "Not Before" date to the
    #   			issuance time minus 60 minutes. This compensates for clock inconsistencies across
    #   			computer systems. The <code>ValidityNotBefore</code> parameter can be used to customize
    #   			the “Not Before” value. </p>
    #   		       <p>Unlike the <code>Validity</code> parameter, the <code>ValidityNotBefore</code>
    #   			parameter is optional.</p>
    #   		       <p>The <code>ValidityNotBefore</code> value is expressed as an explicit date and time,
    #   			using the <code>Validity</code> type value <code>ABSOLUTE</code>. For more information,
    #   			see <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_Validity.html">Validity</a> in this API reference and <a href="https://datatracker.ietf.org/doc/html/rfc5280#section-4.1.2.5">Validity</a>
    #   			in RFC 5280.</p>
    #
    # @option params [String] :idempotency_token
    #   <p>Alphanumeric string that can be used to distinguish between calls to the <b>IssueCertificate</b> action. Idempotency tokens for <b>IssueCertificate</b> time out after one minute. Therefore, if you
    #   			call <b>IssueCertificate</b> multiple times with the same
    #   			idempotency token within one minute, ACM Private CA recognizes that you are requesting only
    #   			one certificate and will issue only one. If you change the idempotency token for each
    #   			call, PCA recognizes that you are requesting multiple certificates.</p>
    #
    # @return [Types::IssueCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.issue_certificate(
    #     api_passthrough: {
    #       extensions: {
    #         certificate_policies: [
    #           {
    #             cert_policy_id: 'CertPolicyId', # required
    #             policy_qualifiers: [
    #               {
    #                 policy_qualifier_id: 'CPS', # required - accepts ["CPS"]
    #                 qualifier: {
    #                   cps_uri: 'CpsUri' # required
    #                 } # required
    #               }
    #             ]
    #           }
    #         ],
    #         extended_key_usage: [
    #           {
    #             extended_key_usage_type: 'SERVER_AUTH', # accepts ["SERVER_AUTH", "CLIENT_AUTH", "CODE_SIGNING", "EMAIL_PROTECTION", "TIME_STAMPING", "OCSP_SIGNING", "SMART_CARD_LOGIN", "DOCUMENT_SIGNING", "CERTIFICATE_TRANSPARENCY"]
    #             extended_key_usage_object_identifier: 'ExtendedKeyUsageObjectIdentifier'
    #           }
    #         ],
    #         key_usage: {
    #           digital_signature: false,
    #           non_repudiation: false,
    #           key_encipherment: false,
    #           data_encipherment: false,
    #           key_agreement: false,
    #           key_cert_sign: false,
    #           crl_sign: false,
    #           encipher_only: false,
    #           decipher_only: false
    #         },
    #         subject_alternative_names: [
    #           {
    #             other_name: {
    #               type_id: 'TypeId', # required
    #               value: 'Value' # required
    #             },
    #             rfc822_name: 'Rfc822Name',
    #             dns_name: 'DnsName',
    #             directory_name: {
    #               country: 'Country',
    #               organization: 'Organization',
    #               organizational_unit: 'OrganizationalUnit',
    #               distinguished_name_qualifier: 'DistinguishedNameQualifier',
    #               state: 'State',
    #               common_name: 'CommonName',
    #               serial_number: 'SerialNumber',
    #               locality: 'Locality',
    #               title: 'Title',
    #               surname: 'Surname',
    #               given_name: 'GivenName',
    #               initials: 'Initials',
    #               pseudonym: 'Pseudonym',
    #               generation_qualifier: 'GenerationQualifier',
    #               custom_attributes: [
    #                 {
    #                   object_identifier: 'ObjectIdentifier', # required
    #                   value: 'Value' # required
    #                 }
    #               ]
    #             },
    #             edi_party_name: {
    #               party_name: 'PartyName', # required
    #               name_assigner: 'NameAssigner'
    #             },
    #             uniform_resource_identifier: 'UniformResourceIdentifier',
    #             ip_address: 'IpAddress',
    #             registered_id: 'RegisteredId'
    #           }
    #         ],
    #         custom_extensions: [
    #           {
    #             object_identifier: 'ObjectIdentifier', # required
    #             value: 'Value', # required
    #             critical: false
    #           }
    #         ]
    #       },
    #     },
    #     certificate_authority_arn: 'CertificateAuthorityArn', # required
    #     csr: 'Csr', # required
    #     signing_algorithm: 'SHA256WITHECDSA', # required - accepts ["SHA256WITHECDSA", "SHA384WITHECDSA", "SHA512WITHECDSA", "SHA256WITHRSA", "SHA384WITHRSA", "SHA512WITHRSA"]
    #     template_arn: 'TemplateArn',
    #     validity: {
    #       value: 1, # required
    #       type: 'END_DATE' # required - accepts ["END_DATE", "ABSOLUTE", "DAYS", "MONTHS", "YEARS"]
    #     }, # required
    #     idempotency_token: 'IdempotencyToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::IssueCertificateOutput
    #   resp.data.certificate_arn #=> String
    #
    def issue_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::IssueCertificateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::IssueCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::IssueCertificate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidStateException, Errors::MalformedCSRException, Errors::InvalidArnException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::InvalidArgsException]),
        data_parser: Parsers::IssueCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::IssueCertificate,
        stubs: @stubs,
        params_class: Params::IssueCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :issue_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the private certificate authorities that you created by using the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCertificateAuthoritiesInput}.
    #
    # @option params [String] :next_token
    #   <p>Use this parameter when paginating results in a subsequent request after you receive a
    #   			response with truncated results. Set it to the value of the <code>NextToken</code>
    #   			parameter from the response you just received.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Use this parameter when paginating results to specify the maximum number of items to
    #   			return in the response on each page. If additional items exist beyond the number you
    #   			specify, the <code>NextToken</code> element is sent in the response. Use this
    #   				<code>NextToken</code> value in a subsequent request to retrieve additional
    #   			items.</p>
    #
    # @option params [String] :resource_owner
    #   <p>Use this parameter to filter the returned set of certificate authorities based on
    #   			their owner. The default is SELF.</p>
    #
    # @return [Types::ListCertificateAuthoritiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_certificate_authorities(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     resource_owner: 'SELF' # accepts ["SELF", "OTHER_ACCOUNTS"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCertificateAuthoritiesOutput
    #   resp.data.certificate_authorities #=> Array<CertificateAuthority>
    #   resp.data.certificate_authorities[0] #=> Types::CertificateAuthority
    #   resp.data.certificate_authorities[0].arn #=> String
    #   resp.data.certificate_authorities[0].owner_account #=> String
    #   resp.data.certificate_authorities[0].created_at #=> Time
    #   resp.data.certificate_authorities[0].last_state_change_at #=> Time
    #   resp.data.certificate_authorities[0].type #=> String, one of ["ROOT", "SUBORDINATE"]
    #   resp.data.certificate_authorities[0].serial #=> String
    #   resp.data.certificate_authorities[0].status #=> String, one of ["CREATING", "PENDING_CERTIFICATE", "ACTIVE", "DELETED", "DISABLED", "EXPIRED", "FAILED"]
    #   resp.data.certificate_authorities[0].not_before #=> Time
    #   resp.data.certificate_authorities[0].not_after #=> Time
    #   resp.data.certificate_authorities[0].failure_reason #=> String, one of ["REQUEST_TIMED_OUT", "UNSUPPORTED_ALGORITHM", "OTHER"]
    #   resp.data.certificate_authorities[0].certificate_authority_configuration #=> Types::CertificateAuthorityConfiguration
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.key_algorithm #=> String, one of ["RSA_2048", "RSA_4096", "EC_prime256v1", "EC_secp384r1"]
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.signing_algorithm #=> String, one of ["SHA256WITHECDSA", "SHA384WITHECDSA", "SHA512WITHECDSA", "SHA256WITHRSA", "SHA384WITHRSA", "SHA512WITHRSA"]
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.subject #=> Types::ASN1Subject
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.subject.country #=> String
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.subject.organization #=> String
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.subject.organizational_unit #=> String
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.subject.distinguished_name_qualifier #=> String
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.subject.state #=> String
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.subject.common_name #=> String
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.subject.serial_number #=> String
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.subject.locality #=> String
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.subject.title #=> String
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.subject.surname #=> String
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.subject.given_name #=> String
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.subject.initials #=> String
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.subject.pseudonym #=> String
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.subject.generation_qualifier #=> String
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.subject.custom_attributes #=> Array<CustomAttribute>
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.subject.custom_attributes[0] #=> Types::CustomAttribute
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.subject.custom_attributes[0].object_identifier #=> String
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.subject.custom_attributes[0].value #=> String
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.csr_extensions #=> Types::CsrExtensions
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.csr_extensions.key_usage #=> Types::KeyUsage
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.csr_extensions.key_usage.digital_signature #=> Boolean
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.csr_extensions.key_usage.non_repudiation #=> Boolean
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.csr_extensions.key_usage.key_encipherment #=> Boolean
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.csr_extensions.key_usage.data_encipherment #=> Boolean
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.csr_extensions.key_usage.key_agreement #=> Boolean
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.csr_extensions.key_usage.key_cert_sign #=> Boolean
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.csr_extensions.key_usage.crl_sign #=> Boolean
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.csr_extensions.key_usage.encipher_only #=> Boolean
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.csr_extensions.key_usage.decipher_only #=> Boolean
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access #=> Array<AccessDescription>
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0] #=> Types::AccessDescription
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_method #=> Types::AccessMethod
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_method.custom_object_identifier #=> String
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_method.access_method_type #=> String, one of ["CA_REPOSITORY", "RESOURCE_PKI_MANIFEST", "RESOURCE_PKI_NOTIFY"]
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location #=> Types::GeneralName
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.other_name #=> Types::OtherName
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.other_name.type_id #=> String
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.other_name.value #=> String
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.rfc822_name #=> String
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.dns_name #=> String
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.directory_name #=> Types::ASN1Subject
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.edi_party_name #=> Types::EdiPartyName
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.edi_party_name.party_name #=> String
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.edi_party_name.name_assigner #=> String
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.uniform_resource_identifier #=> String
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.ip_address #=> String
    #   resp.data.certificate_authorities[0].certificate_authority_configuration.csr_extensions.subject_information_access[0].access_location.registered_id #=> String
    #   resp.data.certificate_authorities[0].revocation_configuration #=> Types::RevocationConfiguration
    #   resp.data.certificate_authorities[0].revocation_configuration.crl_configuration #=> Types::CrlConfiguration
    #   resp.data.certificate_authorities[0].revocation_configuration.crl_configuration.enabled #=> Boolean
    #   resp.data.certificate_authorities[0].revocation_configuration.crl_configuration.expiration_in_days #=> Integer
    #   resp.data.certificate_authorities[0].revocation_configuration.crl_configuration.custom_cname #=> String
    #   resp.data.certificate_authorities[0].revocation_configuration.crl_configuration.s3_bucket_name #=> String
    #   resp.data.certificate_authorities[0].revocation_configuration.crl_configuration.s3_object_acl #=> String, one of ["PUBLIC_READ", "BUCKET_OWNER_FULL_CONTROL"]
    #   resp.data.certificate_authorities[0].revocation_configuration.ocsp_configuration #=> Types::OcspConfiguration
    #   resp.data.certificate_authorities[0].revocation_configuration.ocsp_configuration.enabled #=> Boolean
    #   resp.data.certificate_authorities[0].revocation_configuration.ocsp_configuration.ocsp_custom_cname #=> String
    #   resp.data.certificate_authorities[0].restorable_until #=> Time
    #   resp.data.certificate_authorities[0].key_storage_security_standard #=> String, one of ["FIPS_140_2_LEVEL_2_OR_HIGHER", "FIPS_140_2_LEVEL_3_OR_HIGHER"]
    #   resp.data.next_token #=> String
    #
    def list_certificate_authorities(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCertificateAuthoritiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCertificateAuthoritiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCertificateAuthorities
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException]),
        data_parser: Parsers::ListCertificateAuthorities
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCertificateAuthorities,
        stubs: @stubs,
        params_class: Params::ListCertificateAuthoritiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_certificate_authorities
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List all permissions on a private CA, if any, granted to the Certificate Manager (ACM) service
    # 			principal (acm.amazonaws.com). </p>
    # 		       <p>These permissions allow ACM to issue and renew ACM certificates that reside in the
    # 			same Amazon Web Services account as the CA. </p>
    # 		       <p>Permissions can be granted with the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreatePermission.html">CreatePermission</a> action and
    # 			revoked with the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DeletePermission.html">DeletePermission</a> action.</p>
    # 		       <p class="title">
    #             <b>About Permissions</b>
    #          </p>
    #          <ul>
    #             <li>
    # 			            <p>If the private CA and the certificates it issues reside in the same
    # 			account, you can use <code>CreatePermission</code> to grant permissions for ACM to
    # 			carry out automatic certificate renewals.</p>
    # 		          </li>
    #             <li>
    # 			            <p>For automatic certificate renewal to succeed, the ACM service principal
    # 			needs permissions to create, retrieve, and list certificates.</p>
    # 		          </li>
    #             <li>
    # 			            <p>If the private CA and the ACM certificates reside in different accounts,
    # 			then permissions cannot be used to enable automatic renewals. Instead,
    # 			the ACM certificate owner must set up a resource-based policy to enable
    # 			cross-account issuance and renewals. For more information, see
    # 			<a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/pca-rbp.html">Using a Resource
    # 			Based Policy with ACM Private CA</a>.</p>
    # 		          </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ListPermissionsInput}.
    #
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Number (ARN) of the private CA to inspect. You can find the ARN by
    #   			calling the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html">ListCertificateAuthorities</a> action. This must be of the form:
    #   				<code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012</code>
    #   			You can get a private CA's ARN by running the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html">ListCertificateAuthorities</a> action.</p>
    #
    # @option params [String] :next_token
    #   <p>When paginating results, use this parameter in a subsequent request after you receive
    #   			a response with truncated results. Set it to the value of <b>NextToken</b> from the response you just received.</p>
    #
    # @option params [Integer] :max_results
    #   <p>When paginating results, use this parameter to specify the maximum number of items to
    #   			return in the response. If additional items exist beyond the number you specify, the
    #   				<b>NextToken</b> element is sent in the response. Use this
    #   				<b>NextToken</b> value in a subsequent request to retrieve
    #   			additional items.</p>
    #
    # @return [Types::ListPermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_permissions(
    #     certificate_authority_arn: 'CertificateAuthorityArn', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPermissionsOutput
    #   resp.data.permissions #=> Array<Permission>
    #   resp.data.permissions[0] #=> Types::Permission
    #   resp.data.permissions[0].certificate_authority_arn #=> String
    #   resp.data.permissions[0].created_at #=> Time
    #   resp.data.permissions[0].principal #=> String
    #   resp.data.permissions[0].source_account #=> String
    #   resp.data.permissions[0].actions #=> Array<String>
    #   resp.data.permissions[0].actions[0] #=> String, one of ["IssueCertificate", "GetCertificate", "ListPermissions"]
    #   resp.data.permissions[0].policy #=> String
    #   resp.data.next_token #=> String
    #
    def list_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPermissions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestFailedException, Errors::InvalidStateException, Errors::InvalidArnException, Errors::ResourceNotFoundException, Errors::InvalidNextTokenException]),
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

    # <p>Lists the tags, if any, that are associated with your private CA or one that has been
    # 			shared with you. Tags are labels that you can use to identify and organize your CAs.
    # 			Each tag consists of a key and an optional value. Call the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_TagCertificateAuthority.html">TagCertificateAuthority</a>
    # 			action to add one or more tags to your CA. Call the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UntagCertificateAuthority.html">UntagCertificateAuthority</a> action to remove tags. </p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsInput}.
    #
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a> action. This must be of the form: </p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>
    #   		       </p>
    #
    # @option params [String] :next_token
    #   <p>Use this parameter when paginating results in a subsequent request after you receive a
    #   			response with truncated results. Set it to the value of <b>NextToken</b> from the response you just received.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Use this parameter when paginating results to specify the maximum number of items to
    #   			return in the response. If additional items exist beyond the number you specify, the
    #   				<b>NextToken</b> element is sent in the response. Use this
    #   				<b>NextToken</b> value in a subsequent request to retrieve
    #   			additional items.</p>
    #
    # @return [Types::ListTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags(
    #     certificate_authority_arn: 'CertificateAuthorityArn', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.next_token #=> String
    #
    def list_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTags
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidStateException, Errors::InvalidArnException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTags,
        stubs: @stubs,
        params_class: Params::ListTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attaches a resource-based policy to a private CA. </p>
    # 		       <p>A policy can also be applied by sharing a private CA through Amazon Web Services Resource Access
    # 			Manager (RAM). For more information, see <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/pca-ram.html">Attach a Policy for Cross-Account
    # 			Access</a>.</p>
    # 		       <p>The policy can be displayed with <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_GetPolicy.html">GetPolicy</a> and removed with <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DeletePolicy.html">DeletePolicy</a>.</p>
    # 		       <p class="title">
    #             <b>About Policies</b>
    #          </p>
    #          <ul>
    #             <li>
    # 			            <p>A policy grants access on a private CA to an Amazon Web Services customer account, to Amazon Web Services Organizations, or to
    # 			an Amazon Web Services Organizations unit. Policies are under the control of a CA administrator. For more information,
    # 			see <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/pca-rbp.html">Using a Resource Based Policy with ACM Private CA</a>.</p>
    # 		          </li>
    #             <li>
    # 			            <p>A policy permits a user of Certificate Manager (ACM) to issue ACM certificates
    # 			signed by a CA in another account.</p>			
    # 		          </li>
    #             <li>
    # 			            <p>For ACM to manage automatic renewal of these certificates,
    # 			the ACM user must configure a Service Linked Role (SLR). The SLR allows
    # 			the ACM service to assume the identity of the user, subject to confirmation against the
    # 			ACM Private CA policy. For more information, see
    # 			<a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-slr.html">Using a
    #             Service Linked Role with ACM</a>.</p>			
    # 		          </li>
    #             <li>
    # 			            <p>Updates made in Amazon Web Services Resource Manager (RAM) are reflected in policies. For more information,
    # 			see <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/pca-ram.html">Attach a Policy for Cross-Account
    # 			Access</a>.</p>				
    # 		          </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutPolicyInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Number (ARN) of the private CA to associate with the policy. The
    #   			ARN of the CA can be found by calling the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html">ListCertificateAuthorities</a> action.</p>
    #   		       <p></p>
    #
    # @option params [String] :policy
    #   <p>The path and file name of a JSON-formatted IAM policy to attach to the specified
    #   			private CA resource. If this policy does not contain all required statements or if it
    #   			includes any statement that is not allowed, the <code>PutPolicy</code> action returns an
    #   				<code>InvalidPolicyException</code>. For information about IAM policy and
    #   			statement structure, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policies-json">Overview of JSON Policies</a>.</p>
    #
    # @return [Types::PutPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_policy(
    #     resource_arn: 'ResourceArn', # required
    #     policy: 'Policy' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutPolicyOutput
    #
    def put_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::RequestFailedException, Errors::InvalidStateException, Errors::InvalidArnException, Errors::LockoutPreventedException, Errors::ResourceNotFoundException, Errors::InvalidPolicyException]),
        data_parser: Parsers::PutPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutPolicy,
        stubs: @stubs,
        params_class: Params::PutPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Restores a certificate authority (CA) that is in the <code>DELETED</code> state. You
    # 			can restore a CA during the period that you defined in the <b>PermanentDeletionTimeInDays</b> parameter of the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DeleteCertificateAuthority.html">DeleteCertificateAuthority</a> action. Currently, you can specify 7 to 30 days.
    # 			If you did not specify a <b>PermanentDeletionTimeInDays</b>
    # 			value, by default you can restore the CA at any time in a 30 day period. You can check
    # 			the time remaining in the restoration period of a private CA in the <code>DELETED</code>
    # 			state by calling the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DescribeCertificateAuthority.html">DescribeCertificateAuthority</a> or <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html">ListCertificateAuthorities</a> actions. The status of a restored CA is set to
    # 			its pre-deletion status when the <b>RestoreCertificateAuthority</b> action returns. To change its status to
    # 				<code>ACTIVE</code>, call the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html">UpdateCertificateAuthority</a> action. If the private CA was in the
    # 				<code>PENDING_CERTIFICATE</code> state at deletion, you must use the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ImportCertificateAuthorityCertificate.html">ImportCertificateAuthorityCertificate</a> action to import a certificate
    # 			authority into the private CA before it can be activated. You cannot restore a CA after
    # 			the restoration period has ended.</p>
    #
    # @param [Hash] params
    #   See {Types::RestoreCertificateAuthorityInput}.
    #
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a> action. This must be of the form: </p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>
    #   		       </p>
    #
    # @return [Types::RestoreCertificateAuthorityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_certificate_authority(
    #     certificate_authority_arn: 'CertificateAuthorityArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RestoreCertificateAuthorityOutput
    #
    def restore_certificate_authority(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RestoreCertificateAuthorityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RestoreCertificateAuthorityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RestoreCertificateAuthority
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidStateException, Errors::InvalidArnException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::RestoreCertificateAuthority
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RestoreCertificateAuthority,
        stubs: @stubs,
        params_class: Params::RestoreCertificateAuthorityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :restore_certificate_authority
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Revokes a certificate that was issued inside ACM Private CA. If you enable a certificate
    # 			revocation list (CRL) when you create or update your private CA, information about the
    # 			revoked certificates will be included in the CRL. ACM Private CA writes the CRL to an S3
    # 			bucket that you specify. A CRL is typically updated approximately 30 minutes after a
    # 			certificate is revoked. If for any reason the CRL update fails, ACM Private CA attempts
    # 			makes further attempts every 15 minutes. With Amazon CloudWatch, you can create alarms
    # 			for the metrics <code>CRLGenerated</code> and <code>MisconfiguredCRLBucket</code>. For
    # 			more information, see <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaCloudWatch.html">Supported CloudWatch Metrics</a>.</p>
    # 		       <note>
    #                         <p>Both PCA and the IAM principal must have permission to write to
    #                         the S3 bucket that you specify. If the IAM principal making the call
    #                         does not have permission to write to the bucket, then an exception is
    #                         thrown. For more information, see <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/crl-planning.html#s3-policies">Access
    # 						policies for CRLs in Amazon S3</a>.</p>
    #          </note>
    # 		       <p>ACM Private CA also writes revocation information to the audit report. For more
    # 			information, see <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html">CreateCertificateAuthorityAuditReport</a>.</p>
    # 		       <note>
    # 			         <p>You cannot revoke a root CA self-signed certificate.</p>
    # 		       </note>
    #
    # @param [Hash] params
    #   See {Types::RevokeCertificateInput}.
    #
    # @option params [String] :certificate_authority_arn
    #   <p>Amazon Resource Name (ARN) of the private CA that issued the certificate to be
    #   			revoked. This must be of the form:</p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>
    #   		       </p>
    #
    # @option params [String] :certificate_serial
    #   <p>Serial number of the certificate to be revoked. This must be in hexadecimal format.
    #   			You can retrieve the serial number by calling <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_GetCertificate.html">GetCertificate</a> with the Amazon
    #   			Resource Name (ARN) of the certificate you want and the ARN of your private CA. The
    #   				<b>GetCertificate</b> action retrieves the certificate in
    #   			the PEM format. You can use the following OpenSSL command to list the certificate in
    #   			text format and copy the hexadecimal serial number. </p>
    #   		       <p>
    #               <code>openssl x509 -in <i>file_path</i> -text -noout</code>
    #            </p>
    #   		       <p>You can also copy the serial number from the console or use the <a href="https://docs.aws.amazon.com/acm/latest/APIReference/API_DescribeCertificate.html">DescribeCertificate</a> action in the <i>Certificate Manager API
    #   				Reference</i>. </p>
    #
    # @option params [String] :revocation_reason
    #   <p>Specifies why you revoked the certificate.</p>
    #
    # @return [Types::RevokeCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_certificate(
    #     certificate_authority_arn: 'CertificateAuthorityArn', # required
    #     certificate_serial: 'CertificateSerial', # required
    #     revocation_reason: 'UNSPECIFIED' # required - accepts ["UNSPECIFIED", "KEY_COMPROMISE", "CERTIFICATE_AUTHORITY_COMPROMISE", "AFFILIATION_CHANGED", "SUPERSEDED", "CESSATION_OF_OPERATION", "PRIVILEGE_WITHDRAWN", "A_A_COMPROMISE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RevokeCertificateOutput
    #
    def revoke_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RevokeCertificateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RevokeCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RevokeCertificate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::RequestFailedException, Errors::InvalidStateException, Errors::InvalidArnException, Errors::RequestAlreadyProcessedException, Errors::InvalidRequestException, Errors::LimitExceededException, Errors::RequestInProgressException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::RevokeCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RevokeCertificate,
        stubs: @stubs,
        params_class: Params::RevokeCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :revoke_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds one or more tags to your private CA. Tags are labels that you can use to identify
    # 			and organize your Amazon Web Services resources. Each tag consists of a key and an optional value. You
    # 			specify the private CA on input by its Amazon Resource Name (ARN). You specify the tag
    # 			by using a key-value pair. You can apply a tag to just one private CA if you want to
    # 			identify a specific characteristic of that CA, or you can apply the same tag to multiple
    # 			private CAs if you want to filter for a common relationship among those CAs. To remove
    # 			one or more tags, use the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UntagCertificateAuthority.html">UntagCertificateAuthority</a> action. Call the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListTags.html">ListTags</a> action to see what tags are
    # 			associated with your CA. </p>
    #
    # @param [Hash] params
    #   See {Types::TagCertificateAuthorityInput}.
    #
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a>. This must be of the form: </p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>
    #   		       </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>List of tags to be associated with the CA.</p>
    #
    # @return [Types::TagCertificateAuthorityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_certificate_authority(
    #     certificate_authority_arn: 'CertificateAuthorityArn', # required
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
    #   resp.data #=> Types::TagCertificateAuthorityOutput
    #
    def tag_certificate_authority(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagCertificateAuthorityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagCertificateAuthorityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagCertificateAuthority
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyTagsException, Errors::InvalidStateException, Errors::InvalidArnException, Errors::ResourceNotFoundException, Errors::InvalidTagException]),
        data_parser: Parsers::TagCertificateAuthority
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TagCertificateAuthority,
        stubs: @stubs,
        params_class: Params::TagCertificateAuthorityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag_certificate_authority
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Remove one or more tags from your private CA. A tag consists of a key-value pair. If
    # 			you do not specify the value portion of the tag when calling this action, the tag will
    # 			be removed regardless of value. If you specify a value, the tag is removed only if it is
    # 			associated with the specified value. To add tags to a private CA, use the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_TagCertificateAuthority.html">TagCertificateAuthority</a>. Call the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListTags.html">ListTags</a> action to see what tags are
    # 			associated with your CA. </p>
    #
    # @param [Hash] params
    #   See {Types::UntagCertificateAuthorityInput}.
    #
    # @option params [String] :certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a>. This must be of the form: </p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>
    #   		       </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>List of tags to be removed from the CA.</p>
    #
    # @return [Types::UntagCertificateAuthorityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_certificate_authority(
    #     certificate_authority_arn: 'CertificateAuthorityArn', # required
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
    #   resp.data #=> Types::UntagCertificateAuthorityOutput
    #
    def untag_certificate_authority(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagCertificateAuthorityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagCertificateAuthorityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagCertificateAuthority
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidStateException, Errors::InvalidArnException, Errors::ResourceNotFoundException, Errors::InvalidTagException]),
        data_parser: Parsers::UntagCertificateAuthority
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UntagCertificateAuthority,
        stubs: @stubs,
        params_class: Params::UntagCertificateAuthorityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag_certificate_authority
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the status or configuration of a private certificate authority (CA). Your
    # 			private CA must be in the <code>ACTIVE</code> or <code>DISABLED</code> state before you
    # 			can update it. You can disable a private CA that is in the <code>ACTIVE</code> state or
    # 			make a CA that is in the <code>DISABLED</code> state active again.</p>
    # 		       <note>
    #                         <p>Both PCA and the IAM principal must have permission to write to
    #                         the S3 bucket that you specify. If the IAM principal making the call
    #                         does not have permission to write to the bucket, then an exception is
    #                         thrown. For more information, see <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/crl-planning.html#s3-policies">Access
    # 						policies for CRLs in Amazon S3</a>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateCertificateAuthorityInput}.
    #
    # @option params [String] :certificate_authority_arn
    #   <p>Amazon Resource Name (ARN) of the private CA that issued the certificate to be
    #   			revoked. This must be of the form:</p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>
    #   		       </p>
    #
    # @option params [RevocationConfiguration] :revocation_configuration
    #   <p>Contains information to enable Online Certificate Status Protocol (OCSP) support, to
    #   			enable a certificate revocation list (CRL), to enable both, or to enable neither. If
    #   			this parameter is not supplied, existing capibilites remain unchanged. For more
    #   			information, see the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_OcspConfiguration.html">OcspConfiguration</a> and <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CrlConfiguration.html">CrlConfiguration</a> types.</p>
    #
    # @option params [String] :status
    #   <p>Status of your private CA.</p>
    #
    # @return [Types::UpdateCertificateAuthorityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_certificate_authority(
    #     certificate_authority_arn: 'CertificateAuthorityArn', # required
    #     revocation_configuration: {
    #       crl_configuration: {
    #         enabled: false, # required
    #         expiration_in_days: 1,
    #         custom_cname: 'CustomCname',
    #         s3_bucket_name: 'S3BucketName',
    #         s3_object_acl: 'PUBLIC_READ' # accepts ["PUBLIC_READ", "BUCKET_OWNER_FULL_CONTROL"]
    #       },
    #       ocsp_configuration: {
    #         enabled: false, # required
    #         ocsp_custom_cname: 'OcspCustomCname'
    #       }
    #     },
    #     status: 'CREATING' # accepts ["CREATING", "PENDING_CERTIFICATE", "ACTIVE", "DELETED", "DISABLED", "EXPIRED", "FAILED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateCertificateAuthorityOutput
    #
    def update_certificate_authority(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateCertificateAuthorityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateCertificateAuthorityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateCertificateAuthority
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InvalidStateException, Errors::InvalidArnException, Errors::ResourceNotFoundException, Errors::InvalidPolicyException, Errors::InvalidArgsException]),
        data_parser: Parsers::UpdateCertificateAuthority
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateCertificateAuthority,
        stubs: @stubs,
        params_class: Params::UpdateCertificateAuthorityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_certificate_authority
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
