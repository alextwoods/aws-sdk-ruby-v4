# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Signer
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute profile_name
    #   <p>The human-readable name of the signing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute profile_version
    #   <p>The version of the signing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute action
    #   <p>The AWS Signer action permitted as part of cross-account permissions.</p>
    #
    #   @return [String]
    #
    # @!attribute principal
    #   <p>The AWS principal receiving cross-account permissions. This may be an IAM role or
    #   			another AWS account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>A unique identifier for the current profile revision.</p>
    #
    #   @return [String]
    #
    # @!attribute statement_id
    #   <p>A unique identifier for the cross-account permission statement.</p>
    #
    #   @return [String]
    #
    AddProfilePermissionInput = ::Struct.new(
      :profile_name,
      :profile_version,
      :action,
      :principal,
      :revision_id,
      :statement_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute revision_id
    #   <p>A unique identifier for the current profile revision.</p>
    #
    #   @return [String]
    #
    AddProfilePermissionOutput = ::Struct.new(
      :revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request contains invalid parameters for the ARN or tags. This exception also
    # 			occurs when you call a tagging API on a cancelled signing profile.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    BadRequestException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute profile_name
    #   <p>The name of the signing profile to be canceled.</p>
    #
    #   @return [String]
    #
    CancelSigningProfileInput = ::Struct.new(
      :profile_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CancelSigningProfileOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Category
    #
    module Category
      # No documentation available.
      #
      AWSIoT = "AWSIoT"
    end

    # <p>The resource encountered a conflicting state.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The ID of the signing job on input.</p>
    #
    #   @return [String]
    #
    DescribeSigningJobInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The ID of the signing job on output.</p>
    #
    #   @return [String]
    #
    # @!attribute source
    #   <p>The object that contains the name of your S3 bucket or your raw code.</p>
    #
    #   @return [Source]
    #
    # @!attribute signing_material
    #   <p>The Amazon Resource Name (ARN) of your code signing certificate.</p>
    #
    #   @return [SigningMaterial]
    #
    # @!attribute platform_id
    #   <p>The microcontroller platform to which your signed code image will be
    #   			distributed.</p>
    #
    #   @return [String]
    #
    # @!attribute platform_display_name
    #   <p>A human-readable name for the signing platform associated with the signing job.</p>
    #
    #   @return [String]
    #
    # @!attribute profile_name
    #   <p>The name of the profile that initiated the signing operation.</p>
    #
    #   @return [String]
    #
    # @!attribute profile_version
    #   <p>The version of the signing profile used to initiate the signing job.</p>
    #
    #   @return [String]
    #
    # @!attribute overrides
    #   <p>A list of any overrides that were applied to the signing operation.</p>
    #
    #   @return [SigningPlatformOverrides]
    #
    # @!attribute signing_parameters
    #   <p>Map of user-assigned key-value pairs used during signing. These values contain any
    #   			information that you specified for use in your signing job. </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute created_at
    #   <p>Date and time that the signing job was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute completed_at
    #   <p>Date and time that the signing job was completed.</p>
    #
    #   @return [Time]
    #
    # @!attribute signature_expires_at
    #   <p>Thr expiration timestamp for the signature generated by the signing job.</p>
    #
    #   @return [Time]
    #
    # @!attribute requested_by
    #   <p>The IAM principal that requested the signing job.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Status of the signing job.</p>
    #
    #   Enum, one of: ["InProgress", "Failed", "Succeeded"]
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>String value that contains the status reason.</p>
    #
    #   @return [String]
    #
    # @!attribute revocation_record
    #   <p>A revocation record if the signature generated by the signing job has been revoked.
    #   			Contains a timestamp and the ID of the IAM entity that revoked the signature.</p>
    #
    #   @return [SigningJobRevocationRecord]
    #
    # @!attribute signed_object
    #   <p>Name of the S3 bucket where the signed code image is saved by code signing.</p>
    #
    #   @return [SignedObject]
    #
    # @!attribute job_owner
    #   <p>The AWS account ID of the job owner.</p>
    #
    #   @return [String]
    #
    # @!attribute job_invoker
    #   <p>The IAM entity that initiated the signing job.</p>
    #
    #   @return [String]
    #
    DescribeSigningJobOutput = ::Struct.new(
      :job_id,
      :source,
      :signing_material,
      :platform_id,
      :platform_display_name,
      :profile_name,
      :profile_version,
      :overrides,
      :signing_parameters,
      :created_at,
      :completed_at,
      :signature_expires_at,
      :requested_by,
      :status,
      :status_reason,
      :revocation_record,
      :signed_object,
      :job_owner,
      :job_invoker,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Points to an <code>S3Destination</code> object that contains information about your S3
    # 			bucket.</p>
    #
    # @!attribute s3
    #   <p>The <code>S3Destination</code> object.</p>
    #
    #   @return [S3Destination]
    #
    Destination = ::Struct.new(
      :s3,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EncryptionAlgorithm
    #
    module EncryptionAlgorithm
      # No documentation available.
      #
      RSA = "RSA"

      # No documentation available.
      #
      ECDSA = "ECDSA"
    end

    # <p>The encryption algorithm options that are available to a code signing job.</p>
    #
    # @!attribute allowed_values
    #   <p>The set of accepted encryption algorithms that are allowed in a code signing job.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute default_value
    #   <p>The default encryption algorithm that is used by a code signing job.</p>
    #
    #   Enum, one of: ["RSA", "ECDSA"]
    #
    #   @return [String]
    #
    EncryptionAlgorithmOptions = ::Struct.new(
      :allowed_values,
      :default_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute platform_id
    #   <p>The ID of the target signing platform.</p>
    #
    #   @return [String]
    #
    GetSigningPlatformInput = ::Struct.new(
      :platform_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute platform_id
    #   <p>The ID of the target signing platform.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The display name of the target signing platform.</p>
    #
    #   @return [String]
    #
    # @!attribute partner
    #   <p>A list of partner entities that use the target signing platform.</p>
    #
    #   @return [String]
    #
    # @!attribute target
    #   <p>The validation template that is used by the target signing platform.</p>
    #
    #   @return [String]
    #
    # @!attribute category
    #   <p>The category type of the target signing platform.</p>
    #
    #   Enum, one of: ["AWSIoT"]
    #
    #   @return [String]
    #
    # @!attribute signing_configuration
    #   <p>A list of configurations applied to the target platform at signing.</p>
    #
    #   @return [SigningConfiguration]
    #
    # @!attribute signing_image_format
    #   <p>The format of the target platform's signing image.</p>
    #
    #   @return [SigningImageFormat]
    #
    # @!attribute max_size_in_mb
    #   <p>The maximum size (in MB) of the payload that can be signed by the target
    #   			platform.</p>
    #
    #   @return [Integer]
    #
    # @!attribute revocation_supported
    #   <p>A flag indicating whether signatures generated for the signing platform can be
    #   			revoked.</p>
    #
    #   @return [Boolean]
    #
    GetSigningPlatformOutput = ::Struct.new(
      :platform_id,
      :display_name,
      :partner,
      :target,
      :category,
      :signing_configuration,
      :signing_image_format,
      :max_size_in_mb,
      :revocation_supported,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_size_in_mb ||= 0
        self.revocation_supported ||= false
      end
    end

    # @!attribute profile_name
    #   <p>The name of the target signing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute profile_owner
    #   <p>The AWS account ID of the profile owner.</p>
    #
    #   @return [String]
    #
    GetSigningProfileInput = ::Struct.new(
      :profile_name,
      :profile_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute profile_name
    #   <p>The name of the target signing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute profile_version
    #   <p>The current version of the signing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute profile_version_arn
    #   <p>The signing profile ARN, including the profile version.</p>
    #
    #   @return [String]
    #
    # @!attribute revocation_record
    #   <p>Revocation information for a signing profile.</p>
    #
    #   @return [SigningProfileRevocationRecord]
    #
    # @!attribute signing_material
    #   <p>The ARN of the certificate that the target profile uses for signing operations.</p>
    #
    #   @return [SigningMaterial]
    #
    # @!attribute platform_id
    #   <p>The ID of the platform that is used by the target signing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute platform_display_name
    #   <p>A human-readable name for the signing platform associated with the signing
    #   			profile.</p>
    #
    #   @return [String]
    #
    # @!attribute signature_validity_period
    #   <p>The validity period for a signing job.</p>
    #
    #   @return [SignatureValidityPeriod]
    #
    # @!attribute overrides
    #   <p>A list of overrides applied by the target signing profile for signing
    #   			operations.</p>
    #
    #   @return [SigningPlatformOverrides]
    #
    # @!attribute signing_parameters
    #   <p>A map of key-value pairs for signing operations that is attached to the target signing
    #   			profile.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute status
    #   <p>The status of the target signing profile.</p>
    #
    #   Enum, one of: ["Active", "Canceled", "Revoked"]
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>Reason for the status of the target signing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the signing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags associated with the signing profile.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetSigningProfileOutput = ::Struct.new(
      :profile_name,
      :profile_version,
      :profile_version_arn,
      :revocation_record,
      :signing_material,
      :platform_id,
      :platform_display_name,
      :signature_validity_period,
      :overrides,
      :signing_parameters,
      :status,
      :status_reason,
      :arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for HashAlgorithm
    #
    module HashAlgorithm
      # No documentation available.
      #
      SHA1 = "SHA1"

      # No documentation available.
      #
      SHA256 = "SHA256"
    end

    # <p>The hash algorithms that are available to a code signing job.</p>
    #
    # @!attribute allowed_values
    #   <p>The set of accepted hash algorithms allowed in a code signing job.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute default_value
    #   <p>The default hash algorithm that is used in a code signing job.</p>
    #
    #   Enum, one of: ["SHA1", "SHA256"]
    #
    #   @return [String]
    #
    HashAlgorithmOptions = ::Struct.new(
      :allowed_values,
      :default_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ImageFormat
    #
    module ImageFormat
      # No documentation available.
      #
      JSON = "JSON"

      # No documentation available.
      #
      JSONEmbedded = "JSONEmbedded"

      # No documentation available.
      #
      JSONDetached = "JSONDetached"
    end

    # <p>An internal error occurred.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    InternalServiceErrorException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute profile_name
    #   <p>Name of the signing profile containing the cross-account permissions.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>String for specifying the next set of paginated results.</p>
    #
    #   @return [String]
    #
    ListProfilePermissionsInput = ::Struct.new(
      :profile_name,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute revision_id
    #   <p>The identifier for the current revision of profile permissions.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_size_bytes
    #   <p>Total size of the policy associated with the Signing Profile in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute permissions
    #   <p>List of permissions associated with the Signing Profile.</p>
    #
    #   @return [Array<Permission>]
    #
    # @!attribute next_token
    #   <p>String for specifying the next set of paginated results.</p>
    #
    #   @return [String]
    #
    ListProfilePermissionsOutput = ::Struct.new(
      :revision_id,
      :policy_size_bytes,
      :permissions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.policy_size_bytes ||= 0
      end
    end

    # @!attribute status
    #   <p>A status value with which to filter your results.</p>
    #
    #   Enum, one of: ["InProgress", "Failed", "Succeeded"]
    #
    #   @return [String]
    #
    # @!attribute platform_id
    #   <p>The ID of microcontroller platform that you specified for the distribution of your
    #   			code image.</p>
    #
    #   @return [String]
    #
    # @!attribute requested_by
    #   <p>The IAM principal that requested the signing job.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>Specifies the maximum number of items to return in the response. Use this parameter
    #   			when paginating results. If additional items exist beyond the number you specify, the
    #   				<code>nextToken</code> element is set in the response. Use the
    #   				<code>nextToken</code> value in a subsequent request to retrieve additional items.
    #   		</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>String for specifying the next set of paginated results to return. After you receive a
    #   			response with truncated results, use this parameter in a subsequent request. Set it to
    #   			the value of <code>nextToken</code> from the response that you just received.</p>
    #
    #   @return [String]
    #
    # @!attribute is_revoked
    #   <p>Filters results to return only signing jobs with revoked signatures.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute signature_expires_before
    #   <p>Filters results to return only signing jobs with signatures expiring before a
    #   			specified timestamp.</p>
    #
    #   @return [Time]
    #
    # @!attribute signature_expires_after
    #   <p>Filters results to return only signing jobs with signatures expiring after a specified
    #   			timestamp.</p>
    #
    #   @return [Time]
    #
    # @!attribute job_invoker
    #   <p>Filters results to return only signing jobs initiated by a specified IAM
    #   			entity.</p>
    #
    #   @return [String]
    #
    ListSigningJobsInput = ::Struct.new(
      :status,
      :platform_id,
      :requested_by,
      :max_results,
      :next_token,
      :is_revoked,
      :signature_expires_before,
      :signature_expires_after,
      :job_invoker,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_revoked ||= false
      end
    end

    # @!attribute jobs
    #   <p>A list of your signing jobs.</p>
    #
    #   @return [Array<SigningJob>]
    #
    # @!attribute next_token
    #   <p>String for specifying the next set of paginated results.</p>
    #
    #   @return [String]
    #
    ListSigningJobsOutput = ::Struct.new(
      :jobs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute category
    #   <p>The category type of a signing platform.</p>
    #
    #   @return [String]
    #
    # @!attribute partner
    #   <p>Any partner entities connected to a signing platform.</p>
    #
    #   @return [String]
    #
    # @!attribute target
    #   <p>The validation template that is used by the target signing platform.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned by this operation.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Value for specifying the next set of paginated results to return. After you receive a
    #   			response with truncated results, use this parameter in a subsequent request. Set it to
    #   			the value of <code>nextToken</code> from the response that you just received.</p>
    #
    #   @return [String]
    #
    ListSigningPlatformsInput = ::Struct.new(
      :category,
      :partner,
      :target,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute platforms
    #   <p>A list of all platforms that match the request parameters.</p>
    #
    #   @return [Array<SigningPlatform>]
    #
    # @!attribute next_token
    #   <p>Value for specifying the next set of paginated results to return.</p>
    #
    #   @return [String]
    #
    ListSigningPlatformsOutput = ::Struct.new(
      :platforms,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute include_canceled
    #   <p>Designates whether to include profiles with the status of
    #   			<code>CANCELED</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute max_results
    #   <p>The maximum number of profiles to be returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>Value for specifying the next set of paginated results to return. After you receive a
    #   			response with truncated results, use this parameter in a subsequent request. Set it to
    #   			the value of <code>nextToken</code> from the response that you just received.</p>
    #
    #   @return [String]
    #
    # @!attribute platform_id
    #   <p>Filters results to return only signing jobs initiated for a specified signing
    #   			platform.</p>
    #
    #   @return [String]
    #
    # @!attribute statuses
    #   <p>Filters results to return only signing jobs with statuses in the specified
    #   			list.</p>
    #
    #   @return [Array<String>]
    #
    ListSigningProfilesInput = ::Struct.new(
      :include_canceled,
      :max_results,
      :next_token,
      :platform_id,
      :statuses,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.include_canceled ||= false
      end
    end

    # @!attribute profiles
    #   <p>A list of profiles that are available in the AWS account. This includes profiles with
    #   			the status of <code>CANCELED</code> if the <code>includeCanceled</code> parameter is set
    #   			to <code>true</code>.</p>
    #
    #   @return [Array<SigningProfile>]
    #
    # @!attribute next_token
    #   <p>Value for specifying the next set of paginated results to return.</p>
    #
    #   @return [String]
    #
    ListSigningProfilesOutput = ::Struct.new(
      :profiles,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the signing profile.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>A list of tags associated with the signing profile.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The signing profile was not found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    NotFoundException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A cross-account permission for a signing profile.</p>
    #
    # @!attribute action
    #   <p>An AWS Signer action permitted as part of cross-account permissions.</p>
    #
    #   @return [String]
    #
    # @!attribute principal
    #   <p>The AWS principal that has been granted a cross-account permission.</p>
    #
    #   @return [String]
    #
    # @!attribute statement_id
    #   <p>A unique identifier for a cross-account permission statement.</p>
    #
    #   @return [String]
    #
    # @!attribute profile_version
    #   <p>The signing profile version that a permission applies to.</p>
    #
    #   @return [String]
    #
    Permission = ::Struct.new(
      :action,
      :principal,
      :statement_id,
      :profile_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute profile_name
    #   <p>The name of the signing profile to be created.</p>
    #
    #   @return [String]
    #
    # @!attribute signing_material
    #   <p>The AWS Certificate Manager certificate that will be used to sign code with the new signing
    #   			profile.</p>
    #
    #   @return [SigningMaterial]
    #
    # @!attribute signature_validity_period
    #   <p>The default validity period override for any signature generated using this signing
    #   			profile. If unspecified, the default is 135 months.</p>
    #
    #   @return [SignatureValidityPeriod]
    #
    # @!attribute platform_id
    #   <p>The ID of the signing platform to be created.</p>
    #
    #   @return [String]
    #
    # @!attribute overrides
    #   <p>A subfield of <code>platform</code>. This specifies any different configuration
    #   			options that you want to apply to the chosen platform (such as a different
    #   				<code>hash-algorithm</code> or <code>signing-algorithm</code>).</p>
    #
    #   @return [SigningPlatformOverrides]
    #
    # @!attribute signing_parameters
    #   <p>Map of key-value pairs for signing. These can include any information that you want to
    #   			use during signing.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute tags
    #   <p>Tags to be associated with the signing profile that is being created.</p>
    #
    #   @return [Hash<String, String>]
    #
    PutSigningProfileInput = ::Struct.new(
      :profile_name,
      :signing_material,
      :signature_validity_period,
      :platform_id,
      :overrides,
      :signing_parameters,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the signing profile created.</p>
    #
    #   @return [String]
    #
    # @!attribute profile_version
    #   <p>The version of the signing profile being created.</p>
    #
    #   @return [String]
    #
    # @!attribute profile_version_arn
    #   <p>The signing profile ARN, including the profile version.</p>
    #
    #   @return [String]
    #
    PutSigningProfileOutput = ::Struct.new(
      :arn,
      :profile_version,
      :profile_version_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute profile_name
    #   <p>A human-readable name for the signing profile with permissions to be removed.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>An identifier for the current revision of the signing profile permissions.</p>
    #
    #   @return [String]
    #
    # @!attribute statement_id
    #   <p>A unique identifier for the cross-account permissions statement.</p>
    #
    #   @return [String]
    #
    RemoveProfilePermissionInput = ::Struct.new(
      :profile_name,
      :revision_id,
      :statement_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute revision_id
    #   <p>An identifier for the current revision of the profile permissions.</p>
    #
    #   @return [String]
    #
    RemoveProfilePermissionOutput = ::Struct.new(
      :revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A specified resource could not be found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>ID of the signing job to be revoked.</p>
    #
    #   @return [String]
    #
    # @!attribute job_owner
    #   <p>AWS account ID of the job owner.</p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason for revoking the signing job.</p>
    #
    #   @return [String]
    #
    RevokeSignatureInput = ::Struct.new(
      :job_id,
      :job_owner,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RevokeSignatureOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute profile_name
    #   <p>The name of the signing profile to be revoked.</p>
    #
    #   @return [String]
    #
    # @!attribute profile_version
    #   <p>The version of the signing profile to be revoked.</p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason for revoking a signing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute effective_time
    #   <p>A timestamp for when revocation of a Signing Profile should become effective.
    #   			Signatures generated using the signing profile after this timestamp are not
    #   			trusted.</p>
    #
    #   @return [Time]
    #
    RevokeSigningProfileInput = ::Struct.new(
      :profile_name,
      :profile_version,
      :reason,
      :effective_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RevokeSigningProfileOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The name and prefix of the S3 bucket where code signing saves your signed objects.</p>
    #
    # @!attribute bucket_name
    #   <p>Name of the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>An Amazon S3 prefix that you can use to limit responses to those that begin with the
    #   			specified prefix.</p>
    #
    #   @return [String]
    #
    S3Destination = ::Struct.new(
      :bucket_name,
      :prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The S3 bucket name and key where code signing saved your signed code image.</p>
    #
    # @!attribute bucket_name
    #   <p>Name of the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>Key name that uniquely identifies a signed code image in your bucket.</p>
    #
    #   @return [String]
    #
    S3SignedObject = ::Struct.new(
      :bucket_name,
      :key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the S3 bucket where you saved your unsigned code.</p>
    #
    # @!attribute bucket_name
    #   <p>Name of the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>Key name of the bucket object that contains your unsigned code.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>Version of your source image in your version enabled S3 bucket.</p>
    #
    #   @return [String]
    #
    S3Source = ::Struct.new(
      :bucket_name,
      :key,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The client is making a request that exceeds service limits.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    ServiceLimitExceededException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The validity period for a signing job.</p>
    #
    # @!attribute value
    #   <p>The numerical value of the time unit for signature validity.</p>
    #
    #   @return [Integer]
    #
    # @!attribute type
    #   <p>The time unit for signature
    #   			validity.</p>
    #
    #   Enum, one of: ["DAYS", "MONTHS", "YEARS"]
    #
    #   @return [String]
    #
    SignatureValidityPeriod = ::Struct.new(
      :value,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.value ||= 0
      end
    end

    # <p>Points to an <code>S3SignedObject</code> object that contains information about your
    # 			signed code image.</p>
    #
    # @!attribute s3
    #   <p>The <code>S3SignedObject</code>.</p>
    #
    #   @return [S3SignedObject]
    #
    SignedObject = ::Struct.new(
      :s3,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration of a code signing operation.</p>
    #
    # @!attribute encryption_algorithm_options
    #   <p>The encryption algorithm options that are available for a code signing job.</p>
    #
    #   @return [EncryptionAlgorithmOptions]
    #
    # @!attribute hash_algorithm_options
    #   <p>The hash algorithm options that are available for a code signing job.</p>
    #
    #   @return [HashAlgorithmOptions]
    #
    SigningConfiguration = ::Struct.new(
      :encryption_algorithm_options,
      :hash_algorithm_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A signing configuration that overrides the default encryption or hash algorithm of a
    # 			signing job.</p>
    #
    # @!attribute encryption_algorithm
    #   <p>A specified override of the default encryption algorithm that is used in a code signing
    #   			job.</p>
    #
    #   Enum, one of: ["RSA", "ECDSA"]
    #
    #   @return [String]
    #
    # @!attribute hash_algorithm
    #   <p>A specified override of the default hash algorithm that is used in a code signing
    #   			job.</p>
    #
    #   Enum, one of: ["SHA1", "SHA256"]
    #
    #   @return [String]
    #
    SigningConfigurationOverrides = ::Struct.new(
      :encryption_algorithm,
      :hash_algorithm,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The image format of a code signing platform or profile.</p>
    #
    # @!attribute supported_formats
    #   <p>The supported formats of a code signing image.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute default_format
    #   <p>The default format of a code signing image.</p>
    #
    #   Enum, one of: ["JSON", "JSONEmbedded", "JSONDetached"]
    #
    #   @return [String]
    #
    SigningImageFormat = ::Struct.new(
      :supported_formats,
      :default_format,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a signing job.</p>
    #
    # @!attribute job_id
    #   <p>The ID of the signing job.</p>
    #
    #   @return [String]
    #
    # @!attribute source
    #   <p>A <code>Source</code> that contains information about a signing job's code image
    #   			source.</p>
    #
    #   @return [Source]
    #
    # @!attribute signed_object
    #   <p>A <code>SignedObject</code> structure that contains information about a signing job's
    #   			signed code image.</p>
    #
    #   @return [SignedObject]
    #
    # @!attribute signing_material
    #   <p>A <code>SigningMaterial</code> object that contains the Amazon Resource Name (ARN) of
    #   			the certificate used for the signing job.</p>
    #
    #   @return [SigningMaterial]
    #
    # @!attribute created_at
    #   <p>The date and time that the signing job was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The status of the signing job.</p>
    #
    #   Enum, one of: ["InProgress", "Failed", "Succeeded"]
    #
    #   @return [String]
    #
    # @!attribute is_revoked
    #   <p>Indicates whether the signing job is revoked.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute profile_name
    #   <p>The name of the signing profile that created a signing job.</p>
    #
    #   @return [String]
    #
    # @!attribute profile_version
    #   <p>The version of the signing profile that created a signing job.</p>
    #
    #   @return [String]
    #
    # @!attribute platform_id
    #   <p>The unique identifier for a signing platform.</p>
    #
    #   @return [String]
    #
    # @!attribute platform_display_name
    #   <p>The name of a signing platform.</p>
    #
    #   @return [String]
    #
    # @!attribute signature_expires_at
    #   <p>The time when the signature of a signing job expires.</p>
    #
    #   @return [Time]
    #
    # @!attribute job_owner
    #   <p>The AWS account ID of the job owner.</p>
    #
    #   @return [String]
    #
    # @!attribute job_invoker
    #   <p>The AWS account ID of the job invoker.</p>
    #
    #   @return [String]
    #
    SigningJob = ::Struct.new(
      :job_id,
      :source,
      :signed_object,
      :signing_material,
      :created_at,
      :status,
      :is_revoked,
      :profile_name,
      :profile_version,
      :platform_id,
      :platform_display_name,
      :signature_expires_at,
      :job_owner,
      :job_invoker,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_revoked ||= false
      end
    end

    # <p>Revocation information for a signing job.</p>
    #
    # @!attribute reason
    #   <p>A caller-supplied reason for revocation.</p>
    #
    #   @return [String]
    #
    # @!attribute revoked_at
    #   <p>The time of revocation.</p>
    #
    #   @return [Time]
    #
    # @!attribute revoked_by
    #   <p>The identity of the revoker.</p>
    #
    #   @return [String]
    #
    SigningJobRevocationRecord = ::Struct.new(
      :reason,
      :revoked_at,
      :revoked_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The ACM certificate that is used to sign your code.</p>
    #
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificates that is used to sign your
    #   			code.</p>
    #
    #   @return [String]
    #
    SigningMaterial = ::Struct.new(
      :certificate_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the signing configurations and parameters that are used to
    # 			perform a code signing job.</p>
    #
    # @!attribute platform_id
    #   <p>The ID of a code signing; platform.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The display name of a code signing platform.</p>
    #
    #   @return [String]
    #
    # @!attribute partner
    #   <p>Any partner entities linked to a code signing platform.</p>
    #
    #   @return [String]
    #
    # @!attribute target
    #   <p>The types of targets that can be signed by a code signing platform.</p>
    #
    #   @return [String]
    #
    # @!attribute category
    #   <p>The category of a code signing platform.</p>
    #
    #   Enum, one of: ["AWSIoT"]
    #
    #   @return [String]
    #
    # @!attribute signing_configuration
    #   <p>The configuration of a code signing platform. This includes the designated hash algorithm
    #   			and encryption algorithm of a signing platform.</p>
    #
    #   @return [SigningConfiguration]
    #
    # @!attribute signing_image_format
    #   <p>The image format of a code signing platform or profile.</p>
    #
    #   @return [SigningImageFormat]
    #
    # @!attribute max_size_in_mb
    #   <p>The maximum size (in MB) of code that can be signed by a code signing platform.</p>
    #
    #   @return [Integer]
    #
    # @!attribute revocation_supported
    #   <p>Indicates whether revocation is supported for the platform.</p>
    #
    #   @return [Boolean]
    #
    SigningPlatform = ::Struct.new(
      :platform_id,
      :display_name,
      :partner,
      :target,
      :category,
      :signing_configuration,
      :signing_image_format,
      :max_size_in_mb,
      :revocation_supported,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_size_in_mb ||= 0
        self.revocation_supported ||= false
      end
    end

    # <p>Any overrides that are applied to the signing configuration of a code signing
    # 			platform.</p>
    #
    # @!attribute signing_configuration
    #   <p>A signing configuration that overrides the default encryption or hash algorithm of a
    #   			signing job.</p>
    #
    #   @return [SigningConfigurationOverrides]
    #
    # @!attribute signing_image_format
    #   <p>A signed image is a JSON object. When overriding the default signing platform
    #   			configuration, a customer can select either of two signing formats,
    #   				<code>JSONEmbedded</code> or <code>JSONDetached</code>. (A third format value,
    #   				<code>JSON</code>, is reserved for future use.) With <code>JSONEmbedded</code>, the
    #   			signing image has the payload embedded in it. With <code>JSONDetached</code>, the
    #   			payload is not be embedded in the signing image.</p>
    #
    #   Enum, one of: ["JSON", "JSONEmbedded", "JSONDetached"]
    #
    #   @return [String]
    #
    SigningPlatformOverrides = ::Struct.new(
      :signing_configuration,
      :signing_image_format,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the ACM certificates and code signing configuration parameters
    # 			that can be used by a given code signing user.</p>
    #
    # @!attribute profile_name
    #   <p>The name of the signing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute profile_version
    #   <p>The version of a signing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute profile_version_arn
    #   <p>The ARN of a signing profile, including the profile version.</p>
    #
    #   @return [String]
    #
    # @!attribute signing_material
    #   <p>The ACM certificate that is available for use by a signing profile.</p>
    #
    #   @return [SigningMaterial]
    #
    # @!attribute signature_validity_period
    #   <p>The validity period for a signing job created using this signing profile.</p>
    #
    #   @return [SignatureValidityPeriod]
    #
    # @!attribute platform_id
    #   <p>The ID of a platform that is available for use by a signing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute platform_display_name
    #   <p>The name of the signing platform.</p>
    #
    #   @return [String]
    #
    # @!attribute signing_parameters
    #   <p>The parameters that are available for use by a code signing user.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute status
    #   <p>The status of a code signing profile.</p>
    #
    #   Enum, one of: ["Active", "Canceled", "Revoked"]
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the signing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags associated with the signing profile.</p>
    #
    #   @return [Hash<String, String>]
    #
    SigningProfile = ::Struct.new(
      :profile_name,
      :profile_version,
      :profile_version_arn,
      :signing_material,
      :signature_validity_period,
      :platform_id,
      :platform_display_name,
      :signing_parameters,
      :status,
      :arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Revocation information for a signing profile.</p>
    #
    # @!attribute revocation_effective_from
    #   <p>The time when revocation becomes effective.</p>
    #
    #   @return [Time]
    #
    # @!attribute revoked_at
    #   <p>The time when the signing profile was revoked.</p>
    #
    #   @return [Time]
    #
    # @!attribute revoked_by
    #   <p>The identity of the revoker.</p>
    #
    #   @return [String]
    #
    SigningProfileRevocationRecord = ::Struct.new(
      :revocation_effective_from,
      :revoked_at,
      :revoked_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SigningProfileStatus
    #
    module SigningProfileStatus
      # No documentation available.
      #
      Active = "Active"

      # No documentation available.
      #
      Canceled = "Canceled"

      # No documentation available.
      #
      Revoked = "Revoked"
    end

    # Includes enum constants for SigningStatus
    #
    module SigningStatus
      # No documentation available.
      #
      InProgress = "InProgress"

      # No documentation available.
      #
      Failed = "Failed"

      # No documentation available.
      #
      Succeeded = "Succeeded"
    end

    # <p>An <code>S3Source</code> object that contains information about the S3 bucket where
    # 			you saved your unsigned code.</p>
    #
    # @!attribute s3
    #   <p>The <code>S3Source</code> object.</p>
    #
    #   @return [S3Source]
    #
    Source = ::Struct.new(
      :s3,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source
    #   <p>The S3 bucket that contains the object to sign or a BLOB that contains your raw
    #   			code.</p>
    #
    #   @return [Source]
    #
    # @!attribute destination
    #   <p>The S3 bucket in which to save your signed object. The destination contains the name
    #   			of your bucket and an optional prefix.</p>
    #
    #   @return [Destination]
    #
    # @!attribute profile_name
    #   <p>The name of the signing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>String that identifies the signing request. All calls after the first that use this
    #   			token return the same response as the first call.</p>
    #
    #   @return [String]
    #
    # @!attribute profile_owner
    #   <p>The AWS account ID of the signing profile owner.</p>
    #
    #   @return [String]
    #
    StartSigningJobInput = ::Struct.new(
      :source,
      :destination,
      :profile_name,
      :client_request_token,
      :profile_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The ID of your signing job.</p>
    #
    #   @return [String]
    #
    # @!attribute job_owner
    #   <p>The AWS account ID of the signing job owner.</p>
    #
    #   @return [String]
    #
    StartSigningJobOutput = ::Struct.new(
      :job_id,
      :job_owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the signing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>One or more tags to be associated with the signing profile.</p>
    #
    #   @return [Hash<String, String>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    #         <p>Instead of this error, <code>TooManyRequestsException</code> should be used.</p>
    #
    # @deprecated
    #   Instead of this error, TooManyRequestsException should be used.
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The allowed number of job-signing requests has been exceeded.</p>
    # 		       <p>This error supersedes the error <code>ThrottlingException</code>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    TooManyRequestsException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the signing profile.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A list of tag keys to be removed from the signing profile.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You signing certificate could not be validated.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute code
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :message,
      :code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ValidityType
    #
    module ValidityType
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
