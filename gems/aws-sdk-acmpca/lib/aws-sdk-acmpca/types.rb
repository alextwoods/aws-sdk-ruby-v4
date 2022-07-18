# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ACMPCA
  module Types

    # <p>Contains information about the certificate subject. The <code>Subject</code> field in
    # 			the certificate identifies the entity that owns or controls the public key in the
    # 			certificate. The entity can be a user, computer, device, or service. The <code>Subject
    # 			</code>must contain an X.500 distinguished name (DN). A DN is a sequence of relative
    # 			distinguished names (RDNs). The RDNs are separated by commas in the certificate.</p>
    #
    # @!attribute country
    #   <p>Two-digit code that specifies the country in which the certificate subject
    #   			located.</p>
    #
    #   @return [String]
    #
    # @!attribute organization
    #   <p>Legal name of the organization with which the certificate subject is affiliated.
    #   		</p>
    #
    #   @return [String]
    #
    # @!attribute organizational_unit
    #   <p>A subdivision or unit of the organization (such as sales or finance) with which the
    #   			certificate subject is affiliated.</p>
    #
    #   @return [String]
    #
    # @!attribute distinguished_name_qualifier
    #   <p>Disambiguating information for the certificate subject.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>State in which the subject of the certificate is located.</p>
    #
    #   @return [String]
    #
    # @!attribute common_name
    #   <p>For CA and end-entity certificates in a private PKI, the common name (CN) can be any
    #   			string within the length limit. </p>
    #   		       <p>Note: In publicly trusted certificates, the common name must be a fully qualified
    #   			domain name (FQDN) associated with the certificate subject.</p>
    #
    #   @return [String]
    #
    # @!attribute serial_number
    #   <p>The certificate serial number.</p>
    #
    #   @return [String]
    #
    # @!attribute locality
    #   <p>The locality (such as a city or town) in which the certificate subject is
    #   			located.</p>
    #
    #   @return [String]
    #
    # @!attribute title
    #   <p>A title such as Mr. or Ms., which is pre-pended to the name to refer formally to the
    #   			certificate subject.</p>
    #
    #   @return [String]
    #
    # @!attribute surname
    #   <p>Family name. In the US and the UK, for example, the surname of an individual is
    #   			ordered last. In Asian cultures the surname is typically ordered first.</p>
    #
    #   @return [String]
    #
    # @!attribute given_name
    #   <p>First name.</p>
    #
    #   @return [String]
    #
    # @!attribute initials
    #   <p>Concatenation that typically contains the first letter of the <b>GivenName</b>, the first letter of the middle name if one exists, and the
    #   			first letter of the <b>Surname</b>.</p>
    #
    #   @return [String]
    #
    # @!attribute pseudonym
    #   <p>Typically a shortened version of a longer <b>GivenName</b>.
    #   			For example, Jonathan is often shortened to John. Elizabeth is often shortened to Beth,
    #   			Liz, or Eliza.</p>
    #
    #   @return [String]
    #
    # @!attribute generation_qualifier
    #   <p>Typically a qualifier appended to the name of an individual. Examples include Jr. for
    #   			junior, Sr. for senior, and III for third.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_attributes
    #   <p></p>
    #   		       <p>Contains a sequence of one or more X.500 relative distinguished
    #   			names
    #   			(RDNs),
    #   			each of which consists of an object identifier (OID) and
    #   			a
    #   			value. For more information, see NIST’s definition of
    #   			<a href="https://csrc.nist.gov/glossary/term/Object_Identifier">Object
    #   				Identifier
    #   				(OID)</a>.</p>
    #   		
    #   		       <note>
    #   			         <p>Custom attributes cannot be used in combination with standard attributes.</p>
    #   		       </note>
    #
    #   @return [Array<CustomAttribute>]
    #
    ASN1Subject = ::Struct.new(
      :country,
      :organization,
      :organizational_unit,
      :distinguished_name_qualifier,
      :state,
      :common_name,
      :serial_number,
      :locality,
      :title,
      :surname,
      :given_name,
      :initials,
      :pseudonym,
      :generation_qualifier,
      :custom_attributes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides access information used by the <code>authorityInfoAccess</code> and
    # 				<code>subjectInfoAccess</code> extensions described in <a href="https://datatracker.ietf.org/doc/html/rfc5280">RFC 5280</a>.</p>
    #
    # @!attribute access_method
    #   <p>The type and format of <code>AccessDescription</code> information.</p>
    #
    #   @return [AccessMethod]
    #
    # @!attribute access_location
    #   <p>The location of <code>AccessDescription</code> information.</p>
    #
    #   @return [GeneralName]
    #
    AccessDescription = ::Struct.new(
      :access_method,
      :access_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the type and format of extension access. Only one of
    # 				<code>CustomObjectIdentifier</code> or <code>AccessMethodType</code> may be
    # 			provided. Providing both results in <code>InvalidArgsException</code>.</p>
    #
    # @!attribute custom_object_identifier
    #   <p>An object identifier (OID) specifying the <code>AccessMethod</code>. The OID must
    #   			satisfy the regular expression shown below. For more information, see NIST's definition
    #   			of <a href="https://csrc.nist.gov/glossary/term/Object_Identifier">Object Identifier
    #   				(OID)</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute access_method_type
    #   <p>Specifies the <code>AccessMethod</code>.</p>
    #
    #   Enum, one of: ["CA_REPOSITORY", "RESOURCE_PKI_MANIFEST", "RESOURCE_PKI_NOTIFY"]
    #
    #   @return [String]
    #
    AccessMethod = ::Struct.new(
      :custom_object_identifier,
      :access_method_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AccessMethodType
    #
    module AccessMethodType
      # No documentation available.
      #
      CA_REPOSITORY = "CA_REPOSITORY"

      # No documentation available.
      #
      RESOURCE_PKI_MANIFEST = "RESOURCE_PKI_MANIFEST"

      # No documentation available.
      #
      RESOURCE_PKI_NOTIFY = "RESOURCE_PKI_NOTIFY"
    end

    # Includes enum constants for ActionType
    #
    module ActionType
      # No documentation available.
      #
      IssueCertificate = "IssueCertificate"

      # No documentation available.
      #
      GetCertificate = "GetCertificate"

      # No documentation available.
      #
      ListPermissions = "ListPermissions"
    end

    # <p>Contains X.509 certificate information to be placed in an issued certificate. An
    # 				<code>APIPassthrough</code> or <code>APICSRPassthrough</code> template variant must
    # 			be selected, or else this parameter is ignored. </p>
    # 		       <p>If conflicting or duplicate certificate information is supplied from other sources,
    # 			ACM Private CA applies <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/UsingTemplates.html#template-order-of-operations">order of
    # 				operation rules</a> to determine what information is used.</p>
    #
    # @!attribute extensions
    #   <p>Specifies X.509 extension information for a certificate.</p>
    #
    #   @return [Extensions]
    #
    # @!attribute subject
    #   <p>Contains information about the certificate subject. The <code>Subject</code> field in
    #   			the certificate identifies the entity that owns or controls the public key in the
    #   			certificate. The entity can be a user, computer, device, or service. The <code>Subject
    #   			</code>must contain an X.500 distinguished name (DN). A DN is a sequence of relative
    #   			distinguished names (RDNs). The RDNs are separated by commas in the certificate.</p>
    #
    #   @return [ASN1Subject]
    #
    ApiPassthrough = ::Struct.new(
      :extensions,
      :subject,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AuditReportResponseFormat
    #
    module AuditReportResponseFormat
      # No documentation available.
      #
      JSON = "JSON"

      # No documentation available.
      #
      CSV = "CSV"
    end

    # Includes enum constants for AuditReportStatus
    #
    module AuditReportStatus
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      SUCCESS = "SUCCESS"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>Contains information about your private certificate authority (CA). Your private CA
    # 			can issue and revoke X.509 digital certificates. Digital certificates verify that the
    # 			entity named in the certificate <b>Subject</b> field owns or
    # 			controls the public key contained in the <b>Subject Public Key
    # 				Info</b> field. Call the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a> action to create your private CA. You must then
    # 			call the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_GetCertificateAuthorityCertificate.html">GetCertificateAuthorityCertificate</a> action to retrieve a private CA
    # 			certificate signing request (CSR). Sign the CSR with your ACM Private CA-hosted or
    # 			on-premises root or subordinate CA certificate. Call the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ImportCertificateAuthorityCertificate.html">ImportCertificateAuthorityCertificate</a> action to import the signed
    # 			certificate into Certificate Manager (ACM). </p>
    #
    # @!attribute arn
    #   <p>Amazon Resource Name (ARN) for your private certificate authority (CA). The format is
    #   					<code>
    #                  <i>12345678-1234-1234-1234-123456789012</i>
    #               </code>.</p>
    #
    #   @return [String]
    #
    # @!attribute owner_account
    #   <p>The Amazon Web Services account ID that owns the certificate authority.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>Date and time at which your private CA was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_state_change_at
    #   <p>Date and time at which your private CA was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute type
    #   <p>Type of your private CA.</p>
    #
    #   Enum, one of: ["ROOT", "SUBORDINATE"]
    #
    #   @return [String]
    #
    # @!attribute serial
    #   <p>Serial number of your private CA.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Status of your private CA.</p>
    #
    #   Enum, one of: ["CREATING", "PENDING_CERTIFICATE", "ACTIVE", "DELETED", "DISABLED", "EXPIRED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute not_before
    #   <p>Date and time before which your private CA certificate is not valid.</p>
    #
    #   @return [Time]
    #
    # @!attribute not_after
    #   <p>Date and time after which your private CA certificate is not valid.</p>
    #
    #   @return [Time]
    #
    # @!attribute failure_reason
    #   <p>Reason the request to create your private CA failed.</p>
    #
    #   Enum, one of: ["REQUEST_TIMED_OUT", "UNSUPPORTED_ALGORITHM", "OTHER"]
    #
    #   @return [String]
    #
    # @!attribute certificate_authority_configuration
    #   <p>Your private CA configuration.</p>
    #
    #   @return [CertificateAuthorityConfiguration]
    #
    # @!attribute revocation_configuration
    #   <p>Information about the Online Certificate Status Protocol (OCSP) configuration or
    #   			certificate revocation list (CRL) created and maintained by your private CA. </p>
    #
    #   @return [RevocationConfiguration]
    #
    # @!attribute restorable_until
    #   <p>The period during which a deleted CA can be restored. For more information, see the
    #   				<code>PermanentDeletionTimeInDays</code> parameter of the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DeleteCertificateAuthorityRequest.html">DeleteCertificateAuthorityRequest</a> action. </p>
    #
    #   @return [Time]
    #
    # @!attribute key_storage_security_standard
    #   <p>Defines a cryptographic key management compliance standard used for handling CA keys. </p>
    #   		       <p>Default: FIPS_140_2_LEVEL_3_OR_HIGHER</p>
    #   		       <p>Note: Amazon Web Services Region ap-northeast-3 supports only FIPS_140_2_LEVEL_2_OR_HIGHER. You must
    #   			explicitly specify this parameter and value when creating a CA in that Region.
    #   			Specifying a different value (or no value) results in an
    #   				<code>InvalidArgsException</code> with the message "A certificate authority cannot
    #   			be created in this region with the specified security standard."</p>
    #
    #   Enum, one of: ["FIPS_140_2_LEVEL_2_OR_HIGHER", "FIPS_140_2_LEVEL_3_OR_HIGHER"]
    #
    #   @return [String]
    #
    CertificateAuthority = ::Struct.new(
      :arn,
      :owner_account,
      :created_at,
      :last_state_change_at,
      :type,
      :serial,
      :status,
      :not_before,
      :not_after,
      :failure_reason,
      :certificate_authority_configuration,
      :revocation_configuration,
      :restorable_until,
      :key_storage_security_standard,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains configuration information for your private certificate authority (CA). This
    # 			includes information about the class of public key algorithm and the key pair that your
    # 			private CA creates when it issues a certificate. It also includes the signature
    # 			algorithm that it uses when issuing certificates, and its X.500 distinguished name. You
    # 			must specify this information when you call the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a> action. </p>
    #
    # @!attribute key_algorithm
    #   <p>Type of the public key algorithm and size, in bits, of the key pair that your CA
    #   			creates when it issues a certificate. When you create a subordinate CA, you must use a
    #   			key algorithm supported by the parent CA.</p>
    #
    #   Enum, one of: ["RSA_2048", "RSA_4096", "EC_prime256v1", "EC_secp384r1"]
    #
    #   @return [String]
    #
    # @!attribute signing_algorithm
    #   <p>Name of the algorithm your private CA uses to sign certificate requests.</p>
    #   		       <p>This parameter should not be confused with the <code>SigningAlgorithm</code> parameter
    #   			used to sign certificates when they are issued.</p>
    #
    #   Enum, one of: ["SHA256WITHECDSA", "SHA384WITHECDSA", "SHA512WITHECDSA", "SHA256WITHRSA", "SHA384WITHRSA", "SHA512WITHRSA"]
    #
    #   @return [String]
    #
    # @!attribute subject
    #   <p>Structure that contains X.500 distinguished name information for your private
    #   			CA.</p>
    #
    #   @return [ASN1Subject]
    #
    # @!attribute csr_extensions
    #   <p>Specifies information to be added to the extension section of the certificate signing
    #   			request (CSR).</p>
    #
    #   @return [CsrExtensions]
    #
    CertificateAuthorityConfiguration = ::Struct.new(
      :key_algorithm,
      :signing_algorithm,
      :subject,
      :csr_extensions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CertificateAuthorityStatus
    #
    module CertificateAuthorityStatus
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      PENDING_CERTIFICATE = "PENDING_CERTIFICATE"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DELETED = "DELETED"

      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      EXPIRED = "EXPIRED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # Includes enum constants for CertificateAuthorityType
    #
    module CertificateAuthorityType
      # No documentation available.
      #
      ROOT = "ROOT"

      # No documentation available.
      #
      SUBORDINATE = "SUBORDINATE"
    end

    # <p>The certificate authority certificate you are importing does not comply with
    # 			conditions specified in the certificate that signed it.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    CertificateMismatchException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A previous update to your private CA is still ongoing.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConcurrentModificationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) of the CA to be audited. This is of the form:</p>
    #   		       <p>
    #               <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket_name
    #   <p>The name of the S3 bucket that will contain the audit report.</p>
    #
    #   @return [String]
    #
    # @!attribute audit_report_response_format
    #   <p>The format in which to create the report. This can be either <b>JSON</b> or <b>CSV</b>.</p>
    #
    #   Enum, one of: ["JSON", "CSV"]
    #
    #   @return [String]
    #
    CreateCertificateAuthorityAuditReportInput = ::Struct.new(
      :certificate_authority_arn,
      :s3_bucket_name,
      :audit_report_response_format,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute audit_report_id
    #   <p>An alphanumeric string that contains a report identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_key
    #   <p>The <b>key</b> that uniquely identifies the report file in
    #   			your S3 bucket.</p>
    #
    #   @return [String]
    #
    CreateCertificateAuthorityAuditReportOutput = ::Struct.new(
      :audit_report_id,
      :s3_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_authority_configuration
    #   <p>Name and bit size of the private key algorithm, the name of the signing algorithm, and
    #   			X.500 certificate subject information.</p>
    #
    #   @return [CertificateAuthorityConfiguration]
    #
    # @!attribute revocation_configuration
    #   <p>Contains information to enable Online Certificate Status Protocol (OCSP) support, to
    #   			enable a certificate revocation list (CRL), to enable both, or to enable neither. The
    #   			default is for both certificate validation mechanisms to be disabled. For more
    #   			information, see the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_OcspConfiguration.html">OcspConfiguration</a> and <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CrlConfiguration.html">CrlConfiguration</a> types.</p>
    #
    #   @return [RevocationConfiguration]
    #
    # @!attribute certificate_authority_type
    #   <p>The type of the certificate authority.</p>
    #
    #   Enum, one of: ["ROOT", "SUBORDINATE"]
    #
    #   @return [String]
    #
    # @!attribute idempotency_token
    #   <p>Custom string that can be used to distinguish between calls to the <b>CreateCertificateAuthority</b> action. Idempotency tokens for
    #   				<b>CreateCertificateAuthority</b> time out after five
    #   			minutes. Therefore, if you call <b>CreateCertificateAuthority</b> multiple times with the same idempotency
    #   			token within five minutes, ACM Private CA recognizes that you are requesting only
    #   			certificate authority and will issue only one. If you change the idempotency token for
    #   			each call, PCA recognizes that you are requesting multiple certificate
    #   			authorities.</p>
    #
    #   @return [String]
    #
    # @!attribute key_storage_security_standard
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
    #   Enum, one of: ["FIPS_140_2_LEVEL_2_OR_HIGHER", "FIPS_140_2_LEVEL_3_OR_HIGHER"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Key-value pairs that will be attached to the new private CA. You can associate up to
    #   			50 tags with a private CA. For information using tags with IAM to manage permissions,
    #   			see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html">Controlling Access Using IAM Tags</a>.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateCertificateAuthorityInput = ::Struct.new(
      :certificate_authority_configuration,
      :revocation_configuration,
      :certificate_authority_type,
      :idempotency_token,
      :key_storage_security_standard,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_authority_arn
    #   <p>If successful, the Amazon Resource Name (ARN) of the certificate authority (CA). This
    #   			is of the form: </p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>.
    #   		</p>
    #
    #   @return [String]
    #
    CreateCertificateAuthorityOutput = ::Struct.new(
      :certificate_authority_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) of the CA that grants the permissions. You can find the
    #   			ARN by calling the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html">ListCertificateAuthorities</a> action. This must have the following form: </p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>.
    #   		</p>
    #
    #   @return [String]
    #
    # @!attribute principal
    #   <p>The Amazon Web Services service or identity that receives the permission. At this time, the only
    #   			valid principal is <code>acm.amazonaws.com</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute source_account
    #   <p>The ID of the calling account.</p>
    #
    #   @return [String]
    #
    # @!attribute actions
    #   <p>The actions that the specified Amazon Web Services service principal can use. These include
    #   				<code>IssueCertificate</code>, <code>GetCertificate</code>, and
    #   				<code>ListPermissions</code>.</p>
    #
    #   @return [Array<String>]
    #
    CreatePermissionInput = ::Struct.new(
      :certificate_authority_arn,
      :principal,
      :source_account,
      :actions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreatePermissionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains configuration information for a certificate revocation list (CRL). Your
    # 			private certificate authority (CA) creates base CRLs. Delta CRLs are not supported. You
    # 			can enable CRLs for your new or an existing private CA by setting the <b>Enabled</b> parameter to <code>true</code>. Your private CA
    # 			writes CRLs to an S3 bucket that you specify in the <b>S3BucketName</b> parameter. You can hide the name of your bucket by
    # 			specifying a value for the <b>CustomCname</b> parameter. Your
    # 			private CA copies the CNAME or the S3 bucket name to the <b>CRL
    # 				Distribution Points</b> extension of each certificate it issues. Your S3
    # 			bucket policy must give write permission to ACM Private CA. </p>
    # 		       <p>ACM Private CA assets that are stored in Amazon S3 can be protected with encryption.
    #   For more information, see <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaCreateCa.html#crl-encryption">Encrypting Your
    # 			CRLs</a>.</p>
    # 		       <p>Your private CA uses the value in the <b>ExpirationInDays</b> parameter to calculate the <b>nextUpdate</b> field in the CRL. The CRL is refreshed prior to a
    # 			certificate's expiration date or when a certificate is revoked. When a certificate is
    # 			revoked, it appears in the CRL until the certificate expires, and then in one additional
    # 			CRL after expiration, and it always appears in the audit report.</p>
    #
    # 		       <p>A CRL is typically updated approximately 30 minutes after a certificate
    # 	is revoked. If for any reason a CRL update fails, ACM Private CA makes further attempts
    # 	every 15 minutes.</p>
    #
    # 		       <p>CRLs contain the following fields:</p>
    # 		       <ul>
    #             <li>
    # 				           <p>
    #                   <b>Version</b>: The current version number defined
    # 					in RFC 5280 is V2. The integer value is 0x1. </p>
    # 			         </li>
    #             <li>
    # 				           <p>
    #                   <b>Signature Algorithm</b>: The name of the
    # 					algorithm used to sign the CRL.</p>
    # 			         </li>
    #             <li>
    # 				           <p>
    #                   <b>Issuer</b>: The X.500 distinguished name of your
    # 					private CA that issued the CRL.</p>
    # 			         </li>
    #             <li>
    # 				           <p>
    #                   <b>Last Update</b>: The issue date and time of this
    # 					CRL.</p>
    # 			         </li>
    #             <li>
    # 				           <p>
    #                   <b>Next Update</b>: The day and time by which the
    # 					next CRL will be issued.</p>
    # 			         </li>
    #             <li>
    # 				           <p>
    #                   <b>Revoked Certificates</b>: List of revoked
    # 					certificates. Each list item contains the following information.</p>
    # 				           <ul>
    #                   <li>
    # 						               <p>
    #                         <b>Serial Number</b>: The serial number, in
    # 							hexadecimal format, of the revoked certificate.</p>
    # 					             </li>
    #                   <li>
    # 						               <p>
    #                         <b>Revocation Date</b>: Date and time the
    # 							certificate was revoked.</p>
    # 					             </li>
    #                   <li>
    # 						               <p>
    #                         <b>CRL Entry Extensions</b>: Optional
    # 							extensions for the CRL entry.</p>
    # 						               <ul>
    #                         <li>
    # 								                   <p>
    #                               <b>X509v3 CRL Reason Code</b>:
    # 									Reason the certificate was revoked.</p>
    # 							                 </li>
    #                      </ul>
    # 					             </li>
    #                </ul>
    # 			         </li>
    #             <li>
    # 				           <p>
    #                   <b>CRL Extensions</b>: Optional extensions for the
    # 					CRL.</p>
    # 				           <ul>
    #                   <li>
    # 						               <p>
    #                         <b>X509v3 Authority Key Identifier</b>:
    # 							Identifies the public key associated with the private key used to sign
    # 							the certificate.</p>
    # 					             </li>
    #                   <li>
    # 						               <p>
    #                         <b>X509v3 CRL Number:</b>: Decimal sequence
    # 							number for the CRL.</p>
    # 					             </li>
    #                </ul>
    # 			         </li>
    #             <li>
    # 				           <p>
    #                   <b>Signature Algorithm</b>: Algorithm used by your
    # 					private CA to sign the CRL.</p>
    # 			         </li>
    #             <li>
    # 				           <p>
    #                   <b>Signature Value</b>: Signature computed over the
    # 					CRL.</p>
    # 			         </li>
    #          </ul>
    # 		       <p>Certificate revocation lists created by ACM Private CA are DER-encoded. You can use the
    # 			following OpenSSL command to list a CRL.</p>
    # 		       <p>
    #             <code>openssl crl -inform DER -text -in <i>crl_path</i>
    # 			-noout</code>
    #          </p>
    # 		       <p>For more information, see <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/crl-planning.html">Planning a certificate revocation list
    # 				(CRL)</a> in the <i>Certificate Manager Private Certificate Authority (PCA) User Guide</i>
    #          </p>
    #
    # @!attribute enabled
    #   <p>Boolean value that specifies whether certificate revocation lists (CRLs) are enabled.
    #   			You can use this value to enable certificate revocation for a new CA when you call the
    #   				<a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a> action or for an existing CA when you call the
    #   				<a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html">UpdateCertificateAuthority</a> action. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute expiration_in_days
    #   <p>Validity period of the CRL in days.</p>
    #
    #   @return [Integer]
    #
    # @!attribute custom_cname
    #   <p>Name inserted into the certificate <b>CRL Distribution
    #   				Points</b> extension that enables the use of an alias for the CRL
    #   			distribution point. Use this value if you don't want the name of your S3 bucket to be
    #   			public.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket_name
    #   <p>Name of the S3 bucket that contains the CRL. If you do not provide a value for the
    #   				<b>CustomCname</b> argument, the name of your S3 bucket
    #   			is placed into the <b>CRL Distribution Points</b> extension of
    #   			the issued certificate. You can change the name of your bucket by calling the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html">UpdateCertificateAuthority</a> operation. You must specify a <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaCreateCa.html s3-policies">bucket
    #   				policy</a> that allows ACM Private CA to write the CRL to your bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_object_acl
    #   <p>Determines whether the CRL will be publicly readable or privately held in the CRL
    #   			Amazon S3 bucket. If you choose PUBLIC_READ, the CRL will be accessible over the public
    #   			internet. If you choose BUCKET_OWNER_FULL_CONTROL, only the owner of the CRL S3 bucket
    #   			can access the CRL, and your PKI clients may need an alternative method of access. </p>
    #   		       <p>If no value is specified, the default is <code>PUBLIC_READ</code>.</p>
    #   		       <p>
    #               <i>Note:</i> This default can cause CA creation to fail in some
    #   			circumstances. If you have have enabled the Block Public Access (BPA) feature in your S3
    #   			account, then you must specify the value of this parameter as
    #   				<code>BUCKET_OWNER_FULL_CONTROL</code>, and not doing so results in an error. If you
    #   			have disabled BPA in S3, then you can specify either
    #   				<code>BUCKET_OWNER_FULL_CONTROL</code> or <code>PUBLIC_READ</code> as the
    #   			value.</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaCreateCa.html s3-bpa">Blocking public access to the S3
    #   				bucket</a>.</p>
    #
    #   Enum, one of: ["PUBLIC_READ", "BUCKET_OWNER_FULL_CONTROL"]
    #
    #   @return [String]
    #
    CrlConfiguration = ::Struct.new(
      :enabled,
      :expiration_in_days,
      :custom_cname,
      :s3_bucket_name,
      :s3_object_acl,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the certificate extensions to be added to the certificate signing request
    # 			(CSR).</p>
    #
    # @!attribute key_usage
    #   <p>Indicates the purpose of the certificate and of the key contained in the
    #   			certificate.</p>
    #
    #   @return [KeyUsage]
    #
    # @!attribute subject_information_access
    #   <p>For CA certificates, provides a path to additional information pertaining to the CA,
    #   			such as revocation and policy. For more information, see <a href="https://datatracker.ietf.org/doc/html/rfc5280 section-4.2.2.2">Subject
    #   				Information Access</a> in RFC 5280.</p>
    #
    #   @return [Array<AccessDescription>]
    #
    CsrExtensions = ::Struct.new(
      :key_usage,
      :subject_information_access,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines the X.500 relative distinguished name (RDN).</p>
    #
    # @!attribute object_identifier
    #   <p>Specifies the object identifier (OID) of the attribute type of
    #   			the
    #   			relative distinguished name
    #   			(RDN).</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p></p>
    #   		       <p>Specifies the attribute value of relative distinguished name
    #   			(RDN).</p>
    #
    #   @return [String]
    #
    CustomAttribute = ::Struct.new(
      :object_identifier,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    # 		       <p>Specifies the X.509 extension information for a
    # 			certificate.</p>
    # 		       <p>Extensions present in <code>CustomExtensions</code> follow the
    # 				<code>ApiPassthrough</code>
    # 			         <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/UsingTemplates.html#template-order-of-operations">template
    # 				rules</a>. </p>
    #
    # @!attribute object_identifier
    #   <p></p>
    #   		       <p>Specifies the object identifier (OID) of the X.509 extension. For more information,
    #   			see the
    #   				<a href="https://oidref.com/2.5.29">Global OID reference
    #   				database.</a>
    #   		       </p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p></p>
    #   		       <p>Specifies the base64-encoded value of the X.509
    #   			extension.</p>
    #
    #   @return [String]
    #
    # @!attribute critical
    #   <p></p>
    #   		       <p>Specifies the critical flag of
    #   			the
    #   			X.509
    #   			extension.</p>
    #
    #   @return [Boolean]
    #
    CustomExtension = ::Struct.new(
      :object_identifier,
      :value,
      :critical,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a>. This must have the following form: </p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>.
    #   		</p>
    #
    #   @return [String]
    #
    # @!attribute permanent_deletion_time_in_days
    #   <p>The number of days to make a CA restorable after it has been deleted. This can be
    #   			anywhere from 7 to 30 days, with 30 being the default.</p>
    #
    #   @return [Integer]
    #
    DeleteCertificateAuthorityInput = ::Struct.new(
      :certificate_authority_arn,
      :permanent_deletion_time_in_days,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteCertificateAuthorityOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_authority_arn
    #   <p>The Amazon Resource Number (ARN) of the private CA that issued the permissions. You
    #   			can find the CA's ARN by calling the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html">ListCertificateAuthorities</a> action. This must have the following form: </p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>.
    #   		</p>
    #
    #   @return [String]
    #
    # @!attribute principal
    #   <p>The Amazon Web Services service or identity that will have its CA permissions revoked. At this time,
    #   			the only valid service principal is <code>acm.amazonaws.com</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute source_account
    #   <p>The Amazon Web Services account that calls this action.</p>
    #
    #   @return [String]
    #
    DeletePermissionInput = ::Struct.new(
      :certificate_authority_arn,
      :principal,
      :source_account,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeletePermissionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Number (ARN) of the private CA that will have its policy deleted.
    #   			You can find the CA's ARN by calling the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html">ListCertificateAuthorities</a> action. The ARN value must have the form
    #   				<code>arn:aws:acm-pca:region:account:certificate-authority/01234567-89ab-cdef-0123-0123456789ab</code>.
    #   		</p>
    #
    #   @return [String]
    #
    DeletePolicyInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeletePolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) of the private CA. This must be of the form:</p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>.
    #   		</p>
    #
    #   @return [String]
    #
    # @!attribute audit_report_id
    #   <p>The report ID returned by calling the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthorityAuditReport.html">CreateCertificateAuthorityAuditReport</a> action.</p>
    #
    #   @return [String]
    #
    DescribeCertificateAuthorityAuditReportInput = ::Struct.new(
      :certificate_authority_arn,
      :audit_report_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute audit_report_status
    #   <p>Specifies whether report creation is in progress, has succeeded, or has failed.</p>
    #
    #   Enum, one of: ["CREATING", "SUCCESS", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute s3_bucket_name
    #   <p>Name of the S3 bucket that contains the report.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_key
    #   <p>S3 <b>key</b> that uniquely identifies the report file in
    #   			your S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time at which the report was created.</p>
    #
    #   @return [Time]
    #
    DescribeCertificateAuthorityAuditReportOutput = ::Struct.new(
      :audit_report_status,
      :s3_bucket_name,
      :s3_key,
      :created_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a>. This must be of the form: </p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>.
    #   		</p>
    #
    #   @return [String]
    #
    DescribeCertificateAuthorityInput = ::Struct.new(
      :certificate_authority_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_authority
    #   <p>A <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CertificateAuthority.html">CertificateAuthority</a> structure that contains information about your private
    #   			CA.</p>
    #
    #   @return [CertificateAuthority]
    #
    DescribeCertificateAuthorityOutput = ::Struct.new(
      :certificate_authority,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an Electronic Data Interchange (EDI) entity as described in as defined in
    # 				<a href="https://datatracker.ietf.org/doc/html/rfc5280">Subject Alternative
    # 				Name</a> in RFC 5280.</p>
    #
    # @!attribute party_name
    #   <p>Specifies the party name.</p>
    #
    #   @return [String]
    #
    # @!attribute name_assigner
    #   <p>Specifies the name assigner.</p>
    #
    #   @return [String]
    #
    EdiPartyName = ::Struct.new(
      :party_name,
      :name_assigner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies additional purposes for which the certified public key may be used other
    # 			than basic purposes indicated in the <code>KeyUsage</code> extension.</p>
    #
    # @!attribute extended_key_usage_type
    #   <p>Specifies a standard <code>ExtendedKeyUsage</code> as defined as in <a href="https://datatracker.ietf.org/doc/html/rfc5280 section-4.2.1.12">RFC
    #   				5280</a>.</p>
    #
    #   Enum, one of: ["SERVER_AUTH", "CLIENT_AUTH", "CODE_SIGNING", "EMAIL_PROTECTION", "TIME_STAMPING", "OCSP_SIGNING", "SMART_CARD_LOGIN", "DOCUMENT_SIGNING", "CERTIFICATE_TRANSPARENCY"]
    #
    #   @return [String]
    #
    # @!attribute extended_key_usage_object_identifier
    #   <p>Specifies a custom <code>ExtendedKeyUsage</code> with an object identifier
    #   			(OID).</p>
    #
    #   @return [String]
    #
    ExtendedKeyUsage = ::Struct.new(
      :extended_key_usage_type,
      :extended_key_usage_object_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ExtendedKeyUsageType
    #
    module ExtendedKeyUsageType
      # No documentation available.
      #
      SERVER_AUTH = "SERVER_AUTH"

      # No documentation available.
      #
      CLIENT_AUTH = "CLIENT_AUTH"

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
      SMART_CARD_LOGIN = "SMART_CARD_LOGIN"

      # No documentation available.
      #
      DOCUMENT_SIGNING = "DOCUMENT_SIGNING"

      # No documentation available.
      #
      CERTIFICATE_TRANSPARENCY = "CERTIFICATE_TRANSPARENCY"
    end

    # <p>Contains X.509 extension information for a certificate.</p>
    #
    # @!attribute certificate_policies
    #   <p>Contains a sequence of one or more policy information terms, each of which consists of
    #   			an object identifier (OID) and optional qualifiers. For more information, see NIST's
    #   			definition of <a href="https://csrc.nist.gov/glossary/term/Object_Identifier">Object
    #   				Identifier (OID)</a>.</p>
    #   		       <p>In an end-entity certificate, these terms indicate the policy under which the
    #   			certificate was issued and the purposes for which it may be used. In a CA certificate,
    #   			these terms limit the set of policies for certification paths that include this
    #   			certificate.</p>
    #
    #   @return [Array<PolicyInformation>]
    #
    # @!attribute extended_key_usage
    #   <p>Specifies additional purposes for which the certified public key may be used other
    #   			than basic purposes indicated in the <code>KeyUsage</code> extension.</p>
    #
    #   @return [Array<ExtendedKeyUsage>]
    #
    # @!attribute key_usage
    #   <p>Defines one or more purposes for which the key contained in the certificate can be
    #   			used. Default value for each option is false.</p>
    #
    #   @return [KeyUsage]
    #
    # @!attribute subject_alternative_names
    #   <p>The subject alternative name extension allows identities to be bound to the subject of
    #   			the certificate. These identities may be included in addition to or in place of the
    #   			identity in the subject field of the certificate.</p>
    #
    #   @return [Array<GeneralName>]
    #
    # @!attribute custom_extensions
    #   <p></p>
    #   		       <p>Contains a sequence of one or more X.509 extensions, each of which consists of an
    #   			object identifier (OID), a base64-encoded
    #   			value,
    #   			and the
    #   			critical flag.
    #   			For
    #   			more information, see the <a href="https://oidref.com/2.5.29">Global OID reference
    #   				database.</a>
    #            </p>
    #   		
    #   		       <note>
    #   			         <p>The OID value of a <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CustomExtension.html">CustomExtension</a> must not
    #   				match the OID of a predefined extension.</p>
    #   		       </note>
    #
    #   @return [Array<CustomExtension>]
    #
    Extensions = ::Struct.new(
      :certificate_policies,
      :extended_key_usage,
      :key_usage,
      :subject_alternative_names,
      :custom_extensions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FailureReason
    #
    module FailureReason
      # No documentation available.
      #
      REQUEST_TIMED_OUT = "REQUEST_TIMED_OUT"

      # No documentation available.
      #
      UNSUPPORTED_ALGORITHM = "UNSUPPORTED_ALGORITHM"

      # No documentation available.
      #
      OTHER = "OTHER"
    end

    # <p>Describes an ASN.1 X.400 <code>GeneralName</code> as defined in <a href="https://datatracker.ietf.org/doc/html/rfc5280">RFC 5280</a>. Only one of
    # 			the following naming options should be provided. Providing more than one option results
    # 			in an <code>InvalidArgsException</code> error.</p>
    #
    # @!attribute other_name
    #   <p>Represents <code>GeneralName</code> using an <code>OtherName</code> object.</p>
    #
    #   @return [OtherName]
    #
    # @!attribute rfc822_name
    #   <p>Represents <code>GeneralName</code> as an <a href="https://datatracker.ietf.org/doc/html/rfc822">RFC 822</a> email
    #   			address.</p>
    #
    #   @return [String]
    #
    # @!attribute dns_name
    #   <p>Represents <code>GeneralName</code> as a DNS name.</p>
    #
    #   @return [String]
    #
    # @!attribute directory_name
    #   <p>Contains information about the certificate subject. The <code>Subject</code> field in
    #   			the certificate identifies the entity that owns or controls the public key in the
    #   			certificate. The entity can be a user, computer, device, or service. The <code>Subject
    #   			</code>must contain an X.500 distinguished name (DN). A DN is a sequence of relative
    #   			distinguished names (RDNs). The RDNs are separated by commas in the certificate.</p>
    #
    #   @return [ASN1Subject]
    #
    # @!attribute edi_party_name
    #   <p>Represents <code>GeneralName</code> as an <code>EdiPartyName</code> object.</p>
    #
    #   @return [EdiPartyName]
    #
    # @!attribute uniform_resource_identifier
    #   <p>Represents <code>GeneralName</code> as a URI.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_address
    #   <p>Represents <code>GeneralName</code> as an IPv4 or IPv6 address.</p>
    #
    #   @return [String]
    #
    # @!attribute registered_id
    #   <p> Represents <code>GeneralName</code> as an object identifier (OID).</p>
    #
    #   @return [String]
    #
    GeneralName = ::Struct.new(
      :other_name,
      :rfc822_name,
      :dns_name,
      :directory_name,
      :edi_party_name,
      :uniform_resource_identifier,
      :ip_address,
      :registered_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) of your private CA. This is of the form:</p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>.
    #   		</p>
    #
    #   @return [String]
    #
    GetCertificateAuthorityCertificateInput = ::Struct.new(
      :certificate_authority_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate
    #   <p>Base64-encoded certificate authority (CA) certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate_chain
    #   <p>Base64-encoded certificate chain that includes any intermediate certificates and
    #   			chains up to root certificate that you used to sign your private CA certificate. The
    #   			chain does not include your private CA certificate. If this is a root CA, the value will
    #   			be null.</p>
    #
    #   @return [String]
    #
    GetCertificateAuthorityCertificateOutput = ::Struct.new(
      :certificate,
      :certificate_chain,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a> action. This must be of the form: </p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>
    #   		       </p>
    #
    #   @return [String]
    #
    GetCertificateAuthorityCsrInput = ::Struct.new(
      :certificate_authority_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute csr
    #   <p>The base64 PEM-encoded certificate signing request (CSR) for your private CA
    #   			certificate.</p>
    #
    #   @return [String]
    #
    GetCertificateAuthorityCsrOutput = ::Struct.new(
      :csr,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a>. This must be of the form: </p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>.
    #   		</p>
    #
    #   @return [String]
    #
    # @!attribute certificate_arn
    #   <p>The ARN of the issued certificate. The ARN contains the certificate serial number and
    #   			must be in the following form: </p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>/certificate/<i>286535153982981100925020015808220737245</i>
    #               </code>
    #   		       </p>
    #
    #   @return [String]
    #
    GetCertificateInput = ::Struct.new(
      :certificate_authority_arn,
      :certificate_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate
    #   <p>The base64 PEM-encoded certificate specified by the <code>CertificateArn</code>
    #   			parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate_chain
    #   <p>The base64 PEM-encoded certificate chain that chains up to the root CA certificate
    #   			that you used to sign your private CA certificate. </p>
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

    # @!attribute resource_arn
    #   <p>The Amazon Resource Number (ARN) of the private CA that will have its policy
    #   			retrieved. You can find the CA's ARN by calling the ListCertificateAuthorities action.
    #   			
    #   		</p>
    #
    #   @return [String]
    #
    GetPolicyInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy
    #   <p>The policy attached to the private CA as a JSON document.</p>
    #
    #   @return [String]
    #
    GetPolicyOutput = ::Struct.new(
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a>. This must be of the form: </p>
    #   		       <p>
    #               <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute certificate
    #   <p>The PEM-encoded certificate for a private CA. This may be a self-signed certificate in
    #   			the case of a root CA, or it may be signed by another CA that you control.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate_chain
    #   <p>A PEM-encoded file that contains all of your certificates, other than the certificate
    #   			you're importing, chaining up to your root CA. Your ACM Private CA-hosted or on-premises
    #   			root certificate is the last in the chain, and each certificate in the chain signs the
    #   			one preceding. </p>
    #   		       <p>This parameter must be supplied when you import a subordinate CA. When you import a
    #   			root CA, there is no chain.</p>
    #
    #   @return [String]
    #
    ImportCertificateAuthorityCertificateInput = ::Struct.new(
      :certificate_authority_arn,
      :certificate,
      :certificate_chain,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ImportCertificateAuthorityCertificateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more of the specified arguments was not valid.</p>
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

    # <p>The requested Amazon Resource Name (ARN) does not refer to an existing
    # 			resource.</p>
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

    # <p>The token specified in the <code>NextToken</code> argument is not valid. Use the token
    # 			returned from your previous call to <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html">ListCertificateAuthorities</a>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidNextTokenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource policy is invalid or is missing a required statement. For general
    # 			information about IAM policy and statement structure, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policies-json">Overview of JSON Policies</a>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidPolicyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request action cannot be performed or is prohibited.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The state of the private CA does not allow this action to occur.</p>
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

    # <p>The tag associated with the CA is not valid. The invalid argument is contained in the
    # 			message field.</p>
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

    # @!attribute api_passthrough
    #   <p>Specifies X.509 certificate information to be included in the issued certificate. An
    #   				<code>APIPassthrough</code> or <code>APICSRPassthrough</code> template variant must
    #   			be selected, or else this parameter is ignored. For more information about using these
    #   			templates, see <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/UsingTemplates.html">Understanding Certificate Templates</a>.</p>
    #   		       <p>If conflicting or duplicate certificate information is supplied during certificate
    #   			issuance, ACM Private CA applies <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/UsingTemplates.html template-order-of-operations">order of
    #   				operation rules</a> to determine what information is used.</p>
    #
    #   @return [ApiPassthrough]
    #
    # @!attribute certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a>. This must be of the form:</p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>
    #   		       </p>
    #
    #   @return [String]
    #
    # @!attribute csr
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
    #   @return [String]
    #
    # @!attribute signing_algorithm
    #   <p>The name of the algorithm that will be used to sign the certificate to be issued. </p>
    #   		       <p>This parameter should not be confused with the <code>SigningAlgorithm</code> parameter
    #   			used to sign a CSR in the <code>CreateCertificateAuthority</code> action.</p>
    #   		       <note>
    #   			         <p>The specified signing algorithm family (RSA or ECDSA) much match the algorithm
    #   				family of the CA's secret key.</p>
    #   		       </note>
    #
    #   Enum, one of: ["SHA256WITHECDSA", "SHA384WITHECDSA", "SHA512WITHECDSA", "SHA256WITHRSA", "SHA384WITHRSA", "SHA512WITHRSA"]
    #
    #   @return [String]
    #
    # @!attribute template_arn
    #   <p>Specifies a custom configuration template to use when issuing a certificate. If this
    #   			parameter is not provided, ACM Private CA defaults to the
    #   				<code>EndEntityCertificate/V1</code> template. For CA certificates, you should
    #   			choose the shortest path length that meets your needs. The path length is indicated by
    #   			the PathLen<i>N</i> portion of the ARN, where <i>N</i> is
    #   			the <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaTerms.html terms-cadepth">CA
    #   				depth</a>.</p>
    #   		       <p>Note: The CA depth configured on a subordinate CA certificate must not exceed the
    #   			limit set by its parents in the CA hierarchy.</p>
    #   		       <p>For a list of <code>TemplateArn</code> values supported by ACM Private CA, see <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/UsingTemplates.html">Understanding Certificate
    #   				Templates</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute validity
    #   <p>Information describing the end of the validity period of the certificate. This
    #   			parameter sets the “Not After” date for the certificate.</p>
    #   		       <p>Certificate validity is the period of time during which a certificate is valid.
    #   			Validity can be expressed as an explicit date and time when the certificate expires, or
    #   			as a span of time after issuance, stated in days, months, or years. For more
    #   			information, see <a href="https://datatracker.ietf.org/doc/html/rfc5280 section-4.1.2.5">Validity</a>
    #   			in RFC 5280. </p>
    #   		       <p>This value is unaffected when <code>ValidityNotBefore</code> is also specified. For
    #   			example, if <code>Validity</code> is set to 20 days in the future, the certificate will
    #   			expire 20 days from issuance time regardless of the <code>ValidityNotBefore</code>
    #   			value.</p>
    #   		       <p>The end of the validity period configured on a certificate must not exceed the limit
    #   			set on its parents in the CA hierarchy.</p>
    #
    #   @return [Validity]
    #
    # @!attribute validity_not_before
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
    #   			see <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_Validity.html">Validity</a> in this API reference and <a href="https://datatracker.ietf.org/doc/html/rfc5280 section-4.1.2.5">Validity</a>
    #   			in RFC 5280.</p>
    #
    #   @return [Validity]
    #
    # @!attribute idempotency_token
    #   <p>Alphanumeric string that can be used to distinguish between calls to the <b>IssueCertificate</b> action. Idempotency tokens for <b>IssueCertificate</b> time out after one minute. Therefore, if you
    #   			call <b>IssueCertificate</b> multiple times with the same
    #   			idempotency token within one minute, ACM Private CA recognizes that you are requesting only
    #   			one certificate and will issue only one. If you change the idempotency token for each
    #   			call, PCA recognizes that you are requesting multiple certificates.</p>
    #
    #   @return [String]
    #
    IssueCertificateInput = ::Struct.new(
      :api_passthrough,
      :certificate_authority_arn,
      :csr,
      :signing_algorithm,
      :template_arn,
      :validity,
      :validity_not_before,
      :idempotency_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the issued certificate and the certificate serial
    #   			number. This is of the form:</p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>/certificate/<i>286535153982981100925020015808220737245</i>
    #               </code>
    #   		       </p>
    #
    #   @return [String]
    #
    IssueCertificateOutput = ::Struct.new(
      :certificate_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for KeyAlgorithm
    #
    module KeyAlgorithm
      # No documentation available.
      #
      RSA_2048 = "RSA_2048"

      # No documentation available.
      #
      RSA_4096 = "RSA_4096"

      # No documentation available.
      #
      EC_prime256v1 = "EC_prime256v1"

      # No documentation available.
      #
      EC_secp384r1 = "EC_secp384r1"
    end

    # Includes enum constants for KeyStorageSecurityStandard
    #
    module KeyStorageSecurityStandard
      # No documentation available.
      #
      FIPS_140_2_LEVEL_2_OR_HIGHER = "FIPS_140_2_LEVEL_2_OR_HIGHER"

      # No documentation available.
      #
      FIPS_140_2_LEVEL_3_OR_HIGHER = "FIPS_140_2_LEVEL_3_OR_HIGHER"
    end

    # <p>Defines one or more purposes for which the key contained in the certificate can be
    # 			used. Default value for each option is false.</p>
    #
    # @!attribute digital_signature
    #   <p> Key can be used for digital signing.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute non_repudiation
    #   <p>Key can be used for non-repudiation.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute key_encipherment
    #   <p>Key can be used to encipher data.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute data_encipherment
    #   <p>Key can be used to decipher data.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute key_agreement
    #   <p>Key can be used in a key-agreement protocol.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute key_cert_sign
    #   <p>Key can be used to sign certificates.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute crl_sign
    #   <p>Key can be used to sign CRLs.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute encipher_only
    #   <p>Key can be used only to encipher data.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute decipher_only
    #   <p>Key can be used only to decipher data.</p>
    #
    #   @return [Boolean]
    #
    KeyUsage = ::Struct.new(
      :digital_signature,
      :non_repudiation,
      :key_encipherment,
      :data_encipherment,
      :key_agreement,
      :key_cert_sign,
      :crl_sign,
      :encipher_only,
      :decipher_only,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.digital_signature ||= false
        self.non_repudiation ||= false
        self.key_encipherment ||= false
        self.data_encipherment ||= false
        self.key_agreement ||= false
        self.key_cert_sign ||= false
        self.crl_sign ||= false
        self.encipher_only ||= false
        self.decipher_only ||= false
      end
    end

    # <p>An ACM Private CA quota has been exceeded. See the exception message returned to determine
    # 			the quota that was exceeded.</p>
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

    # @!attribute next_token
    #   <p>Use this parameter when paginating results in a subsequent request after you receive a
    #   			response with truncated results. Set it to the value of the <code>NextToken</code>
    #   			parameter from the response you just received.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Use this parameter when paginating results to specify the maximum number of items to
    #   			return in the response on each page. If additional items exist beyond the number you
    #   			specify, the <code>NextToken</code> element is sent in the response. Use this
    #   				<code>NextToken</code> value in a subsequent request to retrieve additional
    #   			items.</p>
    #
    #   @return [Integer]
    #
    # @!attribute resource_owner
    #   <p>Use this parameter to filter the returned set of certificate authorities based on
    #   			their owner. The default is SELF.</p>
    #
    #   Enum, one of: ["SELF", "OTHER_ACCOUNTS"]
    #
    #   @return [String]
    #
    ListCertificateAuthoritiesInput = ::Struct.new(
      :next_token,
      :max_results,
      :resource_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_authorities
    #   <p>Summary information about each certificate authority you have created.</p>
    #
    #   @return [Array<CertificateAuthority>]
    #
    # @!attribute next_token
    #   <p>When the list is truncated, this value is present and should be used for the
    #   				<code>NextToken</code> parameter in a subsequent pagination request.</p>
    #
    #   @return [String]
    #
    ListCertificateAuthoritiesOutput = ::Struct.new(
      :certificate_authorities,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_authority_arn
    #   <p>The Amazon Resource Number (ARN) of the private CA to inspect. You can find the ARN by
    #   			calling the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html">ListCertificateAuthorities</a> action. This must be of the form:
    #   				<code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012</code>
    #   			You can get a private CA's ARN by running the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html">ListCertificateAuthorities</a> action.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>When paginating results, use this parameter in a subsequent request after you receive
    #   			a response with truncated results. Set it to the value of <b>NextToken</b> from the response you just received.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>When paginating results, use this parameter to specify the maximum number of items to
    #   			return in the response. If additional items exist beyond the number you specify, the
    #   				<b>NextToken</b> element is sent in the response. Use this
    #   				<b>NextToken</b> value in a subsequent request to retrieve
    #   			additional items.</p>
    #
    #   @return [Integer]
    #
    ListPermissionsInput = ::Struct.new(
      :certificate_authority_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute permissions
    #   <p>Summary information about each permission assigned by the specified private CA,
    #   			including the action enabled, the policy provided, and the time of creation.</p>
    #
    #   @return [Array<Permission>]
    #
    # @!attribute next_token
    #   <p>When the list is truncated, this value is present and should be used for the <b>NextToken</b> parameter in a subsequent pagination request.
    #   		</p>
    #
    #   @return [String]
    #
    ListPermissionsOutput = ::Struct.new(
      :permissions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a> action. This must be of the form: </p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>
    #   		       </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>Use this parameter when paginating results in a subsequent request after you receive a
    #   			response with truncated results. Set it to the value of <b>NextToken</b> from the response you just received.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Use this parameter when paginating results to specify the maximum number of items to
    #   			return in the response. If additional items exist beyond the number you specify, the
    #   				<b>NextToken</b> element is sent in the response. Use this
    #   				<b>NextToken</b> value in a subsequent request to retrieve
    #   			additional items.</p>
    #
    #   @return [Integer]
    #
    ListTagsInput = ::Struct.new(
      :certificate_authority_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>The tags associated with your private CA.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute next_token
    #   <p>When the list is truncated, this value is present and should be used for the <b>NextToken</b> parameter in a subsequent pagination request.
    #   		</p>
    #
    #   @return [String]
    #
    ListTagsOutput = ::Struct.new(
      :tags,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The current action was prevented because it would lock the caller out from performing
    # 			subsequent actions. Verify that the specified parameters would not result in the caller
    # 			being denied access to the resource. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LockoutPreventedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The certificate signing request is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    MalformedCSRException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more fields in the certificate are invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    MalformedCertificateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information to enable and configure Online Certificate Status Protocol (OCSP)
    # 			for validating certificate revocation status.</p>
    # 		       <p>When you revoke a certificate, OCSP responses may take up to 60 minutes
    # 	to reflect the new status.</p>
    #
    # @!attribute enabled
    #   <p>Flag enabling use of the Online Certificate Status Protocol (OCSP) for validating
    #   			certificate revocation status.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute ocsp_custom_cname
    #   <p>By default, ACM Private CA injects an Amazon Web Services domain into certificates being validated by
    #   			the Online Certificate Status Protocol (OCSP). A customer can alternatively use this
    #   			object to define a CNAME specifying a customized OCSP domain.</p>
    #   		       <p>Note: The value of the CNAME must not include a protocol prefix such as "http://" or
    #   			"https://".</p>
    #   		       <p>For more information, see <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/ocsp-customize.html">Customizing Online Certificate Status Protocol
    #   				(OCSP) </a> in the <i>Certificate Manager Private Certificate Authority (PCA) User Guide</i>.</p>
    #
    #   @return [String]
    #
    OcspConfiguration = ::Struct.new(
      :enabled,
      :ocsp_custom_cname,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines a custom ASN.1 X.400 <code>GeneralName</code> using an object identifier (OID)
    # 			and value. The OID must satisfy the regular expression shown below. For more
    # 			information, see NIST's definition of <a href="https://csrc.nist.gov/glossary/term/Object_Identifier">Object Identifier
    # 				(OID)</a>.</p>
    #
    # @!attribute type_id
    #   <p>Specifies an OID. </p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>Specifies an OID value.</p>
    #
    #   @return [String]
    #
    OtherName = ::Struct.new(
      :type_id,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Permissions designate which private CA actions can be performed by an Amazon Web Services service or
    # 			entity. In order for ACM to automatically renew private certificates, you must give
    # 			the ACM service principal all available permissions (<code>IssueCertificate</code>,
    # 				<code>GetCertificate</code>, and <code>ListPermissions</code>). Permissions can be
    # 			assigned with the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreatePermission.html">CreatePermission</a> action,
    # 			removed with the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_DeletePermission.html">DeletePermission</a> action, and
    # 			listed with the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListPermissions.html">ListPermissions</a> action.</p>
    #
    # @!attribute certificate_authority_arn
    #   <p>The Amazon Resource Number (ARN) of the private CA from which the permission was
    #   			issued.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time at which the permission was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute principal
    #   <p>The Amazon Web Services service or entity that holds the permission. At this time, the only valid
    #   			principal is <code>acm.amazonaws.com</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute source_account
    #   <p>The ID of the account that assigned the permission.</p>
    #
    #   @return [String]
    #
    # @!attribute actions
    #   <p>The private CA actions that can be performed by the designated Amazon Web Services service.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute policy
    #   <p>The name of the policy that is associated with the permission.</p>
    #
    #   @return [String]
    #
    Permission = ::Struct.new(
      :certificate_authority_arn,
      :created_at,
      :principal,
      :source_account,
      :actions,
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The designated permission has already been given to the user.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    PermissionAlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines the X.509 <code>CertificatePolicies</code> extension.</p>
    #
    # @!attribute cert_policy_id
    #   <p>Specifies the object identifier (OID) of the certificate policy under which the
    #   			certificate was issued. For more information, see NIST's definition of <a href="https://csrc.nist.gov/glossary/term/Object_Identifier">Object Identifier
    #   				(OID)</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_qualifiers
    #   <p>Modifies the given <code>CertPolicyId</code> with a qualifier. ACM Private CA supports the
    #   			certification practice statement (CPS) qualifier.</p>
    #
    #   @return [Array<PolicyQualifierInfo>]
    #
    PolicyInformation = ::Struct.new(
      :cert_policy_id,
      :policy_qualifiers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PolicyQualifierId
    #
    module PolicyQualifierId
      # No documentation available.
      #
      CPS = "CPS"
    end

    # <p>Modifies the <code>CertPolicyId</code> of a <code>PolicyInformation</code> object with
    # 			a qualifier. ACM Private CA supports the certification practice statement (CPS)
    # 			qualifier.</p>
    #
    # @!attribute policy_qualifier_id
    #   <p>Identifies the qualifier modifying a <code>CertPolicyId</code>.</p>
    #
    #   Enum, one of: ["CPS"]
    #
    #   @return [String]
    #
    # @!attribute qualifier
    #   <p>Defines the qualifier type. ACM Private CA supports the use of a URI for a CPS qualifier
    #   			in this field.</p>
    #
    #   @return [Qualifier]
    #
    PolicyQualifierInfo = ::Struct.new(
      :policy_qualifier_id,
      :qualifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Number (ARN) of the private CA to associate with the policy. The
    #   			ARN of the CA can be found by calling the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html">ListCertificateAuthorities</a> action.</p>
    #   		       <p></p>
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>The path and file name of a JSON-formatted IAM policy to attach to the specified
    #   			private CA resource. If this policy does not contain all required statements or if it
    #   			includes any statement that is not allowed, the <code>PutPolicy</code> action returns an
    #   				<code>InvalidPolicyException</code>. For information about IAM policy and
    #   			statement structure, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html access_policies-json">Overview of JSON Policies</a>.</p>
    #
    #   @return [String]
    #
    PutPolicyInput = ::Struct.new(
      :resource_arn,
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Defines a <code>PolicyInformation</code> qualifier. ACM Private CA supports the <a href="https://datatracker.ietf.org/doc/html/rfc5280#section-4.2.1.4">certification
    # 				practice statement (CPS) qualifier</a> defined in RFC 5280. </p>
    #
    # @!attribute cps_uri
    #   <p>Contains a pointer to a certification practice statement (CPS) published by the
    #   			CA.</p>
    #
    #   @return [String]
    #
    Qualifier = ::Struct.new(
      :cps_uri,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Your request has already been completed.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    RequestAlreadyProcessedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request has failed for an unspecified reason.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    RequestFailedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Your request is already in progress.</p>
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

    # <p>A resource such as a private CA, S3 bucket, certificate, audit report, or policy
    # 			cannot be found.</p>
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

    # Includes enum constants for ResourceOwner
    #
    module ResourceOwner
      # No documentation available.
      #
      SELF = "SELF"

      # No documentation available.
      #
      OTHER_ACCOUNTS = "OTHER_ACCOUNTS"
    end

    # @!attribute certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a> action. This must be of the form: </p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>
    #   		       </p>
    #
    #   @return [String]
    #
    RestoreCertificateAuthorityInput = ::Struct.new(
      :certificate_authority_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RestoreCertificateAuthorityOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Certificate revocation information used by the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a> and <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UpdateCertificateAuthority.html">UpdateCertificateAuthority</a> actions. Your private certificate authority (CA)
    # 			can configure Online Certificate Status Protocol (OCSP) support and/or maintain a
    # 			certificate revocation list (CRL). OCSP returns validation information about
    # 			certificates as requested by clients, and a CRL contains an updated list of certificates
    # 			revoked by your CA. For more information, see <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_RevokeCertificate.html">RevokeCertificate</a> and <a href="https://docs.aws.amazon.com/acm-pca/latest/userguide/revocation-setup.html">Setting up a
    # 				certificate revocation method</a> in the <i>Certificate Manager Private Certificate Authority (PCA) User
    # 				Guide</i>.</p>
    #
    # @!attribute crl_configuration
    #   <p>Configuration of the certificate revocation list (CRL), if any, maintained by your
    #   			private CA. A CRL is typically updated approximately 30 minutes after a certificate
    #   	is revoked. If for any reason a CRL update fails, ACM Private CA makes further attempts
    #   	every 15 minutes.</p>
    #
    #   @return [CrlConfiguration]
    #
    # @!attribute ocsp_configuration
    #   <p>Configuration of Online Certificate Status Protocol (OCSP) support, if any, maintained
    #   			by your private CA. When you revoke a certificate, OCSP responses may take up to 60 minutes
    #   	to reflect the new status.</p>
    #
    #   @return [OcspConfiguration]
    #
    RevocationConfiguration = ::Struct.new(
      :crl_configuration,
      :ocsp_configuration,
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
      CERTIFICATE_AUTHORITY_COMPROMISE = "CERTIFICATE_AUTHORITY_COMPROMISE"

      # No documentation available.
      #
      AFFILIATION_CHANGED = "AFFILIATION_CHANGED"

      # No documentation available.
      #
      SUPERSEDED = "SUPERSEDED"

      # No documentation available.
      #
      CESSATION_OF_OPERATION = "CESSATION_OF_OPERATION"

      # No documentation available.
      #
      PRIVILEGE_WITHDRAWN = "PRIVILEGE_WITHDRAWN"

      # No documentation available.
      #
      A_A_COMPROMISE = "A_A_COMPROMISE"
    end

    # @!attribute certificate_authority_arn
    #   <p>Amazon Resource Name (ARN) of the private CA that issued the certificate to be
    #   			revoked. This must be of the form:</p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>
    #   		       </p>
    #
    #   @return [String]
    #
    # @!attribute certificate_serial
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
    #   @return [String]
    #
    # @!attribute revocation_reason
    #   <p>Specifies why you revoked the certificate.</p>
    #
    #   Enum, one of: ["UNSPECIFIED", "KEY_COMPROMISE", "CERTIFICATE_AUTHORITY_COMPROMISE", "AFFILIATION_CHANGED", "SUPERSEDED", "CESSATION_OF_OPERATION", "PRIVILEGE_WITHDRAWN", "A_A_COMPROMISE"]
    #
    #   @return [String]
    #
    RevokeCertificateInput = ::Struct.new(
      :certificate_authority_arn,
      :certificate_serial,
      :revocation_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RevokeCertificateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for S3ObjectAcl
    #
    module S3ObjectAcl
      # No documentation available.
      #
      PUBLIC_READ = "PUBLIC_READ"

      # No documentation available.
      #
      BUCKET_OWNER_FULL_CONTROL = "BUCKET_OWNER_FULL_CONTROL"
    end

    # Includes enum constants for SigningAlgorithm
    #
    module SigningAlgorithm
      # No documentation available.
      #
      SHA256WITHECDSA = "SHA256WITHECDSA"

      # No documentation available.
      #
      SHA384WITHECDSA = "SHA384WITHECDSA"

      # No documentation available.
      #
      SHA512WITHECDSA = "SHA512WITHECDSA"

      # No documentation available.
      #
      SHA256WITHRSA = "SHA256WITHRSA"

      # No documentation available.
      #
      SHA384WITHRSA = "SHA384WITHRSA"

      # No documentation available.
      #
      SHA512WITHRSA = "SHA512WITHRSA"
    end

    # <p>Tags are labels that you can use to identify and organize your private CAs. Each tag
    # 			consists of a key and an optional value. You can associate up to 50 tags with a private
    # 			CA. To add one or more tags to a private CA, call the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_TagCertificateAuthority.html">TagCertificateAuthority</a>
    # 			action. To remove a tag, call the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_UntagCertificateAuthority.html">UntagCertificateAuthority</a> action. </p>
    #
    # @!attribute key
    #   <p>Key (name) of the tag.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>Value of the tag.</p>
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

    # @!attribute certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a>. This must be of the form: </p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>
    #   		       </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>List of tags to be associated with the CA.</p>
    #
    #   @return [Array<Tag>]
    #
    TagCertificateAuthorityInput = ::Struct.new(
      :certificate_authority_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagCertificateAuthorityOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You can associate up to 50 tags with a private CA. Exception information is contained
    # 			in the exception message field.</p>
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

    # @!attribute certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) that was returned when you called <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html">CreateCertificateAuthority</a>. This must be of the form: </p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>
    #   		       </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>List of tags to be removed from the CA.</p>
    #
    #   @return [Array<Tag>]
    #
    UntagCertificateAuthorityInput = ::Struct.new(
      :certificate_authority_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagCertificateAuthorityOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_authority_arn
    #   <p>Amazon Resource Name (ARN) of the private CA that issued the certificate to be
    #   			revoked. This must be of the form:</p>
    #   		       <p>
    #   			         <code>arn:aws:acm-pca:<i>region</i>:<i>account</i>:certificate-authority/<i>12345678-1234-1234-1234-123456789012</i>
    #               </code>
    #   		       </p>
    #
    #   @return [String]
    #
    # @!attribute revocation_configuration
    #   <p>Contains information to enable Online Certificate Status Protocol (OCSP) support, to
    #   			enable a certificate revocation list (CRL), to enable both, or to enable neither. If
    #   			this parameter is not supplied, existing capibilites remain unchanged. For more
    #   			information, see the <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_OcspConfiguration.html">OcspConfiguration</a> and <a href="https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CrlConfiguration.html">CrlConfiguration</a> types.</p>
    #
    #   @return [RevocationConfiguration]
    #
    # @!attribute status
    #   <p>Status of your private CA.</p>
    #
    #   Enum, one of: ["CREATING", "PENDING_CERTIFICATE", "ACTIVE", "DELETED", "DISABLED", "EXPIRED", "FAILED"]
    #
    #   @return [String]
    #
    UpdateCertificateAuthorityInput = ::Struct.new(
      :certificate_authority_arn,
      :revocation_configuration,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateCertificateAuthorityOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Validity specifies the period of time during which a certificate is valid. Validity
    # 			can be expressed as an explicit date and time when the validity of a certificate starts
    # 			or expires, or as a span of time after issuance, stated in days, months, or years. For
    # 			more information, see <a href="https://datatracker.ietf.org/doc/html/rfc5280#section-4.1.2.5">Validity</a>
    # 			in RFC 5280.</p>
    # 		       <p>ACM Private CA API consumes the <code>Validity</code> data type differently in two
    # 			distinct parameters of the <code>IssueCertificate</code> action. The required parameter
    # 				<code>IssueCertificate</code>:<code>Validity</code> specifies the end of a
    # 			certificate's validity period. The optional parameter
    # 				<code>IssueCertificate</code>:<code>ValidityNotBefore</code> specifies a customized
    # 			starting time for the validity period.</p>
    #
    # @!attribute value
    #   <p>A long integer interpreted according to the value of <code>Type</code>, below.</p>
    #
    #   @return [Integer]
    #
    # @!attribute type
    #   <p>Determines how <i>ACM Private CA</i> interprets the <code>Value</code>
    #   			parameter, an integer. Supported validity types include those listed below. Type
    #   			definitions with values include a sample input value and the resulting output. </p>
    #   		       <p>
    #               <code>END_DATE</code>: The specific date and time when the certificate will expire,
    #   			expressed using UTCTime (YYMMDDHHMMSS) or GeneralizedTime (YYYYMMDDHHMMSS) format. When
    #   			UTCTime is used, if the year field (YY) is greater than or equal to 50, the year is
    #   			interpreted as 19YY. If the year field is less than 50, the year is interpreted as
    #   			20YY.</p>
    #   		       <ul>
    #               <li>
    #   				           <p>Sample input value: 491231235959 (UTCTime format)</p>
    #   			         </li>
    #               <li>
    #   				           <p>Output expiration date/time: 12/31/2049 23:59:59</p>
    #   			         </li>
    #            </ul>
    #   		       <p>
    #               <code>ABSOLUTE</code>: The specific date and time when the validity of a certificate
    #   			will start or expire, expressed in seconds since the Unix Epoch. </p>
    #   		       <ul>
    #               <li>
    #   				           <p>Sample input value: 2524608000</p>
    #   			         </li>
    #               <li>
    #   				           <p>Output expiration date/time: 01/01/2050 00:00:00</p>
    #   			         </li>
    #            </ul>
    #   		       <p>
    #               <code>DAYS</code>, <code>MONTHS</code>, <code>YEARS</code>: The relative time from the
    #   			moment of issuance until the certificate will expire, expressed in days, months, or
    #   			years. </p>
    #   		       <p>Example if <code>DAYS</code>, issued on 10/12/2020 at 12:34:54 UTC:</p>
    #   		       <ul>
    #               <li>
    #   				           <p>Sample input value: 90</p>
    #   			         </li>
    #               <li>
    #   				           <p>Output expiration date: 01/10/2020 12:34:54 UTC</p>
    #   			         </li>
    #            </ul>
    #   		       <p>The minimum validity duration for a certificate using relative time
    #   			(<code>DAYS</code>) is one day. The minimum validity for a certificate using absolute
    #   			time (<code>ABSOLUTE</code> or <code>END_DATE</code>) is one second.</p>
    #
    #   Enum, one of: ["END_DATE", "ABSOLUTE", "DAYS", "MONTHS", "YEARS"]
    #
    #   @return [String]
    #
    Validity = ::Struct.new(
      :value,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ValidityPeriodType
    #
    module ValidityPeriodType
      # No documentation available.
      #
      END_DATE = "END_DATE"

      # No documentation available.
      #
      ABSOLUTE = "ABSOLUTE"

      # No documentation available.
      #
      DAYS = "DAYS"

      # No documentation available.
      #
      MONTHS = "MONTHS"

      # No documentation available.
      #
      YEARS = "YEARS"
    end

  end
end
