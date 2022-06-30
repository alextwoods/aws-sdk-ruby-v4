# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ACM
  module Types

    # <p>You do not have access
    #       required to perform this action.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_arn
    #   <p>String that contains the ARN of the ACM certificate to which the tag is to be applied.
    #         This must be of the form:</p>
    #
    #            <p>
    #               <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code>
    #            </p>
    #
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The key-value pair that defines the tag. The tag value is optional.</p>
    #
    #   @return [Array<Tag>]
    #
    AddTagsToCertificateInput = ::Struct.new(
      :certificate_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AddTagsToCertificateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains metadata about an ACM certificate. This structure is returned in the response
    #       to a <a>DescribeCertificate</a> request. </p>
    #
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate. For more information about ARNs, see
    #           <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in
    #         the <i>Amazon Web Services General Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p>The fully qualified domain name for the certificate, such as www.example.com or
    #         example.com.</p>
    #
    #   @return [String]
    #
    # @!attribute subject_alternative_names
    #   <p>One or more domain names (subject alternative names) included in the certificate. This
    #         list contains the domain names that are bound to the public key that is contained in the
    #         certificate. The subject alternative names include the canonical domain name (CN) of the
    #         certificate and additional domain names that can be used to connect to the website. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute domain_validation_options
    #   <p>Contains information about the initial validation of each domain name that occurs as a
    #         result of the <a>RequestCertificate</a> request. This field exists only when the
    #         certificate type is <code>AMAZON_ISSUED</code>. </p>
    #
    #   @return [Array<DomainValidation>]
    #
    # @!attribute serial
    #   <p>The serial number of the certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute subject
    #   <p>The name of the entity that is associated with the public key contained in the
    #         certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute issuer
    #   <p>The name of the certificate authority that issued and signed the certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time at which the certificate was requested.</p>
    #
    #   @return [Time]
    #
    # @!attribute issued_at
    #   <p>The time at which the certificate was issued. This value exists only when the certificate
    #         type is <code>AMAZON_ISSUED</code>. </p>
    #
    #   @return [Time]
    #
    # @!attribute imported_at
    #   <p>The date and time at which the certificate was imported. This value exists only when the
    #         certificate type is <code>IMPORTED</code>. </p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The status of the certificate.</p>
    #
    #   Enum, one of: ["PENDING_VALIDATION", "ISSUED", "INACTIVE", "EXPIRED", "VALIDATION_TIMED_OUT", "REVOKED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute revoked_at
    #   <p>The time at which the certificate was revoked. This value exists only when the certificate
    #         status is <code>REVOKED</code>. </p>
    #
    #   @return [Time]
    #
    # @!attribute revocation_reason
    #   <p>The reason the certificate was revoked. This value exists only when the certificate status
    #         is <code>REVOKED</code>. </p>
    #
    #   Enum, one of: ["UNSPECIFIED", "KEY_COMPROMISE", "CA_COMPROMISE", "AFFILIATION_CHANGED", "SUPERCEDED", "CESSATION_OF_OPERATION", "CERTIFICATE_HOLD", "REMOVE_FROM_CRL", "PRIVILEGE_WITHDRAWN", "A_A_COMPROMISE"]
    #
    #   @return [String]
    #
    # @!attribute not_before
    #   <p>The time before which the certificate is not valid.</p>
    #
    #   @return [Time]
    #
    # @!attribute not_after
    #   <p>The time after which the certificate is not valid.</p>
    #
    #   @return [Time]
    #
    # @!attribute key_algorithm
    #   <p>The algorithm that was used to generate the public-private key pair.</p>
    #
    #   Enum, one of: ["RSA_1024", "RSA_2048", "RSA_3072", "RSA_4096", "EC_prime256v1", "EC_secp384r1", "EC_secp521r1"]
    #
    #   @return [String]
    #
    # @!attribute signature_algorithm
    #   <p>The algorithm that was used to sign the certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute in_use_by
    #   <p>A list of ARNs for the Amazon Web Services resources that are using the certificate. A certificate can
    #         be used by multiple Amazon Web Services resources. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute failure_reason
    #   <p>The reason the certificate request failed. This value exists only when the certificate
    #         status is <code>FAILED</code>. For more information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/troubleshooting.html troubleshooting-failed">Certificate Request
    #           Failed</a> in the <i>Amazon Web Services Certificate Manager User Guide</i>. </p>
    #
    #   Enum, one of: ["NO_AVAILABLE_CONTACTS", "ADDITIONAL_VERIFICATION_REQUIRED", "DOMAIN_NOT_ALLOWED", "INVALID_PUBLIC_DOMAIN", "DOMAIN_VALIDATION_DENIED", "CAA_ERROR", "PCA_LIMIT_EXCEEDED", "PCA_INVALID_ARN", "PCA_INVALID_STATE", "PCA_REQUEST_FAILED", "PCA_NAME_CONSTRAINTS_VALIDATION", "PCA_RESOURCE_NOT_FOUND", "PCA_INVALID_ARGS", "PCA_INVALID_DURATION", "PCA_ACCESS_DENIED", "SLR_NOT_FOUND", "OTHER"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The source of the certificate. For certificates provided by ACM, this value is
    #           <code>AMAZON_ISSUED</code>. For certificates that you imported with <a>ImportCertificate</a>, this value is <code>IMPORTED</code>. ACM does not provide
    #           <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html">managed renewal</a> for
    #         imported certificates. For more information about the differences between certificates that
    #         you import and those that ACM provides, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html">Importing Certificates</a> in the
    #           <i>Amazon Web Services Certificate Manager User Guide</i>. </p>
    #
    #   Enum, one of: ["IMPORTED", "AMAZON_ISSUED", "PRIVATE"]
    #
    #   @return [String]
    #
    # @!attribute renewal_summary
    #   <p>Contains information about the status of ACM's <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html">managed renewal</a> for the certificate. This field
    #         exists only when the certificate type is <code>AMAZON_ISSUED</code>.</p>
    #
    #   @return [RenewalSummary]
    #
    # @!attribute key_usages
    #   <p>A list of Key Usage X.509 v3 extension objects. Each object is a string value that
    #         identifies the purpose of the public key contained in the certificate. Possible extension
    #         values include DIGITAL_SIGNATURE, KEY_ENCHIPHERMENT, NON_REPUDIATION, and more.</p>
    #
    #   @return [Array<KeyUsage>]
    #
    # @!attribute extended_key_usages
    #   <p>Contains a list of Extended Key Usage X.509 v3 extension objects. Each object specifies a
    #         purpose for which the certificate public key can be used and consists of a name and an object
    #         identifier (OID). </p>
    #
    #   @return [Array<ExtendedKeyUsage>]
    #
    # @!attribute certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) of the ACM PCA private certificate authority (CA) that issued
    #         the certificate. This has the following format: </p>
    #            <p>
    #               <code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute renewal_eligibility
    #   <p>Specifies whether the certificate is eligible for renewal. At this time, only exported
    #         private certificates can be renewed with the <a>RenewCertificate</a>
    #         command.</p>
    #
    #   Enum, one of: ["ELIGIBLE", "INELIGIBLE"]
    #
    #   @return [String]
    #
    # @!attribute options
    #   <p>Value that specifies whether to add the certificate to a transparency log. Certificate
    #         transparency makes it possible to detect SSL certificates that have been mistakenly or
    #         maliciously issued. A browser might respond to certificate that has not been logged by showing
    #         an error message. The logs are cryptographically secure. </p>
    #
    #   @return [CertificateOptions]
    #
    CertificateDetail = ::Struct.new(
      :certificate_arn,
      :domain_name,
      :subject_alternative_names,
      :domain_validation_options,
      :serial,
      :subject,
      :issuer,
      :created_at,
      :issued_at,
      :imported_at,
      :status,
      :revoked_at,
      :revocation_reason,
      :not_before,
      :not_after,
      :key_algorithm,
      :signature_algorithm,
      :in_use_by,
      :failure_reason,
      :type,
      :renewal_summary,
      :key_usages,
      :extended_key_usages,
      :certificate_authority_arn,
      :renewal_eligibility,
      :options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Structure that contains options for your certificate. Currently, you can use this only to
    #       specify whether to opt in to or out of certificate transparency logging. Some browsers require
    #       that public certificates issued for your domain be recorded in a log. Certificates that are
    #       not logged typically generate a browser error. Transparency makes it possible for you to
    #       detect SSL/TLS certificates that have been mistakenly or maliciously issued for your domain.
    #       For general information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-concepts.html#concept-transparency">Certificate Transparency
    #         Logging</a>. </p>
    #
    # @!attribute certificate_transparency_logging_preference
    #   <p>You can opt out of certificate transparency logging by specifying the
    #           <code>DISABLED</code> option. Opt in by specifying <code>ENABLED</code>. </p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    CertificateOptions = ::Struct.new(
      :certificate_transparency_logging_preference,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CertificateStatus
    #
    module CertificateStatus
      # No documentation available.
      #
      PENDING_VALIDATION = "PENDING_VALIDATION"

      # No documentation available.
      #
      ISSUED = "ISSUED"

      # No documentation available.
      #
      INACTIVE = "INACTIVE"

      # No documentation available.
      #
      EXPIRED = "EXPIRED"

      # No documentation available.
      #
      VALIDATION_TIMED_OUT = "VALIDATION_TIMED_OUT"

      # No documentation available.
      #
      REVOKED = "REVOKED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>This structure is returned in the response object of <a>ListCertificates</a>
    #       action. </p>
    #
    # @!attribute certificate_arn
    #   <p>Amazon Resource Name (ARN) of the certificate. This is of the form:</p>
    #
    #            <p>
    #               <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code>
    #            </p>
    #
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p>Fully qualified domain name (FQDN), such as www.example.com or example.com, for the
    #         certificate.</p>
    #
    #   @return [String]
    #
    CertificateSummary = ::Struct.new(
      :certificate_arn,
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CertificateTransparencyLoggingPreference
    #
    module CertificateTransparencyLoggingPreference
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # Includes enum constants for CertificateType
    #
    module CertificateType
      # No documentation available.
      #
      IMPORTED = "IMPORTED"

      # No documentation available.
      #
      AMAZON_ISSUED = "AMAZON_ISSUED"

      # No documentation available.
      #
      PRIVATE = "PRIVATE"
    end

    # <p>You are trying to
    #       update a resource or configuration that is already being created or updated. Wait for the
    #       previous operation to finish and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_arn
    #   <p>String that contains the ARN of the ACM certificate to be deleted. This must be of the
    #         form:</p>
    #            <p>
    #               <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code>
    #            </p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    #
    #   @return [String]
    #
    DeleteCertificateInput = ::Struct.new(
      :certificate_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteCertificateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the ACM certificate. The ARN must have the following
    #         form:</p>
    #            <p>
    #               <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code>
    #            </p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    #
    #   @return [String]
    #
    DescribeCertificateInput = ::Struct.new(
      :certificate_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate
    #   <p>Metadata about an ACM certificate.</p>
    #
    #   @return [CertificateDetail]
    #
    DescribeCertificateOutput = ::Struct.new(
      :certificate,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DomainStatus
    #
    module DomainStatus
      # No documentation available.
      #
      PENDING_VALIDATION = "PENDING_VALIDATION"

      # No documentation available.
      #
      SUCCESS = "SUCCESS"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>Contains information about the validation of each domain name in the certificate.</p>
    #
    # @!attribute domain_name
    #   <p>A fully qualified domain name (FQDN) in the certificate. For example,
    #           <code>www.example.com</code> or <code>example.com</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute validation_emails
    #   <p>A list of email addresses that ACM used to send domain validation emails.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute validation_domain
    #   <p>The domain name that ACM used to send domain validation emails.</p>
    #
    #   @return [String]
    #
    # @!attribute validation_status
    #   <p>The validation status of the domain name. This can be one of the following values:</p>
    #
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PENDING_VALIDATION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code></code>SUCCESS</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code></code>FAILED</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PENDING_VALIDATION", "SUCCESS", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute resource_record
    #   <p>Contains the CNAME record that you add to your DNS database for domain validation. For
    #         more information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html">Use DNS to Validate Domain Ownership</a>.</p>
    #            <p>Note: The CNAME information that you need does not include the name of your domain. If you
    #         include  your domain name in the DNS database CNAME record, validation fails.  For example, if
    #         the name is "_a79865eb4cd1a6ab990a45779b4e0b96.yourdomain.com", only
    #         "_a79865eb4cd1a6ab990a45779b4e0b96" must be used.</p>
    #
    #   @return [ResourceRecord]
    #
    # @!attribute validation_method
    #   <p>Specifies the domain validation method.</p>
    #
    #   Enum, one of: ["EMAIL", "DNS"]
    #
    #   @return [String]
    #
    DomainValidation = ::Struct.new(
      :domain_name,
      :validation_emails,
      :validation_domain,
      :validation_status,
      :resource_record,
      :validation_method,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the domain names that you want ACM to use to send you emails
    #       that enable you to validate domain ownership.</p>
    #
    # @!attribute domain_name
    #   <p>A fully qualified domain name (FQDN) in the certificate request.</p>
    #
    #   @return [String]
    #
    # @!attribute validation_domain
    #   <p>The domain name that you want ACM to use to send you validation emails. This domain name
    #         is the suffix of the email addresses that you want ACM to use. This must be the same as the
    #           <code>DomainName</code> value or a superdomain of the <code>DomainName</code> value. For
    #         example, if you request a certificate for <code>testing.example.com</code>, you can specify
    #           <code>example.com</code> for this value. In that case, ACM sends domain validation emails
    #         to the following five addresses:</p>
    #            <ul>
    #               <li>
    #                  <p>admin@example.com</p>
    #               </li>
    #               <li>
    #                  <p>administrator@example.com</p>
    #               </li>
    #               <li>
    #                  <p>hostmaster@example.com</p>
    #               </li>
    #               <li>
    #                  <p>postmaster@example.com</p>
    #               </li>
    #               <li>
    #                  <p>webmaster@example.com</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    DomainValidationOption = ::Struct.new(
      :domain_name,
      :validation_domain,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Object containing
    #       expiration events options associated with an Amazon Web Services account.</p>
    #
    # @!attribute days_before_expiry
    #   <p>Specifies the number of days prior to certificate expiration when ACM starts generating
    #           <code>EventBridge</code> events. ACM sends one event per day per certificate until the
    #         certificate expires. By default, accounts receive events starting 45 days before certificate
    #         expiration.</p>
    #
    #   @return [Integer]
    #
    ExpiryEventsConfiguration = ::Struct.new(
      :days_before_expiry,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_arn
    #   <p>An Amazon Resource Name (ARN) of the issued certificate. This must be of the form:</p>
    #            <p>
    #               <code>arn:aws:acm:region:account:certificate/12345678-1234-1234-1234-123456789012</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute passphrase
    #   <p>Passphrase to associate with the encrypted exported private key. If you want to later
    #         decrypt the private key, you must have the passphrase. You can use the following OpenSSL
    #         command to decrypt a private key: </p>
    #            <p>
    #               <code>openssl rsa -in encrypted_key.pem -out decrypted_key.pem</code>
    #            </p>
    #
    #   @return [String]
    #
    ExportCertificateInput = ::Struct.new(
      :certificate_arn,
      :passphrase,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ACM::Types::ExportCertificateInput "\
          "certificate_arn=#{certificate_arn || 'nil'}, "\
          "passphrase=\"[SENSITIVE]\">"
      end
    end

    # @!attribute certificate
    #   <p>The base64 PEM-encoded certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate_chain
    #   <p>The base64 PEM-encoded certificate chain. This does not include the certificate that you
    #         are exporting.</p>
    #
    #   @return [String]
    #
    # @!attribute private_key
    #   <p>The encrypted private key associated with the public key in the certificate. The key is
    #         output in PKCS  8 format and is base64 PEM-encoded. </p>
    #
    #   @return [String]
    #
    ExportCertificateOutput = ::Struct.new(
      :certificate,
      :certificate_chain,
      :private_key,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ACM::Types::ExportCertificateOutput "\
          "certificate=#{certificate || 'nil'}, "\
          "certificate_chain=#{certificate_chain || 'nil'}, "\
          "private_key=\"[SENSITIVE]\">"
      end
    end

    # <p>The Extended Key Usage X.509 v3 extension defines one or more purposes for which the
    #       public key can be used. This is in addition to or in place of the basic purposes specified by
    #       the Key Usage extension. </p>
    #
    # @!attribute name
    #   <p>The name of an Extended Key Usage value.</p>
    #
    #   Enum, one of: ["TLS_WEB_SERVER_AUTHENTICATION", "TLS_WEB_CLIENT_AUTHENTICATION", "CODE_SIGNING", "EMAIL_PROTECTION", "TIME_STAMPING", "OCSP_SIGNING", "IPSEC_END_SYSTEM", "IPSEC_TUNNEL", "IPSEC_USER", "ANY", "NONE", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute oid
    #   <p>An object identifier (OID) for the extension value. OIDs are strings of numbers separated
    #         by periods. The following OIDs are defined in RFC 3280 and RFC 5280. </p>
    #
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>1.3.6.1.5.5.7.3.1 (TLS_WEB_SERVER_AUTHENTICATION)</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>1.3.6.1.5.5.7.3.2 (TLS_WEB_CLIENT_AUTHENTICATION)</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>1.3.6.1.5.5.7.3.3 (CODE_SIGNING)</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>1.3.6.1.5.5.7.3.4 (EMAIL_PROTECTION)</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>1.3.6.1.5.5.7.3.8 (TIME_STAMPING)</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>1.3.6.1.5.5.7.3.9 (OCSP_SIGNING)</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>1.3.6.1.5.5.7.3.5 (IPSEC_END_SYSTEM)</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>1.3.6.1.5.5.7.3.6 (IPSEC_TUNNEL)</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>1.3.6.1.5.5.7.3.7 (IPSEC_USER)</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    ExtendedKeyUsage = ::Struct.new(
      :name,
      :oid,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ExtendedKeyUsageName
    #
    module ExtendedKeyUsageName
      # No documentation available.
      #
      TLS_WEB_SERVER_AUTHENTICATION = "TLS_WEB_SERVER_AUTHENTICATION"

      # No documentation available.
      #
      TLS_WEB_CLIENT_AUTHENTICATION = "TLS_WEB_CLIENT_AUTHENTICATION"

      # No documentation available.
      #
      CODE_SIGNING = "CODE_SIGNING"

      # No documentation available.
      #
      EMAIL_PROTECTION = "EMAIL_PROTECTION"

      # No documentation available.
      #
      TIME_STAMPING = "TIME_STAMPING"

      # No documentation available.
      #
      OCSP_SIGNING = "OCSP_SIGNING"

      # No documentation available.
      #
      IPSEC_END_SYSTEM = "IPSEC_END_SYSTEM"

      # No documentation available.
      #
      IPSEC_TUNNEL = "IPSEC_TUNNEL"

      # No documentation available.
      #
      IPSEC_USER = "IPSEC_USER"

      # No documentation available.
      #
      ANY = "ANY"

      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      CUSTOM = "CUSTOM"
    end

    # Includes enum constants for FailureReason
    #
    module FailureReason
      # No documentation available.
      #
      NO_AVAILABLE_CONTACTS = "NO_AVAILABLE_CONTACTS"

      # No documentation available.
      #
      ADDITIONAL_VERIFICATION_REQUIRED = "ADDITIONAL_VERIFICATION_REQUIRED"

      # No documentation available.
      #
      DOMAIN_NOT_ALLOWED = "DOMAIN_NOT_ALLOWED"

      # No documentation available.
      #
      INVALID_PUBLIC_DOMAIN = "INVALID_PUBLIC_DOMAIN"

      # No documentation available.
      #
      DOMAIN_VALIDATION_DENIED = "DOMAIN_VALIDATION_DENIED"

      # No documentation available.
      #
      CAA_ERROR = "CAA_ERROR"

      # No documentation available.
      #
      PCA_LIMIT_EXCEEDED = "PCA_LIMIT_EXCEEDED"

      # No documentation available.
      #
      PCA_INVALID_ARN = "PCA_INVALID_ARN"

      # No documentation available.
      #
      PCA_INVALID_STATE = "PCA_INVALID_STATE"

      # No documentation available.
      #
      PCA_REQUEST_FAILED = "PCA_REQUEST_FAILED"

      # No documentation available.
      #
      PCA_NAME_CONSTRAINTS_VALIDATION = "PCA_NAME_CONSTRAINTS_VALIDATION"

      # No documentation available.
      #
      PCA_RESOURCE_NOT_FOUND = "PCA_RESOURCE_NOT_FOUND"

      # No documentation available.
      #
      PCA_INVALID_ARGS = "PCA_INVALID_ARGS"

      # No documentation available.
      #
      PCA_INVALID_DURATION = "PCA_INVALID_DURATION"

      # No documentation available.
      #
      PCA_ACCESS_DENIED = "PCA_ACCESS_DENIED"

      # No documentation available.
      #
      SLR_NOT_FOUND = "SLR_NOT_FOUND"

      # No documentation available.
      #
      OTHER = "OTHER"
    end

    # <p>This structure can be used in the <a>ListCertificates</a> action to filter the
    #       output of the certificate list. </p>
    #
    # @!attribute extended_key_usage
    #   <p>Specify one or more <a>ExtendedKeyUsage</a> extension values.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute key_usage
    #   <p>Specify one or more <a>KeyUsage</a> extension values.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute key_types
    #   <p>Specify one or more algorithms that can be used to generate key pairs.</p>
    #            <p>Default filtering returns only <code>RSA_1024</code> and <code>RSA_2048</code>
    #         certificates that have at least one domain. To return other certificate types, provide the
    #         desired type signatures in a comma-separated list. For example, <code>"keyTypes":
    #           ["RSA_2048,RSA_4096"]</code> returns both <code>RSA_2048</code> and <code>RSA_4096</code>
    #         certificates.</p>
    #
    #   @return [Array<String>]
    #
    Filters = ::Struct.new(
      :extended_key_usage,
      :key_usage,
      :key_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetAccountConfigurationInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute expiry_events
    #   <p>Expiration events
    #         configuration options associated with the Amazon Web Services account.</p>
    #
    #   @return [ExpiryEventsConfiguration]
    #
    GetAccountConfigurationOutput = ::Struct.new(
      :expiry_events,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_arn
    #   <p>String that contains a certificate ARN in the following format:</p>
    #            <p>
    #               <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code>
    #            </p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    #
    #   @return [String]
    #
    GetCertificateInput = ::Struct.new(
      :certificate_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate
    #   <p>The ACM-issued certificate corresponding to the ARN specified as input.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate_chain
    #   <p>Certificates forming the requested certificate's chain of trust. The chain consists of the
    #         certificate of the issuing CA and the intermediate certificates of any other subordinate CAs.
    #       </p>
    #
    #   @return [String]
    #
    GetCertificateOutput = ::Struct.new(
      :certificate,
      :certificate_chain,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name
    #           (ARN)</a> of an imported certificate to replace. To import a new certificate, omit this
    #         field. </p>
    #
    #   @return [String]
    #
    # @!attribute certificate
    #   <p>The certificate to import.</p>
    #
    #   @return [String]
    #
    # @!attribute private_key
    #   <p>The private key that matches the public key in the certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate_chain
    #   <p>The PEM encoded certificate chain.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>One or more resource tags to associate with the imported certificate. </p>
    #            <p>Note: You cannot apply tags when reimporting a certificate.</p>
    #
    #   @return [Array<Tag>]
    #
    ImportCertificateInput = ::Struct.new(
      :certificate_arn,
      :certificate,
      :private_key,
      :certificate_chain,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::ACM::Types::ImportCertificateInput "\
          "certificate_arn=#{certificate_arn || 'nil'}, "\
          "certificate=#{certificate || 'nil'}, "\
          "private_key=\"[SENSITIVE]\", "\
          "certificate_chain=#{certificate_chain || 'nil'}, "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # @!attribute certificate_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Name
    #           (ARN)</a> of the imported certificate.</p>
    #
    #   @return [String]
    #
    ImportCertificateOutput = ::Struct.new(
      :certificate_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more of of request parameters specified is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidArgsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested Amazon Resource Name (ARN) does not refer to an existing resource.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidArnException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more values in the <a>DomainValidationOption</a> structure is
    #       incorrect.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidDomainValidationOptionsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An input parameter was invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidParameterException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Processing has reached an invalid state.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidStateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or both of the values that make up the key-value pair is not valid. For example, you
    #       cannot specify a tag value that begins with <code>aws:</code>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidTagException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for KeyAlgorithm
    #
    module KeyAlgorithm
      # No documentation available.
      #
      RSA_1024 = "RSA_1024"

      # No documentation available.
      #
      RSA_2048 = "RSA_2048"

      # No documentation available.
      #
      RSA_3072 = "RSA_3072"

      # No documentation available.
      #
      RSA_4096 = "RSA_4096"

      # No documentation available.
      #
      EC_prime256v1 = "EC_prime256v1"

      # No documentation available.
      #
      EC_secp384r1 = "EC_secp384r1"

      # No documentation available.
      #
      EC_secp521r1 = "EC_secp521r1"
    end

    # <p>The Key Usage X.509 v3 extension defines the purpose of the public key contained in the
    #       certificate.</p>
    #
    # @!attribute name
    #   <p>A string value that contains a Key Usage extension name.</p>
    #
    #   Enum, one of: ["DIGITAL_SIGNATURE", "NON_REPUDIATION", "KEY_ENCIPHERMENT", "DATA_ENCIPHERMENT", "KEY_AGREEMENT", "CERTIFICATE_SIGNING", "CRL_SIGNING", "ENCIPHER_ONLY", "DECIPHER_ONLY", "ANY", "CUSTOM"]
    #
    #   @return [String]
    #
    KeyUsage = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for KeyUsageName
    #
    module KeyUsageName
      # No documentation available.
      #
      DIGITAL_SIGNATURE = "DIGITAL_SIGNATURE"

      # No documentation available.
      #
      NON_REPUDATION = "NON_REPUDIATION"

      # No documentation available.
      #
      KEY_ENCIPHERMENT = "KEY_ENCIPHERMENT"

      # No documentation available.
      #
      DATA_ENCIPHERMENT = "DATA_ENCIPHERMENT"

      # No documentation available.
      #
      KEY_AGREEMENT = "KEY_AGREEMENT"

      # No documentation available.
      #
      CERTIFICATE_SIGNING = "CERTIFICATE_SIGNING"

      # No documentation available.
      #
      CRL_SIGNING = "CRL_SIGNING"

      # No documentation available.
      #
      ENCHIPER_ONLY = "ENCIPHER_ONLY"

      # No documentation available.
      #
      DECIPHER_ONLY = "DECIPHER_ONLY"

      # No documentation available.
      #
      ANY = "ANY"

      # No documentation available.
      #
      CUSTOM = "CUSTOM"
    end

    # <p>An ACM quota has been exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_statuses
    #   <p>Filter the certificate list by status value.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute includes
    #   <p>Filter the certificate list. For more information, see the <a>Filters</a>
    #         structure.</p>
    #
    #   @return [Filters]
    #
    # @!attribute next_token
    #   <p>Use this parameter only when paginating results and only in a subsequent request after you
    #         receive a response with truncated results. Set it to the value of <code>NextToken</code> from
    #         the response you just received.</p>
    #
    #   @return [String]
    #
    # @!attribute max_items
    #   <p>Use this parameter when paginating results to specify the maximum number of items to
    #         return in the response. If additional items exist beyond the number you specify, the
    #           <code>NextToken</code> element is sent in the response. Use this <code>NextToken</code>
    #         value in a subsequent request to retrieve additional items.</p>
    #
    #   @return [Integer]
    #
    ListCertificatesInput = ::Struct.new(
      :certificate_statuses,
      :includes,
      :next_token,
      :max_items,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>When the list is truncated, this value is present and contains the value to use for the
    #           <code>NextToken</code> parameter in a subsequent pagination request.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate_summary_list
    #   <p>A list of ACM certificates.</p>
    #
    #   @return [Array<CertificateSummary>]
    #
    ListCertificatesOutput = ::Struct.new(
      :next_token,
      :certificate_summary_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_arn
    #   <p>String that contains the ARN of the ACM certificate for which you want to list the tags.
    #         This must have the following form:</p>
    #            <p>
    #               <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code>
    #            </p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    #
    #   @return [String]
    #
    ListTagsForCertificateInput = ::Struct.new(
      :certificate_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>The key-value pairs that define the applied tags.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForCertificateOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute expiry_events
    #   <p>Specifies expiration
    #         events associated with an account.</p>
    #
    #   @return [ExpiryEventsConfiguration]
    #
    # @!attribute idempotency_token
    #   <p>Customer-chosen string
    #         used to distinguish between calls to <code>PutAccountConfiguration</code>. Idempotency tokens
    #         time out after one hour. If you call <code>PutAccountConfiguration</code> multiple times with
    #         the same unexpired idempotency token, ACM treats it as the same request and returns the
    #         original result. If you change the idempotency token for each call, ACM treats each call as
    #         a new request.</p>
    #
    #   @return [String]
    #
    PutAccountConfigurationInput = ::Struct.new(
      :expiry_events,
      :idempotency_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutAccountConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RecordType
    #
    module RecordType
      # No documentation available.
      #
      CNAME = "CNAME"
    end

    # @!attribute certificate_arn
    #   <p>String that contains the ARN of the ACM Certificate with one or more tags that you want
    #         to remove. This must be of the form:</p>
    #
    #            <p>
    #               <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code>
    #            </p>
    #
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The key-value pair that defines the tag to remove.</p>
    #
    #   @return [Array<Tag>]
    #
    RemoveTagsFromCertificateInput = ::Struct.new(
      :certificate_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RemoveTagsFromCertificateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_arn
    #   <p>String that contains the ARN of the ACM certificate to be renewed. This must be of the
    #         form:</p>
    #            <p>
    #               <code>arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012</code>
    #            </p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    #
    #   @return [String]
    #
    RenewCertificateInput = ::Struct.new(
      :certificate_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RenewCertificateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RenewalEligibility
    #
    module RenewalEligibility
      # No documentation available.
      #
      ELIGIBLE = "ELIGIBLE"

      # No documentation available.
      #
      INELIGIBLE = "INELIGIBLE"
    end

    # Includes enum constants for RenewalStatus
    #
    module RenewalStatus
      # No documentation available.
      #
      PENDING_AUTO_RENEWAL = "PENDING_AUTO_RENEWAL"

      # No documentation available.
      #
      PENDING_VALIDATION = "PENDING_VALIDATION"

      # No documentation available.
      #
      SUCCESS = "SUCCESS"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>Contains information about the status of ACM's <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html">managed renewal</a> for the certificate. This
    #       structure exists only when the certificate type is <code>AMAZON_ISSUED</code>.</p>
    #
    # @!attribute renewal_status
    #   <p>The status of ACM's <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html">managed renewal</a> of the certificate.</p>
    #
    #   Enum, one of: ["PENDING_AUTO_RENEWAL", "PENDING_VALIDATION", "SUCCESS", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute domain_validation_options
    #   <p>Contains information about the validation of each domain name in the certificate, as it
    #         pertains to ACM's <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html">managed
    #           renewal</a>. This is different from the initial validation that occurs as a result of
    #         the <a>RequestCertificate</a> request. This field exists only when the certificate
    #         type is <code>AMAZON_ISSUED</code>.</p>
    #
    #   @return [Array<DomainValidation>]
    #
    # @!attribute renewal_status_reason
    #   <p>The reason that a renewal request was unsuccessful.</p>
    #
    #   Enum, one of: ["NO_AVAILABLE_CONTACTS", "ADDITIONAL_VERIFICATION_REQUIRED", "DOMAIN_NOT_ALLOWED", "INVALID_PUBLIC_DOMAIN", "DOMAIN_VALIDATION_DENIED", "CAA_ERROR", "PCA_LIMIT_EXCEEDED", "PCA_INVALID_ARN", "PCA_INVALID_STATE", "PCA_REQUEST_FAILED", "PCA_NAME_CONSTRAINTS_VALIDATION", "PCA_RESOURCE_NOT_FOUND", "PCA_INVALID_ARGS", "PCA_INVALID_DURATION", "PCA_ACCESS_DENIED", "SLR_NOT_FOUND", "OTHER"]
    #
    #   @return [String]
    #
    # @!attribute updated_at
    #   <p>The time at which the renewal summary was last updated.</p>
    #
    #   @return [Time]
    #
    RenewalSummary = ::Struct.new(
      :renewal_status,
      :domain_validation_options,
      :renewal_status_reason,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute domain_name
    #   <p> Fully qualified domain name (FQDN), such as www.example.com, that you want to secure with
    #         an ACM certificate. Use an asterisk (*) to create a wildcard certificate that protects
    #         several sites in the same domain. For example, *.example.com protects www.example.com,
    #         site.example.com, and images.example.com. </p>
    #
    #            <p> The first domain name you enter cannot exceed 64 octets, including periods. Each
    #         subsequent Subject Alternative Name (SAN), however, can be up to 253 octets in length. </p>
    #
    #   @return [String]
    #
    # @!attribute validation_method
    #   <p>The method you want to use if you are requesting a public certificate to validate that you
    #         own or control domain. You can <a href="https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-dns.html">validate with DNS</a> or <a href="https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-validate-email.html">validate with
    #           email</a>. We recommend that you use DNS validation. </p>
    #
    #   Enum, one of: ["EMAIL", "DNS"]
    #
    #   @return [String]
    #
    # @!attribute subject_alternative_names
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
    #   @return [Array<String>]
    #
    # @!attribute idempotency_token
    #   <p>Customer chosen string that can be used to distinguish between calls to
    #           <code>RequestCertificate</code>. Idempotency tokens time out after one hour. Therefore, if
    #         you call <code>RequestCertificate</code> multiple times with the same idempotency token within
    #         one hour, ACM recognizes that you are requesting only one certificate and will issue only
    #         one. If you change the idempotency token for each call, ACM recognizes that you are
    #         requesting multiple certificates.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_validation_options
    #   <p>The domain name that you want ACM to use to send you emails so that you can validate
    #         domain ownership.</p>
    #
    #   @return [Array<DomainValidationOption>]
    #
    # @!attribute options
    #   <p>Currently, you can use this parameter to specify whether to add the certificate to a
    #         certificate transparency log. Certificate transparency makes it possible to detect SSL/TLS
    #         certificates that have been mistakenly or maliciously issued. Certificates that have not been
    #         logged typically produce an error message in a browser. For more information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-bestpractices.html best-practices-transparency">Opting Out of Certificate Transparency Logging</a>.</p>
    #
    #   @return [CertificateOptions]
    #
    # @!attribute certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) of the private certificate authority (CA) that will be used
    #         to issue the certificate. If you do not provide an ARN and you are trying to request a private
    #         certificate, ACM will attempt to issue a public certificate. For more information about
    #         private CAs, see the <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaWelcome.html">Amazon Web Services Certificate Manager Private Certificate Authority (PCA)</a> user guide. The ARN must have the following form: </p>
    #
    #            <p>
    #               <code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>One or more resource tags to associate with the certificate.</p>
    #
    #   @return [Array<Tag>]
    #
    RequestCertificateInput = ::Struct.new(
      :domain_name,
      :validation_method,
      :subject_alternative_names,
      :idempotency_token,
      :domain_validation_options,
      :options,
      :certificate_authority_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_arn
    #   <p>String that contains the ARN of the issued certificate. This must be of the form:</p>
    #            <p>
    #               <code>arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012</code>
    #            </p>
    #
    #   @return [String]
    #
    RequestCertificateOutput = ::Struct.new(
      :certificate_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The certificate request is in process and the certificate in your account has not yet been
    #       issued.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    RequestInProgressException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_arn
    #   <p>String that contains the ARN of the requested certificate. The certificate ARN is
    #         generated and returned by the <a>RequestCertificate</a> action as soon as the
    #         request is made. By default, using this parameter causes email to be sent to all top-level
    #         domains you specified in the certificate request. The ARN must be of the form: </p>
    #
    #            <p>
    #               <code>arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute domain
    #   <p>The fully qualified domain name (FQDN) of the certificate that needs to be
    #         validated.</p>
    #
    #   @return [String]
    #
    # @!attribute validation_domain
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
    #   @return [String]
    #
    ResendValidationEmailInput = ::Struct.new(
      :certificate_arn,
      :domain,
      :validation_domain,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ResendValidationEmailOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The certificate is in use by another Amazon Web Services service in the caller's account. Remove the
    #       association and try again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified certificate cannot be found in the caller's account or the caller's account
    #       cannot be found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains a DNS record value that you can use to validate ownership or control
    #       of a domain. This is used by the <a>DescribeCertificate</a> action. </p>
    #
    # @!attribute name
    #   <p>The name of the DNS record to create in your domain. This is supplied by ACM.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of DNS record. Currently this can be <code>CNAME</code>.</p>
    #
    #   Enum, one of: ["CNAME"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the CNAME record to add to your DNS database. This is supplied by
    #         ACM.</p>
    #
    #   @return [String]
    #
    ResourceRecord = ::Struct.new(
      :name,
      :type,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RevocationReason
    #
    module RevocationReason
      # No documentation available.
      #
      UNSPECIFIED = "UNSPECIFIED"

      # No documentation available.
      #
      KEY_COMPROMISE = "KEY_COMPROMISE"

      # No documentation available.
      #
      CA_COMPROMISE = "CA_COMPROMISE"

      # No documentation available.
      #
      AFFILIATION_CHANGED = "AFFILIATION_CHANGED"

      # No documentation available.
      #
      SUPERCEDED = "SUPERCEDED"

      # No documentation available.
      #
      CESSATION_OF_OPERATION = "CESSATION_OF_OPERATION"

      # No documentation available.
      #
      CERTIFICATE_HOLD = "CERTIFICATE_HOLD"

      # No documentation available.
      #
      REMOVE_FROM_CRL = "REMOVE_FROM_CRL"

      # No documentation available.
      #
      PRIVILEGE_WITHDRAWN = "PRIVILEGE_WITHDRAWN"

      # No documentation available.
      #
      A_A_COMPROMISE = "A_A_COMPROMISE"
    end

    # <p>A key-value pair that identifies or specifies metadata about an ACM resource.</p>
    #
    # @!attribute key
    #   <p>The key of the tag.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the tag.</p>
    #
    #   @return [String]
    #
    Tag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A specified tag did not comply with an existing tag policy and was rejected.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TagPolicyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was denied
    #       because it exceeded a quota.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request contains too many tags. Try the request again with fewer tags.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyTagsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_arn
    #   <p>ARN of the requested certificate to update. This must be of the form:</p>
    #            <p>
    #               <code>arn:aws:acm:us-east-1:<i>account</i>:certificate/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute options
    #   <p>Use to update the options for your certificate. Currently, you can specify whether to add
    #         your certificate to a transparency log. Certificate transparency makes it possible to detect
    #         SSL/TLS certificates that have been mistakenly or maliciously issued. Certificates that have
    #         not been logged typically produce an error message in a browser. </p>
    #
    #   @return [CertificateOptions]
    #
    UpdateCertificateOptionsInput = ::Struct.new(
      :certificate_arn,
      :options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateCertificateOptionsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The supplied input
    #       failed to satisfy constraints of an Amazon Web Services service.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ValidationMethod
    #
    module ValidationMethod
      # No documentation available.
      #
      EMAIL = "EMAIL"

      # No documentation available.
      #
      DNS = "DNS"
    end

  end
end
